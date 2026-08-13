------------------------------------------------------------------------------------
--Name：            190624[英文征服][活动脚本]出售账号及角色创建
--Creator:      蔡颖静
--Created:     2019/06/24
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--前缀：tAccountForSale_
--lua.ini:41360
----------------------------------表配置部分--------------------------------------------
local tAccountForSale_Data={}

--勇士+12
tAccountForSale_Data[3322163]={}
tAccountForSale_Data[3322163]["LogId"] = 12001476
tAccountForSale_Data[3322163]["DeleteItem"] = {}
tAccountForSale_Data[3322163]["DeleteItem"][1] = {}
tAccountForSale_Data[3322163]["DeleteItem"][1]["Id"] = 3322163
--装备
tAccountForSale_Data[3322163]["RewardItem"] = {}
tAccountForSale_Data[3322163]["RewardItem"][1] = {}
tAccountForSale_Data[3322163]["RewardItem"][1]["Id"] = 420439
tAccountForSale_Data[3322163]["RewardItem"][1]["Attr"] = "0 2 3 0 0 0 0 7 255 0 12 13 13"
tAccountForSale_Data[3322163]["RewardItem"][2] = {}
tAccountForSale_Data[3322163]["RewardItem"][2]["Id"] = 130309
tAccountForSale_Data[3322163]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"
tAccountForSale_Data[3322163]["RewardItem"][3] = {}
tAccountForSale_Data[3322163]["RewardItem"][3]["Id"] = 118309
tAccountForSale_Data[3322163]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"
tAccountForSale_Data[3322163]["RewardItem"][4] = {}
tAccountForSale_Data[3322163]["RewardItem"][4]["Id"] = 150269
tAccountForSale_Data[3322163]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"
tAccountForSale_Data[3322163]["RewardItem"][5] = {}
tAccountForSale_Data[3322163]["RewardItem"][5]["Id"] = 120269
tAccountForSale_Data[3322163]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"
tAccountForSale_Data[3322163]["RewardItem"][6] = {}
tAccountForSale_Data[3322163]["RewardItem"][6]["Id"] = 160249
tAccountForSale_Data[3322163]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"
tAccountForSale_Data[3322163]["RewardItem"][7] = {}
tAccountForSale_Data[3322163]["RewardItem"][7]["Id"] = 300000
tAccountForSale_Data[3322163]["RewardItem"][7]["Attr"] = "0 0 3 0 0 0 9830655 150 0 0 12 0 0 0 0 0 0 255"
tAccountForSale_Data[3322163]["RewardItem"][8] = {}
tAccountForSale_Data[3322163]["RewardItem"][8]["Id"] = 201009
tAccountForSale_Data[3322163]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 1 0 0 12 103 103"
tAccountForSale_Data[3322163]["RewardItem"][9] = {}
tAccountForSale_Data[3322163]["RewardItem"][9]["Id"] = 203009
tAccountForSale_Data[3322163]["RewardItem"][9]["Attr"] = "0 1 3 0 0 0 0 1 0 0 12"
tAccountForSale_Data[3322163]["RewardItem"][10] = {}
tAccountForSale_Data[3322163]["RewardItem"][10]["Id"] = 202009
tAccountForSale_Data[3322163]["RewardItem"][10]["Attr"] = "0 1 3 0 0 0 0 1 0 0 12 123 123"
tAccountForSale_Data[3322163]["RewardItem"][11] = {}
tAccountForSale_Data[3322163]["RewardItem"][11]["Id"] = 204009
tAccountForSale_Data[3322163]["RewardItem"][11]["Attr"] = "0 1 3 0 0 0 0 0 0 0 12 103 123"

--神纹 红色 4010001 蓝色 4020103 黄色 4030203 4030403 4030503 4031003 4031303
tAccountForSale_Data[3322163]["RewardItem"][12] = {}
tAccountForSale_Data[3322163]["RewardItem"][12]["Id"] = 4010001
tAccountForSale_Data[3322163]["RewardItem"][12]["Attr"] = "0 1 3"
tAccountForSale_Data[3322163]["RewardItem"][13] = {}
tAccountForSale_Data[3322163]["RewardItem"][13]["Id"] = 4020103
tAccountForSale_Data[3322163]["RewardItem"][13]["Attr"] = "0 1 3"
tAccountForSale_Data[3322163]["RewardItem"][14] = {}
tAccountForSale_Data[3322163]["RewardItem"][14]["Id"] = 4030203
tAccountForSale_Data[3322163]["RewardItem"][14]["Attr"] = "0 1 3"
tAccountForSale_Data[3322163]["RewardItem"][15] = {}
tAccountForSale_Data[3322163]["RewardItem"][15]["Id"] = 4030403
tAccountForSale_Data[3322163]["RewardItem"][15]["Attr"] = "0 1 3"
tAccountForSale_Data[3322163]["RewardItem"][16] = {}
tAccountForSale_Data[3322163]["RewardItem"][16]["Id"] = 4030503
tAccountForSale_Data[3322163]["RewardItem"][16]["Attr"] = "0 1 3"
tAccountForSale_Data[3322163]["RewardItem"][17] = {}
tAccountForSale_Data[3322163]["RewardItem"][17]["Id"] = 4031003
tAccountForSale_Data[3322163]["RewardItem"][17]["Attr"] = "0 1 3"
tAccountForSale_Data[3322163]["RewardItem"][18] = {}
tAccountForSale_Data[3322163]["RewardItem"][18]["Id"] = 4031303
tAccountForSale_Data[3322163]["RewardItem"][18]["Attr"] = "0 1 3"

--灵宝葫芦
tAccountForSale_Data[3322163]["RewardItem"][19] = {}
tAccountForSale_Data[3322163]["RewardItem"][19]["Id"] = 2100025
tAccountForSale_Data[3322163]["RewardItem"][19]["Attr"] = "0 1 3"

--精炼 54级 517640=51*10000+7*1000+6*100+4*10 
--51个璀璨星陨石极运包 3322189
--7个1颗晶莹星陨石极运包 3322190
--6个1颗明亮星陨石极运包 3322191
--4个1颗微光星陨石极运包 3322192

--12件装备 所需个数*12
tAccountForSale_Data[3322163]["RewardItem"][20] = {}
tAccountForSale_Data[3322163]["RewardItem"][20]["Id"] = 3322189
tAccountForSale_Data[3322163]["RewardItem"][20]["Attr"] = "0 612"
tAccountForSale_Data[3322163]["RewardItem"][21] = {}
tAccountForSale_Data[3322163]["RewardItem"][21]["Id"] = 3322190
tAccountForSale_Data[3322163]["RewardItem"][21]["Attr"] = "0 84"
tAccountForSale_Data[3322163]["RewardItem"][22] = {}
tAccountForSale_Data[3322163]["RewardItem"][22]["Id"] = 3322191
tAccountForSale_Data[3322163]["RewardItem"][22]["Attr"] = "0 72"
tAccountForSale_Data[3322163]["RewardItem"][23] = {}
tAccountForSale_Data[3322163]["RewardItem"][23]["Id"] = 3322192
tAccountForSale_Data[3322163]["RewardItem"][23]["Attr"] = "0 48"

--百兵谱9把武器都是满级9级，每把武器的四门属性分数都是90分
--每把满级经验 107100 所需神兵灵魄10710*9个
tAccountForSale_Data[3322163]["RewardItem"][24] = {}
tAccountForSale_Data[3322163]["RewardItem"][24]["Id"] = 3322170
tAccountForSale_Data[3322163]["RewardItem"][24]["Attr"] = "0 9"

--驯兽师 40个偷走的马鞍
tAccountForSale_Data[3322163]["RewardItem"][25] = {}
tAccountForSale_Data[3322163]["RewardItem"][25]["Id"] = 723903
tAccountForSale_Data[3322163]["RewardItem"][25]["Attr"] = "0 40"

-- tAccountForSale_Data[3322163]["RewardEMoney"] = {}
-- tAccountForSale_Data[3322163]["RewardEMoney"]["Value"] = 4000
-- tAccountForSale_Data[3322163]["EmoneyLog"] = "10000	0537	-4000	-4000	0	"

tAccountForSale_Data[3322163]["RewardCultivation"] = {}
tAccountForSale_Data[3322163]["RewardCultivation"]["Value"] = 40000

tAccountForSale_Data[3322163]["RewardEffect"] = {}
tAccountForSale_Data[3322163]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAccountForSale_Data[3322163]["RewardEffect"]["Effect"] = "angelwing"


--神兵灵魄礼包
tAccountForSale_Data[3322170]={}
tAccountForSale_Data[3322170]["LogId"] = 12001476
tAccountForSale_Data[3322170]["DeleteItem"] = {}
tAccountForSale_Data[3322170]["DeleteItem"][1] = {}
tAccountForSale_Data[3322170]["DeleteItem"][1]["Id"] = 3322170
tAccountForSale_Data[3322170]["RewardItem"] = {}
tAccountForSale_Data[3322170]["RewardItem"][1] = {}
tAccountForSale_Data[3322170]["RewardItem"][1]["Id"] = 3321098
tAccountForSale_Data[3322170]["RewardItem"][1]["Attr"] = "0 10710"
tAccountForSale_Data[3322170]["RewardEffect"] = {}
tAccountForSale_Data[3322170]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAccountForSale_Data[3322170]["RewardEffect"]["Effect"] = "angelwing"

--SplendidStarPack
tAccountForSale_Data[3322189]={}
tAccountForSale_Data[3322189]["LogId"] = 12001476
tAccountForSale_Data[3322189]["DeleteItem"] = {}
tAccountForSale_Data[3322189]["DeleteItem"][1] = {}
tAccountForSale_Data[3322189]["DeleteItem"][1]["Id"] = 3322189
tAccountForSale_Data[3322189]["RewardItem"] = {}
tAccountForSale_Data[3322189]["RewardItem"][1] = {}
tAccountForSale_Data[3322189]["RewardItem"][1]["Id"] = 3009003
tAccountForSale_Data[3322189]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tAccountForSale_Data[3322189]["RewardEffect"] = {}
tAccountForSale_Data[3322189]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAccountForSale_Data[3322189]["RewardEffect"]["Effect"] = "angelwing"

--RadiantStarPack
tAccountForSale_Data[3322190]={}
tAccountForSale_Data[3322190]["LogId"] = 12001476
tAccountForSale_Data[3322190]["DeleteItem"] = {}
tAccountForSale_Data[3322190]["DeleteItem"][1] = {}
tAccountForSale_Data[3322190]["DeleteItem"][1]["Id"] = 3322190
tAccountForSale_Data[3322190]["RewardItem"] = {}
tAccountForSale_Data[3322190]["RewardItem"][1] = {}
tAccountForSale_Data[3322190]["RewardItem"][1]["Id"] = 3009002
tAccountForSale_Data[3322190]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tAccountForSale_Data[3322190]["RewardEffect"] = {}
tAccountForSale_Data[3322190]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAccountForSale_Data[3322190]["RewardEffect"]["Effect"] = "angelwing"

--BrightStarPack
tAccountForSale_Data[3322191]={}
tAccountForSale_Data[3322191]["LogId"] = 12001476
tAccountForSale_Data[3322191]["DeleteItem"] = {}
tAccountForSale_Data[3322191]["DeleteItem"][1] = {}
tAccountForSale_Data[3322191]["DeleteItem"][1]["Id"] = 3322191
tAccountForSale_Data[3322191]["RewardItem"] = {}
tAccountForSale_Data[3322191]["RewardItem"][1] = {}
tAccountForSale_Data[3322191]["RewardItem"][1]["Id"] = 3009001
tAccountForSale_Data[3322191]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tAccountForSale_Data[3322191]["RewardEffect"] = {}
tAccountForSale_Data[3322191]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAccountForSale_Data[3322191]["RewardEffect"]["Effect"] = "angelwing"

--TwilightStarPack
tAccountForSale_Data[3322192]={}
tAccountForSale_Data[3322192]["LogId"] = 12001476
tAccountForSale_Data[3322192]["DeleteItem"] = {}
tAccountForSale_Data[3322192]["DeleteItem"][1] = {}
tAccountForSale_Data[3322192]["DeleteItem"][1]["Id"] = 3322192
tAccountForSale_Data[3322192]["RewardItem"] = {}
tAccountForSale_Data[3322192]["RewardItem"][1] = {}
tAccountForSale_Data[3322192]["RewardItem"][1]["Id"] = 3009000
tAccountForSale_Data[3322192]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tAccountForSale_Data[3322192]["RewardEffect"] = {}
tAccountForSale_Data[3322192]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAccountForSale_Data[3322192]["RewardEffect"]["Effect"] = "angelwing"


tAccountForSale_Data["Stc"]={}
tAccountForSale_Data["Stc"][1] = {}
tAccountForSale_Data["Stc"][1]["EventType"] = 199
tAccountForSale_Data["Stc"][1]["DataType"] = 1

-----------新增
tAccountForSale_Data["Stc"][2] = {}
tAccountForSale_Data["Stc"][2]["EventType"] = 199
tAccountForSale_Data["Stc"][2]["DataType"] =83

tAccountForSale_Data["Stc"][410] = {}
tAccountForSale_Data["Stc"][410]["EventType"] = 193
tAccountForSale_Data["Stc"][410]["DataType"] = 84

tAccountForSale_Data["Stc"][420] = {}
tAccountForSale_Data["Stc"][420]["EventType"] = 196
tAccountForSale_Data["Stc"][420]["DataType"] = 05

tAccountForSale_Data["Stc"][430] = {}
tAccountForSale_Data["Stc"][430]["EventType"] = 193
tAccountForSale_Data["Stc"][430]["DataType"] = 57

tAccountForSale_Data["Stc"][440] = {}
tAccountForSale_Data["Stc"][440]["EventType"] = 194
tAccountForSale_Data["Stc"][440]["DataType"] = 06

tAccountForSale_Data["Stc"][450] = {}
tAccountForSale_Data["Stc"][450]["EventType"] = 193
tAccountForSale_Data["Stc"][450]["DataType"] = 93

tAccountForSale_Data["Stc"][460] = {}
tAccountForSale_Data["Stc"][460]["EventType"] = 197
tAccountForSale_Data["Stc"][460]["DataType"] = 40

tAccountForSale_Data["Stc"][481] = {}
tAccountForSale_Data["Stc"][481]["EventType"] = 197
tAccountForSale_Data["Stc"][481]["DataType"] = 41

tAccountForSale_Data["Stc"][480] = {}
tAccountForSale_Data["Stc"][480]["EventType"] = 193
tAccountForSale_Data["Stc"][480]["DataType"] = 73

tAccountForSale_Data["Stc"][490] = {}
tAccountForSale_Data["Stc"][490]["EventType"] = 197
tAccountForSale_Data["Stc"][490]["DataType"] = 42


tAccountForSale_Data["UserId"] = 1448504
tAccountForSale_Data["UserId1"] = 4212528

tAccountForSale_Data["WeaponId"] = {410,420,430,440,450,460,481,480,490}
tAccountForSale_Data["Pro"] = {}
tAccountForSale_Data["Pro"][1] = {1000,1099}
tAccountForSale_Data["TaskId"] = 4177


--斗神、铁扇门、狂战士、水道士、火道士、弓手、忍者、武僧、海盗、小龙、勇士小号都各有12件装备，下列表格属性，一套非稀有神纹（1红1蓝3黄【追命、夺魂、血回元】）
--斗神
tAccountForSale_Data[3322226]={}
tAccountForSale_Data[3322226]["LogId"] = 12001476
tAccountForSale_Data[3322226]["DeleteItem"] = {}
tAccountForSale_Data[3322226]["DeleteItem"][1] = {}
tAccountForSale_Data[3322226]["DeleteItem"][1]["Id"] = 3322226

--装备
tAccountForSale_Data[3322226]["RewardItem"] = {}
--武器
tAccountForSale_Data[3322226]["RewardItem"][1] = {}
tAccountForSale_Data[3322226]["RewardItem"][1]["Id"] = 681199
tAccountForSale_Data[3322226]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"

