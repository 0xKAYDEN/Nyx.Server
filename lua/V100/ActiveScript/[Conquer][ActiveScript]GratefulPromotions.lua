-----------------------------------------------------------------------------------------------------
--Name:		171027[英文征服][活动脚本]感恩月促销
--Creator: 	洪聪敏
--Created:	2017/10/27
------------------------------------------------------------------------------------------------------
--命名前缀：GratefulPromotions 
--lua.ini:40717
--logid: 12000925
--stc掩码说明:
--	stc(169,19)		记录-玩家购买九转聚神丹感恩礼包数量
--	stc(169,20)		记录-玩家购买3000分钟经验感恩礼包数量
--	stc(169,27)		记录-玩家是否使用过代金券
--	stc(169,30)		记录-玩家是否已领取代金券
--	stc(169,31)		
--全局动态表说明
-- GlobalId：【51846】
-- data0：【八宝护气丹】的全服购买限制次数，每个抢购时间点内最多可购买20次
-- data1：【秘制免费修炼丹】的全服购买限制次数，每个抢购时间点内最多可购买30次
-- data2：【百炼天机果】的全服购买限制次数，每个抢购时间点内最多可购买10次
-- data3：【九转乾坤凝露】的全服购买限制次数，每个抢购时间点内最多可购买20次
-- data4：【二转券】的全服购买限制次数，每个抢购时间点内最多可购买10次
-- GlobalId：【51847】
-- data0：【EveningWear】的全服购买限制次数，每个抢购时间点内最多可购买3次
-- data1：【BloodThirst】的全服购买限制次数，每个抢购时间点内最多可购买3次
-- data2：【DancingDress】的全服购买限制次数，每个抢购时间点内最多可购买3次
-- data3：【StarryAngelicRobe】的全服购买限制次数，每个抢购时间点内最多可购买3次
-- data4：【ButterflyFlower】的全服购买限制次数，每个抢购时间点内最多可购买3次
-- data5：【玫瑰风暴神佑】的全服购买限制次数，每个抢购时间点内最多可购买3次

-- GlobalId：【51848】
-- data0：【SongofDespair】的全服购买限制次数，每个抢购时间点内最多可购买3次
-- data1：【LaveCatRobe【Charm】】的全服购买限制次数，每个抢购时间点内最多可购买3次
-- data2：【FoxSpirit【Charm】】的全服购买限制次数，每个抢购时间点内最多可购买3次
-- data3：【ArabicPride】的全服购买限制次数，每个抢购时间点内最多可购买3次
-- data4：【ButterflyFlower】的全服购买限制次数，每个抢购时间点内最多可购买3次
-- data5：【TurkeyRun】的全服购买限制次数，每个抢购时间点内最多可购买3次

-- GlobalId：【51849】
-- data0：【龙珠】的全服购买限制次数，每个抢购时间点内最多可购买10次
-- data1：【优质玄元宝石】的全服购买限制次数，每个抢购时间点内最多可购买5次
-- data2：【净水玉瓶】的全服购买限制次数，每个抢购时间点内最多可购买3次
-- data3：【+5赤炼石】的全服购买限制次数，每个抢购时间点内最多可购买3次
-- data4：【七星宝钻】的全服购买限制次数，每个抢购时间点内最多可购买3次
-- data5：【灵宝葫芦】的全服购买限制次数，每个抢购时间点内最多可购买3次

-- GlobalId  【51825】
-- data0：【5颗晶莹星陨石】的全服购买限制次数，每个抢购时间点内最多可购买3次
-- data1：标记全服物品购买限制的清理状态，0表示未清理，1表示已清理


-------------------------------------------------------------------------------------------------
--STC掩码
local tGratefulPromotions_Stc = {}
	--记录-玩家购买九转聚神丹感恩礼包数量
	tGratefulPromotions_Stc[3305981]={}
	tGratefulPromotions_Stc[3305981]["EventType"] = 169
	tGratefulPromotions_Stc[3305981]["DataType"] = 19
	--记录-玩家购买3000分钟经验感恩礼包数量
	tGratefulPromotions_Stc[3305982]={}
	tGratefulPromotions_Stc[3305982]["EventType"] = 169
	tGratefulPromotions_Stc[3305982]["DataType"] = 20
	--记录-玩家是否使用过代金券
	tGratefulPromotions_Stc[3]={}
	tGratefulPromotions_Stc[3]["EventType"] = 169
	tGratefulPromotions_Stc[3]["DataType"] = 27
	--记录-玩家是否领取过邮件
	tGratefulPromotions_Stc[4]={}
	tGratefulPromotions_Stc[4]["EventType"] = 169
	tGratefulPromotions_Stc[4]["DataType"] = 30

--常量部分
local tGratefulPromotions_Cont={}
	tGratefulPromotions_Cont["Emoney"] = 1
	tGratefulPromotions_Cont["Space"] = 1
	tGratefulPromotions_Cont["LimitGoods"] = 3
	tGratefulPromotions_Cont["Level"]=120
	tGratefulPromotions_Cont["Metempsychosis"]=2
	tGratefulPromotions_Cont["GlobalId1"]=51846
	tGratefulPromotions_Cont["GlobalId2"]=51847
	tGratefulPromotions_Cont["GlobalId3"]=51848
	tGratefulPromotions_Cont["GlobalId4"]=51849
	tGratefulPromotions_Cont["GlobalId5"]=51825

	-- 等级要求
	tGratefulPromotions_Cont["MinLevel"] = 120
	tGratefulPromotions_Cont["MinMeto"] = 0

	--每日删除代金券
	tGratefulPromotions_Cont["DelItemByMail"] ={3305974,3305975,3305977,3305979}

-------------------------------------------------
-- 上线触发几率发邮件
local tGratefulPromotions_MailReward = {}
	tGratefulPromotions_MailReward[1] = {}
	tGratefulPromotions_MailReward[1]["ItemChanceSum"] = 10000
	-- 35%几率		3305974
	tGratefulPromotions_MailReward[1][1] = {}
	tGratefulPromotions_MailReward[1][1]["RandomItemChanceType"] = 2
	tGratefulPromotions_MailReward[1][1]["ItemChance"] = 3500
	tGratefulPromotions_MailReward[1][1]["Item_1"] = 567290
	-- 30%几率		3305975
	tGratefulPromotions_MailReward[1][2] = {}
	tGratefulPromotions_MailReward[1][2]["RandomItemChanceType"] = 2
	tGratefulPromotions_MailReward[1][2]["ItemChance"] = 3000
	tGratefulPromotions_MailReward[1][2]["Item_1"] = 567291
	-- 30%几率		3305977
	tGratefulPromotions_MailReward[1][3] = {}
	tGratefulPromotions_MailReward[1][3]["RandomItemChanceType"] = 2
	tGratefulPromotions_MailReward[1][3]["ItemChance"] = 3000
	tGratefulPromotions_MailReward[1][3]["Item_1"] = 567292
	-- 5%几率		3305979
	tGratefulPromotions_MailReward[1][4] = {}
	tGratefulPromotions_MailReward[1][4]["RandomItemChanceType"] = 2
	tGratefulPromotions_MailReward[1][4]["ItemChance"] = 500
	tGratefulPromotions_MailReward[1][4]["Item_1"] = 567293

	
local tGratefulPromotions_Buy={}

	tGratefulPromotions_Buy[3305981]={}
	tGratefulPromotions_Buy[3305981]["RewardItem"] = {}
	tGratefulPromotions_Buy[3305981]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[3305981]["RewardItem"][1]["Id"] = 3305981
	tGratefulPromotions_Buy[3305981]["RewardItem"][1]["Attr"] = "0 1 3"
	tGratefulPromotions_Buy[3305981]["RewardEffect"] = {}
	tGratefulPromotions_Buy[3305981]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[3305981]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[3305981]["LogId"]=12000925
	
	tGratefulPromotions_Buy[3305982]={}
	tGratefulPromotions_Buy[3305982]["RewardItem"] = {}
	tGratefulPromotions_Buy[3305982]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[3305982]["RewardItem"][1]["Id"] = 3305982
	tGratefulPromotions_Buy[3305982]["RewardItem"][1]["Attr"] = "0 1 3"
	tGratefulPromotions_Buy[3305982]["RewardEffect"] = {}
	tGratefulPromotions_Buy[3305982]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[3305982]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[3305982]["LogId"]=12000925
	
	tGratefulPromotions_Buy[3305983]={}
	tGratefulPromotions_Buy[3305983]["RewardItem"] = {}
	tGratefulPromotions_Buy[3305983]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[3305983]["RewardItem"][1]["Id"] = 3305983
	tGratefulPromotions_Buy[3305983]["RewardItem"][1]["Attr"] = "0 1 3"
	tGratefulPromotions_Buy[3305983]["RewardEffect"] = {}
	tGratefulPromotions_Buy[3305983]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[3305983]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[3305983]["LogId"]=12000925
	
	tGratefulPromotions_Buy[3305984]={}
	tGratefulPromotions_Buy[3305984]["RewardItem"] = {}
	tGratefulPromotions_Buy[3305984]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[3305984]["RewardItem"][1]["Id"] = 3305984
	tGratefulPromotions_Buy[3305984]["RewardItem"][1]["Attr"] = "0 1 3"
	tGratefulPromotions_Buy[3305984]["RewardEffect"] = {}
	tGratefulPromotions_Buy[3305984]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[3305984]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[3305984]["LogId"]=12000925
	
	tGratefulPromotions_Buy[3305985]={}
	tGratefulPromotions_Buy[3305985]["RewardItem"] = {}
	tGratefulPromotions_Buy[3305985]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[3305985]["RewardItem"][1]["Id"] = 3305985
	tGratefulPromotions_Buy[3305985]["RewardItem"][1]["Attr"] = "0 1 3"
	tGratefulPromotions_Buy[3305985]["RewardEffect"] = {}
	tGratefulPromotions_Buy[3305985]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[3305985]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[3305985]["LogId"]=12000925
	
	tGratefulPromotions_Buy[3305986]={}
	tGratefulPromotions_Buy[3305986]["RewardItem"] = {}
	tGratefulPromotions_Buy[3305986]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[3305986]["RewardItem"][1]["Id"] = 3305986
	tGratefulPromotions_Buy[3305986]["RewardItem"][1]["Attr"] = "0 1 3"
	tGratefulPromotions_Buy[3305986]["RewardEffect"] = {}
	tGratefulPromotions_Buy[3305986]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[3305986]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[3305986]["LogId"]=12000925
	
	tGratefulPromotions_Buy[3305987]={}
	tGratefulPromotions_Buy[3305987]["RewardItem"] = {}
	tGratefulPromotions_Buy[3305987]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[3305987]["RewardItem"][1]["Id"] = 3305987
	tGratefulPromotions_Buy[3305987]["RewardItem"][1]["Attr"] = "0 1 3"
	tGratefulPromotions_Buy[3305987]["RewardEffect"] = {}
	tGratefulPromotions_Buy[3305987]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[3305987]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[3305987]["LogId"]=12000925
	
	tGratefulPromotions_Buy[3305988]={}
	tGratefulPromotions_Buy[3305988]["RewardItem"] = {}
	tGratefulPromotions_Buy[3305988]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[3305988]["RewardItem"][1]["Id"] = 3305988
	tGratefulPromotions_Buy[3305988]["RewardItem"][1]["Attr"] = "0 1 3"
	tGratefulPromotions_Buy[3305988]["RewardEffect"] = {}
	tGratefulPromotions_Buy[3305988]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[3305988]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[3305988]["LogId"]=12000925
	
	tGratefulPromotions_Buy[3305989]={}
	tGratefulPromotions_Buy[3305989]["RewardItem"] = {}
	tGratefulPromotions_Buy[3305989]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[3305989]["RewardItem"][1]["Id"] = 3305989
	tGratefulPromotions_Buy[3305989]["RewardItem"][1]["Attr"] = "0 1 3"
	tGratefulPromotions_Buy[3305989]["RewardEffect"] = {}
	tGratefulPromotions_Buy[3305989]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[3305989]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[3305989]["LogId"]=12000925

	
-- 阶段抢购NPC
tGratefulPromotions_Buy[22269] = {}
	--第一阶段抢购物品
	tGratefulPromotions_Buy[22269][1]={}
	--八宝护气丹
	tGratefulPromotions_Buy[22269][1][3005360]={}
	tGratefulPromotions_Buy[22269][1][3005360]["Price"]=50
	tGratefulPromotions_Buy[22269][1][3005360]["GlobalId"] = 51846
	tGratefulPromotions_Buy[22269][1][3005360]["Pos"] = 0
	tGratefulPromotions_Buy[22269][1][3005360]["Max"] = 20
	tGratefulPromotions_Buy[22269][1][3005360]["RewardItem"] = {}
	tGratefulPromotions_Buy[22269][1][3005360]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[22269][1][3005360]["RewardItem"][1]["Id"] = 3005360
	tGratefulPromotions_Buy[22269][1][3005360]["RewardItem"][1]["Attr"] = "0 1 3"
	tGratefulPromotions_Buy[22269][1][3005360]["RewardEffect"] = {}
	tGratefulPromotions_Buy[22269][1][3005360]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[22269][1][3005360]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[22269][1][3005360]["EmoneyLog"]="350	20902	50	50	1	"

	--秘制免费修炼丹
	tGratefulPromotions_Buy[22269][1][3002926]={}
	tGratefulPromotions_Buy[22269][1][3002926]["Price"]=15
	tGratefulPromotions_Buy[22269][1][3002926]["GlobalId"] = 51846
	tGratefulPromotions_Buy[22269][1][3002926]["Pos"] = 1
	tGratefulPromotions_Buy[22269][1][3002926]["Max"] = 30
	tGratefulPromotions_Buy[22269][1][3002926]["RewardItem"] = {}
	tGratefulPromotions_Buy[22269][1][3002926]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[22269][1][3002926]["RewardItem"][1]["Id"] = 3002926
	tGratefulPromotions_Buy[22269][1][3002926]["RewardItem"][1]["Attr"] = "0 1"
	tGratefulPromotions_Buy[22269][1][3002926]["RewardEffect"] = {}
	tGratefulPromotions_Buy[22269][1][3002926]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[22269][1][3002926]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[22269][1][3002926]["EmoneyLog"]="350	20903	15	15	1	"
	--百炼天机果
	tGratefulPromotions_Buy[22269][1][3001044]={}
	tGratefulPromotions_Buy[22269][1][3001044]["Price"]=99
	tGratefulPromotions_Buy[22269][1][3001044]["GlobalId"] = 51846
	tGratefulPromotions_Buy[22269][1][3001044]["Pos"] = 2
	tGratefulPromotions_Buy[22269][1][3001044]["Max"] = 10
	tGratefulPromotions_Buy[22269][1][3001044]["RewardItem"] = {}
	tGratefulPromotions_Buy[22269][1][3001044]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[22269][1][3001044]["RewardItem"][1]["Id"] = 3001044
	tGratefulPromotions_Buy[22269][1][3001044]["RewardItem"][1]["Attr"] = "0 1"
	tGratefulPromotions_Buy[22269][1][3001044]["RewardEffect"] = {}
	tGratefulPromotions_Buy[22269][1][3001044]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[22269][1][3001044]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[22269][1][3001044]["EmoneyLog"]="350	20904	99	99	1	"
	--九转乾坤凝露
	tGratefulPromotions_Buy[22269][1][711083]={}
	tGratefulPromotions_Buy[22269][1][711083]["Price"]=2
	tGratefulPromotions_Buy[22269][1][711083]["GlobalId"] = 51846
	tGratefulPromotions_Buy[22269][1][711083]["Pos"] = 3
	tGratefulPromotions_Buy[22269][1][711083]["Max"] = 20
	tGratefulPromotions_Buy[22269][1][711083]["RewardItem"] = {}
	tGratefulPromotions_Buy[22269][1][711083]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[22269][1][711083]["RewardItem"][1]["Id"] = 711083
	tGratefulPromotions_Buy[22269][1][711083]["RewardItem"][1]["Attr"] = "0 1"
	tGratefulPromotions_Buy[22269][1][711083]["RewardEffect"] = {}
	tGratefulPromotions_Buy[22269][1][711083]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[22269][1][711083]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[22269][1][711083]["EmoneyLog"]="350	20905	2	2	1	"
	--二转券
	tGratefulPromotions_Buy[22269][1][723701]={}
	tGratefulPromotions_Buy[22269][1][723701]["Price"]=399
	tGratefulPromotions_Buy[22269][1][723701]["GlobalId"] = 51846
	tGratefulPromotions_Buy[22269][1][723701]["Pos"] = 4
	tGratefulPromotions_Buy[22269][1][723701]["Max"] = 10
	tGratefulPromotions_Buy[22269][1][723701]["RewardItem"] = {}
	tGratefulPromotions_Buy[22269][1][723701]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[22269][1][723701]["RewardItem"][1]["Id"] = 723701
	tGratefulPromotions_Buy[22269][1][723701]["RewardItem"][1]["Attr"] = "0 1"
	tGratefulPromotions_Buy[22269][1][723701]["RewardEffect"] = {}
	tGratefulPromotions_Buy[22269][1][723701]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[22269][1][723701]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[22269][1][723701]["EmoneyLog"]="350	20906	399	399	1	"
	
	--第二阶段抢购物品
	--EveningWear
	tGratefulPromotions_Buy[22269][2]={}
	tGratefulPromotions_Buy[22269][2][184355]={}
	tGratefulPromotions_Buy[22269][2][184355]["Price"]=199
	tGratefulPromotions_Buy[22269][2][184355]["GlobalId"] = 51847
	tGratefulPromotions_Buy[22269][2][184355]["Pos"] = 0
	tGratefulPromotions_Buy[22269][2][184355]["Max"] = 3
	tGratefulPromotions_Buy[22269][2][184355]["RewardItem"] = {}
	tGratefulPromotions_Buy[22269][2][184355]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[22269][2][184355]["RewardItem"][1]["Id"] = 184355
	tGratefulPromotions_Buy[22269][2][184355]["RewardItem"][1]["Attr"] = "0 1"
	tGratefulPromotions_Buy[22269][2][184355]["RewardEffect"] = {}
	tGratefulPromotions_Buy[22269][2][184355]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[22269][2][184355]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[22269][2][184355]["EmoneyLog"]="350	20907	199	199	1	"
	--BloodThirst
	tGratefulPromotions_Buy[22269][2][187475]={}
	tGratefulPromotions_Buy[22269][2][187475]["Price"]=199
	tGratefulPromotions_Buy[22269][2][187475]["GlobalId"] = 51847
	tGratefulPromotions_Buy[22269][2][187475]["Pos"] = 1
	tGratefulPromotions_Buy[22269][2][187475]["Max"] = 3
	tGratefulPromotions_Buy[22269][2][187475]["RewardItem"] = {}
	tGratefulPromotions_Buy[22269][2][187475]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[22269][2][187475]["RewardItem"][1]["Id"] = 187475
	tGratefulPromotions_Buy[22269][2][187475]["RewardItem"][1]["Attr"] = "0 1"
	tGratefulPromotions_Buy[22269][2][187475]["RewardEffect"] = {}
	tGratefulPromotions_Buy[22269][2][187475]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[22269][2][187475]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[22269][2][187475]["EmoneyLog"]="350	20908	199	199	1	"
	--DancingDress
	tGratefulPromotions_Buy[22269][2][188285]={}
	tGratefulPromotions_Buy[22269][2][188285]["Price"]=199
	tGratefulPromotions_Buy[22269][2][188285]["GlobalId"] = 51847
	tGratefulPromotions_Buy[22269][2][188285]["Pos"] = 2
	tGratefulPromotions_Buy[22269][2][188285]["Max"] = 3
	tGratefulPromotions_Buy[22269][2][188285]["RewardItem"] = {}
	tGratefulPromotions_Buy[22269][2][188285]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[22269][2][188285]["RewardItem"][1]["Id"] = 188285
	tGratefulPromotions_Buy[22269][2][188285]["RewardItem"][1]["Attr"] = "0 1"
	tGratefulPromotions_Buy[22269][2][188285]["RewardEffect"] = {}
	tGratefulPromotions_Buy[22269][2][188285]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[22269][2][188285]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[22269][2][188285]["EmoneyLog"]="350	20909	199	199	1	"
	--90天时效StarryAngelicRobe
	tGratefulPromotions_Buy[22269][2][194385]={}
	tGratefulPromotions_Buy[22269][2][194385]["Price"]=99
	tGratefulPromotions_Buy[22269][2][194385]["GlobalId"] = 51847
	tGratefulPromotions_Buy[22269][2][194385]["Pos"] = 3
	tGratefulPromotions_Buy[22269][2][194385]["Max"] = 3
	tGratefulPromotions_Buy[22269][2][194385]["RewardItem"] = {}
	tGratefulPromotions_Buy[22269][2][194385]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[22269][2][194385]["RewardItem"][1]["Id"] = 194385
	tGratefulPromotions_Buy[22269][2][194385]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1"
	tGratefulPromotions_Buy[22269][2][194385]["RewardEffect"] = {}
	tGratefulPromotions_Buy[22269][2][194385]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[22269][2][194385]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[22269][2][194385]["EmoneyLog"]="350	20910	99	99	1	"
	--90天时效ButterflyFlower
	tGratefulPromotions_Buy[22269][2][193695]={}
	tGratefulPromotions_Buy[22269][2][193695]["Price"]=99
	tGratefulPromotions_Buy[22269][2][193695]["GlobalId"] = 51847
	tGratefulPromotions_Buy[22269][2][193695]["Pos"] = 4
	tGratefulPromotions_Buy[22269][2][193695]["Max"] = 3
	tGratefulPromotions_Buy[22269][2][193695]["RewardItem"] = {}
	tGratefulPromotions_Buy[22269][2][193695]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[22269][2][193695]["RewardItem"][1]["Id"] = 193695
	tGratefulPromotions_Buy[22269][2][193695]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1"
	tGratefulPromotions_Buy[22269][2][193695]["RewardEffect"] = {}
	tGratefulPromotions_Buy[22269][2][193695]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[22269][2][193695]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[22269][2][193695]["EmoneyLog"]="350	20911	99	99	1	"
	--90天时效玫瑰风暴神佑
	tGratefulPromotions_Buy[22269][2][3306357]={}
	tGratefulPromotions_Buy[22269][2][3306357]["Price"]=99
	tGratefulPromotions_Buy[22269][2][3306357]["GlobalId"] = 51847
	tGratefulPromotions_Buy[22269][2][3306357]["Pos"] = 5
	tGratefulPromotions_Buy[22269][2][3306357]["Max"] = 3
	tGratefulPromotions_Buy[22269][2][3306357]["RewardItem"] = {}
	tGratefulPromotions_Buy[22269][2][3306357]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[22269][2][3306357]["RewardItem"][1]["Id"] = 3306357
	tGratefulPromotions_Buy[22269][2][3306357]["RewardItem"][1]["Attr"] = "0 1"
	tGratefulPromotions_Buy[22269][2][3306357]["RewardEffect"] = {}
	tGratefulPromotions_Buy[22269][2][3306357]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[22269][2][3306357]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[22269][2][3306357]["EmoneyLog"]="350	20912	99	99	1	"
	--SongofDespair
	tGratefulPromotions_Buy[22269][2][193295]={}
	tGratefulPromotions_Buy[22269][2][193295]["Price"]=99
	tGratefulPromotions_Buy[22269][2][193295]["GlobalId"] = 51848
	tGratefulPromotions_Buy[22269][2][193295]["Pos"] = 0
	tGratefulPromotions_Buy[22269][2][193295]["Max"] = 3
	tGratefulPromotions_Buy[22269][2][193295]["RewardItem"] = {}
	tGratefulPromotions_Buy[22269][2][193295]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[22269][2][193295]["RewardItem"][1]["Id"] = 193295
	tGratefulPromotions_Buy[22269][2][193295]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1"
	tGratefulPromotions_Buy[22269][2][193295]["RewardEffect"] = {}
	tGratefulPromotions_Buy[22269][2][193295]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[22269][2][193295]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[22269][2][193295]["EmoneyLog"]="350	20913	99	99	1	"
	--LaveCatRobe【Charm】
	tGratefulPromotions_Buy[22269][2][193555]={}
	tGratefulPromotions_Buy[22269][2][193555]["Price"]=99
	tGratefulPromotions_Buy[22269][2][193555]["GlobalId"] = 51848
	tGratefulPromotions_Buy[22269][2][193555]["Pos"] = 1
	tGratefulPromotions_Buy[22269][2][193555]["Max"] = 3
	tGratefulPromotions_Buy[22269][2][193555]["RewardItem"] = {}
	tGratefulPromotions_Buy[22269][2][193555]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[22269][2][193555]["RewardItem"][1]["Id"] = 193555
	tGratefulPromotions_Buy[22269][2][193555]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1"
	tGratefulPromotions_Buy[22269][2][193555]["RewardEffect"] = {}
	tGratefulPromotions_Buy[22269][2][193555]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[22269][2][193555]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[22269][2][193555]["EmoneyLog"]="350	20914	99	99	1	"
	--FoxSpirit【Charm】
	tGratefulPromotions_Buy[22269][2][194405]={}
	tGratefulPromotions_Buy[22269][2][194405]["Price"]=99
	tGratefulPromotions_Buy[22269][2][194405]["GlobalId"] = 51848
	tGratefulPromotions_Buy[22269][2][194405]["Pos"] =2
	tGratefulPromotions_Buy[22269][2][194405]["Max"] = 3
	tGratefulPromotions_Buy[22269][2][194405]["RewardItem"] = {}
	tGratefulPromotions_Buy[22269][2][194405]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[22269][2][194405]["RewardItem"][1]["Id"] = 194405
	tGratefulPromotions_Buy[22269][2][194405]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1"
	tGratefulPromotions_Buy[22269][2][194405]["RewardEffect"] = {}
	tGratefulPromotions_Buy[22269][2][194405]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[22269][2][194405]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[22269][2][194405]["EmoneyLog"]="350	20915	99	99	1	"
	--90天时效ArabicPride
	tGratefulPromotions_Buy[22269][2][189645]={}
	tGratefulPromotions_Buy[22269][2][189645]["Price"]=99
	tGratefulPromotions_Buy[22269][2][189645]["GlobalId"] = 51848
	tGratefulPromotions_Buy[22269][2][189645]["Pos"] =3
	tGratefulPromotions_Buy[22269][2][189645]["Max"] = 3
	tGratefulPromotions_Buy[22269][2][189645]["RewardItem"] = {}
	tGratefulPromotions_Buy[22269][2][189645]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[22269][2][189645]["RewardItem"][1]["Id"] = 189645
	tGratefulPromotions_Buy[22269][2][189645]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1"
	tGratefulPromotions_Buy[22269][2][189645]["RewardEffect"] = {}
	tGratefulPromotions_Buy[22269][2][189645]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[22269][2][189645]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[22269][2][189645]["EmoneyLog"]="350	20916	99	99	1	"
	--TurkeyRun
	tGratefulPromotions_Buy[22269][2][200490]={}
	tGratefulPromotions_Buy[22269][2][200490]["Price"]=9
	tGratefulPromotions_Buy[22269][2][200490]["GlobalId"] = 51848
	tGratefulPromotions_Buy[22269][2][200490]["Pos"] =4
	tGratefulPromotions_Buy[22269][2][200490]["Max"] = 3
	tGratefulPromotions_Buy[22269][2][200490]["RewardItem"] = {}
	tGratefulPromotions_Buy[22269][2][200490]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[22269][2][200490]["RewardItem"][1]["Id"] = 200490
	tGratefulPromotions_Buy[22269][2][200490]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1"
	tGratefulPromotions_Buy[22269][2][200490]["RewardEffect"] = {}
	tGratefulPromotions_Buy[22269][2][200490]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[22269][2][200490]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[22269][2][200490]["EmoneyLog"]="350	20917	9	9	1	"
	
	--第三阶段抢购物品
	--龙珠
	tGratefulPromotions_Buy[22269][3]={}
	tGratefulPromotions_Buy[22269][3][1088000]={}
	tGratefulPromotions_Buy[22269][3][1088000]["Price"]=39
	tGratefulPromotions_Buy[22269][3][1088000]["GlobalId"] = 51849
	tGratefulPromotions_Buy[22269][3][1088000]["Pos"] =0
	tGratefulPromotions_Buy[22269][3][1088000]["Max"] = 10
	tGratefulPromotions_Buy[22269][3][1088000]["RewardItem"] = {}
	tGratefulPromotions_Buy[22269][3][1088000]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[22269][3][1088000]["RewardItem"][1]["Id"] = 1088000 
	tGratefulPromotions_Buy[22269][3][1088000]["RewardItem"][1]["Attr"] = "0 1"
	tGratefulPromotions_Buy[22269][3][1088000]["RewardEffect"] = {}
	tGratefulPromotions_Buy[22269][3][1088000]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[22269][3][1088000]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[22269][3][1088000]["EmoneyLog"]="350	20918	99	99	1	"
	--极品玄元
	tGratefulPromotions_Buy[22269][3][700073]={}
	tGratefulPromotions_Buy[22269][3][700073]["Price"]=259
	tGratefulPromotions_Buy[22269][3][700073]["GlobalId"] = 51849
	tGratefulPromotions_Buy[22269][3][700073]["Pos"] =1
	tGratefulPromotions_Buy[22269][3][700073]["Max"] = 3
	tGratefulPromotions_Buy[22269][3][700073]["RewardItem"] = {}
	tGratefulPromotions_Buy[22269][3][700073]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[22269][3][700073]["RewardItem"][1]["Id"] = 700073 
	tGratefulPromotions_Buy[22269][3][700073]["RewardItem"][1]["Attr"] = "0 1"
	tGratefulPromotions_Buy[22269][3][700073]["RewardEffect"] = {}
	tGratefulPromotions_Buy[22269][3][700073]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[22269][3][700073]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[22269][3][700073]["EmoneyLog"]="350	20920	259	259	1	"
	--净水玉瓶
	tGratefulPromotions_Buy[22269][3][2100045]={}
	tGratefulPromotions_Buy[22269][3][2100045]["Price"]=259
	tGratefulPromotions_Buy[22269][3][2100045]["GlobalId"] = 51849
	tGratefulPromotions_Buy[22269][3][2100045]["Pos"] =2
	tGratefulPromotions_Buy[22269][3][2100045]["Max"] = 3
	tGratefulPromotions_Buy[22269][3][2100045]["RewardItem"] = {}
	tGratefulPromotions_Buy[22269][3][2100045]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[22269][3][2100045]["RewardItem"][1]["Id"] = 2100045 
	tGratefulPromotions_Buy[22269][3][2100045]["RewardItem"][1]["Attr"] = "0 1"
	tGratefulPromotions_Buy[22269][3][2100045]["RewardEffect"] = {}
	tGratefulPromotions_Buy[22269][3][2100045]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[22269][3][2100045]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[22269][3][2100045]["EmoneyLog"]="350	20921	259	259	1	"
	--灵宝葫芦
	tGratefulPromotions_Buy[22269][3][2100025]={}
	tGratefulPromotions_Buy[22269][3][2100025]["Price"]=599
	tGratefulPromotions_Buy[22269][3][2100025]["GlobalId"] = 51849
	tGratefulPromotions_Buy[22269][3][2100025]["Pos"] =3
	tGratefulPromotions_Buy[22269][3][2100025]["Max"] = 3
	tGratefulPromotions_Buy[22269][3][2100025]["RewardItem"] = {}
	tGratefulPromotions_Buy[22269][3][2100025]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[22269][3][2100025]["RewardItem"][1]["Id"] = 2100025 
	tGratefulPromotions_Buy[22269][3][2100025]["RewardItem"][1]["Attr"] = "0 1"
	tGratefulPromotions_Buy[22269][3][2100025]["RewardEffect"] = {}
	tGratefulPromotions_Buy[22269][3][2100025]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[22269][3][2100025]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[22269][3][2100025]["EmoneyLog"]="350	20922	599	599	1	"
	--+5赤练石
	tGratefulPromotions_Buy[22269][3][730005]={}
	tGratefulPromotions_Buy[22269][3][730005]["Price"]=300
	tGratefulPromotions_Buy[22269][3][730005]["GlobalId"] = 51849
	tGratefulPromotions_Buy[22269][3][730005]["Pos"] =4
	tGratefulPromotions_Buy[22269][3][730005]["Max"] = 3
	tGratefulPromotions_Buy[22269][3][730005]["RewardItem"] = {}
	tGratefulPromotions_Buy[22269][3][730005]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[22269][3][730005]["RewardItem"][1]["Id"] = 730005 
	tGratefulPromotions_Buy[22269][3][730005]["RewardItem"][1]["Attr"] = "0 1"
	tGratefulPromotions_Buy[22269][3][730005]["RewardEffect"] = {}
	tGratefulPromotions_Buy[22269][3][730005]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[22269][3][730005]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[22269][3][730005]["EmoneyLog"]="350	20923	300	300	1	"
	--七星尖钻
	tGratefulPromotions_Buy[22269][3][1200006]={}
	tGratefulPromotions_Buy[22269][3][1200006]["Price"]=300
	tGratefulPromotions_Buy[22269][3][1200006]["GlobalId"] = 51849
	tGratefulPromotions_Buy[22269][3][1200006]["Pos"] =5
	tGratefulPromotions_Buy[22269][3][1200006]["Max"] = 3
	tGratefulPromotions_Buy[22269][3][1200006]["RewardItem"] = {}
	tGratefulPromotions_Buy[22269][3][1200006]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[22269][3][1200006]["RewardItem"][1]["Id"] = 1200006 
	tGratefulPromotions_Buy[22269][3][1200006]["RewardItem"][1]["Attr"] = "0 1"
	tGratefulPromotions_Buy[22269][3][1200006]["RewardEffect"] = {}
	tGratefulPromotions_Buy[22269][3][1200006]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[22269][3][1200006]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[22269][3][1200006]["EmoneyLog"]="350	20924	300	300	1	"
	--5·晶莹
	tGratefulPromotions_Buy[22269][3][3009002]={}
	tGratefulPromotions_Buy[22269][3][3009002]["Price"]=1599
	tGratefulPromotions_Buy[22269][3][3009002]["GlobalId"] = 51825
	tGratefulPromotions_Buy[22269][3][3009002]["Pos"] =0
	tGratefulPromotions_Buy[22269][3][3009002]["Max"] = 5
	tGratefulPromotions_Buy[22269][3][3009002]["RewardItem"] = {}
	tGratefulPromotions_Buy[22269][3][3009002]["RewardItem"][1] = {}
	tGratefulPromotions_Buy[22269][3][3009002]["RewardItem"][1]["Id"] = 3009002 
	tGratefulPromotions_Buy[22269][3][3009002]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tGratefulPromotions_Buy[22269][3][3009002]["RewardEffect"] = {}
	tGratefulPromotions_Buy[22269][3][3009002]["RewardEffect"]["SzObj"] = "self"
	tGratefulPromotions_Buy[22269][3][3009002]["RewardEffect"]["Effect"] = "zf2-e128"
	tGratefulPromotions_Buy[22269][3][3009002]["EmoneyLog"]="350	20919	1599	1599	1	"
