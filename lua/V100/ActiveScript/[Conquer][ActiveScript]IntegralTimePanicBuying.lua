----------------------------------------------------------------------------
--Name:		170413[英文征服][活动脚本]神秘商人整点抢购活动(5.5-5.7)
--Creator: 	姚曦宇
--Created:	2017/04/13
----------------------------------------------------------------------------
-- Stc掩码说明：
-- 158 80：标记活动期间每日是否购买任意道具，当日购买任意道具，掩码加1，范围0~3
-- 158 81：背包信掩码

-- 全局动态表说明：
-- GlobalId：【51380】
-- data0：【自创修炼包】的全服购买限制次数，每个抢购时间点内最多可购买1次
-- data1：【内功修行包】的全服购买限制次数，每个抢购时间点内最多可购买1次
-- data2：【淬炼神魂包】的全服购买限制次数，每个抢购时间点内最多可购买1次
-- data3：【追加神魂包】的全服购买限制次数，每个抢购时间点内最多可购买1次
-- data4：标记全服物品购买限制的清理状态，0表示未清理，1表示已清理

-- GlobalId：【51381】
-- 51381 data0：【赤炼石+3】的全服购买限制次数，每个抢购时间点内最多可购买3次
-- 51381 data1：【龙珠】的全服购买限制次数，每个抢购时间点内最多可购买3次
-- 51381 data2：【气力值】的全服购买限制次数，每个抢购时间点内最多可购买3次
-- 51381 data3：【固化石】的全服购买限制次数，每个抢购时间点内最多可购买3次
-- 51381 data4：【优质天怒宝石】的全服购买限制次数，每个抢购时间点内最多可购买3次
-- 51381 data5：【优质地灵宝石】的全服购买限制次数，每个抢购时间点内最多可购买3次

-- GlobalId：【51382】
-- data0：【烈火柔情套装】的全服购买限制次数，每个抢购时间点内最多可购买2次
-- data1：【孔雀东南飞】的全服购买限制次数，每个抢购时间点内最多可购买2次
-- data2：【福来哥】的全服购买限制次数，每个抢购时间点内最多可购买2次
-- data3：【萌肥圆小羊驼】的全服购买限制次数，每个抢购时间点内最多可购买2次





-- logid：12000701
-- 统一前缀：IntegralTimePanicBuying_
-------------------------------------常量表-------------------------------
local tIntegralTimePanicBuying_Cont = {}
	tIntegralTimePanicBuying_Cont["ActiveTime"] = "2017-05-05 00:00 2017-05-07 23:59"
	tIntegralTimePanicBuying_Cont["LastActiveTime"] = "2017-05-07 00:00 2017-05-07 23:59"
	tIntegralTimePanicBuying_Cont["GlobalId1"] = 51380
	tIntegralTimePanicBuying_Cont["GlobalId2"] = 51381
	tIntegralTimePanicBuying_Cont["GlobalId3"] = 51382
	
local tIntegralTimePanicBuying_Time = {}
	tIntegralTimePanicBuying_Time["BuyTime"] = {}
	tIntegralTimePanicBuying_Time["BuyTime"][1] = "10:00 10:19"
	tIntegralTimePanicBuying_Time["BuyTime"][2] = "14:00 14:19"
	tIntegralTimePanicBuying_Time["BuyTime"][3] = "18:00 18:19"
	tIntegralTimePanicBuying_Time["BuyTime"][4] = "22:00 22:19"
	tIntegralTimePanicBuying_Time["NotBuyTime"] = {}
	tIntegralTimePanicBuying_Time["NotBuyTime"][1] = "00:00 09:59"
	tIntegralTimePanicBuying_Time["NotBuyTime"][2] = "10:20 13:59"
	tIntegralTimePanicBuying_Time["NotBuyTime"][3] = "14:20 17:59"
	tIntegralTimePanicBuying_Time["NotBuyTime"][4] = "18:20 21:59"
	tIntegralTimePanicBuying_Time["NotBuyTime"][5] = "22:20 23:59"
	tIntegralTimePanicBuying_Time["NextTime"] = {}
	tIntegralTimePanicBuying_Time["NextTime"][1] = "10:00"
	tIntegralTimePanicBuying_Time["NextTime"][2] = "14:00"
	tIntegralTimePanicBuying_Time["NextTime"][3] = "18:00"
	tIntegralTimePanicBuying_Time["NextTime"][4] = "22:00"	
	tIntegralTimePanicBuying_Time["NextTime"][5] = "tomorrow 10:00"	
	
	
local tIntegralTimePanicBuying_Npc = {}
	tIntegralTimePanicBuying_Npc[11360] = {}
	tIntegralTimePanicBuying_Npc[11360]["nPox"] = 314
	tIntegralTimePanicBuying_Npc[11360]["nPoY"] = 248
	tIntegralTimePanicBuying_Npc[11360]["nMapId"] = 1002
	tIntegralTimePanicBuying_Npc[11361] = {}
	tIntegralTimePanicBuying_Npc[11361]["nPox"] = 318
	tIntegralTimePanicBuying_Npc[11361]["nPoY"] = 248
	tIntegralTimePanicBuying_Npc[11361]["nMapId"] = 1002
	tIntegralTimePanicBuying_Npc[11362] = {}
	tIntegralTimePanicBuying_Npc[11362]["nPox"] = 322
	tIntegralTimePanicBuying_Npc[11362]["nPoY"] = 248
	tIntegralTimePanicBuying_Npc[11362]["nMapId"] = 1002
	
local tIntegralTimePanicBuying_Stc = {}	
	tIntegralTimePanicBuying_Stc[5] = {}
	tIntegralTimePanicBuying_Stc[5]["EventType"] = 158
	tIntegralTimePanicBuying_Stc[5]["TypeData"] = 80
	
	
local tIntegralTimePanicBuying_Buy = {}
	tIntegralTimePanicBuying_Buy[11360] = {}
-- 修炼武功大礼包*1 id = 3303065 monopoly = 8
	tIntegralTimePanicBuying_Buy[11360][3303065] = {}
	tIntegralTimePanicBuying_Buy[11360][3303065]["Price"] = 20
	tIntegralTimePanicBuying_Buy[11360][3303065]["Space"] = 1
	tIntegralTimePanicBuying_Buy[11360][3303065]["RewardItem"] = {}
	tIntegralTimePanicBuying_Buy[11360][3303065]["RewardItem"][1] = {}
	tIntegralTimePanicBuying_Buy[11360][3303065]["RewardItem"][1]["Id"] = 3303065
	tIntegralTimePanicBuying_Buy[11360][3303065]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tIntegralTimePanicBuying_Buy[11360][3303065]["Log"] = "0,0,0,0,12000701,2,3303065,1"
	tIntegralTimePanicBuying_Buy[11360][3303065]["EmoneyLog"] = "350	20534	0	0	20	"
	tIntegralTimePanicBuying_Buy[11360][3303065]["GlobalId"] = 51380
	tIntegralTimePanicBuying_Buy[11360][3303065]["Pos"] = 0
	tIntegralTimePanicBuying_Buy[11360][3303065]["Max"] = 1
	
-- 豪华内功修行包*1 id = 3303066 monopoly = 8	
	tIntegralTimePanicBuying_Buy[11360][3303066] = {}
	tIntegralTimePanicBuying_Buy[11360][3303066]["Price"] = 50
	tIntegralTimePanicBuying_Buy[11360][3303066]["Space"] = 1
	tIntegralTimePanicBuying_Buy[11360][3303066]["RewardItem"] = {}
	tIntegralTimePanicBuying_Buy[11360][3303066]["RewardItem"][1] = {}
	tIntegralTimePanicBuying_Buy[11360][3303066]["RewardItem"][1]["Id"] = 3303066
	tIntegralTimePanicBuying_Buy[11360][3303066]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tIntegralTimePanicBuying_Buy[11360][3303066]["Log"] = "0,0,0,0,12000701,2,3303066,1"
	tIntegralTimePanicBuying_Buy[11360][3303066]["EmoneyLog"] = "350	20535	0	0	50	"
	tIntegralTimePanicBuying_Buy[11360][3303066]["GlobalId"] = 51380
	tIntegralTimePanicBuying_Buy[11360][3303066]["Pos"] = 1
	tIntegralTimePanicBuying_Buy[11360][3303066]["Max"] = 1
	
-- 奢华淬炼神魂包*1 id = 3303067 monopoly = 8	
	tIntegralTimePanicBuying_Buy[11360][3303067] = {}
	tIntegralTimePanicBuying_Buy[11360][3303067]["Price"] = 20
	tIntegralTimePanicBuying_Buy[11360][3303067]["Space"] = 1
	tIntegralTimePanicBuying_Buy[11360][3303067]["RewardItem"] = {}
	tIntegralTimePanicBuying_Buy[11360][3303067]["RewardItem"][1] = {}
	tIntegralTimePanicBuying_Buy[11360][3303067]["RewardItem"][1]["Id"] = 3303067
	tIntegralTimePanicBuying_Buy[11360][3303067]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tIntegralTimePanicBuying_Buy[11360][3303067]["Log"] = "0,0,0,0,12000701,2,3303067,1"
	tIntegralTimePanicBuying_Buy[11360][3303067]["EmoneyLog"] = "350	20536	0	0	20	"
	tIntegralTimePanicBuying_Buy[11360][3303067]["GlobalId"] = 51380
	tIntegralTimePanicBuying_Buy[11360][3303067]["Pos"] = 2
	tIntegralTimePanicBuying_Buy[11360][3303067]["Max"] = 1
	
