--------------------------------------------------------------------------------
---Name:160407[英文征服][活动脚本]5月新服活动-爽服礼包
--Creator: 	林强
--Created:	2016-04-07
--------------------------------------------------------------------------------


--stc 14390
----stc掩码说明：
----ste(143,90)  :
		-- 是否已领取礼包


--命名规范
--FeelServerMay_











-------------------------------------------------------------数据部分----------------------------------------------------------------

--控制新服旧服
local nGlobalId=51164

-- 控制新服爽服礼包长期发放
local nNewGlobalId = 52650

local tFeelServerMay_Activity={}
--tFeelServerMay_Activity["ActivityTime"]="2016-05-19 00:00 2016-06-19 23:59"
tFeelServerMay_Activity["Log"]=12000344
tFeelServerMay_Activity["Level"] = 100
tFeelServerMay_Activity["Metempsychosis"] = 0


--获得掩码
local tFeelServerMay_Stc={}
tFeelServerMay_Stc["EventType"]=143
tFeelServerMay_Stc["DateType"]=90
tFeelServerMay_Stc["Have"]=1

tFeelServerMay_Stc["ExpEventType"]=145
tFeelServerMay_Stc["ExpDateType"]=26
tFeelServerMay_Stc["AddExpTime"]=300

--礼包参数
local tFeelServerMay_Pack={}
tFeelServerMay_Pack["OnLineBagSpace"]=tFeelServerMay_Text["OnLineBagSpace"]
tFeelServerMay_Pack["OnLineGet"]=tFeelServerMay_Text["OnLineGet"]
tFeelServerMay_Pack["OpenBagSpace"]=tFeelServerMay_Text["OpenBagSpace"]
tFeelServerMay_Pack["OpenSucess"]=tFeelServerMay_Text["OpenSucess"]
tFeelServerMay_Pack["Effect"]="zf2-e280"
tFeelServerMay_Pack["ItemArr"]="0 1 3 43200 1"

--飞升丹参数
local tFeelServerMay_DivineEXPBall={}
tFeelServerMay_DivineEXPBall["LevelLimit"]=120
tFeelServerMay_DivineEXPBall["LevelLimitTip"]=tFeelServerMay_Text["LevelLimitTip"]
tFeelServerMay_DivineEXPBall["Effect"]="LevelUp"

--职业获得礼包对应表
local tFeelServerMay_Pro={}
-- 老服
tFeelServerMay_Pro[1] = {}
--勇士
tFeelServerMay_Pro[1][10]= 3100000
--战士
tFeelServerMay_Pro[1][20]= 3100001
--弓手
tFeelServerMay_Pro[1][40]= 3100002
--刺客
tFeelServerMay_Pro[1][50]= 3100003
--武僧
tFeelServerMay_Pro[1][60]= 3100004
--海盗
tFeelServerMay_Pro[1][70]= 3100005
--截拳
tFeelServerMay_Pro[1][80]= 3100006
--道士
tFeelServerMay_Pro[1][100]= 3100007
--铁扇门
tFeelServerMay_Pro[1][160]= 3301800
--斗士
tFeelServerMay_Pro[1][90]= 3320532

-- 金币服
tFeelServerMay_Pro[2] = {}
--勇士
tFeelServerMay_Pro[2][10]= 3306602
--战士
tFeelServerMay_Pro[2][20]= 3306603
--弓手
tFeelServerMay_Pro[2][40]= 3306604
--刺客
tFeelServerMay_Pro[2][50]= 3306605
--武僧
tFeelServerMay_Pro[2][60]= 3306606
--海盗
tFeelServerMay_Pro[2][70]= 3306607
--截拳
tFeelServerMay_Pro[2][80]= 3306608
--道士
tFeelServerMay_Pro[2][100]= 3306609
--铁扇门
tFeelServerMay_Pro[2][160]= 3306610
--斗士
tFeelServerMay_Pro[2][90]= 3320533

------------------------------------------------------------勇士爽服礼包------------------------------------------------
tFeelServerMay_Pack[3100000]={}
tFeelServerMay_Pack[3100000]["BagSpace"]=8
tFeelServerMay_Pack[3100000]["Name"]=tFeelServerMay_Text["Name"][3100000]
tFeelServerMay_Pack[3100000]["ProName"]=tFeelServerMay_Text["ProName"][3100000]
tFeelServerMay_Pack[3100000]["Log"]=""
--赤霄剑+3
tFeelServerMay_Pack[3100000][1] = {}
tFeelServerMay_Pack[3100000][1]["Item_1"] = 420199
tFeelServerMay_Pack[3100000][1]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--罗汉箍+3
tFeelServerMay_Pack[3100000][2] = {}
tFeelServerMay_Pack[3100000][2]["Item_1"] = 118089
tFeelServerMay_Pack[3100000][2]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--乾坤战甲+3
tFeelServerMay_Pack[3100000][3] = {}
tFeelServerMay_Pack[3100000][3]["Item_1"] = 130089
tFeelServerMay_Pack[3100000][3]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--麒麟靴无洞无神佑+3
tFeelServerMay_Pack[3100000][4] = {}
tFeelServerMay_Pack[3100000][4]["Item_1"] = 160199
tFeelServerMay_Pack[3100000][4]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--龙睛宝链无洞无神佑+3
tFeelServerMay_Pack[3100000][5] = {}
tFeelServerMay_Pack[3100000][5]["Item_1"] = 120189
tFeelServerMay_Pack[3100000][5]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--白金钻戒无洞无神佑+3
tFeelServerMay_Pack[3100000][6] = {}
tFeelServerMay_Pack[3100000][6]["Item_1"] = 150199
tFeelServerMay_Pack[3100000][6]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"



-- --30级极品无洞+3神佑1%马鞭礼包
-- tFeelServerMay_Pack[3100000][7] = {}
-- tFeelServerMay_Pack[3100000][7]["Item_1"] = 203009
-- tFeelServerMay_Pack[3100000][7]["ItemAttr"] = "0 1 3 0 0 0 0 1 0 0 3"



-- --直升120级经验球
-- tFeelServerMay_Pack[3100000][8] = {}
-- tFeelServerMay_Pack[3100000][8]["Item_1"] = 3100010
-- tFeelServerMay_Pack[3100000][8]["ItemAttr"] = "0 1 3 43200 1"

--屠龙刀+3
tFeelServerMay_Pack[3100000][7] = {}
tFeelServerMay_Pack[3100000][7]["Item_1"] = 410229
tFeelServerMay_Pack[3100000][7]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"
------------------------------------------------------------战士爽服礼包------------------------------------------------
tFeelServerMay_Pack[3100001]={}
tFeelServerMay_Pack[3100001]["BagSpace"]=8
tFeelServerMay_Pack[3100001]["Name"]=tFeelServerMay_Text["Name"][3100001]
tFeelServerMay_Pack[3100001]["ProName"]=tFeelServerMay_Text["ProName"][3100001]
tFeelServerMay_Pack[3100001]["Log"]=""

--梅花枪+3
tFeelServerMay_Pack[3100001][1] = {}
tFeelServerMay_Pack[3100001][1]["Item_1"] = 560199
tFeelServerMay_Pack[3100001][1]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--凝霜之带+3
tFeelServerMay_Pack[3100001][2] = {}
tFeelServerMay_Pack[3100001][2]["Item_1"] = 141089
tFeelServerMay_Pack[3100001][2]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--玄铁铠+3
tFeelServerMay_Pack[3100001][3] = {}
tFeelServerMay_Pack[3100001][3]["Item_1"] = 131089
tFeelServerMay_Pack[3100001][3]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--麒麟靴无洞无神佑+3
tFeelServerMay_Pack[3100001][4] = {}
tFeelServerMay_Pack[3100001][4]["Item_1"] = 160199
tFeelServerMay_Pack[3100001][4]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--龙睛宝链无洞无神佑+3
tFeelServerMay_Pack[3100001][5] = {}
tFeelServerMay_Pack[3100001][5]["Item_1"] = 120189
tFeelServerMay_Pack[3100001][5]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--白金钻戒无洞无神佑+3
tFeelServerMay_Pack[3100001][6] = {}
tFeelServerMay_Pack[3100001][6]["Item_1"] = 150199
tFeelServerMay_Pack[3100001][6]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"