--代金券表
	local tGratefulPromotions_Vouchers={}
	tGratefulPromotions_Vouchers[3305974]={}
	tGratefulPromotions_Vouchers[3305974]["Id"]=3305974
	tGratefulPromotions_Vouchers[3305974]["EMoney"]=10
	tGratefulPromotions_Vouchers[3305974]["MinEMoney"]=100
	tGratefulPromotions_Vouchers[3305974]["EMoneyLog"] = "350	20795	10	10	1	"
	
	tGratefulPromotions_Vouchers[3305975]={}
	tGratefulPromotions_Vouchers[3305975]["Id"]=3305975
	tGratefulPromotions_Vouchers[3305975]["EMoney"]=30
	tGratefulPromotions_Vouchers[3305975]["MinEMoney"]=200
	tGratefulPromotions_Vouchers[3305975]["EMoneyLog"] = "350	20796	30	30	1	"
	
	tGratefulPromotions_Vouchers[3305976]={}
	tGratefulPromotions_Vouchers[3305976]["Id"]=3305976
	tGratefulPromotions_Vouchers[3305976]["EMoney"]=40
	tGratefulPromotions_Vouchers[3305976]["MinEMoney"]=100
	tGratefulPromotions_Vouchers[3305976]["EMoneyLog"] = "350	20801	40	40	1	"
	
	tGratefulPromotions_Vouchers[3305977]={}
	tGratefulPromotions_Vouchers[3305977]["Id"]=3305977
	tGratefulPromotions_Vouchers[3305977]["EMoney"]=100
	tGratefulPromotions_Vouchers[3305977]["MinEMoney"]=1000
	tGratefulPromotions_Vouchers[3305977]["EMoneyLog"] = "350	20797	100	100	1	"
	
	tGratefulPromotions_Vouchers[3305978]={}
	tGratefulPromotions_Vouchers[3305978]["Id"]=3305978
	tGratefulPromotions_Vouchers[3305978]["EMoney"]=200
	tGratefulPromotions_Vouchers[3305978]["MinEMoney"]=1000
	tGratefulPromotions_Vouchers[3305978]["EMoneyLog"] = "350	20800	200	200	1	"
	
	tGratefulPromotions_Vouchers[3305979]={}
	tGratefulPromotions_Vouchers[3305979]["Id"]=3305979
	tGratefulPromotions_Vouchers[3305979]["EMoney"]=500
	tGratefulPromotions_Vouchers[3305979]["MinEMoney"]=5000
	tGratefulPromotions_Vouchers[3305979]["EMoneyLog"] = "350	20798	500	500	1	"
	
	tGratefulPromotions_Vouchers[3305980]={}
	tGratefulPromotions_Vouchers[3305980]["Id"]=3305980
	tGratefulPromotions_Vouchers[3305980]["EMoney"]=1000
	tGratefulPromotions_Vouchers[3305980]["MinEMoney"]=5000
	tGratefulPromotions_Vouchers[3305980]["EMoneyLog"] = "350	20799	1000	1000	1	"