-- 追加神魂包*1 id = 3303068 monopoly = 8	
	tIntegralTimePanicBuying_Buy[11360][3303068] = {}
	tIntegralTimePanicBuying_Buy[11360][3303068]["Price"] = 200
	tIntegralTimePanicBuying_Buy[11360][3303068]["Space"] = 1
	tIntegralTimePanicBuying_Buy[11360][3303068]["RewardItem"] = {}
	tIntegralTimePanicBuying_Buy[11360][3303068]["RewardItem"][1] = {}
	tIntegralTimePanicBuying_Buy[11360][3303068]["RewardItem"][1]["Id"] = 3303068
	tIntegralTimePanicBuying_Buy[11360][3303068]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tIntegralTimePanicBuying_Buy[11360][3303068]["Log"] = "0,0,0,0,12000701,2,3303068,1"
	tIntegralTimePanicBuying_Buy[11360][3303068]["EmoneyLog"] = "350	20537	0	0	200	"
	tIntegralTimePanicBuying_Buy[11360][3303068]["GlobalId"] = 51380
	tIntegralTimePanicBuying_Buy[11360][3303068]["Pos"] = 3
	tIntegralTimePanicBuying_Buy[11360][3303068]["Max"] = 1
	
	tIntegralTimePanicBuying_Buy[11361] = {}
-- 赤炼石+3*1 id = 730003 monopoly = 0	
	tIntegralTimePanicBuying_Buy[11361][730003] = {}
	tIntegralTimePanicBuying_Buy[11361][730003]["Price"] = 29
	tIntegralTimePanicBuying_Buy[11361][730003]["Space"] = 1
	tIntegralTimePanicBuying_Buy[11361][730003]["RewardItem"] = {}
	tIntegralTimePanicBuying_Buy[11361][730003]["RewardItem"][1] = {}
	tIntegralTimePanicBuying_Buy[11361][730003]["RewardItem"][1]["Id"] = 730003
	tIntegralTimePanicBuying_Buy[11361][730003]["RewardItem"][1]["Attr"] = "0 1"
	tIntegralTimePanicBuying_Buy[11361][730003]["Log"] = "0,0,0,0,12000701,2,730003,1"
	tIntegralTimePanicBuying_Buy[11361][730003]["EmoneyLog"] = "350	20538	0	0	29	"
	tIntegralTimePanicBuying_Buy[11361][730003]["GlobalId"] = 51381
	tIntegralTimePanicBuying_Buy[11361][730003]["Pos"] = 0
	tIntegralTimePanicBuying_Buy[11361][730003]["Max"] = 3
	
-- 龙珠*1 id = 1088000 monopoly = 0	
	tIntegralTimePanicBuying_Buy[11361][1088000] = {}
	tIntegralTimePanicBuying_Buy[11361][1088000]["Price"] = 39
	tIntegralTimePanicBuying_Buy[11361][1088000]["Space"] = 1
	tIntegralTimePanicBuying_Buy[11361][1088000]["RewardItem"] = {}
	tIntegralTimePanicBuying_Buy[11361][1088000]["RewardItem"][1] = {}
	tIntegralTimePanicBuying_Buy[11361][1088000]["RewardItem"][1]["Id"] = 1088000
	tIntegralTimePanicBuying_Buy[11361][1088000]["RewardItem"][1]["Attr"] = "0 1"
	tIntegralTimePanicBuying_Buy[11361][1088000]["Log"] = "0,0,0,0,12000701,2,1088000,1"
	tIntegralTimePanicBuying_Buy[11361][1088000]["EmoneyLog"] = "350	20539	0	0	39	"
	tIntegralTimePanicBuying_Buy[11361][1088000]["GlobalId"] = 51381
	tIntegralTimePanicBuying_Buy[11361][1088000]["Pos"] = 1
	tIntegralTimePanicBuying_Buy[11361][1088000]["Max"] = 3
	
-- 气力值*5000 id = 3008200
	tIntegralTimePanicBuying_Buy[11361][3008200] = {}
	tIntegralTimePanicBuying_Buy[11361][3008200]["Price"] = 99
	tIntegralTimePanicBuying_Buy[11361][3008200]["Space"] = 1
	tIntegralTimePanicBuying_Buy[11361][3008200]["RewardItem"] = {}
	tIntegralTimePanicBuying_Buy[11361][3008200]["RewardItem"][1] = {}
	tIntegralTimePanicBuying_Buy[11361][3008200]["RewardItem"][1]["Id"] = 3008200
	tIntegralTimePanicBuying_Buy[11361][3008200]["RewardItem"][1]["Attr"] = "0 1"
	tIntegralTimePanicBuying_Buy[11361][3008200]["Log"] = "0,0,0,0,12000701,2,3008200,1"
	tIntegralTimePanicBuying_Buy[11361][3008200]["EmoneyLog"] = "350	20540	0	0	99	"
	tIntegralTimePanicBuying_Buy[11361][3008200]["GlobalId"] = 51381
	tIntegralTimePanicBuying_Buy[11361][3008200]["Pos"] = 2
	tIntegralTimePanicBuying_Buy[11361][3008200]["Max"] = 3
	
-- 固化石*1 id = 723694 monopoly = 0	
	tIntegralTimePanicBuying_Buy[11361][723694] = {}
	tIntegralTimePanicBuying_Buy[11361][723694]["Price"] = 189
	tIntegralTimePanicBuying_Buy[11361][723694]["Space"] = 1
	tIntegralTimePanicBuying_Buy[11361][723694]["RewardItem"] = {}
	tIntegralTimePanicBuying_Buy[11361][723694]["RewardItem"][1] = {}
	tIntegralTimePanicBuying_Buy[11361][723694]["RewardItem"][1]["Id"] = 723694
	tIntegralTimePanicBuying_Buy[11361][723694]["RewardItem"][1]["Attr"] = "0 1"
	tIntegralTimePanicBuying_Buy[11361][723694]["Log"] = "0,0,0,0,12000701,2,723694,1"
	tIntegralTimePanicBuying_Buy[11361][723694]["EmoneyLog"] = "350	20541	0	0	189	"
	tIntegralTimePanicBuying_Buy[11361][723694]["GlobalId"] = 51381
	tIntegralTimePanicBuying_Buy[11361][723694]["Pos"] = 3
	tIntegralTimePanicBuying_Buy[11361][723694]["Max"] = 3
	
-- 优质天怒宝石*1 id = 700103 monopoly = 0	
	tIntegralTimePanicBuying_Buy[11361][700103] = {}
	tIntegralTimePanicBuying_Buy[11361][700103]["Price"] = 799
	tIntegralTimePanicBuying_Buy[11361][700103]["Space"] = 1
	tIntegralTimePanicBuying_Buy[11361][700103]["RewardItem"] = {}
	tIntegralTimePanicBuying_Buy[11361][700103]["RewardItem"][1] = {}
	tIntegralTimePanicBuying_Buy[11361][700103]["RewardItem"][1]["Id"] = 700103
	tIntegralTimePanicBuying_Buy[11361][700103]["RewardItem"][1]["Attr"] = "0 1"
	tIntegralTimePanicBuying_Buy[11361][700103]["Log"] = "0,0,0,0,12000701,2,700103,1"
	tIntegralTimePanicBuying_Buy[11361][700103]["EmoneyLog"] = "350	20542	0	0	799	"
	tIntegralTimePanicBuying_Buy[11361][700103]["GlobalId"] = 51381
	tIntegralTimePanicBuying_Buy[11361][700103]["Pos"] = 4
	tIntegralTimePanicBuying_Buy[11361][700103]["Max"] = 3
	
-- 优质地灵宝石*1 id = 700123 monopoly = 0	
	tIntegralTimePanicBuying_Buy[11361][700123] = {}
	tIntegralTimePanicBuying_Buy[11361][700123]["Price"] = 799
	tIntegralTimePanicBuying_Buy[11361][700123]["Space"] = 1
	tIntegralTimePanicBuying_Buy[11361][700123]["RewardItem"] = {}
	tIntegralTimePanicBuying_Buy[11361][700123]["RewardItem"][1] = {}
	tIntegralTimePanicBuying_Buy[11361][700123]["RewardItem"][1]["Id"] = 700123
	tIntegralTimePanicBuying_Buy[11361][700123]["RewardItem"][1]["Attr"] = "0 1"
	tIntegralTimePanicBuying_Buy[11361][700123]["Log"] = "0,0,0,0,12000701,2,700123,1"
	tIntegralTimePanicBuying_Buy[11361][700123]["EmoneyLog"] = "350	20543	0	0	799	"
	tIntegralTimePanicBuying_Buy[11361][700123]["GlobalId"] = 51381
	tIntegralTimePanicBuying_Buy[11361][700123]["Pos"] = 5
	tIntegralTimePanicBuying_Buy[11361][700123]["Max"] = 3
	
	tIntegralTimePanicBuying_Buy[11362] = {}