-- --30级极品无洞+3神佑1%马鞭礼包
-- tFeelServerMay_Pack[3100001][7] = {}
-- tFeelServerMay_Pack[3100001][7]["Item_1"] = 203009
-- tFeelServerMay_Pack[3100001][7]["ItemAttr"] = "0 1 3 0 0 0 0 1 0 0 3"



-- --直升120级经验球
-- tFeelServerMay_Pack[3100001][8] = {}
-- tFeelServerMay_Pack[3100001][8]["Item_1"] = 3100010
-- tFeelServerMay_Pack[3100001][8]["ItemAttr"] = "0 1 3 43200 1"

--虎刺坚盾+3
tFeelServerMay_Pack[3100001][7] = {}
tFeelServerMay_Pack[3100001][7]["Item_1"] = 900089
tFeelServerMay_Pack[3100001][7]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

------------------------------------------------------------弓手爽服礼包------------------------------------------------

tFeelServerMay_Pack[3100002]={}
tFeelServerMay_Pack[3100002]["BagSpace"]=8
tFeelServerMay_Pack[3100002]["Name"]=tFeelServerMay_Text["Name"][3100002]
tFeelServerMay_Pack[3100002]["ProName"]=tFeelServerMay_Text["ProName"][3100002]
tFeelServerMay_Pack[3100002]["Log"]=""


--幽冥飞刀+3*2
tFeelServerMay_Pack[3100002][1] = {}
tFeelServerMay_Pack[3100002][1]["Item_1"] = 613189
tFeelServerMay_Pack[3100002][1]["ItemAttr"] = "0 2 3 0 0 0 0 0 0 0 3"

--鹿角帽+3 
tFeelServerMay_Pack[3100002][2] = {}
tFeelServerMay_Pack[3100002][2]["Item_1"] = 113069
tFeelServerMay_Pack[3100002][2]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--犀甲猎褂+3
tFeelServerMay_Pack[3100002][3] = {}
tFeelServerMay_Pack[3100002][3]["Item_1"] = 133079
tFeelServerMay_Pack[3100002][3]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--麒麟靴无洞无神佑+3
tFeelServerMay_Pack[3100002][4] = {}
tFeelServerMay_Pack[3100002][4]["Item_1"] = 160199
tFeelServerMay_Pack[3100002][4]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--龙睛宝链无洞无神佑+3
tFeelServerMay_Pack[3100002][5] = {}
tFeelServerMay_Pack[3100002][5]["Item_1"] = 120189
tFeelServerMay_Pack[3100002][5]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--白金钻戒无洞无神佑+3
tFeelServerMay_Pack[3100002][6] = {}
tFeelServerMay_Pack[3100002][6]["Item_1"] = 150199
tFeelServerMay_Pack[3100002][6]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"



-- --30级极品无洞+3神佑1%马鞭礼包
-- tFeelServerMay_Pack[3100002][7] = {}
-- tFeelServerMay_Pack[3100002][7]["Item_1"] = 203009
-- tFeelServerMay_Pack[3100002][7]["ItemAttr"] = "0 1 3 0 0 0 0 1 0 0 3"



-- --直升120级经验球
-- tFeelServerMay_Pack[3100002][8] = {}
-- tFeelServerMay_Pack[3100002][8]["Item_1"] = 3100010
-- tFeelServerMay_Pack[3100002][8]["ItemAttr"] ="0 1 3 43200 1"

------------------------------------------------------------忍者爽服礼包------------------------------------------------

tFeelServerMay_Pack[3100003]={}
tFeelServerMay_Pack[3100003]["BagSpace"]=8
tFeelServerMay_Pack[3100003]["Name"]=tFeelServerMay_Text["Name"][3100003]
tFeelServerMay_Pack[3100003]["ProName"]=tFeelServerMay_Text["ProName"][3100003]
tFeelServerMay_Pack[3100003]["Log"]=""


--太岁宗道+3*2
tFeelServerMay_Pack[3100003][1] = {}
tFeelServerMay_Pack[3100003][1]["Item_1"] = 601199
tFeelServerMay_Pack[3100003][1]["ItemAttr"] = "0 2 3 0 0 0 0 0 0 0 3"

--嚎枭·血刺+3
tFeelServerMay_Pack[3100003][2] = {}
tFeelServerMay_Pack[3100003][2]["Item_1"] = 112089
tFeelServerMay_Pack[3100003][2]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--赤月影+3
tFeelServerMay_Pack[3100003][3] = {}
tFeelServerMay_Pack[3100003][3]["Item_1"] = 135089
tFeelServerMay_Pack[3100003][3]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--麒麟靴无洞无神佑+3
tFeelServerMay_Pack[3100003][4] = {}
tFeelServerMay_Pack[3100003][4]["Item_1"] = 160199
tFeelServerMay_Pack[3100003][4]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--龙睛宝链无洞无神佑+3
tFeelServerMay_Pack[3100003][5] = {}
tFeelServerMay_Pack[3100003][5]["Item_1"] = 120189
tFeelServerMay_Pack[3100003][5]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--白金钻戒无洞无神佑+3
tFeelServerMay_Pack[3100003][6] = {}
tFeelServerMay_Pack[3100003][6]["Item_1"] = 150199
tFeelServerMay_Pack[3100003][6]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"



-- --30级极品无洞+3神佑1%马鞭礼包
-- tFeelServerMay_Pack[3100003][7] = {}
-- tFeelServerMay_Pack[3100003][7]["Item_1"] = 203009
-- tFeelServerMay_Pack[3100003][7]["ItemAttr"] = "0 1 3 0 0 0 0 1 0 0 3"



-- --直升120级经验球
-- tFeelServerMay_Pack[3100003][8] = {}
-- tFeelServerMay_Pack[3100003][8]["Item_1"] = 3100010
-- tFeelServerMay_Pack[3100003][8]["ItemAttr"] = "0 1 3 43200 1"

------------------------------------------------------------武僧爽服礼包------------------------------------------------

tFeelServerMay_Pack[3100004]={}
tFeelServerMay_Pack[3100004]["BagSpace"]=8
tFeelServerMay_Pack[3100004]["Name"]=tFeelServerMay_Text["Name"][3100004]
tFeelServerMay_Pack[3100004]["ProName"]=tFeelServerMay_Text["ProName"][3100004]
tFeelServerMay_Pack[3100004]["Log"]=""


--镇狱念珠+3*2
tFeelServerMay_Pack[3100004][1] = {}
tFeelServerMay_Pack[3100004][1]["Item_1"] = 610199
tFeelServerMay_Pack[3100004][1]["ItemAttr"] = "0 2 3 0 0 0 0 0 0 0 3"

--龙象法箍+3
tFeelServerMay_Pack[3100004][2] = {}
tFeelServerMay_Pack[3100004][2]["Item_1"] = 143089
tFeelServerMay_Pack[3100004][2]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--苦寒柔甲+3
tFeelServerMay_Pack[3100004][3] = {}
tFeelServerMay_Pack[3100004][3]["Item_1"] = 136089
tFeelServerMay_Pack[3100004][3]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--麒麟靴无洞无神佑+3
tFeelServerMay_Pack[3100004][4] = {}
tFeelServerMay_Pack[3100004][4]["Item_1"] = 160199
tFeelServerMay_Pack[3100004][4]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--龙睛宝链无洞无神佑+3
tFeelServerMay_Pack[3100004][5] = {}
tFeelServerMay_Pack[3100004][5]["Item_1"] = 120189
tFeelServerMay_Pack[3100004][5]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--白金钻戒无洞无神佑+3
tFeelServerMay_Pack[3100004][6] = {}
tFeelServerMay_Pack[3100004][6]["Item_1"] = 150199
tFeelServerMay_Pack[3100004][6]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"