--礼包打开部分
local tGratefulPromotions_Reward={}
	tGratefulPromotions_Reward[3305939]={}
	tGratefulPromotions_Reward[3305939]["DecEMoney"]=699
	tGratefulPromotions_Reward[3305939]["EmoneyLog"]="350	20811	699	699	1	"
	tGratefulPromotions_Reward[3305939]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305939]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305939]["DeleteItem"][1]["Id"] = 3305939
	-- AngelicRobe
	tGratefulPromotions_Reward[3305939]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305939]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305939]["RewardItem"][1]["Id"] = 194375 
	tGratefulPromotions_Reward[3305939]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tGratefulPromotions_Reward[3305939]["LogId"]=12000925
	
	
	tGratefulPromotions_Reward[3305940]={}
	tGratefulPromotions_Reward[3305940]["DecEMoney"]=499
	tGratefulPromotions_Reward[3305940]["EmoneyLog"]="350	20812	499	499	1	"
	tGratefulPromotions_Reward[3305940]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305940]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305940]["DeleteItem"][1]["Id"] = 3305940
	-- GoldCloth
	tGratefulPromotions_Reward[3305940]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305940]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305940]["RewardItem"][1]["Id"] = 188885 
	tGratefulPromotions_Reward[3305940]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tGratefulPromotions_Reward[3305940]["LogId"]=12000925
	
	tGratefulPromotions_Reward[3305941]={}
	tGratefulPromotions_Reward[3305941]["DecEMoney"]=499
	tGratefulPromotions_Reward[3305941]["EmoneyLog"]="350	20813	499	499	1	"
	tGratefulPromotions_Reward[3305941]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305941]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305941]["DeleteItem"][1]["Id"] = 3305941
	--RobeofDarkness
	tGratefulPromotions_Reward[3305941]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305941]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305941]["RewardItem"][1]["Id"] = 189035 
	tGratefulPromotions_Reward[3305941]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tGratefulPromotions_Reward[3305941]["LogId"]=12000925
	
	tGratefulPromotions_Reward[3305942]={}
	tGratefulPromotions_Reward[3305942]["DecEMoney"]=499 
	tGratefulPromotions_Reward[3305942]["EmoneyLog"]="350	20814	499	499	1	"
	tGratefulPromotions_Reward[3305942]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305942]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305942]["DeleteItem"][1]["Id"] = 3305942
	--FrozenFantasy
	tGratefulPromotions_Reward[3305942]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305942]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305942]["RewardItem"][1]["Id"] = 193515 
	tGratefulPromotions_Reward[3305942]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tGratefulPromotions_Reward[3305942]["LogId"]=12000925
	
	tGratefulPromotions_Reward[3305943]={}
	tGratefulPromotions_Reward[3305943]["DecEMoney"]=1599 
	tGratefulPromotions_Reward[3305943]["EmoneyLog"]="350	20815	1599	1599	1	"
	tGratefulPromotions_Reward[3305943]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305943]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305943]["DeleteItem"][1]["Id"] = 3305943
	--TurkeyRun
	tGratefulPromotions_Reward[3305943]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305943]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305943]["RewardItem"][1]["Id"] = 200490 
	tGratefulPromotions_Reward[3305943]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tGratefulPromotions_Reward[3305943]["LogId"]=12000925
	
	tGratefulPromotions_Reward[3305944]={}
	tGratefulPromotions_Reward[3305944]["DecEMoney"]=1599 
	tGratefulPromotions_Reward[3305944]["EmoneyLog"]="350	20816	1599	1599	1	"
	tGratefulPromotions_Reward[3305944]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305944]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305944]["DeleteItem"][1]["Id"] = 3305944
	--VirorousTurkey 
	tGratefulPromotions_Reward[3305944]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305944]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305944]["RewardItem"][1]["Id"] = 200493 
	tGratefulPromotions_Reward[3305944]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tGratefulPromotions_Reward[3305944]["LogId"]=12000925
	
	tGratefulPromotions_Reward[3305945]={}
	tGratefulPromotions_Reward[3305945]["DecEMoney"]=2999 
	tGratefulPromotions_Reward[3305945]["EmoneyLog"]="350	20817	2999	2999	1	"
	tGratefulPromotions_Reward[3305945]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305945]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305945]["DeleteItem"][1]["Id"] = 3305945
	--SpiritLion
	tGratefulPromotions_Reward[3305945]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305945]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305945]["RewardItem"][1]["Id"] = 200481 
	tGratefulPromotions_Reward[3305945]["RewardItem"][1]["Attr"] = "0 1"
	tGratefulPromotions_Reward[3305945]["LogId"]=12000925
	
	tGratefulPromotions_Reward[3305946]={}
	tGratefulPromotions_Reward[3305946]["DecEMoney"]=1599 
	tGratefulPromotions_Reward[3305946]["EmoneyLog"]="350	20818	1599	1599	1	"
	tGratefulPromotions_Reward[3305946]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305946]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305946]["DeleteItem"][1]["Id"] = 3305946
	--奇妙大风车武器外套
	tGratefulPromotions_Reward[3305946]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305946]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305946]["RewardItem"][1]["Id"] = 360172 
	tGratefulPromotions_Reward[3305946]["RewardItem"][1]["Attr"] ="0 1"
	tGratefulPromotions_Reward[3305946]["LogId"]=12000925
	
	tGratefulPromotions_Reward[3305947]={}
	tGratefulPromotions_Reward[3305947]["DecEMoney"]=7199 
	tGratefulPromotions_Reward[3305947]["EmoneyLog"]="350	20819	7199	7199	1	"
	tGratefulPromotions_Reward[3305947]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305947]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305947]["DeleteItem"][1]["Id"] = 3305947
	--马上有对象
	tGratefulPromotions_Reward[3305947]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305947]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305947]["RewardItem"][1]["Id"] = 200495 
	tGratefulPromotions_Reward[3305947]["RewardItem"][1]["Attr"] ="0 1"
	tGratefulPromotions_Reward[3305947]["LogId"]=12000925
	
	tGratefulPromotions_Reward[3305948]={}
	tGratefulPromotions_Reward[3305948]["DecEMoney"]=8888 
	tGratefulPromotions_Reward[3305948]["EmoneyLog"]="350	20820	8888	8888	1	"
	tGratefulPromotions_Reward[3305948]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305948]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305948]["DeleteItem"][1]["Id"] = 3305948
	--九尾天狐
	tGratefulPromotions_Reward[3305948]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305948]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305948]["RewardItem"][1]["Id"] = 200539 
	tGratefulPromotions_Reward[3305948]["RewardItem"][1]["Attr"] ="0 1"
	tGratefulPromotions_Reward[3305948]["LogId"]=12000925
	
	tGratefulPromotions_Reward[3305949]={}
	tGratefulPromotions_Reward[3305949]["DecEMoney"]=17999 
	tGratefulPromotions_Reward[3305949]["EmoneyLog"]="350	20821	17999	17999	1	"
	tGratefulPromotions_Reward[3305949]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305949]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305949]["DeleteItem"][1]["Id"] = 3305949
	--福来哥
	tGratefulPromotions_Reward[3305949]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305949]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305949]["RewardItem"][1]["Id"] = 200500 
	tGratefulPromotions_Reward[3305949]["RewardItem"][1]["Attr"] ="0 1"
	tGratefulPromotions_Reward[3305949]["LogId"]=12000925
	
	tGratefulPromotions_Reward[3305950]={}
	tGratefulPromotions_Reward[3305950]["DecEMoney"]=14399 
	tGratefulPromotions_Reward[3305950]["EmoneyLog"]="350	20822	14399	14399	1	"
	tGratefulPromotions_Reward[3305950]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305950]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305950]["DeleteItem"][1]["Id"] = 3305950
	--FieryDragon(Hades)
	tGratefulPromotions_Reward[3305950]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305950]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305950]["RewardItem"][1]["Id"] = 200531 
	tGratefulPromotions_Reward[3305950]["RewardItem"][1]["Attr"] ="0 1"
	tGratefulPromotions_Reward[3305950]["LogId"]=12000925
	
	tGratefulPromotions_Reward[3305951]={}
	tGratefulPromotions_Reward[3305951]["DecEMoney"]=10800 
	tGratefulPromotions_Reward[3305951]["EmoneyLog"]="350	20823	10800	10800	1	"
	tGratefulPromotions_Reward[3305951]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305951]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305951]["DeleteItem"][1]["Id"] = 3305951
	--KingOfScorpions(Saint)
	tGratefulPromotions_Reward[3305951]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305951]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305951]["RewardItem"][1]["Id"] = 200517 
	tGratefulPromotions_Reward[3305951]["RewardItem"][1]["Attr"] ="0 1"
	tGratefulPromotions_Reward[3305951]["LogId"]=12000925
	
	tGratefulPromotions_Reward[3305952]={}
	tGratefulPromotions_Reward[3305952]["DecEMoney"]=17999 
	tGratefulPromotions_Reward[3305952]["EmoneyLog"]="350	20824	17999	17999	1	"
	tGratefulPromotions_Reward[3305952]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305952]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305952]["DeleteItem"][1]["Id"] = 3305952
	--General Cat (Charm)
	tGratefulPromotions_Reward[3305952]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305952]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305952]["RewardItem"][1]["Id"] = 200543 
	tGratefulPromotions_Reward[3305952]["RewardItem"][1]["Attr"] ="0 1"
	tGratefulPromotions_Reward[3305952]["LogId"]=12000925
	
	tGratefulPromotions_Reward[3305953]={}
	tGratefulPromotions_Reward[3305953]["DecEMoney"]=7999 
	tGratefulPromotions_Reward[3305953]["EmoneyLog"]="350	20825	7999	7999	1	"
	tGratefulPromotions_Reward[3305953]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305953]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305953]["DeleteItem"][1]["Id"] = 3305953
	--蟠蛇战辕【蛇年绝版】
	tGratefulPromotions_Reward[3305953]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305953]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305953]["RewardItem"][1]["Id"] =  200471
	tGratefulPromotions_Reward[3305953]["RewardItem"][1]["Attr"] ="0 1"
	tGratefulPromotions_Reward[3305953]["LogId"]=12000925
	
	tGratefulPromotions_Reward[3305954]={}
	tGratefulPromotions_Reward[3305954]["DecEMoney"]=2499 
	tGratefulPromotions_Reward[3305954]["EmoneyLog"]="350	20826	2499	2499	1	"
	tGratefulPromotions_Reward[3305954]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305954]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305954]["DeleteItem"][1]["Id"] = 3305954
	--傲世龙神外套【龙年绝版】
	tGratefulPromotions_Reward[3305954]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305954]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305954]["RewardItem"][1]["Id"] =200421
	tGratefulPromotions_Reward[3305954]["RewardItem"][1]["Attr"] ="0 1"
	tGratefulPromotions_Reward[3305954]["LogId"]=12000925
	
	tGratefulPromotions_Reward[3305955]={}
	tGratefulPromotions_Reward[3305955]["DecEMoney"]=23399 
	tGratefulPromotions_Reward[3305955]["EmoneyLog"]="350	20827	23399	23399	1	"
	tGratefulPromotions_Reward[3305955]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305955]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305955]["DeleteItem"][1]["Id"] = 3305955
	--至善神羚【羊年绝版】
	tGratefulPromotions_Reward[3305955]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305955]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305955]["RewardItem"][1]["Id"] =200524
	tGratefulPromotions_Reward[3305955]["RewardItem"][1]["Attr"] ="0 1"
	tGratefulPromotions_Reward[3305955]["LogId"]=12000925
	
	tGratefulPromotions_Reward[3305956]={}
	tGratefulPromotions_Reward[3305956]["DecEMoney"]=999 
	tGratefulPromotions_Reward[3305956]["EmoneyLog"]="350	20828	999	999	1	"
	tGratefulPromotions_Reward[3305956]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305956]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305956]["DeleteItem"][1]["Id"] = 3305956
	--情人之泪
	tGratefulPromotions_Reward[3305956]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305956]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305956]["RewardItem"][1]["Id"] =192565
	tGratefulPromotions_Reward[3305956]["RewardItem"][1]["Attr"] ="0 1"
	tGratefulPromotions_Reward[3305956]["LogId"]=12000925
	
	tGratefulPromotions_Reward[3305957]={}
	tGratefulPromotions_Reward[3305957]["DecEMoney"]=9499 
	tGratefulPromotions_Reward[3305957]["EmoneyLog"]="350	20829	9499	9499	1	"
	tGratefulPromotions_Reward[3305957]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305957]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305957]["DeleteItem"][1]["Id"] = 3305957
	--FrozenFantazy(Glaze)
	tGratefulPromotions_Reward[3305957]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305957]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305957]["RewardItem"][1]["Id"] =193445
	tGratefulPromotions_Reward[3305957]["RewardItem"][1]["Attr"] ="0 1"
	tGratefulPromotions_Reward[3305957]["LogId"]=12000925
	
	tGratefulPromotions_Reward[3305958]={}
	tGratefulPromotions_Reward[3305958]["DecEMoney"]=28495 
	tGratefulPromotions_Reward[3305958]["EmoneyLog"]="350	20830	28495	28495	1	"
	tGratefulPromotions_Reward[3305958]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305958]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305958]["DeleteItem"][1]["Id"] = 3305958
	--FrozenFantasy(Glory)
	tGratefulPromotions_Reward[3305958]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305958]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305958]["RewardItem"][1]["Id"] =193525
	tGratefulPromotions_Reward[3305958]["RewardItem"][1]["Attr"] ="0 1"
	tGratefulPromotions_Reward[3305958]["LogId"]=12000925
	
	tGratefulPromotions_Reward[3305959]={}
	tGratefulPromotions_Reward[3305959]["DecEMoney"]=25399 
	tGratefulPromotions_Reward[3305959]["EmoneyLog"]="350	20831	25399	25399	1	"
	tGratefulPromotions_Reward[3305959]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305959]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305959]["DeleteItem"][1]["Id"] = 3305959
	--LavaCatRobe(Star)
	tGratefulPromotions_Reward[3305959]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305959]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305959]["RewardItem"][1]["Id"] =193565
	tGratefulPromotions_Reward[3305959]["RewardItem"][1]["Attr"] ="0 1"
	tGratefulPromotions_Reward[3305959]["LogId"]=12000925
	
	tGratefulPromotions_Reward[3305960]={}
	tGratefulPromotions_Reward[3305960]["DecEMoney"]=5400 
	tGratefulPromotions_Reward[3305960]["EmoneyLog"]="350	20832	5400	5400	1	"
	tGratefulPromotions_Reward[3305960]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305960]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305960]["DeleteItem"][1]["Id"] = 3305960
	--辉耀之刺【荣耀版】
	tGratefulPromotions_Reward[3305960]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305960]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305960]["RewardItem"][1]["Id"] =188915
	tGratefulPromotions_Reward[3305960]["RewardItem"][1]["Attr"] ="0 1"
	tGratefulPromotions_Reward[3305960]["LogId"]=12000925
	
	tGratefulPromotions_Reward[3306354]={}
	tGratefulPromotions_Reward[3306354]["DecEMoney"]=5400 
	tGratefulPromotions_Reward[3306354]["EmoneyLog"]="350	20833	5400	5400	1	"
	tGratefulPromotions_Reward[3306354]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3306354]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3306354]["DeleteItem"][1]["Id"] = 3306354
	--暗黑魔龙战衣【炼狱版】
	tGratefulPromotions_Reward[3306354]["RewardItem"] = {}
	tGratefulPromotions_Reward[3306354]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3306354]["RewardItem"][1]["Id"] =189065
	tGratefulPromotions_Reward[3306354]["RewardItem"][1]["Attr"] ="0 1"
	tGratefulPromotions_Reward[3306354]["LogId"]=12000925
	
	tGratefulPromotions_Reward[3305981]={}
	tGratefulPromotions_Reward[3305981]["DecEMoney"]=799
	tGratefulPromotions_Reward[3305981]["EmoneyLog"]="350	20808	799	799	1	"
	tGratefulPromotions_Reward[3305981]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305981]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305981]["DeleteItem"][1]["Id"] = 3305981
	--九转聚神丹
	tGratefulPromotions_Reward[3305981]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305981]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305981]["RewardItem"][1]["Id"] =722057
	tGratefulPromotions_Reward[3305981]["RewardItem"][1]["Attr"] ="0 1 3 "
	tGratefulPromotions_Reward[3305981]["LogId"]=12000925
	
	--3000分钟经验感恩礼包
	tGratefulPromotions_Reward[3305982]={}
	tGratefulPromotions_Reward[3305982]["DecEMoney"]=189
	tGratefulPromotions_Reward[3305982]["EmoneyLog"]="350	20809	189	189	1	"
	tGratefulPromotions_Reward[3305982]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305982]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305982]["DeleteItem"][1]["Id"] = 3305982
	
	tGratefulPromotions_Reward[3305982]["RewardExpTime"] = {}
	tGratefulPromotions_Reward[3305982]["RewardExpTime"]["Value"] = 3000
	tGratefulPromotions_Reward[3305982]["RewardExpTime"]["FullIndex"] = "RewardCultivation"	
	tGratefulPromotions_Reward[3305982]["RewardExpTime"]["FullValue"] = 1500		
	tGratefulPromotions_Reward[3305982]["LogId"]=12000925
	
	--5000点气力值感恩礼包
	tGratefulPromotions_Reward[3305983]={}
	tGratefulPromotions_Reward[3305983]["DecEMoney"]=389
	tGratefulPromotions_Reward[3305983]["EmoneyLog"]="350	20802	389	389	1	"
	tGratefulPromotions_Reward[3305983]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305983]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305983]["DeleteItem"][1]["Id"] = 3305983
	
	tGratefulPromotions_Reward[3305983]["RewardStrengthValue"] = {}
	tGratefulPromotions_Reward[3305983]["RewardStrengthValue"] = {}
	tGratefulPromotions_Reward[3305983]["RewardStrengthValue"]["Value"] = 5000
	tGratefulPromotions_Reward[3305983]["LogId"]=12000925
	
	--1000点修为值感恩礼包
	tGratefulPromotions_Reward[3305984]={}
	tGratefulPromotions_Reward[3305984]["DecEMoney"]=89
	tGratefulPromotions_Reward[3305984]["EmoneyLog"]="350	20803	89	89	1	"
	tGratefulPromotions_Reward[3305984]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305984]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305984]["DeleteItem"][1]["Id"] = 3305984
	
	tGratefulPromotions_Reward[3305984]["RewardRepairValue"] = {}
	tGratefulPromotions_Reward[3305984]["RewardRepairValue"] = {}
	tGratefulPromotions_Reward[3305984]["RewardRepairValue"]["Value"] = 1000
	tGratefulPromotions_Reward[3305984]["LogId"]=12000925
	
	--3000点修行值感恩礼包
	tGratefulPromotions_Reward[3305985]={}
	tGratefulPromotions_Reward[3305985]["DecEMoney"]=89
	tGratefulPromotions_Reward[3305985]["EmoneyLog"]="350	20804	89	89	1	"
	tGratefulPromotions_Reward[3305985]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305985]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305985]["DeleteItem"][1]["Id"] = 3305985
	
	tGratefulPromotions_Reward[3305985]["RewardCultivation"] = {}
	tGratefulPromotions_Reward[3305985]["RewardCultivation"] = {}
	tGratefulPromotions_Reward[3305985]["RewardCultivation"]["Value"] = 3000
	tGratefulPromotions_Reward[3305985]["LogId"]=12000925
	
	--究极通神丹感恩礼包
	tGratefulPromotions_Reward[3305986]={}
	tGratefulPromotions_Reward[3305986]["DecEMoney"]=89
	tGratefulPromotions_Reward[3305986]["EmoneyLog"]="350	20805	89	89	1	"
	tGratefulPromotions_Reward[3305986]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305986]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305986]["DeleteItem"][1]["Id"] = 3305986
	tGratefulPromotions_Reward[3305986]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305986]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305986]["RewardItem"][1]["Id"] = 3003126 
	tGratefulPromotions_Reward[3305986]["RewardItem"][1]["Attr"] ="0 10 3 "
	tGratefulPromotions_Reward[3305986]["LogId"]=12000925
	
	--免费强炼丹感恩礼包
	tGratefulPromotions_Reward[3305987]={}
	tGratefulPromotions_Reward[3305987]["DecEMoney"]=129
	tGratefulPromotions_Reward[3305987]["EmoneyLog"]="350	20806	129	129	1	"
	tGratefulPromotions_Reward[3305987]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305987]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305987]["DeleteItem"][1]["Id"] = 3305987
	tGratefulPromotions_Reward[3305987]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305987]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305987]["RewardItem"][1]["Id"] = 3003124 
	tGratefulPromotions_Reward[3305987]["RewardItem"][1]["Attr"] ="0 50 3 "
	tGratefulPromotions_Reward[3305987]["LogId"]=12000925
	
	--通神丹感恩礼包
	tGratefulPromotions_Reward[3305988]={}
	tGratefulPromotions_Reward[3305988]["DecEMoney"]=129
	tGratefulPromotions_Reward[3305988]["EmoneyLog"]="350	20807	129	129	1	"
	tGratefulPromotions_Reward[3305988]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305988]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305988]["DeleteItem"][1]["Id"] = 3305988
	tGratefulPromotions_Reward[3305988]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305988]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305988]["RewardItem"][1]["Id"] = 3003125 
	tGratefulPromotions_Reward[3305988]["RewardItem"][1]["Attr"] ="0 50 3 "
	tGratefulPromotions_Reward[3305988]["LogId"]=12000925
	
	--100000点气力值感恩礼包
	tGratefulPromotions_Reward[3305989]={}
	tGratefulPromotions_Reward[3305989]["DecEMoney"]=8999
	tGratefulPromotions_Reward[3305989]["EmoneyLog"]="350	20810	8999	8999	1	"
	tGratefulPromotions_Reward[3305989]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305989]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305989]["DeleteItem"][1]["Id"] = 3305989
	
	tGratefulPromotions_Reward[3305989]["RewardStrengthValue"] = {}
	tGratefulPromotions_Reward[3305989]["RewardStrengthValue"] = {}
	tGratefulPromotions_Reward[3305989]["RewardStrengthValue"]["Value"] = 100000
	tGratefulPromotions_Reward[3305989]["LogId"]=12000925
	
	--+3赤练石感恩包
	tGratefulPromotions_Reward[3305990]={}
	tGratefulPromotions_Reward[3305990]["DecEMoney"]=50
	tGratefulPromotions_Reward[3305990]["EmoneyLog"]="350	20834	50	50	1	"
	tGratefulPromotions_Reward[3305990]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305990]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305990]["DeleteItem"][1]["Id"] = 3305990
	tGratefulPromotions_Reward[3305990]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305990]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305990]["RewardItem"][1]["Id"] = 730003 
	tGratefulPromotions_Reward[3305990]["RewardItem"][1]["Attr"] ="0 1"
	tGratefulPromotions_Reward[3305990]["LogId"]=12000925
	
	--+6赤练石感恩包
	tGratefulPromotions_Reward[3305991]={}
	tGratefulPromotions_Reward[3305991]["DecEMoney"]=1299
	tGratefulPromotions_Reward[3305991]["EmoneyLog"]="350	20835	1299	1299	1	"
	tGratefulPromotions_Reward[3305991]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305991]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305991]["DeleteItem"][1]["Id"] = 3305991
	tGratefulPromotions_Reward[3305991]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305991]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305991]["RewardItem"][1]["Id"] = 730006 
	tGratefulPromotions_Reward[3305991]["RewardItem"][1]["Attr"] ="0 1"
	tGratefulPromotions_Reward[3305991]["LogId"]=12000925
	
	--+8赤练石感恩包
	tGratefulPromotions_Reward[3305992]={}
	tGratefulPromotions_Reward[3305992]["DecEMoney"]=11599
	tGratefulPromotions_Reward[3305992]["EmoneyLog"]="350	20836	11599	11599	1	"
	tGratefulPromotions_Reward[3305992]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305992]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305992]["DeleteItem"][1]["Id"] = 3305992
	tGratefulPromotions_Reward[3305992]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305992]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305992]["RewardItem"][1]["Id"] = 730008 
	tGratefulPromotions_Reward[3305992]["RewardItem"][1]["Attr"] ="0 1"
	tGratefulPromotions_Reward[3305992]["LogId"]=12000925
	
	--明亮星陨石感恩包
	tGratefulPromotions_Reward[3305993]={}
	tGratefulPromotions_Reward[3305993]["DecEMoney"]=30
	tGratefulPromotions_Reward[3305993]["EmoneyLog"]="350	20837	30	30	1	"
	tGratefulPromotions_Reward[3305993]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305993]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305993]["DeleteItem"][1]["Id"] = 3305993
	tGratefulPromotions_Reward[3305993]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305993]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305993]["RewardItem"][1]["Id"] = 3009001 
	tGratefulPromotions_Reward[3305993]["RewardItem"][1]["Attr"] ="0 1 0 2880 1"
	tGratefulPromotions_Reward[3305993]["LogId"]=12000925
	
	--晶莹星陨石感恩包
	tGratefulPromotions_Reward[3305994]={}
	tGratefulPromotions_Reward[3305994]["DecEMoney"]=300
	tGratefulPromotions_Reward[3305994]["EmoneyLog"]="350	20838	300	300	1	"
	tGratefulPromotions_Reward[3305994]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305994]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305994]["DeleteItem"][1]["Id"] = 3305994
	tGratefulPromotions_Reward[3305994]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305994]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305994]["RewardItem"][1]["Id"] = 3009002 
	tGratefulPromotions_Reward[3305994]["RewardItem"][1]["Attr"] ="0 1 0 2880 1"
	tGratefulPromotions_Reward[3305994]["LogId"]=12000925
	
	--小固化石感恩包
	tGratefulPromotions_Reward[3305995]={}
	tGratefulPromotions_Reward[3305995]["DecEMoney"]=355
	tGratefulPromotions_Reward[3305995]["EmoneyLog"]="350	20839	355	355	1	"
	tGratefulPromotions_Reward[3305995]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305995]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305995]["DeleteItem"][1]["Id"] = 3305995
	tGratefulPromotions_Reward[3305995]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305995]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305995]["RewardItem"][1]["Id"] = 723694 
	tGratefulPromotions_Reward[3305995]["RewardItem"][1]["Attr"] ="0 1"
	tGratefulPromotions_Reward[3305995]["LogId"]=12000925
	
	--大固化石感恩包
	tGratefulPromotions_Reward[3305996]={}
	tGratefulPromotions_Reward[3305996]["DecEMoney"]=3499
	tGratefulPromotions_Reward[3305996]["EmoneyLog"]="350	20840	3499	3499	1	"
	tGratefulPromotions_Reward[3305996]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305996]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305996]["DeleteItem"][1]["Id"] = 3305996
	tGratefulPromotions_Reward[3305996]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305996]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305996]["RewardItem"][1]["Id"] = 723695 
	tGratefulPromotions_Reward[3305996]["RewardItem"][1]["Attr"] ="0 1"
	tGratefulPromotions_Reward[3305996]["LogId"]=12000925
	
	--七阶防具
	tGratefulPromotions_Reward[3305997]={}
	tGratefulPromotions_Reward[3305997]["DecEMoney"]=50
	tGratefulPromotions_Reward[3305997]["EmoneyLog"]="350	20845	50	50	1	"
	tGratefulPromotions_Reward[3305997]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305997]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305997]["DeleteItem"][1]["Id"] = 3305997
	tGratefulPromotions_Reward[3305997]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305997]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305997]["RewardItem"][1]["Id"] = 3006746 
	tGratefulPromotions_Reward[3305997]["RewardItem"][1]["Attr"] ="0 1 3"
	tGratefulPromotions_Reward[3305997]["LogId"]=12000925
	
	--金刚尖钻感恩包
	tGratefulPromotions_Reward[3305998]={}
	tGratefulPromotions_Reward[3305998]["DecEMoney"]=1399
	tGratefulPromotions_Reward[3305998]["EmoneyLog"]="350	20842	1399	1399	1	"
	tGratefulPromotions_Reward[3305998]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305998]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305998]["DeleteItem"][1]["Id"] = 3305998
	tGratefulPromotions_Reward[3305998]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305998]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305998]["RewardItem"][1]["Id"] = 1200005 
	tGratefulPromotions_Reward[3305998]["RewardItem"][1]["Attr"] ="0 1"
	tGratefulPromotions_Reward[3305998]["LogId"]=12000925
	
	--龙珠卷感恩包
	tGratefulPromotions_Reward[3305999]={}
	tGratefulPromotions_Reward[3305999]["DecEMoney"]=699
	tGratefulPromotions_Reward[3305999]["EmoneyLog"]="350	20843	699	699	1	"
	tGratefulPromotions_Reward[3305999]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3305999]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3305999]["DeleteItem"][1]["Id"] = 3305999
	tGratefulPromotions_Reward[3305999]["RewardItem"] = {}
	tGratefulPromotions_Reward[3305999]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3305999]["RewardItem"][1]["Id"] = 720028 
	tGratefulPromotions_Reward[3305999]["RewardItem"][1]["Attr"] ="0 1"
	tGratefulPromotions_Reward[3305999]["LogId"]=12000925
	
	--桃源灵玉*100感恩包
	tGratefulPromotions_Reward[3306000]={}
	tGratefulPromotions_Reward[3306000]["DecEMoney"]=2300
	tGratefulPromotions_Reward[3306000]["EmoneyLog"]="350	20846	2300	2300	1	"
	tGratefulPromotions_Reward[3306000]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3306000]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3306000]["DeleteItem"][1]["Id"] = 3306000
	tGratefulPromotions_Reward[3306000]["RewardItem"] = {}
	tGratefulPromotions_Reward[3306000]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3306000]["RewardItem"][1]["Id"] = 711504 
	tGratefulPromotions_Reward[3306000]["RewardItem"][1]["Attr"] ="0 300"
	tGratefulPromotions_Reward[3306000]["LogId"]=12000925
	
	--P7武器神魂可选包
	tGratefulPromotions_Reward[3306352]={}
	tGratefulPromotions_Reward[3306352]["DecEMoney"]=50
	tGratefulPromotions_Reward[3306352]["EmoneyLog"]="350	20844	50	50	1	"
	tGratefulPromotions_Reward[3306352]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3306352]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3306352]["DeleteItem"][1]["Id"] = 3306352
	tGratefulPromotions_Reward[3306352]["RewardItem"] = {}
	tGratefulPromotions_Reward[3306352]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3306352]["RewardItem"][1]["Id"] = 3006745 
	tGratefulPromotions_Reward[3306352]["RewardItem"][1]["Attr"] ="0 1 3"
	tGratefulPromotions_Reward[3306352]["LogId"]=12000925
	
	
	--极品风雷翅感恩包
	tGratefulPromotions_Reward[3306001]={}
	tGratefulPromotions_Reward[3306001]["DecEMoney"]=699
	tGratefulPromotions_Reward[3306001]["EmoneyLog"]="350	20847	699	699	1	"
	tGratefulPromotions_Reward[3306001]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3306001]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3306001]["DeleteItem"][1]["Id"] = 3306001
	tGratefulPromotions_Reward[3306001]["RewardItem"] = {}
	tGratefulPromotions_Reward[3306001]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3306001]["RewardItem"][1]["Id"] = 204009 
	tGratefulPromotions_Reward[3306001]["RewardItem"][1]["Attr"] ="0 1"
	tGratefulPromotions_Reward[3306001]["LogId"]=12000925
	
	--极品凌霄扇感恩包
	tGratefulPromotions_Reward[3306002]={}
	tGratefulPromotions_Reward[3306002]["DecEMoney"]=699
	tGratefulPromotions_Reward[3306002]["EmoneyLog"]="350	20848	699	699	1	"
	tGratefulPromotions_Reward[3306002]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3306002]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3306002]["DeleteItem"][1]["Id"] = 3306002
	tGratefulPromotions_Reward[3306002]["RewardItem"] = {}
	tGratefulPromotions_Reward[3306002]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3306002]["RewardItem"][1]["Id"] = 201009 
	tGratefulPromotions_Reward[3306002]["RewardItem"][1]["Attr"] ="0 1"
	tGratefulPromotions_Reward[3306002]["LogId"]=12000925
	
	--极品混元塔感恩包
	tGratefulPromotions_Reward[3306003]={}
	tGratefulPromotions_Reward[3306003]["DecEMoney"]=699
	tGratefulPromotions_Reward[3306003]["EmoneyLog"]="350	20849	699	699	1	"
	tGratefulPromotions_Reward[3306003]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3306003]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3306003]["DeleteItem"][1]["Id"] = 3306003
	tGratefulPromotions_Reward[3306003]["RewardItem"] = {}
	tGratefulPromotions_Reward[3306003]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3306003]["RewardItem"][1]["Id"] = 202009 
	tGratefulPromotions_Reward[3306003]["RewardItem"][1]["Attr"] ="0 1"
	tGratefulPromotions_Reward[3306003]["LogId"]=12000925
	
	--极品马鞭感恩包
	tGratefulPromotions_Reward[3306004]={}
	tGratefulPromotions_Reward[3306004]["DecEMoney"]=699
	tGratefulPromotions_Reward[3306004]["EmoneyLog"]="350	20850	699	699	1	"
	tGratefulPromotions_Reward[3306004]["DeleteItem"] = {}
	tGratefulPromotions_Reward[3306004]["DeleteItem"][1] = {}
	tGratefulPromotions_Reward[3306004]["DeleteItem"][1]["Id"] = 3306004
	tGratefulPromotions_Reward[3306004]["RewardItem"] = {}
	tGratefulPromotions_Reward[3306004]["RewardItem"][1] = {}
	tGratefulPromotions_Reward[3306004]["RewardItem"][1]["Id"] = 203009 
	tGratefulPromotions_Reward[3306004]["RewardItem"][1]["Attr"] ="0 1"
	tGratefulPromotions_Reward[3306004]["LogId"]=12000925
	
--70级极品1洞戒指礼包
	tGratefulPromotions_Reward[3306005]={}
	tGratefulPromotions_Reward[3306005]["DecEMoney"]=1545
	tGratefulPromotions_Reward[3306005]["RewardItem"]={}
	tGratefulPromotions_Reward[3306005]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306005]["RewardItem"][1]["Id"]=150139
	tGratefulPromotions_Reward[3306005]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255"
	tGratefulPromotions_Reward[3306005]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306005]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306005]["DeleteItem"][1]["Id"]=3306005
	tGratefulPromotions_Reward[3306005]["LogId"]=12000925
	tGratefulPromotions_Reward[3306005]["EmoneyLog"]="350	20851	1545	1545	1	"
	
--70级极品1洞项链礼包
	tGratefulPromotions_Reward[3306006]={}
	tGratefulPromotions_Reward[3306006]["DecEMoney"]=1545
	tGratefulPromotions_Reward[3306006]["RewardItem"]={}
	tGratefulPromotions_Reward[3306006]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306006]["RewardItem"][1]["Id"]=120129
	tGratefulPromotions_Reward[3306006]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255"
	tGratefulPromotions_Reward[3306006]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306006]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306006]["DeleteItem"][1]["Id"]=3306006
	tGratefulPromotions_Reward[3306006]["LogId"]=12000925
	tGratefulPromotions_Reward[3306006]["EmoneyLog"]="350	20852	1545	1545	1	"
	
--70级极品1洞鞋子礼包
	tGratefulPromotions_Reward[3306007]={}
	tGratefulPromotions_Reward[3306007]["DecEMoney"]=1545
	tGratefulPromotions_Reward[3306007]["RewardItem"]={}
	tGratefulPromotions_Reward[3306007]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306007]["RewardItem"][1]["Id"]=160139
	tGratefulPromotions_Reward[3306007]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255"
	tGratefulPromotions_Reward[3306007]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306007]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306007]["DeleteItem"][1]["Id"]=3306007
	tGratefulPromotions_Reward[3306007]["LogId"]=12000925
	tGratefulPromotions_Reward[3306007]["EmoneyLog"]="350	20853	1545	1545	1	"
	
	