-- 烈火柔情套装*1 id = 188495 monopoly = 0	
	tIntegralTimePanicBuying_Buy[11362][188495] = {}
	tIntegralTimePanicBuying_Buy[11362][188495]["Price"] = 90
	tIntegralTimePanicBuying_Buy[11362][188495]["Space"] = 1
	tIntegralTimePanicBuying_Buy[11362][188495]["RewardItem"] = {}
	tIntegralTimePanicBuying_Buy[11362][188495]["RewardItem"][1] = {}
	tIntegralTimePanicBuying_Buy[11362][188495]["RewardItem"][1]["Id"] = 188495
	tIntegralTimePanicBuying_Buy[11362][188495]["RewardItem"][1]["Attr"] = "0 1 3 129600 1"
	tIntegralTimePanicBuying_Buy[11362][188495]["Log"] = "0,0,0,0,12000701,2,188495,1"
	tIntegralTimePanicBuying_Buy[11362][188495]["EmoneyLog"] = "350	20544	0	0	90	"
	tIntegralTimePanicBuying_Buy[11362][188495]["GlobalId"] = 51382
	tIntegralTimePanicBuying_Buy[11362][188495]["Pos"] = 0
	tIntegralTimePanicBuying_Buy[11362][188495]["Max"] = 2
	
-- 孔雀东南飞*1 id = 193295 monopoly = 0	
	tIntegralTimePanicBuying_Buy[11362][193295] = {}
	tIntegralTimePanicBuying_Buy[11362][193295]["Price"] = 90
	tIntegralTimePanicBuying_Buy[11362][193295]["Space"] = 1
	tIntegralTimePanicBuying_Buy[11362][193295]["RewardItem"] = {}
	tIntegralTimePanicBuying_Buy[11362][193295]["RewardItem"][1] = {}
	tIntegralTimePanicBuying_Buy[11362][193295]["RewardItem"][1]["Id"] = 193295
	tIntegralTimePanicBuying_Buy[11362][193295]["RewardItem"][1]["Attr"] = "0 1 3 129600 1"
	tIntegralTimePanicBuying_Buy[11362][193295]["Log"] = "0,0,0,0,12000701,2,193295,1"
	tIntegralTimePanicBuying_Buy[11362][193295]["EmoneyLog"] = "350	20545	0	0	90	"
	tIntegralTimePanicBuying_Buy[11362][193295]["GlobalId"] = 51382
	tIntegralTimePanicBuying_Buy[11362][193295]["Pos"] = 1
	tIntegralTimePanicBuying_Buy[11362][193295]["Max"] = 2
	
-- 福来哥*1 id = 200500 monopoly = 0	
	tIntegralTimePanicBuying_Buy[11362][200500] = {}
	tIntegralTimePanicBuying_Buy[11362][200500]["Price"] = 90
	tIntegralTimePanicBuying_Buy[11362][200500]["Space"] = 1
	tIntegralTimePanicBuying_Buy[11362][200500]["RewardItem"] = {}
	tIntegralTimePanicBuying_Buy[11362][200500]["RewardItem"][1] = {}
	tIntegralTimePanicBuying_Buy[11362][200500]["RewardItem"][1]["Id"] = 200500
	tIntegralTimePanicBuying_Buy[11362][200500]["RewardItem"][1]["Attr"] = "0 1 3 129600 1"
	tIntegralTimePanicBuying_Buy[11362][200500]["Log"] = "0,0,0,0,12000701,2,200500,1"
	tIntegralTimePanicBuying_Buy[11362][200500]["EmoneyLog"] = "350	20546	0	0	90	"
	tIntegralTimePanicBuying_Buy[11362][200500]["GlobalId"] = 51382
	tIntegralTimePanicBuying_Buy[11362][200500]["Pos"] = 2
	tIntegralTimePanicBuying_Buy[11362][200500]["Max"] = 2
	
-- 萌肥圆小羊驼*1 id = 200499 monopoly = 0	
	tIntegralTimePanicBuying_Buy[11362][200499] = {}
	tIntegralTimePanicBuying_Buy[11362][200499]["Price"] = 90
	tIntegralTimePanicBuying_Buy[11362][200499]["Space"] = 1
	tIntegralTimePanicBuying_Buy[11362][200499]["RewardItem"] = {}
	tIntegralTimePanicBuying_Buy[11362][200499]["RewardItem"][1] = {}
	tIntegralTimePanicBuying_Buy[11362][200499]["RewardItem"][1]["Id"] = 200499
	tIntegralTimePanicBuying_Buy[11362][200499]["RewardItem"][1]["Attr"] = "0 1 3 129600 1"
	tIntegralTimePanicBuying_Buy[11362][200499]["Log"] = "0,0,0,0,12000701,2,200499,1"
	tIntegralTimePanicBuying_Buy[11362][200499]["EmoneyLog"] = "350	20547	0	0	90	"
	tIntegralTimePanicBuying_Buy[11362][200499]["GlobalId"] = 51382
	tIntegralTimePanicBuying_Buy[11362][200499]["Pos"] = 3
	tIntegralTimePanicBuying_Buy[11362][200499]["Max"] = 2
	
local tIntegralTimePanicBuying_Award = {}
-- 自创修炼包
	tIntegralTimePanicBuying_Award[3303065] = {}
	tIntegralTimePanicBuying_Award[3303065]["Space"] = 1
	tIntegralTimePanicBuying_Award[3303065]["DeleteItem"] = {}
	tIntegralTimePanicBuying_Award[3303065]["DeleteItem"][1] = {}
	tIntegralTimePanicBuying_Award[3303065]["DeleteItem"][1]["Id"] = 3303065
	tIntegralTimePanicBuying_Award[3303065]["RewardItem"] = {}
	-- 免费强炼丹*10 id = 3003124  monopoly = 0
	tIntegralTimePanicBuying_Award[3303065]["RewardItem"][1] = {}
	tIntegralTimePanicBuying_Award[3303065]["RewardItem"][1]["Id"] = 3003124
	tIntegralTimePanicBuying_Award[3303065]["RewardItem"][1]["Attr"] = "0 10 3"
	-- 究极通神丹*10 id = 3003126 monopoly = 0
	tIntegralTimePanicBuying_Award[3303065]["RewardItem"][2] = {}
	tIntegralTimePanicBuying_Award[3303065]["RewardItem"][2]["Id"] = 3003126
	tIntegralTimePanicBuying_Award[3303065]["RewardItem"][2]["Attr"] = "0 10 3"
	tIntegralTimePanicBuying_Award[3303065]["Log"] = "0,0,3303065,1,12000701,2,3003124[3003126],10[10]"
	

-- 内功修行包
	tIntegralTimePanicBuying_Award[3303066] = {}
	tIntegralTimePanicBuying_Award[3303066]["DeleteItem"] = {}
	tIntegralTimePanicBuying_Award[3303066]["DeleteItem"][1] = {}
	tIntegralTimePanicBuying_Award[3303066]["DeleteItem"][1]["Id"] = 3303066
	tIntegralTimePanicBuying_Award[3303066]["RewardItem"] = {}
	-- 修为值*1000 type = 19  monopoly = 0
	tIntegralTimePanicBuying_Award[3303066]["RewardRepairValue"] = {}
	tIntegralTimePanicBuying_Award[3303066]["RewardRepairValue"]["Value"] = 1000
	-- 修行值*3000 type = 6 monopoly = 0
	tIntegralTimePanicBuying_Award[3303066]["RewardCultivation"] = {}
	tIntegralTimePanicBuying_Award[3303066]["RewardCultivation"]["Value"] = 3000
	tIntegralTimePanicBuying_Award[3303066]["Log"] = "0,0,3303066,1,12000701,2,19[6],1000[3000]"
	
-- 淬炼神魂包
	tIntegralTimePanicBuying_Award[3303067] = {}
	tIntegralTimePanicBuying_Award[3303067]["Space"] = 3
	tIntegralTimePanicBuying_Award[3303067]["DeleteItem"] = {}
	tIntegralTimePanicBuying_Award[3303067]["DeleteItem"][1] = {}
	tIntegralTimePanicBuying_Award[3303067]["DeleteItem"][1]["Id"] = 3303067
	tIntegralTimePanicBuying_Award[3303067]["RewardItem"] = {}
	-- 三选一淬炼礼包*1 id = 3303069  monopoly = 0
	tIntegralTimePanicBuying_Award[3303067]["RewardItem"][1] = {}
	tIntegralTimePanicBuying_Award[3303067]["RewardItem"][1]["Id"] = 3303069
	tIntegralTimePanicBuying_Award[3303067]["RewardItem"][1]["Attr"] = "0 2 0 43200 1"
	-- 三选一6阶神魂礼包*1 id = 3303070 monopoly = 0
	tIntegralTimePanicBuying_Award[3303067]["RewardItem"][2] = {}
	tIntegralTimePanicBuying_Award[3303067]["RewardItem"][2]["Id"] = 3303070
	tIntegralTimePanicBuying_Award[3303067]["RewardItem"][2]["Attr"] = "0 2 0 43200 1"
	tIntegralTimePanicBuying_Award[3303067]["Log"] = "0,0,3303067,1,12000701,2,3303069[3303070],2[2]"
	
