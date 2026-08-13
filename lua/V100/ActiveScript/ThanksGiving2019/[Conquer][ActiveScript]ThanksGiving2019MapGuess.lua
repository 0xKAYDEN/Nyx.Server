------------------------------------------------------------------------------------
--Name：            191018[英文征服][活动脚本]11月地图猜谜(11.5-11.14)
--Creator:      蔡颖静
--Created:     2019/10/18
------------------------------------------------------------------------------------
--任务需求：

--lua.ini:41571
--logid:12001698
------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tThanksGiving2019MapGuess_Data={}

tThanksGiving2019MapGuess_Data["Stc"]={}

--今日是否完成过任务stc(208,11)
tThanksGiving2019MapGuess_Data["Stc"]["TaskEvent"]=208
tThanksGiving2019MapGuess_Data["Stc"]["TaskType"]=11

--今日是否花钱刷新对白stc(208,12)
tThanksGiving2019MapGuess_Data["Stc"]["HandInEvent"]=208
tThanksGiving2019MapGuess_Data["Stc"]["HandInType"]=12




--所需物资
tThanksGiving2019MapGuess_Data["ItemId"]={}
tThanksGiving2019MapGuess_Data["ItemId"][5]= 3326629
tThanksGiving2019MapGuess_Data["ItemId"][6]= 3326630
tThanksGiving2019MapGuess_Data["ItemId"][7]= 3326631
tThanksGiving2019MapGuess_Data["ItemId"][8]= 3326632
tThanksGiving2019MapGuess_Data["ItemId"][9]= 3326633
tThanksGiving2019MapGuess_Data["ItemId"][10]=3326634
tThanksGiving2019MapGuess_Data["ItemId"][11]=3326635
tThanksGiving2019MapGuess_Data["ItemId"][12]=3326636
tThanksGiving2019MapGuess_Data["ItemId"][13]=3326637
tThanksGiving2019MapGuess_Data["ItemId"][14]=3326638

tThanksGiving2019MapGuess_Data["ItemNum"]={}
tThanksGiving2019MapGuess_Data["ItemNum"][5]= 300
tThanksGiving2019MapGuess_Data["ItemNum"][6]= 300
tThanksGiving2019MapGuess_Data["ItemNum"][7]= 300
tThanksGiving2019MapGuess_Data["ItemNum"][8]= 200
tThanksGiving2019MapGuess_Data["ItemNum"][9]= 200
tThanksGiving2019MapGuess_Data["ItemNum"][10]=150
tThanksGiving2019MapGuess_Data["ItemNum"][11]=150
tThanksGiving2019MapGuess_Data["ItemNum"][12]=100
tThanksGiving2019MapGuess_Data["ItemNum"][13]=100
tThanksGiving2019MapGuess_Data["ItemNum"][14]=50

--传送位置
tThanksGiving2019MapGuess_Data["TransPos"]={}
--普通服
tThanksGiving2019MapGuess_Data["TransPos"][1]={}
tThanksGiving2019MapGuess_Data["TransPos"][1][5]={}
tThanksGiving2019MapGuess_Data["TransPos"][1][5]["MapId"]=1020
tThanksGiving2019MapGuess_Data["TransPos"][1][5]["PosX"]=584
tThanksGiving2019MapGuess_Data["TransPos"][1][5]["PosY"]=654

tThanksGiving2019MapGuess_Data["TransPos"][1][6]={}
tThanksGiving2019MapGuess_Data["TransPos"][1][6]["MapId"]=1015
tThanksGiving2019MapGuess_Data["TransPos"][1][6]["PosX"]=737
tThanksGiving2019MapGuess_Data["TransPos"][1][6]["PosY"]=640

tThanksGiving2019MapGuess_Data["TransPos"][1][7]={}
tThanksGiving2019MapGuess_Data["TransPos"][1][7]["MapId"]=1011
tThanksGiving2019MapGuess_Data["TransPos"][1][7]["PosX"]=693
tThanksGiving2019MapGuess_Data["TransPos"][1][7]["PosY"]=423

tThanksGiving2019MapGuess_Data["TransPos"][1][8]={}
tThanksGiving2019MapGuess_Data["TransPos"][1][8]["MapId"]=1001
tThanksGiving2019MapGuess_Data["TransPos"][1][8]["PosX"]=500
tThanksGiving2019MapGuess_Data["TransPos"][1][8]["PosY"]=500


tThanksGiving2019MapGuess_Data["TransPos"][1][9]={}
tThanksGiving2019MapGuess_Data["TransPos"][1][9]["MapId"]=1926
tThanksGiving2019MapGuess_Data["TransPos"][1][9]["PosX"]=330
tThanksGiving2019MapGuess_Data["TransPos"][1][9]["PosY"]=355

tThanksGiving2019MapGuess_Data["TransPos"][1][10]={}
tThanksGiving2019MapGuess_Data["TransPos"][1][10]["MapId"]=1001
tThanksGiving2019MapGuess_Data["TransPos"][1][10]["PosX"]=500
tThanksGiving2019MapGuess_Data["TransPos"][1][10]["PosY"]=500

tThanksGiving2019MapGuess_Data["TransPos"][1][11]={}
tThanksGiving2019MapGuess_Data["TransPos"][1][11]["MapId"]=1351
tThanksGiving2019MapGuess_Data["TransPos"][1][11]["PosX"]=16
tThanksGiving2019MapGuess_Data["TransPos"][1][11]["PosY"]=128

tThanksGiving2019MapGuess_Data["TransPos"][1][12]={}
tThanksGiving2019MapGuess_Data["TransPos"][1][12]["MapId"]=10137
tThanksGiving2019MapGuess_Data["TransPos"][1][12]["PosX"]=96
tThanksGiving2019MapGuess_Data["TransPos"][1][12]["PosY"]=411

tThanksGiving2019MapGuess_Data["TransPos"][1][13]={}
tThanksGiving2019MapGuess_Data["TransPos"][1][13]["MapId"]=3056
tThanksGiving2019MapGuess_Data["TransPos"][1][13]["PosX"]=70
tThanksGiving2019MapGuess_Data["TransPos"][1][13]["PosY"]=125

tThanksGiving2019MapGuess_Data["TransPos"][1][14]={}
tThanksGiving2019MapGuess_Data["TransPos"][1][14]["MapId"]=10250
tThanksGiving2019MapGuess_Data["TransPos"][1][14]["PosX"]=1002
tThanksGiving2019MapGuess_Data["TransPos"][1][14]["PosY"]=1288

--激情服
tThanksGiving2019MapGuess_Data["TransPos"][2]={}
tThanksGiving2019MapGuess_Data["TransPos"][2][5]={}
tThanksGiving2019MapGuess_Data["TransPos"][2][5]["MapId"]=10366
tThanksGiving2019MapGuess_Data["TransPos"][2][5]["PosX"]=584
tThanksGiving2019MapGuess_Data["TransPos"][2][5]["PosY"]=654

tThanksGiving2019MapGuess_Data["TransPos"][2][6]={}
tThanksGiving2019MapGuess_Data["TransPos"][2][6]["MapId"]=10368
tThanksGiving2019MapGuess_Data["TransPos"][2][6]["PosX"]=737
tThanksGiving2019MapGuess_Data["TransPos"][2][6]["PosY"]=640

tThanksGiving2019MapGuess_Data["TransPos"][2][7]={}
tThanksGiving2019MapGuess_Data["TransPos"][2][7]["MapId"]=10365
tThanksGiving2019MapGuess_Data["TransPos"][2][7]["PosX"]=693
tThanksGiving2019MapGuess_Data["TransPos"][2][7]["PosY"]=423

tThanksGiving2019MapGuess_Data["TransPos"][2][8]={}
tThanksGiving2019MapGuess_Data["TransPos"][2][8]["MapId"]=10366
tThanksGiving2019MapGuess_Data["TransPos"][2][8]["PosX"]=584
tThanksGiving2019MapGuess_Data["TransPos"][2][8]["PosY"]=654

tThanksGiving2019MapGuess_Data["TransPos"][2][9]={}
tThanksGiving2019MapGuess_Data["TransPos"][2][9]["MapId"]=10368
tThanksGiving2019MapGuess_Data["TransPos"][2][9]["PosX"]=737
tThanksGiving2019MapGuess_Data["TransPos"][2][9]["PosY"]=640

tThanksGiving2019MapGuess_Data["TransPos"][2][10]={}
tThanksGiving2019MapGuess_Data["TransPos"][2][10]["MapId"]=10365
tThanksGiving2019MapGuess_Data["TransPos"][2][10]["PosX"]=693
tThanksGiving2019MapGuess_Data["TransPos"][2][10]["PosY"]=423

tThanksGiving2019MapGuess_Data["TransPos"][2][11]={}
tThanksGiving2019MapGuess_Data["TransPos"][2][11]["MapId"]=1351
tThanksGiving2019MapGuess_Data["TransPos"][2][11]["PosX"]=16
tThanksGiving2019MapGuess_Data["TransPos"][2][11]["PosY"]=128

tThanksGiving2019MapGuess_Data["TransPos"][2][12]={}
tThanksGiving2019MapGuess_Data["TransPos"][2][12]["MapId"]=10137
tThanksGiving2019MapGuess_Data["TransPos"][2][12]["PosX"]=96
tThanksGiving2019MapGuess_Data["TransPos"][2][12]["PosY"]=411