--70级极品1洞耳环礼包
	tGratefulPromotions_Reward[3306008]={}
	tGratefulPromotions_Reward[3306008]["DecEMoney"]=1545
	tGratefulPromotions_Reward[3306008]["RewardItem"]={}
	tGratefulPromotions_Reward[3306008]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306008]["RewardItem"][1]["Id"]=117069
	tGratefulPromotions_Reward[3306008]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255"
	tGratefulPromotions_Reward[3306008]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306008]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306008]["DeleteItem"][1]["Id"]=3306008
	tGratefulPromotions_Reward[3306008]["LogId"]=12000925
	tGratefulPromotions_Reward[3306008]["EmoneyLog"]="350	20854	1545	1545	1	"
	
--70级极品1洞道士香囊礼包
	tGratefulPromotions_Reward[3306009]={}
	tGratefulPromotions_Reward[3306009]["DecEMoney"]=1199
	tGratefulPromotions_Reward[3306009]["RewardItem"]={}
	tGratefulPromotions_Reward[3306009]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306009]["RewardItem"][1]["Id"]=121129
	tGratefulPromotions_Reward[3306009]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255"
	tGratefulPromotions_Reward[3306009]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306009]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306009]["DeleteItem"][1]["Id"]=3306009
	tGratefulPromotions_Reward[3306009]["LogId"]=12000925
	tGratefulPromotions_Reward[3306009]["EmoneyLog"]="350	20855	1199	1199	1	"
	
--70级极品1洞手镯礼包
	tGratefulPromotions_Reward[3306010]={}
	tGratefulPromotions_Reward[3306010]["DecEMoney"]=1199
	tGratefulPromotions_Reward[3306010]["RewardItem"]={}
	tGratefulPromotions_Reward[3306010]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306010]["RewardItem"][1]["Id"]=152129
	tGratefulPromotions_Reward[3306010]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255"
	tGratefulPromotions_Reward[3306010]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306010]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306010]["DeleteItem"][1]["Id"]=3306010
	tGratefulPromotions_Reward[3306010]["LogId"]=12000925
	tGratefulPromotions_Reward[3306010]["EmoneyLog"]="350	20856	1199	1199	1	"
	
--70级极品1洞宝塔礼包
	tGratefulPromotions_Reward[3306011]={}
	tGratefulPromotions_Reward[3306011]["DecEMoney"]=999
	tGratefulPromotions_Reward[3306011]["RewardItem"]={}
	tGratefulPromotions_Reward[3306011]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306011]["RewardItem"][1]["Id"]=202009
	tGratefulPromotions_Reward[3306011]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 1 0 0 4 255"
	tGratefulPromotions_Reward[3306011]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306011]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306011]["DeleteItem"][1]["Id"]=3306011
	tGratefulPromotions_Reward[3306011]["LogId"]=12000925
	tGratefulPromotions_Reward[3306011]["EmoneyLog"]="350	20857	999	999	1	"
	
--70级极品1洞宝扇礼包
	tGratefulPromotions_Reward[3306012]={}
	tGratefulPromotions_Reward[3306012]["DecEMoney"]=999
	tGratefulPromotions_Reward[3306012]["RewardItem"]={}
	tGratefulPromotions_Reward[3306012]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306012]["RewardItem"][1]["Id"]=201009
	tGratefulPromotions_Reward[3306012]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 1 0 0 4 255"
	tGratefulPromotions_Reward[3306012]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306012]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306012]["DeleteItem"][1]["Id"]=3306012
	tGratefulPromotions_Reward[3306012]["LogId"]=12000925
	tGratefulPromotions_Reward[3306012]["EmoneyLog"]="350	20858	999	999	1	"
	
--70级极品无洞马鞭礼包
	tGratefulPromotions_Reward[3306013]={}
	tGratefulPromotions_Reward[3306013]["DecEMoney"]=799
	tGratefulPromotions_Reward[3306013]["RewardItem"]={}
	tGratefulPromotions_Reward[3306013]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306013]["RewardItem"][1]["Id"]=203009
	tGratefulPromotions_Reward[3306013]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 1 0 0 4"
	tGratefulPromotions_Reward[3306013]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306013]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306013]["DeleteItem"][1]["Id"]=3306013
	tGratefulPromotions_Reward[3306013]["LogId"]=12000925
	tGratefulPromotions_Reward[3306013]["EmoneyLog"]="350	20859	799	799	1	"
	
--70级极品2洞戒指礼包
	tGratefulPromotions_Reward[3306014]={}
	tGratefulPromotions_Reward[3306014]["DecEMoney"]=7138
	tGratefulPromotions_Reward[3306014]["RewardItem"]={}
	tGratefulPromotions_Reward[3306014]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306014]["RewardItem"][1]["Id"]=150139
	tGratefulPromotions_Reward[3306014]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306014]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306014]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306014]["DeleteItem"][1]["Id"]=3306014
	tGratefulPromotions_Reward[3306014]["LogId"]=12000925
	tGratefulPromotions_Reward[3306014]["EmoneyLog"]="350	20873	7138	7138	1	"
	
--70级极品2洞项链礼包
	tGratefulPromotions_Reward[3306015]={}
	tGratefulPromotions_Reward[3306015]["DecEMoney"]=7138
	tGratefulPromotions_Reward[3306015]["RewardItem"]={}
	tGratefulPromotions_Reward[3306015]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306015]["RewardItem"][1]["Id"]=120129
	tGratefulPromotions_Reward[3306015]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306015]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306015]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306015]["DeleteItem"][1]["Id"]=3306015
	tGratefulPromotions_Reward[3306015]["LogId"]=12000925
	tGratefulPromotions_Reward[3306015]["EmoneyLog"]="350	20874	7138	7138	1	"

--70级极品2洞鞋子礼包
	tGratefulPromotions_Reward[3306016]={}
	tGratefulPromotions_Reward[3306016]["DecEMoney"]=7138
	tGratefulPromotions_Reward[3306016]["RewardItem"]={}
	tGratefulPromotions_Reward[3306016]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306016]["RewardItem"][1]["Id"]=160139
	tGratefulPromotions_Reward[3306016]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306016]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306016]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306016]["DeleteItem"][1]["Id"]=3306016
	tGratefulPromotions_Reward[3306016]["LogId"]=12000925
	tGratefulPromotions_Reward[3306016]["EmoneyLog"]="350	20875	7138	7138	1	"

--70级极品2洞耳环礼包
	tGratefulPromotions_Reward[3306017]={}
	tGratefulPromotions_Reward[3306017]["DecEMoney"]=7138
	tGratefulPromotions_Reward[3306017]["RewardItem"]={}
	tGratefulPromotions_Reward[3306017]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306017]["RewardItem"][1]["Id"]=117069
	tGratefulPromotions_Reward[3306017]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306017]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306017]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306017]["DeleteItem"][1]["Id"]=3306017
	tGratefulPromotions_Reward[3306017]["LogId"]=12000925
	tGratefulPromotions_Reward[3306017]["EmoneyLog"]="350	20876	7138	7138	1	"
	
--70级极品2洞道士香囊礼包
	tGratefulPromotions_Reward[3306018]={}
	tGratefulPromotions_Reward[3306018]["DecEMoney"]=6599
	tGratefulPromotions_Reward[3306018]["RewardItem"]={}
	tGratefulPromotions_Reward[3306018]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306018]["RewardItem"][1]["Id"]=121129
	tGratefulPromotions_Reward[3306018]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306018]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306018]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306018]["DeleteItem"][1]["Id"]=3306018
	tGratefulPromotions_Reward[3306018]["LogId"]=12000925
	tGratefulPromotions_Reward[3306018]["EmoneyLog"]="350	20877	6599	6599	1	"
	
--70级极品2洞手镯礼包
	tGratefulPromotions_Reward[3306019]={}
	tGratefulPromotions_Reward[3306019]["DecEMoney"]=6599
	tGratefulPromotions_Reward[3306019]["RewardItem"]={}
	tGratefulPromotions_Reward[3306019]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306019]["RewardItem"][1]["Id"]=152129
	tGratefulPromotions_Reward[3306019]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306019]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306019]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306019]["DeleteItem"][1]["Id"]=3306019
	tGratefulPromotions_Reward[3306019]["LogId"]=12000925
	tGratefulPromotions_Reward[3306019]["EmoneyLog"]="350	20878	6599	6599	1	"
	
--70级极品2洞宝塔礼包
	tGratefulPromotions_Reward[3306020]={}
	tGratefulPromotions_Reward[3306020]["DecEMoney"]=4999
	tGratefulPromotions_Reward[3306020]["RewardItem"]={}
	tGratefulPromotions_Reward[3306020]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306020]["RewardItem"][1]["Id"]=202009
	tGratefulPromotions_Reward[3306020]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 1 0 0 6 255 255"
	tGratefulPromotions_Reward[3306020]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306020]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306020]["DeleteItem"][1]["Id"]=3306020
	tGratefulPromotions_Reward[3306020]["LogId"]=12000925
	tGratefulPromotions_Reward[3306020]["EmoneyLog"]="350	20879	4399	4399	1	"
	
--70级极品2洞宝扇礼包
	tGratefulPromotions_Reward[3306021]={}
	tGratefulPromotions_Reward[3306021]["DecEMoney"]=4999
	tGratefulPromotions_Reward[3306021]["RewardItem"]={}
	tGratefulPromotions_Reward[3306021]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306021]["RewardItem"][1]["Id"]=201009
	tGratefulPromotions_Reward[3306021]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 1 0 0 6 255 255"
	tGratefulPromotions_Reward[3306021]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306021]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306021]["DeleteItem"][1]["Id"]=3306021
	tGratefulPromotions_Reward[3306021]["LogId"]=12000925
	tGratefulPromotions_Reward[3306021]["EmoneyLog"]="350	20880	4999	4999	1	"
	
--70级极品无洞马鞭礼包
	tGratefulPromotions_Reward[3306022]={}
	tGratefulPromotions_Reward[3306022]["DecEMoney"]=2299
	tGratefulPromotions_Reward[3306022]["RewardItem"]={}
	tGratefulPromotions_Reward[3306022]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306022]["RewardItem"][1]["Id"]=203009
	tGratefulPromotions_Reward[3306022]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 1 0 0 6"
	tGratefulPromotions_Reward[3306022]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306022]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306022]["DeleteItem"][1]["Id"]=3306022
	tGratefulPromotions_Reward[3306022]["LogId"]=12000925
	tGratefulPromotions_Reward[3306022]["EmoneyLog"]="350	20881	2999	2999	1	"
	
--70级极品2洞毒刀礼包
	tGratefulPromotions_Reward[3306023]={}
	tGratefulPromotions_Reward[3306023]["DecEMoney"]=999
	tGratefulPromotions_Reward[3306023]["RewardItem"]={}
	tGratefulPromotions_Reward[3306023]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306023]["RewardItem"][1]["Id"]=410139
	tGratefulPromotions_Reward[3306023]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255 255 200"
	tGratefulPromotions_Reward[3306023]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306023]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306023]["DeleteItem"][1]["Id"]=3306023
	tGratefulPromotions_Reward[3306023]["LogId"]=12000925
	tGratefulPromotions_Reward[3306023]["EmoneyLog"]="350	20860	999	999	1	"
	
--70级极品2洞飞刀礼包
	tGratefulPromotions_Reward[3306024]={}
	tGratefulPromotions_Reward[3306024]["DecEMoney"]=999
	tGratefulPromotions_Reward[3306024]["RewardItem"]={}
	tGratefulPromotions_Reward[3306024]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306024]["RewardItem"][1]["Id"]=613129
	tGratefulPromotions_Reward[3306024]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255 255"
	tGratefulPromotions_Reward[3306024]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306024]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306024]["DeleteItem"][1]["Id"]=3306024
	tGratefulPromotions_Reward[3306024]["LogId"]=12000925
	tGratefulPromotions_Reward[3306024]["EmoneyLog"]="350	20860	999	999	1	"
	
--70级极品2洞钩镰礼包
	tGratefulPromotions_Reward[3306025]={}
	tGratefulPromotions_Reward[3306025]["DecEMoney"]=999
	tGratefulPromotions_Reward[3306025]["RewardItem"]={}
	tGratefulPromotions_Reward[3306025]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306025]["RewardItem"][1]["Id"]=511139
	tGratefulPromotions_Reward[3306025]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255 255"
	tGratefulPromotions_Reward[3306025]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306025]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306025]["DeleteItem"][1]["Id"]=3306025
	tGratefulPromotions_Reward[3306025]["LogId"]=12000925
	tGratefulPromotions_Reward[3306025]["EmoneyLog"]="350	20860	999	999	1	"
	
--70级极品2洞念珠礼包
	tGratefulPromotions_Reward[3306026]={}
	tGratefulPromotions_Reward[3306026]["DecEMoney"]=999
	tGratefulPromotions_Reward[3306026]["RewardItem"]={}
	tGratefulPromotions_Reward[3306026]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306026]["RewardItem"][1]["Id"]=610139
	tGratefulPromotions_Reward[3306026]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255 255"
	tGratefulPromotions_Reward[3306026]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306026]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306026]["DeleteItem"][1]["Id"]=3306026
	tGratefulPromotions_Reward[3306026]["LogId"]=12000925
	tGratefulPromotions_Reward[3306026]["EmoneyLog"]="350	20860	999	999	1	"
	
--70级极品2洞刀礼包
	tGratefulPromotions_Reward[3306027]={}
	tGratefulPromotions_Reward[3306027]["DecEMoney"]=650
	tGratefulPromotions_Reward[3306027]["RewardItem"]={}
	tGratefulPromotions_Reward[3306027]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306027]["RewardItem"][1]["Id"]=410139
	tGratefulPromotions_Reward[3306027]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255 255"
	tGratefulPromotions_Reward[3306027]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306027]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306027]["DeleteItem"][1]["Id"]=3306027
	tGratefulPromotions_Reward[3306027]["LogId"]=12000925
	tGratefulPromotions_Reward[3306027]["EmoneyLog"]="350	20861	650	650	1	"
	
--70级极品2洞剑礼包
	tGratefulPromotions_Reward[3306028]={}
	tGratefulPromotions_Reward[3306028]["DecEMoney"]=650
	tGratefulPromotions_Reward[3306028]["RewardItem"]={}
	tGratefulPromotions_Reward[3306028]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306028]["RewardItem"][1]["Id"]=420139
	tGratefulPromotions_Reward[3306028]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255 255"
	tGratefulPromotions_Reward[3306028]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306028]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306028]["DeleteItem"][1]["Id"]=3306028
	tGratefulPromotions_Reward[3306028]["LogId"]=12000925
	tGratefulPromotions_Reward[3306028]["EmoneyLog"]="350	20861	650	650	1	"
	
--70级极品2洞棒礼包
	tGratefulPromotions_Reward[3306029]={}
	tGratefulPromotions_Reward[3306029]["DecEMoney"]=650
	tGratefulPromotions_Reward[3306029]["RewardItem"]={}
	tGratefulPromotions_Reward[3306029]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306029]["RewardItem"][1]["Id"]=480139
	tGratefulPromotions_Reward[3306029]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255 255"
	tGratefulPromotions_Reward[3306029]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306029]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306029]["DeleteItem"][1]["Id"]=3306029
	tGratefulPromotions_Reward[3306029]["LogId"]=12000925
	tGratefulPromotions_Reward[3306029]["EmoneyLog"]="350	20861	650	650	1	"
	
--70级极品2洞法剑礼包
	tGratefulPromotions_Reward[3306030]={}
	tGratefulPromotions_Reward[3306030]["DecEMoney"]=650
	tGratefulPromotions_Reward[3306030]["RewardItem"]={}
	tGratefulPromotions_Reward[3306030]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306030]["RewardItem"][1]["Id"]=421139
	tGratefulPromotions_Reward[3306030]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255 255"
	tGratefulPromotions_Reward[3306030]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306030]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306030]["DeleteItem"][1]["Id"]=3306030
	tGratefulPromotions_Reward[3306030]["LogId"]=12000925
	tGratefulPromotions_Reward[3306030]["EmoneyLog"]="350	20861	650	650	1	"
	
--70级极品2洞弓礼包
	tGratefulPromotions_Reward[3306031]={}
	tGratefulPromotions_Reward[3306031]["DecEMoney"]=650
	tGratefulPromotions_Reward[3306031]["RewardItem"]={}
	tGratefulPromotions_Reward[3306031]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306031]["RewardItem"][1]["Id"]=500129
	tGratefulPromotions_Reward[3306031]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255 255"
	tGratefulPromotions_Reward[3306031]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306031]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306031]["DeleteItem"][1]["Id"]=3306031
	tGratefulPromotions_Reward[3306031]["LogId"]=12000925
	tGratefulPromotions_Reward[3306031]["EmoneyLog"]="350	20861	650	650	1	"
	
--70级极品2洞长棍礼包
	tGratefulPromotions_Reward[3306032]={}
	tGratefulPromotions_Reward[3306032]["DecEMoney"]=650
	tGratefulPromotions_Reward[3306032]["RewardItem"]={}
	tGratefulPromotions_Reward[3306032]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306032]["RewardItem"][1]["Id"]=561139
	tGratefulPromotions_Reward[3306032]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255 255"
	tGratefulPromotions_Reward[3306032]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306032]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306032]["DeleteItem"][1]["Id"]=3306032
	tGratefulPromotions_Reward[3306032]["LogId"]=12000925
	tGratefulPromotions_Reward[3306032]["EmoneyLog"]="350	20862	650	650	1	"
	
--70级极品2洞长枪礼包
	tGratefulPromotions_Reward[3306033]={}
	tGratefulPromotions_Reward[3306033]["DecEMoney"]=650
	tGratefulPromotions_Reward[3306033]["RewardItem"]={}
	tGratefulPromotions_Reward[3306033]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306033]["RewardItem"][1]["Id"]=560139
	tGratefulPromotions_Reward[3306033]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255 255"
	tGratefulPromotions_Reward[3306033]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306033]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306033]["DeleteItem"][1]["Id"]=3306033
	tGratefulPromotions_Reward[3306033]["LogId"]=12000925
	tGratefulPromotions_Reward[3306033]["EmoneyLog"]="350	20862	650	650	1	"
	
--70级极品2洞忍刀礼包
	tGratefulPromotions_Reward[3306034]={}
	tGratefulPromotions_Reward[3306034]["DecEMoney"]=650
	tGratefulPromotions_Reward[3306034]["RewardItem"]={}
	tGratefulPromotions_Reward[3306034]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306034]["RewardItem"][1]["Id"]=601139
	tGratefulPromotions_Reward[3306034]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255 255"
	tGratefulPromotions_Reward[3306034]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306034]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306034]["DeleteItem"][1]["Id"]=3306034
	tGratefulPromotions_Reward[3306034]["LogId"]=12000925
	tGratefulPromotions_Reward[3306034]["EmoneyLog"]="350	20863	650	650	1	"
	
--70级极品2洞刺剑礼包
	tGratefulPromotions_Reward[3306035]={}
	tGratefulPromotions_Reward[3306035]["DecEMoney"]=650
	tGratefulPromotions_Reward[3306035]["RewardItem"]={}
	tGratefulPromotions_Reward[3306035]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306035]["RewardItem"][1]["Id"]=611139
	tGratefulPromotions_Reward[3306035]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255 255"
	tGratefulPromotions_Reward[3306035]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306035]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306035]["DeleteItem"][1]["Id"]=3306035
	tGratefulPromotions_Reward[3306035]["LogId"]=12000925
	tGratefulPromotions_Reward[3306035]["EmoneyLog"]="350	20863	650	650	1	"
	
--70级极品2洞火枪礼包
	tGratefulPromotions_Reward[3306036]={}
	tGratefulPromotions_Reward[3306036]["DecEMoney"]=650
	tGratefulPromotions_Reward[3306036]["RewardItem"]={}
	tGratefulPromotions_Reward[3306036]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306036]["RewardItem"][1]["Id"]=612139
	tGratefulPromotions_Reward[3306036]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255 255"
	tGratefulPromotions_Reward[3306036]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306036]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306036]["DeleteItem"][1]["Id"]=3306036
	tGratefulPromotions_Reward[3306036]["LogId"]=12000925
	tGratefulPromotions_Reward[3306036]["EmoneyLog"]="350	20863	650	650	1	"
	
--70级极品1洞勇士衣服礼包
	tGratefulPromotions_Reward[3306037]={}
	tGratefulPromotions_Reward[3306037]["DecEMoney"]=750
	tGratefulPromotions_Reward[3306037]["RewardItem"]={}
	tGratefulPromotions_Reward[3306037]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306037]["RewardItem"][1]["Id"]=130069
	tGratefulPromotions_Reward[3306037]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255"
	tGratefulPromotions_Reward[3306037]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306037]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306037]["DeleteItem"][1]["Id"]=3306037
	tGratefulPromotions_Reward[3306037]["LogId"]=12000925
	tGratefulPromotions_Reward[3306037]["EmoneyLog"]="350	20864	750	750	1	"
	
--70级极品1洞道士衣服礼包
	tGratefulPromotions_Reward[3306038]={}
	tGratefulPromotions_Reward[3306038]["DecEMoney"]=750
	tGratefulPromotions_Reward[3306038]["RewardItem"]={}
	tGratefulPromotions_Reward[3306038]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306038]["RewardItem"][1]["Id"]=134069
	tGratefulPromotions_Reward[3306038]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255"
	tGratefulPromotions_Reward[3306038]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306038]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306038]["DeleteItem"][1]["Id"]=3306038
	tGratefulPromotions_Reward[3306038]["LogId"]=12000925
	tGratefulPromotions_Reward[3306038]["EmoneyLog"]="350	20864	750	750	1	"
	
--70级极品1洞武僧衣服礼包
	tGratefulPromotions_Reward[3306039]={}
	tGratefulPromotions_Reward[3306039]["DecEMoney"]=750
	tGratefulPromotions_Reward[3306039]["RewardItem"]={}
	tGratefulPromotions_Reward[3306039]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306039]["RewardItem"][1]["Id"]=136069
	tGratefulPromotions_Reward[3306039]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255"
	tGratefulPromotions_Reward[3306039]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306039]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306039]["DeleteItem"][1]["Id"]=3306039
	tGratefulPromotions_Reward[3306039]["LogId"]=12000925
	tGratefulPromotions_Reward[3306039]["EmoneyLog"]="350	20865	750	750	1	"
	
--70级极品1洞海盗衣服礼包
	tGratefulPromotions_Reward[3306040]={}
	tGratefulPromotions_Reward[3306040]["DecEMoney"]=750
	tGratefulPromotions_Reward[3306040]["RewardItem"]={}
	tGratefulPromotions_Reward[3306040]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306040]["RewardItem"][1]["Id"]=139069
	tGratefulPromotions_Reward[3306040]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255"
	tGratefulPromotions_Reward[3306040]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306040]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306040]["DeleteItem"][1]["Id"]=3306040
	tGratefulPromotions_Reward[3306040]["LogId"]=12000925
	tGratefulPromotions_Reward[3306040]["EmoneyLog"]="350	20865	750	750	1	"
	
--70级极品1洞忍者衣服礼包
	tGratefulPromotions_Reward[3306041]={}
	tGratefulPromotions_Reward[3306041]["DecEMoney"]=750
	tGratefulPromotions_Reward[3306041]["RewardItem"]={}
	tGratefulPromotions_Reward[3306041]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306041]["RewardItem"][1]["Id"]=135069
	tGratefulPromotions_Reward[3306041]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255"
	tGratefulPromotions_Reward[3306041]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306041]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306041]["DeleteItem"][1]["Id"]=3306041
	tGratefulPromotions_Reward[3306041]["LogId"]=12000925
	tGratefulPromotions_Reward[3306041]["EmoneyLog"]="350	20865	750	750	1	"
	
--70级极品1洞弓手衣服礼包
	tGratefulPromotions_Reward[3306042]={}
	tGratefulPromotions_Reward[3306042]["DecEMoney"]=750
	tGratefulPromotions_Reward[3306042]["RewardItem"]={}
	tGratefulPromotions_Reward[3306042]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306042]["RewardItem"][1]["Id"]=133049
	tGratefulPromotions_Reward[3306042]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255"
	tGratefulPromotions_Reward[3306042]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306042]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306042]["DeleteItem"][1]["Id"]=3306042
	tGratefulPromotions_Reward[3306042]["LogId"]=12000925
	tGratefulPromotions_Reward[3306042]["EmoneyLog"]="350	20866	750	750	1	"
	