-- 追加神魂包
	tIntegralTimePanicBuying_Award[3303068] = {}
	tIntegralTimePanicBuying_Award[3303068]["Space"] = 1
	tIntegralTimePanicBuying_Award[3303068]["DeleteItem"] = {}
	tIntegralTimePanicBuying_Award[3303068]["DeleteItem"][1] = {}
	tIntegralTimePanicBuying_Award[3303068]["DeleteItem"][1]["Id"] = 3303068
	tIntegralTimePanicBuying_Award[3303068]["RewardItem"] = {}
	-- 赤练石+5*1 id = 730005  monopoly = 0
	tIntegralTimePanicBuying_Award[3303068]["RewardItem"][1] = {}
	tIntegralTimePanicBuying_Award[3303068]["RewardItem"][1]["Id"] = 730005
	tIntegralTimePanicBuying_Award[3303068]["RewardItem"][1]["Attr"] = "0 1"
	-- 晶莹星陨石*1 id = 3009002 monopoly = 9
	tIntegralTimePanicBuying_Award[3303068]["RewardItem"][2] = {}
	tIntegralTimePanicBuying_Award[3303068]["RewardItem"][2]["Id"] = 3009002
	tIntegralTimePanicBuying_Award[3303068]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tIntegralTimePanicBuying_Award[3303068]["Log"] = "0,0,3303068,1,12000701,2,730005[3009002],1[1]"
	
-- 三选一淬炼礼包
	tIntegralTimePanicBuying_Award[3303069] = {}
	-- 神品的马刺*1 id = 3004149 monopoly = 0
	tIntegralTimePanicBuying_Award[3303069][1] = {}
	tIntegralTimePanicBuying_Award[3303069][1]["DeleteItem"] = {}
	tIntegralTimePanicBuying_Award[3303069][1]["DeleteItem"][1] = {}
	tIntegralTimePanicBuying_Award[3303069][1]["DeleteItem"][1]["Id"] = 3303069
	tIntegralTimePanicBuying_Award[3303069][1]["RewardItem"] = {}
	tIntegralTimePanicBuying_Award[3303069][1]["RewardItem"][1] = {}
	tIntegralTimePanicBuying_Award[3303069][1]["RewardItem"][1]["Id"] = 3004149
	tIntegralTimePanicBuying_Award[3303069][1]["RewardItem"][1]["Attr"] = "0 1 0 21600 1"
	tIntegralTimePanicBuying_Award[3303069][1]["Log"] = "0,0,3303069,1,12000701,2,3004149,1"
	-- 神品的护镜*1 id = 3004139 monopoly = 0
	tIntegralTimePanicBuying_Award[3303069][2] = {}
	tIntegralTimePanicBuying_Award[3303069][2]["DeleteItem"] = {}
	tIntegralTimePanicBuying_Award[3303069][2]["DeleteItem"][1] = {}
	tIntegralTimePanicBuying_Award[3303069][2]["DeleteItem"][1]["Id"] = 3303069
	tIntegralTimePanicBuying_Award[3303069][2]["RewardItem"] = {}
	tIntegralTimePanicBuying_Award[3303069][2]["RewardItem"][1] = {}
	tIntegralTimePanicBuying_Award[3303069][2]["RewardItem"][1]["Id"] = 3004139
	tIntegralTimePanicBuying_Award[3303069][2]["RewardItem"][1]["Attr"] = "0 1 0 21600 1"
	tIntegralTimePanicBuying_Award[3303069][2]["Log"] = "0,0,3303069,1,12000701,2,3004139,1"
	-- 神品的面甲*1 id = 3004140 monopoly = 0
	tIntegralTimePanicBuying_Award[3303069][3] = {}
	tIntegralTimePanicBuying_Award[3303069][3]["DeleteItem"] = {}
	tIntegralTimePanicBuying_Award[3303069][3]["DeleteItem"][1] = {}
	tIntegralTimePanicBuying_Award[3303069][3]["DeleteItem"][1]["Id"] = 3303069
	tIntegralTimePanicBuying_Award[3303069][3]["RewardItem"] = {}
	tIntegralTimePanicBuying_Award[3303069][3]["RewardItem"][1] = {}
	tIntegralTimePanicBuying_Award[3303069][3]["RewardItem"][1]["Id"] = 3004140
	tIntegralTimePanicBuying_Award[3303069][3]["RewardItem"][1]["Attr"] = "0 1 0 21600 1"
	tIntegralTimePanicBuying_Award[3303069][3]["Log"] = "0,0,3303069,1,12000701,2,3004140,1"
	
-- 三选一神魂礼包
	tIntegralTimePanicBuying_Award[3303070] = {}
	-- 盘龙玄戒*1 id = 823055 monopoly = 0
	tIntegralTimePanicBuying_Award[3303070][1] = {}
	tIntegralTimePanicBuying_Award[3303070][1]["DeleteItem"] = {}
	tIntegralTimePanicBuying_Award[3303070][1]["DeleteItem"][1] = {}
	tIntegralTimePanicBuying_Award[3303070][1]["DeleteItem"][1]["Id"] = 3303070
	tIntegralTimePanicBuying_Award[3303070][1]["RewardItem"] = {}
	tIntegralTimePanicBuying_Award[3303070][1]["RewardItem"][1] = {}
	tIntegralTimePanicBuying_Award[3303070][1]["RewardItem"][1]["Id"] = 823055
	tIntegralTimePanicBuying_Award[3303070][1]["RewardItem"][1]["Attr"] = "0 1 0 21600 1"
	tIntegralTimePanicBuying_Award[3303070][1]["Log"] = "0,0,3303070,1,12000701,2,823055,1"
	-- 九曜玄羽*1 id = 820071 monopoly = 0
	tIntegralTimePanicBuying_Award[3303070][2] = {}
	tIntegralTimePanicBuying_Award[3303070][2]["DeleteItem"] = {}
	tIntegralTimePanicBuying_Award[3303070][2]["DeleteItem"][1] = {}
	tIntegralTimePanicBuying_Award[3303070][2]["DeleteItem"][1]["Id"] = 3303070
	tIntegralTimePanicBuying_Award[3303070][2]["RewardItem"] = {}
	tIntegralTimePanicBuying_Award[3303070][2]["RewardItem"][1] = {}
	tIntegralTimePanicBuying_Award[3303070][2]["RewardItem"][1]["Id"] = 820071
	tIntegralTimePanicBuying_Award[3303070][2]["RewardItem"][1]["Attr"] = "0 1 0 21600 1"
	tIntegralTimePanicBuying_Award[3303070][2]["Log"] = "0,0,3303070,1,12000701,2,820071,1"
	-- 蟠龙玄镯*1 id = 823056 monopoly = 0
	tIntegralTimePanicBuying_Award[3303070][3] = {}
	tIntegralTimePanicBuying_Award[3303070][3]["DeleteItem"] = {}
	tIntegralTimePanicBuying_Award[3303070][3]["DeleteItem"][1] = {}
	tIntegralTimePanicBuying_Award[3303070][3]["DeleteItem"][1]["Id"] = 3303070
	tIntegralTimePanicBuying_Award[3303070][3]["RewardItem"] = {}
	tIntegralTimePanicBuying_Award[3303070][3]["RewardItem"][1] = {}
	tIntegralTimePanicBuying_Award[3303070][3]["RewardItem"][1]["Id"] = 823056
	tIntegralTimePanicBuying_Award[3303070][3]["RewardItem"][1]["Attr"] = "0 1 0 21600 1"
	tIntegralTimePanicBuying_Award[3303070][3]["Log"] = "0,0,3303070,1,12000701,2,823056,1"
	
	