tAccountForSale_Data[3322226]["RewardItem"][2] = {}
tAccountForSale_Data[3322226]["RewardItem"][2]["Id"] = 680199
tAccountForSale_Data[3322226]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"

--甲
tAccountForSale_Data[3322226]["RewardItem"][3] = {}
tAccountForSale_Data[3322226]["RewardItem"][3]["Id"] = 102089
tAccountForSale_Data[3322226]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
--头
tAccountForSale_Data[3322226]["RewardItem"][4] = {}
tAccountForSale_Data[3322226]["RewardItem"][4]["Id"] = 146089
tAccountForSale_Data[3322226]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"

--戒指
tAccountForSale_Data[3322226]["RewardItem"][5] = {}
tAccountForSale_Data[3322226]["RewardItem"][5]["Id"] = 150199
tAccountForSale_Data[3322226]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
--项链
tAccountForSale_Data[3322226]["RewardItem"][6] = {}
tAccountForSale_Data[3322226]["RewardItem"][6]["Id"] = 120189
tAccountForSale_Data[3322226]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
--鞋子
tAccountForSale_Data[3322226]["RewardItem"][7] = {}
tAccountForSale_Data[3322226]["RewardItem"][7]["Id"] = 160199
tAccountForSale_Data[3322226]["RewardItem"][7]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"

tAccountForSale_Data[3322226]["RewardItem"][8] = {}
tAccountForSale_Data[3322226]["RewardItem"][8]["Id"] = 300000
tAccountForSale_Data[3322226]["RewardItem"][8]["Attr"] = "0 0 3 0 0 0 9830655 150 0 0 7 0 0 0 0 0 0 255"
tAccountForSale_Data[3322226]["RewardItem"][9] = {}
tAccountForSale_Data[3322226]["RewardItem"][9]["Id"] = 201009
tAccountForSale_Data[3322226]["RewardItem"][9]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7 103"
tAccountForSale_Data[3322226]["RewardItem"][10] = {}
tAccountForSale_Data[3322226]["RewardItem"][10]["Id"] = 203009
tAccountForSale_Data[3322226]["RewardItem"][10]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7"
tAccountForSale_Data[3322226]["RewardItem"][11] = {}
tAccountForSale_Data[3322226]["RewardItem"][11]["Id"] = 202009
tAccountForSale_Data[3322226]["RewardItem"][11]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7 123"
tAccountForSale_Data[3322226]["RewardItem"][12] = {}
tAccountForSale_Data[3322226]["RewardItem"][12]["Id"] = 204009
tAccountForSale_Data[3322226]["RewardItem"][12]["Attr"] = "0 1 3 0 0 0 0 0 0 0 7 103"

--神纹

--红色
tAccountForSale_Data[3322226]["RewardItem"][13] = {}
tAccountForSale_Data[3322226]["RewardItem"][13]["Id"] = 4011501
tAccountForSale_Data[3322226]["RewardItem"][13]["Attr"] = "0 1 3"

--蓝色
-- tAccountForSale_Data[1]["RewardItem"][13] = {}
-- tAccountForSale_Data[1]["RewardItem"][13]["Id"] = 4020103
-- tAccountForSale_Data[1]["RewardItem"][13]["Attr"] = "0 1 3"

--黄色
tAccountForSale_Data[3322226]["RewardItem"][14] = {}
tAccountForSale_Data[3322226]["RewardItem"][14]["Id"] = 4030301
tAccountForSale_Data[3322226]["RewardItem"][14]["Attr"] = "0 1 3"
tAccountForSale_Data[3322226]["RewardItem"][15] = {}
tAccountForSale_Data[3322226]["RewardItem"][15]["Id"] = 4031001
tAccountForSale_Data[3322226]["RewardItem"][15]["Attr"] = "0 1 3"
tAccountForSale_Data[3322226]["RewardItem"][16] = {}
tAccountForSale_Data[3322226]["RewardItem"][16]["Id"] = 4031301
tAccountForSale_Data[3322226]["RewardItem"][16]["Attr"] = "0 1 3"

--灵宝葫芦
tAccountForSale_Data[3322226]["RewardItem"][17] = {}
tAccountForSale_Data[3322226]["RewardItem"][17]["Id"] = 2100025
tAccountForSale_Data[3322226]["RewardItem"][17]["Attr"] = "0 1 3"

--精炼 18级 85640=8*10000+5*1000+6*100+4*10 
--8个璀璨星陨石极运包 3322189
--5个1颗晶莹星陨石极运包 3322190
--6个1颗明亮星陨石极运包 3322191
--4个1颗微光星陨石极运包 3322192

--12件装备 所需个数*12
tAccountForSale_Data[3322226]["RewardItem"][18] = {}
tAccountForSale_Data[3322226]["RewardItem"][18]["Id"] = 3322189
tAccountForSale_Data[3322226]["RewardItem"][18]["Attr"] = "0 96"
tAccountForSale_Data[3322226]["RewardItem"][19] = {}
tAccountForSale_Data[3322226]["RewardItem"][19]["Id"] = 3322190
tAccountForSale_Data[3322226]["RewardItem"][19]["Attr"] = "0 60"
tAccountForSale_Data[3322226]["RewardItem"][20] = {}
tAccountForSale_Data[3322226]["RewardItem"][20]["Id"] = 3322191
tAccountForSale_Data[3322226]["RewardItem"][20]["Attr"] = "0 72"
tAccountForSale_Data[3322226]["RewardItem"][21] = {}
tAccountForSale_Data[3322226]["RewardItem"][21]["Id"] = 3322192
tAccountForSale_Data[3322226]["RewardItem"][21]["Attr"] = "0 48"

--驯兽师 40个偷走的马鞍
tAccountForSale_Data[3322226]["RewardItem"][22] = {}
tAccountForSale_Data[3322226]["RewardItem"][22]["Id"] = 723903
tAccountForSale_Data[3322226]["RewardItem"][22]["Attr"] = "0 40"

tAccountForSale_Data[3322226]["RewardEMoney"] = {}
tAccountForSale_Data[3322226]["RewardEMoney"]["Value"] = 4000
tAccountForSale_Data[3322226]["EmoneyLog"] = "10000	0537	-4000	-4000	0	"

tAccountForSale_Data[3322226]["RewardCultivation"] = {}
tAccountForSale_Data[3322226]["RewardCultivation"]["Value"] = 7600

tAccountForSale_Data[3322226]["RewardEffect"] = {}
tAccountForSale_Data[3322226]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAccountForSale_Data[3322226]["RewardEffect"]["Effect"] = "angelwing"

--铁扇门
tAccountForSale_Data[3322227]={}
tAccountForSale_Data[3322227]["LogId"] = 12001476
tAccountForSale_Data[3322227]["DeleteItem"] = {}
tAccountForSale_Data[3322227]["DeleteItem"][1] = {}
tAccountForSale_Data[3322227]["DeleteItem"][1]["Id"] = 3322227

--装备
tAccountForSale_Data[3322227]["RewardItem"] = {}
--武器（待定）
tAccountForSale_Data[3322227]["RewardItem"][1] = {}
tAccountForSale_Data[3322227]["RewardItem"][1]["Id"] = 626199
tAccountForSale_Data[3322227]["RewardItem"][1]["Attr"] = "0 2 3 0 0 0 0 3 200 0 7 13"
--甲
tAccountForSale_Data[3322227]["RewardItem"][2] = {}
tAccountForSale_Data[3322227]["RewardItem"][2]["Id"] = 101089
tAccountForSale_Data[3322227]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
--头
tAccountForSale_Data[3322227]["RewardItem"][3] = {}
tAccountForSale_Data[3322227]["RewardItem"][3]["Id"] = 170089
tAccountForSale_Data[3322227]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"

--通用
tAccountForSale_Data[3322227]["RewardItem"][4] = {}
tAccountForSale_Data[3322227]["RewardItem"][4]["Id"] = 150199
tAccountForSale_Data[3322227]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
tAccountForSale_Data[3322227]["RewardItem"][5] = {}
tAccountForSale_Data[3322227]["RewardItem"][5]["Id"] = 120189
tAccountForSale_Data[3322227]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
tAccountForSale_Data[3322227]["RewardItem"][6] = {}
tAccountForSale_Data[3322227]["RewardItem"][6]["Id"] = 160199
tAccountForSale_Data[3322227]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
tAccountForSale_Data[3322227]["RewardItem"][7] = {}
tAccountForSale_Data[3322227]["RewardItem"][7]["Id"] = 300000
tAccountForSale_Data[3322227]["RewardItem"][7]["Attr"] = "0 0 3 0 0 0 9830655 150 0 0 7 0 0 0 0 0 0 255"
tAccountForSale_Data[3322227]["RewardItem"][8] = {}
tAccountForSale_Data[3322227]["RewardItem"][8]["Id"] = 201009
tAccountForSale_Data[3322227]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7 103"
tAccountForSale_Data[3322227]["RewardItem"][9] = {}
tAccountForSale_Data[3322227]["RewardItem"][9]["Id"] = 203009
tAccountForSale_Data[3322227]["RewardItem"][9]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7"
tAccountForSale_Data[3322227]["RewardItem"][10] = {}
tAccountForSale_Data[3322227]["RewardItem"][10]["Id"] = 202009
tAccountForSale_Data[3322227]["RewardItem"][10]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7 123"
tAccountForSale_Data[3322227]["RewardItem"][11] = {}
tAccountForSale_Data[3322227]["RewardItem"][11]["Id"] = 204009
tAccountForSale_Data[3322227]["RewardItem"][11]["Attr"] = "0 1 3 0 0 0 0 0 0 0 7 103"

--神纹

--红色
tAccountForSale_Data[3322227]["RewardItem"][12] = {}
tAccountForSale_Data[3322227]["RewardItem"][12]["Id"] = 4010901
tAccountForSale_Data[3322227]["RewardItem"][12]["Attr"] = "0 1 3"

--蓝色
tAccountForSale_Data[3322227]["RewardItem"][13] = {}
tAccountForSale_Data[3322227]["RewardItem"][13]["Id"] = 4021001
tAccountForSale_Data[3322227]["RewardItem"][13]["Attr"] = "0 1 3"

--黄色
tAccountForSale_Data[3322227]["RewardItem"][14] = {}
tAccountForSale_Data[3322227]["RewardItem"][14]["Id"] = 4030301
tAccountForSale_Data[3322227]["RewardItem"][14]["Attr"] = "0 1 3"
tAccountForSale_Data[3322227]["RewardItem"][15] = {}
tAccountForSale_Data[3322227]["RewardItem"][15]["Id"] = 4031001
tAccountForSale_Data[3322227]["RewardItem"][15]["Attr"] = "0 1 3"
tAccountForSale_Data[3322227]["RewardItem"][16] = {}
tAccountForSale_Data[3322227]["RewardItem"][16]["Id"] = 4031301
tAccountForSale_Data[3322227]["RewardItem"][16]["Attr"] = "0 1 3"

--灵宝葫芦
tAccountForSale_Data[3322227]["RewardItem"][17] = {}
tAccountForSale_Data[3322227]["RewardItem"][17]["Id"] = 2100025
tAccountForSale_Data[3322227]["RewardItem"][17]["Attr"] = "0 1 3"

--精炼 18级 85640=8*10000+5*1000+6*100+4*10 
--8个璀璨星陨石极运包 3322189
--5个1颗晶莹星陨石极运包 3322190
--6个1颗明亮星陨石极运包 3322191
--4个1颗微光星陨石极运包 3322192

--12件装备 所需个数*12
tAccountForSale_Data[3322227]["RewardItem"][18] = {}
tAccountForSale_Data[3322227]["RewardItem"][18]["Id"] = 3322189
tAccountForSale_Data[3322227]["RewardItem"][18]["Attr"] = "0 96"
tAccountForSale_Data[3322227]["RewardItem"][19] = {}
tAccountForSale_Data[3322227]["RewardItem"][19]["Id"] = 3322190
tAccountForSale_Data[3322227]["RewardItem"][19]["Attr"] = "0 60"
tAccountForSale_Data[3322227]["RewardItem"][20] = {}
tAccountForSale_Data[3322227]["RewardItem"][20]["Id"] = 3322191
tAccountForSale_Data[3322227]["RewardItem"][20]["Attr"] = "0 72"
tAccountForSale_Data[3322227]["RewardItem"][21] = {}
tAccountForSale_Data[3322227]["RewardItem"][21]["Id"] = 3322192
tAccountForSale_Data[3322227]["RewardItem"][21]["Attr"] = "0 48"

--驯兽师 40个偷走的马鞍
tAccountForSale_Data[3322227]["RewardItem"][22] = {}
tAccountForSale_Data[3322227]["RewardItem"][22]["Id"] = 723903
tAccountForSale_Data[3322227]["RewardItem"][22]["Attr"] = "0 40"

tAccountForSale_Data[3322227]["RewardEMoney"] = {}
tAccountForSale_Data[3322227]["RewardEMoney"]["Value"] = 4000
tAccountForSale_Data[3322227]["EmoneyLog"] = "10000	0537	-4000	-4000	0	"

tAccountForSale_Data[3322227]["RewardCultivation"] = {}
tAccountForSale_Data[3322227]["RewardCultivation"]["Value"] = 7600

tAccountForSale_Data[3322227]["RewardEffect"] = {}
tAccountForSale_Data[3322227]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAccountForSale_Data[3322227]["RewardEffect"]["Effect"] = "angelwing"


--狂战士
tAccountForSale_Data[3322228]={}
tAccountForSale_Data[3322228]["LogId"] = 12001476
tAccountForSale_Data[3322228]["DeleteItem"] = {}
tAccountForSale_Data[3322228]["DeleteItem"][1] = {}
tAccountForSale_Data[3322228]["DeleteItem"][1]["Id"] = 3322228

--装备
tAccountForSale_Data[3322228]["RewardItem"] = {}
--武器
tAccountForSale_Data[3322228]["RewardItem"][1] = {}
tAccountForSale_Data[3322228]["RewardItem"][1]["Id"] = 624199
tAccountForSale_Data[3322228]["RewardItem"][1]["Attr"] = "0 2 3 0 0 0 0 3 200 0 7 13"
--甲
tAccountForSale_Data[3322228]["RewardItem"][2] = {}
tAccountForSale_Data[3322228]["RewardItem"][2]["Id"] = 131089
tAccountForSale_Data[3322228]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
--头
tAccountForSale_Data[3322228]["RewardItem"][3] = {}
tAccountForSale_Data[3322228]["RewardItem"][3]["Id"] = 141089
tAccountForSale_Data[3322228]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"

--通用
tAccountForSale_Data[3322228]["RewardItem"][4] = {}
tAccountForSale_Data[3322228]["RewardItem"][4]["Id"] = 150199
tAccountForSale_Data[3322228]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
tAccountForSale_Data[3322228]["RewardItem"][5] = {}
tAccountForSale_Data[3322228]["RewardItem"][5]["Id"] = 120189
tAccountForSale_Data[3322228]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
tAccountForSale_Data[3322228]["RewardItem"][6] = {}
tAccountForSale_Data[3322228]["RewardItem"][6]["Id"] = 160199
tAccountForSale_Data[3322228]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
tAccountForSale_Data[3322228]["RewardItem"][7] = {}
tAccountForSale_Data[3322228]["RewardItem"][7]["Id"] = 300000
tAccountForSale_Data[3322228]["RewardItem"][7]["Attr"] = "0 0 3 0 0 0 9830655 150 0 0 7 0 0 0 0 0 0 255"
tAccountForSale_Data[3322228]["RewardItem"][8] = {}
tAccountForSale_Data[3322228]["RewardItem"][8]["Id"] = 201009
tAccountForSale_Data[3322228]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7 103"
tAccountForSale_Data[3322228]["RewardItem"][9] = {}
tAccountForSale_Data[3322228]["RewardItem"][9]["Id"] = 203009
tAccountForSale_Data[3322228]["RewardItem"][9]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7"
tAccountForSale_Data[3322228]["RewardItem"][10] = {}
tAccountForSale_Data[3322228]["RewardItem"][10]["Id"] = 202009
tAccountForSale_Data[3322228]["RewardItem"][10]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7 123"
tAccountForSale_Data[3322228]["RewardItem"][11] = {}
tAccountForSale_Data[3322228]["RewardItem"][11]["Id"] = 204009
tAccountForSale_Data[3322228]["RewardItem"][11]["Attr"] = "0 1 3 0 0 0 0 0 0 0 7 103"