--70级极品1洞战士衣服礼包
	tGratefulPromotions_Reward[3306043]={}
	tGratefulPromotions_Reward[3306043]["DecEMoney"]=750
	tGratefulPromotions_Reward[3306043]["RewardItem"]={}
	tGratefulPromotions_Reward[3306043]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306043]["RewardItem"][1]["Id"]=131069
	tGratefulPromotions_Reward[3306043]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255"
	tGratefulPromotions_Reward[3306043]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306043]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306043]["DeleteItem"][1]["Id"]=3306043
	tGratefulPromotions_Reward[3306043]["LogId"]=12000925
	tGratefulPromotions_Reward[3306043]["EmoneyLog"]="350	20866	750	750	1	"

--70级极品1洞勇士头礼包
	tGratefulPromotions_Reward[3306044]={}
	tGratefulPromotions_Reward[3306044]["DecEMoney"]=750
	tGratefulPromotions_Reward[3306044]["RewardItem"]={}
	tGratefulPromotions_Reward[3306044]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306044]["RewardItem"][1]["Id"]=118069
	tGratefulPromotions_Reward[3306044]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255"
	tGratefulPromotions_Reward[3306044]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306044]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306044]["DeleteItem"][1]["Id"]=3306044
	tGratefulPromotions_Reward[3306044]["LogId"]=12000925
	tGratefulPromotions_Reward[3306044]["EmoneyLog"]="350	20867	750	750	1	"
	
--70级极品1洞道士头礼包
	tGratefulPromotions_Reward[3306045]={}
	tGratefulPromotions_Reward[3306045]["DecEMoney"]=750
	tGratefulPromotions_Reward[3306045]["RewardItem"]={}
	tGratefulPromotions_Reward[3306045]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306045]["RewardItem"][1]["Id"]=114069
	tGratefulPromotions_Reward[3306045]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255"
	tGratefulPromotions_Reward[3306045]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306045]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306045]["DeleteItem"][1]["Id"]=3306045
	tGratefulPromotions_Reward[3306045]["LogId"]=12000925
	tGratefulPromotions_Reward[3306045]["EmoneyLog"]="350	20867	750	750	1	"
	
--70级极品1洞忍者头礼包
	tGratefulPromotions_Reward[3306046]={}
	tGratefulPromotions_Reward[3306046]["DecEMoney"]=750
	tGratefulPromotions_Reward[3306046]["RewardItem"]={}
	tGratefulPromotions_Reward[3306046]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306046]["RewardItem"][1]["Id"]=123069
	tGratefulPromotions_Reward[3306046]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255"
	tGratefulPromotions_Reward[3306046]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306046]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306046]["DeleteItem"][1]["Id"]=3306046
	tGratefulPromotions_Reward[3306046]["LogId"]=12000925
	tGratefulPromotions_Reward[3306046]["EmoneyLog"]="350	20867	750	750	1	"
	
--70级极品1洞武僧头礼包
	tGratefulPromotions_Reward[3306047]={}
	tGratefulPromotions_Reward[3306047]["DecEMoney"]=865
	tGratefulPromotions_Reward[3306047]["RewardItem"]={}
	tGratefulPromotions_Reward[3306047]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306047]["RewardItem"][1]["Id"]=143069
	tGratefulPromotions_Reward[3306047]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255"
	tGratefulPromotions_Reward[3306047]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306047]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306047]["DeleteItem"][1]["Id"]=3306047
	tGratefulPromotions_Reward[3306047]["LogId"]=12000925
	tGratefulPromotions_Reward[3306047]["EmoneyLog"]="350	20868	865	865	1	"
	
--70级极品1洞海盗头礼包
	tGratefulPromotions_Reward[3306048]={}
	tGratefulPromotions_Reward[3306048]["DecEMoney"]=865
	tGratefulPromotions_Reward[3306048]["RewardItem"]={}
	tGratefulPromotions_Reward[3306048]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306048]["RewardItem"][1]["Id"]=145069
	tGratefulPromotions_Reward[3306048]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255"
	tGratefulPromotions_Reward[3306048]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306048]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306048]["DeleteItem"][1]["Id"]=3306048
	tGratefulPromotions_Reward[3306048]["LogId"]=12000925
	tGratefulPromotions_Reward[3306048]["EmoneyLog"]="350	20868	865	865	1	"
	
--70级极品1洞弓手头礼包
	tGratefulPromotions_Reward[3306049]={}
	tGratefulPromotions_Reward[3306049]["DecEMoney"]=695
	tGratefulPromotions_Reward[3306049]["RewardItem"]={}
	tGratefulPromotions_Reward[3306049]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306049]["RewardItem"][1]["Id"]=142039
	tGratefulPromotions_Reward[3306049]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255"
	tGratefulPromotions_Reward[3306049]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306049]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306049]["DeleteItem"][1]["Id"]=3306049
	tGratefulPromotions_Reward[3306049]["LogId"]=12000925
	tGratefulPromotions_Reward[3306049]["EmoneyLog"]="350	20869	695	695	1	"
	
--70级极品1洞战士头礼包
	tGratefulPromotions_Reward[3306050]={}
	tGratefulPromotions_Reward[3306050]["DecEMoney"]=695
	tGratefulPromotions_Reward[3306050]["RewardItem"]={}
	tGratefulPromotions_Reward[3306050]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306050]["RewardItem"][1]["Id"]=111069
	tGratefulPromotions_Reward[3306050]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255"
	tGratefulPromotions_Reward[3306050]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306050]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306050]["DeleteItem"][1]["Id"]=3306050
	tGratefulPromotions_Reward[3306050]["LogId"]=12000925
	tGratefulPromotions_Reward[3306050]["EmoneyLog"]="350	20869	695	695	1	"

--70级极品1洞双节棍礼包
	tGratefulPromotions_Reward[3306051]={}
	tGratefulPromotions_Reward[3306051]["DecEMoney"]=763
	tGratefulPromotions_Reward[3306051]["RewardItem"]={}
	tGratefulPromotions_Reward[3306051]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306051]["RewardItem"][1]["Id"]=617139
	tGratefulPromotions_Reward[3306051]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255"
	tGratefulPromotions_Reward[3306051]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306051]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306051]["DeleteItem"][1]["Id"]=3306051
	tGratefulPromotions_Reward[3306051]["LogId"]=12000925
	tGratefulPromotions_Reward[3306051]["EmoneyLog"]="350	20870	763	763	1	"
	
--70级极品1洞李小龙衣服礼包
	tGratefulPromotions_Reward[3306052]={}
	tGratefulPromotions_Reward[3306052]["DecEMoney"]=865
	tGratefulPromotions_Reward[3306052]["RewardItem"]={}
	tGratefulPromotions_Reward[3306052]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306052]["RewardItem"][1]["Id"]=138069
	tGratefulPromotions_Reward[3306052]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255"
	tGratefulPromotions_Reward[3306052]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306052]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306052]["DeleteItem"][1]["Id"]=3306052
	tGratefulPromotions_Reward[3306052]["LogId"]=12000925
	tGratefulPromotions_Reward[3306052]["EmoneyLog"]="350	20871	865	865	1	"
	
--70级极品1洞李小龙头礼包
	tGratefulPromotions_Reward[3306053]={}
	tGratefulPromotions_Reward[3306053]["DecEMoney"]=865
	tGratefulPromotions_Reward[3306053]["RewardItem"]={}
	tGratefulPromotions_Reward[3306053]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306053]["RewardItem"][1]["Id"]=148069
	tGratefulPromotions_Reward[3306053]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255"
	tGratefulPromotions_Reward[3306053]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306053]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306053]["DeleteItem"][1]["Id"]=3306053
	tGratefulPromotions_Reward[3306053]["LogId"]=12000925
	tGratefulPromotions_Reward[3306053]["EmoneyLog"]="350	20872	865	865	1	"
	
--70级极品2洞毒刀礼包
	tGratefulPromotions_Reward[3306054]={}
	tGratefulPromotions_Reward[3306054]["DecEMoney"]=2999
	tGratefulPromotions_Reward[3306054]["RewardItem"]={}
	tGratefulPromotions_Reward[3306054]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306054]["RewardItem"][1]["Id"]=410139
	tGratefulPromotions_Reward[3306054]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255 200"
	tGratefulPromotions_Reward[3306054]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306054]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306054]["DeleteItem"][1]["Id"]=3306054
	tGratefulPromotions_Reward[3306054]["LogId"]=12000925
	tGratefulPromotions_Reward[3306054]["EmoneyLog"]="350	20882	2999	2999	1	"
	
--70级极品2洞飞刀礼包
	tGratefulPromotions_Reward[3306055]={}
	tGratefulPromotions_Reward[3306055]["DecEMoney"]=2999
	tGratefulPromotions_Reward[3306055]["RewardItem"]={}
	tGratefulPromotions_Reward[3306055]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306055]["RewardItem"][1]["Id"]=613129
	tGratefulPromotions_Reward[3306055]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306055]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306055]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306055]["DeleteItem"][1]["Id"]=3306055
	tGratefulPromotions_Reward[3306055]["LogId"]=12000925
	tGratefulPromotions_Reward[3306055]["EmoneyLog"]="350	20882	2999	2999	1	"
	
--70级极品2洞钩镰礼包
	tGratefulPromotions_Reward[3306056]={}
	tGratefulPromotions_Reward[3306056]["DecEMoney"]=2999
	tGratefulPromotions_Reward[3306056]["RewardItem"]={}
	tGratefulPromotions_Reward[3306056]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306056]["RewardItem"][1]["Id"]=511139
	tGratefulPromotions_Reward[3306056]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306056]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306056]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306056]["DeleteItem"][1]["Id"]=3306056
	tGratefulPromotions_Reward[3306056]["LogId"]=12000925
	tGratefulPromotions_Reward[3306056]["EmoneyLog"]="350	20882	2999	2999	1	"
	
--70级极品2洞念珠礼包
	tGratefulPromotions_Reward[3306057]={}
	tGratefulPromotions_Reward[3306057]["DecEMoney"]=2999
	tGratefulPromotions_Reward[3306057]["RewardItem"]={}
	tGratefulPromotions_Reward[3306057]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306057]["RewardItem"][1]["Id"]=610139
	tGratefulPromotions_Reward[3306057]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306057]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306057]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306057]["DeleteItem"][1]["Id"]=3306057
	tGratefulPromotions_Reward[3306057]["LogId"]=12000925
	tGratefulPromotions_Reward[3306057]["EmoneyLog"]="350	20882	2999	999	1	"
	
--70级极品2洞刀礼包
	tGratefulPromotions_Reward[3306320]={}
	tGratefulPromotions_Reward[3306320]["DecEMoney"]=2688
	tGratefulPromotions_Reward[3306320]["RewardItem"]={}
	tGratefulPromotions_Reward[3306320]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306320]["RewardItem"][1]["Id"]=410139
	tGratefulPromotions_Reward[3306320]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306320]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306320]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306320]["DeleteItem"][1]["Id"]=3306320
	tGratefulPromotions_Reward[3306320]["LogId"]=12000925
	tGratefulPromotions_Reward[3306320]["EmoneyLog"]="350	20883	2688	2688	1	"
	
--70级极品2洞剑礼包
	tGratefulPromotions_Reward[3306321]={}
	tGratefulPromotions_Reward[3306321]["DecEMoney"]=2688
	tGratefulPromotions_Reward[3306321]["RewardItem"]={}
	tGratefulPromotions_Reward[3306321]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306321]["RewardItem"][1]["Id"]=420139
	tGratefulPromotions_Reward[3306321]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306321]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306321]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306321]["DeleteItem"][1]["Id"]=3306321
	tGratefulPromotions_Reward[3306321]["LogId"]=12000925
	tGratefulPromotions_Reward[3306321]["EmoneyLog"]="350	20883	2688	2688	1	"
	
--70级极品2洞棒礼包
	tGratefulPromotions_Reward[3306322]={}
	tGratefulPromotions_Reward[3306322]["DecEMoney"]=2688
	tGratefulPromotions_Reward[3306322]["RewardItem"]={}
	tGratefulPromotions_Reward[3306322]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306322]["RewardItem"][1]["Id"]=480139
	tGratefulPromotions_Reward[3306322]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306322]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306322]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306322]["DeleteItem"][1]["Id"]=3306322
	tGratefulPromotions_Reward[3306322]["LogId"]=12000925
	tGratefulPromotions_Reward[3306322]["EmoneyLog"]="350	20883	2688	2688	1	"
	
--70级极品2洞法剑礼包
	tGratefulPromotions_Reward[3306323]={}
	tGratefulPromotions_Reward[3306323]["DecEMoney"]=2688
	tGratefulPromotions_Reward[3306323]["RewardItem"]={}
	tGratefulPromotions_Reward[3306323]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306323]["RewardItem"][1]["Id"]=421139
	tGratefulPromotions_Reward[3306323]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306323]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306323]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306323]["DeleteItem"][1]["Id"]=3306323
	tGratefulPromotions_Reward[3306323]["LogId"]=12000925
	tGratefulPromotions_Reward[3306323]["EmoneyLog"]="350	20883	2688	2688	1	"
	
--70级极品2洞弓礼包
	tGratefulPromotions_Reward[3306324]={}
	tGratefulPromotions_Reward[3306324]["DecEMoney"]=2688
	tGratefulPromotions_Reward[3306324]["RewardItem"]={}
	tGratefulPromotions_Reward[3306324]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306324]["RewardItem"][1]["Id"]=500129
	tGratefulPromotions_Reward[3306324]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306324]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306324]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306324]["DeleteItem"][1]["Id"]=3306324
	tGratefulPromotions_Reward[3306324]["LogId"]=12000925
	tGratefulPromotions_Reward[3306324]["EmoneyLog"]="350	20883	2688	2688	1	"
	
--70级极品2洞长棍礼包
	tGratefulPromotions_Reward[3306325]={}
	tGratefulPromotions_Reward[3306325]["DecEMoney"]=2688
	tGratefulPromotions_Reward[3306325]["RewardItem"]={}
	tGratefulPromotions_Reward[3306325]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306325]["RewardItem"][1]["Id"]=561139
	tGratefulPromotions_Reward[3306325]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306325]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306325]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306325]["DeleteItem"][1]["Id"]=3306325
	tGratefulPromotions_Reward[3306325]["LogId"]=12000925
	tGratefulPromotions_Reward[3306325]["EmoneyLog"]="350	20884	2688	2688	1	"
	
--70级极品2洞长枪礼包
	tGratefulPromotions_Reward[3306326]={}
	tGratefulPromotions_Reward[3306326]["DecEMoney"]=2688
	tGratefulPromotions_Reward[3306326]["RewardItem"]={}
	tGratefulPromotions_Reward[3306326]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306326]["RewardItem"][1]["Id"]=560139
	tGratefulPromotions_Reward[3306326]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306326]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306326]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306326]["DeleteItem"][1]["Id"]=3306326
	tGratefulPromotions_Reward[3306326]["LogId"]=12000925
	tGratefulPromotions_Reward[3306326]["EmoneyLog"]="350	20884	2688	2688	1	"
	
--70级极品2洞忍刀礼包
	tGratefulPromotions_Reward[3306327]={}
	tGratefulPromotions_Reward[3306327]["DecEMoney"]=2688
	tGratefulPromotions_Reward[3306327]["RewardItem"]={}
	tGratefulPromotions_Reward[3306327]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306327]["RewardItem"][1]["Id"]=601139
	tGratefulPromotions_Reward[3306327]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306327]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306327]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306327]["DeleteItem"][1]["Id"]=3306327
	tGratefulPromotions_Reward[3306327]["LogId"]=12000925
	tGratefulPromotions_Reward[3306327]["EmoneyLog"]="350	20885	2688	2688	1	"
	
--70级极品2洞刺剑礼包
	tGratefulPromotions_Reward[3306328]={}
	tGratefulPromotions_Reward[3306328]["DecEMoney"]=2688
	tGratefulPromotions_Reward[3306328]["RewardItem"]={}
	tGratefulPromotions_Reward[3306328]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306328]["RewardItem"][1]["Id"]=611139
	tGratefulPromotions_Reward[3306328]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306328]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306328]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306328]["DeleteItem"][1]["Id"]=3306328
	tGratefulPromotions_Reward[3306328]["LogId"]=12000925
	tGratefulPromotions_Reward[3306328]["EmoneyLog"]="350	20885	2688	2688	1	"
	
--70级极品2洞火枪礼包
	tGratefulPromotions_Reward[3306329]={}
	tGratefulPromotions_Reward[3306329]["DecEMoney"]=2688
	tGratefulPromotions_Reward[3306329]["RewardItem"]={}
	tGratefulPromotions_Reward[3306329]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306329]["RewardItem"][1]["Id"]=612139
	tGratefulPromotions_Reward[3306329]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306329]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306329]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306329]["DeleteItem"][1]["Id"]=3306329
	tGratefulPromotions_Reward[3306329]["LogId"]=12000925
	tGratefulPromotions_Reward[3306329]["EmoneyLog"]="350	20885	2688	2688	1	"
	
--70级极品2洞勇士衣服礼包
	tGratefulPromotions_Reward[3306330]={}
	tGratefulPromotions_Reward[3306330]["DecEMoney"]=3198
	tGratefulPromotions_Reward[3306330]["RewardItem"]={}
	tGratefulPromotions_Reward[3306330]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306330]["RewardItem"][1]["Id"]=130069
	tGratefulPromotions_Reward[3306330]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306330]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306330]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306330]["DeleteItem"][1]["Id"]=3306330
	tGratefulPromotions_Reward[3306330]["LogId"]=12000925
	tGratefulPromotions_Reward[3306330]["EmoneyLog"]="350	20886	3198	3198	1	"
	
--70级极品2洞道士衣服礼包
	tGratefulPromotions_Reward[3306331]={}
	tGratefulPromotions_Reward[3306331]["DecEMoney"]=3198
	tGratefulPromotions_Reward[3306331]["RewardItem"]={}
	tGratefulPromotions_Reward[3306331]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306331]["RewardItem"][1]["Id"]=134069
	tGratefulPromotions_Reward[3306331]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306331]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306331]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306331]["DeleteItem"][1]["Id"]=3306331
	tGratefulPromotions_Reward[3306331]["LogId"]=12000925
	tGratefulPromotions_Reward[3306331]["EmoneyLog"]="350	20886	3198	3198	1	"
	
--70级极品2洞武僧衣服礼包
	tGratefulPromotions_Reward[3306332]={}
	tGratefulPromotions_Reward[3306332]["DecEMoney"]=3198
	tGratefulPromotions_Reward[3306332]["RewardItem"]={}
	tGratefulPromotions_Reward[3306332]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306332]["RewardItem"][1]["Id"]=136069
	tGratefulPromotions_Reward[3306332]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306332]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306332]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306332]["DeleteItem"][1]["Id"]=3306332
	tGratefulPromotions_Reward[3306332]["LogId"]=12000925
	tGratefulPromotions_Reward[3306332]["EmoneyLog"]="350	20887	3198	3198	1	"
	
--70级极品2洞海盗衣服礼包
	tGratefulPromotions_Reward[3306333]={}
	tGratefulPromotions_Reward[3306333]["DecEMoney"]=3198
	tGratefulPromotions_Reward[3306333]["RewardItem"]={}
	tGratefulPromotions_Reward[3306333]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306333]["RewardItem"][1]["Id"]=139069
	tGratefulPromotions_Reward[3306333]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306333]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306333]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306333]["DeleteItem"][1]["Id"]=3306333
	tGratefulPromotions_Reward[3306333]["LogId"]=12000925
	tGratefulPromotions_Reward[3306333]["EmoneyLog"]="350	20887	3198	3198	1	"
	
--70级极品2洞忍者衣服礼包
	tGratefulPromotions_Reward[3306334]={}
	tGratefulPromotions_Reward[3306334]["DecEMoney"]=3198
	tGratefulPromotions_Reward[3306334]["RewardItem"]={}
	tGratefulPromotions_Reward[3306334]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306334]["RewardItem"][1]["Id"]=135069
	tGratefulPromotions_Reward[3306334]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306334]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306334]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306334]["DeleteItem"][1]["Id"]=3306334
	tGratefulPromotions_Reward[3306334]["LogId"]=12000925
	tGratefulPromotions_Reward[3306334]["EmoneyLog"]="350	20887	3198	3198	1	"
	
--70级极品2洞弓手衣服礼包
	tGratefulPromotions_Reward[3306335]={}
	tGratefulPromotions_Reward[3306335]["DecEMoney"]=3198
	tGratefulPromotions_Reward[3306335]["RewardItem"]={}
	tGratefulPromotions_Reward[3306335]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306335]["RewardItem"][1]["Id"]=133049
	tGratefulPromotions_Reward[3306335]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306335]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306335]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306335]["DeleteItem"][1]["Id"]=3306335
	tGratefulPromotions_Reward[3306335]["LogId"]=12000925
	tGratefulPromotions_Reward[3306335]["EmoneyLog"]="350	20888	3198	3198	1	"
	
--70级极品2洞战士衣服礼包
	tGratefulPromotions_Reward[3306336]={}
	tGratefulPromotions_Reward[3306336]["DecEMoney"]=3198
	tGratefulPromotions_Reward[3306336]["RewardItem"]={}
	tGratefulPromotions_Reward[3306336]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306336]["RewardItem"][1]["Id"]=131069
	tGratefulPromotions_Reward[3306336]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306336]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306336]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306336]["DeleteItem"][1]["Id"]=3306336
	tGratefulPromotions_Reward[3306336]["LogId"]=12000925
	tGratefulPromotions_Reward[3306336]["EmoneyLog"]="350	20888	3198	3198	1	"
	
--70级极品2洞勇士头礼包
	tGratefulPromotions_Reward[3306337]={}
	tGratefulPromotions_Reward[3306337]["DecEMoney"]=3198
	tGratefulPromotions_Reward[3306337]["RewardItem"]={}
	tGratefulPromotions_Reward[3306337]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306337]["RewardItem"][1]["Id"]=118069
	tGratefulPromotions_Reward[3306337]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306337]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306337]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306337]["DeleteItem"][1]["Id"]=3306337
	tGratefulPromotions_Reward[3306337]["LogId"]=12000925
	tGratefulPromotions_Reward[3306337]["EmoneyLog"]="350	20889	3198	3198	1	"
	
--70级极品2洞道士头礼包
	tGratefulPromotions_Reward[3306338]={}
	tGratefulPromotions_Reward[3306338]["DecEMoney"]=3198
	tGratefulPromotions_Reward[3306338]["RewardItem"]={}
	tGratefulPromotions_Reward[3306338]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306338]["RewardItem"][1]["Id"]=114069
	tGratefulPromotions_Reward[3306338]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306338]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306338]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306338]["DeleteItem"][1]["Id"]=3306338
	tGratefulPromotions_Reward[3306338]["LogId"]=12000925
	tGratefulPromotions_Reward[3306338]["EmoneyLog"]="350	20889	3198	3198	1	"
	
--70级极品2洞忍者头礼包
	tGratefulPromotions_Reward[3306339]={}
	tGratefulPromotions_Reward[3306339]["DecEMoney"]=3198
	tGratefulPromotions_Reward[3306339]["RewardItem"]={}
	tGratefulPromotions_Reward[3306339]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306339]["RewardItem"][1]["Id"]=123069
	tGratefulPromotions_Reward[3306339]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306339]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306339]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306339]["DeleteItem"][1]["Id"]=3306339
	tGratefulPromotions_Reward[3306339]["LogId"]=12000925
	tGratefulPromotions_Reward[3306339]["EmoneyLog"]="350	20889	3198	3198	1	"

--70级极品2洞武僧头礼包
	tGratefulPromotions_Reward[3306340]={}
	tGratefulPromotions_Reward[3306340]["DecEMoney"]=3198
	tGratefulPromotions_Reward[3306340]["RewardItem"]={}
	tGratefulPromotions_Reward[3306340]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306340]["RewardItem"][1]["Id"]=143069
	tGratefulPromotions_Reward[3306340]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306340]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306340]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306340]["DeleteItem"][1]["Id"]=3306340
	tGratefulPromotions_Reward[3306340]["LogId"]=12000925
	tGratefulPromotions_Reward[3306340]["EmoneyLog"]="350	20890	3198	3198	1	"
	
--70级极品2洞海盗头礼包
	tGratefulPromotions_Reward[3306341]={}
	tGratefulPromotions_Reward[3306341]["DecEMoney"]=3198
	tGratefulPromotions_Reward[3306341]["RewardItem"]={}
	tGratefulPromotions_Reward[3306341]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306341]["RewardItem"][1]["Id"]=145069
	tGratefulPromotions_Reward[3306341]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306341]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306341]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306341]["DeleteItem"][1]["Id"]=3306341
	tGratefulPromotions_Reward[3306341]["LogId"]=12000925
	tGratefulPromotions_Reward[3306341]["EmoneyLog"]="350	20890	3198	3198	1	"
	