-- --30级极品无洞+3神佑1%马鞭礼包
-- tFeelServerMay_Pack[3100004][7] = {}
-- tFeelServerMay_Pack[3100004][7]["Item_1"] = 203009
-- tFeelServerMay_Pack[3100004][7]["ItemAttr"] = "0 1 3 0 0 0 0 1 0 0 3"



-- --直升120级经验球
-- tFeelServerMay_Pack[3100004][8] = {}
-- tFeelServerMay_Pack[3100004][8]["Item_1"] = 3100010
-- tFeelServerMay_Pack[3100004][8]["ItemAttr"] = "0 1 3 43200 1"


------------------------------------------------------------海盗爽服礼包------------------------------------------------
tFeelServerMay_Pack[3100005]={}
tFeelServerMay_Pack[3100005]["BagSpace"]=8
tFeelServerMay_Pack[3100005]["Name"]=tFeelServerMay_Text["Name"][3100005]
tFeelServerMay_Pack[3100005]["ProName"]=tFeelServerMay_Text["ProName"][3100005]
tFeelServerMay_Pack[3100005]["Log"]=""

--血狱之剑+3
tFeelServerMay_Pack[3100005][1] = {}
tFeelServerMay_Pack[3100005][1]["Item_1"] = 611199
tFeelServerMay_Pack[3100005][1]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--海清河晏帽+3
tFeelServerMay_Pack[3100005][2] = {}
tFeelServerMay_Pack[3100005][2]["Item_1"] = 144089
tFeelServerMay_Pack[3100005][2]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--蟠龙出渊裳+3
tFeelServerMay_Pack[3100005][3] = {}
tFeelServerMay_Pack[3100005][3]["Item_1"] = 139089
tFeelServerMay_Pack[3100005][3]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--麒麟靴无洞无神佑+3
tFeelServerMay_Pack[3100005][4] = {}
tFeelServerMay_Pack[3100005][4]["Item_1"] = 160199
tFeelServerMay_Pack[3100005][4]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--龙睛宝链无洞无神佑+3
tFeelServerMay_Pack[3100005][5] = {}
tFeelServerMay_Pack[3100005][5]["Item_1"] = 120189
tFeelServerMay_Pack[3100005][5]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--白金钻戒无洞无神佑+3
tFeelServerMay_Pack[3100005][6] = {}
tFeelServerMay_Pack[3100005][6]["Item_1"] = 150199
tFeelServerMay_Pack[3100005][6]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"



-- --30级极品无洞+3神佑1%马鞭礼包
-- tFeelServerMay_Pack[3100005][7] = {}
-- tFeelServerMay_Pack[3100005][7]["Item_1"] = 203009
-- tFeelServerMay_Pack[3100005][7]["ItemAttr"] = "0 1 3 0 0 0 0 1 0 0 3"



-- --直升120级经验球
-- tFeelServerMay_Pack[3100005][8] = {}
-- tFeelServerMay_Pack[3100005][8]["Item_1"] = 3100010
-- tFeelServerMay_Pack[3100005][8]["ItemAttr"] = "0 1 3 43200 1"

--恸哭火枪+3
tFeelServerMay_Pack[3100005][7] = {}
tFeelServerMay_Pack[3100005][7]["Item_1"] = 612199
tFeelServerMay_Pack[3100005][7]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"


------------------------------------------------------------小龙爽服礼包------------------------------------------------

tFeelServerMay_Pack[3100006]={}
tFeelServerMay_Pack[3100006]["BagSpace"]=8
tFeelServerMay_Pack[3100006]["Name"]=tFeelServerMay_Text["Name"][3100006]
tFeelServerMay_Pack[3100006]["ProName"]=tFeelServerMay_Text["ProName"][3100006]
tFeelServerMay_Pack[3100006]["Log"]=""


--聚灵双龙棍+3*2
tFeelServerMay_Pack[3100006][1] = {}
tFeelServerMay_Pack[3100006][1]["Item_1"] = 617199
tFeelServerMay_Pack[3100006][1]["ItemAttr"] = "0 2 3 0 0 0 0 0 0 0 3"

--魅影头巾+3
tFeelServerMay_Pack[3100006][2] = {}
tFeelServerMay_Pack[3100006][2]["Item_1"] = 148089
tFeelServerMay_Pack[3100006][2]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--连身战衣【100级】+3
tFeelServerMay_Pack[3100006][3] = {}
tFeelServerMay_Pack[3100006][3]["Item_1"] = 138089
tFeelServerMay_Pack[3100006][3]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--麒麟靴无洞无神佑+3
tFeelServerMay_Pack[3100006][4] = {}
tFeelServerMay_Pack[3100006][4]["Item_1"] = 160199
tFeelServerMay_Pack[3100006][4]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--龙睛宝链无洞无神佑+3
tFeelServerMay_Pack[3100006][5] = {}
tFeelServerMay_Pack[3100006][5]["Item_1"] = 120189
tFeelServerMay_Pack[3100006][5]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--白金钻戒无洞无神佑+3
tFeelServerMay_Pack[3100006][6] = {}
tFeelServerMay_Pack[3100006][6]["Item_1"] = 150199
tFeelServerMay_Pack[3100006][6]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"



-- --30级极品无洞+3神佑1%马鞭礼包
-- tFeelServerMay_Pack[3100006][7] = {}
-- tFeelServerMay_Pack[3100006][7]["Item_1"] = 203009
-- tFeelServerMay_Pack[3100006][7]["ItemAttr"] = "0 1 3 0 0 0 0 1 0 0 3"



-- --直升120级经验球
-- tFeelServerMay_Pack[3100006][8] = {}
-- tFeelServerMay_Pack[3100006][8]["Item_1"] = 3100010
-- tFeelServerMay_Pack[3100006][8]["ItemAttr"] = "0 1 3 43200 1"

------------------------------------------------------------道士爽服礼包------------------------------------------------
tFeelServerMay_Pack[3100007]={}
tFeelServerMay_Pack[3100007]["BagSpace"]=8
tFeelServerMay_Pack[3100007]["Name"]=tFeelServerMay_Text["Name"][3100007]
tFeelServerMay_Pack[3100007]["ProName"]=tFeelServerMay_Text["ProName"][3100007]
tFeelServerMay_Pack[3100007]["Log"]=""

--赤霞剑+3
tFeelServerMay_Pack[3100007][1] = {}
tFeelServerMay_Pack[3100007][1]["Item_1"] = 421199
tFeelServerMay_Pack[3100007][1]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--黄鹤冠+3
tFeelServerMay_Pack[3100007][2] = {}
tFeelServerMay_Pack[3100007][2]["Item_1"] = 114089
tFeelServerMay_Pack[3100007][2]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--太上羽衣+3
tFeelServerMay_Pack[3100007][3] = {}
tFeelServerMay_Pack[3100007][3]["Item_1"] = 134089
tFeelServerMay_Pack[3100007][3]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--麒麟靴无洞无神佑+3
tFeelServerMay_Pack[3100007][4] = {}
tFeelServerMay_Pack[3100007][4]["Item_1"] = 160199
tFeelServerMay_Pack[3100007][4]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--金丝香囊无洞无神佑+3
tFeelServerMay_Pack[3100007][5] = {}
tFeelServerMay_Pack[3100007][5]["Item_1"] = 121189
tFeelServerMay_Pack[3100007][5]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--宝蓝镯无洞无神佑+3
tFeelServerMay_Pack[3100007][6] = {}
tFeelServerMay_Pack[3100007][6]["Item_1"] = 152189
tFeelServerMay_Pack[3100007][6]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"