------------------------------------逻辑部分----------------------------------
-- 判断时间函数
-- 0: 活动前
-- 1~5：在活动期间的非抢购时间内（非最后一天）
-- 11~15：在活动期间的非抢购时间内（最后一天）
-- 21~24：在抢购时间内（非最后一天）
-- 31~34：在抢购时间内（最后一天）
-- 50：活动后
function IntegralTimePanicBuying_JudgeTime()

	-- 活动前
	if CommonFunc_GetBeforeActivityTime(tIntegralTimePanicBuying_Cont["ActiveTime"]) then
		return 0
	end
	
	-- 活动后
	if CommonFunc_GetAfterActivityTime(tIntegralTimePanicBuying_Cont["ActiveTime"]) then
		return 50
	end
	
	if Sys_ChkFullTime(tIntegralTimePanicBuying_Cont["ActiveTime"]) then
	
		-- 在抢购时间内
		for i,v in pairs(tIntegralTimePanicBuying_Time["BuyTime"]) do
			-- 最后一次抢购
			if Sys_ChkDayTime(v) then
				if Sys_ChkFullTime(tIntegralTimePanicBuying_Cont["LastActiveTime"]) then
					return 30+i
				end
				return 20+i
			end
		end
		
		-- 在活动期间的非购买时间
		for ii,vv in pairs(tIntegralTimePanicBuying_Time["NotBuyTime"]) do
			if Sys_ChkDayTime(vv) then
				if Sys_ChkFullTime(tIntegralTimePanicBuying_Cont["LastActiveTime"]) then
					if ii == 5 then
						return 50
					end
					return 10+ii
				end
				return ii
			end
		end
		
	end
end

-- 判断货物是否抢购完
function IntegralTimePanicBuying_LeftGoods(nNpcId,nItemId)
	local nGlobalId = tIntegralTimePanicBuying_Buy[nNpcId][nItemId]["GlobalId"]
	local nPos = tIntegralTimePanicBuying_Buy[nNpcId][nItemId]["Pos"]
	local nMax = tIntegralTimePanicBuying_Buy[nNpcId][nItemId]["Max"]
	
	if nGlobalId == nil then
		return true
	end

	if not (Get_SysDynaGlobalData(nGlobalId,nPos) < nMax) then
		return false
	end
	
	return true
end

-- 判断天石是否足够
function IntegralTimePanicBuying_RMonryEnough(nNpcId,nItemId)
	local nPrice = tIntegralTimePanicBuying_Buy[nNpcId][nItemId]["Price"]
	local nUserId = Get_UserId()
	
	if not (Get_UserEMoney(nUserId) >= nPrice) then
		return false
	end
	
	return true
end

-- 确认购买
function IntegralTimePanicBuying_BuyConfirm(nNpcId,nItemId)

	-- 判断是否在抢购时间内
	local nIndex = IntegralTimePanicBuying_JudgeTime()
	if not (nIndex > 20) or not (nIndex <= 34) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end

	-- 判断抢购数是否达到限制
	if not IntegralTimePanicBuying_LeftGoods(nNpcId,nItemId) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- 对白初始化
	tNpcGossip[nNpcId]["Text312"] = tIntegralTimePanicBuying_Text[nNpcId][nItemId]
	tNpcGossip[nNpcId]["OptionFunc311"]=string.format("IntegralTimePanicBuying_PanicBuying</N>%d</N>%d",nNpcId,nItemId)
	
	-- 指向对白
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end
	

-- 抢购
function IntegralTimePanicBuying_PanicBuying(nNpcId,nItemId)
	local nEvent = tIntegralTimePanicBuying_Stc[5]["EventType"]
	local nType = tIntegralTimePanicBuying_Stc[5]["TypeData"] 
	local nGlobalId = tIntegralTimePanicBuying_Buy[nNpcId][nItemId]["GlobalId"]
	local nPos = tIntegralTimePanicBuying_Buy[nNpcId][nItemId]["Pos"]
	local nPrice = tIntegralTimePanicBuying_Buy
	local nUserId = Get_UserId()
	local nBuyEvent
	local nBuyType

	-- 判断是否在抢购时间内
	local nIndex = IntegralTimePanicBuying_JudgeTime()
	if not (nIndex > 20) or not (nIndex <= 34) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-- 判断抢购数是否达到限制
	if not IntegralTimePanicBuying_LeftGoods(nNpcId,nItemId) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end

	
	-- 判断天石数
	if not IntegralTimePanicBuying_RMonryEnough(nNpcId,nItemId) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(tIntegralTimePanicBuying_Buy[nNpcId][nItemId]["Space"]) then
		local sBagFull = string.format(tIntegralTimePanicBuying_Text["BagFullWhenBuy"],tIntegralTimePanicBuying_Buy[nNpcId][nItemId]["Space"])
		Sys_MsgBox(sBagFull)
		return
	end
	
	-- 判断是否隔天，隔天则掩码加1，用于记录本日是否参与抢购
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_AddStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	
	-- 全服购买数 + 1
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos) + 1
	Sys_SetSynaGlobalData(nGlobalId,nPos,nData)
	
	User_AddEMoney(-1*tIntegralTimePanicBuying_Buy[nNpcId][nItemId]["Price"],nUserId)
	-- 给奖励
	RewardTemplate_UseItemAndMsg(tIntegralTimePanicBuying_Buy[nNpcId][nItemId])
end


-- 清理全局动态码 - 全服物品限制位
function IntegralTimePanicBuying_LimitClear()
	local nGlobalId1 = tIntegralTimePanicBuying_Cont["GlobalId1"]
	local nGlobalId2 = tIntegralTimePanicBuying_Cont["GlobalId2"]
	local nGlobalId3 = tIntegralTimePanicBuying_Cont["GlobalId3"]
	if Get_SysDynaGlobalData4(nGlobalId1) == 1 then
		return
	end
	Sys_ResetAllSynaGlobalData(nGlobalId1)
	Sys_ResetAllSynaGlobalData(nGlobalId2)
	Sys_ResetAllSynaGlobalData(nGlobalId3)
	Sys_SetSynaGlobalData4(nGlobalId1,1)
end
	
-- 清理全局动态码 - 重置标记位
function IntegralTimePanicBuying_MarkClear()
	local nGlobalId = tIntegralTimePanicBuying_Cont["GlobalId1"]
	if Get_SysDynaGlobalData4(nGlobalId) == 0 then
		return
	end
	Sys_SetSynaGlobalData4(nGlobalId,0)
end

-- 物品使用
function IntegralTimePanicBuying_UseItem(nItemId,nIndex)
	local nEvent
	local nType

	-- 判断物品是否存在
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(tIntegralTimePanicBuying_Text["NoItem"])
		return
	end
	
	-- 判断背包空间
	if tIntegralTimePanicBuying_Award[nItemId]["Space"] ~= nil then
		if not User_CheckLeftSpace(tIntegralTimePanicBuying_Award[nItemId]["Space"]) then
			Sys_MsgBox(string.format(tIntegralTimePanicBuying_Text["BagFullWhenUse"],tIntegralTimePanicBuying_Award[nItemId]["Space"]))
			return
		end
	end

	-- 可选包
	if nIndex ~= nil then
		RewardTemplate_UseItemAndMsg(tIntegralTimePanicBuying_Award[nItemId][nIndex])
		return
	end
	
	-- 非可选包
	RewardTemplate_UseItemAndMsg(tIntegralTimePanicBuying_Award[nItemId])
end

-- 物品使用确认
function IntegralTimePanicBuying_UseConfirm(nItemId,nIndex)

	-- 判断物品是否存在
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(tIntegralTimePanicBuying_Text["NoItem"])
		return
	end
	
	-- 初始化对白
	local sItemName = tIntegralTimePanicBuying_Text[nItemId]["ItemName"][nIndex]
	tItem[nItemId]["Text211"] = string.format(tIntegralTimePanicBuying_Text[nItemId]["Text211"],sItemName)
	tItem[nItemId]["OptionFunc211"]=string.format("IntegralTimePanicBuying_UseItem</N>%d</N>%d",nItemId,nIndex)
	
	-- 打开对白
	LinkItemGossipFunc_New(nItemId,"2-1")
end

-- 是否售罄 是 返回true 否 返回false
function IntegralTimePanicBuying_IfSellOut(nNpcId,nItemId)
	local tGoods = tIntegralTimePanicBuying_Buy[nNpcId]
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
		
		
-------------------------------------NPC模板-------------------------------------
-- 【抢购】豪华礼包促销商
tNpcFace[4757] = 123
tNpcGossip[11360] = tNpcGossip[11360] or DefaultNpc:new{}
tNpcGossip[11360]["OptionHidden"] = 1
tNpcGossip[11360]["DialogueText"] =tIntegralTimePanicBuying_Text[11360]

-- 活动前
tNpcGossip[11360]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[11360]["ChkFunc1-1"] = function()
	local nIndex = IntegralTimePanicBuying_JudgeTime()
	if not (nIndex == 0) then
		return false
	else
		return true
	end
end
tNpcGossip[11360]["tOption1-1"] = {111}

-- 活动中 非购买时段
tNpcGossip[11360]["Text1-2"] = {121,122,123,124,125,126}
tNpcGossip[11360]["ChkFunc1-2"] = function()
	local nIndex = IntegralTimePanicBuying_JudgeTime()
	if not (nIndex > 0) then
		return false
	elseif not (nIndex <= 15) then
		return false
	else
		if (nIndex >= 10) then
			nIndex = nIndex - 10
		end
		tNpcGossip[11360]["Option122"] = string.format(tIntegralTimePanicBuying_Text[11360]["Option122"],tIntegralTimePanicBuying_Time["NextTime"][nIndex])
		return true
	end