--70级极品2洞弓手头礼包
	tGratefulPromotions_Reward[3306342]={}
	tGratefulPromotions_Reward[3306342]["DecEMoney"]=2888
	tGratefulPromotions_Reward[3306342]["RewardItem"]={}
	tGratefulPromotions_Reward[3306342]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306342]["RewardItem"][1]["Id"]=142039
	tGratefulPromotions_Reward[3306342]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306342]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306342]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306342]["DeleteItem"][1]["Id"]=3306342
	tGratefulPromotions_Reward[3306342]["LogId"]=12000925
	tGratefulPromotions_Reward[3306342]["EmoneyLog"]="350	20891	2888	2888	1	"
	
--70级极品2洞战士头礼包
	tGratefulPromotions_Reward[3306343]={}
	tGratefulPromotions_Reward[3306343]["DecEMoney"]=2888
	tGratefulPromotions_Reward[3306343]["RewardItem"]={}
	tGratefulPromotions_Reward[3306343]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306343]["RewardItem"][1]["Id"]=111069
	tGratefulPromotions_Reward[3306343]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306343]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306343]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306343]["DeleteItem"][1]["Id"]=3306343
	tGratefulPromotions_Reward[3306343]["LogId"]=12000925
	tGratefulPromotions_Reward[3306343]["EmoneyLog"]="350	20891	2888	2888	1	"
	
--70级极品2洞双节棍礼包
	tGratefulPromotions_Reward[3306344]={}
	tGratefulPromotions_Reward[3306344]["DecEMoney"]=3198
	tGratefulPromotions_Reward[3306344]["RewardItem"]={}
	tGratefulPromotions_Reward[3306344]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306344]["RewardItem"][1]["Id"]=617139
	tGratefulPromotions_Reward[3306344]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306344]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306344]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306344]["DeleteItem"][1]["Id"]=3306344
	tGratefulPromotions_Reward[3306344]["LogId"]=12000925
	tGratefulPromotions_Reward[3306344]["EmoneyLog"]="350	20892	3198	3198	1	"
	
--70级极品2洞李小龙衣服礼包
	tGratefulPromotions_Reward[3306345]={}
	tGratefulPromotions_Reward[3306345]["DecEMoney"]=3398
	tGratefulPromotions_Reward[3306345]["RewardItem"]={}
	tGratefulPromotions_Reward[3306345]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306345]["RewardItem"][1]["Id"]=138069
	tGratefulPromotions_Reward[3306345]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306345]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306345]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306345]["DeleteItem"][1]["Id"]=3306345
	tGratefulPromotions_Reward[3306345]["LogId"]=12000925
	tGratefulPromotions_Reward[3306345]["EmoneyLog"]="350	20893	3398	3398	1	"
	
--70级极品2洞李小龙头礼包
	tGratefulPromotions_Reward[3306346]={}
	tGratefulPromotions_Reward[3306346]["DecEMoney"]=3398
	tGratefulPromotions_Reward[3306346]["RewardItem"]={}
	tGratefulPromotions_Reward[3306346]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306346]["RewardItem"][1]["Id"]=148069
	tGratefulPromotions_Reward[3306346]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306346]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306346]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306346]["DeleteItem"][1]["Id"]=3306346
	tGratefulPromotions_Reward[3306346]["LogId"]=12000925
	tGratefulPromotions_Reward[3306346]["EmoneyLog"]="350	20894	3398	3398	1	"
	
--15级极品2洞铁头礼包
	tGratefulPromotions_Reward[3306347]={}
	tGratefulPromotions_Reward[3306347]["DecEMoney"]=4248
	tGratefulPromotions_Reward[3306347]["RewardItem"]={}
	tGratefulPromotions_Reward[3306347]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306347]["RewardItem"][1]["Id"]=170009
	tGratefulPromotions_Reward[3306347]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306347]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306347]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306347]["DeleteItem"][1]["Id"]=3306347
	tGratefulPromotions_Reward[3306347]["LogId"]=12000925
	tGratefulPromotions_Reward[3306347]["EmoneyLog"]="350	20895	4248	4248	1	"

--15级极品2洞铁衣礼包
	tGratefulPromotions_Reward[3306348]={}
	tGratefulPromotions_Reward[3306348]["DecEMoney"]=4248
	tGratefulPromotions_Reward[3306348]["RewardItem"]={}
	tGratefulPromotions_Reward[3306348]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306348]["RewardItem"][1]["Id"]=101009
	tGratefulPromotions_Reward[3306348]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306348]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306348]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306348]["DeleteItem"][1]["Id"]=3306348
	tGratefulPromotions_Reward[3306348]["LogId"]=12000925
	tGratefulPromotions_Reward[3306348]["EmoneyLog"]="350	20896	4248	4248	1	"

--15级极品2洞铁扇礼包
	tGratefulPromotions_Reward[3306349]={}
	tGratefulPromotions_Reward[3306349]["DecEMoney"]=4078
	tGratefulPromotions_Reward[3306349]["RewardItem"]={}
	tGratefulPromotions_Reward[3306349]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306349]["RewardItem"][1]["Id"]=626029
	tGratefulPromotions_Reward[3306349]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306349]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306349]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306349]["DeleteItem"][1]["Id"]=3306349
	tGratefulPromotions_Reward[3306349]["LogId"]=12000925
	tGratefulPromotions_Reward[3306349]["EmoneyLog"]="350	20897	4078	4078	1	"

--15级极品2洞拳套礼包
	tGratefulPromotions_Reward[3306350]={}
	tGratefulPromotions_Reward[3306350]["DecEMoney"]=3398
	tGratefulPromotions_Reward[3306350]["RewardItem"]={}
	tGratefulPromotions_Reward[3306350]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306350]["RewardItem"][1]["Id"]=624029
	tGratefulPromotions_Reward[3306350]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306350]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306350]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306350]["DeleteItem"][1]["Id"]=3306350
	tGratefulPromotions_Reward[3306350]["LogId"]=12000925
	tGratefulPromotions_Reward[3306350]["EmoneyLog"]="350	20898	3398	3398	1	"

--15级极品拂尘礼包
	tGratefulPromotions_Reward[3306351]={}
	tGratefulPromotions_Reward[3306351]["DecEMoney"]=2548
	tGratefulPromotions_Reward[3306351]["RewardItem"]={}
	tGratefulPromotions_Reward[3306351]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306351]["RewardItem"][1]["Id"]=619029
	tGratefulPromotions_Reward[3306351]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 0 0 0 6"
	tGratefulPromotions_Reward[3306351]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306351]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306351]["DeleteItem"][1]["Id"]=3306351
	tGratefulPromotions_Reward[3306351]["LogId"]=12000925
	tGratefulPromotions_Reward[3306351]["EmoneyLog"]="350	20899	2548	2548	1	"
	
--70级极品2洞盾牌礼包
	tGratefulPromotions_Reward[3306353]={}
	tGratefulPromotions_Reward[3306353]["DecEMoney"]=650
	tGratefulPromotions_Reward[3306353]["RewardItem"]={}
	tGratefulPromotions_Reward[3306353]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306353]["RewardItem"][1]["Id"]=900049
	tGratefulPromotions_Reward[3306353]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 3 0 0 4 255"
	tGratefulPromotions_Reward[3306353]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306353]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306353]["DeleteItem"][1]["Id"]=3306353
	tGratefulPromotions_Reward[3306353]["LogId"]=12000925
	tGratefulPromotions_Reward[3306353]["EmoneyLog"]="350	20862	650	650	1	"
	
--70级极品2洞盾牌礼包
	tGratefulPromotions_Reward[3306355]={}
	tGratefulPromotions_Reward[3306355]["DecEMoney"]=2688
	tGratefulPromotions_Reward[3306355]["RewardItem"]={}
	tGratefulPromotions_Reward[3306355]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306355]["RewardItem"][1]["Id"]=900049
	tGratefulPromotions_Reward[3306355]["RewardItem"][1]["Attr"]="0 0 0 0 0 0 0 5 0 0 6 255 255"
	tGratefulPromotions_Reward[3306355]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306355]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306355]["DeleteItem"][1]["Id"]=3306355
	tGratefulPromotions_Reward[3306355]["LogId"]=12000925
	tGratefulPromotions_Reward[3306355]["EmoneyLog"]="350	20884	650	650	1	"
	
--感恩月回馈特惠包
	tGratefulPromotions_Reward[3306385]={}
	tGratefulPromotions_Reward[3306385]["DecEMoney"]=199
	tGratefulPromotions_Reward[3306385]["RewardItem"]={}
	tGratefulPromotions_Reward[3306385]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306385]["RewardItem"][1]["Id"]=3306356
	tGratefulPromotions_Reward[3306385]["RewardItem"][1]["Attr"]="0 6 3"
	tGratefulPromotions_Reward[3306385]["RewardItem"][2]={}
	tGratefulPromotions_Reward[3306385]["RewardItem"][2]["Id"]=1088000
	tGratefulPromotions_Reward[3306385]["RewardItem"][2]["Attr"]="0 5 3"
	tGratefulPromotions_Reward[3306385]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306385]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306385]["DeleteItem"][1]["Id"]=3306385
	tGratefulPromotions_Reward[3306385]["LogId"]=12000925
	tGratefulPromotions_Reward[3306385]["EmoneyLog"]="350	20900	199	199	1	"
	
--感恩月回馈超值包
	tGratefulPromotions_Reward[3306384]={}
	tGratefulPromotions_Reward[3306384]["DecEMoney"]=599
	tGratefulPromotions_Reward[3306384]["RewardItem"]={}
	tGratefulPromotions_Reward[3306384]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306384]["RewardItem"][1]["Id"]=1200005
	tGratefulPromotions_Reward[3306384]["RewardItem"][1]["Attr"]="0 2 3"
	tGratefulPromotions_Reward[3306384]["RewardItem"][2]={}
	tGratefulPromotions_Reward[3306384]["RewardItem"][2]["Id"]=700073
	tGratefulPromotions_Reward[3306384]["RewardItem"][2]["Attr"]="0 1 3"
	tGratefulPromotions_Reward[3306384]["RewardItem"][3]={}
	tGratefulPromotions_Reward[3306384]["RewardItem"][3]["Id"]=3306523
	tGratefulPromotions_Reward[3306384]["RewardItem"][3]["Attr"]="0 1 3"
	tGratefulPromotions_Reward[3306384]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306384]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306384]["DeleteItem"][1]["Id"]=3306384
	tGratefulPromotions_Reward[3306384]["LogId"]=12000925
	tGratefulPromotions_Reward[3306384]["EmoneyLog"]="350	20901	599	599	1	"
	
	--5颗+3赤炼石（赠）礼包
	tGratefulPromotions_Reward[3306356]={}
	tGratefulPromotions_Reward[3306356]["DecEMoney"]=0
	tGratefulPromotions_Reward[3306356]["RewardItem"]={}
	tGratefulPromotions_Reward[3306356]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306356]["RewardItem"][1]["Id"]=730003
	tGratefulPromotions_Reward[3306356]["RewardItem"][1]["Attr"]="0 5 3"
	tGratefulPromotions_Reward[3306356]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306356]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306356]["DeleteItem"][1]["Id"]=3306356
	tGratefulPromotions_Reward[3306356]["LogId"]=12000925
	
	--超值代金券大礼包
	tGratefulPromotions_Reward[3306358]={}
	tGratefulPromotions_Reward[3306358]["DecEMoney"]=0
	tGratefulPromotions_Reward[3306358]["RewardItem"]={}
	tGratefulPromotions_Reward[3306358]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306358]["RewardItem"][1]["Id"]=3305976
	tGratefulPromotions_Reward[3306358]["RewardItem"][1]["Attr"]="0 1 0 4320 1"
	tGratefulPromotions_Reward[3306358]["RewardItem"][2]={}
	tGratefulPromotions_Reward[3306358]["RewardItem"][2]["Id"]=3305978
	tGratefulPromotions_Reward[3306358]["RewardItem"][2]["Attr"]="0 1 0 4320 1"
	tGratefulPromotions_Reward[3306358]["RewardItem"][3]={}
	tGratefulPromotions_Reward[3306358]["RewardItem"][3]["Id"]=3305980
	tGratefulPromotions_Reward[3306358]["RewardItem"][3]["Attr"]="0 1 0 4320 1"
	tGratefulPromotions_Reward[3306358]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306358]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306358]["DeleteItem"][1]["Id"]=3306358
	tGratefulPromotions_Reward[3306358]["LogId"]=12000925
	
	--优质天怒地灵可选包
	tGratefulPromotions_Reward[700103]={}
	tGratefulPromotions_Reward[700103]["RewardItem"]={}
	tGratefulPromotions_Reward[700103]["RewardItem"][1]={}
	tGratefulPromotions_Reward[700103]["RewardItem"][1]["Id"]=700103
	tGratefulPromotions_Reward[700103]["RewardItem"][1]["Attr"]="0 1"
	tGratefulPromotions_Reward[700103]["DeleteItem"]={}
	tGratefulPromotions_Reward[700103]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[700103]["DeleteItem"][1]["Id"]=3306163
	tGratefulPromotions_Reward[700103]["LogId"]=12000925
	--优质天怒地灵可选包
	tGratefulPromotions_Reward[700123]={}
	tGratefulPromotions_Reward[700123]["RewardItem"]={}
	tGratefulPromotions_Reward[700123]["RewardItem"][1]={}
	tGratefulPromotions_Reward[700123]["RewardItem"][1]["Id"]=700123
	tGratefulPromotions_Reward[700123]["RewardItem"][1]["Attr"]="0 1"
	tGratefulPromotions_Reward[700123]["DeleteItem"]={}
	tGratefulPromotions_Reward[700123]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[700123]["DeleteItem"][1]["Id"]=3306163
	tGratefulPromotions_Reward[700123]["LogId"]=12000925
	
	--优质天怒地灵（赠）可选包
	tGratefulPromotions_Reward[3306523]={}
	tGratefulPromotions_Reward[3306523][1]={}
	tGratefulPromotions_Reward[3306523][1]["RewardItem"]={}
	tGratefulPromotions_Reward[3306523][1]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306523][1]["RewardItem"][1]["Id"]=700103
	tGratefulPromotions_Reward[3306523][1]["RewardItem"][1]["Attr"]="0 1 3"
	tGratefulPromotions_Reward[3306523][1]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306523][1]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306523][1]["DeleteItem"][1]["Id"]=3306523
	tGratefulPromotions_Reward[3306523][1]["LogId"]=12000925
	--优质天怒地灵（赠）可选包
	tGratefulPromotions_Reward[3306523][2]={}
	tGratefulPromotions_Reward[3306523][2]["RewardItem"]={}
	tGratefulPromotions_Reward[3306523][2]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306523][2]["RewardItem"][1]["Id"]=700123
	tGratefulPromotions_Reward[3306523][2]["RewardItem"][1]["Attr"]="0 1 3"
	tGratefulPromotions_Reward[3306523][2]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306523][2]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306523][2]["DeleteItem"][1]["Id"]=3306523
	tGratefulPromotions_Reward[3306523][2]["LogId"]=12000925
	
	--90天时效玫瑰风暴·短
	tGratefulPromotions_Reward[350079]={}
	tGratefulPromotions_Reward[350079]["DecEMoney"]=0
	tGratefulPromotions_Reward[350079]["RewardItem"]={}
	tGratefulPromotions_Reward[350079]["RewardItem"][1]={}
	tGratefulPromotions_Reward[350079]["RewardItem"][1]["Id"]=350079
	tGratefulPromotions_Reward[350079]["RewardItem"][1]["Attr"]="0 1 3 129600 1 0 0 1"
	tGratefulPromotions_Reward[350079]["DeleteItem"]={}
	tGratefulPromotions_Reward[350079]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[350079]["DeleteItem"][1]["Id"]=3306357
	tGratefulPromotions_Reward[350079]["LogId"]=12000925
	tGratefulPromotions_Reward[350079]["EmoneyLog"]="350	20841	1199	1199	1	"
	--90天时效玫瑰风暴·长
	tGratefulPromotions_Reward[360149]={}
	tGratefulPromotions_Reward[360149]["DecEMoney"]=0
	tGratefulPromotions_Reward[360149]["RewardItem"]={}
	tGratefulPromotions_Reward[360149]["RewardItem"][1]={}
	tGratefulPromotions_Reward[360149]["RewardItem"][1]["Id"]=360149
	tGratefulPromotions_Reward[360149]["RewardItem"][1]["Attr"]="0 1 3 129600 1 0 0 1"
	tGratefulPromotions_Reward[360149]["DeleteItem"]={}
	tGratefulPromotions_Reward[360149]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[360149]["DeleteItem"][1]["Id"]=3306357
	tGratefulPromotions_Reward[360149]["LogId"]=12000925
	tGratefulPromotions_Reward[360149]["EmoneyLog"]="350	20841	1199	1199	1	"
	
	--优质天怒地灵可选包
	tGratefulPromotions_Reward[3306524]={}
	tGratefulPromotions_Reward[3306524]["DecEMoney"]=1199
	tGratefulPromotions_Reward[3306524]["RewardItem"]={}
	tGratefulPromotions_Reward[3306524]["RewardItem"][1]={}
	tGratefulPromotions_Reward[3306524]["RewardItem"][1]["Id"]=3306163
	tGratefulPromotions_Reward[3306524]["RewardItem"][1]["Attr"]="0 1"
	tGratefulPromotions_Reward[3306524]["DeleteItem"]={}
	tGratefulPromotions_Reward[3306524]["DeleteItem"][1]={}
	tGratefulPromotions_Reward[3306524]["DeleteItem"][1]["Id"]=3306524
	tGratefulPromotions_Reward[3306524]["LogId"]=12000925
	tGratefulPromotions_Reward[3306524]["EmoneyLog"]="350	20841	1199	1199	1	"
---------------------------------------------逻辑部分--------------------------------------------------------------------------
-- 22269Npc使用
function GratefulPromotion_ChkNpcPase(nPase,nNpcId)
	-- 不是该阶段
	if GratefulPromotions_JudgeTime() == nPase then
	
		-- 该阶段全部售罄
		if GratefulPromotion_IfSellOut(nPase,nNpcId) then
			return false
		end

		return true
	end

	return false
end