--神纹

--红色
tAccountForSale_Data[3322228]["RewardItem"][12] = {}
tAccountForSale_Data[3322228]["RewardItem"][12]["Id"] = 4010101
tAccountForSale_Data[3322228]["RewardItem"][12]["Attr"] = "0 1 3"

--蓝色
tAccountForSale_Data[3322228]["RewardItem"][13] = {}
tAccountForSale_Data[3322228]["RewardItem"][13]["Id"] = 4020201
tAccountForSale_Data[3322228]["RewardItem"][13]["Attr"] = "0 1 3"

--黄色
tAccountForSale_Data[3322228]["RewardItem"][14] = {}
tAccountForSale_Data[3322228]["RewardItem"][14]["Id"] = 4030301
tAccountForSale_Data[3322228]["RewardItem"][14]["Attr"] = "0 1 3"
tAccountForSale_Data[3322228]["RewardItem"][15] = {}
tAccountForSale_Data[3322228]["RewardItem"][15]["Id"] = 4031001
tAccountForSale_Data[3322228]["RewardItem"][15]["Attr"] = "0 1 3"
tAccountForSale_Data[3322228]["RewardItem"][16] = {}
tAccountForSale_Data[3322228]["RewardItem"][16]["Id"] = 4031301
tAccountForSale_Data[3322228]["RewardItem"][16]["Attr"] = "0 1 3"

--灵宝葫芦
tAccountForSale_Data[3322228]["RewardItem"][17] = {}
tAccountForSale_Data[3322228]["RewardItem"][17]["Id"] = 2100025
tAccountForSale_Data[3322228]["RewardItem"][17]["Attr"] = "0 1 3"

--精炼 18级 85640=8*10000+5*1000+6*100+4*10 
--8个璀璨星陨石极运包 3322189
--5个1颗晶莹星陨石极运包 3322190
--6个1颗明亮星陨石极运包 3322191
--4个1颗微光星陨石极运包 3322192

--12件装备 所需个数*12
tAccountForSale_Data[3322228]["RewardItem"][18] = {}
tAccountForSale_Data[3322228]["RewardItem"][18]["Id"] = 3322189
tAccountForSale_Data[3322228]["RewardItem"][18]["Attr"] = "0 96"
tAccountForSale_Data[3322228]["RewardItem"][19] = {}
tAccountForSale_Data[3322228]["RewardItem"][19]["Id"] = 3322190
tAccountForSale_Data[3322228]["RewardItem"][19]["Attr"] = "0 60"
tAccountForSale_Data[3322228]["RewardItem"][20] = {}
tAccountForSale_Data[3322228]["RewardItem"][20]["Id"] = 3322191
tAccountForSale_Data[3322228]["RewardItem"][20]["Attr"] = "0 72"
tAccountForSale_Data[3322228]["RewardItem"][21] = {}
tAccountForSale_Data[3322228]["RewardItem"][21]["Id"] = 3322192
tAccountForSale_Data[3322228]["RewardItem"][21]["Attr"] = "0 48"

--驯兽师 40个偷走的马鞍
tAccountForSale_Data[3322228]["RewardItem"][22] = {}
tAccountForSale_Data[3322228]["RewardItem"][22]["Id"] = 723903
tAccountForSale_Data[3322228]["RewardItem"][22]["Attr"] = "0 40"

tAccountForSale_Data[3322228]["RewardEMoney"] = {}
tAccountForSale_Data[3322228]["RewardEMoney"]["Value"] = 4000
tAccountForSale_Data[3322228]["EmoneyLog"] = "10000	0537	-4000	-4000	0	"

tAccountForSale_Data[3322228]["RewardCultivation"] = {}
tAccountForSale_Data[3322228]["RewardCultivation"]["Value"] = 7600

tAccountForSale_Data[3322228]["RewardEffect"] = {}
tAccountForSale_Data[3322228]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAccountForSale_Data[3322228]["RewardEffect"]["Effect"] = "angelwing"


--水道士
tAccountForSale_Data[3322229]={}
tAccountForSale_Data[3322229]["LogId"] = 12001476
tAccountForSale_Data[3322229]["DeleteItem"] = {}
tAccountForSale_Data[3322229]["DeleteItem"][1] = {}
tAccountForSale_Data[3322229]["DeleteItem"][1]["Id"] = 3322229

--装备
tAccountForSale_Data[3322229]["RewardItem"] = {}
--武器
tAccountForSale_Data[3322229]["RewardItem"][1] = {}
tAccountForSale_Data[3322229]["RewardItem"][1]["Id"] = 421199
tAccountForSale_Data[3322229]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 03"
--甲
tAccountForSale_Data[3322229]["RewardItem"][2] = {}
tAccountForSale_Data[3322229]["RewardItem"][2]["Id"] = 134089
tAccountForSale_Data[3322229]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 03"
--头
tAccountForSale_Data[3322229]["RewardItem"][3] = {}
tAccountForSale_Data[3322229]["RewardItem"][3]["Id"] = 114089
tAccountForSale_Data[3322229]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 03"

--通用
tAccountForSale_Data[3322229]["RewardItem"][4] = {}
tAccountForSale_Data[3322229]["RewardItem"][4]["Id"] = 152189
tAccountForSale_Data[3322229]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 03"
tAccountForSale_Data[3322229]["RewardItem"][5] = {}
tAccountForSale_Data[3322229]["RewardItem"][5]["Id"] = 121189
tAccountForSale_Data[3322229]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 03"
tAccountForSale_Data[3322229]["RewardItem"][6] = {}
tAccountForSale_Data[3322229]["RewardItem"][6]["Id"] = 160199
tAccountForSale_Data[3322229]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 03"
tAccountForSale_Data[3322229]["RewardItem"][7] = {}
tAccountForSale_Data[3322229]["RewardItem"][7]["Id"] = 300000
tAccountForSale_Data[3322229]["RewardItem"][7]["Attr"] = "0 0 3 0 0 0 9830655 150 0 0 7 0 0 0 0 0 0 255"
tAccountForSale_Data[3322229]["RewardItem"][8] = {}
tAccountForSale_Data[3322229]["RewardItem"][8]["Id"] = 201009
tAccountForSale_Data[3322229]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7 103"
tAccountForSale_Data[3322229]["RewardItem"][9] = {}
tAccountForSale_Data[3322229]["RewardItem"][9]["Id"] = 203009
tAccountForSale_Data[3322229]["RewardItem"][9]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7"
tAccountForSale_Data[3322229]["RewardItem"][10] = {}
tAccountForSale_Data[3322229]["RewardItem"][10]["Id"] = 202009
tAccountForSale_Data[3322229]["RewardItem"][10]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7 123"
tAccountForSale_Data[3322229]["RewardItem"][11] = {}
tAccountForSale_Data[3322229]["RewardItem"][11]["Id"] = 204009
tAccountForSale_Data[3322229]["RewardItem"][11]["Attr"] = "0 1 3 0 0 0 0 0 0 0 7 103"

--神纹

--红色
tAccountForSale_Data[3322229]["RewardItem"][12] = {}
tAccountForSale_Data[3322229]["RewardItem"][12]["Id"] = 4010701
tAccountForSale_Data[3322229]["RewardItem"][12]["Attr"] = "0 1 3"

--蓝色
tAccountForSale_Data[3322229]["RewardItem"][13] = {}
tAccountForSale_Data[3322229]["RewardItem"][13]["Id"] = 4020801
tAccountForSale_Data[3322229]["RewardItem"][13]["Attr"] = "0 1 3"

--黄色
tAccountForSale_Data[3322229]["RewardItem"][14] = {}
tAccountForSale_Data[3322229]["RewardItem"][14]["Id"] = 4030301
tAccountForSale_Data[3322229]["RewardItem"][14]["Attr"] = "0 1 3"
tAccountForSale_Data[3322229]["RewardItem"][15] = {}
tAccountForSale_Data[3322229]["RewardItem"][15]["Id"] = 4031001
tAccountForSale_Data[3322229]["RewardItem"][15]["Attr"] = "0 1 3"
tAccountForSale_Data[3322229]["RewardItem"][16] = {}
tAccountForSale_Data[3322229]["RewardItem"][16]["Id"] = 4031301
tAccountForSale_Data[3322229]["RewardItem"][16]["Attr"] = "0 1 3"

--灵宝葫芦
tAccountForSale_Data[3322229]["RewardItem"][17] = {}
tAccountForSale_Data[3322229]["RewardItem"][17]["Id"] = 2100025
tAccountForSale_Data[3322229]["RewardItem"][17]["Attr"] = "0 1 3"

--精炼 18级 85640=8*10000+5*1000+6*100+4*10 
--8个璀璨星陨石极运包 3322189
--5个1颗晶莹星陨石极运包 3322190
--6个1颗明亮星陨石极运包 3322191
--4个1颗微光星陨石极运包 3322192

--12件装备 所需个数*12
tAccountForSale_Data[3322229]["RewardItem"][18] = {}
tAccountForSale_Data[3322229]["RewardItem"][18]["Id"] = 3322189
tAccountForSale_Data[3322229]["RewardItem"][18]["Attr"] = "0 96"
tAccountForSale_Data[3322229]["RewardItem"][19] = {}
tAccountForSale_Data[3322229]["RewardItem"][19]["Id"] = 3322190
tAccountForSale_Data[3322229]["RewardItem"][19]["Attr"] = "0 60"
tAccountForSale_Data[3322229]["RewardItem"][20] = {}
tAccountForSale_Data[3322229]["RewardItem"][20]["Id"] = 3322191
tAccountForSale_Data[3322229]["RewardItem"][20]["Attr"] = "0 72"
tAccountForSale_Data[3322229]["RewardItem"][21] = {}
tAccountForSale_Data[3322229]["RewardItem"][21]["Id"] = 3322192
tAccountForSale_Data[3322229]["RewardItem"][21]["Attr"] = "0 48"

--驯兽师 40个偷走的马鞍
tAccountForSale_Data[3322229]["RewardItem"][22] = {}
tAccountForSale_Data[3322229]["RewardItem"][22]["Id"] = 723903
tAccountForSale_Data[3322229]["RewardItem"][22]["Attr"] = "0 40"

tAccountForSale_Data[3322229]["RewardItem"][23] = {}
tAccountForSale_Data[3322229]["RewardItem"][23]["Id"] = 619199
tAccountForSale_Data[3322229]["RewardItem"][23]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7"

tAccountForSale_Data[3322229]["RewardEMoney"] = {}
tAccountForSale_Data[3322229]["RewardEMoney"]["Value"] = 4000
tAccountForSale_Data[3322229]["EmoneyLog"] = "10000	0537	-4000	-4000	0	"

tAccountForSale_Data[3322229]["RewardCultivation"] = {}
tAccountForSale_Data[3322229]["RewardCultivation"]["Value"] = 7600

tAccountForSale_Data[3322229]["RewardEffect"] = {}
tAccountForSale_Data[3322229]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAccountForSale_Data[3322229]["RewardEffect"]["Effect"] = "angelwing"


--火道士
tAccountForSale_Data[3322230]={}
tAccountForSale_Data[3322230]["LogId"] = 12001476
tAccountForSale_Data[3322230]["DeleteItem"] = {}
tAccountForSale_Data[3322230]["DeleteItem"][1] = {}
tAccountForSale_Data[3322230]["DeleteItem"][1]["Id"] = 3322230

--装备
tAccountForSale_Data[3322230]["RewardItem"] = {}
--武器
tAccountForSale_Data[3322230]["RewardItem"][1] = {}
tAccountForSale_Data[3322230]["RewardItem"][1]["Id"] = 421199
tAccountForSale_Data[3322230]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 03"
--甲
tAccountForSale_Data[3322230]["RewardItem"][2] = {}
tAccountForSale_Data[3322230]["RewardItem"][2]["Id"] = 134089
tAccountForSale_Data[3322230]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 03"
--头
tAccountForSale_Data[3322230]["RewardItem"][3] = {}
tAccountForSale_Data[3322230]["RewardItem"][3]["Id"] = 114089
tAccountForSale_Data[3322230]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 03"

--通用
tAccountForSale_Data[3322230]["RewardItem"][4] = {}
tAccountForSale_Data[3322230]["RewardItem"][4]["Id"] = 152189
tAccountForSale_Data[3322230]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 03"
tAccountForSale_Data[3322230]["RewardItem"][5] = {}
tAccountForSale_Data[3322230]["RewardItem"][5]["Id"] = 121189
tAccountForSale_Data[3322230]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 03"
tAccountForSale_Data[3322230]["RewardItem"][6] = {}
tAccountForSale_Data[3322230]["RewardItem"][6]["Id"] = 160199
tAccountForSale_Data[3322230]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 03"
tAccountForSale_Data[3322230]["RewardItem"][7] = {}
tAccountForSale_Data[3322230]["RewardItem"][7]["Id"] = 300000
tAccountForSale_Data[3322230]["RewardItem"][7]["Attr"] = "0 0 3 0 0 0 9830655 150 0 0 7 0 0 0 0 0 0 255"
tAccountForSale_Data[3322230]["RewardItem"][8] = {}
tAccountForSale_Data[3322230]["RewardItem"][8]["Id"] = 201009
tAccountForSale_Data[3322230]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7 103"
tAccountForSale_Data[3322230]["RewardItem"][9] = {}
tAccountForSale_Data[3322230]["RewardItem"][9]["Id"] = 203009
tAccountForSale_Data[3322230]["RewardItem"][9]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7"
tAccountForSale_Data[3322230]["RewardItem"][10] = {}
tAccountForSale_Data[3322230]["RewardItem"][10]["Id"] = 202009
tAccountForSale_Data[3322230]["RewardItem"][10]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7 123"
tAccountForSale_Data[3322230]["RewardItem"][11] = {}
tAccountForSale_Data[3322230]["RewardItem"][11]["Id"] = 204009
tAccountForSale_Data[3322230]["RewardItem"][11]["Attr"] = "0 1 3 0 0 0 0 0 0 0 7 103"

--神纹

--红色
tAccountForSale_Data[3322230]["RewardItem"][12] = {}
tAccountForSale_Data[3322230]["RewardItem"][12]["Id"] = 4010801
tAccountForSale_Data[3322230]["RewardItem"][12]["Attr"] = "0 1 3"

--蓝色
tAccountForSale_Data[3322230]["RewardItem"][13] = {}
tAccountForSale_Data[3322230]["RewardItem"][13]["Id"] = 4020901
tAccountForSale_Data[3322230]["RewardItem"][13]["Attr"] = "0 1 3"

--黄色
tAccountForSale_Data[3322230]["RewardItem"][14] = {}
tAccountForSale_Data[3322230]["RewardItem"][14]["Id"] = 4030301
tAccountForSale_Data[3322230]["RewardItem"][14]["Attr"] = "0 1 3"
tAccountForSale_Data[3322230]["RewardItem"][15] = {}
tAccountForSale_Data[3322230]["RewardItem"][15]["Id"] = 4031001
tAccountForSale_Data[3322230]["RewardItem"][15]["Attr"] = "0 1 3"
tAccountForSale_Data[3322230]["RewardItem"][16] = {}
tAccountForSale_Data[3322230]["RewardItem"][16]["Id"] = 4031301
tAccountForSale_Data[3322230]["RewardItem"][16]["Attr"] = "0 1 3"

--灵宝葫芦
tAccountForSale_Data[3322230]["RewardItem"][17] = {}
tAccountForSale_Data[3322230]["RewardItem"][17]["Id"] = 2100025
tAccountForSale_Data[3322230]["RewardItem"][17]["Attr"] = "0 1 3"