-- --30级极品无洞+3神佑1%马鞭礼包
-- tFeelServerMay_Pack[3100007][7] = {}
-- tFeelServerMay_Pack[3100007][7]["Item_1"] = 203009
-- tFeelServerMay_Pack[3100007][7]["ItemAttr"] = "0 1 3 0 0 0 0 1 0 0 3"



-- --直升120级经验球
-- tFeelServerMay_Pack[3100007][8] = {}
-- tFeelServerMay_Pack[3100007][8]["Item_1"] = 3100010
-- tFeelServerMay_Pack[3100007][8]["ItemAttr"] ="0 1 3 43200 1"

--无为如意拂尘+3
tFeelServerMay_Pack[3100007][7] = {}
tFeelServerMay_Pack[3100007][7]["Item_1"] = 619199
tFeelServerMay_Pack[3100007][7]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"




--铁扇门
tFeelServerMay_Pack[3301800]={}
tFeelServerMay_Pack[3301800]["BagSpace"]=8
tFeelServerMay_Pack[3301800]["Name"]=tFeelServerMay_Text["Name"][3301800]
tFeelServerMay_Pack[3301800]["ProName"]=tFeelServerMay_Text["ProName"][3301800]
tFeelServerMay_Pack[3301800]["Log"]=""


--傲雪凌霜扇
tFeelServerMay_Pack[3301800][1] = {}
tFeelServerMay_Pack[3301800][1]["Item_1"] = 626199
tFeelServerMay_Pack[3301800][1]["ItemAttr"] = "0 2 3 0 0 0 0 0 0 0 3"

--墨云冠+3
tFeelServerMay_Pack[3301800][2] = {}
tFeelServerMay_Pack[3301800][2]["Item_1"] = 170089
tFeelServerMay_Pack[3301800][2]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--玄素袍+3
tFeelServerMay_Pack[3301800][3] = {}
tFeelServerMay_Pack[3301800][3]["Item_1"] = 101089
tFeelServerMay_Pack[3301800][3]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--麒麟靴无洞无神佑+3
tFeelServerMay_Pack[3301800][4] = {}
tFeelServerMay_Pack[3301800][4]["Item_1"] = 160199
tFeelServerMay_Pack[3301800][4]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--龙睛宝链无洞无神佑+3
tFeelServerMay_Pack[3301800][5] = {}
tFeelServerMay_Pack[3301800][5]["Item_1"] = 120189
tFeelServerMay_Pack[3301800][5]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--白金钻戒无洞无神佑+3
tFeelServerMay_Pack[3301800][6] = {}
tFeelServerMay_Pack[3301800][6]["Item_1"] = 150199
tFeelServerMay_Pack[3301800][6]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"



-- --30级极品无洞+3神佑1%马鞭礼包
-- tFeelServerMay_Pack[3301800][7] = {}
-- tFeelServerMay_Pack[3301800][7]["Item_1"] = 203009
-- tFeelServerMay_Pack[3301800][7]["ItemAttr"] = "0 1 3 0 0 0 0 1 0 0 3"



-- --直升120级经验球
-- tFeelServerMay_Pack[3301800][8] = {}
-- tFeelServerMay_Pack[3301800][8]["Item_1"] = 3100010
-- tFeelServerMay_Pack[3301800][8]["ItemAttr"] = "0 1 3 43200 1"




-- 斗士
tFeelServerMay_Pack[3320532]={}
tFeelServerMay_Pack[3320532]["BagSpace"]=8
tFeelServerMay_Pack[3320532]["Name"]=tFeelServerMay_Text["Name"][3320532]
tFeelServerMay_Pack[3320532]["ProName"]=tFeelServerMay_Text["ProName"][3320532]
tFeelServerMay_Pack[3320532]["Log"]=""


--雷光战锤+3
tFeelServerMay_Pack[3320532][1] = {}
tFeelServerMay_Pack[3320532][1]["Item_1"] = 681199
tFeelServerMay_Pack[3320532][1]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--雷啸头饰+3
tFeelServerMay_Pack[3320532][2] = {}
tFeelServerMay_Pack[3320532][2]["Item_1"] = 147089
tFeelServerMay_Pack[3320532][2]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--蛮雷战甲+3
tFeelServerMay_Pack[3320532][3] = {}
tFeelServerMay_Pack[3320532][3]["Item_1"] = 102089
tFeelServerMay_Pack[3320532][3]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--麒麟靴无洞无神佑+3
tFeelServerMay_Pack[3320532][4] = {}
tFeelServerMay_Pack[3320532][4]["Item_1"] = 160199
tFeelServerMay_Pack[3320532][4]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--龙睛宝链无洞无神佑+3
tFeelServerMay_Pack[3320532][5] = {}
tFeelServerMay_Pack[3320532][5]["Item_1"] = 120189
tFeelServerMay_Pack[3320532][5]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--白金钻戒无洞无神佑+3
tFeelServerMay_Pack[3320532][6] = {}
tFeelServerMay_Pack[3320532][6]["Item_1"] = 150199
tFeelServerMay_Pack[3320532][6]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--凛风战斧+3
tFeelServerMay_Pack[3320532][7] = {}
tFeelServerMay_Pack[3320532][7]["Item_1"] = 680199
tFeelServerMay_Pack[3320532][7]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"


-- --30级极品无洞+3神佑1%马鞭礼包
-- tFeelServerMay_Pack[3320532][7] = {}
-- tFeelServerMay_Pack[3320532][7]["Item_1"] = 203009
-- tFeelServerMay_Pack[3320532][7]["ItemAttr"] = "0 1 3 0 0 0 0 1 0 0 3"



-- --直升120级经验球
-- tFeelServerMay_Pack[3320532][8] = {}
-- tFeelServerMay_Pack[3320532][8]["Item_1"] = 3100010
-- tFeelServerMay_Pack[3320532][8]["ItemAttr"] = "0 1 3 43200 1"




-----------------金币服去掉经验包
------------------------------------------------------------勇士爽服礼包------------------------------------------------
tFeelServerMay_Pack[3306602]={}
tFeelServerMay_Pack[3306602]["BagSpace"]=8
tFeelServerMay_Pack[3306602]["Name"]=tFeelServerMay_Text["Name"][3100000]
tFeelServerMay_Pack[3306602]["ProName"]=tFeelServerMay_Text["ProName"][3100000]
tFeelServerMay_Pack[3306602]["Log"]=""
--赤霄剑+3
tFeelServerMay_Pack[3306602][1] = {}
tFeelServerMay_Pack[3306602][1]["Item_1"] = 420199
tFeelServerMay_Pack[3306602][1]["ItemAttr"] = "0 2 3 0 0 0 0 0 0 0 3"

--罗汉箍+3
tFeelServerMay_Pack[3306602][2] = {}
tFeelServerMay_Pack[3306602][2]["Item_1"] = 118089
tFeelServerMay_Pack[3306602][2]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--乾坤战甲+3
tFeelServerMay_Pack[3306602][3] = {}
tFeelServerMay_Pack[3306602][3]["Item_1"] = 130089
tFeelServerMay_Pack[3306602][3]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--麒麟靴无洞无神佑+3
tFeelServerMay_Pack[3306602][4] = {}
tFeelServerMay_Pack[3306602][4]["Item_1"] = 160199
tFeelServerMay_Pack[3306602][4]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--龙睛宝链无洞无神佑+3
tFeelServerMay_Pack[3306602][5] = {}
tFeelServerMay_Pack[3306602][5]["Item_1"] = 120189
tFeelServerMay_Pack[3306602][5]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--白金钻戒无洞无神佑+3
tFeelServerMay_Pack[3306602][6] = {}
tFeelServerMay_Pack[3306602][6]["Item_1"] = 150199
tFeelServerMay_Pack[3306602][6]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"



