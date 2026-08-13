------------------------------------------------------------------------------------
--Name：            160719[英文征服][活动脚本]8月消费送星陨石(8.11-9.07)
--Creator:      陈莺
--Created:     2016/07/19
------------------------------------------------------------------------------------
--任务需求：
-- 1.制作活动NPC，出售6种月卡包。
-- 2.礼包第一次打开后需隔7天可打开第二次，总计可打开2次，礼包时效30天。
-- 3.每种类别的礼包每个角色有且只能最多购买两个。
-- 4.emoney_buy log记录礼包销售

--npc 
-- 19401  导购小姐朱丽叶

--物品
-- 3200851,'赤炼石豪华礼包
-- 3200852,'赤炼石尊享礼包
-- 3200853,'气力值豪华礼包
-- 3200854,'气力值尊享礼包
-- 3200855,'星陨石豪华礼包
-- 3200856,'星陨石尊享礼包
-- 3200857,'夏日特惠邀请函


--掩码
--147 24  赠品赤练石月卡包购买次数
--147 25  练气月卡包购买次数
--147 26  星陨石月卡包购买次数

------打开礼包判断时间
--147 27  赤炼石豪华礼包
--147 28  赤炼石尊享礼包
--147 29  气力值豪华礼包
--147 30  气力值尊享礼包
--147 31  星陨石豪华礼包
--147 32  星陨石尊享礼包

--147 34  背包信使用

--logid  12000465
--命名规范
--HappySummerShopping_
------------------------------------------------------------------------------------
local tHappySummerShopping_Data = {}
	tHappySummerShopping_Data["Bef_Time"]= "2015-05-18 00:00 2016-08-10 23:59"
	tHappySummerShopping_Data["Now_Time"] = "2016-08-16 00:00 2016-09-12 23:59"
	tHappySummerShopping_Data["Effect"] = "angelwing"
	tHappySummerShopping_Data["Attr"] = "0 1 0 43200 1 "
local tHappySummerShopping_Stc = {}
	tHappySummerShopping_Stc[1] = {}  --赠品赤练石月卡包购买次数
	tHappySummerShopping_Stc[1]["EventType"] = 147
	tHappySummerShopping_Stc[1]["DataType"] = 24

	tHappySummerShopping_Stc[2] = {}  --练气月卡包购买次数
	tHappySummerShopping_Stc[2]["EventType"] = 147
	tHappySummerShopping_Stc[2]["DataType"] = 25

	tHappySummerShopping_Stc[3] = {}  -- 星陨石月卡包购买次数
	tHappySummerShopping_Stc[3]["EventType"] = 147
	tHappySummerShopping_Stc[3]["DataType"] = 26
	
	tHappySummerShopping_Stc[4] = {}  --练气月卡包购买次数
	tHappySummerShopping_Stc[4]["EventType"] = 148
	tHappySummerShopping_Stc[4]["DataType"] = 12

	tHappySummerShopping_Stc[5] = {}  -- 星陨石月卡包购买次数
	tHappySummerShopping_Stc[5]["EventType"] = 148
	tHappySummerShopping_Stc[5]["DataType"] = 13

	tHappySummerShopping_Stc[6] = {}  --赠品赤练石月卡包购买次数
	tHappySummerShopping_Stc[6]["EventType"] = 148
	tHappySummerShopping_Stc[6]["DataType"] = 14

	tHappySummerShopping_Stc[7] = {}  --练气月卡包购买次数
	tHappySummerShopping_Stc[7]["EventType"] = 148
	tHappySummerShopping_Stc[7]["DataType"] = 15

	tHappySummerShopping_Stc[8] = {}  -- 星陨石月卡包购买次数
	tHappySummerShopping_Stc[8]["EventType"] = 148
	tHappySummerShopping_Stc[8]["DataType"] = 16
	
	tHappySummerShopping_Stc[9] = {}  --练气月卡包购买次数
	tHappySummerShopping_Stc[9]["EventType"] = 148
	tHappySummerShopping_Stc[9]["DataType"] = 17

	tHappySummerShopping_Stc[10] = {}  -- 星陨石月卡包购买次数
	tHappySummerShopping_Stc[10]["EventType"] = 148
	tHappySummerShopping_Stc[10]["DataType"] = 18

	tHappySummerShopping_Stc[3200851] = {}  --赤炼石豪华礼包
	tHappySummerShopping_Stc[3200851]["EventType"] = 147
	tHappySummerShopping_Stc[3200851]["DataType"] = 27

	tHappySummerShopping_Stc[3200852] = {}  --赤炼石尊享礼包
	tHappySummerShopping_Stc[3200852]["EventType"] = 147
	tHappySummerShopping_Stc[3200852]["DataType"] = 28

	tHappySummerShopping_Stc[3200853] = {}  -- 气力值豪华礼包
	tHappySummerShopping_Stc[3200853]["EventType"] = 147
	tHappySummerShopping_Stc[3200853]["DataType"] = 29

	tHappySummerShopping_Stc[3200854] = {}  --气力值尊享礼包
	tHappySummerShopping_Stc[3200854]["EventType"] = 147
	tHappySummerShopping_Stc[3200854]["DataType"] = 30

	tHappySummerShopping_Stc[3200855] = {}  --星陨石豪华礼包
	tHappySummerShopping_Stc[3200855]["EventType"] = 147
	tHappySummerShopping_Stc[3200855]["DataType"] = 31

	tHappySummerShopping_Stc[3200856] = {}  -- 星陨石尊享礼包
	tHappySummerShopping_Stc[3200856]["EventType"] = 147
	tHappySummerShopping_Stc[3200856]["DataType"] = 32
	