--精炼 18级 85640=8*1000033222305*1000+6*100+4*10 
--8个璀璨星陨石极运包 3323322230189
--5个1颗晶莹星陨石极运包 3322230322190
--6个1颗明亮星陨石极运包 3322230322191
--4个1颗微光星陨石极运包 3322230322192

--12件装备 所需个数*12
tAccountForSale_Data[3322230]["RewardItem"][18] = {}
tAccountForSale_Data[3322230]["RewardItem"][18]["Id"] = 3322189
tAccountForSale_Data[3322230]["RewardItem"][18]["Attr"] = "0 96"
tAccountForSale_Data[3322230]["RewardItem"][19] = {}
tAccountForSale_Data[3322230]["RewardItem"][19]["Id"] = 3322190
tAccountForSale_Data[3322230]["RewardItem"][19]["Attr"] = "0 60"
tAccountForSale_Data[3322230]["RewardItem"][20] = {}
tAccountForSale_Data[3322230]["RewardItem"][20]["Id"] = 3322191
tAccountForSale_Data[3322230]["RewardItem"][20]["Attr"] = "0 72"
tAccountForSale_Data[3322230]["RewardItem"][21] = {}
tAccountForSale_Data[3322230]["RewardItem"][21]["Id"] = 3322192
tAccountForSale_Data[3322230]["RewardItem"][21]["Attr"] = "0 48"

--驯兽师 40个偷走的马鞍
tAccountForSale_Data[3322230]["RewardItem"][22] = {}
tAccountForSale_Data[3322230]["RewardItem"][22]["Id"] = 723903
tAccountForSale_Data[3322230]["RewardItem"][22]["Attr"] = "0 40"

tAccountForSale_Data[3322230]["RewardItem"][23] = {}
tAccountForSale_Data[3322230]["RewardItem"][23]["Id"] = 619199
tAccountForSale_Data[3322230]["RewardItem"][23]["Attr"] = "0 1 3 0 0 0 0 7 200 0 3"

tAccountForSale_Data[3322230]["RewardEMoney"] = {}
tAccountForSale_Data[3322230]["RewardEMoney"]["Value"] = 4000
tAccountForSale_Data[3322230]["EmoneyLog"] = "10000	0537	-4000	-4000	0	"

tAccountForSale_Data[3322230]["RewardCultivation"] = {}
tAccountForSale_Data[3322230]["RewardCultivation"]["Value"] = 7600

tAccountForSale_Data[3322230]["RewardEffect"] = {}
tAccountForSale_Data[3322230]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAccountForSale_Data[3322230]["RewardEffect"]["Effect"] = "angelwing"


--弓手
tAccountForSale_Data[3322231]={}
tAccountForSale_Data[3322231]["LogId"] = 12001476
tAccountForSale_Data[3322231]["DeleteItem"] = {}
tAccountForSale_Data[3322231]["DeleteItem"][1] = {}
tAccountForSale_Data[3322231]["DeleteItem"][1]["Id"] = 3322231

--装备
tAccountForSale_Data[3322231]["RewardItem"] = {}
--武器
tAccountForSale_Data[3322231]["RewardItem"][1] = {}
tAccountForSale_Data[3322231]["RewardItem"][1]["Id"] = 613189
tAccountForSale_Data[3322231]["RewardItem"][1]["Attr"] = "0 2 3 0 0 0 0 3 200 0 7 13"
--甲
tAccountForSale_Data[3322231]["RewardItem"][2] = {}
tAccountForSale_Data[3322231]["RewardItem"][2]["Id"] = 133079
tAccountForSale_Data[3322231]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
--头
tAccountForSale_Data[3322231]["RewardItem"][3] = {}
tAccountForSale_Data[3322231]["RewardItem"][3]["Id"] = 142079
tAccountForSale_Data[3322231]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"

--通用
tAccountForSale_Data[3322231]["RewardItem"][4] = {}
tAccountForSale_Data[3322231]["RewardItem"][4]["Id"] = 150199
tAccountForSale_Data[3322231]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
tAccountForSale_Data[3322231]["RewardItem"][5] = {}
tAccountForSale_Data[3322231]["RewardItem"][5]["Id"] = 120189
tAccountForSale_Data[3322231]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
tAccountForSale_Data[3322231]["RewardItem"][6] = {}
tAccountForSale_Data[3322231]["RewardItem"][6]["Id"] = 160199
tAccountForSale_Data[3322231]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
tAccountForSale_Data[3322231]["RewardItem"][7] = {}
tAccountForSale_Data[3322231]["RewardItem"][7]["Id"] = 300000
tAccountForSale_Data[3322231]["RewardItem"][7]["Attr"] = "0 0 3 0 0 0 9830655 150 0 0 7 0 0 0 0 0 0 255"
tAccountForSale_Data[3322231]["RewardItem"][8] = {}
tAccountForSale_Data[3322231]["RewardItem"][8]["Id"] = 201009
tAccountForSale_Data[3322231]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7 103"
tAccountForSale_Data[3322231]["RewardItem"][9] = {}
tAccountForSale_Data[3322231]["RewardItem"][9]["Id"] = 203009
tAccountForSale_Data[3322231]["RewardItem"][9]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7"
tAccountForSale_Data[3322231]["RewardItem"][10] = {}
tAccountForSale_Data[3322231]["RewardItem"][10]["Id"] = 202009
tAccountForSale_Data[3322231]["RewardItem"][10]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7 123"
tAccountForSale_Data[3322231]["RewardItem"][11] = {}
tAccountForSale_Data[3322231]["RewardItem"][11]["Id"] = 204009
tAccountForSale_Data[3322231]["RewardItem"][11]["Attr"] = "0 1 3 0 0 0 0 0 0 0 7 103"

--神纹

--红色
tAccountForSale_Data[3322231]["RewardItem"][12] = {}
tAccountForSale_Data[3322231]["RewardItem"][12]["Id"] = 4010201
tAccountForSale_Data[3322231]["RewardItem"][12]["Attr"] = "0 1 3"

--蓝色
tAccountForSale_Data[3322231]["RewardItem"][13] = {}
tAccountForSale_Data[3322231]["RewardItem"][13]["Id"] = 4020301
tAccountForSale_Data[3322231]["RewardItem"][13]["Attr"] = "0 1 3"

--黄色
tAccountForSale_Data[3322231]["RewardItem"][14] = {}
tAccountForSale_Data[3322231]["RewardItem"][14]["Id"] = 4030301
tAccountForSale_Data[3322231]["RewardItem"][14]["Attr"] = "0 1 3"
tAccountForSale_Data[3322231]["RewardItem"][15] = {}
tAccountForSale_Data[3322231]["RewardItem"][15]["Id"] = 4031001
tAccountForSale_Data[3322231]["RewardItem"][15]["Attr"] = "0 1 3"
tAccountForSale_Data[3322231]["RewardItem"][16] = {}
tAccountForSale_Data[3322231]["RewardItem"][16]["Id"] = 4031301
tAccountForSale_Data[3322231]["RewardItem"][16]["Attr"] = "0 1 3"

--灵宝葫芦
tAccountForSale_Data[3322231]["RewardItem"][17] = {}
tAccountForSale_Data[3322231]["RewardItem"][17]["Id"] = 2100025
tAccountForSale_Data[3322231]["RewardItem"][17]["Attr"] = "0 1 3"

--精炼 18级 85640=8*10000+5*1000+6*100+4*10 
--8个璀璨星陨石极运包 3322189
--5个1颗晶莹星陨石极运包 3322190
--6个1颗明亮星陨石极运包 3322191
--4个1颗微光星陨石极运包 3322192

--12件装备 所需个数*12
tAccountForSale_Data[3322231]["RewardItem"][18] = {}
tAccountForSale_Data[3322231]["RewardItem"][18]["Id"] = 3322189
tAccountForSale_Data[3322231]["RewardItem"][18]["Attr"] = "0 96"
tAccountForSale_Data[3322231]["RewardItem"][19] = {}
tAccountForSale_Data[3322231]["RewardItem"][19]["Id"] = 3322190
tAccountForSale_Data[3322231]["RewardItem"][19]["Attr"] = "0 60"
tAccountForSale_Data[3322231]["RewardItem"][20] = {}
tAccountForSale_Data[3322231]["RewardItem"][20]["Id"] = 3322191
tAccountForSale_Data[3322231]["RewardItem"][20]["Attr"] = "0 72"
tAccountForSale_Data[3322231]["RewardItem"][21] = {}
tAccountForSale_Data[3322231]["RewardItem"][21]["Id"] = 3322192
tAccountForSale_Data[3322231]["RewardItem"][21]["Attr"] = "0 48"

--驯兽师 40个偷走的马鞍
tAccountForSale_Data[3322231]["RewardItem"][22] = {}
tAccountForSale_Data[3322231]["RewardItem"][22]["Id"] = 723903
tAccountForSale_Data[3322231]["RewardItem"][22]["Attr"] = "0 40"

tAccountForSale_Data[3322231]["RewardEMoney"] = {}
tAccountForSale_Data[3322231]["RewardEMoney"]["Value"] = 4000
tAccountForSale_Data[3322231]["EmoneyLog"] = "10000	0537	-4000	-4000	0	"

tAccountForSale_Data[3322231]["RewardCultivation"] = {}
tAccountForSale_Data[3322231]["RewardCultivation"]["Value"] = 7600

tAccountForSale_Data[3322231]["RewardEffect"] = {}
tAccountForSale_Data[3322231]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAccountForSale_Data[3322231]["RewardEffect"]["Effect"] = "angelwing"

--忍者
tAccountForSale_Data[3322232]={}
tAccountForSale_Data[3322232]["LogId"] = 12001476
tAccountForSale_Data[3322232]["DeleteItem"] = {}
tAccountForSale_Data[3322232]["DeleteItem"][1] = {}
tAccountForSale_Data[3322232]["DeleteItem"][1]["Id"] = 3322232

--装备
tAccountForSale_Data[3322232]["RewardItem"] = {}
--武器
tAccountForSale_Data[3322232]["RewardItem"][1] = {}
tAccountForSale_Data[3322232]["RewardItem"][1]["Id"] = 601199
tAccountForSale_Data[3322232]["RewardItem"][1]["Attr"] = "0 2 3 0 0 0 0 3 200 0 7 13"
--甲
tAccountForSale_Data[3322232]["RewardItem"][2] = {}
tAccountForSale_Data[3322232]["RewardItem"][2]["Id"] = 135089
tAccountForSale_Data[3322232]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
--头
tAccountForSale_Data[3322232]["RewardItem"][3] = {}
tAccountForSale_Data[3322232]["RewardItem"][3]["Id"] = 123089
tAccountForSale_Data[3322232]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"

--通用
tAccountForSale_Data[3322232]["RewardItem"][4] = {}
tAccountForSale_Data[3322232]["RewardItem"][4]["Id"] = 150199
tAccountForSale_Data[3322232]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
tAccountForSale_Data[3322232]["RewardItem"][5] = {}
tAccountForSale_Data[3322232]["RewardItem"][5]["Id"] = 120189
tAccountForSale_Data[3322232]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
tAccountForSale_Data[3322232]["RewardItem"][6] = {}
tAccountForSale_Data[3322232]["RewardItem"][6]["Id"] = 160199
tAccountForSale_Data[3322232]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
tAccountForSale_Data[3322232]["RewardItem"][7] = {}
tAccountForSale_Data[3322232]["RewardItem"][7]["Id"] = 300000
tAccountForSale_Data[3322232]["RewardItem"][7]["Attr"] = "0 0 3 0 0 0 9830655 150 0 0 7 0 0 0 0 0 0 255"
tAccountForSale_Data[3322232]["RewardItem"][8] = {}
tAccountForSale_Data[3322232]["RewardItem"][8]["Id"] = 201009
tAccountForSale_Data[3322232]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7 103"
tAccountForSale_Data[3322232]["RewardItem"][9] = {}
tAccountForSale_Data[3322232]["RewardItem"][9]["Id"] = 203009
tAccountForSale_Data[3322232]["RewardItem"][9]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7"
tAccountForSale_Data[3322232]["RewardItem"][10] = {}
tAccountForSale_Data[3322232]["RewardItem"][10]["Id"] = 202009
tAccountForSale_Data[3322232]["RewardItem"][10]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7 123"
tAccountForSale_Data[3322232]["RewardItem"][11] = {}
tAccountForSale_Data[3322232]["RewardItem"][11]["Id"] = 204009
tAccountForSale_Data[3322232]["RewardItem"][11]["Attr"] = "0 1 3 0 0 0 0 0 0 0 7 103"

--神纹

--红色
tAccountForSale_Data[3322232]["RewardItem"][12] = {}
tAccountForSale_Data[3322232]["RewardItem"][12]["Id"] = 4010301
tAccountForSale_Data[3322232]["RewardItem"][12]["Attr"] = "0 1 3"

--蓝色
tAccountForSale_Data[3322232]["RewardItem"][13] = {}
tAccountForSale_Data[3322232]["RewardItem"][13]["Id"] = 4020401
tAccountForSale_Data[3322232]["RewardItem"][13]["Attr"] = "0 1 3"

--黄色
tAccountForSale_Data[3322232]["RewardItem"][14] = {}
tAccountForSale_Data[3322232]["RewardItem"][14]["Id"] = 4030301
tAccountForSale_Data[3322232]["RewardItem"][14]["Attr"] = "0 1 3"
tAccountForSale_Data[3322232]["RewardItem"][15] = {}
tAccountForSale_Data[3322232]["RewardItem"][15]["Id"] = 4031001
tAccountForSale_Data[3322232]["RewardItem"][15]["Attr"] = "0 1 3"
tAccountForSale_Data[3322232]["RewardItem"][16] = {}
tAccountForSale_Data[3322232]["RewardItem"][16]["Id"] = 4031301
tAccountForSale_Data[3322232]["RewardItem"][16]["Attr"] = "0 1 3"

--灵宝葫芦
tAccountForSale_Data[3322232]["RewardItem"][17] = {}
tAccountForSale_Data[3322232]["RewardItem"][17]["Id"] = 2100025
tAccountForSale_Data[3322232]["RewardItem"][17]["Attr"] = "0 1 3"

--精炼 18级 85640=8*10000+5*1000+6*100+4*10 
--8个璀璨星陨石极运包 3322189
--5个1颗晶莹星陨石极运包 3322190
--6个1颗明亮星陨石极运包 3322191
--4个1颗微光星陨石极运包 3322192

--12件装备 所需个数*12
tAccountForSale_Data[3322232]["RewardItem"][18] = {}
tAccountForSale_Data[3322232]["RewardItem"][18]["Id"] = 3322189
tAccountForSale_Data[3322232]["RewardItem"][18]["Attr"] = "0 96"
tAccountForSale_Data[3322232]["RewardItem"][19] = {}
tAccountForSale_Data[3322232]["RewardItem"][19]["Id"] = 3322190
tAccountForSale_Data[3322232]["RewardItem"][19]["Attr"] = "0 60"
tAccountForSale_Data[3322232]["RewardItem"][20] = {}
tAccountForSale_Data[3322232]["RewardItem"][20]["Id"] = 3322191
tAccountForSale_Data[3322232]["RewardItem"][20]["Attr"] = "0 72"
tAccountForSale_Data[3322232]["RewardItem"][21] = {}
tAccountForSale_Data[3322232]["RewardItem"][21]["Id"] = 3322192
tAccountForSale_Data[3322232]["RewardItem"][21]["Attr"] = "0 48"

--驯兽师 40个偷走的马鞍
tAccountForSale_Data[3322232]["RewardItem"][22] = {}
tAccountForSale_Data[3322232]["RewardItem"][22]["Id"] = 723903
tAccountForSale_Data[3322232]["RewardItem"][22]["Attr"] = "0 40"