--30级极品无洞+3神佑1%马鞭礼包
tFeelServerMay_Pack[3306602][7] = {}
tFeelServerMay_Pack[3306602][7]["Item_1"] = 203009
tFeelServerMay_Pack[3306602][7]["ItemAttr"] = "0 1 3 0 0 0 0 1 0 0 3"



--直升120级经验球
-- tFeelServerMay_Pack[3306602][8] = {}
-- tFeelServerMay_Pack[3306602][8]["Item_1"] = 3100010
-- tFeelServerMay_Pack[3306602][8]["ItemAttr"] = "0 1 3 43200 1"

--屠龙刀+3
-- tFeelServerMay_Pack[3306602][9] = {}
-- tFeelServerMay_Pack[3306602][9]["Item_1"] = 410229
-- tFeelServerMay_Pack[3306602][9]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"
------------------------------------------------------------战士爽服礼包------------------------------------------------
tFeelServerMay_Pack[3306603]={}
tFeelServerMay_Pack[3306603]["BagSpace"]=8
tFeelServerMay_Pack[3306603]["Name"]=tFeelServerMay_Text["Name"][3100001]
tFeelServerMay_Pack[3306603]["ProName"]=tFeelServerMay_Text["ProName"][3100001]
tFeelServerMay_Pack[3306603]["Log"]=""

--梅花枪+3
tFeelServerMay_Pack[3306603][1] = {}
tFeelServerMay_Pack[3306603][1]["Item_1"] = 624199
tFeelServerMay_Pack[3306603][1]["ItemAttr"] = "0 2 3 0 0 0 0 0 0 0 3"

--凝霜之带+3
tFeelServerMay_Pack[3306603][2] = {}
tFeelServerMay_Pack[3306603][2]["Item_1"] = 141089
tFeelServerMay_Pack[3306603][2]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--玄铁铠+3
tFeelServerMay_Pack[3306603][3] = {}
tFeelServerMay_Pack[3306603][3]["Item_1"] = 131089
tFeelServerMay_Pack[3306603][3]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--麒麟靴无洞无神佑+3
tFeelServerMay_Pack[3306603][4] = {}
tFeelServerMay_Pack[3306603][4]["Item_1"] = 160199
tFeelServerMay_Pack[3306603][4]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--龙睛宝链无洞无神佑+3
tFeelServerMay_Pack[3306603][5] = {}
tFeelServerMay_Pack[3306603][5]["Item_1"] = 120189
tFeelServerMay_Pack[3306603][5]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--白金钻戒无洞无神佑+3
tFeelServerMay_Pack[3306603][6] = {}
tFeelServerMay_Pack[3306603][6]["Item_1"] = 150199
tFeelServerMay_Pack[3306603][6]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"



--30级极品无洞+3神佑1%马鞭礼包
tFeelServerMay_Pack[3306603][7] = {}
tFeelServerMay_Pack[3306603][7]["Item_1"] = 203009
tFeelServerMay_Pack[3306603][7]["ItemAttr"] = "0 1 3 0 0 0 0 1 0 0 3"



--直升120级经验球
-- tFeelServerMay_Pack[3306603][8] = {}
-- tFeelServerMay_Pack[3306603][8]["Item_1"] = 3100010
-- tFeelServerMay_Pack[3306603][8]["ItemAttr"] = "0 1 3 43200 1"

--虎刺坚盾+3
-- tFeelServerMay_Pack[3306603][8] = {}
-- tFeelServerMay_Pack[3306603][8]["Item_1"] = 900089
-- tFeelServerMay_Pack[3306603][8]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

------------------------------------------------------------弓手爽服礼包------------------------------------------------

tFeelServerMay_Pack[3306604]={}
tFeelServerMay_Pack[3306604]["BagSpace"]=7
tFeelServerMay_Pack[3306604]["Name"]=tFeelServerMay_Text["Name"][3100002]
tFeelServerMay_Pack[3306604]["ProName"]=tFeelServerMay_Text["ProName"][3100002]
tFeelServerMay_Pack[3306604]["Log"]=""


--幽冥飞刀+3*2
tFeelServerMay_Pack[3306604][1] = {}
tFeelServerMay_Pack[3306604][1]["Item_1"] = 613189
tFeelServerMay_Pack[3306604][1]["ItemAttr"] = "0 2 3 0 0 0 0 0 0 0 3"

--鹿角帽+3 
tFeelServerMay_Pack[3306604][2] = {}
tFeelServerMay_Pack[3306604][2]["Item_1"] = 113069
tFeelServerMay_Pack[3306604][2]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--犀甲猎褂+3
tFeelServerMay_Pack[3306604][3] = {}
tFeelServerMay_Pack[3306604][3]["Item_1"] = 133079
tFeelServerMay_Pack[3306604][3]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--麒麟靴无洞无神佑+3
tFeelServerMay_Pack[3306604][4] = {}
tFeelServerMay_Pack[3306604][4]["Item_1"] = 160199
tFeelServerMay_Pack[3306604][4]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--龙睛宝链无洞无神佑+3
tFeelServerMay_Pack[3306604][5] = {}
tFeelServerMay_Pack[3306604][5]["Item_1"] = 120189
tFeelServerMay_Pack[3306604][5]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--白金钻戒无洞无神佑+3
tFeelServerMay_Pack[3306604][6] = {}
tFeelServerMay_Pack[3306604][6]["Item_1"] = 150199
tFeelServerMay_Pack[3306604][6]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"



--30级极品无洞+3神佑1%马鞭礼包
tFeelServerMay_Pack[3306604][7] = {}
tFeelServerMay_Pack[3306604][7]["Item_1"] = 203009
tFeelServerMay_Pack[3306604][7]["ItemAttr"] = "0 1 3 0 0 0 0 1 0 0 3"



--直升120级经验球
-- tFeelServerMay_Pack[3306604][8] = {}
-- tFeelServerMay_Pack[3306604][8]["Item_1"] = 3100010
-- tFeelServerMay_Pack[3306604][8]["ItemAttr"] ="0 1 3 43200 1"

------------------------------------------------------------忍者爽服礼包------------------------------------------------

tFeelServerMay_Pack[3306605]={}
tFeelServerMay_Pack[3306605]["BagSpace"]=7
tFeelServerMay_Pack[3306605]["Name"]=tFeelServerMay_Text["Name"][3100003]
tFeelServerMay_Pack[3306605]["ProName"]=tFeelServerMay_Text["ProName"][3100003]
tFeelServerMay_Pack[3306605]["Log"]=""


--太岁宗道+3*2
tFeelServerMay_Pack[3306605][1] = {}
tFeelServerMay_Pack[3306605][1]["Item_1"] = 601199
tFeelServerMay_Pack[3306605][1]["ItemAttr"] = "0 2 3 0 0 0 0 0 0 0 3"

--嚎枭·血刺+3
tFeelServerMay_Pack[3306605][2] = {}
tFeelServerMay_Pack[3306605][2]["Item_1"] = 112089
tFeelServerMay_Pack[3306605][2]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--赤月影+3
tFeelServerMay_Pack[3306605][3] = {}
tFeelServerMay_Pack[3306605][3]["Item_1"] = 135089
tFeelServerMay_Pack[3306605][3]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--麒麟靴无洞无神佑+3
tFeelServerMay_Pack[3306605][4] = {}
tFeelServerMay_Pack[3306605][4]["Item_1"] = 160199
tFeelServerMay_Pack[3306605][4]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--龙睛宝链无洞无神佑+3
tFeelServerMay_Pack[3306605][5] = {}
tFeelServerMay_Pack[3306605][5]["Item_1"] = 120189
tFeelServerMay_Pack[3306605][5]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--白金钻戒无洞无神佑+3
tFeelServerMay_Pack[3306605][6] = {}
tFeelServerMay_Pack[3306605][6]["Item_1"] = 150199
tFeelServerMay_Pack[3306605][6]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"