--二次确认
function GratefulPromotion_Sell(nNpcId,nItemId)
	--判断当前是否为活动时间
	if not Sys_ChkFullTime(tActivityTime["Grateful"][nNpcId]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	--判断玩家身上是否有足够天石
	local nUserEmoney = Get_UserEMoney()
	local nEMoney = tGratefulPromotions_Cont["Emoney"]
	if not (nUserEmoney >= nEMoney) then
		LinkNpcGossipFunc_New(nNpcId,"1-5")
		return
	end
	
	-- 有掩码限制
	if tGratefulPromotions_Stc[nItemId] ~= nil then
		local nEvent = tGratefulPromotions_Stc[nItemId]["EventType"]
		local nType = tGratefulPromotions_Stc[nItemId]["DataType"]
		
		-- 超过限制
		if Task_ChkStcValue(nEvent,nType,">=",3) then
			return
		end
	
	end
	
	--判断背包空间
	local nNeedSpace = RewardTemplate_GetRewardSpace(tGratefulPromotions_Buy[nItemId])
	if not User_CheckLeftSpace(nNeedSpace) then
		LinkNpcGossipFunc_New(nNpcId,"1-6")
		return
	end
	--二次确认对白
	local sItemName = Get_ItemtypeName(nItemId)
	tNpcGossip[22266]["Text171"] = string.format(tGratefulPromotions_Text[22266]["Text171"],sItemName)
	tNpcGossip[22266]["OptionFunc15"] =string.format("GratefulPromotion_Sell_Decide</N>%d</N>%d",nNpcId,nItemId)
	
	LinkNpcGossipFunc_New(nNpcId,"1-7")

end
--购买感恩礼包
function GratefulPromotion_Sell_Decide(nNpcId,nItemId)
	--判断当前是否为活动时间
	if not Sys_ChkFullTime(tActivityTime["Grateful"][nNpcId]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	--判断玩家身上是否有足够天石
	local nUserEmoney = Get_UserEMoney()
	local nEMoney = tGratefulPromotions_Cont["Emoney"]
	if not (nUserEmoney >= nEMoney) then
		LinkNpcGossipFunc_New(nNpcId,"1-5")
		return
	end

	--判断背包空间
	local nNeedSpace = RewardTemplate_GetRewardSpace(tGratefulPromotions_Buy[nItemId])
	if not User_CheckLeftSpace(nNeedSpace) then
		LinkNpcGossipFunc_New(nNpcId,"1-6")
		return
	end

	
	-- 有掩码限制
	if tGratefulPromotions_Stc[nItemId] ~= nil then
		local nEvent = tGratefulPromotions_Stc[nItemId]["EventType"]
		local nType = tGratefulPromotions_Stc[nItemId]["DataType"]
		
		-- 超过限制
		if Task_ChkStcValue(nEvent,nType,">=",3) then
			return
		end
	
		-- 置掩码
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	-- 扣天石给奖励
	if User_AddEMoney(-nEMoney) then
		RewardTemplate_UseItem(tGratefulPromotions_Buy[nItemId])
	end
end

--打开商店界面
function GratefulPromotions_Open(nNpcId)
	-- 活动时间外
	if not Sys_ChkFullTime(tActivityTime["Grateful"][nNpcId]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--打开商店
	User_OpenDialog()
end

--判断时间函数
--0:活动前
--1~2：活动期间内的非抢购时间
--11~13：第一阶段活动时间的抢购时间内
--21~23：第二阶段活动时间的抢购时间内
--31~33：第三阶段活动时间的抢购时间内
--40：活动后
function GratefulPromotions_JudgeTime()
	-- 确定阶段
	local nTimeNum = 0
	for i,v in ipairs(tActivityTime["Grateful"]["ActivityTime"]) do
		if Sys_ChkFullTime(v) then
			nTimeNum =  i
		end
	end

	-- 返回对应阶段
	if nTimeNum >= 1 and nTimeNum <= 3 then
		return 1,nTimeNum
	elseif nTimeNum >= 4 and nTimeNum <= 6 then
		return 2,nTimeNum
	elseif nTimeNum >= 7 and nTimeNum <= 9 then
		return 3,nTimeNum
	end
	-- 不在时间内
	return false
end


-- 是否售罄 是 返回true 否 返回false
function GratefulPromotion_IfSellOut(nPase,nNpcId,nItemId)
	local tGoods = tGratefulPromotions_Buy[nNpcId][nPase]
	local nGlobalId
	local nPos
	local nMax
	if nItemId ~= nil then
		nGlobalId = tGoods[nItemId]["GlobalId"]
		nPos = tGoods[nItemId]["Pos"]
		nMax = tGoods[nItemId]["Max"]
		if not (Get_SysDynaGlobalData(nGlobalId,nPos) >= nMax) then
			return false
		end
	else
		for i,v in pairs(tGoods) do
			nGlobalId = v["GlobalId"]
			nPos = v["Pos"]
			nMax = v["Max"]
			if not (Get_SysDynaGlobalData(nGlobalId,nPos) >= nMax) then
				return false
			end
		end
	end
	return true
end

-- 获取剩余数量
function GratefulPromotion_SellLeft(nPase,nNpcId,nItemId)
	local tGoods = tGratefulPromotions_Buy[nNpcId][nPase]
	local nGlobalId = tGoods[nItemId]["GlobalId"]
	local nPos = tGoods[nItemId]["Pos"]
	local nMax = tGoods[nItemId]["Max"]
	local nGlobalLeft = Get_SysDynaGlobalData(nGlobalId,nPos)
	local nNumber = nMax - nGlobalLeft
	return nNumber
end


--二次确认
function GratefulPromotions_Open_ClothesVou_two(nItemId)
	local nEMoney = tGratefulPromotions_Reward[nItemId]["DecEMoney"]
	local nVouEmoney,nVouId = GratefulPromotions_JudegeVouchers(nItemId)
	local nDisEmoney = nEMoney - nVouEmoney
	local sItemName = Get_ItemtypeName(nItemId)
	tItem[nItemId]["Text131"]= string.format(tGratefulPromotions_Text[1]["Text131"],nDisEmoney,sItemName)
	tItem[nItemId]["OptionFunc131"] =string.format("GratefulPromotions_Open_ClothesVou</N>%d",nItemId)
	
	LinkItemGossipFunc_New(nItemId,"1-3")
end
--用代金券打开
function GratefulPromotions_Open_ClothesVou(nItemId)
	local nEvent = tGratefulPromotions_Stc[3]["EventType"]
	local nType = tGratefulPromotions_Stc[3]["DataType"]
	local nEMoney = tGratefulPromotions_Reward[nItemId]["DecEMoney"]
	local nVouEmoney,nVouId = GratefulPromotions_JudegeVouchers(nItemId)
	local nDisEmoney = nEMoney - nVouEmoney
	local nUserEmoney = Get_UserEMoney()
	
	--检查代金券
	if not Item_ChkItem(nVouId) then  
		LinkItemGossipFunc_New(nItemId,"1-2")
		return
	end
	
	--检查天石
	if not (nUserEmoney >= nDisEmoney) then
		User_TalkChannel2005(tGratefulPromotions_Text["NoEmoney"])
		return
	end

	-- 空间不足
	if not RewardTemplate_CheckSpace(tGratefulPromotions_Reward[nItemId]) then
		return
	end
	
	-- 今天已使用
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		return
	end
	
	if Item_ChkItem(nVouId) and Item_DelItem(nVouId) then 
		Task_SetStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		if User_AddEMoney(-nDisEmoney) then
			RewardTemplate_UseItem(tGratefulPromotions_Reward[nItemId])
			Sys_SaveEmoneyBuy(tGratefulPromotions_Vouchers[nVouId]["EmoneyLog"])
			Sys_SaveEmoneyBuy(tGratefulPromotions_Reward[nItemId]["EmoneyLog"])
		end
	end
end
--二次确认
function GratefulPromotions_Open_Clothes_two(nItemId)
	local nEMoney = tGratefulPromotions_Reward[nItemId]["DecEMoney"]
	local sItemName = Get_ItemtypeName(nItemId)
	tItem[nItemId]["Text131"]= string.format(tGratefulPromotions_Text[1]["Text131"],nEMoney,sItemName)
	tItem[nItemId]["OptionFunc131"] =string.format("GratefulPromotions_Open_Clothes</N>%d",nItemId)
	LinkItemGossipFunc_New(nItemId,"1-3")
end

----不使用代金券打开礼包
function GratefulPromotions_Open_Clothes(nItemId)
	local nEMoney = tGratefulPromotions_Reward[nItemId]["DecEMoney"]
	local nUserEmoney = Get_UserEMoney()
	
	--检查天石
	if not (nUserEmoney >= nEMoney) then
		User_TalkChannel2005(tGratefulPromotions_Text["NoEmoney"])
		return
	end
	
	-- 空间不足
	if not RewardTemplate_CheckSpace(tGratefulPromotions_Reward[nItemId]) then
		return
	end
	
	-- 口袋天石给奖励
	if User_AddEMoney(-nEMoney) then
		RewardTemplate_UseItem(tGratefulPromotions_Reward[nItemId])
		Sys_SaveEmoneyBuy(tGratefulPromotions_Reward[nItemId]["EmoneyLog"])
	end
end

--检测玩家身上可用代金券
function GratefulPromotions_JudegeVouchers(nItemId)
	local nMaxMoney = 0
	local nVouEmoney = 0
	local nVouId = 0
	local nEMoney = tGratefulPromotions_Reward[nItemId]["DecEMoney"]
		for i,v in pairs(tGratefulPromotions_Vouchers) do
			if Item_ChkItem(v["Id"]) then 
				if nEMoney >= v["MinEMoney"] then
					if v["EMoney"] > nMaxMoney then 
						nMaxMoney=v["EMoney"]
						nVouEmoney= v["EMoney"]
						nVouId= v["Id"]
					end
				end
			end
		end
	return nVouEmoney,nVouId
end
--检查玩家身上是否存在折扣券
function GratefulPromotions_Whether_JudegeVouchers(nItemId)
	
	if GratefulPromotions_JudegeVouchers(nItemId) == 0 then
		return false
	end
	-- for i,v in pairs(tGratefulPromotions_Vouchers) do
		-- if Item_ChkItem(v["Id"]) then 
			-- return true
		-- end
	-- end
	return true
end



--随机发放代金券邮件
function GratefulPromotion_Login_SendMail()
	--非活动时间跳出
	if not Sys_ChkFullTime(tActivityTime["Grateful"]["AllActTime"]) then
		return
	end
	
	-- 隔天重置
	local nEvent = tGratefulPromotions_Stc[4]["EventType"]
	local nType = tGratefulPromotions_Stc[4]["DataType"]
	if not Task_ChkStcValue(nEvent,nType,"==",0) then
		if not Task_StcInterval(nEvent,nType,1,4) then
			return
		end
	end
	

	-- 等级不足
	if not User_JudgeLevelAndMetempsychosis(tGratefulPromotions_Cont["MinLevel"],tGratefulPromotions_Cont["MinMeto"]) then
		return
	end
	
	-- 置掩码
	Task_SetStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)

	-- 随机邮件
	local flat,tItem = Probabil_RandomAward(tGratefulPromotions_MailReward,1)
	local nActionId = tItem[1]["tAward"][1]["Item_1"]

	-- 发邮件
	local nUserId = Get_UserId()
	local sSender =tGratefulPromotions_Text["Mail"][1]["Sender"]
	local sTitle =tGratefulPromotions_Text["Mail"][1]["Title"]
	local sContent =tGratefulPromotions_Text["Mail"][1]["Content"]
	Sys_SendMail(nUserId,0,0,nActionId,0,30,sSender,sTitle,sContent)
end


--神秘商人限时抢购
function GratefulPromotion_BuyConfirm(nNpcId,nItemId)
	-- 判断是否在抢购时间内
	local nIndex,nTimeNum= GratefulPromotions_JudgeTime()
	if not nIndex then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 判断抢购数是否达到限制
	if GratefulPromotion_IfSellOut(nIndex,nNpcId,nItemId) then
		if nTimeNum >= #tActivityTime["Grateful"]["ActivityTime"] then  
			LinkNpcGossipFunc_New(nNpcId,"2-6")
			return
		end
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	--检查天石
	local nEMoney =tGratefulPromotions_Buy[nNpcId][nIndex][nItemId]["Price"]
	local nUserEmoney = Get_UserEMoney()
	if not (nUserEmoney >= nEMoney) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	--判断背包空间
	local nNeedSpace = RewardTemplate_GetRewardSpace(tGratefulPromotions_Buy[nNpcId][nIndex][nItemId])
	if nNeedSpace  ~= nil and nNeedSpace  ~= 0 then 
		if not User_CheckLeftSpace(nNeedSpace) then
			tNpcGossip[22269]["Text241"] = string.format(tGratefulPromotions_Text[nNpcId]["Text241"],nNeedSpace)
			LinkNpcGossipFunc_New(nNpcId,"2-4")
			return
		end
	end
	
	local sItemName = Get_ItemtypeName(nItemId)
	tNpcGossip[22269]["Text251"] = string.format(tGratefulPromotions_Text[nNpcId]["Text251"],nEMoney,sItemName)
	tNpcGossip[22269]["OptionFunc251"] =string.format("GratefulPromotion_PanicBuying</N>%d</N>%d",nNpcId,nItemId)
	
	LinkNpcGossipFunc_New(nNpcId,"2-5")
end


--二次确认抢购
function GratefulPromotion_PanicBuying(nNpcId,nItemId)
	-- 判断是否在抢购时间内
	local nIndex,nTimeNum= GratefulPromotions_JudgeTime()
	if not nIndex then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 判断抢购数是否达到限制
	if GratefulPromotion_IfSellOut(nIndex,nNpcId,nItemId) then
		if nTimeNum >= #tActivityTime["Grateful"]["ActivityTime"] then  
			LinkNpcGossipFunc_New(nNpcId,"2-6")
			return
		end
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	--检查天石
	local nEMoney =tGratefulPromotions_Buy[nNpcId][nIndex][nItemId]["Price"]
	local nUserEmoney = Get_UserEMoney()
	if not (nUserEmoney >= nEMoney) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	--判断背包空间
	local nNeedSpace = RewardTemplate_GetRewardSpace(tGratefulPromotions_Buy[nNpcId][nIndex][nItemId])
	if nNeedSpace  ~= nil and nNeedSpace  ~= 0 then 
		if not User_CheckLeftSpace(nNeedSpace) then
			tNpcGossip[22269]["Text241"] = string.format(tGratefulPromotions_Text[nNpcId]["Text241"],nNeedSpace)
			LinkNpcGossipFunc_New(nNpcId,"2-4")
			return
		end
	end
	
	local nGlobalId =  tGratefulPromotions_Buy[nNpcId][nIndex][nItemId]["GlobalId"]
	local nPos = tGratefulPromotions_Buy[nNpcId][nIndex][nItemId]["Pos"]
	local nEMoney = tGratefulPromotions_Buy[nNpcId][nIndex][nItemId]["Price"]
	
	-- 全服购买数 + 1
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos) + 1
	Sys_SetSynaGlobalData(nGlobalId,nPos,nData)
	
	-- 扣天石给奖励
	if User_AddEMoney(-nEMoney) then
		RewardTemplate_UseItem(tGratefulPromotions_Buy[nNpcId][nIndex][nItemId])
		Sys_SaveEmoneyBuy(tGratefulPromotions_Buy[nNpcId][nIndex][nItemId]["EmoneyLog"])
		
		-- 返回主对白
		if GratefulPromotion_ChkNpcPase(nIndex,nNpcId) then
			LinkNpcGossipFunc_New(nNpcId,"1-".. nIndex)
		else
			LinkNpcGossipFunc_New(nNpcId,"1-4")
		end
	end
end


--清理全局动态码--全服物品限制位
function GratefulPromotion_LimitClear()
	local nGlobalId1 = tGratefulPromotions_Cont["GlobalId1"]
	local nGlobalId2 = tGratefulPromotions_Cont["GlobalId2"]
	local nGlobalId3 = tGratefulPromotions_Cont["GlobalId3"]
	local nGlobalId4 = tGratefulPromotions_Cont["GlobalId4"]
	local nGlobalId5 = tGratefulPromotions_Cont["GlobalId5"]
	if Get_SysDynaGlobalData1(nGlobalId5) == 1 then
		return
	end
	Sys_ResetAllSynaGlobalData(nGlobalId1)
	Sys_ResetAllSynaGlobalData(nGlobalId2)
	Sys_ResetAllSynaGlobalData(nGlobalId3)
	Sys_ResetAllSynaGlobalData(nGlobalId4)
	Sys_ResetAllSynaGlobalData(nGlobalId5)
	Sys_SetSynaGlobalData1(nGlobalId5,1)
end

--清理全局动态码 - 重置标记位
function GratefulPromotion_MarkClear()
	local nGlobalId = tGratefulPromotions_Cont["GlobalId5"]
	if Get_SysDynaGlobalData1(nGlobalId) == 0 then
		return
	end
	Sys_SetSynaGlobalData1(nGlobalId,0)
end
--二次确认
function tGratefulPromotions_OpenGif_two(nItemId,nIndex)
	-- 可选包给奖励
	if nIndex ~= nil then
		RewardTemplate_UseItem(tGratefulPromotions_Reward[nItemId][nIndex])
		return
	end

	local nEMoney = tGratefulPromotions_Reward[nItemId]["DecEMoney"]
	
	-- 天石开启奖励
	if nEMoney~= nil and nEMoney  ~= 0 then 
		--判断背包空间
		local nNeedSpace = RewardTemplate_GetRewardSpace(tGratefulPromotions_Reward[nItemId])
		if nNeedSpace  ~= nil and nNeedSpace  ~= 0 then 
			if not User_CheckLeftSpace(nNeedSpace) then
				local sText = string.format(tGratefulPromotions_Text["NoSpace"],nNeedSpace)
				User_TalkChannel2005(sText)
				return
			end
		end
	
		-- 天石不足
		local nUserEmoney = Get_UserEMoney()
		if not (nUserEmoney >= nEMoney) then
			User_TalkChannel2005(tGratefulPromotions_Text["NoEmoney"])
			return
		end
		
		local sItemName = Get_ItemtypeName(nItemId)
		tItem[nItemId]["Text121"]= string.format(tGratefulPromotions_Text[1]["Text131"],nEMoney,sItemName)
		tItem[nItemId]["OptionFunc121"] =string.format("tGratefulPromotions_OpenGif</N>%d",nItemId)
		LinkItemGossipFunc_New(nItemId,"1-2")
		return
	end
	
	-- 直接给奖励
	RewardTemplate_UseItem(tGratefulPromotions_Reward[nItemId])
end

--
function tGratefulPromotions_OpenGif(nItemId)
	--判断背包空间
	local nNeedSpace = RewardTemplate_GetRewardSpace(tGratefulPromotions_Reward[nItemId])
	if nNeedSpace  ~= nil and nNeedSpace  ~= 0 then 
		if not User_CheckLeftSpace(nNeedSpace) then
			local sText = string.format(tGratefulPromotions_Text["NoSpace"],nNeedSpace)
			User_TalkChannel2005(sText)
			return
		end
	end
	
	--判断天石是否足够
	local nUserEmoney = Get_UserEMoney()
	local nEMoney = tGratefulPromotions_Reward[nItemId]["DecEMoney"]
	if not (nUserEmoney >= nEMoney) then
		User_TalkChannel2005(tGratefulPromotions_Text["NoEmoney"])
		return
	end

	-- 扣天石给奖励
	if User_AddEMoney(-nEMoney) then 
		RewardTemplate_UseItem(tGratefulPromotions_Reward[nItemId])
		Sys_SaveEmoneyBuy(tGratefulPromotions_Reward[nItemId]["EmoneyLog"])
	end
end
--全服公告
function GratefulPromotion_Broad()
	--非活动时间跳出
	if not Sys_ChkFullTime(tActivityTime["Grateful"]["AllActTime"]) then
		return
	end
	Sys_SystemBroadcast(tGratefulPromotions_Text["SystemBroadcast"])
end

-- 物品逻辑函数
function GratefulPromotion_ItemFunc(i)
	tItem[i] = tItem[i] or {}
	tItem[i]["DialogueText"] =tGratefulPromotions_Text[1]
	tItem[i]["Text1-1"] = {111,112,114}
	tItem[i]["tOption1-1"] ={111,112,113}
	tItem[i]["ChkFunc1-1"] =function()
		local nEvent = tGratefulPromotions_Stc[3]["EventType"]--169
		local nType = tGratefulPromotions_Stc[3]["DataType"]--27
		local nEMoney = tGratefulPromotions_Reward[i]["DecEMoney"]
		local nItemDec = Get_ItemtypeItemDesc(i)
		tItem[i]["Text111"] =string.format(tGratefulPromotions_Text[1]["Text111"],nItemDec)
		
		local nVouEmoney = GratefulPromotions_JudegeVouchers(i)
		local nDisEmoney = nEMoney - nVouEmoney
		local  nBollean = GratefulPromotions_Whether_JudegeVouchers(i)
		-- 初始化对白
		tItem[i]["Text1-1"]= {111,112,114}

		-- 隔天重置
		if not Task_ChkStcValue(nEvent,nType,"==",0) then
			if Task_StcInterval(nEvent,nType,1,4) then
				Task_SetStatistic(nEvent,nType,0,1)
				Task_SetStcTimestamp(nEvent,nType,0)
			end
		end
		
		if nBollean == true then
			-- 对白内容
			if Task_ChkStcValue(nEvent,nType,"==",0) then
				tItem[i]["Text112"] =string.format(tGratefulPromotions_Text[1]["Text112"],nVouEmoney,nDisEmoney)
			else
				tItem[i]["Text112"] =tGratefulPromotions_Text[1]["Text113"]
			end
		else
			tItem[i]["Text1-1"]= {111,114}
		end
		
		return true
	end
	
	tItem[i]["OptionChkFunc111"] = function ()
		local nEvent = tGratefulPromotions_Stc[3]["EventType"]--169
		local nType = tGratefulPromotions_Stc[3]["DataType"]--27
		
	
		--没有代金券不显示此对白
		if not  GratefulPromotions_Whether_JudegeVouchers(i) then
			return false
		end
		if Task_ChkStcValue(nEvent,nType,">=",1) then
			return false
		end
		local nMaxMoney = 0
		local nEMoney = tGratefulPromotions_Reward[i]["DecEMoney"]
		local nVouEmoney = GratefulPromotions_JudegeVouchers(i)
		local nDisEmoney = nEMoney - nVouEmoney
		tItem[i]["Option111"] = string.format(tGratefulPromotions_Text[1]["Option111"],nDisEmoney)
		return true
	end
	tItem[i]["OptionFunc111"] ="GratefulPromotions_Open_ClothesVou_two</N>"..i
	tItem[i]["OptionChkFunc112"] = function ()
		local nEMoney = tGratefulPromotions_Reward[i]["DecEMoney"]
		tItem[i]["Option112"] = string.format(tGratefulPromotions_Text[1]["Option112"],nEMoney)
		return true
	end
	tItem[i]["OptionFunc112"] ="GratefulPromotions_Open_Clothes_two</N>"..i
	
	tItem[i]["Text1-2"] = {121}
	tItem[i]["tOption1-2"] ={121}
	--打开礼包二次确认对白
	tItem[i]["Text1-3"] = {131}
	tItem[i]["tOption1-3"] = {131,132}
end


--------------------------------------------NPC部分-----------------------------------------------------------------------------
----------------------------------------------------------------
--属性道具大使
tNpcFace[5894] = 1
tNpcGossip[22266]= tNpcGossip[22266] or DefaultNpc:new{}
tNpcGossip[22266]["OptionHidden"] = 1
tNpcGossip[22266]["DialogueText"] = tGratefulPromotions_Text[22266]

--活动前
tNpcGossip[22266]["Text1-1"] = {111,112,113}
tNpcGossip[22266]["tOption1-1"] = {1}
tNpcGossip[22266]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tActivityTime["Grateful"][22266]["BeforeActivityTime"])
end

--活动后
tNpcGossip[22266]["Text1-2"] = {121,122}
tNpcGossip[22266]["tOption1-2"] = {2}
tNpcGossip[22266]["ChkFunc1-2"]= function()
	return not Sys_ChkFullTime(tActivityTime["Grateful"][22266]["ActivityTime"])
end

--活动中
tNpcGossip[22266]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[22266]["tOption1-3"] = {3,4,5,6,7,8,9,10,11}
--购买九转聚神丹感恩礼包
tNpcGossip[22266]["OptionFunc3"]="GratefulPromotion_Sell</N>22266</N>3305981"
--购买3000分钟经验感恩礼包
tNpcGossip[22266]["OptionFunc4"]="GratefulPromotion_Sell</N>22266</N>3305982"
--购买5000点气力值感恩礼包
tNpcGossip[22266]["OptionFunc5"]="GratefulPromotion_Sell</N>22266</N>3305983"
--购买1000点修为值感恩礼包
tNpcGossip[22266]["OptionFunc6"]="GratefulPromotion_Sell</N>22266</N>3305984"
--购买3000点修行值感恩礼包
tNpcGossip[22266]["OptionFunc7"]="GratefulPromotion_Sell</N>22266</N>3305985"
--购买究极通神丹感恩礼包
tNpcGossip[22266]["OptionFunc8"]="GratefulPromotion_Sell</N>22266</N>3305986"
--购买免费强炼丹感恩礼包
tNpcGossip[22266]["OptionFunc9"]="GratefulPromotion_Sell</N>22266</N>3305987"
--购买通神丹感恩礼包
tNpcGossip[22266]["OptionFunc10"]="GratefulPromotion_Sell</N>22266</N>3305988"
--购买100000点气力值感恩礼包
tNpcGossip[22266]["OptionFunc11"]="GratefulPromotion_Sell</N>22266</N>3305989"
--判断九转聚神丹感恩礼包是否售截完
tNpcGossip[22266]["OptionChkFunc3"] = function ()
	local nEvent1 = tGratefulPromotions_Stc[3305981]["EventType"]--169
	local nType1 = tGratefulPromotions_Stc[3305981]["DataType"]--19
	
--[[	if Task_ChkStcValue(nEvent1,nType1,">=",3) then
		return false
	end]]
	local nLeft = tGratefulPromotions_Cont["LimitGoods"] - Get_UserStatisticValue(nEvent1,nType1)
	tNpcGossip[22266]["Option3"] = string.format(tGratefulPromotions_Text[22266]["Option3"],nLeft)
	return true
end
--判断3000分钟经验感恩礼包是否售截完
tNpcGossip[22266]["OptionChkFunc4"] = function ()
	local nEvent2 = tGratefulPromotions_Stc[3305982]["EventType"]--169
	local nType2 = tGratefulPromotions_Stc[3305982]["DataType"]--20
--[[	if Task_ChkStcValue(nEvent2,nType2,">=",3) then
		return false
	end]]
	local nLeft = tGratefulPromotions_Cont["LimitGoods"] - Get_UserStatisticValue(nEvent2,nType2)
	tNpcGossip[22266]["Option4"] = string.format(tGratefulPromotions_Text[22266]["Option4"],nLeft)
	return true
end 

--促销结束
tNpcGossip[22266]["Text1-4"] = {141,142}
tNpcGossip[22266]["tOption1-4"] = {12}

--天石不足
tNpcGossip[22266]["Text1-5"] = {151}
tNpcGossip[22266]["tOption1-5"] = {13}

--空间不足
tNpcGossip[22266]["Text1-6"] = {161}
tNpcGossip[22266]["tOption1-6"] = {14}
--二次确认
tNpcGossip[22266]["Text1-7"] = {171}
tNpcGossip[22266]["tOption1-7"] = {15,16}
----------------------------------------------------------------
--外套大使
tNpcFace[5895] = 2
tNpcGossip[22267]= tNpcGossip[22267] or DefaultNpc:new{}
tNpcGossip[22267]["OptionHidden"] = 1
tNpcGossip[22267]["DialogueText"] = tGratefulPromotions_Text[22267]

--活动前
tNpcGossip[22267]["Text1-1"] = {111,112,113}
tNpcGossip[22267]["tOption1-1"] = {1}
tNpcGossip[22267]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tActivityTime["Grateful"][22267]["BeforeActivityTime"])
end

--活动后
tNpcGossip[22267]["Text1-2"] = {121}
tNpcGossip[22267]["tOption1-2"] = {2}
tNpcGossip[22267]["ChkFunc1-2"]= function()
	return not Sys_ChkFullTime(tActivityTime["Grateful"][22267]["ActivityTime"])
end

--活动中
tNpcGossip[22267]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[22267]["tOption1-3"] = {3}
tNpcGossip[22267]["OptionFunc3"] ="GratefulPromotions_Open</N>22267"

---------------------------------------------------------
--装备大使
tNpcFace[5896] = 3
tNpcGossip[22268]= tNpcGossip[22268] or DefaultNpc:new{}
tNpcGossip[22268]["OptionHidden"] = 1
tNpcGossip[22268]["DialogueText"] = tGratefulPromotions_Text[22268]

--活动前
tNpcGossip[22268]["Text1-1"] = {111,112,113}
tNpcGossip[22268]["tOption1-1"] = {1}
tNpcGossip[22268]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tActivityTime["Grateful"][22268]["BeforeActivityTime"])
end

--活动后
tNpcGossip[22268]["Text1-2"] = {121}
tNpcGossip[22268]["tOption1-2"] = {2}
tNpcGossip[22268]["ChkFunc1-2"]= function()
	return not Sys_ChkFullTime(tActivityTime["Grateful"][22268]["ActivityTime"])
end

--活动中
tNpcGossip[22268]["Text1-3"] = {131,132,133,134}
tNpcGossip[22268]["tOption1-3"] = {3}
tNpcGossip[22268]["OptionFunc3"] ="GratefulPromotions_Open</N>22268"


---------------------------------------------------------
--限时抢购
tNpcFace[5897]=13
tNpcGossip[22269]= tNpcGossip[22269] or DefaultNpc:new{}
tNpcGossip[22269]["OptionHidden"] = 1
tNpcGossip[22269]["DialogueText"] = tGratefulPromotions_Text[22269]

--第一阶段
tNpcGossip[22269]["Text1-1"] = {111,112,113,114}
tNpcGossip[22269]["tOption1-1"] = {111,112,113,114,115}
tNpcGossip[22269]["ChkFunc1-1"]= function()
	return GratefulPromotion_ChkNpcPase(1,22269)
end
tNpcGossip[22269]["OptionChkFunc111"] = function ()
	local nNumber = GratefulPromotion_SellLeft(1,22269,3005360)
	tNpcGossip[22269]["Option111"]= string.format(tGratefulPromotions_Text[22269]["Option111"],nNumber)
	return not GratefulPromotion_IfSellOut(1,22269,3005360)
end