tAccountForSale_Data[3322232]["RewardEMoney"] = {}
tAccountForSale_Data[3322232]["RewardEMoney"]["Value"] = 4000
tAccountForSale_Data[3322232]["EmoneyLog"] = "10000	0537	-4000	-4000	0	"

tAccountForSale_Data[3322232]["RewardCultivation"] = {}
tAccountForSale_Data[3322232]["RewardCultivation"]["Value"] = 7600

tAccountForSale_Data[3322232]["RewardEffect"] = {}
tAccountForSale_Data[3322232]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAccountForSale_Data[3322232]["RewardEffect"]["Effect"] = "angelwing"

--武僧
tAccountForSale_Data[3322233]={}
tAccountForSale_Data[3322233]["LogId"] = 12001476
tAccountForSale_Data[3322233]["DeleteItem"] = {}
tAccountForSale_Data[3322233]["DeleteItem"][1] = {}
tAccountForSale_Data[3322233]["DeleteItem"][1]["Id"] = 3322233

--装备
tAccountForSale_Data[3322233]["RewardItem"] = {}
--武器
tAccountForSale_Data[3322233]["RewardItem"][1] = {}
tAccountForSale_Data[3322233]["RewardItem"][1]["Id"] = 610199
tAccountForSale_Data[3322233]["RewardItem"][1]["Attr"] = "0 2 3 0 0 0 0 3 200 0 7 13"
--甲
tAccountForSale_Data[3322233]["RewardItem"][2] = {}
tAccountForSale_Data[3322233]["RewardItem"][2]["Id"] = 136089
tAccountForSale_Data[3322233]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
--头
tAccountForSale_Data[3322233]["RewardItem"][3] = {}
tAccountForSale_Data[3322233]["RewardItem"][3]["Id"] = 143089
tAccountForSale_Data[3322233]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"

--通用
tAccountForSale_Data[3322233]["RewardItem"][4] = {}
tAccountForSale_Data[3322233]["RewardItem"][4]["Id"] = 150199
tAccountForSale_Data[3322233]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
tAccountForSale_Data[3322233]["RewardItem"][5] = {}
tAccountForSale_Data[3322233]["RewardItem"][5]["Id"] = 120189
tAccountForSale_Data[3322233]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
tAccountForSale_Data[3322233]["RewardItem"][6] = {}
tAccountForSale_Data[3322233]["RewardItem"][6]["Id"] = 160199
tAccountForSale_Data[3322233]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
tAccountForSale_Data[3322233]["RewardItem"][7] = {}
tAccountForSale_Data[3322233]["RewardItem"][7]["Id"] = 300000
tAccountForSale_Data[3322233]["RewardItem"][7]["Attr"] = "0 0 3 0 0 0 9830655 150 0 0 7 0 0 0 0 0 0 255"
tAccountForSale_Data[3322233]["RewardItem"][8] = {}
tAccountForSale_Data[3322233]["RewardItem"][8]["Id"] = 201009
tAccountForSale_Data[3322233]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7 103"
tAccountForSale_Data[3322233]["RewardItem"][9] = {}
tAccountForSale_Data[3322233]["RewardItem"][9]["Id"] = 203009
tAccountForSale_Data[3322233]["RewardItem"][9]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7"
tAccountForSale_Data[3322233]["RewardItem"][10] = {}
tAccountForSale_Data[3322233]["RewardItem"][10]["Id"] = 202009
tAccountForSale_Data[3322233]["RewardItem"][10]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7 123"
tAccountForSale_Data[3322233]["RewardItem"][11] = {}
tAccountForSale_Data[3322233]["RewardItem"][11]["Id"] = 204009
tAccountForSale_Data[3322233]["RewardItem"][11]["Attr"] = "0 1 3 0 0 0 0 0 0 0 7 103"

--神纹

--红色
tAccountForSale_Data[3322233]["RewardItem"][12] = {}
tAccountForSale_Data[3322233]["RewardItem"][12]["Id"] = 4010401
tAccountForSale_Data[3322233]["RewardItem"][12]["Attr"] = "0 1 3"

--蓝色
tAccountForSale_Data[3322233]["RewardItem"][13] = {}
tAccountForSale_Data[3322233]["RewardItem"][13]["Id"] = 4020501
tAccountForSale_Data[3322233]["RewardItem"][13]["Attr"] = "0 1 3"

--黄色
tAccountForSale_Data[3322233]["RewardItem"][14] = {}
tAccountForSale_Data[3322233]["RewardItem"][14]["Id"] = 4030301
tAccountForSale_Data[3322233]["RewardItem"][14]["Attr"] = "0 1 3"
tAccountForSale_Data[3322233]["RewardItem"][15] = {}
tAccountForSale_Data[3322233]["RewardItem"][15]["Id"] = 4031001
tAccountForSale_Data[3322233]["RewardItem"][15]["Attr"] = "0 1 3"
tAccountForSale_Data[3322233]["RewardItem"][16] = {}
tAccountForSale_Data[3322233]["RewardItem"][16]["Id"] = 4031301
tAccountForSale_Data[3322233]["RewardItem"][16]["Attr"] = "0 1 3"

--灵宝葫芦
tAccountForSale_Data[3322233]["RewardItem"][17] = {}
tAccountForSale_Data[3322233]["RewardItem"][17]["Id"] = 2100025
tAccountForSale_Data[3322233]["RewardItem"][17]["Attr"] = "0 1 3"

--精炼 18级 85640=8*10000+5*1000+6*100+4*10 
--8个璀璨星陨石极运包 3322189
--5个1颗晶莹星陨石极运包 3322190
--6个1颗明亮星陨石极运包 3322191
--4个1颗微光星陨石极运包 3322192

--12件装备 所需个数*12
tAccountForSale_Data[3322233]["RewardItem"][18] = {}
tAccountForSale_Data[3322233]["RewardItem"][18]["Id"] = 3322189
tAccountForSale_Data[3322233]["RewardItem"][18]["Attr"] = "0 96"
tAccountForSale_Data[3322233]["RewardItem"][19] = {}
tAccountForSale_Data[3322233]["RewardItem"][19]["Id"] = 3322190
tAccountForSale_Data[3322233]["RewardItem"][19]["Attr"] = "0 60"
tAccountForSale_Data[3322233]["RewardItem"][20] = {}
tAccountForSale_Data[3322233]["RewardItem"][20]["Id"] = 3322191
tAccountForSale_Data[3322233]["RewardItem"][20]["Attr"] = "0 72"
tAccountForSale_Data[3322233]["RewardItem"][21] = {}
tAccountForSale_Data[3322233]["RewardItem"][21]["Id"] = 3322192
tAccountForSale_Data[3322233]["RewardItem"][21]["Attr"] = "0 48"

--驯兽师 40个偷走的马鞍
tAccountForSale_Data[3322233]["RewardItem"][22] = {}
tAccountForSale_Data[3322233]["RewardItem"][22]["Id"] = 723903
tAccountForSale_Data[3322233]["RewardItem"][22]["Attr"] = "0 40"

tAccountForSale_Data[3322233]["RewardEMoney"] = {}
tAccountForSale_Data[3322233]["RewardEMoney"]["Value"] = 4000
tAccountForSale_Data[3322233]["EmoneyLog"] = "10000	0537	-4000	-4000	0	"

tAccountForSale_Data[3322233]["RewardCultivation"] = {}
tAccountForSale_Data[3322233]["RewardCultivation"]["Value"] = 7600

tAccountForSale_Data[3322233]["RewardEffect"] = {}
tAccountForSale_Data[3322233]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAccountForSale_Data[3322233]["RewardEffect"]["Effect"] = "angelwing"

--海盗
tAccountForSale_Data[3322234]={}
tAccountForSale_Data[3322234]["LogId"] = 12001476
tAccountForSale_Data[3322234]["DeleteItem"] = {}
tAccountForSale_Data[3322234]["DeleteItem"][1] = {}
tAccountForSale_Data[3322234]["DeleteItem"][1]["Id"] = 3322234

--装备
tAccountForSale_Data[3322234]["RewardItem"] = {}
--武器
tAccountForSale_Data[3322234]["RewardItem"][1] = {}
tAccountForSale_Data[3322234]["RewardItem"][1]["Id"] = 611199
tAccountForSale_Data[3322234]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
--甲
tAccountForSale_Data[3322234]["RewardItem"][2] = {}
tAccountForSale_Data[3322234]["RewardItem"][2]["Id"] = 139089
tAccountForSale_Data[3322234]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
--头
tAccountForSale_Data[3322234]["RewardItem"][3] = {}
tAccountForSale_Data[3322234]["RewardItem"][3]["Id"] = 145089
tAccountForSale_Data[3322234]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"

--通用
tAccountForSale_Data[3322234]["RewardItem"][4] = {}
tAccountForSale_Data[3322234]["RewardItem"][4]["Id"] = 150199
tAccountForSale_Data[3322234]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
tAccountForSale_Data[3322234]["RewardItem"][5] = {}
tAccountForSale_Data[3322234]["RewardItem"][5]["Id"] = 120189
tAccountForSale_Data[3322234]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
tAccountForSale_Data[3322234]["RewardItem"][6] = {}
tAccountForSale_Data[3322234]["RewardItem"][6]["Id"] = 160199
tAccountForSale_Data[3322234]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
tAccountForSale_Data[3322234]["RewardItem"][7] = {}
tAccountForSale_Data[3322234]["RewardItem"][7]["Id"] = 300000
tAccountForSale_Data[3322234]["RewardItem"][7]["Attr"] = "0 0 3 0 0 0 9830655 150 0 0 7 0 0 0 0 0 0 255"
tAccountForSale_Data[3322234]["RewardItem"][8] = {}
tAccountForSale_Data[3322234]["RewardItem"][8]["Id"] = 201009
tAccountForSale_Data[3322234]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7 103"
tAccountForSale_Data[3322234]["RewardItem"][9] = {}
tAccountForSale_Data[3322234]["RewardItem"][9]["Id"] = 203009
tAccountForSale_Data[3322234]["RewardItem"][9]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7"
tAccountForSale_Data[3322234]["RewardItem"][10] = {}
tAccountForSale_Data[3322234]["RewardItem"][10]["Id"] = 202009
tAccountForSale_Data[3322234]["RewardItem"][10]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7 123"
tAccountForSale_Data[3322234]["RewardItem"][11] = {}
tAccountForSale_Data[3322234]["RewardItem"][11]["Id"] = 204009
tAccountForSale_Data[3322234]["RewardItem"][11]["Attr"] = "0 1 3 0 0 0 0 0 0 0 7 103"

--神纹

--红色
tAccountForSale_Data[3322234]["RewardItem"][12] = {}
tAccountForSale_Data[3322234]["RewardItem"][12]["Id"] = 4010501
tAccountForSale_Data[3322234]["RewardItem"][12]["Attr"] = "0 1 3"

--蓝色
tAccountForSale_Data[3322234]["RewardItem"][13] = {}
tAccountForSale_Data[3322234]["RewardItem"][13]["Id"] = 4020601
tAccountForSale_Data[3322234]["RewardItem"][13]["Attr"] = "0 1 3"

--黄色
tAccountForSale_Data[3322234]["RewardItem"][14] = {}
tAccountForSale_Data[3322234]["RewardItem"][14]["Id"] = 4030301
tAccountForSale_Data[3322234]["RewardItem"][14]["Attr"] = "0 1 3"
tAccountForSale_Data[3322234]["RewardItem"][15] = {}
tAccountForSale_Data[3322234]["RewardItem"][15]["Id"] = 4031001
tAccountForSale_Data[3322234]["RewardItem"][15]["Attr"] = "0 1 3"
tAccountForSale_Data[3322234]["RewardItem"][16] = {}
tAccountForSale_Data[3322234]["RewardItem"][16]["Id"] = 4031301
tAccountForSale_Data[3322234]["RewardItem"][16]["Attr"] = "0 1 3"

--灵宝葫芦
tAccountForSale_Data[3322234]["RewardItem"][17] = {}
tAccountForSale_Data[3322234]["RewardItem"][17]["Id"] = 2100025
tAccountForSale_Data[3322234]["RewardItem"][17]["Attr"] = "0 1 3"

--精炼 18级 85640=8*10000+5*1000+6*100+4*10 
--8个璀璨星陨石极运包 3322189
--5个1颗晶莹星陨石极运包 3322190
--6个1颗明亮星陨石极运包 3322191
--4个1颗微光星陨石极运包 3322192

--12件装备 所需个数*12
tAccountForSale_Data[3322234]["RewardItem"][18] = {}
tAccountForSale_Data[3322234]["RewardItem"][18]["Id"] = 3322189
tAccountForSale_Data[3322234]["RewardItem"][18]["Attr"] = "0 96"
tAccountForSale_Data[3322234]["RewardItem"][19] = {}
tAccountForSale_Data[3322234]["RewardItem"][19]["Id"] = 3322190
tAccountForSale_Data[3322234]["RewardItem"][19]["Attr"] = "0 60"
tAccountForSale_Data[3322234]["RewardItem"][20] = {}
tAccountForSale_Data[3322234]["RewardItem"][20]["Id"] = 3322191
tAccountForSale_Data[3322234]["RewardItem"][20]["Attr"] = "0 72"
tAccountForSale_Data[3322234]["RewardItem"][21] = {}
tAccountForSale_Data[3322234]["RewardItem"][21]["Id"] = 3322192
tAccountForSale_Data[3322234]["RewardItem"][21]["Attr"] = "0 48"

--驯兽师 40个偷走的马鞍
tAccountForSale_Data[3322234]["RewardItem"][22] = {}
tAccountForSale_Data[3322234]["RewardItem"][22]["Id"] = 723903
tAccountForSale_Data[3322234]["RewardItem"][22]["Attr"] = "0 40"

tAccountForSale_Data[3322234]["RewardItem"][23] = {}
tAccountForSale_Data[3322234]["RewardItem"][23]["Id"] = 612199
tAccountForSale_Data[3322234]["RewardItem"][23]["Attr"] = "0 1 3 0 0 0 0 7 200 0 3 13"

tAccountForSale_Data[3322234]["RewardEMoney"] = {}
tAccountForSale_Data[3322234]["RewardEMoney"]["Value"] = 4000
tAccountForSale_Data[3322234]["EmoneyLog"] = "10000	0537	-4000	-4000	0	"

tAccountForSale_Data[3322234]["RewardCultivation"] = {}
tAccountForSale_Data[3322234]["RewardCultivation"]["Value"] = 7600

tAccountForSale_Data[3322234]["RewardEffect"] = {}
tAccountForSale_Data[3322234]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAccountForSale_Data[3322234]["RewardEffect"]["Effect"] = "angelwing"

--小龙
tAccountForSale_Data[3322235]={}
tAccountForSale_Data[3322235]["LogId"] = 12001476
tAccountForSale_Data[3322235]["DeleteItem"] = {}
tAccountForSale_Data[3322235]["DeleteItem"][1] = {}
tAccountForSale_Data[3322235]["DeleteItem"][1]["Id"] = 3322235

--装备
tAccountForSale_Data[3322235]["RewardItem"] = {}
--武器（待定）
tAccountForSale_Data[3322235]["RewardItem"][1] = {}
tAccountForSale_Data[3322235]["RewardItem"][1]["Id"] = 617199
tAccountForSale_Data[3322235]["RewardItem"][1]["Attr"] = "0 2 3 0 0 0 0 3 200 0 7 13"
--甲（待定）
tAccountForSale_Data[3322235]["RewardItem"][2] = {}
tAccountForSale_Data[3322235]["RewardItem"][2]["Id"] = 138089
tAccountForSale_Data[3322235]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
--头（待定）
tAccountForSale_Data[3322235]["RewardItem"][3] = {}
tAccountForSale_Data[3322235]["RewardItem"][3]["Id"] = 148089
tAccountForSale_Data[3322235]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"