--30级极品无洞+3神佑1%马鞭礼包
tFeelServerMay_Pack[3306605][7] = {}
tFeelServerMay_Pack[3306605][7]["Item_1"] = 203009
tFeelServerMay_Pack[3306605][7]["ItemAttr"] = "0 1 3 0 0 0 0 1 0 0 3"



--直升120级经验球
-- tFeelServerMay_Pack[3306605][8] = {}
-- tFeelServerMay_Pack[3306605][8]["Item_1"] = 3100010
-- tFeelServerMay_Pack[3306605][8]["ItemAttr"] = "0 1 3 43200 1"

------------------------------------------------------------武僧爽服礼包------------------------------------------------

tFeelServerMay_Pack[3306606]={}
tFeelServerMay_Pack[3306606]["BagSpace"]=7
tFeelServerMay_Pack[3306606]["Name"]=tFeelServerMay_Text["Name"][3100004]
tFeelServerMay_Pack[3306606]["ProName"]=tFeelServerMay_Text["ProName"][3100004]
tFeelServerMay_Pack[3306606]["Log"]=""


--镇狱念珠+3*2
tFeelServerMay_Pack[3306606][1] = {}
tFeelServerMay_Pack[3306606][1]["Item_1"] = 610199
tFeelServerMay_Pack[3306606][1]["ItemAttr"] = "0 2 3 0 0 0 0 0 0 0 3"

--龙象法箍+3
tFeelServerMay_Pack[3306606][2] = {}
tFeelServerMay_Pack[3306606][2]["Item_1"] = 143089
tFeelServerMay_Pack[3306606][2]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--苦寒柔甲+3
tFeelServerMay_Pack[3306606][3] = {}
tFeelServerMay_Pack[3306606][3]["Item_1"] = 136089
tFeelServerMay_Pack[3306606][3]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--麒麟靴无洞无神佑+3
tFeelServerMay_Pack[3306606][4] = {}
tFeelServerMay_Pack[3306606][4]["Item_1"] = 160199
tFeelServerMay_Pack[3306606][4]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--龙睛宝链无洞无神佑+3
tFeelServerMay_Pack[3306606][5] = {}
tFeelServerMay_Pack[3306606][5]["Item_1"] = 120189
tFeelServerMay_Pack[3306606][5]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--白金钻戒无洞无神佑+3
tFeelServerMay_Pack[3306606][6] = {}
tFeelServerMay_Pack[3306606][6]["Item_1"] = 150199
tFeelServerMay_Pack[3306606][6]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"



--30级极品无洞+3神佑1%马鞭礼包
tFeelServerMay_Pack[3306606][7] = {}
tFeelServerMay_Pack[3306606][7]["Item_1"] = 203009
tFeelServerMay_Pack[3306606][7]["ItemAttr"] = "0 1 3 0 0 0 0 1 0 0 3"



--直升120级经验球
-- tFeelServerMay_Pack[3306606][8] = {}
-- tFeelServerMay_Pack[3306606][8]["Item_1"] = 3100010
-- tFeelServerMay_Pack[3306606][8]["ItemAttr"] = "0 1 3 43200 1"


------------------------------------------------------------海盗爽服礼包------------------------------------------------
tFeelServerMay_Pack[3306607]={}
tFeelServerMay_Pack[3306607]["BagSpace"]=7
tFeelServerMay_Pack[3306607]["Name"]=tFeelServerMay_Text["Name"][3100005]
tFeelServerMay_Pack[3306607]["ProName"]=tFeelServerMay_Text["ProName"][3100005]
tFeelServerMay_Pack[3306607]["Log"]=""

--血狱之剑+3
tFeelServerMay_Pack[3306607][1] = {}
tFeelServerMay_Pack[3306607][1]["Item_1"] = 611199
tFeelServerMay_Pack[3306607][1]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--海清河晏帽+3
tFeelServerMay_Pack[3306607][2] = {}
tFeelServerMay_Pack[3306607][2]["Item_1"] = 144089
tFeelServerMay_Pack[3306607][2]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--蟠龙出渊裳+3
tFeelServerMay_Pack[3306607][3] = {}
tFeelServerMay_Pack[3306607][3]["Item_1"] = 139089
tFeelServerMay_Pack[3306607][3]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--麒麟靴无洞无神佑+3
tFeelServerMay_Pack[3306607][4] = {}
tFeelServerMay_Pack[3306607][4]["Item_1"] = 160199
tFeelServerMay_Pack[3306607][4]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--龙睛宝链无洞无神佑+3
tFeelServerMay_Pack[3306607][5] = {}
tFeelServerMay_Pack[3306607][5]["Item_1"] = 120189
tFeelServerMay_Pack[3306607][5]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--白金钻戒无洞无神佑+3
tFeelServerMay_Pack[3306607][6] = {}
tFeelServerMay_Pack[3306607][6]["Item_1"] = 150199
tFeelServerMay_Pack[3306607][6]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"



--30级极品无洞+3神佑1%马鞭礼包
tFeelServerMay_Pack[3306607][7] = {}
tFeelServerMay_Pack[3306607][7]["Item_1"] = 203009
tFeelServerMay_Pack[3306607][7]["ItemAttr"] = "0 1 3 0 0 0 0 1 0 0 3"



--直升120级经验球
-- tFeelServerMay_Pack[3306607][8] = {}
-- tFeelServerMay_Pack[3306607][8]["Item_1"] = 3100010
-- tFeelServerMay_Pack[3306607][8]["ItemAttr"] = "0 1 3 43200 1"

--恸哭火枪+3
tFeelServerMay_Pack[3306607][8] = {}
tFeelServerMay_Pack[3306607][8]["Item_1"] = 612199
tFeelServerMay_Pack[3306607][8]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

------------------------------------------------------------小龙爽服礼包------------------------------------------------

tFeelServerMay_Pack[3306608]={}
tFeelServerMay_Pack[3306608]["BagSpace"]=7
tFeelServerMay_Pack[3306608]["Name"]=tFeelServerMay_Text["Name"][3100006]
tFeelServerMay_Pack[3306608]["ProName"]=tFeelServerMay_Text["ProName"][3100006]
tFeelServerMay_Pack[3306608]["Log"]=""


--聚灵双龙棍+3*2
tFeelServerMay_Pack[3306608][1] = {}
tFeelServerMay_Pack[3306608][1]["Item_1"] = 617199
tFeelServerMay_Pack[3306608][1]["ItemAttr"] = "0 2 3 0 0 0 0 0 0 0 3"

--魅影头巾+3
tFeelServerMay_Pack[3306608][2] = {}
tFeelServerMay_Pack[3306608][2]["Item_1"] = 148089
tFeelServerMay_Pack[3306608][2]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--连身战衣【100级】+3
tFeelServerMay_Pack[3306608][3] = {}
tFeelServerMay_Pack[3306608][3]["Item_1"] = 138089
tFeelServerMay_Pack[3306608][3]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--麒麟靴无洞无神佑+3
tFeelServerMay_Pack[3306608][4] = {}
tFeelServerMay_Pack[3306608][4]["Item_1"] = 160199
tFeelServerMay_Pack[3306608][4]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--龙睛宝链无洞无神佑+3
tFeelServerMay_Pack[3306608][5] = {}
tFeelServerMay_Pack[3306608][5]["Item_1"] = 120189
tFeelServerMay_Pack[3306608][5]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--白金钻戒无洞无神佑+3
tFeelServerMay_Pack[3306608][6] = {}
tFeelServerMay_Pack[3306608][6]["Item_1"] = 150199
tFeelServerMay_Pack[3306608][6]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"