tThanksGiving2019MapGuess_Data["TransPos"][2][13]={}
tThanksGiving2019MapGuess_Data["TransPos"][2][13]["MapId"]=3056
tThanksGiving2019MapGuess_Data["TransPos"][2][13]["PosX"]=70
tThanksGiving2019MapGuess_Data["TransPos"][2][13]["PosY"]=125

tThanksGiving2019MapGuess_Data["TransPos"][2][14]={}
tThanksGiving2019MapGuess_Data["TransPos"][2][14]["MapId"]=10250
tThanksGiving2019MapGuess_Data["TransPos"][2][14]["PosX"]=1002
tThanksGiving2019MapGuess_Data["TransPos"][2][14]["PosY"]=1288



tThanksGiving2019MapGuess_Data["HandIn"] = {}
tThanksGiving2019MapGuess_Data["HandIn"][1] = {}
tThanksGiving2019MapGuess_Data["HandIn"][1]["Num"] = 50000

tThanksGiving2019MapGuess_Data["HandIn"][2] = {}
tThanksGiving2019MapGuess_Data["HandIn"][2]["Num"] = 1


tThanksGiving2019MapGuess_Data["Cost"] = {}
-- ===扣除金币
-- ===索引: tThanksGiving2019MapGuess_Data["Cost"][1]
-- ===
-- ===
tThanksGiving2019MapGuess_Data["Cost"][1] = {}
tThanksGiving2019MapGuess_Data["Cost"][1]["LogId"] = 12001698
tThanksGiving2019MapGuess_Data["Cost"][1]["RewardMoney"] = {}
tThanksGiving2019MapGuess_Data["Cost"][1]["RewardMoney"]["Value"] = -50000 -- 金币, 【需求】50000金币
tThanksGiving2019MapGuess_Data["Cost"][1]["RewardNoNeedTip"] = 1
tThanksGiving2019MapGuess_Data["Cost"][1]["RewardEffect"] = {}
tThanksGiving2019MapGuess_Data["Cost"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tThanksGiving2019MapGuess_Data["Cost"][1]["RewardEffect"]["Effect"] = "angelwing"


tThanksGiving2019MapGuess_Data["Cost"][2] = {}
-- ===扣除天石
-- ===索引: tThanksGiving2019MapGuess_Data["Cost"][2]
-- ===
-- ===
tThanksGiving2019MapGuess_Data["Cost"][2]["LogId"] = 12001698
tThanksGiving2019MapGuess_Data["Cost"][2]["RewardEMoney"] = {}
tThanksGiving2019MapGuess_Data["Cost"][2]["RewardEMoney"]["Value"] = -1 -- 天石, 【需求】1天石
tThanksGiving2019MapGuess_Data["Cost"][2]["RewardNoNeedTip"] = 1
tThanksGiving2019MapGuess_Data["Cost"][2]["RewardEffect"] = {}
tThanksGiving2019MapGuess_Data["Cost"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tThanksGiving2019MapGuess_Data["Cost"][2]["RewardEffect"]["Effect"] = "angelwing"



tThanksGiving2019MapGuess_Data["Reward"] = {}
-- ===5-7号奖励普通服,猜谜精装礼盒
-- ===索引: tThanksGiving2019MapGuess_Data["Reward"][1][1]
-- ===
-- ===
tThanksGiving2019MapGuess_Data["Reward"][1] = {}
tThanksGiving2019MapGuess_Data["Reward"][1][1] = {}
tThanksGiving2019MapGuess_Data["Reward"][1][1]["LogId"] = 12001698
tThanksGiving2019MapGuess_Data["Reward"][1][1]["RewardItem"] = {}
tThanksGiving2019MapGuess_Data["Reward"][1][1]["RewardItem"][1] = {}
tThanksGiving2019MapGuess_Data["Reward"][1][1]["RewardItem"][1]["Id"] = 3326623 -- 猜谜精装礼盒[3326623][属性:9][叠加:1][金币:0], 【表格】猜谜精装礼盒
tThanksGiving2019MapGuess_Data["Reward"][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 猜谜精装礼盒*1
tThanksGiving2019MapGuess_Data["Reward"][1][1]["RewardEffect"] = {}
tThanksGiving2019MapGuess_Data["Reward"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tThanksGiving2019MapGuess_Data["Reward"][1][1]["RewardEffect"]["Effect"] = "angelwing"


tThanksGiving2019MapGuess_Data["Reward"][1][2] = {}
-- ===8-9号奖励普通服,猜谜达人礼盒
-- ===索引: tThanksGiving2019MapGuess_Data["Reward"][1][2]
-- ===
-- ===
tThanksGiving2019MapGuess_Data["Reward"][1][2]["LogId"] = 12001698
tThanksGiving2019MapGuess_Data["Reward"][1][2]["RewardItem"] = {}
tThanksGiving2019MapGuess_Data["Reward"][1][2]["RewardItem"][1] = {}
tThanksGiving2019MapGuess_Data["Reward"][1][2]["RewardItem"][1]["Id"] = 3326624 -- 猜谜达人礼盒[3326624][属性:9][叠加:1][金币:0], 【表格】猜谜达人礼盒
tThanksGiving2019MapGuess_Data["Reward"][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 猜谜达人礼盒*1
tThanksGiving2019MapGuess_Data["Reward"][1][2]["RewardEffect"] = {}
tThanksGiving2019MapGuess_Data["Reward"][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tThanksGiving2019MapGuess_Data["Reward"][1][2]["RewardEffect"]["Effect"] = "angelwing"


tThanksGiving2019MapGuess_Data["Reward"][1][3] = {}
-- ===10-11号奖励普通服,猜谜高手礼盒
-- ===索引: tThanksGiving2019MapGuess_Data["Reward"][1][3]
-- ===
-- ===
tThanksGiving2019MapGuess_Data["Reward"][1][3]["LogId"] = 12001698
tThanksGiving2019MapGuess_Data["Reward"][1][3]["RewardItem"] = {}
tThanksGiving2019MapGuess_Data["Reward"][1][3]["RewardItem"][1] = {}
tThanksGiving2019MapGuess_Data["Reward"][1][3]["RewardItem"][1]["Id"] = 3326625 -- 猜谜高手礼盒[3326625][属性:9][叠加:1][金币:0], 【表格】猜谜高手礼盒
tThanksGiving2019MapGuess_Data["Reward"][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 猜谜高手礼盒*1
tThanksGiving2019MapGuess_Data["Reward"][1][3]["RewardEffect"] = {}
tThanksGiving2019MapGuess_Data["Reward"][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tThanksGiving2019MapGuess_Data["Reward"][1][3]["RewardEffect"]["Effect"] = "angelwing"


tThanksGiving2019MapGuess_Data["Reward"][1][4] = {}
-- ===12-14号奖励普通服,猜谜大师礼盒
-- ===索引: tThanksGiving2019MapGuess_Data["Reward"][1][4]
-- ===
-- ===
tThanksGiving2019MapGuess_Data["Reward"][1][4]["LogId"] = 12001698
tThanksGiving2019MapGuess_Data["Reward"][1][4]["RewardItem"] = {}
tThanksGiving2019MapGuess_Data["Reward"][1][4]["RewardItem"][1] = {}
tThanksGiving2019MapGuess_Data["Reward"][1][4]["RewardItem"][1]["Id"] = 3326627 -- 猜谜大师礼盒 [3326627][属性:9][叠加:1][金币:0], 【表格】猜谜大师礼盒
tThanksGiving2019MapGuess_Data["Reward"][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 猜谜大师礼盒 *1
tThanksGiving2019MapGuess_Data["Reward"][1][4]["RewardEffect"] = {}
tThanksGiving2019MapGuess_Data["Reward"][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tThanksGiving2019MapGuess_Data["Reward"][1][4]["RewardEffect"]["Effect"] = "angelwing"


tThanksGiving2019MapGuess_Data["Reward"][2] = {}
-- ===5-7号奖励激情服,猜谜精装礼盒
-- ===索引: tThanksGiving2019MapGuess_Data["Reward"][2][1]
-- ===
-- ===
tThanksGiving2019MapGuess_Data["Reward"][2][1] = {}
tThanksGiving2019MapGuess_Data["Reward"][2][1]["LogId"] = 12001698
tThanksGiving2019MapGuess_Data["Reward"][2][1]["RewardItem"] = {}
tThanksGiving2019MapGuess_Data["Reward"][2][1]["RewardItem"][1] = {}
tThanksGiving2019MapGuess_Data["Reward"][2][1]["RewardItem"][1]["Id"] = 3326623 -- 猜谜精装礼盒[3326623][属性:9][叠加:1][金币:0], 【表格】猜谜精装礼盒
tThanksGiving2019MapGuess_Data["Reward"][2][1]["RewardItem"][1]["Attr"] = "0 1" -- 猜谜精装礼盒*1
tThanksGiving2019MapGuess_Data["Reward"][2][1]["RewardEffect"] = {}
tThanksGiving2019MapGuess_Data["Reward"][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tThanksGiving2019MapGuess_Data["Reward"][2][1]["RewardEffect"]["Effect"] = "angelwing"


tThanksGiving2019MapGuess_Data["Reward"][2][2] = {}
-- ===8-9号奖励激情服,猜谜达人礼盒
-- ===索引: tThanksGiving2019MapGuess_Data["Reward"][2][2]
-- ===
-- ===
tThanksGiving2019MapGuess_Data["Reward"][2][2]["LogId"] = 12001698
tThanksGiving2019MapGuess_Data["Reward"][2][2]["RewardItem"] = {}
tThanksGiving2019MapGuess_Data["Reward"][2][2]["RewardItem"][1] = {}
tThanksGiving2019MapGuess_Data["Reward"][2][2]["RewardItem"][1]["Id"] = 3326624 -- 猜谜达人礼盒[3326624][属性:9][叠加:1][金币:0], 【表格】猜谜达人礼盒
tThanksGiving2019MapGuess_Data["Reward"][2][2]["RewardItem"][1]["Attr"] = "0 1" -- 猜谜达人礼盒*1
tThanksGiving2019MapGuess_Data["Reward"][2][2]["RewardEffect"] = {}
tThanksGiving2019MapGuess_Data["Reward"][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tThanksGiving2019MapGuess_Data["Reward"][2][2]["RewardEffect"]["Effect"] = "angelwing"


tThanksGiving2019MapGuess_Data["Reward"][2][3] = {}
-- ===10-11号奖励激情服,猜谜高手礼盒
-- ===索引: tThanksGiving2019MapGuess_Data["Reward"][2][3]
-- ===
-- ===
tThanksGiving2019MapGuess_Data["Reward"][2][3]["LogId"] = 12001698
tThanksGiving2019MapGuess_Data["Reward"][2][3]["RewardItem"] = {}
tThanksGiving2019MapGuess_Data["Reward"][2][3]["RewardItem"][1] = {}
tThanksGiving2019MapGuess_Data["Reward"][2][3]["RewardItem"][1]["Id"] = 3326626 -- 猜谜高手礼盒[3326626][属性:9][叠加:1][金币:0], 【表格】猜谜高手礼盒
tThanksGiving2019MapGuess_Data["Reward"][2][3]["RewardItem"][1]["Attr"] = "0 1" -- 猜谜高手礼盒*1
tThanksGiving2019MapGuess_Data["Reward"][2][3]["RewardEffect"] = {}
tThanksGiving2019MapGuess_Data["Reward"][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tThanksGiving2019MapGuess_Data["Reward"][2][3]["RewardEffect"]["Effect"] = "angelwing"


tThanksGiving2019MapGuess_Data["Reward"][2][4] = {}
-- ===12-14号奖励激情服,猜谜大师礼盒
-- ===索引: tThanksGiving2019MapGuess_Data["Reward"][2][4]
-- ===
-- ===
tThanksGiving2019MapGuess_Data["Reward"][2][4]["LogId"] = 12001698
tThanksGiving2019MapGuess_Data["Reward"][2][4]["RewardItem"] = {}
tThanksGiving2019MapGuess_Data["Reward"][2][4]["RewardItem"][1] = {}
tThanksGiving2019MapGuess_Data["Reward"][2][4]["RewardItem"][1]["Id"] = 3326628 -- 猜谜大师礼盒 [3326628][属性:9][叠加:1][金币:0], 【表格】猜谜大师礼盒
tThanksGiving2019MapGuess_Data["Reward"][2][4]["RewardItem"][1]["Attr"] = "0 1" -- 猜谜大师礼盒 *1
tThanksGiving2019MapGuess_Data["Reward"][2][4]["RewardEffect"] = {}
tThanksGiving2019MapGuess_Data["Reward"][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tThanksGiving2019MapGuess_Data["Reward"][2][4]["RewardEffect"]["Effect"] = "angelwing"


tThanksGiving2019MapGuess_Data[3326623] = {}
-- ===猜谜精装礼盒
-- ===索引: tThanksGiving2019MapGuess_Data[3326623]
-- ===删除: 3326623,1
-- ===
tThanksGiving2019MapGuess_Data[3326623]["LogId"] = 12001698
tThanksGiving2019MapGuess_Data[3326623]["DeleteItem"] = {}
tThanksGiving2019MapGuess_Data[3326623]["DeleteItem"][1] = {}
tThanksGiving2019MapGuess_Data[3326623]["DeleteItem"][1]["Id"] = 3326623 -- 【库】猜谜精装礼盒[属性:9]
tThanksGiving2019MapGuess_Data[3326623]["RewardItem"] = {}
tThanksGiving2019MapGuess_Data[3326623]["RewardItem"][1] = {}
tThanksGiving2019MapGuess_Data[3326623]["RewardItem"][1]["Id"] = 4050001 -- 黄色神纹精粹[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹*2
tThanksGiving2019MapGuess_Data[3326623]["RewardItem"][1]["Attr"] = "0 2 3" -- 黄色神纹精粹（赠）*2
tThanksGiving2019MapGuess_Data[3326623]["RewardItem"][2] = {}
tThanksGiving2019MapGuess_Data[3326623]["RewardItem"][2]["Id"] = 3009000 -- 微光星陨石[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石*3
tThanksGiving2019MapGuess_Data[3326623]["RewardItem"][2]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的微光星陨石*3
tThanksGiving2019MapGuess_Data[3326623]["RewardItem"][3] = {}
tThanksGiving2019MapGuess_Data[3326623]["RewardItem"][3]["Id"] = 3005892 -- 五阶神魂礼包[3005892][属性:9][叠加:0][金币:0], 【表格】P5防具神魂包*1
tThanksGiving2019MapGuess_Data[3326623]["RewardItem"][3]["Attr"] = "0 1" -- 五阶神魂礼包*1
tThanksGiving2019MapGuess_Data[3326623]["RewardEffect"] = {}
tThanksGiving2019MapGuess_Data[3326623]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tThanksGiving2019MapGuess_Data[3326623]["RewardEffect"]["Effect"] = "angelwing"


tThanksGiving2019MapGuess_Data[3326624] = {}
-- ===猜谜精装礼盒
-- ===索引: tThanksGiving2019MapGuess_Data[3326624]
-- ===删除: 3326624,1
-- ===
tThanksGiving2019MapGuess_Data[3326624]["LogId"] = 12001698
tThanksGiving2019MapGuess_Data[3326624]["DeleteItem"] = {}
tThanksGiving2019MapGuess_Data[3326624]["DeleteItem"][1] = {}
tThanksGiving2019MapGuess_Data[3326624]["DeleteItem"][1]["Id"] = 3326624 -- 【库】猜谜达人礼盒[属性:9]
tThanksGiving2019MapGuess_Data[3326624]["RewardItem"] = {}
tThanksGiving2019MapGuess_Data[3326624]["RewardItem"][1] = {}
tThanksGiving2019MapGuess_Data[3326624]["RewardItem"][1]["Id"] = 4050001 -- 黄色神纹精粹[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹*3
tThanksGiving2019MapGuess_Data[3326624]["RewardItem"][1]["Attr"] = "0 3 3" -- 黄色神纹精粹（赠）*3
tThanksGiving2019MapGuess_Data[3326624]["RewardItem"][2] = {}
tThanksGiving2019MapGuess_Data[3326624]["RewardItem"][2]["Id"] = 3009000 -- 微光星陨石[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石*5
tThanksGiving2019MapGuess_Data[3326624]["RewardItem"][2]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的微光星陨石*5
tThanksGiving2019MapGuess_Data[3326624]["RewardItem"][3] = {}
tThanksGiving2019MapGuess_Data[3326624]["RewardItem"][3]["Id"] = 729481 --  729481 【库里没有该物品】, 【表格】回气丹*1
tThanksGiving2019MapGuess_Data[3326624]["RewardItem"][3]["Attr"] = "0 1" --  729481 【库里没有该物品】（赠）*1
tThanksGiving2019MapGuess_Data[3326624]["RewardEffect"] = {}
tThanksGiving2019MapGuess_Data[3326624]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tThanksGiving2019MapGuess_Data[3326624]["RewardEffect"]["Effect"] = "angelwing"


tThanksGiving2019MapGuess_Data[3326625] = {}
-- ===猜谜高手礼盒
-- ===索引: tThanksGiving2019MapGuess_Data[3326625]
-- ===删除: 3326625,1
-- ===
tThanksGiving2019MapGuess_Data[3326625]["LogId"] = 12001698
tThanksGiving2019MapGuess_Data[3326625]["DeleteItem"] = {}
tThanksGiving2019MapGuess_Data[3326625]["DeleteItem"][1] = {}
tThanksGiving2019MapGuess_Data[3326625]["DeleteItem"][1]["Id"] = 3326625 -- 【库】猜谜高手礼盒[属性:9]
tThanksGiving2019MapGuess_Data[3326625]["RewardItem"] = {}
tThanksGiving2019MapGuess_Data[3326625]["RewardItem"][1] = {}
tThanksGiving2019MapGuess_Data[3326625]["RewardItem"][1]["Id"] = 3306370 -- 黄色神纹碎片[3306370][属性:9][叠加:10000][金币:0], 【表格】随机普通黄色神纹碎片*1
tThanksGiving2019MapGuess_Data[3326625]["RewardItem"][1]["Attr"] = "0 1" -- 黄色神纹碎片*1
tThanksGiving2019MapGuess_Data[3326625]["RewardRepairValue"] = {}
tThanksGiving2019MapGuess_Data[3326625]["RewardRepairValue"]["Value"] = 200 -- 修为值, 【需求】修为值200
tThanksGiving2019MapGuess_Data[3326625]["RewardItem"][2] = {}
tThanksGiving2019MapGuess_Data[3326625]["RewardItem"][2]["Id"] = 3314012 --  3314012 【库里没有该物品】, 【表格】八折券*1
tThanksGiving2019MapGuess_Data[3326625]["RewardItem"][2]["Attr"] = "0 1" --  3314012 【库里没有该物品】（赠）*1
tThanksGiving2019MapGuess_Data[3326625]["RewardEffect"] = {}
tThanksGiving2019MapGuess_Data[3326625]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tThanksGiving2019MapGuess_Data[3326625]["RewardEffect"]["Effect"] = "angelwing"


tThanksGiving2019MapGuess_Data[3326626] = {}
-- ===猜谜高手礼盒
-- ===索引: tThanksGiving2019MapGuess_Data[3326626]
-- ===删除: 3326626,1
-- ===
tThanksGiving2019MapGuess_Data[3326626]["LogId"] = 12001698
tThanksGiving2019MapGuess_Data[3326626]["DeleteItem"] = {}
tThanksGiving2019MapGuess_Data[3326626]["DeleteItem"][1] = {}
tThanksGiving2019MapGuess_Data[3326626]["DeleteItem"][1]["Id"] = 3326626 -- 【库】猜谜高手礼盒[属性:9]
tThanksGiving2019MapGuess_Data[3326626]["RewardItem"] = {}
tThanksGiving2019MapGuess_Data[3326626]["RewardItem"][1] = {}
tThanksGiving2019MapGuess_Data[3326626]["RewardItem"][1]["Id"] = 3306370 -- 黄色神纹碎片[3306370][属性:9][叠加:10000][金币:0], 【表格】随机普通黄色神纹碎片*1
tThanksGiving2019MapGuess_Data[3326626]["RewardItem"][1]["Attr"] = "0 1" -- 黄色神纹碎片*1
tThanksGiving2019MapGuess_Data[3326626]["RewardRepairValue"] = {}
tThanksGiving2019MapGuess_Data[3326626]["RewardRepairValue"]["Value"] = 200 -- 修为值, 【需求】修为值200
tThanksGiving2019MapGuess_Data[3326626]["RewardItem"][2] = {}
tThanksGiving2019MapGuess_Data[3326626]["RewardItem"][2]["Id"] = 3005412 -- 散功丹[3005412][属性:0][叠加:10000][金币:0], 【表格】非赠散功丹*1
tThanksGiving2019MapGuess_Data[3326626]["RewardItem"][2]["Attr"] = "0 1" -- 散功丹*1
tThanksGiving2019MapGuess_Data[3326626]["RewardEffect"] = {}
tThanksGiving2019MapGuess_Data[3326626]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tThanksGiving2019MapGuess_Data[3326626]["RewardEffect"]["Effect"] = "angelwing"


tThanksGiving2019MapGuess_Data[3326627] = {}
-- ===猜谜大师礼盒
-- ===索引: tThanksGiving2019MapGuess_Data[3326627]
-- ===删除: 3326627,1
-- ===
tThanksGiving2019MapGuess_Data[3326627]["LogId"] = 12001698
tThanksGiving2019MapGuess_Data[3326627]["DeleteItem"] = {}
tThanksGiving2019MapGuess_Data[3326627]["DeleteItem"][1] = {}
tThanksGiving2019MapGuess_Data[3326627]["DeleteItem"][1]["Id"] = 3326627 -- 【库】猜谜大师礼盒 [属性:9]
tThanksGiving2019MapGuess_Data[3326627]["RewardItem"] = {}
tThanksGiving2019MapGuess_Data[3326627]["RewardItem"][1] = {}
tThanksGiving2019MapGuess_Data[3326627]["RewardItem"][1]["Id"] = 3306370 -- 黄色神纹碎片[3306370][属性:9][叠加:10000][金币:0], 【表格】随机普通黄色神纹碎片*2
tThanksGiving2019MapGuess_Data[3326627]["RewardItem"][1]["Attr"] = "0 2" -- 黄色神纹碎片*2
tThanksGiving2019MapGuess_Data[3326627]["RewardItem"][2] = {}
tThanksGiving2019MapGuess_Data[3326627]["RewardItem"][2]["Id"] = 3003124 -- 免费强炼丹[3003124][属性:0][叠加:10000][金币:0], 【表格】免费修炼丹*5
tThanksGiving2019MapGuess_Data[3326627]["RewardItem"][2]["Attr"] = "0 5 3" -- 免费强炼丹（赠）*5
tThanksGiving2019MapGuess_Data[3326627]["RewardItem"][3] = {}
tThanksGiving2019MapGuess_Data[3326627]["RewardItem"][3]["Id"] = 3314012 --  3314012 【库里没有该物品】, 【表格】八折券*5
tThanksGiving2019MapGuess_Data[3326627]["RewardItem"][3]["Attr"] = "0 5" --  3314012 【库里没有该物品】（赠）*5
tThanksGiving2019MapGuess_Data[3326627]["RewardEffect"] = {}
tThanksGiving2019MapGuess_Data[3326627]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tThanksGiving2019MapGuess_Data[3326627]["RewardEffect"]["Effect"] = "angelwing"


tThanksGiving2019MapGuess_Data[3326628] = {}
-- ===猜谜大师礼盒
-- ===索引: tThanksGiving2019MapGuess_Data[3326628]
-- ===删除: 3326628,1
-- ===
tThanksGiving2019MapGuess_Data[3326628]["LogId"] = 12001698
tThanksGiving2019MapGuess_Data[3326628]["DeleteItem"] = {}
tThanksGiving2019MapGuess_Data[3326628]["DeleteItem"][1] = {}
tThanksGiving2019MapGuess_Data[3326628]["DeleteItem"][1]["Id"] = 3326628 -- 【库】猜谜大师礼盒 [属性:9]
tThanksGiving2019MapGuess_Data[3326628]["RewardItem"] = {}
tThanksGiving2019MapGuess_Data[3326628]["RewardItem"][1] = {}
tThanksGiving2019MapGuess_Data[3326628]["RewardItem"][1]["Id"] = 3306370 -- 黄色神纹碎片[3306370][属性:9][叠加:10000][金币:0], 【表格】随机普通黄色神纹碎片*2
tThanksGiving2019MapGuess_Data[3326628]["RewardItem"][1]["Attr"] = "0 2" -- 黄色神纹碎片*2
tThanksGiving2019MapGuess_Data[3326628]["RewardItem"][2] = {}
tThanksGiving2019MapGuess_Data[3326628]["RewardItem"][2]["Id"] = 3003124 -- 免费强炼丹[3003124][属性:0][叠加:10000][金币:0], 【表格】免费修炼丹*5
tThanksGiving2019MapGuess_Data[3326628]["RewardItem"][2]["Attr"] = "0 5 3" -- 免费强炼丹（赠）*5
tThanksGiving2019MapGuess_Data[3326628]["RewardItem"][3] = {}
tThanksGiving2019MapGuess_Data[3326628]["RewardItem"][3]["Id"] = 3005412 -- 散功丹[3005412][属性:0][叠加:10000][金币:0], 【表格】非赠散功丹*1
tThanksGiving2019MapGuess_Data[3326628]["RewardItem"][3]["Attr"] = "0 1" -- 散功丹*1
tThanksGiving2019MapGuess_Data[3326628]["RewardEffect"] = {}
tThanksGiving2019MapGuess_Data[3326628]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tThanksGiving2019MapGuess_Data[3326628]["RewardEffect"]["Effect"] = "angelwing"

--上交今日地图物资
tThanksGiving2019MapGuess_Data["DailySubmit"] = {}
tThanksGiving2019MapGuess_Data["DailySubmit"]["LogId"] = 12001698
tThanksGiving2019MapGuess_Data["DailySubmit"]["DeleteItem"] = {}
tThanksGiving2019MapGuess_Data["DailySubmit"]["DeleteItem"][1] = {}
tThanksGiving2019MapGuess_Data["DailySubmit"]["DeleteItem"][1]["Id"] = 0
tThanksGiving2019MapGuess_Data["DailySubmit"]["DeleteItem"][1]["ItemNum"] = 0 
tThanksGiving2019MapGuess_Data["DailySubmit"]["RewardEffect"] = {}
tThanksGiving2019MapGuess_Data["DailySubmit"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tThanksGiving2019MapGuess_Data["DailySubmit"]["RewardEffect"]["Effect"] = "angelwing"

--emoneylog
tThanksGiving2019MapGuess_Data["EmoneyLog"] = {}
tThanksGiving2019MapGuess_Data["EmoneyLog"][1] = "1000	01153	0	0	1	" -- 金币
tThanksGiving2019MapGuess_Data["EmoneyLog"][2] = "1000	01154	1	1	0	" -- 天石

--过期删除
tThanksGiving2019MapGuess_Data["EmoneyLog"]["Overdue"]="0,0,%d,%d,12001698,2,0,0"


--怪物id
tThanksGiving2019MapGuess_Data["MonsterId"]={}
--普通服
tThanksGiving2019MapGuess_Data["MonsterId"][1]={}
tThanksGiving2019MapGuess_Data["MonsterId"][1][5]={10,11,12,13,69,70,71,72,3050}
tThanksGiving2019MapGuess_Data["MonsterId"][1][6]={18,19,55,78,79,84,77}
tThanksGiving2019MapGuess_Data["MonsterId"][1][7]={6,7,8,9,65,66,67,68,2140}
tThanksGiving2019MapGuess_Data["MonsterId"][1][8]={20,56,57,58,80,81,82,2231,83,86,87,88,89}
tThanksGiving2019MapGuess_Data["MonsterId"][1][9]={2411,2416,2460,2461,2466,2473,2474,2479}
tThanksGiving2019MapGuess_Data["MonsterId"][1][10]={20,56,57,58,80,81,82,2231,83,86,87,88,89}
tThanksGiving2019MapGuess_Data["MonsterId"][1][11]={3141,3142,3143,3144,3145,3146,3147,3148,3149,3155,3156}
tThanksGiving2019MapGuess_Data["MonsterId"][1][12]={3967,3968,3969}
tThanksGiving2019MapGuess_Data["MonsterId"][1][13]={2684,2685,2686,2687}
--激情服
tThanksGiving2019MapGuess_Data["MonsterId"][2]={}
tThanksGiving2019MapGuess_Data["MonsterId"][2][5]={4869,4870,4842,4843,4844,4845}
tThanksGiving2019MapGuess_Data["MonsterId"][2][6]={4874,4850,4851,4852,4853,4854}
tThanksGiving2019MapGuess_Data["MonsterId"][2][7]={4868,4838,4839,4840,4841}
tThanksGiving2019MapGuess_Data["MonsterId"][2][8]={4869,4870,4842,4843,4844,4845}
tThanksGiving2019MapGuess_Data["MonsterId"][2][9]={4874,4850,4851,4852,4853,4854}
tThanksGiving2019MapGuess_Data["MonsterId"][2][10]={4868,4838,4839,4840,4841}


--掉落概率
tThanksGiving2019MapGuess_Data["DropChance"]={}
tThanksGiving2019MapGuess_Data["DropChance"][5]= 1200
tThanksGiving2019MapGuess_Data["DropChance"][6]= 1200
tThanksGiving2019MapGuess_Data["DropChance"][7]= 1200
tThanksGiving2019MapGuess_Data["DropChance"][8]= 800
tThanksGiving2019MapGuess_Data["DropChance"][9]= 800
tThanksGiving2019MapGuess_Data["DropChance"][10]=600
tThanksGiving2019MapGuess_Data["DropChance"][11]=600
tThanksGiving2019MapGuess_Data["DropChance"][12]=400
tThanksGiving2019MapGuess_Data["DropChance"][13]=400
tThanksGiving2019MapGuess_Data["DropChance"][14]=200




tThanksGiving2019MapGuess_Data["MonsterDrop"] = {}
-- ===杀怪掉落
-- ===索引: tThanksGiving2019MapGuess_Data["MonsterDrop"][1]
-- ===
-- ===
tThanksGiving2019MapGuess_Data["MonsterDrop"][1] = {}
tThanksGiving2019MapGuess_Data["MonsterDrop"][1]["ItemChanceSum"] = 10000
tThanksGiving2019MapGuess_Data["MonsterDrop"][1]["LogId"] = 12001698
-- 当天物资 
tThanksGiving2019MapGuess_Data["MonsterDrop"][1][1] = {}
tThanksGiving2019MapGuess_Data["MonsterDrop"][1][1]["RandomItemChanceType"] = 2
tThanksGiving2019MapGuess_Data["MonsterDrop"][1][1]["ItemChance"] = 0
tThanksGiving2019MapGuess_Data["MonsterDrop"][1][1]["RewardItem"] = {}
tThanksGiving2019MapGuess_Data["MonsterDrop"][1][1]["RewardItem"][1] = {}
tThanksGiving2019MapGuess_Data["MonsterDrop"][1][1]["RewardItem"][1]["Id"] = 0 --  0 【库里没有该物品】, 【表格】当天物资
tThanksGiving2019MapGuess_Data["MonsterDrop"][1][1]["RewardItem"][1]["Attr"] = "0 1" --  0 【库里没有该物品】*1
tThanksGiving2019MapGuess_Data["MonsterDrop"][1][1]["RewardEffect"] = {}
tThanksGiving2019MapGuess_Data["MonsterDrop"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tThanksGiving2019MapGuess_Data["MonsterDrop"][1][1]["RewardEffect"]["Effect"] = "angelwing"
-- 无 
tThanksGiving2019MapGuess_Data["MonsterDrop"][1][2] = {}
tThanksGiving2019MapGuess_Data["MonsterDrop"][1][2]["RandomItemChanceType"] = 2
tThanksGiving2019MapGuess_Data["MonsterDrop"][1][2]["ItemChance"] = 0
tThanksGiving2019MapGuess_Data["MonsterDrop"][1][2]["RewardEffect"] = {}
tThanksGiving2019MapGuess_Data["MonsterDrop"][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tThanksGiving2019MapGuess_Data["MonsterDrop"][1][2]["RewardEffect"]["Effect"] = "angelwing"



--任务面板id
tThanksGiving2019MapGuess_Data["Task"]={}
tThanksGiving2019MapGuess_Data["Task"][5] =   4273
tThanksGiving2019MapGuess_Data["Task"][6] =   4274
tThanksGiving2019MapGuess_Data["Task"][7] =   4275
tThanksGiving2019MapGuess_Data["Task"][8] =   4276
tThanksGiving2019MapGuess_Data["Task"][9] =   4277
tThanksGiving2019MapGuess_Data["Task"][10] =  4278
tThanksGiving2019MapGuess_Data["Task"][11] =  4279
tThanksGiving2019MapGuess_Data["Task"][12] =  4280
tThanksGiving2019MapGuess_Data["Task"][13] =  4281
tThanksGiving2019MapGuess_Data["Task"][14] =  4282


--临时表 记录掉落数量
local tThanksGiving2019MapGuess_DropNum={}
tThanksGiving2019MapGuess_DropNum[5] ={}
tThanksGiving2019MapGuess_DropNum[6] ={}
tThanksGiving2019MapGuess_DropNum[7] ={}
tThanksGiving2019MapGuess_DropNum[8] ={}
tThanksGiving2019MapGuess_DropNum[9] ={}
tThanksGiving2019MapGuess_DropNum[10] ={}
tThanksGiving2019MapGuess_DropNum[11] ={}
tThanksGiving2019MapGuess_DropNum[12] ={}
tThanksGiving2019MapGuess_DropNum[13] ={}
tThanksGiving2019MapGuess_DropNum[14] ={}
----------------------------------逻辑部分---------------------------------------------
function ThanksGiving2019MapGuess_Task(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019MapGuess"]["ActTime"])  then
		return 
	end 
	
	local nTaskEvent=tThanksGiving2019MapGuess_Data["Stc"]["TaskEvent"]
	local nTaskType=tThanksGiving2019MapGuess_Data["Stc"]["TaskType"]
	
	local nHandInEvent=tThanksGiving2019MapGuess_Data["Stc"]["HandInEvent"]
	local nHandInType=tThanksGiving2019MapGuess_Data["Stc"]["HandInType"]
	
	--隔天清掩码
	Task_StcReset(nTaskEvent,nTaskType)
	Task_StcReset(nHandInEvent,nHandInType)
	
	--判断今天是否完成过任务
	if Get_UserStatisticValue(nTaskEvent,nTaskType) >= 1 then 
		return Sys_MsgBox(tThanksGiving2019MapGuess_Text["SystemTips"]["Complete"])
	end
	
	--日期
	local nNowDay=tonumber(os.date("%d"))
	local nTaskId=tThanksGiving2019MapGuess_Data["Task"][nNowDay]
	
	--接任务面板
	if not Task_ChkTaskDetail(nTaskId) then
		if not Task_AddTaskDetail(nTaskId) then
			return
		end
	end
	
	--判断激情服
	local nIndex=1
	if SpecialServer_ChkNoGiftServer() then
		nIndex=2
	end 

	local sClue=tThanksGiving2019MapGuess_Text["Maps"][nIndex][nNowDay]["Clue"]
	local sItem=tThanksGiving2019MapGuess_Text["Maps"][nIndex][nNowDay]["Item"]
	local sMapName=tThanksGiving2019MapGuess_Text["Maps"][nIndex][nNowDay]["MapName"]
	local sReward=tThanksGiving2019MapGuess_Text["Maps"][nIndex][nNowDay]["Rewards"][nIndex]
	
	local nItemId=tThanksGiving2019MapGuess_Data["ItemId"][nNowDay]
	local nItemNum=tThanksGiving2019MapGuess_Text["Maps"][nIndex][nNowDay]["Num"]
	
	if Get_UserStatisticValue(nHandInEvent,nHandInType)<1 then
	
		tNpcGossip[nNpcId]["Text213"]=string.format(tThanksGiving2019MapGuess_Text[nNpcId]["Text213"],sClue)
		tNpcGossip[nNpcId]["Text214"]=string.format(tThanksGiving2019MapGuess_Text[nNpcId]["Text214"],sItem)
		tNpcGossip[nNpcId]["Text216"]=string.format(tThanksGiving2019MapGuess_Text[nNpcId]["Text216"],sReward)
		
		tNpcGossip[nNpcId]["OptionFunc211"] = "ThanksGiving2019MapGuess_Answer</N>1</N>25200"
		tNpcGossip[nNpcId]["OptionFunc212"] = "ThanksGiving2019MapGuess_Answer</N>2</N>25200"
		
		LinkNpcGossipFunc_New(nNpcId,"2-1")
	else
		tNpcGossip[nNpcId]["Text223"]=string.format(tThanksGiving2019MapGuess_Text[nNpcId]["Text223"],sMapName)
		tNpcGossip[nNpcId]["Text224"]=string.format(tThanksGiving2019MapGuess_Text[nNpcId]["Text224"],sItem)
		tNpcGossip[nNpcId]["Text226"]=string.format(tThanksGiving2019MapGuess_Text[nNpcId]["Text226"],sReward)
	
		tNpcGossip[nNpcId]["OptionFunc221"] = "ThanksGiving2019MapGuess_Trans"
		
		LinkNpcGossipFunc_New(nNpcId,"2-2")
	end 
	
end 

function ThanksGiving2019MapGuess_Answer(nHandIn,nNpcId)
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019MapGuess"]["ActTime"])  then
		return 
	end 
	
	local nTaskEvent=tThanksGiving2019MapGuess_Data["Stc"]["TaskEvent"]
	local nTaskType=tThanksGiving2019MapGuess_Data["Stc"]["TaskType"]
	
	local nHandInEvent=tThanksGiving2019MapGuess_Data["Stc"]["HandInEvent"]
	local nHandInType=tThanksGiving2019MapGuess_Data["Stc"]["HandInType"]
	
	--隔天清掩码
	Task_StcReset(nTaskEvent,nTaskType)
	Task_StcReset(nHandInEvent,nHandInType)
	
	--判断今天是否完成过任务
	if Get_UserStatisticValue(nTaskEvent,nTaskType) >= 1 then 
		return Sys_MsgBox(tThanksGiving2019MapGuess_Text["SystemTips"]["Complete"])
	end
	
	--判断激情服
	local nIndex=1
	if SpecialServer_ChkNoGiftServer() then
		nIndex=2
	end 
	
	--判断金币/天石是否充足
	local nNum = tThanksGiving2019MapGuess_Data["HandIn"][nHandIn]["Num"]
	if nHandIn==1 then 
		if not User_CanPutMoney2Bag(-nNum) then
			Sys_MsgBox(tThanksGiving2019MapGuess_Text["SystemTips"]["Money"])
			return
		end
	end 
	if nHandIn==2 then 
		if Get_UserEMoney() < nNum then
			Sys_MsgBox(tThanksGiving2019MapGuess_Text["SystemTips"]["Emoney"])
			return
		end
	end 
	
	--充足
	if RewardTemplate_UseItem(tThanksGiving2019MapGuess_Data["Cost"][nHandIn]) then 
		--加掩码
		Task_AddStatistic(nHandInEvent,nHandInType,1,1)
		Task_SetStcTimestamp(nHandInEvent,nHandInType,0)
		
		Sys_SaveEmoneyBuy(tThanksGiving2019MapGuess_Data["EmoneyLog"][nHandIn])
		
		local nNowDay=tonumber(os.date("%d"))
		local sItem=tThanksGiving2019MapGuess_Text["Maps"][nIndex][nNowDay]["Item"]
		local sMapName=tThanksGiving2019MapGuess_Text["Maps"][nIndex][nNowDay]["MapName"]
		local sReward=tThanksGiving2019MapGuess_Text["Maps"][nIndex][nNowDay]["Rewards"][nIndex]
	
		local nItemId=tThanksGiving2019MapGuess_Data["ItemId"][nNowDay]
		local nItemNum=tThanksGiving2019MapGuess_Text["Maps"][nIndex][nNowDay]["Num"]
		
		tNpcGossip[nNpcId]["Text223"]=string.format(tThanksGiving2019MapGuess_Text[nNpcId]["Text223"],sMapName)
		tNpcGossip[nNpcId]["Text224"]=string.format(tThanksGiving2019MapGuess_Text[nNpcId]["Text224"],sItem)
		tNpcGossip[nNpcId]["Text226"]=string.format(tThanksGiving2019MapGuess_Text[nNpcId]["Text226"],sReward)
	
		tNpcGossip[nNpcId]["OptionFunc221"] = "ThanksGiving2019MapGuess_Trans"
		
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end 
end 

function ThanksGiving2019MapGuess_Trans()
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019MapGuess"]["ActTime"])  then
		return 
	end 
	
	local nTaskEvent=tThanksGiving2019MapGuess_Data["Stc"]["TaskEvent"]
	local nTaskType=tThanksGiving2019MapGuess_Data["Stc"]["TaskType"]

	local nHandInEvent=tThanksGiving2019MapGuess_Data["Stc"]["HandInEvent"]
	local nHandInType=tThanksGiving2019MapGuess_Data["Stc"]["HandInType"]
	
	--隔天清掩码
	Task_StcReset(nTaskEvent,nTaskType)
	Task_StcReset(nHandInEvent,nHandInType)
	
	--判断今天是否完成过任务
	if Get_UserStatisticValue(nTaskEvent,nTaskType) >= 1 then 
		return Sys_MsgBox(tThanksGiving2019MapGuess_Text["SystemTips"]["Complete"])
	end
	
	--判断激情服
	local nIndex=1
	if SpecialServer_ChkNoGiftServer() then
		nIndex=2
	end 
	
	local nNowDay=tonumber(os.date("%d"))

	--传送位置
	local nMapId=tThanksGiving2019MapGuess_Data["TransPos"][nIndex][nNowDay]["MapId"]
	local nPosX=tThanksGiving2019MapGuess_Data["TransPos"][nIndex][nNowDay]["PosX"]
	local nPosY=tThanksGiving2019MapGuess_Data["TransPos"][nIndex][nNowDay]["PosY"]
	local nUserId = Get_UserId()
	
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5,1,nUserId)
end 

--上交今日地图物资
function ThanksGiving2019MapGuess_HandIn(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019MapGuess"]["ActTime"])  then
		return 
	end 

	local nTaskEvent=tThanksGiving2019MapGuess_Data["Stc"]["TaskEvent"]
	local nTaskType=tThanksGiving2019MapGuess_Data["Stc"]["TaskType"]
	
	local nHandInEvent=tThanksGiving2019MapGuess_Data["Stc"]["HandInEvent"]
	local nHandInType=tThanksGiving2019MapGuess_Data["Stc"]["HandInType"]
	
	--判断激情服
	local nIndex=1
	if SpecialServer_ChkNoGiftServer() then
		nIndex=2
	end 
	
	
	--隔天清掩码
	Task_StcReset(nTaskEvent,nTaskType)
	Task_StcReset(nHandInEvent,nHandInType)
	
	--判断今天是否完成过任务
	if Get_UserStatisticValue(nTaskEvent,nTaskType) >= 1 then 
		return Sys_MsgBox(tThanksGiving2019MapGuess_Text["SystemTips"]["Complete"])
	end
	
	
	--日期
	local nNowDay=tonumber(os.date("%d"))
	local sItem=tThanksGiving2019MapGuess_Text["Maps"][nIndex][nNowDay]["Item"]
	
	tNpcGossip[nNpcId]["Text313"]=string.format(tThanksGiving2019MapGuess_Text[nNpcId]["Text313"],sItem)
	tNpcGossip[nNpcId]["OptionFunc311"] = "ThanksGiving2019MapGuess_HandInCheck</N>" .. nNpcId
	
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end 
	
--确认上交
function ThanksGiving2019MapGuess_HandInCheck(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019MapGuess"]["ActTime"])  then
		return 
	end 

	local nTaskEvent=tThanksGiving2019MapGuess_Data["Stc"]["TaskEvent"]
	local nTaskType=tThanksGiving2019MapGuess_Data["Stc"]["TaskType"]
	
	local nHandInEvent=tThanksGiving2019MapGuess_Data["Stc"]["HandInEvent"]
	local nHandInType=tThanksGiving2019MapGuess_Data["Stc"]["HandInType"]
	
	--隔天清掩码
	Task_StcReset(nTaskEvent,nTaskType)
	Task_StcReset(nHandInEvent,nHandInType)
	
	--判断今天是否完成过任务
	if Get_UserStatisticValue(nTaskEvent,nTaskType) >= 1 then 
		return Sys_MsgBox(tThanksGiving2019MapGuess_Text["SystemTips"]["Complete"])
	end
	
	--判断激情服
	local nIndex=1
	if SpecialServer_ChkNoGiftServer() then
		nIndex=2
	end 
	
	local nNowDay=tonumber(os.date("%d"))
	
	local nItemId=tThanksGiving2019MapGuess_Data["ItemId"][nNowDay]
	local nItemNum=tThanksGiving2019MapGuess_Text["Maps"][nIndex][nNowDay]["Num"]
	
	local nRewardType=0
	if nNowDay>=5 and nNowDay<=7 then 
		nRewardType=1
	elseif nNowDay>=8 and nNowDay<=9 then 
		nRewardType=2
	elseif nNowDay>=10 and nNowDay<=11 then 
		nRewardType=3
	else 
		nRewardType=4
	end 
	
	--背包空间判断
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tThanksGiving2019MapGuess_Data["Reward"][nIndex][nRewardType])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tThanksGiving2019MapGuess_Data["Reward"][nIndex][nRewardType])
	local nNeedSpace = nGetRewardSpace - nDelRewardSpace
	if not User_CheckLeftSpace(nNeedSpace) then
		return Sys_MsgBox(string.format(tThanksGiving2019MapGuess_Text["SystemTips"]["NoSpace"],nNeedSpace))
	end
	
	
	local tReward = CommonFunc_Copy(tThanksGiving2019MapGuess_Data["DailySubmit"])
	tReward["DeleteItem"][1]["Id"] = nItemId
	tReward["DeleteItem"][1]["ItemNum"] = nItemNum
	
	
	if RewardTemplate_UseItem(tReward) then 
		--设置完成掩码
		Task_AddStatistic(nTaskEvent,nTaskType,1,1)
		Task_SetStcTimestamp(nTaskEvent,nTaskType,0)
		
		--给奖励
		RewardTemplate_UseItem(tThanksGiving2019MapGuess_Data["Reward"][nIndex][nRewardType])
		return User_TalkChannel2005(tThanksGiving2019MapGuess_Text["SystemTips"]["HandInSuccess"])
	end
end 


--怪物掉落
function ThanksGiving2019MapGuess_MonsterDrop(nMonsterId)
	
	--绿色服不触发
	if SpecialServer_ChkGreenServer() then
		return 
	end 

	--判断激情服
	local nIndex=1
	if SpecialServer_ChkNoGiftServer() then
		nIndex=2
	end 
	
	if nIndex==1 then 
		if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019MapGuess"]["ActTime"])  then
			return 
		end 
	else
		if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019MapGuess"]["NogiftTime"])  then
			return 
		end 
	end 
	
	local nTaskEvent=tThanksGiving2019MapGuess_Data["Stc"]["TaskEvent"]
	local nTaskType=tThanksGiving2019MapGuess_Data["Stc"]["TaskType"]
	local nNowDay=tonumber(os.date("%d"))
	local nUserId = Get_UserId()
	local nTaskId=tThanksGiving2019MapGuess_Data["Task"][nNowDay]

	--今天完成任务后不掉落
	if Get_UserStatisticValue(nTaskEvent,nTaskType) >= 1 then 
		return 
	end
	
	--没接任务不掉落
	if not Task_ChkTaskDetail(nTaskId) then
		return
	end
	
	if tThanksGiving2019MapGuess_DropNum[nNowDay][nUserId] == nil then
		tThanksGiving2019MapGuess_DropNum[nNowDay][nUserId] = 0
	end

	for i,v in ipairs(tThanksGiving2019MapGuess_Data["MonsterId"][nIndex][nNowDay]) do 
		if nMonsterId==v then 
			--掉落
			local tReward = CommonFunc_Copy(tThanksGiving2019MapGuess_Data["MonsterDrop"])
			local nItemId=tThanksGiving2019MapGuess_Data["ItemId"][nNowDay]
			local nChance=tThanksGiving2019MapGuess_Data["DropChance"][nNowDay]
			
			tReward[1][1]["ItemChance"] = nChance
			tReward[1][1]["RewardItem"][1]["Id"] = nItemId
			tReward[1][2]["ItemChance"] = 10000-nChance
			
			
			--背包空间判断
			local nSpace = RewardTemplate_GetRandomSpace(tReward,1)
			
			if nSpace > 0 and (not User_CheckLeftSpace(nSpace)) then
				return
			end
			
			local tDropTable = RewardTemplate_NewRandom(tReward,1)
			local tDrop = tDropTable[1]["tAward"][1]["RewardItem"]
			
			if tDrop~=nil then 
				tThanksGiving2019MapGuess_DropNum[nNowDay][nUserId] =tThanksGiving2019MapGuess_DropNum[nNowDay][nUserId]+1
				ThanksGiving2019MapGuess_AddTaskData()
				
				if tThanksGiving2019MapGuess_DropNum[nNowDay][nUserId]==tThanksGiving2019MapGuess_Data["ItemNum"][nNowDay] then 
					--提示找npc上交
					local sFunc = "NpcPosition_PathFind</N>" .. 25200
					Sys_MsgBox(tThanksGiving2019MapGuess_Text["SystemTips"]["FindNpc"],sFunc,sFunc,nUserId)
					return
				end
			end 
		end 
	end 
end 	

--古神灵境杀怪掉落
function ThanksGiving2019MapGuess_TreasureArea()

	--绿色服不触发
	if SpecialServer_ChkGreenServer() then
		return 
	end 
	
	--判断激情服
	if SpecialServer_ChkNoGiftServer() then
		return 
	end 
	
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019MapGuess"]["DayTime"][14])  then
		return 
	end 
	
	
	local nTaskEvent=tThanksGiving2019MapGuess_Data["Stc"]["TaskEvent"]
	local nTaskType=tThanksGiving2019MapGuess_Data["Stc"]["TaskType"]
	local nNowDay=tonumber(os.date("%d"))
	local nUserId = Get_UserId()
	local nTaskId=tThanksGiving2019MapGuess_Data["Task"][nNowDay]

	--今天完成任务后不掉落
	if Get_UserStatisticValue(nTaskEvent,nTaskType) >= 1 then 
		return 
	end
	
	--没接任务不掉落
	if not Task_ChkTaskDetail(nTaskId) then
		return
	end
	
	--掉落
	local tReward = CommonFunc_Copy(tThanksGiving2019MapGuess_Data["MonsterDrop"])
	local nItemId=tThanksGiving2019MapGuess_Data["ItemId"][nNowDay]
	local nChance=tThanksGiving2019MapGuess_Data["DropChance"][nNowDay]
	
	if tThanksGiving2019MapGuess_DropNum[nNowDay][nUserId] == nil then
		tThanksGiving2019MapGuess_DropNum[nNowDay][nUserId] = 0
	end
	
	tReward[1][1]["ItemChance"] = nChance
	tReward[1][1]["RewardItem"][1]["Id"] = nItemId
	tReward[1][2]["ItemChance"] = 10000-nChance
	--背包空间判断
	local nSpace = RewardTemplate_GetRandomSpace(tReward,1)
	
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace)) then
		return
	end
	
	local tDropTable = RewardTemplate_NewRandom(tReward,1)
	local tDrop = tDropTable[1]["tAward"][1]["RewardItem"]
			
	if tDrop~=nil then 
		tThanksGiving2019MapGuess_DropNum[nNowDay][nUserId] =tThanksGiving2019MapGuess_DropNum[nNowDay][nUserId]+1
		ThanksGiving2019MapGuess_AddTaskData()
		if tThanksGiving2019MapGuess_DropNum[nNowDay][nUserId]==tThanksGiving2019MapGuess_Data["ItemNum"][nNowDay] then 
			--提示找npc上交
			local sFunc = "NpcPosition_PathFind</N>" .. 25200
			Sys_MsgBox(tThanksGiving2019MapGuess_Text["SystemTips"]["FindNpc"],sFunc,sFunc,nUserId)
			return
		end
	end 
end 

function ThanksGiving2019MapGuess_AddTaskData()

	local nNowDay=tonumber(os.date("%d"))
	--加任务面板掩码
	local nTaskId=tThanksGiving2019MapGuess_Data["Task"][nNowDay]
	if Task_ChkTaskDetail(nTaskId) then
		local nData6=Get_TaskDetailData6(nTaskId)
		nData6=nData6+1
		Task_SetTaskDetailData6(nTaskId,nData6)
		Task_SetTaskDetailData7(nTaskId,os.time())
		if nData6==tThanksGiving2019MapGuess_Data["ItemNum"][nNowDay] then 
			Task_SetTaskDetailCompleteFlag(nTaskId,1)
		end
	end
	
end 

----------------------------------NPC部分---------------------------------------------
tNpcFace[5182] = 21
tNpcGossip[25200]= tNpcGossip[25200] or DefaultNpc:new{}
tNpcGossip[25200]["OptionHidden"] = 1
tNpcGossip[25200]["DialogueText"] = tThanksGiving2019MapGuess_Text[25200]

--活动前
tNpcGossip[25200]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[25200]["tOption1-1"] = {111}
tNpcGossip[25200]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["ThanksGiving2019MapGuess"]["ActTime"])
end


--活动后
tNpcGossip[25200]["Text1-2"] = {121}
tNpcGossip[25200]["tOption1-2"] = {121}
tNpcGossip[25200]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["ThanksGiving2019MapGuess"]["ActTime"])
end

--活动中
tNpcGossip[25200]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[25200]["tOption1-3"] = {131,132}
tNpcGossip[25200]["ChkFunc1-3"] = function()
	if not Sys_ChkFullTime(tActivityTime["ThanksGiving2019MapGuess"]["ActTime"])  then
		return false
	else
		return true
	end 
end
tNpcGossip[25200]["OptionFunc131"] = "ThanksGiving2019MapGuess_Task</N>25200"
tNpcGossip[25200]["OptionFunc132"] = "ThanksGiving2019MapGuess_HandIn</N>25200"

--查看今日谜题
tNpcGossip[25200]["Text2-1"] = {211,212,213,214,215,216,217}
tNpcGossip[25200]["tOption2-1"] = {211,212,213}

--花钱刷新对白
tNpcGossip[25200]["Text2-2"] = {221,222,223,224,225,226,227}
tNpcGossip[25200]["tOption2-2"] = {221,222}

--上交今日地图物资
tNpcGossip[25200]["Text3-1"] = {311,312,313,314,315}
tNpcGossip[25200]["tOption3-1"] = {311,312}
---------------------------------物品部分---------------------------------------------
--道具
tItem[3326629] = tItem[3326629] or {}
tItem[3326629]["Function"] = function(nItemId,sItemName)
	if CommonFunc_GetAfterActivityTime(tActivityTime["ThanksGiving2019MapGuess"]["ActTime"]) then 
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId)  then 
			local sLog=string.format(tThanksGiving2019MapGuess_Data["EmoneyLog"]["Overdue"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sLog)
			User_TalkChannel2005(tThanksGiving2019MapGuess_Text["SystemTips"]["OutofTime"])
		end 
	else
		NpcPosition_PathFind(25200)
	end 
end

tItem[3326630] = tItem[3326629]
tItem[3326631] = tItem[3326629]
tItem[3326632] = tItem[3326629]
tItem[3326633] = tItem[3326629]
tItem[3326634] = tItem[3326629]
tItem[3326635] = tItem[3326629]
tItem[3326636] = tItem[3326629]
tItem[3326637] = tItem[3326629]
tItem[3326638] = tItem[3326629]

--礼包
tItem[3326623] = tItem[3326623] or {}
tItem[3326623]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tThanksGiving2019MapGuess_Data[nItemId])
	
	if not bJudge then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tThanksGiving2019MapGuess_Data[nItemId],nUserId,bJudge)
end
tItem[3326624] = tItem[3326623]
tItem[3326625] = tItem[3326623]
tItem[3326626] = tItem[3326623]
tItem[3326627] = tItem[3326623]
tItem[3326628] = tItem[3326623]

             
---------------------------------怪物部分---------------------------------------------
-- 片区怪掉落配置
local tThanksGiving2019MapGuess_MonsterDrop = {}

--黑虎城
tThanksGiving2019MapGuess_MonsterDrop[1] = {}
tThanksGiving2019MapGuess_MonsterDrop[1]["ActivityTime"] = tActivityTime["ThanksGiving2019MapGuess"]["DayTime"][5]
tThanksGiving2019MapGuess_MonsterDrop[1]["Function"] = ThanksGiving2019MapGuess_MonsterDrop
tThanksGiving2019MapGuess_MonsterDrop[1]["Area"] = {3}

--白鹭城
tThanksGiving2019MapGuess_MonsterDrop[2] = {}
tThanksGiving2019MapGuess_MonsterDrop[2]["ActivityTime"] = tActivityTime["ThanksGiving2019MapGuess"]["DayTime"][6]
tThanksGiving2019MapGuess_MonsterDrop[2]["Function"] = ThanksGiving2019MapGuess_MonsterDrop
tThanksGiving2019MapGuess_MonsterDrop[2]["Area"] = {5}

--枫溪林
tThanksGiving2019MapGuess_MonsterDrop[3] = {}
tThanksGiving2019MapGuess_MonsterDrop[3]["ActivityTime"] = tActivityTime["ThanksGiving2019MapGuess"]["DayTime"][7]
tThanksGiving2019MapGuess_MonsterDrop[3]["Function"] = ThanksGiving2019MapGuess_MonsterDrop
tThanksGiving2019MapGuess_MonsterDrop[3]["Area"] = {2}

--血色矿山
tThanksGiving2019MapGuess_MonsterDrop[4] = {}
tThanksGiving2019MapGuess_MonsterDrop[4]["ActivityTime"] = tActivityTime["ThanksGiving2019MapGuess"]["DayTime"][8]
tThanksGiving2019MapGuess_MonsterDrop[4]["Function"] = ThanksGiving2019MapGuess_MonsterDrop
tThanksGiving2019MapGuess_MonsterDrop[4]["Area"] = {6}

--冰封地穴
tThanksGiving2019MapGuess_MonsterDrop[5] = {}
tThanksGiving2019MapGuess_MonsterDrop[5]["ActivityTime"] = tActivityTime["ThanksGiving2019MapGuess"]["DayTime"][9]
tThanksGiving2019MapGuess_MonsterDrop[5]["Function"] = ThanksGiving2019MapGuess_MonsterDrop
tThanksGiving2019MapGuess_MonsterDrop[5]["Area"] = {7}

--敦煌地宫
tThanksGiving2019MapGuess_MonsterDrop[6] = {}
tThanksGiving2019MapGuess_MonsterDrop[6]["ActivityTime"] = tActivityTime["ThanksGiving2019MapGuess"]["DayTime"][10]
tThanksGiving2019MapGuess_MonsterDrop[6]["Function"] = ThanksGiving2019MapGuess_MonsterDrop
tThanksGiving2019MapGuess_MonsterDrop[6]["Area"] = {6}

--婆娑迷宫
tThanksGiving2019MapGuess_MonsterDrop[7] = {}
tThanksGiving2019MapGuess_MonsterDrop[7]["ActivityTime"] = tActivityTime["ThanksGiving2019MapGuess"]["DayTime"][11]
tThanksGiving2019MapGuess_MonsterDrop[7]["Function"] = ThanksGiving2019MapGuess_MonsterDrop
tThanksGiving2019MapGuess_MonsterDrop[7]["Area"] = {9}

--神龙岛
tThanksGiving2019MapGuess_MonsterDrop[8] = {}
tThanksGiving2019MapGuess_MonsterDrop[8]["ActivityTime"] = tActivityTime["ThanksGiving2019MapGuess"]["DayTime"][12]
tThanksGiving2019MapGuess_MonsterDrop[8]["Function"] = ThanksGiving2019MapGuess_MonsterDrop
tThanksGiving2019MapGuess_MonsterDrop[8]["Area"] = {11}

--风锥浅滩
tThanksGiving2019MapGuess_MonsterDrop[9] = {}
tThanksGiving2019MapGuess_MonsterDrop[9]["ActivityTime"] = tActivityTime["ThanksGiving2019MapGuess"]["DayTime"][13]
tThanksGiving2019MapGuess_MonsterDrop[9]["Function"] = ThanksGiving2019MapGuess_MonsterDrop
tThanksGiving2019MapGuess_MonsterDrop[9]["Area"] = {8}



--激情服怪物

--黑虎城
tThanksGiving2019MapGuess_MonsterDrop[10] = {}
tThanksGiving2019MapGuess_MonsterDrop[10]["ActivityTime"] = tActivityTime["ThanksGiving2019MapGuess"]["DayTime"][5]
tThanksGiving2019MapGuess_MonsterDrop[10]["Function"] = ThanksGiving2019MapGuess_MonsterDrop
tThanksGiving2019MapGuess_MonsterDrop[10]["MonsterId"] = {4869,4870,4842,4843,4844,4845}

--白鹭城
tThanksGiving2019MapGuess_MonsterDrop[11] = {}
tThanksGiving2019MapGuess_MonsterDrop[11]["ActivityTime"] = tActivityTime["ThanksGiving2019MapGuess"]["DayTime"][6]
tThanksGiving2019MapGuess_MonsterDrop[11]["Function"] = ThanksGiving2019MapGuess_MonsterDrop
tThanksGiving2019MapGuess_MonsterDrop[11]["MonsterId"] = {4874,4850,4851,4852,4853,4854}

--枫溪林
tThanksGiving2019MapGuess_MonsterDrop[12] = {}
tThanksGiving2019MapGuess_MonsterDrop[12]["ActivityTime"] = tActivityTime["ThanksGiving2019MapGuess"]["DayTime"][7]
tThanksGiving2019MapGuess_MonsterDrop[12]["Function"] = ThanksGiving2019MapGuess_MonsterDrop
tThanksGiving2019MapGuess_MonsterDrop[12]["MonsterId"] = {4868,4838,4839,4840,4841}

--血色矿山
tThanksGiving2019MapGuess_MonsterDrop[13] = {}
tThanksGiving2019MapGuess_MonsterDrop[13]["ActivityTime"] = tActivityTime["ThanksGiving2019MapGuess"]["DayTime"][8]
tThanksGiving2019MapGuess_MonsterDrop[13]["Function"] = ThanksGiving2019MapGuess_MonsterDrop
tThanksGiving2019MapGuess_MonsterDrop[13]["MonsterId"] =  {4869,4870,4842,4843,4844,4845}

--冰封地穴
tThanksGiving2019MapGuess_MonsterDrop[14] = {}
tThanksGiving2019MapGuess_MonsterDrop[14]["ActivityTime"] = tActivityTime["ThanksGiving2019MapGuess"]["DayTime"][9]
tThanksGiving2019MapGuess_MonsterDrop[14]["Function"] = ThanksGiving2019MapGuess_MonsterDrop
tThanksGiving2019MapGuess_MonsterDrop[14]["MonsterId"] =  {4874,4850,4851,4852,4853,4854}

--敦煌地宫
tThanksGiving2019MapGuess_MonsterDrop[15] = {}
tThanksGiving2019MapGuess_MonsterDrop[15]["ActivityTime"] = tActivityTime["ThanksGiving2019MapGuess"]["DayTime"][10]
tThanksGiving2019MapGuess_MonsterDrop[15]["Function"] = ThanksGiving2019MapGuess_MonsterDrop
tThanksGiving2019MapGuess_MonsterDrop[15]["MonsterId"] =  {4868,4838,4839,4840,4841}


	
table.insert(tMonsterDrop_AreaLoad,tThanksGiving2019MapGuess_MonsterDrop[1])
table.insert(tMonsterDrop_AreaLoad,tThanksGiving2019MapGuess_MonsterDrop[2])
table.insert(tMonsterDrop_AreaLoad,tThanksGiving2019MapGuess_MonsterDrop[3])
table.insert(tMonsterDrop_AreaLoad,tThanksGiving2019MapGuess_MonsterDrop[4])
table.insert(tMonsterDrop_AreaLoad,tThanksGiving2019MapGuess_MonsterDrop[5])
table.insert(tMonsterDrop_AreaLoad,tThanksGiving2019MapGuess_MonsterDrop[6])
table.insert(tMonsterDrop_AreaLoad,tThanksGiving2019MapGuess_MonsterDrop[7])
table.insert(tMonsterDrop_AreaLoad,tThanksGiving2019MapGuess_MonsterDrop[8])
table.insert(tMonsterDrop_AreaLoad,tThanksGiving2019MapGuess_MonsterDrop[9])
table.insert(tMonsterDrop_AreaLoad,tThanksGiving2019MapGuess_MonsterDrop[10])
table.insert(tMonsterDrop_AreaLoad,tThanksGiving2019MapGuess_MonsterDrop[11])
table.insert(tMonsterDrop_AreaLoad,tThanksGiving2019MapGuess_MonsterDrop[12])
table.insert(tMonsterDrop_AreaLoad,tThanksGiving2019MapGuess_MonsterDrop[13])
table.insert(tMonsterDrop_AreaLoad,tThanksGiving2019MapGuess_MonsterDrop[14])
table.insert(tMonsterDrop_AreaLoad,tThanksGiving2019MapGuess_MonsterDrop[15])