local tHappySummerShopping_ItemId = {}
	tHappySummerShopping_ItemId[3200851] = {}  --赤炼石豪华礼包
	tHappySummerShopping_ItemId[3200851][1] = {}
	tHappySummerShopping_ItemId[3200851][1]["Space"] = 8
	tHappySummerShopping_ItemId[3200851][1]["Emoney"] = 1000
	tHappySummerShopping_ItemId[3200851][1]["RewardItem"] = {}
	tHappySummerShopping_ItemId[3200851][1]["RewardItem"][1] = {}
	tHappySummerShopping_ItemId[3200851][1]["RewardItem"][1]["Id"] = 730005
	tHappySummerShopping_ItemId[3200851][1]["RewardItem"][1]["Attr"] = "0 2 3"
	tHappySummerShopping_ItemId[3200851][1]["RewardItem"][2] = {}
	tHappySummerShopping_ItemId[3200851][1]["RewardItem"][2]["Id"] = 3009001
	tHappySummerShopping_ItemId[3200851][1]["RewardItem"][2]["Attr"] = "0 6 0 2880 1"
	tHappySummerShopping_ItemId[3200851][1]["Log"] = "0,0,0,0,12000465,2,730005[3009001],2[6]"
	tHappySummerShopping_ItemId[3200851][1]["RewardNoNeedTip"] = 1

	tHappySummerShopping_ItemId[3200851][2] = {}
	tHappySummerShopping_ItemId[3200851][2]["Space"] = 4
	tHappySummerShopping_ItemId[3200851][2]["RewardItem"] = {}
	tHappySummerShopping_ItemId[3200851][2]["RewardItem"][1] = {}
	tHappySummerShopping_ItemId[3200851][2]["RewardItem"][1]["Id"] = 730005
	tHappySummerShopping_ItemId[3200851][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tHappySummerShopping_ItemId[3200851][2]["RewardItem"][2] = {}
	tHappySummerShopping_ItemId[3200851][2]["RewardItem"][2]["Id"] = 3009001
	tHappySummerShopping_ItemId[3200851][2]["RewardItem"][2]["Attr"] = "0 3 0 2880 1"
	tHappySummerShopping_ItemId[3200851][2]["RewardItem"][3] = {}
	tHappySummerShopping_ItemId[3200851][2]["RewardItem"][3]["Id"] = 730004
	tHappySummerShopping_ItemId[3200851][2]["RewardItem"][3]["Attr"] = "0 1 3"
	tHappySummerShopping_ItemId[3200851][2]["Log"] = "0,0,3200851,1,12000465,2,730005[3009001][730004],1[3][1]"
	tHappySummerShopping_ItemId[3200851][2]["RewardNoNeedTip"] = 1

	tHappySummerShopping_ItemId[3200852] = {}  --赤炼石尊享礼包
	tHappySummerShopping_ItemId[3200852][1] = {}
	tHappySummerShopping_ItemId[3200852][1]["Space"] = 8
	tHappySummerShopping_ItemId[3200852][1]["Emoney"] = 5000
	tHappySummerShopping_ItemId[3200852][1]["RewardItem"] = {}
	tHappySummerShopping_ItemId[3200852][1]["RewardItem"][1] = {}
	tHappySummerShopping_ItemId[3200852][1]["RewardItem"][1]["Id"] = 730007
	tHappySummerShopping_ItemId[3200852][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tHappySummerShopping_ItemId[3200852][1]["RewardItem"][2] = {}
	tHappySummerShopping_ItemId[3200852][1]["RewardItem"][2]["Id"] = 3009002
	tHappySummerShopping_ItemId[3200852][1]["RewardItem"][2]["Attr"] = "0 6 0 2880 1"
	tHappySummerShopping_ItemId[3200852][1]["RewardItem"][3] = {}
	tHappySummerShopping_ItemId[3200852][1]["RewardItem"][3]["Id"] = 730006
	tHappySummerShopping_ItemId[3200852][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tHappySummerShopping_ItemId[3200852][1]["Log"] = "0,0,0,0,12000465,2,730007[3009002][730006],1[6][1]"
	tHappySummerShopping_ItemId[3200852][1]["RewardNoNeedTip"] = 1

	tHappySummerShopping_ItemId[3200852][2] = {}
	tHappySummerShopping_ItemId[3200852][2]["Space"] = 2
	tHappySummerShopping_ItemId[3200852][2]["RewardItem"] = {}
	tHappySummerShopping_ItemId[3200852][2]["RewardItem"][1] = {}
	tHappySummerShopping_ItemId[3200852][2]["RewardItem"][1]["Id"] = 730007
	tHappySummerShopping_ItemId[3200852][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tHappySummerShopping_ItemId[3200852][2]["RewardItem"][2] = {}
	tHappySummerShopping_ItemId[3200852][2]["RewardItem"][2]["Id"] = 3009002
	tHappySummerShopping_ItemId[3200852][2]["RewardItem"][2]["Attr"] = "0 2 0 2880 1"
	tHappySummerShopping_ItemId[3200852][2]["Log"] = "0,0,3200852,1,12000465,2,730007[3009001],1[2]"
	tHappySummerShopping_ItemId[3200852][2]["RewardNoNeedTip"] = 1

	tHappySummerShopping_ItemId[3200853] = {}  --气力值豪华礼包
	tHappySummerShopping_ItemId[3200853][1] = {}
	tHappySummerShopping_ItemId[3200853][1]["Space"] = 6
	tHappySummerShopping_ItemId[3200853][1]["Emoney"] = 2000
	tHappySummerShopping_ItemId[3200853][1]["RewardItem"] = {}
	tHappySummerShopping_ItemId[3200853][1]["RewardItem"][1] = {}
	tHappySummerShopping_ItemId[3200853][1]["RewardItem"][1]["Id"] = 3009001
	tHappySummerShopping_ItemId[3200853][1]["RewardItem"][1]["Attr"] = "0 6 0 2880 1"
	tHappySummerShopping_ItemId[3200853][1]["RewardStrengthValue"] = {}
	tHappySummerShopping_ItemId[3200853][1]["RewardStrengthValue"]["Value"] = 20000
	tHappySummerShopping_ItemId[3200853][1]["Log"] = "0,0,0,0,12000465,2,3009001[12],6[20000]"
	tHappySummerShopping_ItemId[3200853][1]["RewardNoNeedTip"] = 1

	tHappySummerShopping_ItemId[3200853][2] = {}
	tHappySummerShopping_ItemId[3200853][2]["Space"] = 2
	tHappySummerShopping_ItemId[3200853][2]["RewardItem"] = {}
	tHappySummerShopping_ItemId[3200853][2]["RewardItem"][1] = {}  --
	tHappySummerShopping_ItemId[3200853][2]["RewardItem"][1]["Id"] = 3009001
	tHappySummerShopping_ItemId[3200853][2]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tHappySummerShopping_ItemId[3200853][2]["RewardStrengthValue"] = {}
	tHappySummerShopping_ItemId[3200853][2]["RewardStrengthValue"]["Value"] = 10000
	tHappySummerShopping_ItemId[3200853][2]["Log"] = "0,0,3200853,1,12000465,2,3009001[12],3[10000]"
	tHappySummerShopping_ItemId[3200853][2]["RewardNoNeedTip"] = 1

	tHappySummerShopping_ItemId[3200854] = {}  --气力值尊享礼包
	tHappySummerShopping_ItemId[3200854][1] = {}
	tHappySummerShopping_ItemId[3200854][1]["Space"] = 3
	tHappySummerShopping_ItemId[3200854][1]["Emoney"] = 10000
	tHappySummerShopping_ItemId[3200854][1]["RewardItem"] = {}
	tHappySummerShopping_ItemId[3200854][1]["RewardItem"][1] = {}
	tHappySummerShopping_ItemId[3200854][1]["RewardItem"][1]["Id"] = 3009002
	tHappySummerShopping_ItemId[3200854][1]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tHappySummerShopping_ItemId[3200854][1]["RewardStrengthValue"] = {}
	tHappySummerShopping_ItemId[3200854][1]["RewardStrengthValue"]["Value"] = 100000
	tHappySummerShopping_ItemId[3200854][1]["Log"] = "0,0,0,0,12000465,2,3009002[12],3[100000]"
	tHappySummerShopping_ItemId[3200854][1]["RewardNoNeedTip"] = 1

	tHappySummerShopping_ItemId[3200854][2] = {}
	tHappySummerShopping_ItemId[3200854][2]["Space"] = 1
	tHappySummerShopping_ItemId[3200854][2]["RewardItem"] = {}
	tHappySummerShopping_ItemId[3200854][2]["RewardItem"][1] = {}  --气力
	tHappySummerShopping_ItemId[3200854][2]["RewardItem"][1]["Id"] = 3009002
	tHappySummerShopping_ItemId[3200854][2]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tHappySummerShopping_ItemId[3200854][2]["RewardStrengthValue"] = {}
	tHappySummerShopping_ItemId[3200854][2]["RewardStrengthValue"]["Value"] = 60000
	tHappySummerShopping_ItemId[3200854][2]["Log"] = "0,0,3200854,1,12000465,2,3009002[12],2[60000]"
	tHappySummerShopping_ItemId[3200854][2]["RewardNoNeedTip"] = 1

	tHappySummerShopping_ItemId[3200855] = {}  --星陨石豪华礼包
	tHappySummerShopping_ItemId[3200855][1] = {}
	tHappySummerShopping_ItemId[3200855][1]["Space"] = 7
	tHappySummerShopping_ItemId[3200855][1]["Emoney"] = 2000
	tHappySummerShopping_ItemId[3200855][1]["RewardItem"] = {}
	tHappySummerShopping_ItemId[3200855][1]["RewardItem"][1] = {}
	tHappySummerShopping_ItemId[3200855][1]["RewardItem"][1]["Id"] = 3009001
	tHappySummerShopping_ItemId[3200855][1]["RewardItem"][1]["Attr"] = "0 4 0 2880 1"
	tHappySummerShopping_ItemId[3200855][1]["RewardItem"][2] = {}
	tHappySummerShopping_ItemId[3200855][1]["RewardItem"][2]["Id"] = 3009002
	tHappySummerShopping_ItemId[3200855][1]["RewardItem"][2]["Attr"] = "0 3 0 2880 1"
	tHappySummerShopping_ItemId[3200855][1]["Log"] = "0,0,0,0,12000465,2,3009002[3009001],3[4]"
	tHappySummerShopping_ItemId[3200855][1]["RewardNoNeedTip"] = 1

	tHappySummerShopping_ItemId[3200855][2] = {}
	tHappySummerShopping_ItemId[3200855][2]["Space"] = 1
	tHappySummerShopping_ItemId[3200855][2]["RewardItem"] = {}
	tHappySummerShopping_ItemId[3200855][2]["RewardItem"][1] = {}
	tHappySummerShopping_ItemId[3200855][2]["RewardItem"][1]["Id"] = 3009002
	tHappySummerShopping_ItemId[3200855][2]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tHappySummerShopping_ItemId[3200855][2]["Log"] = "0,0,3200855,1,12000465,2,3009002,2"
	tHappySummerShopping_ItemId[3200855][2]["RewardNoNeedTip"] = 1

	tHappySummerShopping_ItemId[3200856] = {}  --星陨石豪华礼包
	tHappySummerShopping_ItemId[3200856][1] = {}
	tHappySummerShopping_ItemId[3200856][1]["Space"] = 20
	tHappySummerShopping_ItemId[3200856][1]["Emoney"] = 10000
	tHappySummerShopping_ItemId[3200856][1]["RewardItem"] = {}
	tHappySummerShopping_ItemId[3200856][1]["RewardItem"][1] = {}
	tHappySummerShopping_ItemId[3200856][1]["RewardItem"][1]["Id"] = 3009002
	tHappySummerShopping_ItemId[3200856][1]["RewardItem"][1]["Attr"] = "0 20 0 2880 1"
	tHappySummerShopping_ItemId[3200856][1]["Log"] = "0,0,0,0,12000465,2,3009002,20"
	tHappySummerShopping_ItemId[3200856][1]["RewardNoNeedTip"] = 1

	tHappySummerShopping_ItemId[3200856][2] = {}
	tHappySummerShopping_ItemId[3200856][2]["Space"] = 12
	tHappySummerShopping_ItemId[3200856][2]["RewardItem"] = {}
	tHappySummerShopping_ItemId[3200856][2]["RewardItem"][1] = {}
	tHappySummerShopping_ItemId[3200856][2]["RewardItem"][1]["Id"] = 3009002
	tHappySummerShopping_ItemId[3200856][2]["RewardItem"][1]["Attr"] = "0 13 0 2880 1"
	tHappySummerShopping_ItemId[3200856][2]["Log"] = "0,0,3200856,1,12000465,2,3009002,13"
	tHappySummerShopping_ItemId[3200856][2]["RewardNoNeedTip"] = 1

---新增物品

	tHappySummerShopping_ItemId["EmoneyLimit"] = 999999999
	tHappySummerShopping_ItemId[3300175] = {}
	tHappySummerShopping_ItemId[3300175][1] = {}
	tHappySummerShopping_ItemId[3300175][1]["Emoney"] = 500
	tHappySummerShopping_ItemId[3300175][1]["RewardEMoneyMono"] = {}
	tHappySummerShopping_ItemId[3300175][1]["RewardEMoneyMono"]["Value"] = 1500
	tHappySummerShopping_ItemId[3300175][1]["Log"] = "0,0,3300175,1,12000465,2,3,1500"
	tHappySummerShopping_ItemId[3300175][1]["EMoneyMono"] = HappySummerShopping_Text["MsgBox"]["Emoneymono"]  ---上限文字
	tHappySummerShopping_ItemId[3300175][1]["RewardNoNeedTip"] = 1

	tHappySummerShopping_ItemId[3300176] = {}
	tHappySummerShopping_ItemId[3300176][1] = {}
	tHappySummerShopping_ItemId[3300176][1]["Emoney"] = 5000
	tHappySummerShopping_ItemId[3300176][1]["RewardEMoneyMono"] = {}
	tHappySummerShopping_ItemId[3300176][1]["RewardEMoneyMono"]["Value"] = 15000
	tHappySummerShopping_ItemId[3300176][1]["Log"] = "0,0,3300176,1,12000465,2,3,15000"
	tHappySummerShopping_ItemId[3300176][1]["EMoneyMono"] = HappySummerShopping_Text["MsgBox"]["Emoneymono"]  ---上限文字
	tHappySummerShopping_ItemId[3300176][1]["RewardNoNeedTip"] = 1

	tHappySummerShopping_ItemId[3300177] = {}
	tHappySummerShopping_ItemId[3300177][1] = {}
	tHappySummerShopping_ItemId[3300177][1]["Emoney"] = 500
	tHappySummerShopping_ItemId[3300177][1]["RewardItem"] = {}
	tHappySummerShopping_ItemId[3300177][1]["RewardItem"][1] = {}
	tHappySummerShopping_ItemId[3300177][1]["RewardItem"][1]["Id"] = 3300190
	tHappySummerShopping_ItemId[3300177][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tHappySummerShopping_ItemId[3300177][1]["Log"] = "0,0,3300177,1,12000465,2,3300190,1"

	tHappySummerShopping_ItemId[3300178] = {}
	tHappySummerShopping_ItemId[3300178][1] = {}
	tHappySummerShopping_ItemId[3300178][1]["Space"] = 11
	tHappySummerShopping_ItemId[3300178][1]["Emoney"] = 5000
	tHappySummerShopping_ItemId[3300178][1]["RewardItem"] = {}
	tHappySummerShopping_ItemId[3300178][1]["RewardItem"][1] = {}
	tHappySummerShopping_ItemId[3300178][1]["RewardItem"][1]["Id"] = 3300190
	tHappySummerShopping_ItemId[3300178][1]["RewardItem"][1]["Attr"] = "0 12 3"
	tHappySummerShopping_ItemId[3300178][1]["Log"] = "0,0,3300178,1,12000465,2,3300190,12"

	tHappySummerShopping_ItemId[3300190] = {}
	tHappySummerShopping_ItemId[3300190][1] = {}
	tHappySummerShopping_ItemId[3300190][1]["Space"] = 9
	tHappySummerShopping_ItemId[3300190][1]["RewardItem"] = {}
	tHappySummerShopping_ItemId[3300190][1]["RewardItem"][1] = {}
	tHappySummerShopping_ItemId[3300190][1]["RewardItem"][1]["Id"] = 1088000
	tHappySummerShopping_ItemId[3300190][1]["RewardItem"][1]["Attr"] = "0 10 3"
	tHappySummerShopping_ItemId[3300190][1]["Log"] = "0,0,3300190,1,12000465,2,1088000,10"

local tHappySummerShopping_Log = {}
	tHappySummerShopping_Log[1] = "%d,0,0,0,12000465,2,%d,1"
	
local tHappySummerShopping_EmoneyLog = {}
	tHappySummerShopping_EmoneyLog[3200851] =  "350	20252	1000	1000	1	"
	tHappySummerShopping_EmoneyLog[3200852] =  "350	20253	5000	5000	1	"
	tHappySummerShopping_EmoneyLog[3200853] =  "350	20254	2000	2000	1	"
	tHappySummerShopping_EmoneyLog[3200854] =  "350	20255	10000	10000	1	"
	tHappySummerShopping_EmoneyLog[3200855] =  "350	20256	2000	2000	1	"
	tHappySummerShopping_EmoneyLog[3200856] =  "350	20257	10000	10000	1	"
--新增物品
	tHappySummerShopping_EmoneyLog[3300175] =  "350	20290	500	500	1"
	tHappySummerShopping_EmoneyLog[3300176] =  "350	20291	5000	5000	1	"
	tHappySummerShopping_EmoneyLog[3300177] =  "350	20292	500	500	1"
	tHappySummerShopping_EmoneyLog[3300178] =  "350	20293	5000	5000	1	"


----------------------------------npc逻辑部分---------------------------------------------
--检测掩码
function HappySummerShopping_ChkStc(nNum,sPos,nData)
	local nEvent = tHappySummerShopping_Stc[nNum]["EventType"]
	local nType = tHappySummerShopping_Stc[nNum]["DataType"]
	if Task_ChkStcValue(nEvent,nType,sPos,nData) then
		return true
	else
		return false
	end
end
---置掩码
function HappySummerShopping_SetStc(nData,nNum)
	local nEvent = tHappySummerShopping_Stc[nData]["EventType"]
	local nType = tHappySummerShopping_Stc[nData]["DataType"]
	Task_SetStatistic(nEvent,nType,nNum,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end
--取掩码值
function HappySummerShopping_GetStc(nNum)
	local nEvent = tHappySummerShopping_Stc[nNum]["EventType"]
	local nType = tHappySummerShopping_Stc[nNum]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	return nData
end

--掩码加1
function HappySummerShopping_AddStc(nNum)
	local nEvent = tHappySummerShopping_Stc[nNum]["EventType"]
	local nType = tHappySummerShopping_Stc[nNum]["DataType"]
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
end

--检测时间
function HappySummerShopping_ChkTime(nNum)
	local nEvent = tHappySummerShopping_Stc[nNum]["EventType"]
	local nType = tHappySummerShopping_Stc[nNum]["DataType"]
	if Task_StcInterval(nEvent,nType,7,4) then  --隔7天
		return true
	else
		return false
	end
end


---购买礼包
function HappySummerShopping_BuyItem(nNpcId,nItemId,nIndex,nFlag)
	local sName = Get_ItemtypeName(nItemId)
	
	--天石不足
	local nEmoney = Get_UserEMoney()
	local nNeedEmoney = tHappySummerShopping_ItemId[nItemId][1]["Emoney"]
	if nEmoney < nNeedEmoney then
		local sText = string.format(HappySummerShopping_Text[19401]["Text311"],nNeedEmoney)
		Sys_DialogText(sText)
		Sys_DialogOption(HappySummerShopping_Text[19401]["Option21"],"</F>NULL")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end
	--【此礼包已购买2个】
	if HappySummerShopping_ChkStc(nIndex,">=",1) then
		local sItemName = Get_ItemtypeName(nItemId)
		local sText = string.format(HappySummerShopping_Text[19401]["Text411"],sItemName)
		Sys_DialogText(sText)
		Sys_DialogOption(HappySummerShopping_Text[19401]["Option31"],"</F>NULL")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end
	
	-- 【背包满】
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end
	if nFlag == 11 then  ---第一次出对白
		local sStr = string.format(HappySummerShopping_Text[19401]["Text611"],nNeedEmoney,sName)
		Sys_DialogText(sStr)
		Sys_DialogOption(HappySummerShopping_Text[19401]["Option51"],"</F>HappySummerShopping_BuyItem</N>" .. nNpcId .. "</N>" .. nItemId.. "</N>" .. nIndex.. "</N>" .. 12)
		Sys_DialogOption(HappySummerShopping_Text[19401]["Option52"],"</F>NULL")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end
	--扣天石
	if User_AddEMoney(-nNeedEmoney) then
		HappySummerShopping_AddStc(nIndex)
		Item_AddNewItem(nItemId,tHappySummerShopping_Data["Attr"])
		local sLog = string.format(tHappySummerShopping_Log[1],nNeedEmoney,nItemId)
		User_EffectAdd("self",tHappySummerShopping_Data["Effect"])  --光效
		local sStr = string.format(HappySummerShopping_Text["MsgBox"]["BuyItem"],nNeedEmoney,sName)
		Sys_SaveEmoneyBuy(tHappySummerShopping_EmoneyLog[nItemId])  ---emoneybuglog
		User_TalkChannel2005(sStr)
	end
end
----------------------------------物品逻辑部分---------------------------------------------
function HappySummerShopping_UseItem(nItemId)
	local nNum = HappySummerShopping_GetStc(nItemId)
		
	if nNum == nil then
		HappySummerShopping_SetStc(nItemId,0)
	end

---第一次打开礼包
	if HappySummerShopping_ChkStc(nItemId,"<",1) then
		Sys_DialogTaskClear()
		local sStr = string.format(HappySummerShopping_Text["Text111"],HappySummerShopping_Text[nItemId][1],HappySummerShopping_Text[nItemId][2])
		Sys_DialogText(sStr)
		Sys_DialogOption(HappySummerShopping_Text["Option"],"</F>HappySummerShopping_GetItem</N>" .. nItemId)
		Sys_DialogEnd()
		return
	end
	--未隔7天
	if not HappySummerShopping_ChkTime(nItemId) then
		Sys_MsgBox(HappySummerShopping_Text["MsgBox"]["NoTime"])
		return
	end
	--检测背包空间
	local nSpace = tHappySummerShopping_ItemId[nItemId][2]["Space"]
	if not User_CheckLeftSpace(nSpace) then
		local sSpace = string.format(HappySummerShopping_Text["MsgBox"]["NoSpace"],nSpace)
		Sys_MsgBox(sSpace)
		return
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_Reward(tHappySummerShopping_ItemId[nItemId][2])
		HappySummerShopping_SetStc(nItemId,0)  --掩码置0
		local sStr = string.format(HappySummerShopping_Text["MsgBox"]["GetItem"],HappySummerShopping_Text[nItemId][2])
		User_TalkChannel2005(sStr)
		User_EffectAdd("self",tHappySummerShopping_Data["Effect"])
	end
end
--第一次打开礼包获得
function HappySummerShopping_GetItem(nItemId)

	if not Item_ChkItem(nItemId) then
		return
	end
	local nSpace = tHappySummerShopping_ItemId[nItemId][1]["Space"]
	if not User_CheckLeftSpace(nSpace) then
		local sSpace = string.format(HappySummerShopping_Text["MsgBox"]["NoSpace"],nSpace)
		Sys_MsgBox(sSpace)
		return
	end
	if Item_ChkItem(nItemId) then
		RewardTemplate_Reward(tHappySummerShopping_ItemId[nItemId][1])
		HappySummerShopping_SetStc(nItemId,1)  --掩码置0
		local sStr = string.format(HappySummerShopping_Text["MsgBox"]["GetItem"],HappySummerShopping_Text[nItemId][1])
		User_TalkChannel2005(sStr)
		User_EffectAdd("self",tHappySummerShopping_Data["Effect"])
	end
end

----新增物品
function HappySummerShopping_UseMoneyItem(nItemId)
	if tHappySummerShopping_ItemId[nItemId][1]["RewardNoNeedTip"] ~= nil then
		local nEmoney = tHappySummerShopping_ItemId[nItemId][1]["RewardEMoneyMono"]["Value"]
		local nUserEmoneymono = Get_UserMonoEMoney()
		local nMaxEmoney = nEmoney + nUserEmoneymono
		if nMaxEmoney > tHappySummerShopping_ItemId["EmoneyLimit"] then
			Sys_MsgBox(HappySummerShopping_Text["MsgBox"]["Emoneymono"])
			return
		end
		
	end
	if tHappySummerShopping_ItemId[nItemId][1]["Space"] ~= nil then
		local nSpace = tHappySummerShopping_ItemId[nItemId][1]["Space"] 
		if not User_CheckLeftSpace(nSpace) then
			local sSpace = string.format(HappySummerShopping_Text["MsgBox"]["NoSpace"],nSpace)
			Sys_MsgBox(sSpace)
			return
		end
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_Reward(tHappySummerShopping_ItemId[nItemId][1])
		if tHappySummerShopping_ItemId[nItemId][1]["RewardNoNeedTip"] ~= nil then
			local nMoney = tHappySummerShopping_ItemId[nItemId][1]["RewardEMoneyMono"]["Value"]
			local sStr = string.format(HappySummerShopping_Text["MsgBox"]["GetEmoneymono"],nMoney)
			User_TalkChannel2005(sStr)
		end
		User_EffectAdd("self",tHappySummerShopping_Data["Effect"])
	end
end

function HappySummerShopping_UseItem111(nItemId)
	local nSpace = tHappySummerShopping_ItemId[nItemId][1]["Space"] 
	if not User_CheckLeftSpace(nSpace) then
		local sSpace = string.format(HappySummerShopping_Text["MsgBox"]["NoSpace"],nSpace)
		Sys_MsgBox(sSpace)
		return
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_Reward(tHappySummerShopping_ItemId[nItemId][1])
		User_EffectAdd("self",tHappySummerShopping_Data["Effect"])
	end
end
----------------------------------NPC部分---------------------------------------------
tNpcFace[4269] = 119
tNpcGossip[19401]= tNpcGossip[19401] or DefaultNpc:new{}
tNpcGossip[19401]["OptionHidden"] = 1
tNpcGossip[19401]["nPageNum"] = 11
--活动时间前
tNpcGossip[19401]["Text1-1"] = {111,112,113}
tNpcGossip[19401]["Text111"] = HappySummerShopping_Text[19401]["Text111"]
tNpcGossip[19401]["Text112"] = HappySummerShopping_Text[19401]["Text112"]
tNpcGossip[19401]["Text113"] = HappySummerShopping_Text[19401]["Text113"]
tNpcGossip[19401]["tOption1-1"] = {1}
tNpcGossip[19401]["Option1"] = HappySummerShopping_Text[19401]["Option1"]
tNpcGossip[19401]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tHappySummerShopping_Data["Bef_Time"])
end
--活动时间后
tNpcGossip[19401]["Text1-2"] = {121}
tNpcGossip[19401]["Text121"] = HappySummerShopping_Text[19401]["Text121"]
tNpcGossip[19401]["tOption1-2"] = {2}
tNpcGossip[19401]["Option2"] = HappySummerShopping_Text[19401]["Option2"]
tNpcGossip[19401]["ChkFunc1-2"]= function()
	return not Sys_ChkFullTime(tHappySummerShopping_Data["Now_Time"])
end
---活动中
tNpcGossip[19401]["Text1-3"] = {131,132,133}
tNpcGossip[19401]["Text131"] = HappySummerShopping_Text[19401]["Text131"]
tNpcGossip[19401]["Text132"] = HappySummerShopping_Text[19401]["Text132"]
tNpcGossip[19401]["Text133"] = HappySummerShopping_Text[19401]["Text133"]
tNpcGossip[19401]["tOption1-3"] = {3,4}
tNpcGossip[19401]["Option3"] = HappySummerShopping_Text[19401]["Option3"]
tNpcGossip[19401]["OptionPoint3"]="2-1"
tNpcGossip[19401]["Option4"] = HappySummerShopping_Text[19401]["Option4"]
tNpcGossip[19401]["ChkFunc1-3"]= function()
	return Sys_ChkFullTime(tHappySummerShopping_Data["Now_Time"])
end
--购买特惠礼包
tNpcGossip[19401]["Text2-1"] = {211,212,213,221,214,222,215,223,216,224,217,225,218,226,219}
tNpcGossip[19401]["Text211"] = HappySummerShopping_Text[19401]["Text211"]
tNpcGossip[19401]["Text212"] = HappySummerShopping_Text[19401]["Text212"]
tNpcGossip[19401]["Text213"] = HappySummerShopping_Text[19401]["Text213"]
tNpcGossip[19401]["Text214"] = HappySummerShopping_Text[19401]["Text214"]
tNpcGossip[19401]["Text215"] = HappySummerShopping_Text[19401]["Text215"]
tNpcGossip[19401]["Text216"] = HappySummerShopping_Text[19401]["Text216"]
tNpcGossip[19401]["Text217"] = HappySummerShopping_Text[19401]["Text217"]
tNpcGossip[19401]["Text218"] = HappySummerShopping_Text[19401]["Text218"]
tNpcGossip[19401]["Text219"] = HappySummerShopping_Text[19401]["Text219"]
tNpcGossip[19401]["Text221"] = HappySummerShopping_Text[19401]["Text221"]
tNpcGossip[19401]["Text222"] = HappySummerShopping_Text[19401]["Text222"]
tNpcGossip[19401]["Text223"] = HappySummerShopping_Text[19401]["Text223"]
tNpcGossip[19401]["Text224"] = HappySummerShopping_Text[19401]["Text224"]
tNpcGossip[19401]["Text225"] = HappySummerShopping_Text[19401]["Text225"]
tNpcGossip[19401]["Text226"] = HappySummerShopping_Text[19401]["Text226"]

tNpcGossip[19401]["tOption2-1"] = {11,12,13,14,15,16,24,25,26,27,17}
tNpcGossip[19401]["Option11"] = HappySummerShopping_Text[19401]["Option11"]
tNpcGossip[19401]["OptionFunc11"] = "HappySummerShopping_BuyItem</N>19401</N>3200851</N>1</N>11"  

tNpcGossip[19401]["Option12"] = HappySummerShopping_Text[19401]["Option12"]
tNpcGossip[19401]["OptionFunc12"] = "HappySummerShopping_BuyItem</N>19401</N>3200852</N>2</N>11"  

tNpcGossip[19401]["Option13"] = HappySummerShopping_Text[19401]["Option13"]
tNpcGossip[19401]["OptionFunc13"] = "HappySummerShopping_BuyItem</N>19401</N>3200853</N>3</N>11"  

tNpcGossip[19401]["Option14"] = HappySummerShopping_Text[19401]["Option14"]
tNpcGossip[19401]["OptionFunc14"] = "HappySummerShopping_BuyItem</N>19401</N>3200854</N>4</N>11"  

tNpcGossip[19401]["Option15"] = HappySummerShopping_Text[19401]["Option15"]
tNpcGossip[19401]["OptionFunc15"] = "HappySummerShopping_BuyItem</N>19401</N>3200855</N>5</N>11"  

tNpcGossip[19401]["Option16"] = HappySummerShopping_Text[19401]["Option16"]
tNpcGossip[19401]["OptionFunc16"] = "HappySummerShopping_BuyItem</N>19401</N>3200856</N>6</N>11"  

tNpcGossip[19401]["Option24"] = HappySummerShopping_Text[19401]["Option24"]
tNpcGossip[19401]["OptionFunc24"] = "HappySummerShopping_BuyItem</N>19401</N>3300175</N>7</N>11"  

tNpcGossip[19401]["Option25"] = HappySummerShopping_Text[19401]["Option25"]
tNpcGossip[19401]["OptionFunc25"] = "HappySummerShopping_BuyItem</N>19401</N>3300176</N>8</N>11"  

tNpcGossip[19401]["Option26"] = HappySummerShopping_Text[19401]["Option26"]
tNpcGossip[19401]["OptionFunc26"] = "HappySummerShopping_BuyItem</N>19401</N>3300177</N>9</N>11"  

tNpcGossip[19401]["Option27"] = HappySummerShopping_Text[19401]["Option27"]
tNpcGossip[19401]["OptionFunc27"] = "HappySummerShopping_BuyItem</N>19401</N>3300178</N>10</N>11"  

tNpcGossip[19401]["Option17"] = HappySummerShopping_Text[19401]["Option17"]
-- 【天石不足】
-- tNpcGossip[19401]["Text3-1"] = {311}
-- tNpcGossip[19401]["Text311"] = HappySummerShopping_Text[19401]["Text311"]
-- tNpcGossip[19401]["tOption3-1"] = {21}
-- tNpcGossip[19401]["Option21"] = HappySummerShopping_Text[19401]["Option21"]
-- 【背包满】
tNpcGossip[19401]["Text5-1"] = {511}
tNpcGossip[19401]["Text511"] = HappySummerShopping_Text[19401]["Text511"]
tNpcGossip[19401]["tOption5-1"] = {41}
tNpcGossip[19401]["Option41"] = HappySummerShopping_Text[19401]["Option41"]


---------------------------------物品部分---------------------------------------------
--------3200851 - 3200856
tItem[3200851] = tItem[3200851] or {}
tItem[3200851]["Function"] = function(nItemId,sItemName)
	HappySummerShopping_UseItem(nItemId)
end
for i= 3200852, 3200856 do
	tItem[i] = tItem[3200851] or {}
end

--新增物品
tItem[3300175] = tItem[3300175] or {}
tItem[3300175]["Function"] = function(nItemId,sItemName)
	HappySummerShopping_UseMoneyItem(nItemId)
end
for a= 3300176, 3300178 do
	tItem[a] = tItem[3300175] or {}
end
-- 3300190  龙珠卷
tItem[3300190] = tItem[3300190] or {}
tItem[3300190]["Function"] = function(nItemId,sItemName)
	HappySummerShopping_UseItem111(nItemId)
end