--30级极品无洞+3神佑1%马鞭礼包
tFeelServerMay_Pack[3306608][7] = {}
tFeelServerMay_Pack[3306608][7]["Item_1"] = 203009
tFeelServerMay_Pack[3306608][7]["ItemAttr"] = "0 1 3 0 0 0 0 1 0 0 3"



--直升120级经验球
-- tFeelServerMay_Pack[3306608][8] = {}
-- tFeelServerMay_Pack[3306608][8]["Item_1"] = 3100010
-- tFeelServerMay_Pack[3306608][8]["ItemAttr"] = "0 1 3 43200 1"

------------------------------------------------------------道士爽服礼包------------------------------------------------
tFeelServerMay_Pack[3306609]={}
tFeelServerMay_Pack[3306609]["BagSpace"]=7
tFeelServerMay_Pack[3306609]["Name"]=tFeelServerMay_Text["Name"][3100007]
tFeelServerMay_Pack[3306609]["ProName"]=tFeelServerMay_Text["ProName"][3100007]
tFeelServerMay_Pack[3306609]["Log"]=""

--赤霞剑+3
tFeelServerMay_Pack[3306609][1] = {}
tFeelServerMay_Pack[3306609][1]["Item_1"] = 421199
tFeelServerMay_Pack[3306609][1]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--黄鹤冠+3
tFeelServerMay_Pack[3306609][2] = {}
tFeelServerMay_Pack[3306609][2]["Item_1"] = 114089
tFeelServerMay_Pack[3306609][2]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--太上羽衣+3
tFeelServerMay_Pack[3306609][3] = {}
tFeelServerMay_Pack[3306609][3]["Item_1"] = 134089
tFeelServerMay_Pack[3306609][3]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--麒麟靴无洞无神佑+3
tFeelServerMay_Pack[3306609][4] = {}
tFeelServerMay_Pack[3306609][4]["Item_1"] = 160199
tFeelServerMay_Pack[3306609][4]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--金丝香囊无洞无神佑+3
tFeelServerMay_Pack[3306609][5] = {}
tFeelServerMay_Pack[3306609][5]["Item_1"] = 121189
tFeelServerMay_Pack[3306609][5]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--宝蓝镯无洞无神佑+3
tFeelServerMay_Pack[3306609][6] = {}
tFeelServerMay_Pack[3306609][6]["Item_1"] = 152189
tFeelServerMay_Pack[3306609][6]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"



--30级极品无洞+3神佑1%马鞭礼包
tFeelServerMay_Pack[3306609][7] = {}
tFeelServerMay_Pack[3306609][7]["Item_1"] = 203009
tFeelServerMay_Pack[3306609][7]["ItemAttr"] = "0 1 3 0 0 0 0 1 0 0 3"



--直升120级经验球
-- tFeelServerMay_Pack[3306609][8] = {}
-- tFeelServerMay_Pack[3306609][8]["Item_1"] = 3100010
-- tFeelServerMay_Pack[3306609][8]["ItemAttr"] ="0 1 3 43200 1"

--无为如意拂尘+3
tFeelServerMay_Pack[3306609][8] = {}
tFeelServerMay_Pack[3306609][8]["Item_1"] = 619199
tFeelServerMay_Pack[3306609][8]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"




--铁扇门
tFeelServerMay_Pack[3306610]={}
tFeelServerMay_Pack[3306610]["BagSpace"]=8
tFeelServerMay_Pack[3306610]["Name"]=tFeelServerMay_Text["Name"][3301800]
tFeelServerMay_Pack[3306610]["ProName"]=tFeelServerMay_Text["ProName"][3301800]
tFeelServerMay_Pack[3306610]["Log"]=""


--傲雪凌霜扇
tFeelServerMay_Pack[3306610][1] = {}
tFeelServerMay_Pack[3306610][1]["Item_1"] = 626199
tFeelServerMay_Pack[3306610][1]["ItemAttr"] = "0 2 3 0 0 0 0 0 0 0 3"

--墨云冠+3
tFeelServerMay_Pack[3306610][2] = {}
tFeelServerMay_Pack[3306610][2]["Item_1"] = 170089
tFeelServerMay_Pack[3306610][2]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--玄素袍+3
tFeelServerMay_Pack[3306610][3] = {}
tFeelServerMay_Pack[3306610][3]["Item_1"] = 101089
tFeelServerMay_Pack[3306610][3]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--麒麟靴无洞无神佑+3
tFeelServerMay_Pack[3306610][4] = {}
tFeelServerMay_Pack[3306610][4]["Item_1"] = 160199
tFeelServerMay_Pack[3306610][4]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--龙睛宝链无洞无神佑+3
tFeelServerMay_Pack[3306610][5] = {}
tFeelServerMay_Pack[3306610][5]["Item_1"] = 120189
tFeelServerMay_Pack[3306610][5]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--白金钻戒无洞无神佑+3
tFeelServerMay_Pack[3306610][6] = {}
tFeelServerMay_Pack[3306610][6]["Item_1"] = 150199
tFeelServerMay_Pack[3306610][6]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"



--30级极品无洞+3神佑1%马鞭礼包
tFeelServerMay_Pack[3306610][7] = {}
tFeelServerMay_Pack[3306610][7]["Item_1"] = 203009
tFeelServerMay_Pack[3306610][7]["ItemAttr"] = "0 1 3 0 0 0 0 1 0 0 3"



--直升120级经验球
-- tFeelServerMay_Pack[3306610][8] = {}
-- tFeelServerMay_Pack[3306610][8]["Item_1"] = 3100010
-- tFeelServerMay_Pack[3306610][8]["ItemAttr"] = "0 1 3 43200 1"



-- 斗士
tFeelServerMay_Pack[3320533]={}
tFeelServerMay_Pack[3320533]["BagSpace"]=8
tFeelServerMay_Pack[3320533]["Name"]=tFeelServerMay_Text["Name"][3320532]
tFeelServerMay_Pack[3320533]["ProName"]=tFeelServerMay_Text["ProName"][3320532]
tFeelServerMay_Pack[3320533]["Log"]=""


--雷光战锤+3
tFeelServerMay_Pack[3320533][1] = {}
tFeelServerMay_Pack[3320533][1]["Item_1"] = 681199
tFeelServerMay_Pack[3320533][1]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--雷啸头饰+3
tFeelServerMay_Pack[3320533][2] = {}
tFeelServerMay_Pack[3320533][2]["Item_1"] = 147089
tFeelServerMay_Pack[3320533][2]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--蛮雷战甲+3
tFeelServerMay_Pack[3320533][3] = {}
tFeelServerMay_Pack[3320533][3]["Item_1"] = 102089
tFeelServerMay_Pack[3320533][3]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--麒麟靴无洞无神佑+3
tFeelServerMay_Pack[3320533][4] = {}
tFeelServerMay_Pack[3320533][4]["Item_1"] = 160199
tFeelServerMay_Pack[3320533][4]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--龙睛宝链无洞无神佑+3
tFeelServerMay_Pack[3320533][5] = {}
tFeelServerMay_Pack[3320533][5]["Item_1"] = 120189
tFeelServerMay_Pack[3320533][5]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"

--白金钻戒无洞无神佑+3
tFeelServerMay_Pack[3320533][6] = {}
tFeelServerMay_Pack[3320533][6]["Item_1"] = 150199
tFeelServerMay_Pack[3320533][6]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"



--30级极品无洞+3神佑1%马鞭礼包
tFeelServerMay_Pack[3320533][7] = {}
tFeelServerMay_Pack[3320533][7]["Item_1"] = 203009
tFeelServerMay_Pack[3320533][7]["ItemAttr"] = "0 1 3 0 0 0 0 1 0 0 3"

--凛风战斧+3
tFeelServerMay_Pack[3320533][8] = {}
tFeelServerMay_Pack[3320533][8]["Item_1"] = 680199
tFeelServerMay_Pack[3320533][8]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 3"