end
tNpcGossip[11360]["tOption1-2"] = {121,122}
tNpcGossip[11360]["OptionPoint121"] = "2-1"

-- 抢购时段
tNpcGossip[11360]["Text1-3"] = {131,132,133,134,135,136,137,138,139,1310,1311,1312,1313,1314}
tNpcGossip[11360]["ChkFunc1-3"] = function()
	local nIndex = IntegralTimePanicBuying_JudgeTime()
	if not (nIndex > 20) or not (nIndex <= 34) then
		return false
	elseif IntegralTimePanicBuying_IfSellOut(11360) then
		return false
	else
		return true
	end
end
tNpcGossip[11360]["tOption1-3"] = {131,132,133,134}
tNpcGossip[11360]["OptionFunc131"] = "IntegralTimePanicBuying_BuyConfirm</N>11360</N>3303065"
tNpcGossip[11360]["OptionChkFunc131"] = function ()
	return not IntegralTimePanicBuying_IfSellOut(11360,3303065)
end
tNpcGossip[11360]["OptionFunc132"] = "IntegralTimePanicBuying_BuyConfirm</N>11360</N>3303067"
tNpcGossip[11360]["OptionChkFunc132"] = function ()
	return not IntegralTimePanicBuying_IfSellOut(11360,3303067)
end
tNpcGossip[11360]["OptionFunc133"] = "IntegralTimePanicBuying_BuyConfirm</N>11360</N>3303066"
tNpcGossip[11360]["OptionChkFunc133"] = function ()
	return not IntegralTimePanicBuying_IfSellOut(11360,3303066)
end
tNpcGossip[11360]["OptionFunc134"] = "IntegralTimePanicBuying_BuyConfirm</N>11360</N>3303068"
tNpcGossip[11360]["OptionChkFunc134"] = function ()
	return not IntegralTimePanicBuying_IfSellOut(11360,3303068)
end

-- 购买时段，商品全部售罄，非最后一次抢购
tNpcGossip[11360]["Text1-4"] = {141,142}
tNpcGossip[11360]["ChkFunc1-4"] = function()
	local nIndex = IntegralTimePanicBuying_JudgeTime()
	if not (nIndex > 20) or not (nIndex < 34) then
		return false
	elseif not IntegralTimePanicBuying_IfSellOut(11360) then
		return false
	else
		if nIndex >= 20 then
			nIndex = nIndex - 19
		else
			nIndex = nIndex - 9
		end
		tNpcGossip[11360]["Option142"] = string.format(tIntegralTimePanicBuying_Text[11360]["Option142"],tIntegralTimePanicBuying_Time["NextTime"][nIndex])
		return true
	end
end
tNpcGossip[11360]["tOption1-4"] = {141,142}
tNpcGossip[11360]["OptionPoint141"] = "2-1"

-- 购买时段，商品全部售罄，最后一次抢购
tNpcGossip[11360]["Text1-5"] = {151,152}
tNpcGossip[11360]["ChkFunc1-5"] = function()
	local nIndex = IntegralTimePanicBuying_JudgeTime()
	if not (nIndex == 34) then
		LinkNpcGossipFunc_New(11360,"1-6")
		return false
	elseif not IntegralTimePanicBuying_IfSellOut(11360) then
		LinkNpcGossipFunc_New(11360,"1-3")
		return false
	else
		return true
	end
end
tNpcGossip[11360]["tOption1-5"] = {151}

-- 活动后
tNpcGossip[11360]["Text1-6"] = {161,162}
tNpcGossip[11360]["ChkFunc1-6"] = function()
	local nIndex = IntegralTimePanicBuying_JudgeTime()
	if not (nIndex == 50) then
		return false
	else
		return true
	end
end
tNpcGossip[11360]["tOption1-6"] = {161}

-- 商品详情
tNpcGossip[11360]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111,2112,2113,2114}
tNpcGossip[11360]["tOption2-1"] = {211}

-- 点击时对应礼包售罄
tNpcGossip[11360]["Text2-2"] = {221,222}
tNpcGossip[11360]["ChkFunc2-2"] = function()
	local nIndex = IntegralTimePanicBuying_JudgeTime()
	if not (nIndex == 34) then
		tNpcGossip[11360]["Text222"] = tIntegralTimePanicBuying_Text[11360]["SellOut"]
		return true
	else
		tNpcGossip[11360]["Text222"] = tIntegralTimePanicBuying_Text[11360]["LastSellOut"]
		return true
	end
end
tNpcGossip[11360]["tOption2-2"] = {221}

-- 点击时抢购结束
tNpcGossip[11360]["Text2-3"] = {231,232}
tNpcGossip[11360]["ChkFunc2-3"] = function()
	local nIndex = IntegralTimePanicBuying_JudgeTime()
	if not (nIndex == 50) then
		tNpcGossip[11360]["Text232"] = tIntegralTimePanicBuying_Text[11360]["TimeOver"]
		return true
	else
		tNpcGossip[11360]["Text232"] = tIntegralTimePanicBuying_Text[11360]["LastTimeOver"]
		return true
	end
end
tNpcGossip[11360]["tOption2-3"] = {231}

-- 二次确认
tNpcGossip[11360]["Text3-1"] = {311,312}
tNpcGossip[11360]["tOption3-1"] = {311,312}
tNpcGossip[11360]["OptionPoint312"] = "1-3"

-- 天石不足
tNpcGossip[11360]["Text4-1"] = {411,412}
tNpcGossip[11360]["tOption4-1"] = {411}

--【抢购】奇珍异宝促销商
tNpcFace[4758] = 28
tNpcGossip[11361] = tNpcGossip[11361] or DefaultNpc:new{}
tNpcGossip[11361]["OptionHidden"] = 1
tNpcGossip[11361]["DialogueText"] =tIntegralTimePanicBuying_Text[11361]

-- 活动前
tNpcGossip[11361]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[11361]["ChkFunc1-1"] = function()
	local nIndex = IntegralTimePanicBuying_JudgeTime()
	if not (nIndex == 0) then
		return false
	else
		return true
	end
end
tNpcGossip[11361]["tOption1-1"] = {111}

-- 活动中 非购买时段
tNpcGossip[11361]["Text1-2"] = {121,122,123,124,125,126}
tNpcGossip[11361]["ChkFunc1-2"] = function()
	local nIndex = IntegralTimePanicBuying_JudgeTime()
	if not (nIndex > 0) then
		return false
	elseif not (nIndex <= 15) then
		return false
	else
		if nIndex >= 10 then
			nIndex = nIndex - 10
		end
		tNpcGossip[11361]["Option122"] = string.format(tIntegralTimePanicBuying_Text[11361]["Option122"],tIntegralTimePanicBuying_Time["NextTime"][nIndex])
		return true
	end
end
tNpcGossip[11361]["tOption1-2"] = {121,122}
tNpcGossip[11361]["OptionPoint121"] = "2-1"

-- 抢购时段
tNpcGossip[11361]["Text1-3"] = {131,132,133,134,135,136,137,138,139,1310,1311,1312}
tNpcGossip[11361]["ChkFunc1-3"] = function()
	local nIndex = IntegralTimePanicBuying_JudgeTime()
	if not (nIndex > 20) or not (nIndex <= 34) then
		return false
	elseif IntegralTimePanicBuying_IfSellOut(11361) then
		return false
	else
		return true
	end
end
tNpcGossip[11361]["tOption1-3"] = {131,132,133,134,135,136}
tNpcGossip[11361]["OptionFunc131"] = "IntegralTimePanicBuying_BuyConfirm</N>11361</N>730003"
tNpcGossip[11361]["OptionChkFunc131"] = function ()
	return not IntegralTimePanicBuying_IfSellOut(11361,730003)
end
tNpcGossip[11361]["OptionFunc132"] = "IntegralTimePanicBuying_BuyConfirm</N>11361</N>1088000"
tNpcGossip[11361]["OptionChkFunc132"] = function ()
	return not IntegralTimePanicBuying_IfSellOut(11361,1088000)
end
tNpcGossip[11361]["OptionFunc133"] = "IntegralTimePanicBuying_BuyConfirm</N>11361</N>3008200"
tNpcGossip[11361]["OptionChkFunc133"] = function ()
	return not IntegralTimePanicBuying_IfSellOut(11361,3008200)
end
tNpcGossip[11361]["OptionFunc134"] = "IntegralTimePanicBuying_BuyConfirm</N>11361</N>723694"
tNpcGossip[11361]["OptionChkFunc134"] = function ()
	return not IntegralTimePanicBuying_IfSellOut(11361,723694)
end
tNpcGossip[11361]["OptionFunc135"] = "IntegralTimePanicBuying_BuyConfirm</N>11361</N>700103"
tNpcGossip[11361]["OptionChkFunc135"] = function ()
	return not IntegralTimePanicBuying_IfSellOut(11361,700103)
end
tNpcGossip[11361]["OptionFunc136"] = "IntegralTimePanicBuying_BuyConfirm</N>11361</N>700123"
tNpcGossip[11361]["OptionChkFunc136"] = function ()
	return not IntegralTimePanicBuying_IfSellOut(11361,700123)