--通用
tAccountForSale_Data[3322235]["RewardItem"][4] = {}
tAccountForSale_Data[3322235]["RewardItem"][4]["Id"] = 150199
tAccountForSale_Data[3322235]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
tAccountForSale_Data[3322235]["RewardItem"][5] = {}
tAccountForSale_Data[3322235]["RewardItem"][5]["Id"] = 120189
tAccountForSale_Data[3322235]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
tAccountForSale_Data[3322235]["RewardItem"][6] = {}
tAccountForSale_Data[3322235]["RewardItem"][6]["Id"] = 160199
tAccountForSale_Data[3322235]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
tAccountForSale_Data[3322235]["RewardItem"][7] = {}
tAccountForSale_Data[3322235]["RewardItem"][7]["Id"] = 300000
tAccountForSale_Data[3322235]["RewardItem"][7]["Attr"] = "0 0 3 0 0 0 9830655 150 0 0 7 0 0 0 0 0 0 255"
tAccountForSale_Data[3322235]["RewardItem"][8] = {}
tAccountForSale_Data[3322235]["RewardItem"][8]["Id"] = 201009
tAccountForSale_Data[3322235]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7 103"
tAccountForSale_Data[3322235]["RewardItem"][9] = {}
tAccountForSale_Data[3322235]["RewardItem"][9]["Id"] = 203009
tAccountForSale_Data[3322235]["RewardItem"][9]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7"
tAccountForSale_Data[3322235]["RewardItem"][10] = {}
tAccountForSale_Data[3322235]["RewardItem"][10]["Id"] = 202009
tAccountForSale_Data[3322235]["RewardItem"][10]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7 123"
tAccountForSale_Data[3322235]["RewardItem"][11] = {}
tAccountForSale_Data[3322235]["RewardItem"][11]["Id"] = 204009
tAccountForSale_Data[3322235]["RewardItem"][11]["Attr"] = "0 1 3 0 0 0 0 0 0 0 7 103"

--神纹

--红色
tAccountForSale_Data[3322235]["RewardItem"][12] = {}
tAccountForSale_Data[3322235]["RewardItem"][12]["Id"] = 4010601
tAccountForSale_Data[3322235]["RewardItem"][12]["Attr"] = "0 1 3"

--蓝色
tAccountForSale_Data[3322235]["RewardItem"][13] = {}
tAccountForSale_Data[3322235]["RewardItem"][13]["Id"] = 4020701
tAccountForSale_Data[3322235]["RewardItem"][13]["Attr"] = "0 1 3"

--黄色
tAccountForSale_Data[3322235]["RewardItem"][14] = {}
tAccountForSale_Data[3322235]["RewardItem"][14]["Id"] = 4030301
tAccountForSale_Data[3322235]["RewardItem"][14]["Attr"] = "0 1 3"
tAccountForSale_Data[3322235]["RewardItem"][15] = {}
tAccountForSale_Data[3322235]["RewardItem"][15]["Id"] = 4031001
tAccountForSale_Data[3322235]["RewardItem"][15]["Attr"] = "0 1 3"
tAccountForSale_Data[3322235]["RewardItem"][16] = {}
tAccountForSale_Data[3322235]["RewardItem"][16]["Id"] = 4031301
tAccountForSale_Data[3322235]["RewardItem"][16]["Attr"] = "0 1 3"

--灵宝葫芦
tAccountForSale_Data[3322235]["RewardItem"][17] = {}
tAccountForSale_Data[3322235]["RewardItem"][17]["Id"] = 2100025
tAccountForSale_Data[3322235]["RewardItem"][17]["Attr"] = "0 1 3"

--精炼 18级 85640=8*10000+5*1000+6*100+4*10 
--8个璀璨星陨石极运包 3322189
--5个1颗晶莹星陨石极运包 3322190
--6个1颗明亮星陨石极运包 3322191
--4个1颗微光星陨石极运包 3322192

--12件装备 所需个数*12
tAccountForSale_Data[3322235]["RewardItem"][18] = {}
tAccountForSale_Data[3322235]["RewardItem"][18]["Id"] = 3322189
tAccountForSale_Data[3322235]["RewardItem"][18]["Attr"] = "0 96"
tAccountForSale_Data[3322235]["RewardItem"][19] = {}
tAccountForSale_Data[3322235]["RewardItem"][19]["Id"] = 3322190
tAccountForSale_Data[3322235]["RewardItem"][19]["Attr"] = "0 60"
tAccountForSale_Data[3322235]["RewardItem"][20] = {}
tAccountForSale_Data[3322235]["RewardItem"][20]["Id"] = 3322191
tAccountForSale_Data[3322235]["RewardItem"][20]["Attr"] = "0 72"
tAccountForSale_Data[3322235]["RewardItem"][21] = {}
tAccountForSale_Data[3322235]["RewardItem"][21]["Id"] = 3322192
tAccountForSale_Data[3322235]["RewardItem"][21]["Attr"] = "0 48"

--驯兽师 40个偷走的马鞍
tAccountForSale_Data[3322235]["RewardItem"][22] = {}
tAccountForSale_Data[3322235]["RewardItem"][22]["Id"] = 723903
tAccountForSale_Data[3322235]["RewardItem"][22]["Attr"] = "0 40"

tAccountForSale_Data[3322235]["RewardEMoney"] = {}
tAccountForSale_Data[3322235]["RewardEMoney"]["Value"] = 4000
tAccountForSale_Data[3322235]["EmoneyLog"] = "10000	0537	-4000	-4000	0	"

tAccountForSale_Data[3322235]["RewardCultivation"] = {}
tAccountForSale_Data[3322235]["RewardCultivation"]["Value"] = 7600

tAccountForSale_Data[3322235]["RewardEffect"] = {}
tAccountForSale_Data[3322235]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAccountForSale_Data[3322235]["RewardEffect"]["Effect"] = "angelwing"

--勇士
tAccountForSale_Data[3322236]={}
tAccountForSale_Data[3322236]["LogId"] = 12001476
tAccountForSale_Data[3322236]["DeleteItem"] = {}
tAccountForSale_Data[3322236]["DeleteItem"][1] = {}
tAccountForSale_Data[3322236]["DeleteItem"][1]["Id"] = 3322236

--装备
tAccountForSale_Data[3322236]["RewardItem"] = {}
--武器
tAccountForSale_Data[3322236]["RewardItem"][1] = {}
tAccountForSale_Data[3322236]["RewardItem"][1]["Id"] = 420199
tAccountForSale_Data[3322236]["RewardItem"][1]["Attr"] = "0 2 3 0 0 0 0 3 200 0 7 13"
--甲
tAccountForSale_Data[3322236]["RewardItem"][2] = {}
tAccountForSale_Data[3322236]["RewardItem"][2]["Id"] = 130089
tAccountForSale_Data[3322236]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
--头
tAccountForSale_Data[3322236]["RewardItem"][3] = {}
tAccountForSale_Data[3322236]["RewardItem"][3]["Id"] = 118089
tAccountForSale_Data[3322236]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"

--通用
tAccountForSale_Data[3322236]["RewardItem"][4] = {}
tAccountForSale_Data[3322236]["RewardItem"][4]["Id"] = 150199
tAccountForSale_Data[3322236]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
tAccountForSale_Data[3322236]["RewardItem"][5] = {}
tAccountForSale_Data[3322236]["RewardItem"][5]["Id"] = 120189
tAccountForSale_Data[3322236]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
tAccountForSale_Data[3322236]["RewardItem"][6] = {}
tAccountForSale_Data[3322236]["RewardItem"][6]["Id"] = 160199
tAccountForSale_Data[3322236]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 3 200 0 7 13"
tAccountForSale_Data[3322236]["RewardItem"][7] = {}
tAccountForSale_Data[3322236]["RewardItem"][7]["Id"] = 300000
tAccountForSale_Data[3322236]["RewardItem"][7]["Attr"] = "0 0 3 0 0 0 9830655 150 0 0 7 0 0 0 0 0 0 255"
tAccountForSale_Data[3322236]["RewardItem"][8] = {}
tAccountForSale_Data[3322236]["RewardItem"][8]["Id"] = 201009
tAccountForSale_Data[3322236]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7 103"
tAccountForSale_Data[3322236]["RewardItem"][9] = {}
tAccountForSale_Data[3322236]["RewardItem"][9]["Id"] = 203009
tAccountForSale_Data[3322236]["RewardItem"][9]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7"
tAccountForSale_Data[3322236]["RewardItem"][10] = {}
tAccountForSale_Data[3322236]["RewardItem"][10]["Id"] = 202009
tAccountForSale_Data[3322236]["RewardItem"][10]["Attr"] = "0 1 3 0 0 0 0 1 0 0 7 123"
tAccountForSale_Data[3322236]["RewardItem"][11] = {}
tAccountForSale_Data[3322236]["RewardItem"][11]["Id"] = 204009
tAccountForSale_Data[3322236]["RewardItem"][11]["Attr"] = "0 1 3 0 0 0 0 0 0 0 7 103"

--神纹

--红色
tAccountForSale_Data[3322236]["RewardItem"][12] = {}
tAccountForSale_Data[3322236]["RewardItem"][12]["Id"] = 4010001
tAccountForSale_Data[3322236]["RewardItem"][12]["Attr"] = "0 1 3"

--蓝色
tAccountForSale_Data[3322236]["RewardItem"][13] = {}
tAccountForSale_Data[3322236]["RewardItem"][13]["Id"] = 4020101
tAccountForSale_Data[3322236]["RewardItem"][13]["Attr"] = "0 1 3"

--黄色
tAccountForSale_Data[3322236]["RewardItem"][14] = {}
tAccountForSale_Data[3322236]["RewardItem"][14]["Id"] = 4030301
tAccountForSale_Data[3322236]["RewardItem"][14]["Attr"] = "0 1 3"
tAccountForSale_Data[3322236]["RewardItem"][15] = {}
tAccountForSale_Data[3322236]["RewardItem"][15]["Id"] = 4031001
tAccountForSale_Data[3322236]["RewardItem"][15]["Attr"] = "0 1 3"
tAccountForSale_Data[3322236]["RewardItem"][16] = {}
tAccountForSale_Data[3322236]["RewardItem"][16]["Id"] = 4031301
tAccountForSale_Data[3322236]["RewardItem"][16]["Attr"] = "0 1 3"

--灵宝葫芦
tAccountForSale_Data[3322236]["RewardItem"][17] = {}
tAccountForSale_Data[3322236]["RewardItem"][17]["Id"] = 2100025
tAccountForSale_Data[3322236]["RewardItem"][17]["Attr"] = "0 1 3"

--精炼 18级 85640=8*10000+5*1000+6*100+4*10 
--8个璀璨星陨石极运包 3322189
--5个1颗晶莹星陨石极运包 3322190
--6个1颗明亮星陨石极运包 3322191
--4个1颗微光星陨石极运包 3322192

--12件装备 所需个数*12
tAccountForSale_Data[3322236]["RewardItem"][18] = {}
tAccountForSale_Data[3322236]["RewardItem"][18]["Id"] = 3322189
tAccountForSale_Data[3322236]["RewardItem"][18]["Attr"] = "0 96"
tAccountForSale_Data[3322236]["RewardItem"][19] = {}
tAccountForSale_Data[3322236]["RewardItem"][19]["Id"] = 3322190
tAccountForSale_Data[3322236]["RewardItem"][19]["Attr"] = "0 60"
tAccountForSale_Data[3322236]["RewardItem"][20] = {}
tAccountForSale_Data[3322236]["RewardItem"][20]["Id"] = 3322191
tAccountForSale_Data[3322236]["RewardItem"][20]["Attr"] = "0 72"
tAccountForSale_Data[3322236]["RewardItem"][21] = {}
tAccountForSale_Data[3322236]["RewardItem"][21]["Id"] = 3322192
tAccountForSale_Data[3322236]["RewardItem"][21]["Attr"] = "0 48"

--驯兽师 40个偷走的马鞍
tAccountForSale_Data[3322236]["RewardItem"][22] = {}
tAccountForSale_Data[3322236]["RewardItem"][22]["Id"] = 723903
tAccountForSale_Data[3322236]["RewardItem"][22]["Attr"] = "0 40"

tAccountForSale_Data[3322236]["RewardEMoney"] = {}
tAccountForSale_Data[3322236]["RewardEMoney"]["Value"] = 4000
tAccountForSale_Data[3322236]["EmoneyLog"] = "10000	0537	-4000	-4000	0	"

tAccountForSale_Data[3322236]["RewardCultivation"] = {}
tAccountForSale_Data[3322236]["RewardCultivation"]["Value"] = 7600

tAccountForSale_Data[3322236]["RewardEffect"] = {}
tAccountForSale_Data[3322236]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAccountForSale_Data[3322236]["RewardEffect"]["Effect"] = "angelwing"


------铁扇门、狂战士、水道士、火道士、弓手、忍者、武僧、海盗、小龙+12的号，下列表格属性，一套非稀有神纹（1红1蓝3黄【杀破狼、奔雷不息、狂暴净化】）

--海盗
tAccountForSale_Data[3322237]={}
tAccountForSale_Data[3322237]["LogId"] = 12001476
tAccountForSale_Data[3322237]["DeleteItem"] = {}
tAccountForSale_Data[3322237]["DeleteItem"][1] = {}
tAccountForSale_Data[3322237]["DeleteItem"][1]["Id"] = 3322237

--装备
tAccountForSale_Data[3322237]["RewardItem"] = {}
--武器
tAccountForSale_Data[3322237]["RewardItem"][1] = {}
tAccountForSale_Data[3322237]["RewardItem"][1]["Id"] = 611239
tAccountForSale_Data[3322237]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 12 13 13"
--甲
tAccountForSale_Data[3322237]["RewardItem"][2] = {}
tAccountForSale_Data[3322237]["RewardItem"][2]["Id"] = 139109
tAccountForSale_Data[3322237]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 5 255 0 12 13 13"
--头
tAccountForSale_Data[3322237]["RewardItem"][3] = {}
tAccountForSale_Data[3322237]["RewardItem"][3]["Id"] = 145109
tAccountForSale_Data[3322237]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 5 255 0 12 13 13"

--通用
tAccountForSale_Data[3322237]["RewardItem"][4] = {}
tAccountForSale_Data[3322237]["RewardItem"][4]["Id"] = 150239
tAccountForSale_Data[3322237]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 5 255 0 12 13 13"
tAccountForSale_Data[3322237]["RewardItem"][5] = {}
tAccountForSale_Data[3322237]["RewardItem"][5]["Id"] = 120229
tAccountForSale_Data[3322237]["RewardItem"][5]["Attr"] ="0 1 3 0 0 0 0 5 255 0 12 13 13"
tAccountForSale_Data[3322237]["RewardItem"][6] = {}
tAccountForSale_Data[3322237]["RewardItem"][6]["Id"] = 160229
tAccountForSale_Data[3322237]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 5 255 0 12 13 13"
tAccountForSale_Data[3322237]["RewardItem"][7] = {}
tAccountForSale_Data[3322237]["RewardItem"][7]["Id"] = 300000
tAccountForSale_Data[3322237]["RewardItem"][7]["Attr"] = "0 0 3 0 0 0 9830655 150 0 0 12 0 0 0 0 0 0 255"
tAccountForSale_Data[3322237]["RewardItem"][8] = {}
tAccountForSale_Data[3322237]["RewardItem"][8]["Id"] = 201009
tAccountForSale_Data[3322237]["RewardItem"][8]["Attr"] ="0 1 3 0 0 0 0 1 0 0 12 103 103"
tAccountForSale_Data[3322237]["RewardItem"][9] = {}
tAccountForSale_Data[3322237]["RewardItem"][9]["Id"] = 203009
tAccountForSale_Data[3322237]["RewardItem"][9]["Attr"] =  "0 1 3 0 0 0 0 1 0 0 12"
tAccountForSale_Data[3322237]["RewardItem"][10] = {}
tAccountForSale_Data[3322237]["RewardItem"][10]["Id"] = 202009
tAccountForSale_Data[3322237]["RewardItem"][10]["Attr"] =  "0 1 3 0 0 0 0 1 0 0 12 123 123"
tAccountForSale_Data[3322237]["RewardItem"][11] = {}
tAccountForSale_Data[3322237]["RewardItem"][11]["Id"] = 204009
tAccountForSale_Data[3322237]["RewardItem"][11]["Attr"] = "0 1 3 0 0 0 0 0 0 0 12 103 123"