tNpcGossip[22269]["OptionChkFunc112"] = function ()
	local nNumber = GratefulPromotion_SellLeft(1,22269,3002926)
	tNpcGossip[22269]["Option112"]= string.format(tGratefulPromotions_Text[22269]["Option112"],nNumber)
	return not GratefulPromotion_IfSellOut(1,22269,3002926)
end

tNpcGossip[22269]["OptionChkFunc113"] = function ()
	local nNumber = GratefulPromotion_SellLeft(1,22269,3001044)
	tNpcGossip[22269]["Option113"]= string.format(tGratefulPromotions_Text[22269]["Option113"],nNumber)
	return not GratefulPromotion_IfSellOut(1,22269,3001044)
end

tNpcGossip[22269]["OptionChkFunc114"] = function ()
	local nNumber = GratefulPromotion_SellLeft(1,22269,711083)
	tNpcGossip[22269]["Option114"]= string.format(tGratefulPromotions_Text[22269]["Option114"],nNumber)
	return not GratefulPromotion_IfSellOut(1,22269,711083)
end

tNpcGossip[22269]["OptionChkFunc115"] = function ()
	local nNumber = GratefulPromotion_SellLeft(1,22269,723701)
	tNpcGossip[22269]["Option115"]= string.format(tGratefulPromotions_Text[22269]["Option115"],nNumber)
	return not GratefulPromotion_IfSellOut(1,22269,723701)
end
tNpcGossip[22269]["OptionFunc111"] = "GratefulPromotion_BuyConfirm</N>22269</N>3005360"
tNpcGossip[22269]["OptionFunc112"] = "GratefulPromotion_BuyConfirm</N>22269</N>3002926"
tNpcGossip[22269]["OptionFunc113"] = "GratefulPromotion_BuyConfirm</N>22269</N>3001044"
tNpcGossip[22269]["OptionFunc114"] = "GratefulPromotion_BuyConfirm</N>22269</N>711083"
tNpcGossip[22269]["OptionFunc115"] = "GratefulPromotion_BuyConfirm</N>22269</N>723701"

--第二阶段
tNpcGossip[22269]["Text1-2"] = {181,182,183,184}
tNpcGossip[22269]["tOption1-2"] = {181,182,183,184,185,186,187,188,189,1810,1811}
tNpcGossip[22269]["ChkFunc1-2"]= function()
	return GratefulPromotion_ChkNpcPase(2,22269)
end
tNpcGossip[22269]["OptionFunc181"] = "GratefulPromotion_BuyConfirm</N>22269</N>184355"
tNpcGossip[22269]["OptionChkFunc181"] = function ()
	local nNumber = GratefulPromotion_SellLeft(2,22269,184355)
	tNpcGossip[22269]["Option181"]= string.format(tGratefulPromotions_Text[22269]["Option181"],nNumber)
	return not GratefulPromotion_IfSellOut(2,22269,184355)
end
tNpcGossip[22269]["OptionFunc182"] = "GratefulPromotion_BuyConfirm</N>22269</N>187475"
tNpcGossip[22269]["OptionChkFunc182"] = function ()
	local nNumber = GratefulPromotion_SellLeft(2,22269,187475)
	tNpcGossip[22269]["Option182"]= string.format(tGratefulPromotions_Text[22269]["Option182"],nNumber)
	return not GratefulPromotion_IfSellOut(2,22269,187475)
end

tNpcGossip[22269]["OptionFunc183"] = "GratefulPromotion_BuyConfirm</N>22269</N>188285"
tNpcGossip[22269]["OptionChkFunc183"] = function ()
	local nNumber = GratefulPromotion_SellLeft(2,22269,188285)
	tNpcGossip[22269]["Option183"]= string.format(tGratefulPromotions_Text[22269]["Option183"],nNumber)
	return not GratefulPromotion_IfSellOut(2,22269,188285)
end
tNpcGossip[22269]["OptionFunc184"] = "GratefulPromotion_BuyConfirm</N>22269</N>194385"
tNpcGossip[22269]["OptionChkFunc184"] = function ()
	local nNumber = GratefulPromotion_SellLeft(2,22269,194385)
	tNpcGossip[22269]["Option184"]= string.format(tGratefulPromotions_Text[22269]["Option184"],nNumber)
	return not GratefulPromotion_IfSellOut(2,22269,194385)
end
tNpcGossip[22269]["OptionFunc185"] = "GratefulPromotion_BuyConfirm</N>22269</N>193695"
tNpcGossip[22269]["OptionChkFunc185"] = function ()
	local nNumber = GratefulPromotion_SellLeft(2,22269,193695)
	tNpcGossip[22269]["Option185"]= string.format(tGratefulPromotions_Text[22269]["Option185"],nNumber)
	return not GratefulPromotion_IfSellOut(2,22269,193695)
end
tNpcGossip[22269]["OptionFunc186"] = "GratefulPromotion_BuyConfirm</N>22269</N>3306357"
tNpcGossip[22269]["OptionChkFunc186"] = function ()
	local nNumber = GratefulPromotion_SellLeft(2,22269,3306357)
	tNpcGossip[22269]["Option186"]= string.format(tGratefulPromotions_Text[22269]["Option186"],nNumber)
	return not GratefulPromotion_IfSellOut(2,22269,3306357)
end
tNpcGossip[22269]["OptionFunc187"] = "GratefulPromotion_BuyConfirm</N>22269</N>193295"
tNpcGossip[22269]["OptionChkFunc187"] = function ()
	local nNumber = GratefulPromotion_SellLeft(2,22269,193295)
	tNpcGossip[22269]["Option187"]= string.format(tGratefulPromotions_Text[22269]["Option187"],nNumber)
	return not GratefulPromotion_IfSellOut(2,22269,193295)
end
tNpcGossip[22269]["OptionFunc188"] = "GratefulPromotion_BuyConfirm</N>22269</N>193555"
tNpcGossip[22269]["OptionChkFunc188"] = function ()
	local nNumber = GratefulPromotion_SellLeft(2,22269,193555)
	tNpcGossip[22269]["Option188"]= string.format(tGratefulPromotions_Text[22269]["Option188"],nNumber)
	return not GratefulPromotion_IfSellOut(2,22269,193555)
end
tNpcGossip[22269]["OptionFunc189"] = "GratefulPromotion_BuyConfirm</N>22269</N>194405"
tNpcGossip[22269]["OptionChkFunc189"] = function ()
	local nNumber = GratefulPromotion_SellLeft(2,22269,194405)
	tNpcGossip[22269]["Option189"]= string.format(tGratefulPromotions_Text[22269]["Option189"],nNumber)
	return not GratefulPromotion_IfSellOut(2,22269,194405)
end
tNpcGossip[22269]["OptionFunc1810"] = "GratefulPromotion_BuyConfirm</N>22269</N>189645"
tNpcGossip[22269]["OptionChkFunc1810"] = function ()
	local nNumber = GratefulPromotion_SellLeft(2,22269,189645)
	tNpcGossip[22269]["Option1810"]= string.format(tGratefulPromotions_Text[22269]["Option1810"],nNumber)
	return not GratefulPromotion_IfSellOut(2,22269,189645)
end
tNpcGossip[22269]["OptionFunc1811"] = "GratefulPromotion_BuyConfirm</N>22269</N>200490"
tNpcGossip[22269]["OptionChkFunc1811"] = function ()
	local nNumber = GratefulPromotion_SellLeft(2,22269,200490)
	tNpcGossip[22269]["Option1811"]= string.format(tGratefulPromotions_Text[22269]["Option1811"],nNumber)
	return not GratefulPromotion_IfSellOut(2,22269,200490)
end
--第三阶段
tNpcGossip[22269]["Text1-3"] = {191,192,193}
tNpcGossip[22269]["tOption1-3"] = {191,192,193,194,195,196,197}
tNpcGossip[22269]["ChkFunc1-3"]= function()
	return GratefulPromotion_ChkNpcPase(3,22269)
end
tNpcGossip[22269]["OptionFunc191"] = "GratefulPromotion_BuyConfirm</N>22269</N>1088000"
tNpcGossip[22269]["OptionChkFunc191"] = function ()
	local nNumber = GratefulPromotion_SellLeft(3,22269,1088000)
	tNpcGossip[22269]["Option191"]= string.format(tGratefulPromotions_Text[22269]["Option191"],nNumber)
	return not GratefulPromotion_IfSellOut(3,22269,1088000)
end
tNpcGossip[22269]["OptionFunc192"] = "GratefulPromotion_BuyConfirm</N>22269</N>700073"
tNpcGossip[22269]["OptionChkFunc192"] = function ()
	local nNumber = GratefulPromotion_SellLeft(3,22269,700073)
	tNpcGossip[22269]["Option192"]= string.format(tGratefulPromotions_Text[22269]["Option192"],nNumber)
	return not GratefulPromotion_IfSellOut(3,22269,700073)
end

tNpcGossip[22269]["OptionFunc193"] = "GratefulPromotion_BuyConfirm</N>22269</N>2100045"
tNpcGossip[22269]["OptionChkFunc193"] = function ()
	local nNumber = GratefulPromotion_SellLeft(3,22269,2100045)
	tNpcGossip[22269]["Option193"]= string.format(tGratefulPromotions_Text[22269]["Option193"],nNumber)
	return not GratefulPromotion_IfSellOut(3,22269,2100045)
end
tNpcGossip[22269]["OptionFunc194"] = "GratefulPromotion_BuyConfirm</N>22269</N>730005"
tNpcGossip[22269]["OptionChkFunc194"] = function ()
local nNumber = GratefulPromotion_SellLeft(3,22269,730005)
	tNpcGossip[22269]["Option194"]= string.format(tGratefulPromotions_Text[22269]["Option194"],nNumber)
	return not GratefulPromotion_IfSellOut(3,22269,730005)
end
tNpcGossip[22269]["OptionFunc195"] = "GratefulPromotion_BuyConfirm</N>22269</N>1200006"
tNpcGossip[22269]["OptionChkFunc195"] = function ()
local nNumber = GratefulPromotion_SellLeft(3,22269,1200006)
	tNpcGossip[22269]["Option195"]= string.format(tGratefulPromotions_Text[22269]["Option195"],nNumber)
	return not GratefulPromotion_IfSellOut(3,22269,1200006)
end
tNpcGossip[22269]["OptionFunc196"] = "GratefulPromotion_BuyConfirm</N>22269</N>2100025"
tNpcGossip[22269]["OptionChkFunc196"] = function ()
local nNumber = GratefulPromotion_SellLeft(3,22269,2100025)
	tNpcGossip[22269]["Option196"]= string.format(tGratefulPromotions_Text[22269]["Option196"],nNumber)
	return not GratefulPromotion_IfSellOut(3,22269,2100025)
end
tNpcGossip[22269]["OptionFunc197"] = "GratefulPromotion_BuyConfirm</N>22269</N>3009002"
tNpcGossip[22269]["OptionChkFunc197"] = function ()
local nNumber = GratefulPromotion_SellLeft(3,22269,3009002)
	tNpcGossip[22269]["Option197"]= string.format(tGratefulPromotions_Text[22269]["Option197"],nNumber)
	return not GratefulPromotion_IfSellOut(3,22269,3009002)
end
tNpcGossip[22269]["Text1-4"] = {171}
tNpcGossip[22269]["tOption1-4"] = {171}
tNpcGossip[22269]["ChkFunc1-4"]= function()
	local _,nIndex = GratefulPromotions_JudgeTime()
	if not nIndex then
		return false
	end
	if nIndex >= #tActivityTime["Grateful"]["ActivityTime"] then 
		LinkNpcGossipFunc_New(22269,"2-7")
		return
	end
	
	
	
	local sTime = string.sub(tActivityTime["Grateful"]["ActivityTime"][nIndex+1],6,16)
	tNpcGossip[22269]["Option171"] = string.format(tGratefulPromotions_Text[22269]["Option171"],sTime)
	return true
end

-- 抢购时间外
tNpcGossip[22269]["Text1-5"] = {221}
tNpcGossip[22269]["tOption1-5"] = {221}
-- 抢购数达限制
tNpcGossip[22269]["Text2-2"] = {211}
tNpcGossip[22269]["tOption2-2"] = {211}
-- 天石不足
tNpcGossip[22269]["Text2-3"] = {231}
tNpcGossip[22269]["tOption2-3"] = {231}
-- 空间不足组
tNpcGossip[22269]["Text2-4"] = {241}
tNpcGossip[22269]["tOption2-4"] = {241}
-- 二次确认
tNpcGossip[22269]["Text2-5"] = {251}
tNpcGossip[22269]["tOption2-5"] = {251,252}
-- 最后一次抢购 数量达到限制
tNpcGossip[22269]["Text2-6"] = {261}
tNpcGossip[22269]["tOption2-6"] = {261,262}
-- 最后一次抢购 商品全部售罄
tNpcGossip[22269]["Text2-7"] = {271}
tNpcGossip[22269]["tOption2-7"] = {271}
--------------------------------------------物品配置部分-----------------------------------------------------------------------------
tItemFace[3306014] = 503
tItemFace[3306015] = 772
tItemFace[3306016] = 843
tItemFace[3306018] = 425
tItemFace[3306019] = 426
tItemFace[3306020] = 427
tItemFace[3306021] = 771
tItemFace[3306054] = 430
tItemFace[3306055] = 428
tItemFace[3306056] = 773
tItemFace[3306322] = 384
tItemFace[3306324] = 524
tItemFace[3306355] = 525
tItemFace[3306330] = 766
tItemFace[3306332] = 406
tItemFace[3306336] = 644
tItemFace[3306337] = 672
tItemFace[3306349] = 766
tItemFace[3306350] = 406
tItemFace[3306001] = 580
tItemFace[3306004] = 772
tItemFace[3305939] = 423
tItemFace[3305989] = 670
tItemFace[3306385] = 846
tItemFace[3306357] = 424
tItemFace[3306053] = 423
tItemFace[3306045] = 862
tItemFace[3305939] = 423
tItemFace[3305990] = 692
tItemFace[3305991] = 949
tItemFace[3305940] = 950
tItemFace[3305941] = 951
tItemFace[3305942] = 952
tItemFace[3305943] = 953
tItemFace[3305944] = 954
tItemFace[3305992] = 580
tItemFace[3305993] = 958
tItemFace[3305994] = 983
tItemFace[3305995] = 954
tItemFace[3305981] = 955
tItemFace[3305982] = 956
tItemFace[3305983] = 957
tItemFace[3305996] = 959
tItemFace[3305997] = 960
tItemFace[3305998] = 961
tItemFace[3305999] = 962
tItemFace[3306000] = 963
tItemFace[3306352] = 962
tItemFace[3306163] = 964
tItemFace[3306523] = 964
tItemFace[3306524] = 964
tItemFace[3306005] = 965
tItemFace[3306006] = 966
tItemFace[3306007] = 967
tItemFace[3306008] = 968
tItemFace[3306009] = 969
tItemFace[3306010] = 970
tItemFace[3306011] = 971
tItemFace[3306012] = 576
tItemFace[3306013] = 972
tItemFace[3306024] = 973
tItemFace[3306025] = 974
tItemFace[3306026] = 975
tItemFace[3306027] = 976
tItemFace[3306028] = 977
tItemFace[3306029] = 978
tItemFace[3306030] = 979
tItemFace[3306031] = 980
tItemFace[3306033] = 981
tItemFace[3306034] = 982
tItemFace[3306035] = 983
tItemFace[3306036] = 984
tItemFace[3306037] = 985
tItemFace[3306038] = 986
tItemFace[3306039] = 987
tItemFace[3306040] = 988
tItemFace[3306041] = 989 
tItemFace[3306042] = 990
tItemFace[3306043] = 991
tItemFace[3306044] = 992
tItemFace[3306046] = 993
tItemFace[3306047] = 994
tItemFace[3306048] = 995
tItemFace[3306049] = 996
tItemFace[3306050] = 997
tItemFace[3306051] = 998
tItemFace[3306052] = 999
tItemFace[3306017] = 1000
tItemFace[3306022] = 1001
tItemFace[3306057] = 1002
tItemFace[3306320] = 1003
tItemFace[3306321] = 1004
tItemFace[3306322] = 1005
tItemFace[3306323] = 1006
tItemFace[3306324] = 1007
tItemFace[3306325] = 1008
tItemFace[3306326] = 1009
tItemFace[3306355] = 1010
tItemFace[3306327] = 1011
tItemFace[3306328] = 1012
tItemFace[3306329] = 1013
tItemFace[3306330] = 1014
tItemFace[3306331] = 1015
tItemFace[3306332] = 1016
tItemFace[3306333] = 1017
tItemFace[3306334] = 1018
tItemFace[3306335] = 1019
tItemFace[3306338] = 1020
tItemFace[3306339] = 1021
tItemFace[3306340] = 1022
tItemFace[3306341] = 1023
tItemFace[3306342] = 1024
tItemFace[3306343] = 1025
tItemFace[3306344] = 1026
tItemFace[3306345] = 1027
tItemFace[3306346] = 1028
tItemFace[3306347] = 1029
tItemFace[3306348] = 1030
tItemFace[3306002] = 1031
tItemFace[3306003] = 1032
tItemFace[3305984] = 1033
tItemFace[3305985] = 1034
tItemFace[3305986] = 1035
tItemFace[3305987] = 1036
tItemFace[3305988] = 1037
tItemFace[3306358] = 1038
tItemFace[3306351] = 1039
tItemFace[3306384] = 1040
tItemFace[3306356] = 1041
tItemFace[3305974] = 1042
tItemFace[3305975] = 1043
tItemFace[3305976] = 1044
tItemFace[3305977] = 1045
tItemFace[3305978] = 1046
tItemFace[3305979] = 1047
tItemFace[3305980] = 1048
tItemFace[3305945] = 1049
tItemFace[3305946] = 1050
tItemFace[3305947] = 1051
tItemFace[3305948] = 1052
tItemFace[3305949] = 1053
tItemFace[3305950] = 1054
tItemFace[3305951] = 1055
tItemFace[3305952] = 1056
tItemFace[3305953] = 1057
tItemFace[3305954] = 1058
tItemFace[3305955] = 1059
tItemFace[3305956] = 1060
tItemFace[3305957] = 1061
tItemFace[3305958] = 1062
tItemFace[3305959] = 1063
tItemFace[3305960] = 1064
tItemFace[3306354] = 1065
--六件赠品衣服
for i = 3305939,3305960 do
	GratefulPromotion_ItemFunc(i)
end

for i = 3305981,3306057 do
	GratefulPromotion_ItemFunc(i)
end

for i = 3306320,3306355 do
	GratefulPromotion_ItemFunc(i)
end

-- 新增
GratefulPromotion_ItemFunc(3306524)



tItem[3306384] = tItem[3306384] or {}
tItem[3306384]["DialogueText"] =tGratefulPromotions_Text[3306384]
tItem[3306384]["Text1-1"] = {111}
tItem[3306384]["tOption1-1"] = {111,112}
tItem[3306384]["OptionFunc111"]= "tGratefulPromotions_OpenGif_two</N>3306384"
--打开礼包二次确认对白
tItem[3306384]["Text1-2"] = {121}
tItem[3306384]["tOption1-2"] = {121,122}
tItem[3306385] = tItem[3306385] or {}
tItem[3306385]["DialogueText"] =tGratefulPromotions_Text[3306385]
tItem[3306385]["Text1-1"] = {111}
tItem[3306385]["tOption1-1"] = {111,112}
tItem[3306385]["OptionFunc111"]= "tGratefulPromotions_OpenGif_two</N>3306385"
--打开礼包二次确认对白
tItem[3306385]["Text1-2"] = {121}
tItem[3306385]["tOption1-2"] = {121,122}

tItem[3306523] = tItem[3306523] or {}
tItem[3306523]["DialogueText"] =tGratefulPromotions_Text[3306523]
tItem[3306523]["Text1-1"] = {111}
tItem[3306523]["tOption1-1"] = {111,112,113}
tItem[3306523]["OptionFunc111"]= "tGratefulPromotions_OpenGif_two</N>3306523</N>1"
tItem[3306523]["OptionFunc112"]= "tGratefulPromotions_OpenGif_two</N>3306523</N>2"

tItem[3306357] = tItem[3306357] or {}
tItem[3306357]["DialogueText"] =tGratefulPromotions_Text[3306357]
tItem[3306357]["Text1-1"] = {111}
tItem[3306357]["tOption1-1"] = {111,112}
tItem[3306357]["OptionFunc111"]= "tGratefulPromotions_OpenGif_two</N>350079"
tItem[3306357]["OptionFunc112"]= "tGratefulPromotions_OpenGif_two</N>360149"
tItem[3306358] = tItem[3306358] or {}
tItem[3306358]["Function"] = function (nItemId)
	RewardTemplate_UseItem(tGratefulPromotions_Reward[nItemId])
	end
tItem[3306356] = tItem[3306358] or {}
for i = 3305974,3305980 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function (nItemId)
		--非活动时间跳出
		if not Sys_ChkFullTime(tActivityTime["Grateful"]["AllActTime"]) then
			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
				Sys_MsgBox(tGratefulPromotions_Text["past_coupon"])
				return
			end
		end
		
		Sys_MsgBox(tGratefulPromotions_Text["User_coupon"])
	end
end

tItem[3306163] = tItem[3306163] or {}
tItem[3306163]["DialogueText"] =tGratefulPromotions_Text[3306163]
tItem[3306163]["Text1-1"] = {111}
tItem[3306163]["tOption1-1"] = {111,112,113}
tItem[3306163]["OptionFunc111"]= "tGratefulPromotions_OpenGif_two</N>700103"
tItem[3306163]["OptionFunc112"]= "tGratefulPromotions_OpenGif_two</N>700123"
---------------------------------------------上线触发--------------------------------------------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,GratefulPromotion_Login_SendMail)
------------------------------------------------时间自检-----------------------------------------------------------
local tGratefulPromotion_OnTime = {}
	-- 全服公告
	tGratefulPromotion_OnTime[1]= {}
	tGratefulPromotion_OnTime[1]["Type"] =6
	tGratefulPromotion_OnTime[1]["TimeType"] = 1
	tGratefulPromotion_OnTime[1]["Multiple"]= {}
	tGratefulPromotion_OnTime[1]["Multiple"][1]= "11-11 14:00 11-11 14:00"
	tGratefulPromotion_OnTime[1]["Multiple"][2]= "11-11 18:00 11-11 18:00"
	tGratefulPromotion_OnTime[1]["Multiple"][3]= "11-11 21:00 11-11 21:00"
	tGratefulPromotion_OnTime[1]["Multiple"][4]= "11-17 14:00 11-17 14:00"
	tGratefulPromotion_OnTime[1]["Multiple"][5]= "11-17 18:00 11-17 18:00"
	tGratefulPromotion_OnTime[1]["Multiple"][6]= "11-17 21:00 11-17 21:00"
	tGratefulPromotion_OnTime[1]["Multiple"][7]= "11-24 14:00 11-24 14:00"
	tGratefulPromotion_OnTime[1]["Multiple"][8]= "11-24 18:00 11-24 18:00"
	tGratefulPromotion_OnTime[1]["Multiple"][9]= "11-24 21:00 11-24 21:00"
	tGratefulPromotion_OnTime[1]["Func"]= GratefulPromotion_Broad
	table.insert(tSystemTime_InitialData,tGratefulPromotion_OnTime[1])
	
	-- 抢购限制清理
	tGratefulPromotion_OnTime[2] = {}
	tGratefulPromotion_OnTime[2]["Type"] =6
	tGratefulPromotion_OnTime[2]["TimeType"] = 4
	tGratefulPromotion_OnTime[2]["Multiple"]= {}
	tGratefulPromotion_OnTime[2]["Multiple"][1]= "14:21 14:23"
	tGratefulPromotion_OnTime[2]["Multiple"][2]= "18:21 18:23"
	tGratefulPromotion_OnTime[2]["Multiple"][3]= "21:21 21:23"
	tGratefulPromotion_OnTime[2]["Func"]= GratefulPromotion_LimitClear
	table.insert(tSystemTime_InitialData,tGratefulPromotion_OnTime[2])

	-- 关闭限制开关
	tGratefulPromotion_OnTime[3] = {}
	tGratefulPromotion_OnTime[3]["Type"] =6
	tGratefulPromotion_OnTime[3]["TimeType"] = 4
	tGratefulPromotion_OnTime[3]["Multiple"]= {}
	tGratefulPromotion_OnTime[3]["Multiple"][1]= "14:24 14:26"
	tGratefulPromotion_OnTime[3]["Multiple"][2]= "18:24 18:26"
	tGratefulPromotion_OnTime[3]["Multiple"][3]= "21:24 21:26"
	tGratefulPromotion_OnTime[3]["Func"]= GratefulPromotion_MarkClear
	table.insert(tSystemTime_InitialData,tGratefulPromotion_OnTime[3])