end

-- 购买时段，商品全部售罄，非最后一次抢购
tNpcGossip[11361]["Text1-4"] = {141,142}
tNpcGossip[11361]["ChkFunc1-4"] = function()
	local nIndex = IntegralTimePanicBuying_JudgeTime()
	if not (nIndex > 20) or not (nIndex < 34) then
		return false
	elseif not IntegralTimePanicBuying_IfSellOut(11361) then
		return false
	else
		if nIndex >= 20 then
			nIndex = nIndex - 19
		else
			nIndex = nIndex - 9
		end
		tNpcGossip[11361]["Option142"] = string.format(tIntegralTimePanicBuying_Text[11361]["Option142"],tIntegralTimePanicBuying_Time["NextTime"][nIndex])
		return true
	end
end
tNpcGossip[11361]["tOption1-4"] = {141,142}
tNpcGossip[11361]["OptionPoint141"] = "2-1"

-- 购买时段，商品全部售罄，最后一次抢购
tNpcGossip[11361]["Text1-5"] = {151,152}
tNpcGossip[11361]["ChkFunc1-5"] = function()
	local nIndex = IntegralTimePanicBuying_JudgeTime()
	if not (nIndex == 34) then
		return false
	elseif not IntegralTimePanicBuying_IfSellOut(11361) then
		return false
	else
		return true
	end
end
tNpcGossip[11361]["tOption1-5"] = {151}

-- 活动后
tNpcGossip[11361]["Text1-6"] = {161,162}
tNpcGossip[11361]["ChkFunc1-6"] = function()
	local nIndex = IntegralTimePanicBuying_JudgeTime()
	if not (nIndex == 50) then
		return false
	else
		return true
	end
end
tNpcGossip[11361]["tOption1-6"] = {161}

-- 商品详情
tNpcGossip[11361]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111,2112}
tNpcGossip[11361]["tOption2-1"] = {211}

-- 点击时对应礼包售罄
tNpcGossip[11361]["Text2-2"] = {221,222}
tNpcGossip[11361]["ChkFunc2-2"] = function()
	local nIndex = IntegralTimePanicBuying_JudgeTime()
	if not (nIndex == 34) then
		tNpcGossip[11361]["Text222"] = tIntegralTimePanicBuying_Text[11361]["SellOut"]
		return true
	else
		tNpcGossip[11361]["Text222"] = tIntegralTimePanicBuying_Text[11361]["LastSellOut"]
		return true
	end
end
tNpcGossip[11361]["tOption2-2"] = {221}

-- 点击时抢购结束
tNpcGossip[11361]["Text2-3"] = {231,232}
tNpcGossip[11361]["ChkFunc2-3"] = function()
	local nIndex = IntegralTimePanicBuying_JudgeTime()
	if not (nIndex == 50) then
		tNpcGossip[11361]["Text232"] = tIntegralTimePanicBuying_Text[11361]["TimeOver"]
		return true
	else
		tNpcGossip[11361]["Text232"] = tIntegralTimePanicBuying_Text[11361]["LastTimeOver"]
		return true
	end
end
tNpcGossip[11361]["tOption2-3"] = {231}

-- 二次确认
tNpcGossip[11361]["Text3-1"] = {311,312}
tNpcGossip[11361]["tOption3-1"] = {311,312}
tNpcGossip[11361]["OptionPoint312"] = "1-3"

-- 天石不足
tNpcGossip[11361]["Text4-1"] = {411,412}
tNpcGossip[11361]["tOption4-1"] = {411}

--【抢购】奢华外套促销商
tNpcFace[4759] = 159
tNpcGossip[11362] = tNpcGossip[11362] or DefaultNpc:new{}
tNpcGossip[11362]["OptionHidden"] = 1
tNpcGossip[11362]["DialogueText"] =tIntegralTimePanicBuying_Text[11362]

-- 活动前
tNpcGossip[11362]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[11362]["ChkFunc1-1"] = function()
	local nIndex = IntegralTimePanicBuying_JudgeTime()
	if (nIndex < 10) then
		return true
	elseif (nIndex > 20) and (nIndex < 30) then
		return true
	else
		return false
	end
end
tNpcGossip[11362]["tOption1-1"] = {111}

-- 活动中 非购买时段
tNpcGossip[11362]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[11362]["ChkFunc1-2"] = function()
	local nIndex = IntegralTimePanicBuying_JudgeTime()
	local nEvent = tIntegralTimePanicBuying_Stc[5]["EventType"]
	local nType = tIntegralTimePanicBuying_Stc[5]["TypeData"] 
	local nUserId = Get_UserId()
	if not (nIndex > 10) or not (nIndex <= 15) then
		return false
	else
		tNpcGossip[11362]["Option122"] = string.format(tIntegralTimePanicBuying_Text[11362]["Option122"],tIntegralTimePanicBuying_Time["NextTime"][nIndex-10])
		return true
	end
end
tNpcGossip[11362]["tOption1-2"] = {121,122}
tNpcGossip[11362]["OptionPoint121"] = "2-1"

-- 抢购时段
tNpcGossip[11362]["Text1-3"] = {131,132,133,134,135,136,137,138,139,1310}
tNpcGossip[11362]["ChkFunc1-3"] = function()
	local nIndex = IntegralTimePanicBuying_JudgeTime()
	local nEvent = tIntegralTimePanicBuying_Stc[5]["EventType"]
	local nType = tIntegralTimePanicBuying_Stc[5]["TypeData"] 
	local nUserId = Get_UserId()
	if not (nIndex > 20) or not (nIndex <= 34) then
		return false
	elseif not Task_ChkStcValue(nEvent,nType,">=",3,nUserId) then
		return false
	elseif IntegralTimePanicBuying_IfSellOut(11362) then
		return false
	else
		return true
	end
end
tNpcGossip[11362]["tOption1-3"] = {131,132,133,134}
tNpcGossip[11362]["OptionFunc131"] = "IntegralTimePanicBuying_BuyConfirm</N>11362</N>188495"
tNpcGossip[11362]["OptionChkFunc131"] = function ()
	return not IntegralTimePanicBuying_IfSellOut(11362,188495)
end
tNpcGossip[11362]["OptionFunc132"] = "IntegralTimePanicBuying_BuyConfirm</N>11362</N>193295"
tNpcGossip[11362]["OptionChkFunc132"] = function ()
	return not IntegralTimePanicBuying_IfSellOut(11362,193295)
end
tNpcGossip[11362]["OptionFunc133"] = "IntegralTimePanicBuying_BuyConfirm</N>11362</N>200500"
tNpcGossip[11362]["OptionChkFunc133"] = function ()
	return not IntegralTimePanicBuying_IfSellOut(11362,200500)
end
tNpcGossip[11362]["OptionFunc134"] = "IntegralTimePanicBuying_BuyConfirm</N>11362</N>200499"
tNpcGossip[11362]["OptionChkFunc134"] = function ()
	return not IntegralTimePanicBuying_IfSellOut(11362,200499)
end

-- 购买时段，商品全部售罄，非最后一次抢购
tNpcGossip[11362]["Text1-4"] = {141,142}
tNpcGossip[11362]["ChkFunc1-4"] = function()
	local nIndex = IntegralTimePanicBuying_JudgeTime()
	local nEvent = tIntegralTimePanicBuying_Stc[5]["EventType"]
	local nType = tIntegralTimePanicBuying_Stc[5]["TypeData"] 
	local nUserId = Get_UserId()
	if not (nIndex > 20) or not (nIndex < 34) then
		return false
	elseif not Task_ChkStcValue(nEvent,nType,">=",3,nUserId) then
		return false
	elseif not IntegralTimePanicBuying_IfSellOut(11362) then
		return false
	else
		if nIndex >= 20 then
			nIndex = nIndex - 19
		else
			nIndex = nIndex - 9
		end
		tNpcGossip[11362]["Option142"] = string.format(tIntegralTimePanicBuying_Text[11362]["Option142"],tIntegralTimePanicBuying_Time["NextTime"][nIndex])
		return true
	end
end
tNpcGossip[11362]["tOption1-4"] = {141,142}
tNpcGossip[11362]["OptionPoint141"] = "2-1"

-- 购买时段，商品全部售罄，最后一次抢购
tNpcGossip[11362]["Text1-5"] = {151,152}
tNpcGossip[11362]["ChkFunc1-5"] = function()
	local nIndex = IntegralTimePanicBuying_JudgeTime()
	local nEvent = tIntegralTimePanicBuying_Stc[5]["EventType"]
	local nType = tIntegralTimePanicBuying_Stc[5]["TypeData"] 
	local nUserId = Get_UserId()
	if not (nIndex == 34) then
		return false
	elseif not Task_ChkStcValue(nEvent,nType,">=",3,nUserId) then
		return false
	elseif not IntegralTimePanicBuying_IfSellOut(11362) then
		return false
	else
		return true
	end