--神纹

--红色
tAccountForSale_Data[3322237]["RewardItem"][12] = {}
tAccountForSale_Data[3322237]["RewardItem"][12]["Id"] = 4010501
tAccountForSale_Data[3322237]["RewardItem"][12]["Attr"] = "0 1 3"

--蓝色
tAccountForSale_Data[3322237]["RewardItem"][13] = {}
tAccountForSale_Data[3322237]["RewardItem"][13]["Id"] = 4020601
tAccountForSale_Data[3322237]["RewardItem"][13]["Attr"] = "0 1 3"

--黄色
tAccountForSale_Data[3322237]["RewardItem"][14] = {}
tAccountForSale_Data[3322237]["RewardItem"][14]["Id"] = 4030901
tAccountForSale_Data[3322237]["RewardItem"][14]["Attr"] = "0 1 3"
tAccountForSale_Data[3322237]["RewardItem"][15] = {}
tAccountForSale_Data[3322237]["RewardItem"][15]["Id"] = 4031101
tAccountForSale_Data[3322237]["RewardItem"][15]["Attr"] = "0 1 3"
tAccountForSale_Data[3322237]["RewardItem"][16] = {}
tAccountForSale_Data[3322237]["RewardItem"][16]["Id"] = 4033601
tAccountForSale_Data[3322237]["RewardItem"][16]["Attr"] = "0 1 3"

--灵宝葫芦
tAccountForSale_Data[3322237]["RewardItem"][17] = {}
tAccountForSale_Data[3322237]["RewardItem"][17]["Id"] = 2100025
tAccountForSale_Data[3322237]["RewardItem"][17]["Attr"] = "0 1 3"

--精炼 27级 193640=19*10000+3*1000+6*100+4*10 
--19个璀璨星陨石极运包 3322189
--3个1颗晶莹星陨石极运包 3322190
--6个1颗明亮星陨石极运包 3322191
--4个1颗微光星陨石极运包 3322192

--12件装备 所需个数*12
tAccountForSale_Data[3322237]["RewardItem"][18] = {}
tAccountForSale_Data[3322237]["RewardItem"][18]["Id"] = 3322189
tAccountForSale_Data[3322237]["RewardItem"][18]["Attr"] = "0 228"
tAccountForSale_Data[3322237]["RewardItem"][19] = {}
tAccountForSale_Data[3322237]["RewardItem"][19]["Id"] = 3322190
tAccountForSale_Data[3322237]["RewardItem"][19]["Attr"] = "0 36"
tAccountForSale_Data[3322237]["RewardItem"][20] = {}
tAccountForSale_Data[3322237]["RewardItem"][20]["Id"] = 3322191
tAccountForSale_Data[3322237]["RewardItem"][20]["Attr"] = "0 72"
tAccountForSale_Data[3322237]["RewardItem"][21] = {}
tAccountForSale_Data[3322237]["RewardItem"][21]["Id"] = 3322192
tAccountForSale_Data[3322237]["RewardItem"][21]["Attr"] = "0 48"

--驯兽师 40个偷走的马鞍
tAccountForSale_Data[3322237]["RewardItem"][22] = {}
tAccountForSale_Data[3322237]["RewardItem"][22]["Id"] = 723903
tAccountForSale_Data[3322237]["RewardItem"][22]["Attr"] = "0 40"

tAccountForSale_Data[3322237]["RewardItem"][23] = {}
tAccountForSale_Data[3322237]["RewardItem"][23]["Id"] = 612239
tAccountForSale_Data[3322237]["RewardItem"][23]["Attr"] = "0 1 3 0 0 0 0 5 255 0 12 13 13"

tAccountForSale_Data[3322237]["RewardEMoney"] = {}
tAccountForSale_Data[3322237]["RewardEMoney"]["Value"] = 4000
tAccountForSale_Data[3322237]["EmoneyLog"] = "10000	0537	-4000	-4000	0	"

tAccountForSale_Data[3322237]["RewardCultivation"] = {}
tAccountForSale_Data[3322237]["RewardCultivation"]["Value"] = 40000

tAccountForSale_Data[3322237]["RewardEffect"] = {}
tAccountForSale_Data[3322237]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAccountForSale_Data[3322237]["RewardEffect"]["Effect"] = "angelwing"


--铁扇门
tAccountForSale_Data[3322238]={}
tAccountForSale_Data[3322238]["LogId"] = 12001476
tAccountForSale_Data[3322238]["DeleteItem"] = {}
tAccountForSale_Data[3322238]["DeleteItem"][1] = {}
tAccountForSale_Data[3322238]["DeleteItem"][1]["Id"] = 3322238

--装备
tAccountForSale_Data[3322238]["RewardItem"] = {}
--武器
tAccountForSale_Data[3322238]["RewardItem"][1] = {}
tAccountForSale_Data[3322238]["RewardItem"][1]["Id"] = 626239
tAccountForSale_Data[3322238]["RewardItem"][1]["Attr"] = "0 2 3 0 0 0 0 5 255 0 12 13 13"
--甲
tAccountForSale_Data[3322238]["RewardItem"][2] = {}
tAccountForSale_Data[3322238]["RewardItem"][2]["Id"] = 101109
tAccountForSale_Data[3322238]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 5 255 0 12 13 13"
--头
tAccountForSale_Data[3322238]["RewardItem"][3] = {}
tAccountForSale_Data[3322238]["RewardItem"][3]["Id"] = 170109
tAccountForSale_Data[3322238]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 5 255 0 12 13 13"

--通用
tAccountForSale_Data[3322238]["RewardItem"][4] = {}
tAccountForSale_Data[3322238]["RewardItem"][4]["Id"] = 150239
tAccountForSale_Data[3322238]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 5 255 0 12 13 13"
tAccountForSale_Data[3322238]["RewardItem"][5] = {}
tAccountForSale_Data[3322238]["RewardItem"][5]["Id"] = 120229
tAccountForSale_Data[3322238]["RewardItem"][5]["Attr"] ="0 1 3 0 0 0 0 5 255 0 12 13 13"
tAccountForSale_Data[3322238]["RewardItem"][6] = {}
tAccountForSale_Data[3322238]["RewardItem"][6]["Id"] = 160229
tAccountForSale_Data[3322238]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 5 255 0 12 13 13"
tAccountForSale_Data[3322238]["RewardItem"][7] = {}
tAccountForSale_Data[3322238]["RewardItem"][7]["Id"] = 300000
tAccountForSale_Data[3322238]["RewardItem"][7]["Attr"] = "0 0 3 0 0 0 9830655 150 0 0 12 0 0 0 0 0 0 255"
tAccountForSale_Data[3322238]["RewardItem"][8] = {}
tAccountForSale_Data[3322238]["RewardItem"][8]["Id"] = 201009
tAccountForSale_Data[3322238]["RewardItem"][8]["Attr"] ="0 1 3 0 0 0 0 1 0 0 12 103 103"
tAccountForSale_Data[3322238]["RewardItem"][9] = {}
tAccountForSale_Data[3322238]["RewardItem"][9]["Id"] = 203009
tAccountForSale_Data[3322238]["RewardItem"][9]["Attr"] =  "0 1 3 0 0 0 0 1 0 0 12"
tAccountForSale_Data[3322238]["RewardItem"][10] = {}
tAccountForSale_Data[3322238]["RewardItem"][10]["Id"] = 202009
tAccountForSale_Data[3322238]["RewardItem"][10]["Attr"] =  "0 1 3 0 0 0 0 1 0 0 12 123 123"
tAccountForSale_Data[3322238]["RewardItem"][11] = {}
tAccountForSale_Data[3322238]["RewardItem"][11]["Id"] = 204009
tAccountForSale_Data[3322238]["RewardItem"][11]["Attr"] = "0 1 3 0 0 0 0 0 0 0 12 103 123"

--神纹

--红色
tAccountForSale_Data[3322238]["RewardItem"][12] = {}
tAccountForSale_Data[3322238]["RewardItem"][12]["Id"] = 4010901
tAccountForSale_Data[3322238]["RewardItem"][12]["Attr"] = "0 1 3"

--蓝色
tAccountForSale_Data[3322238]["RewardItem"][13] = {}
tAccountForSale_Data[3322238]["RewardItem"][13]["Id"] = 4021001
tAccountForSale_Data[3322238]["RewardItem"][13]["Attr"] = "0 1 3"

--黄色
tAccountForSale_Data[3322238]["RewardItem"][14] = {}
tAccountForSale_Data[3322238]["RewardItem"][14]["Id"] = 4030901
tAccountForSale_Data[3322238]["RewardItem"][14]["Attr"] = "0 1 3"
tAccountForSale_Data[3322238]["RewardItem"][15] = {}
tAccountForSale_Data[3322238]["RewardItem"][15]["Id"] = 4031101
tAccountForSale_Data[3322238]["RewardItem"][15]["Attr"] = "0 1 3"
tAccountForSale_Data[3322238]["RewardItem"][16] = {}
tAccountForSale_Data[3322238]["RewardItem"][16]["Id"] = 4033601
tAccountForSale_Data[3322238]["RewardItem"][16]["Attr"] = "0 1 3"

--灵宝葫芦
tAccountForSale_Data[3322238]["RewardItem"][17] = {}
tAccountForSale_Data[3322238]["RewardItem"][17]["Id"] = 2100025
tAccountForSale_Data[3322238]["RewardItem"][17]["Attr"] = "0 1 3"

--精炼 27级 193640=19*10000+3*1000+6*100+4*10 
--19个璀璨星陨石极运包 3322189
--3个1颗晶莹星陨石极运包 3322190
--6个1颗明亮星陨石极运包 3322191
--4个1颗微光星陨石极运包 3322192

--12件装备 所需个数*12
tAccountForSale_Data[3322238]["RewardItem"][18] = {}
tAccountForSale_Data[3322238]["RewardItem"][18]["Id"] = 3322189
tAccountForSale_Data[3322238]["RewardItem"][18]["Attr"] = "0 228"
tAccountForSale_Data[3322238]["RewardItem"][19] = {}
tAccountForSale_Data[3322238]["RewardItem"][19]["Id"] = 3322190
tAccountForSale_Data[3322238]["RewardItem"][19]["Attr"] = "0 36"
tAccountForSale_Data[3322238]["RewardItem"][20] = {}
tAccountForSale_Data[3322238]["RewardItem"][20]["Id"] = 3322191
tAccountForSale_Data[3322238]["RewardItem"][20]["Attr"] = "0 72"
tAccountForSale_Data[3322238]["RewardItem"][21] = {}
tAccountForSale_Data[3322238]["RewardItem"][21]["Id"] = 3322192
tAccountForSale_Data[3322238]["RewardItem"][21]["Attr"] = "0 48"

--驯兽师 40个偷走的马鞍
tAccountForSale_Data[3322238]["RewardItem"][22] = {}
tAccountForSale_Data[3322238]["RewardItem"][22]["Id"] = 723903
tAccountForSale_Data[3322238]["RewardItem"][22]["Attr"] = "0 40"

tAccountForSale_Data[3322238]["RewardEMoney"] = {}
tAccountForSale_Data[3322238]["RewardEMoney"]["Value"] = 4000
tAccountForSale_Data[3322238]["EmoneyLog"] = "10000	0537	-4000	-4000	0	"

tAccountForSale_Data[3322238]["RewardCultivation"] = {}
tAccountForSale_Data[3322238]["RewardCultivation"]["Value"] = 40000

tAccountForSale_Data[3322238]["RewardEffect"] = {}
tAccountForSale_Data[3322238]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAccountForSale_Data[3322238]["RewardEffect"]["Effect"] = "angelwing"


--火道士
tAccountForSale_Data[3322239]={}
tAccountForSale_Data[3322239]["LogId"] = 12001476
tAccountForSale_Data[3322239]["DeleteItem"] = {}
tAccountForSale_Data[3322239]["DeleteItem"][1] = {}
tAccountForSale_Data[3322239]["DeleteItem"][1]["Id"] = 3322239

--装备
tAccountForSale_Data[3322239]["RewardItem"] = {}
--武器
tAccountForSale_Data[3322239]["RewardItem"][1] = {}
tAccountForSale_Data[3322239]["RewardItem"][1]["Id"] = 421239
tAccountForSale_Data[3322239]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 12 03 03"
--甲
tAccountForSale_Data[3322239]["RewardItem"][2] = {}
tAccountForSale_Data[3322239]["RewardItem"][2]["Id"] = 134109
tAccountForSale_Data[3322239]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 5 255 0 12 03 03"
--头
tAccountForSale_Data[3322239]["RewardItem"][3] = {}
tAccountForSale_Data[3322239]["RewardItem"][3]["Id"] = 114109
tAccountForSale_Data[3322239]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 5 255 0 12 03 03"

--通用
tAccountForSale_Data[3322239]["RewardItem"][4] = {}
tAccountForSale_Data[3322239]["RewardItem"][4]["Id"] = 152249
tAccountForSale_Data[3322239]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 5 255 0 12 03 03"
tAccountForSale_Data[3322239]["RewardItem"][5] = {}
tAccountForSale_Data[3322239]["RewardItem"][5]["Id"] = 121239
tAccountForSale_Data[3322239]["RewardItem"][5]["Attr"] ="0 1 3 0 0 0 0 5 255 0 12 03 03"
tAccountForSale_Data[3322239]["RewardItem"][6] = {}
tAccountForSale_Data[3322239]["RewardItem"][6]["Id"] = 160229
tAccountForSale_Data[3322239]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 5 255 0 12 03 03"
tAccountForSale_Data[3322239]["RewardItem"][7] = {}
tAccountForSale_Data[3322239]["RewardItem"][7]["Id"] = 300000
tAccountForSale_Data[3322239]["RewardItem"][7]["Attr"] = "0 0 3 0 0 0 9830655 150 0 0 12 0 0 0 0 0 0 255"
tAccountForSale_Data[3322239]["RewardItem"][8] = {}
tAccountForSale_Data[3322239]["RewardItem"][8]["Id"] = 201009
tAccountForSale_Data[3322239]["RewardItem"][8]["Attr"] ="0 1 3 0 0 0 0 1 0 0 12 103 103"
tAccountForSale_Data[3322239]["RewardItem"][9] = {}
tAccountForSale_Data[3322239]["RewardItem"][9]["Id"] = 203009
tAccountForSale_Data[3322239]["RewardItem"][9]["Attr"] =  "0 1 3 0 0 0 0 1 0 0 12"
tAccountForSale_Data[3322239]["RewardItem"][10] = {}
tAccountForSale_Data[3322239]["RewardItem"][10]["Id"] = 202009
tAccountForSale_Data[3322239]["RewardItem"][10]["Attr"] =  "0 1 3 0 0 0 0 1 0 0 12 123 123"
tAccountForSale_Data[3322239]["RewardItem"][11] = {}
tAccountForSale_Data[3322239]["RewardItem"][11]["Id"] = 204009
tAccountForSale_Data[3322239]["RewardItem"][11]["Attr"] = "0 1 3 0 0 0 0 0 0 0 12 103 123"

--神纹

--红色
tAccountForSale_Data[3322239]["RewardItem"][12] = {}
tAccountForSale_Data[3322239]["RewardItem"][12]["Id"] = 4010801
tAccountForSale_Data[3322239]["RewardItem"][12]["Attr"] = "0 1 3"

--蓝色
tAccountForSale_Data[3322239]["RewardItem"][13] = {}
tAccountForSale_Data[3322239]["RewardItem"][13]["Id"] = 4020901
tAccountForSale_Data[3322239]["RewardItem"][13]["Attr"] = "0 1 3"