--直升120级经验球
-- tFeelServerMay_Pack[3320533][8] = {}
-- tFeelServerMay_Pack[3320533][8]["Item_1"] = 3100010
-- tFeelServerMay_Pack[3320533][8]["ItemAttr"] = "0 1 3 43200 1"



---------------------------------------------------------逻辑部分--------------------------------------------------------------------
function FeelServerMay_Login()

	-- local sActivityTime = Get_SysDynaGlobalDataStr0(nGlobalId)
    -- --判断时间
    -- if not Sys_ChkFullTime(sActivityTime) then
       -- return 
    -- end 
    
	local nData = Get_SysDynaGlobalData0(nGlobalId)
	local nNewData = Get_SysDynaGlobalData0(nNewGlobalId)
	
	-- if nData == 0 then
		-- return
	-- end
	
	-- 非后续新开的新服就不发放
	if nNewData == 0 then
		return
	end
	
    --掩码判断
    local nEvent=tFeelServerMay_Stc["EventType"]
    local nType=tFeelServerMay_Stc["DateType"]
    if Task_ChkStcValue(nEvent,nType,">=",tFeelServerMay_Stc["Have"]) then
        return
    end
    --区分金币服
	local nFlag = 1
	if nData == 2 then
		nFlag = 2
	end
    --判断职业，获得对应的物品ID  
    local nPro=Get_UserProfession()
    if nPro>=100 and nPro <= 145  then
        nPro=100
 	elseif nPro >= 160 and nPro <= 165 then
		nPro = 160
	else
        nPro=nPro-nPro%10
    end
    local nItemID=tFeelServerMay_Pro[nFlag][nPro]

    --检查空间
    if not User_CheckLeftSpace(1) then
       Sys_MsgBox(string.format(tFeelServerMay_Pack["OnLineBagSpace"],tFeelServerMay_Pack[nItemID]["Name"]))
       return 
    end
     
    --以防万一，多加一层检测
    if Item_ChkAccItem(nItemID,1) then
        return
    end

    --获得物品
    Task_SetStatistic(nEvent,nType,tFeelServerMay_Stc["Have"],1)
     
    Item_AddNewItem(nItemID,tFeelServerMay_Pack["ItemArr"])
    
    Sys_SaveActionFestivalLog(string.format("0,0,0,0,%d,2,%d,1",tFeelServerMay_Activity["Log"],nItemID))
    
    Sys_MsgBox(string.format(tFeelServerMay_Pack["OnLineGet"],tFeelServerMay_Pack[nItemID]["Name"]))
     

end

--打开礼包
function FeelServerMay_UseItem(nItem)
   
    --背包判断
    if not User_CheckLeftSpace(tFeelServerMay_Pack[nItem]["BagSpace"]) then
       Sys_MsgBox(string.format(tFeelServerMay_Pack["OpenBagSpace"],tFeelServerMay_Pack[nItem]["BagSpace"]))
       return 
    end
	--新增100级才能打开
	if not User_JudgeLevelAndMetempsychosis(tFeelServerMay_Activity["Level"],tFeelServerMay_Activity["Metempsychosis"]) then 
		Sys_MsgBox(tFeelServerMay_Text["OpenLevel"])
		return
	end
    if not Item_ChkAccItem(nItem,1) then
       return
    end

    if not Item_DelItem(nItem) then
       return
    end
    local sLogItem=""
    local sLogCount=""
    local bIsInit=true
    -- 必得的
    for key,value in ipairs(tFeelServerMay_Pack[nItem]) do
	    local nItem = value["Item_1"]
	    local sAttr = value["ItemAttr"]
		Item_AddNewItem(nItem,sAttr)
		if bIsInit then
			sLogItem=sLogItem..nItem
			sLogCount=sLogCount..FeelServerMay_GetCount(sAttr)
			bIsInit=false
		else
			sLogItem=sLogItem..string.format("[%d]",nItem)
			sLogCount=sLogCount..string.format("[%d]",FeelServerMay_GetCount(sAttr))            
		end     
    end 

    Sys_SaveActionFestivalLog(string.format("0,0,%d,1,%d,2,%s,%s",nItem,tFeelServerMay_Activity["Log"],sLogItem,sLogCount))
    
    User_EffectAdd("self",tFeelServerMay_Pack["Effect"]) 
	--=1新服
	if nItem >= 3306602 and nItem <= 3306610 or nItem == 3320533 then
		User_TalkChannel2005(string.format(tFeelServerMay_Text["OpenSucessNew"],tFeelServerMay_Pack[nItem]["ProName"]))
	else
		User_TalkChannel2005(string.format(tFeelServerMay_Pack["OpenSucess"],tFeelServerMay_Pack[nItem]["ProName"]))
	end
end 


--使用飞升丹
function FeelServerMay_DivineEXPBall(nItem)
    
	
	local nEvent=tFeelServerMay_Stc["ExpEventType"]
    local nType=tFeelServerMay_Stc["ExpDateType"]
	
    if Task_ChkStcValue(nEvent,nType,">=",1) then
		if not Task_StcInterval(nEvent,nType,1,4) then
			Sys_MsgBox(tFeelServerMay_Text["OpenDaned"])
			return
		end
    end
	
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	User_AddExpTime(tFeelServerMay_Stc["AddExpTime"])
	Sys_SaveActionFestivalLog("0,0,0,0,0,2,4,300")


    User_EffectAdd(tFeelServerMay_DivineEXPBall["Effect"])
	Sys_MsgBox(tFeelServerMay_Text["UseDan"])

end 




--获得数量
function FeelServerMay_GetCount(sItemAttr)
    if sItemAttr ==nil then
        return 1
    end
    local tItemAttr = Sys_Split(sItemAttr," ")
	local count  = tonumber(tItemAttr[2]) or 1
    return count
end

--凌晨自检
function FeelServerMay_GlobalDataSet()

	local nData = Get_SysDynaGlobalData0(nGlobalId)
	if nData == 0 then
		return
	end

	if Sys_ChkFullTime(Get_SysDynaGlobalDataStr1(nGlobalId)) then
		Sys_SetSynaGlobalData0(nGlobalId,0)
	end
end


---------------------------------------物品模板-----------------------------------------------------------
tItem[3100000] = tItem[3100000] or {}
tItem[3100000]["Function"] = function(nItemId,sItemName)
	FeelServerMay_UseItem(nItemId)
end

tItem[3100001] =tItem[3100000]
tItem[3100002] =tItem[3100000] 
tItem[3100003] =tItem[3100000] 
tItem[3100004] =tItem[3100000] 
tItem[3100005] =tItem[3100000] 
tItem[3100006] =tItem[3100000] 
tItem[3100007] =tItem[3100000]  
tItem[3301800] =tItem[3100000]
-- 斗士
tItem[3320532] =tItem[3100000]
tItem[3320533] =tItem[3100000]

---金币服物品
for i = 3306602,3306610 do
	tItem[i] =tItem[3100000] 
end

tItem[3100010] = tItem[3100010] or {}
tItem[3100010]["Function"] = function(nItemId,sItemName)
	FeelServerMay_DivineEXPBall(nItemId)
end
---------------------------------------上线触发-----------------------------------------------------------
table.insert(tSystem_PlayLogin_Func,FeelServerMay_Login)



-------------------------------------203W触发-- -------------------------------------
tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
table.insert(tOntimerMin_HM[0000],FeelServerMay_GlobalDataSet)

tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
table.insert(tOntimerMin_HM[0001],FeelServerMay_GlobalDataSet)

tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
table.insert(tOntimerMin_HM[0002],FeelServerMay_GlobalDataSet)

tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
table.insert(tOntimerMin_HM[0003],FeelServerMay_GlobalDataSet)

tOntimerMin_HM[0004] = tOntimerMin_HM[0004] or {}
table.insert(tOntimerMin_HM[0004],FeelServerMay_GlobalDataSet)