end
tNpcGossip[11362]["tOption1-5"] = {151}

-- 活动后
tNpcGossip[11362]["Text1-6"] = {161,162}
tNpcGossip[11362]["ChkFunc1-6"] = function()
	local nIndex = IntegralTimePanicBuying_JudgeTime()
	if not (nIndex == 50) then
		return false
	else
		return true
	end
end
tNpcGossip[11362]["tOption1-6"] = {161}

-- 抢购时段 活动三天并非都有购买任意道具
tNpcGossip[11362]["Text1-7"] = {171,172}
tNpcGossip[11362]["ChkFunc1-7"] = function()
	local nIndex = IntegralTimePanicBuying_JudgeTime()
	local nEvent = tIntegralTimePanicBuying_Stc[5]["EventType"]
	local nType = tIntegralTimePanicBuying_Stc[5]["TypeData"] 
	local nUserId = Get_UserId()
	if not (nIndex > 20) or not (nIndex <= 34) then
		return false
	elseif Task_ChkStcValue(nEvent,nType,">=",3,nUserId) then
		return false
	else
		return true
	end
end
tNpcGossip[11362]["tOption1-7"] = {171,172}
tNpcGossip[11362]["OptionPoint171"] = "2-1"

-- 商品详情
tNpcGossip[11362]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110}
tNpcGossip[11362]["tOption2-1"] = {211}

-- 点击时对应礼包售罄
tNpcGossip[11362]["Text2-2"] = {221,222}
tNpcGossip[11362]["ChkFunc2-2"] = function()
	local nIndex = IntegralTimePanicBuying_JudgeTime()
	if not (nIndex == 24) then
		tNpcGossip[11362]["Text222"] = tIntegralTimePanicBuying_Text[11362]["SellOut"]
		return true
	else
		tNpcGossip[11362]["Text222"] = tIntegralTimePanicBuying_Text[11362]["LastSellOut"]
		return true
	end
end
tNpcGossip[11362]["tOption2-2"] = {221}

-- 点击时抢购结束
tNpcGossip[11362]["Text2-3"] = {231,232}
tNpcGossip[11362]["ChkFunc2-3"] = function()
	local nIndex = IntegralTimePanicBuying_JudgeTime()
	if not (nIndex == 50) then
		tNpcGossip[11362]["Text232"] = tIntegralTimePanicBuying_Text[11362]["TimeOver"]
		return true
	else
		tNpcGossip[11362]["Text232"] = tIntegralTimePanicBuying_Text[11362]["LastTimeOver"]
		return true
	end
end
tNpcGossip[11362]["tOption2-3"] = {231}

-- 二次确认
tNpcGossip[11362]["Text3-1"] = {311,312}
tNpcGossip[11362]["tOption3-1"] = {311,312}
tNpcGossip[11362]["OptionPoint312"] = "1-3"

-- 天石不足
tNpcGossip[11362]["Text4-1"] = {411,412}
tNpcGossip[11362]["tOption4-1"] = {411}

	
-----------------------------------物品模板---------------------------------
for i = 3303065,3303068 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemId,sItemName)
		IntegralTimePanicBuying_UseItem(nItemId)
	end	
end

-- 神品淬炼可选包
tItemFace[3303069] = 524
tItem[3303069] = tItem[3303069] or {}
tItem[3303069]["DialogueText"] =tIntegralTimePanicBuying_Text[3303069]
tItem[3303069]["Text1-1"] = {111}
tItem[3303069]["tOption1-1"] = {111,112,113}
tItem[3303069]["OptionFunc111"]="IntegralTimePanicBuying_UseConfirm</N>3303069</N>1"
tItem[3303069]["OptionFunc112"]="IntegralTimePanicBuying_UseConfirm</N>3303069</N>2"
tItem[3303069]["OptionFunc113"]="IntegralTimePanicBuying_UseConfirm</N>3303069</N>3"

-- 二次确认
tItem[3303069]["Text2-1"] = {211}
tItem[3303069]["tOption2-1"] = {211,212}
tItem[3303069]["OptionPoint212"] = "1-1"

-- 6阶神魂可选包
tItemFace[3303070] = 525
tItem[3303070] = tItem[3303070] or {}
tItem[3303070]["DialogueText"] =tIntegralTimePanicBuying_Text[3303070]
tItem[3303070]["Text1-1"] = {111}
tItem[3303070]["tOption1-1"] = {111,112,113}
tItem[3303070]["OptionFunc111"]="IntegralTimePanicBuying_UseConfirm</N>3303070</N>1"
tItem[3303070]["OptionFunc112"]="IntegralTimePanicBuying_UseConfirm</N>3303070</N>2"
tItem[3303070]["OptionFunc113"]="IntegralTimePanicBuying_UseConfirm</N>3303070</N>3"

-- 二次确认
tItem[3303070]["Text2-1"] = {211}
tItem[3303070]["tOption2-1"] = {211,212}
tItem[3303070]["OptionPoint212"] = "1-1"

-- 背包信头像
tItemFace[3303147] = 526

-- -----------------------------------系统自检---------------------------------
-- -- 10:00-10:20期间抢购限制清理
-- tOntimerMin_HM[1021] = tOntimerMin_HM[1021] or {}
-- table.insert(tOntimerMin_HM[1021],IntegralTimePanicBuying_LimitClear)
-- tOntimerMin_HM[1022] = tOntimerMin_HM[1022] or {}
-- table.insert(tOntimerMin_HM[1022],IntegralTimePanicBuying_LimitClear)
-- tOntimerMin_HM[1023] = tOntimerMin_HM[1023] or {}
-- table.insert(tOntimerMin_HM[1023],IntegralTimePanicBuying_LimitClear)
-- tOntimerMin_HM[1024] = tOntimerMin_HM[1024] or {}
-- table.insert(tOntimerMin_HM[1024],IntegralTimePanicBuying_MarkClear)
-- tOntimerMin_HM[1025] = tOntimerMin_HM[1025] or {}
-- table.insert(tOntimerMin_HM[1025],IntegralTimePanicBuying_MarkClear)
-- -- 14:00-14:20期间抢购限制清理
-- tOntimerMin_HM[1421] = tOntimerMin_HM[1421] or {}
-- table.insert(tOntimerMin_HM[1421],IntegralTimePanicBuying_LimitClear)
-- tOntimerMin_HM[1422] = tOntimerMin_HM[1422] or {}
-- table.insert(tOntimerMin_HM[1422],IntegralTimePanicBuying_LimitClear)
-- tOntimerMin_HM[1423] = tOntimerMin_HM[1423] or {}
-- table.insert(tOntimerMin_HM[1423],IntegralTimePanicBuying_LimitClear)
-- tOntimerMin_HM[1424] = tOntimerMin_HM[1424] or {}
-- table.insert(tOntimerMin_HM[1424],IntegralTimePanicBuying_MarkClear)
-- tOntimerMin_HM[1425] = tOntimerMin_HM[1425] or {}
-- table.insert(tOntimerMin_HM[1425],IntegralTimePanicBuying_MarkClear)
-- -- 18:00-18:20期间抢购限制清理
-- tOntimerMin_HM[1821] = tOntimerMin_HM[1821] or {}
-- table.insert(tOntimerMin_HM[1821],IntegralTimePanicBuying_LimitClear)
-- tOntimerMin_HM[1822] = tOntimerMin_HM[1822] or {}
-- table.insert(tOntimerMin_HM[1822],IntegralTimePanicBuying_LimitClear)
-- tOntimerMin_HM[1823] = tOntimerMin_HM[1823] or {}
-- table.insert(tOntimerMin_HM[1823],IntegralTimePanicBuying_LimitClear)
-- tOntimerMin_HM[1824] = tOntimerMin_HM[1824] or {}
-- table.insert(tOntimerMin_HM[1824],IntegralTimePanicBuying_MarkClear)
-- tOntimerMin_HM[1825] = tOntimerMin_HM[1825] or {}
-- table.insert(tOntimerMin_HM[1825],IntegralTimePanicBuying_MarkClear)
-- -- 22:00-22:20期间抢购限制清理
-- tOntimerMin_HM[2221] = tOntimerMin_HM[2221] or {}
-- table.insert(tOntimerMin_HM[2221],IntegralTimePanicBuying_LimitClear)
-- tOntimerMin_HM[2222] = tOntimerMin_HM[2222] or {}
-- table.insert(tOntimerMin_HM[2222],IntegralTimePanicBuying_LimitClear)
-- tOntimerMin_HM[2223] = tOntimerMin_HM[2223] or {}
-- table.insert(tOntimerMin_HM[2223],IntegralTimePanicBuying_LimitClear)
-- tOntimerMin_HM[2224] = tOntimerMin_HM[2224] or {}
-- table.insert(tOntimerMin_HM[2224],IntegralTimePanicBuying_MarkClear)
-- tOntimerMin_HM[2225] = tOntimerMin_HM[2225] or {}
-- table.insert(tOntimerMin_HM[2225],IntegralTimePanicBuying_MarkClear)