--黄色
tAccountForSale_Data[3322239]["RewardItem"][14] = {}
tAccountForSale_Data[3322239]["RewardItem"][14]["Id"] = 4030901
tAccountForSale_Data[3322239]["RewardItem"][14]["Attr"] = "0 1 3"
tAccountForSale_Data[3322239]["RewardItem"][15] = {}
tAccountForSale_Data[3322239]["RewardItem"][15]["Id"] = 4031101
tAccountForSale_Data[3322239]["RewardItem"][15]["Attr"] = "0 1 3"
tAccountForSale_Data[3322239]["RewardItem"][16] = {}
tAccountForSale_Data[3322239]["RewardItem"][16]["Id"] = 4033601
tAccountForSale_Data[3322239]["RewardItem"][16]["Attr"] = "0 1 3"

--灵宝葫芦
tAccountForSale_Data[3322239]["RewardItem"][17] = {}
tAccountForSale_Data[3322239]["RewardItem"][17]["Id"] = 2100025
tAccountForSale_Data[3322239]["RewardItem"][17]["Attr"] = "0 1 3"

--精炼 27级 193640=19*10000+3*1000+6*100+4*10 
--19个璀璨星陨石极运包 3322189
--3个1颗晶莹星陨石极运包 3322190
--6个1颗明亮星陨石极运包 3322191
--4个1颗微光星陨石极运包 3322192

--12件装备 所需个数*12
tAccountForSale_Data[3322239]["RewardItem"][18] = {}
tAccountForSale_Data[3322239]["RewardItem"][18]["Id"] = 3322189
tAccountForSale_Data[3322239]["RewardItem"][18]["Attr"] = "0 228"
tAccountForSale_Data[3322239]["RewardItem"][19] = {}
tAccountForSale_Data[3322239]["RewardItem"][19]["Id"] = 3322190
tAccountForSale_Data[3322239]["RewardItem"][19]["Attr"] = "0 36"
tAccountForSale_Data[3322239]["RewardItem"][20] = {}
tAccountForSale_Data[3322239]["RewardItem"][20]["Id"] = 3322191
tAccountForSale_Data[3322239]["RewardItem"][20]["Attr"] = "0 72"
tAccountForSale_Data[3322239]["RewardItem"][21] = {}
tAccountForSale_Data[3322239]["RewardItem"][21]["Id"] = 3322192
tAccountForSale_Data[3322239]["RewardItem"][21]["Attr"] = "0 48"

--驯兽师 40个偷走的马鞍
tAccountForSale_Data[3322239]["RewardItem"][22] = {}
tAccountForSale_Data[3322239]["RewardItem"][22]["Id"] = 723903
tAccountForSale_Data[3322239]["RewardItem"][22]["Attr"] = "0 40"

tAccountForSale_Data[3322239]["RewardItem"][23] = {}
tAccountForSale_Data[3322239]["RewardItem"][23]["Id"] = 619239
tAccountForSale_Data[3322239]["RewardItem"][23]["Attr"] = "0 1 3 0 0 0 0 5 255 0 12"

tAccountForSale_Data[3322239]["RewardEMoney"] = {}
tAccountForSale_Data[3322239]["RewardEMoney"]["Value"] = 4000
tAccountForSale_Data[3322239]["EmoneyLog"] = "10000	0537	-4000	-4000	0	"

tAccountForSale_Data[3322239]["RewardCultivation"] = {}
tAccountForSale_Data[3322239]["RewardCultivation"]["Value"] = 40000

tAccountForSale_Data[3322239]["RewardEffect"] = {}
tAccountForSale_Data[3322239]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAccountForSale_Data[3322239]["RewardEffect"]["Effect"] = "angelwing"


----3、勇士+12，有百兵谱专供号（百兵谱9把武器等级全满，属性平均90分，下列表格属性，一套非稀有神纹（1红 ，1蓝5黄【追命、夺魂、憾星诀、万物生、无懈可击】全部+3等级））
tAccountForSale_Data[3322240]={}
tAccountForSale_Data[3322240]["LogId"] = 12001476
tAccountForSale_Data[3322240]["DeleteItem"] = {}
tAccountForSale_Data[3322240]["DeleteItem"][1] = {}
tAccountForSale_Data[3322240]["DeleteItem"][1]["Id"] = 3322240
--装备
tAccountForSale_Data[3322240]["RewardItem"] = {}
tAccountForSale_Data[3322240]["RewardItem"][1] = {}
tAccountForSale_Data[3322240]["RewardItem"][1]["Id"] = 420439
tAccountForSale_Data[3322240]["RewardItem"][1]["Attr"] = "0 2 3 0 0 0 0 7 255 0 12 13 13"
tAccountForSale_Data[3322240]["RewardItem"][2] = {}
tAccountForSale_Data[3322240]["RewardItem"][2]["Id"] = 130309
tAccountForSale_Data[3322240]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"
tAccountForSale_Data[3322240]["RewardItem"][3] = {}
tAccountForSale_Data[3322240]["RewardItem"][3]["Id"] = 118309
tAccountForSale_Data[3322240]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"
tAccountForSale_Data[3322240]["RewardItem"][4] = {}
tAccountForSale_Data[3322240]["RewardItem"][4]["Id"] = 150269
tAccountForSale_Data[3322240]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"
tAccountForSale_Data[3322240]["RewardItem"][5] = {}
tAccountForSale_Data[3322240]["RewardItem"][5]["Id"] = 120269
tAccountForSale_Data[3322240]["RewardItem"][5]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"
tAccountForSale_Data[3322240]["RewardItem"][6] = {}
tAccountForSale_Data[3322240]["RewardItem"][6]["Id"] = 160249
tAccountForSale_Data[3322240]["RewardItem"][6]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 13 13"
tAccountForSale_Data[3322240]["RewardItem"][7] = {}
tAccountForSale_Data[3322240]["RewardItem"][7]["Id"] = 300000
tAccountForSale_Data[3322240]["RewardItem"][7]["Attr"] = "0 0 3 0 0 0 9830655 150 0 0 12 0 0 0 0 0 0 255"
tAccountForSale_Data[3322240]["RewardItem"][8] = {}
tAccountForSale_Data[3322240]["RewardItem"][8]["Id"] = 201009
tAccountForSale_Data[3322240]["RewardItem"][8]["Attr"] = "0 1 3 0 0 0 0 1 0 0 12 103 103"
tAccountForSale_Data[3322240]["RewardItem"][9] = {}
tAccountForSale_Data[3322240]["RewardItem"][9]["Id"] = 203009
tAccountForSale_Data[3322240]["RewardItem"][9]["Attr"] = "0 1 3 0 0 0 0 1 0 0 12"
tAccountForSale_Data[3322240]["RewardItem"][10] = {}
tAccountForSale_Data[3322240]["RewardItem"][10]["Id"] = 202009
tAccountForSale_Data[3322240]["RewardItem"][10]["Attr"] = "0 1 3 0 0 0 0 1 0 0 12 123 123"
tAccountForSale_Data[3322240]["RewardItem"][11] = {}
tAccountForSale_Data[3322240]["RewardItem"][11]["Id"] = 204009
tAccountForSale_Data[3322240]["RewardItem"][11]["Attr"] = "0 1 3 0 0 0 0 0 0 0 12 103 123"

--神纹 红色 4010001 蓝色 4020103 黄色 4030203 4030403 4030503 4031003 4031303
tAccountForSale_Data[3322240]["RewardItem"][12] = {}
tAccountForSale_Data[3322240]["RewardItem"][12]["Id"] = 4010001
tAccountForSale_Data[3322240]["RewardItem"][12]["Attr"] = "0 1 3"
tAccountForSale_Data[3322240]["RewardItem"][13] = {}
tAccountForSale_Data[3322240]["RewardItem"][13]["Id"] = 4020103
tAccountForSale_Data[3322240]["RewardItem"][13]["Attr"] = "0 1 3"
tAccountForSale_Data[3322240]["RewardItem"][14] = {}
tAccountForSale_Data[3322240]["RewardItem"][14]["Id"] = 4030203
tAccountForSale_Data[3322240]["RewardItem"][14]["Attr"] = "0 1 3"
tAccountForSale_Data[3322240]["RewardItem"][15] = {}
tAccountForSale_Data[3322240]["RewardItem"][15]["Id"] = 4030403
tAccountForSale_Data[3322240]["RewardItem"][15]["Attr"] = "0 1 3"
tAccountForSale_Data[3322240]["RewardItem"][16] = {}
tAccountForSale_Data[3322240]["RewardItem"][16]["Id"] = 4030503
tAccountForSale_Data[3322240]["RewardItem"][16]["Attr"] = "0 1 3"
tAccountForSale_Data[3322240]["RewardItem"][17] = {}
tAccountForSale_Data[3322240]["RewardItem"][17]["Id"] = 4031003
tAccountForSale_Data[3322240]["RewardItem"][17]["Attr"] = "0 1 3"
tAccountForSale_Data[3322240]["RewardItem"][18] = {}
tAccountForSale_Data[3322240]["RewardItem"][18]["Id"] = 4031303
tAccountForSale_Data[3322240]["RewardItem"][18]["Attr"] = "0 1 3"

--灵宝葫芦
tAccountForSale_Data[3322240]["RewardItem"][19] = {}
tAccountForSale_Data[3322240]["RewardItem"][19]["Id"] = 2100025
tAccountForSale_Data[3322240]["RewardItem"][19]["Attr"] = "0 1 3"

--精炼 54级 517640=51*10000+7*1000+6*100+4*10 
--51个璀璨星陨石极运包 3322189
--7个1颗晶莹星陨石极运包 3322190
--6个1颗明亮星陨石极运包 3322191
--4个1颗微光星陨石极运包 3322192

--12件装备 所需个数*12
tAccountForSale_Data[3322240]["RewardItem"][20] = {}
tAccountForSale_Data[3322240]["RewardItem"][20]["Id"] = 3322189
tAccountForSale_Data[3322240]["RewardItem"][20]["Attr"] = "0 612"
tAccountForSale_Data[3322240]["RewardItem"][21] = {}
tAccountForSale_Data[3322240]["RewardItem"][21]["Id"] = 3322190
tAccountForSale_Data[3322240]["RewardItem"][21]["Attr"] = "0 84"
tAccountForSale_Data[3322240]["RewardItem"][22] = {}
tAccountForSale_Data[3322240]["RewardItem"][22]["Id"] = 3322191
tAccountForSale_Data[3322240]["RewardItem"][22]["Attr"] = "0 72"
tAccountForSale_Data[3322240]["RewardItem"][23] = {}
tAccountForSale_Data[3322240]["RewardItem"][23]["Id"] = 3322192
tAccountForSale_Data[3322240]["RewardItem"][23]["Attr"] = "0 48"

--百兵谱9把武器都是满级9级，每把武器的四门属性分数都是90分
--每把满级经验 107100 所需神兵灵魄10710*9个
tAccountForSale_Data[3322240]["RewardItem"][24] = {}
tAccountForSale_Data[3322240]["RewardItem"][24]["Id"] = 3322170
tAccountForSale_Data[3322240]["RewardItem"][24]["Attr"] = "0 9"

--驯兽师 40个偷走的马鞍
tAccountForSale_Data[3322240]["RewardItem"][25] = {}
tAccountForSale_Data[3322240]["RewardItem"][25]["Id"] = 723903
tAccountForSale_Data[3322240]["RewardItem"][25]["Attr"] = "0 40"

tAccountForSale_Data[3322240]["RewardEMoney"] = {}
tAccountForSale_Data[3322240]["RewardEMoney"]["Value"] = 4000
tAccountForSale_Data[3322240]["EmoneyLog"] = "10000	0537	-4000	-4000	0	"

tAccountForSale_Data[3322240]["RewardCultivation"] = {}
tAccountForSale_Data[3322240]["RewardCultivation"]["Value"] = 40000

tAccountForSale_Data[3322240]["RewardEffect"] = {}
tAccountForSale_Data[3322240]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
tAccountForSale_Data[3322240]["RewardEffect"]["Effect"] = "angelwing"


----------------------------------逻辑部分---------------------------------------------

function AccountForSale_Unlock()
	local nUserId = Get_UserId()
	local nXCUserId = tAccountForSale_Data["UserId"]
	
	if nUserId == nXCUserId then 
		local nEventType1 = tAccountForSale_Data["Stc"][1]["EventType"]
		local nDataType1 = tAccountForSale_Data["Stc"][1]["DataType"] 
		local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
		if nData1 <= 0 then 
			local nTaskId = tAccountForSale_Data["TaskId"]
			if not Task_ChkTaskDetail(nTaskId) then 
				if not Task_AddTaskDetail(nTaskId) then 
					return
				end 
			end 
			
			Task_SetStatistic(nEventType1,nDataType1,1,1)
			
			Task_SetTaskDetailCompleteFlag(nTaskId,1)
			User_OpenDialog(980)
			
			for i = 1, 9 do 
				local nWeaponId = tAccountForSale_Data["WeaponId"][i]
				local nEventType = tAccountForSale_Data["Stc"][nWeaponId]["EventType"]
				local nDataType = tAccountForSale_Data["Stc"][nWeaponId]["DataType"] 
				local nData = Get_UserStatisticValue(nEventType,nDataType)
				if nData <= 0 then 
					User_AwardHundredWeapon(nWeaponId)
					Task_SetStatistic(nEventType,nDataType,1,1)
				end 
			end 
		end 
	end 
end 


function AccountForSale_Unlock1()
	local nUserId = Get_UserId()
	local nXCUserId = tAccountForSale_Data["UserId1"]
	
	if nUserId == nXCUserId then 
		local nEventType1 = tAccountForSale_Data["Stc"][2]["EventType"]
		local nDataType1 = tAccountForSale_Data["Stc"][2]["DataType"] 
		local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
		if nData1 <= 0 then 
			local nTaskId = tAccountForSale_Data["TaskId"]
			if not Task_ChkTaskDetail(nTaskId) then 
				if not Task_AddTaskDetail(nTaskId) then 
					return
				end 
			end 
			
			Task_SetStatistic(nEventType1,nDataType1,1,1)
			
			Task_SetTaskDetailCompleteFlag(nTaskId,1)
			User_OpenDialog(980)
			
			for i = 1, 9 do 
				local nWeaponId = tAccountForSale_Data["WeaponId"][i]
				local nEventType = tAccountForSale_Data["Stc"][nWeaponId]["EventType"]
				local nDataType = tAccountForSale_Data["Stc"][nWeaponId]["DataType"] 
				local nData = Get_UserStatisticValue(nEventType,nDataType)
				if nData <= 0 then 
					User_AwardHundredWeapon(nWeaponId)
					Task_SetStatistic(nEventType,nDataType,1,1)
				end 
			end 
		end 
	end 
end 


---------------------------------物品部分---------------------------------------------
tItem[3322163] = tItem[3322163] or {}
tItem[3322163]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tAccountForSale_Data[nItemId])
	
	if not bJudge then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tAccountForSale_Data[nItemId],nUserId,bJudge)
end

tItem[3322170] = tItem[3322163]

tItem[3322189] = tItem[3322163]
tItem[3322190] = tItem[3322163]
tItem[3322191] = tItem[3322163]
tItem[3322192] = tItem[3322163]

tItem[3322226] = tItem[3322163]
tItem[3322227] = tItem[3322163]
tItem[3322228] = tItem[3322163]
tItem[3322229] = tItem[3322163]
tItem[3322230] = tItem[3322163]
tItem[3322231] = tItem[3322163]
tItem[3322232] = tItem[3322163]
tItem[3322233] = tItem[3322163]
tItem[3322234] = tItem[3322163]
tItem[3322235] = tItem[3322163]
tItem[3322236] = tItem[3322163]
tItem[3322237] = tItem[3322163]
tItem[3322238] = tItem[3322163]
tItem[3322239] = tItem[3322163]
tItem[3322240] = tItem[3322163]

--------------------------------------上线触发-------------------------------------------
table.insert(tSystem_PlayLogin_Func,AccountForSale_Unlock)

--新增
table.insert(tSystem_PlayLogin_Func,AccountForSale_Unlock1)

