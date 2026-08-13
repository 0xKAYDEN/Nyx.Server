------------------------------------------------------------------------------------
--Name:		161209[英文征服][活动脚本]1月赠品大狂欢(1.12-1.25)
--Creator: 	兰瑞妹
--Created:	2016/12/13
------------------------------------------------------------------------------------

-- 命名前缀
-- January_GiftsBigCarnival_

-- #stc 掩码说明 
-- #stc(154,04) 背包信
-- #stc(154,05) 天石不能超过17000 ==17000上限
-- #stc(154,06) 三、赠品消耗品促销和四、赠品转盘合起来共可消费85000赠点天石
-- #stc(154,07) 轮盘抽奖上限每天20
-- #stc(154,08) 领取天石赠 ==1可领 ==2已领


-- 常量表
local tJanuary_GiftsBigCarnival_Count = {}
	-- 活动时间
	tJanuary_GiftsBigCarnival_Count["ActivityTime"] = "2017-01-12 00:00 2017-01-25 23:59"
	tJanuary_GiftsBigCarnival_Count["Length"] = 15
	
	-- 铁扇门特购金牌
	tJanuary_GiftsBigCarnival_Count["ShoppingId"] = 3301803
	
	-- 轮盘物品
	tJanuary_GiftsBigCarnival_Count["RouletteId"] = 3301804
	
	-- 轮盘ID
	tJanuary_GiftsBigCarnival_Count["TaskId"] = 3804
	-- 赠点数量
	tJanuary_GiftsBigCarnival_Count["Mono"] = 100
	
	-- 特殊购买id
	tJanuary_GiftsBigCarnival_Count["SpeId"] = 3003126
	
-- Log表
local tJanuary_GiftsBigCarnival_Log = {}
	-- 过期删除
	tJanuary_GiftsBigCarnival_Log["OverDue"] = "0,0,%d,1,12000604,2,0,0"

-- 物品所需要天石
local tJanuary_GiftsBigCarnival_EMomey = {}
	-- 1500天石赠礼包
	tJanuary_GiftsBigCarnival_EMomey[3301801] = 500
	-- 15000天石赠礼包
	tJanuary_GiftsBigCarnival_EMomey[3301802] = 5000

-- 赠品消耗品促销
local tJanuary_GiftsBigCarnival_EMomeyMono = {}
	-- 正常价格
	tJanuary_GiftsBigCarnival_EMomeyMono[1] = {}
	-- 赠品龙珠*1
	tJanuary_GiftsBigCarnival_EMomeyMono[1][1088000] = 160
	-- 赠品赤练石+3*1
	tJanuary_GiftsBigCarnival_EMomeyMono[1][730003] = 108
	-- 赠品小固化石*1
	tJanuary_GiftsBigCarnival_EMomeyMono[1][723694] = 595
	-- 气力值1000点
	tJanuary_GiftsBigCarnival_EMomeyMono[1][3200571] = 250
	-- 赠品金刚尖钻*1
	tJanuary_GiftsBigCarnival_EMomeyMono[1][1200005] = 2799
	-- 赠品明亮星陨石
	tJanuary_GiftsBigCarnival_EMomeyMono[1][3009001] = 99
	-- 修行值1000点
	tJanuary_GiftsBigCarnival_EMomeyMono[1][3300470] = 160
	-- 赠品强练丹*10
	tJanuary_GiftsBigCarnival_EMomeyMono[1][3004470] = 80
	-- 赠品大爆丹*10
	tJanuary_GiftsBigCarnival_EMomeyMono[1][3003126] = 330
	
	-- 新建铁扇福利价格
	tJanuary_GiftsBigCarnival_EMomeyMono[2] = {}
	-- 赠品龙珠*1
	tJanuary_GiftsBigCarnival_EMomeyMono[2][1088000] = 150
	-- 赠品赤练石+3*1
	tJanuary_GiftsBigCarnival_EMomeyMono[2][730003] = 100
	-- 赠品小固化石*1
	tJanuary_GiftsBigCarnival_EMomeyMono[2][723694] = 545
	-- 气力值1000点
	tJanuary_GiftsBigCarnival_EMomeyMono[2][3200571] = 230
	-- 赠品金刚尖钻*1
	tJanuary_GiftsBigCarnival_EMomeyMono[2][1200005] = 2499
	-- 赠品明亮星陨石
	tJanuary_GiftsBigCarnival_EMomeyMono[2][3009001] = 90
	-- 修行值1000点
	tJanuary_GiftsBigCarnival_EMomeyMono[2][3300470] = 150
	-- 赠品强练丹*10
	tJanuary_GiftsBigCarnival_EMomeyMono[2][3004470] = 70
	-- 赠品大爆丹*10
	tJanuary_GiftsBigCarnival_EMomeyMono[2][3003126] = 320
	
-- stc掩码
local tJanuary_GiftsBigCarnival_Stc = {}
	-- 天石不能超过17000 ==17000上限
	tJanuary_GiftsBigCarnival_Stc[1] = {}
	tJanuary_GiftsBigCarnival_Stc[1]["EventType"] = 154
	tJanuary_GiftsBigCarnival_Stc[1]["DataType"] = 05
	tJanuary_GiftsBigCarnival_Stc[1]["Limit"] = 17000
	-- 三、赠品消耗品促销和四、赠品转盘合起来共可消费85000赠点天石
	tJanuary_GiftsBigCarnival_Stc[2] = {}
	tJanuary_GiftsBigCarnival_Stc[2]["EventType"] = 154
	tJanuary_GiftsBigCarnival_Stc[2]["DataType"] = 06
	tJanuary_GiftsBigCarnival_Stc[2]["Limit"] = 85000
	-- 轮盘抽奖上限每天20
	tJanuary_GiftsBigCarnival_Stc[3] = {}
	tJanuary_GiftsBigCarnival_Stc[3]["EventType"] = 154
	tJanuary_GiftsBigCarnival_Stc[3]["DataType"] = 07
	tJanuary_GiftsBigCarnival_Stc[3]["Limit"] = 20
	-- 领取天石赠 ==1可领 ==2已领
	tJanuary_GiftsBigCarnival_Stc[4] = {}
	tJanuary_GiftsBigCarnival_Stc[4]["EventType"] = 154
	tJanuary_GiftsBigCarnival_Stc[4]["DataType"] = 08
	tJanuary_GiftsBigCarnival_Stc[4]["Limit"] = 2
	
-- 奖励表
local tJanuary_GiftsBigCarnival_Reward = {}
	-- 免费领1000赠点
	tJanuary_GiftsBigCarnival_Reward[1] = {}
	tJanuary_GiftsBigCarnival_Reward[1]["Log"] = "0,0,0,0,12000604,2,3,1000"
	tJanuary_GiftsBigCarnival_Reward[1]["RewardNoNeedTip"] = 1
	tJanuary_GiftsBigCarnival_Reward[1]["RewardEMoneyMono"] = {}
	tJanuary_GiftsBigCarnival_Reward[1]["RewardEMoneyMono"]["Value"] = 1000
	tJanuary_GiftsBigCarnival_Reward[1]["RewardEffect"] = {}
	tJanuary_GiftsBigCarnival_Reward[1]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 换购2500天石（赠）。（500天石）
	tJanuary_GiftsBigCarnival_Reward[3301801] = {}
	tJanuary_GiftsBigCarnival_Reward[3301801]["Log"] = "500,0,0,0,12000604,2,3301801,1"
	tJanuary_GiftsBigCarnival_Reward[3301801]["EmoneyLog"] = "350	20234	500	500	1	"
	tJanuary_GiftsBigCarnival_Reward[3301801]["RewardItem"] = {}
	tJanuary_GiftsBigCarnival_Reward[3301801]["RewardItem"][1] = {}
	tJanuary_GiftsBigCarnival_Reward[3301801]["RewardItem"][1]["Id"] = 3301801
	tJanuary_GiftsBigCarnival_Reward[3301801]["RewardItem"][1]["Attr"] = "0 1"
	tJanuary_GiftsBigCarnival_Reward[3301801]["RewardEffect"] = {}
	tJanuary_GiftsBigCarnival_Reward[3301801]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 换购25000天石（赠）。（5000天石）
	tJanuary_GiftsBigCarnival_Reward[3301802] = {}
	tJanuary_GiftsBigCarnival_Reward[3301802]["Log"] = "5000,0,0,0,12000604,2,3301802,1"
	tJanuary_GiftsBigCarnival_Reward[3301802]["EmoneyLog"] = "350	20235	5000	5000	1	"
	tJanuary_GiftsBigCarnival_Reward[3301802]["RewardItem"] = {}
	tJanuary_GiftsBigCarnival_Reward[3301802]["RewardItem"][1] = {}
	tJanuary_GiftsBigCarnival_Reward[3301802]["RewardItem"][1]["Id"] = 3301802
	tJanuary_GiftsBigCarnival_Reward[3301802]["RewardItem"][1]["Attr"] = "0 1"
	tJanuary_GiftsBigCarnival_Reward[3301802]["RewardEffect"] = {}
	tJanuary_GiftsBigCarnival_Reward[3301802]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 赠品龙珠*1
	tJanuary_GiftsBigCarnival_Reward[1088000] = {}
	tJanuary_GiftsBigCarnival_Reward[1088000]["Log"] = "0,%d,0,0,12000604,2,1088000,%d"
	tJanuary_GiftsBigCarnival_Reward[1088000]["EmoneyLog"] = "350	20424	0	0	%d	"
	tJanuary_GiftsBigCarnival_Reward[1088000]["RewardNoNeedTip"] = 1
	tJanuary_GiftsBigCarnival_Reward[1088000]["RewardItem"] = {}
	tJanuary_GiftsBigCarnival_Reward[1088000]["RewardItem"][1] = {}
	tJanuary_GiftsBigCarnival_Reward[1088000]["RewardItem"][1]["Id"] = 1088000
	tJanuary_GiftsBigCarnival_Reward[1088000]["RewardItem"][1]["Attr"] = "0 %d 3"
	tJanuary_GiftsBigCarnival_Reward[1088000]["RewardEffect"] = {}
	tJanuary_GiftsBigCarnival_Reward[1088000]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品赤练石+3*1
	tJanuary_GiftsBigCarnival_Reward[730003] = {}
	tJanuary_GiftsBigCarnival_Reward[730003]["Log"] = "0,%d,0,0,12000604,2,730003,%d"
	tJanuary_GiftsBigCarnival_Reward[730003]["EmoneyLog"] = "350	20425	0	0	%d	"
	tJanuary_GiftsBigCarnival_Reward[730003]["RewardNoNeedTip"] = 1
	tJanuary_GiftsBigCarnival_Reward[730003]["RewardItem"] = {}
	tJanuary_GiftsBigCarnival_Reward[730003]["RewardItem"][1] = {}
	tJanuary_GiftsBigCarnival_Reward[730003]["RewardItem"][1]["Id"] = 730003
	tJanuary_GiftsBigCarnival_Reward[730003]["RewardItem"][1]["Attr"] = "0 %d 3"
	tJanuary_GiftsBigCarnival_Reward[730003]["RewardEffect"] = {}
	tJanuary_GiftsBigCarnival_Reward[730003]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品小固化石*1
	tJanuary_GiftsBigCarnival_Reward[723694] = {}
	tJanuary_GiftsBigCarnival_Reward[723694]["Log"] = "0,%d,0,0,12000604,2,723694,%d"
	tJanuary_GiftsBigCarnival_Reward[723694]["EmoneyLog"] = "350	20426	0	0	%d	"
	tJanuary_GiftsBigCarnival_Reward[723694]["RewardNoNeedTip"] = 1
	tJanuary_GiftsBigCarnival_Reward[723694]["RewardItem"] = {}
	tJanuary_GiftsBigCarnival_Reward[723694]["RewardItem"][1] = {}
	tJanuary_GiftsBigCarnival_Reward[723694]["RewardItem"][1]["Id"] = 723694
	tJanuary_GiftsBigCarnival_Reward[723694]["RewardItem"][1]["Attr"] = "0 %d 3"
	tJanuary_GiftsBigCarnival_Reward[723694]["RewardEffect"] = {}
	tJanuary_GiftsBigCarnival_Reward[723694]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值1000点
	tJanuary_GiftsBigCarnival_Reward[3200571] = {}
	tJanuary_GiftsBigCarnival_Reward[3200571]["Log"] = "0,%d,0,0,12000604,2,3200571,%d"
	tJanuary_GiftsBigCarnival_Reward[3200571]["EmoneyLog"] = "350	20427	0	0	%d	"
	tJanuary_GiftsBigCarnival_Reward[3200571]["RewardNoNeedTip"] = 1
	tJanuary_GiftsBigCarnival_Reward[3200571]["RewardItem"] = {}
	tJanuary_GiftsBigCarnival_Reward[3200571]["RewardItem"][1] = {}
	tJanuary_GiftsBigCarnival_Reward[3200571]["RewardItem"][1]["Id"] = 3200571
	tJanuary_GiftsBigCarnival_Reward[3200571]["RewardItem"][1]["Attr"] = "0 %d"
	tJanuary_GiftsBigCarnival_Reward[3200571]["RewardEffect"] = {}
	tJanuary_GiftsBigCarnival_Reward[3200571]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品金刚尖钻*1
	tJanuary_GiftsBigCarnival_Reward[1200005] = {}
	tJanuary_GiftsBigCarnival_Reward[1200005]["Log"] = "0,%d,0,0,12000604,2,1200005,%d"
	tJanuary_GiftsBigCarnival_Reward[1200005]["EmoneyLog"] = "350	20428	0	0	%d	"
	tJanuary_GiftsBigCarnival_Reward[1200005]["RewardNoNeedTip"] = 1
	tJanuary_GiftsBigCarnival_Reward[1200005]["RewardItem"] = {}
	tJanuary_GiftsBigCarnival_Reward[1200005]["RewardItem"][1] = {}
	tJanuary_GiftsBigCarnival_Reward[1200005]["RewardItem"][1]["Id"] = 1200005
	tJanuary_GiftsBigCarnival_Reward[1200005]["RewardItem"][1]["Attr"] = "0 %d 3"
	tJanuary_GiftsBigCarnival_Reward[1200005]["RewardEffect"] = {}
	tJanuary_GiftsBigCarnival_Reward[1200005]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品明亮星陨石
	tJanuary_GiftsBigCarnival_Reward[3009001] = {}
	tJanuary_GiftsBigCarnival_Reward[3009001]["Log"] = "0,%d,0,0,12000604,2,3009001,%d"
	tJanuary_GiftsBigCarnival_Reward[3009001]["EmoneyLog"] = "350	20429	0	0	%d	"
	tJanuary_GiftsBigCarnival_Reward[3009001]["RewardNoNeedTip"] = 1
	tJanuary_GiftsBigCarnival_Reward[3009001]["RewardItem"] = {}
	tJanuary_GiftsBigCarnival_Reward[3009001]["RewardItem"][1] = {}
	tJanuary_GiftsBigCarnival_Reward[3009001]["RewardItem"][1]["Id"] = 3009001
	tJanuary_GiftsBigCarnival_Reward[3009001]["RewardItem"][1]["Attr"] = "0 %d 0 2880 1"
	tJanuary_GiftsBigCarnival_Reward[3009001]["RewardEffect"] = {}
	tJanuary_GiftsBigCarnival_Reward[3009001]["RewardEffect"]["Effect"] = "angelwing"
	-- 修行值1000点
	tJanuary_GiftsBigCarnival_Reward[3300470] = {}
	tJanuary_GiftsBigCarnival_Reward[3300470]["Log"] = "0,%d,0,0,12000604,2,3300470,%d"
	tJanuary_GiftsBigCarnival_Reward[3300470]["EmoneyLog"] = "350	20430	0	0	%d	"
	tJanuary_GiftsBigCarnival_Reward[3300470]["RewardNoNeedTip"] = 1
	tJanuary_GiftsBigCarnival_Reward[3300470]["RewardItem"] = {}
	tJanuary_GiftsBigCarnival_Reward[3300470]["RewardItem"][1] = {}
	tJanuary_GiftsBigCarnival_Reward[3300470]["RewardItem"][1]["Id"] = 3300470
	tJanuary_GiftsBigCarnival_Reward[3300470]["RewardItem"][1]["Attr"] = "0 %d"
	tJanuary_GiftsBigCarnival_Reward[3300470]["RewardEffect"] = {}
	tJanuary_GiftsBigCarnival_Reward[3300470]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品强练丹*10
	tJanuary_GiftsBigCarnival_Reward[3004470] = {}
	tJanuary_GiftsBigCarnival_Reward[3004470]["Log"] = "0,%d,0,0,12000604,2,3004470,%d"
	tJanuary_GiftsBigCarnival_Reward[3004470]["EmoneyLog"] = "350	20431	0	0	%d	"
	tJanuary_GiftsBigCarnival_Reward[3004470]["RewardNoNeedTip"] = 1
	tJanuary_GiftsBigCarnival_Reward[3004470]["RewardItem"] = {}
	tJanuary_GiftsBigCarnival_Reward[3004470]["RewardItem"][1] = {}
	tJanuary_GiftsBigCarnival_Reward[3004470]["RewardItem"][1]["Id"] = 3004470
	tJanuary_GiftsBigCarnival_Reward[3004470]["RewardItem"][1]["Attr"] = "0 %d"
	tJanuary_GiftsBigCarnival_Reward[3004470]["RewardEffect"] = {}
	tJanuary_GiftsBigCarnival_Reward[3004470]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品大爆丹*10
	tJanuary_GiftsBigCarnival_Reward[3003126] = {}
	tJanuary_GiftsBigCarnival_Reward[3003126]["Log"] = "0,%d,0,0,12000604,2,3003126,%d"
	tJanuary_GiftsBigCarnival_Reward[3003126]["EmoneyLog"] = "350	20432	0	0	%d	"
	tJanuary_GiftsBigCarnival_Reward[3003126]["RewardNoNeedTip"] = 1
	tJanuary_GiftsBigCarnival_Reward[3003126]["RewardItem"] = {}
	tJanuary_GiftsBigCarnival_Reward[3003126]["RewardItem"][1] = {}
	tJanuary_GiftsBigCarnival_Reward[3003126]["RewardItem"][1]["Id"] = 3003126
	tJanuary_GiftsBigCarnival_Reward[3003126]["RewardItem"][1]["Attr"] = "0 %d 3"
	tJanuary_GiftsBigCarnival_Reward[3003126]["RewardEffect"] = {}
	tJanuary_GiftsBigCarnival_Reward[3003126]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 百宝大轮盘
	tJanuary_GiftsBigCarnival_Reward[3301804] = {}
	tJanuary_GiftsBigCarnival_Reward[3301804]["Log"] = "0,0,0,0,12000604,2,3301804,1"
	-- tJanuary_GiftsBigCarnival_Reward[3301804]["EmoneyLog"] = "350	20433	0	0	1	"
	tJanuary_GiftsBigCarnival_Reward[3301804]["RewardNoNeedTip"] = 1
	tJanuary_GiftsBigCarnival_Reward[3301804]["RewardItem"] = {}
	tJanuary_GiftsBigCarnival_Reward[3301804]["RewardItem"][1] = {}
	tJanuary_GiftsBigCarnival_Reward[3301804]["RewardItem"][1]["Id"] = 3301804
	tJanuary_GiftsBigCarnival_Reward[3301804]["RewardItem"][1]["Attr"] = "0 1"
	tJanuary_GiftsBigCarnival_Reward[3301804]["RewardEffect"] = {}
	tJanuary_GiftsBigCarnival_Reward[3301804]["RewardEffect"]["Effect"] = "angelwing"
	
-- 物品打开部分
local tJanuary_GiftsBigCarnival_OpenItem = {}
	-- 2500天石赠礼包
	tJanuary_GiftsBigCarnival_OpenItem[3301801] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301801]["Log"] = "0,0,3301801,1,12000604,2,3,2500"
	tJanuary_GiftsBigCarnival_OpenItem[3301801]["DeleteItem"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301801]["DeleteItem"][1] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301801]["DeleteItem"][1]["Id"] = 3301801
	tJanuary_GiftsBigCarnival_OpenItem[3301801]["RewardEMoneyMono"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301801]["RewardEMoneyMono"]["Value"] = 2500
	tJanuary_GiftsBigCarnival_OpenItem[3301801]["RewardEffect"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301801]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 25000天石赠礼包
	tJanuary_GiftsBigCarnival_OpenItem[3301802] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301802]["Log"] = "0,0,3301802,1,12000604,2,3,25000"
	tJanuary_GiftsBigCarnival_OpenItem[3301802]["DeleteItem"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301802]["DeleteItem"][1] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301802]["DeleteItem"][1]["Id"] = 3301802
	tJanuary_GiftsBigCarnival_OpenItem[3301802]["RewardEMoneyMono"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301802]["RewardEMoneyMono"]["Value"] = 25000
	tJanuary_GiftsBigCarnival_OpenItem[3301802]["RewardEffect"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301802]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 50天石（赠）礼包
	tJanuary_GiftsBigCarnival_OpenItem[3301805] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301805]["Log"] = "0,0,3301805,1,12000604,2,3,50"
	tJanuary_GiftsBigCarnival_OpenItem[3301805]["EmoneyLog"] = "350	20434	0	0	50	"
	tJanuary_GiftsBigCarnival_OpenItem[3301805]["DeleteItem"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301805]["DeleteItem"][1] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301805]["DeleteItem"][1]["Id"] = 3301805
	tJanuary_GiftsBigCarnival_OpenItem[3301805]["RewardEMoneyMono"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301805]["RewardEMoneyMono"]["Value"] = 50
	tJanuary_GiftsBigCarnival_OpenItem[3301805]["RewardEffect"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301805]["RewardEffect"]["Effect"] = "angelwing"
	-- 500天石（赠）礼包
	tJanuary_GiftsBigCarnival_OpenItem[3301806] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301806]["Log"] = "0,0,3301806,1,12000604,2,3,500"
	tJanuary_GiftsBigCarnival_OpenItem[3301806]["EmoneyLog"] = "350	20439	0	0	500	"
	tJanuary_GiftsBigCarnival_OpenItem[3301806]["DeleteItem"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301806]["DeleteItem"][1] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301806]["DeleteItem"][1]["Id"] = 3301806
	tJanuary_GiftsBigCarnival_OpenItem[3301806]["RewardEMoneyMono"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301806]["RewardEMoneyMono"]["Value"] = 500
	tJanuary_GiftsBigCarnival_OpenItem[3301806]["RewardEffect"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301806]["RewardEffect"]["Effect"] = "angelwing"
	-- +3赤炼石（赠）礼包
	tJanuary_GiftsBigCarnival_OpenItem[3301807] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301807]["Log"] = "0,0,3301806,1,12000604,2,730003,1"
	tJanuary_GiftsBigCarnival_OpenItem[3301807]["EmoneyLog"] = "350	20435	0	0	1	"
	tJanuary_GiftsBigCarnival_OpenItem[3301807]["DeleteItem"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301807]["DeleteItem"][1] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301807]["DeleteItem"][1]["Id"] = 3301807
	tJanuary_GiftsBigCarnival_OpenItem[3301807]["RewardItem"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301807]["RewardItem"][1] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301807]["RewardItem"][1]["Id"] = 730003
	tJanuary_GiftsBigCarnival_OpenItem[3301807]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanuary_GiftsBigCarnival_OpenItem[3301807]["RewardEffect"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301807]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙珠（赠）礼包
	tJanuary_GiftsBigCarnival_OpenItem[3301808] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301808]["Log"] = "0,0,3301808,1,12000604,2,1088000,1"
	tJanuary_GiftsBigCarnival_OpenItem[3301808]["EmoneyLog"] = "350	20436	0	0	1	"
	tJanuary_GiftsBigCarnival_OpenItem[3301808]["DeleteItem"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301808]["DeleteItem"][1] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301808]["DeleteItem"][1]["Id"] = 3301808
	tJanuary_GiftsBigCarnival_OpenItem[3301808]["RewardItem"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301808]["RewardItem"][1] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301808]["RewardItem"][1]["Id"] = 1088000
	tJanuary_GiftsBigCarnival_OpenItem[3301808]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanuary_GiftsBigCarnival_OpenItem[3301808]["RewardEffect"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301808]["RewardEffect"]["Effect"] = "angelwing"
	-- 固化石（赠）礼包
	tJanuary_GiftsBigCarnival_OpenItem[3301809] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301809]["Log"] = "0,0,3301809,1,12000604,2,723694,1"
	tJanuary_GiftsBigCarnival_OpenItem[3301809]["EmoneyLog"] = "350	20438	0	0	1	"
	tJanuary_GiftsBigCarnival_OpenItem[3301809]["DeleteItem"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301809]["DeleteItem"][1] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301809]["DeleteItem"][1]["Id"] = 3301809
	tJanuary_GiftsBigCarnival_OpenItem[3301809]["RewardItem"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301809]["RewardItem"][1] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301809]["RewardItem"][1]["Id"] = 723694
	tJanuary_GiftsBigCarnival_OpenItem[3301809]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanuary_GiftsBigCarnival_OpenItem[3301809]["RewardEffect"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301809]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000点气力值礼包
	tJanuary_GiftsBigCarnival_OpenItem[3301810] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301810]["Log"] = "0,0,3301810,1,12000604,2,12,1000"
	tJanuary_GiftsBigCarnival_OpenItem[3301810]["EmoneyLog"] = "350	20437	0	0	1	"
	tJanuary_GiftsBigCarnival_OpenItem[3301810]["DeleteItem"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301810]["DeleteItem"][1] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301810]["DeleteItem"][1]["Id"] = 3301810
	tJanuary_GiftsBigCarnival_OpenItem[3301810]["RewardStrengthValue"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301810]["RewardStrengthValue"]["Value"] = 1000
	tJanuary_GiftsBigCarnival_OpenItem[3301810]["RewardEffect"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301810]["RewardEffect"]["Effect"] = "angelwing"
	-- 金钢坚钻（赠）礼包
	tJanuary_GiftsBigCarnival_OpenItem[3301811] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301811]["Log"] = "0,0,3301811,1,12000604,2,1200005,1"
	tJanuary_GiftsBigCarnival_OpenItem[3301811]["EmoneyLog"] = "350	20440	0	0	1	"
	tJanuary_GiftsBigCarnival_OpenItem[3301811]["DeleteItem"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301811]["DeleteItem"][1] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301811]["DeleteItem"][1]["Id"] = 3301811
	tJanuary_GiftsBigCarnival_OpenItem[3301811]["RewardItem"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301811]["RewardItem"][1] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301811]["RewardItem"][1]["Id"] = 1200005
	tJanuary_GiftsBigCarnival_OpenItem[3301811]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanuary_GiftsBigCarnival_OpenItem[3301811]["RewardEffect"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301811]["RewardEffect"]["Effect"] = "angelwing"
	-- +6赤炼石（赠）礼包
	tJanuary_GiftsBigCarnival_OpenItem[3301812] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301812]["Log"] = "0,0,3301812,1,12000604,2,730006,1"
	tJanuary_GiftsBigCarnival_OpenItem[3301812]["EmoneyLog"] = "350	20441	0	0	1	"
	tJanuary_GiftsBigCarnival_OpenItem[3301812]["DeleteItem"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301812]["DeleteItem"][1] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301812]["DeleteItem"][1]["Id"] = 3301812
	tJanuary_GiftsBigCarnival_OpenItem[3301812]["RewardItem"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301812]["RewardItem"][1] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301812]["RewardItem"][1]["Id"] = 730006
	tJanuary_GiftsBigCarnival_OpenItem[3301812]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanuary_GiftsBigCarnival_OpenItem[3301812]["RewardEffect"] = {}
	tJanuary_GiftsBigCarnival_OpenItem[3301812]["RewardEffect"]["Effect"] = "angelwing"
	
-- 特购金牌寻路
local tJanuary_GiftsBigCarnival_FindWay = {}
	tJanuary_GiftsBigCarnival_FindWay[3301803] = {}
	tJanuary_GiftsBigCarnival_FindWay[3301803]["PosX"] = 340
	tJanuary_GiftsBigCarnival_FindWay[3301803]["PosY"] = 248
	tJanuary_GiftsBigCarnival_FindWay[3301803]["MapId"] = 1002
	tJanuary_GiftsBigCarnival_FindWay[3301803]["NpcId"] = 20174

--------------------------------------逻辑部分-------------------------------------------
-- 获取掩码值
function January_GiftsBigCarnival_GetStcValue(nIndex)
	local nEvent = tJanuary_GiftsBigCarnival_Stc[nIndex]["EventType"]
	local nType = tJanuary_GiftsBigCarnival_Stc[nIndex]["DataType"]
	
	local nData = Get_UserStatisticValue(nEvent,nType)
	return nData
end

--设置掩码值
function January_GiftsBigCarnival_SetStcValue(nIndex,nType,nData)
	local nEvent = tJanuary_GiftsBigCarnival_Stc[nIndex]["EventType"]
	local nType = tJanuary_GiftsBigCarnival_Stc[nIndex]["DataType"]
	
	if nType == 1 then
		Task_SetStatistic(nEvent,nType,nData,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	else
		Task_AddStatistic(nEvent,nType,nData,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
end

---------------------------------------------------20173
-- 我要领取500赠点
function January_GiftsBigCarnival_FreeReceiveMono(nNpcId)
		if not Sys_ChkFullTime(tJanuary_GiftsBigCarnival_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nData =  January_GiftsBigCarnival_GetStcValue(4)
	
	-- 未参与换购
	if nData < 1 then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	-- 已换购
	if nData >= 2 then
		return
	end
	
	-- 天石赠已满
	local nEmoney = Get_UserMonoEMoney()
	local nAddEmoney = tJanuary_GiftsBigCarnival_Reward[1]["RewardEMoneyMono"]["Value"]
	if nEmoney + nAddEmoney > G_User_MaxEmoneyMono then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	-- 置掩码给奖励
	local nData = January_GiftsBigCarnival_SetStcValue(4,1,2)
	RewardTemplate_UseItem(tJanuary_GiftsBigCarnival_Reward[1])
	User_TalkChannel2005(tJanuary_GiftsBigCarnival_Text[nNpcId]["RewardMono"])
end

function January_GiftsBigCarnival_ExchangeChk(nNpcId,nItemId)
	-- 已超过可换购额度
	local nLimit = tJanuary_GiftsBigCarnival_Stc[1]["Limit"]
	
	local nData = January_GiftsBigCarnival_GetStcValue(1)
	local nEMoney = tJanuary_GiftsBigCarnival_EMomey[nItemId]
	
	--换购额度不足
	if nData+nEMoney > nLimit then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return false
	end
	
	-- 天石不足
	local nUserEMoney = Get_UserEMoney()
	if nUserEMoney < nEMoney then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return false
	end
	
	-- 背包空间不足
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tJanuary_GiftsBigCarnival_Text[nNpcId]["NoSpace"])
		return false
	end
	
	return true
end

-- 换购
function January_GiftsBigCarnival_ExchangeMono(nNpcId,nItemId)
	if not Sys_ChkFullTime(tJanuary_GiftsBigCarnival_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 各种条件判断
	if not January_GiftsBigCarnival_ExchangeChk(nNpcId,nItemId) then
		return
	end
	
	local nEMoney = tJanuary_GiftsBigCarnival_EMomey[nItemId]
	-- 二次确认
	local sText = tJanuary_GiftsBigCarnival_Text[nNpcId]["Text211"]
	tNpcGossip[nNpcId]["Text211"] = string.format(sText,nEMoney,nEMoney*5)
	local sOption = tJanuary_GiftsBigCarnival_Text[nNpcId]["Option6"]
	tNpcGossip[nNpcId]["Option6"] = string.format(sOption,nEMoney)
	tNpcGossip[nNpcId]["OptionFunc6"] = "January_GiftsBigCarnival_SureExchange</N>20173</N>"..nItemId
	
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

-- 确认换取天石赠
function January_GiftsBigCarnival_SureExchange(nNpcId,nItemId)
	if not Sys_ChkFullTime(tJanuary_GiftsBigCarnival_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 各种条件判断
	if not January_GiftsBigCarnival_ExchangeChk(nNpcId,nItemId) then
		return
	end
	
	local nEMoney = tJanuary_GiftsBigCarnival_EMomey[nItemId]
	if not User_AddEMoney(-nEMoney) then
		return
	end
	
	-- 置掩码
	January_GiftsBigCarnival_SetStcValue(1,2,nEMoney)
	-- 换购可获500赠点资格
	local nMonoData = January_GiftsBigCarnival_GetStcValue(4)
	if nMonoData == 0 then
		January_GiftsBigCarnival_SetStcValue(4,1,1)
	end
	
	-- 给奖励
	RewardTemplate_UseItem(tJanuary_GiftsBigCarnival_Reward[nItemId])
end

---------------------------------------------------20174
-- 检测
function January_GiftsBigCarnival_BuyItemChk(nNpcId,nItemId,nNumber)
	-- 已超过可换购额度
	local nLimit = tJanuary_GiftsBigCarnival_Stc[2]["Limit"]
	local nData = January_GiftsBigCarnival_GetStcValue(2)
	
	-- 判断铁扇门
	local nIndex = January_GiftsBigCarnival_BuyPermissions()
	
	-- 需要赠点
	local nEMoneyMono = tJanuary_GiftsBigCarnival_EMomeyMono[nIndex][nItemId]*nNumber
	
	local sItemName = tJanuary_GiftsBigCarnival_Text[nNpcId]["ItemName"][nItemId]
	if nData+nEMoneyMono > nLimit then
		local sText = tJanuary_GiftsBigCarnival_Text[nNpcId]["Text241"]
		tNpcGossip[nNpcId]["Text241"] = string.format(sText,sItemName)
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return false
	end
	
	-- 天石不足
	local nUserEMoneyMono = Get_UserMonoEMoney()
	if nUserEMoneyMono < nEMoneyMono then
		local sText = tJanuary_GiftsBigCarnival_Text[nNpcId]["Text231"]
		tNpcGossip[nNpcId]["Text231"] = string.format(sText,sItemName)
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return false
	end
	
	-- 背包空间不足
	local nChkNum = nNumber
	if nItemId == tJanuary_GiftsBigCarnival_Count["SpeId"] then
		nChkNum = math.ceil(nNumber/10)
	end
	if not User_CheckLeftSpace(nChkNum) then
		local sNoSpace = tJanuary_GiftsBigCarnival_Text[nNpcId]["NoSpace"]
		Sys_MsgBox(string.format(sNoSpace,nChkNum))
		return false
	end
	
	return true
end

-- 判断铁扇门新玩家
function January_GiftsBigCarnival_BuyPermissions()
	local nSpeItemId = tJanuary_GiftsBigCarnival_Count["ShoppingId"]
	local nIndex = 1
	if Item_ChkItem(nSpeItemId) then
		nIndex = 2
	end
	return nIndex
end

-- 购买物品
function January_GiftsBigCarnival_BuyItem(nNpcId,nItemId)
	if not Sys_ChkFullTime(tJanuary_GiftsBigCarnival_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpc,"1-2")
		return
	end
	
	-- 判断铁扇门
	local nIndex = January_GiftsBigCarnival_BuyPermissions()

	-- 次级对白
	local nEMoney = tJanuary_GiftsBigCarnival_EMomeyMono[nIndex][nItemId]
	local sText = tJanuary_GiftsBigCarnival_Text[nNpcId]["Text211"]
	local sItemName = tJanuary_GiftsBigCarnival_Text[nNpcId]["ItemName"][nItemId]
	local sShowText = string.format(sText,sItemName,nEMoney)
	
	Sys_DialogText(sShowText)
	Sys_DialogText(tJanuary_GiftsBigCarnival_Text[nNpcId]["Text212"])
	Sys_DialogText(tJanuary_GiftsBigCarnival_Text[nNpcId]["Text213"])
	Sys_DialogOptEdit(tJanuary_GiftsBigCarnival_Text[nNpcId]["Input"],tJanuary_GiftsBigCarnival_Count["Length"],"January_GiftsBigCarnival_SureToSend</N>"..nNpcId.."</N>"..nItemId)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

-- 输入框
function January_GiftsBigCarnival_SureToSend(nNpcId,nItemId)
	if not Sys_ChkFullTime(tJanuary_GiftsBigCarnival_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 给奖励
	local nNumber = tonumber(Get_SysAcceptStr())
	if nNumber == nil or type(nNumber) ~= "number" or nNumber%1 ~= 0 or nNumber <= 0 or nNumber > 40 then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	if not January_GiftsBigCarnival_BuyItemChk(nNpcId,nItemId,nNumber) then
		return
	end
	
	-- 判断铁扇门
	local nIndex = January_GiftsBigCarnival_BuyPermissions()
	
	local nNeedEMoney = tJanuary_GiftsBigCarnival_EMomeyMono[nIndex][nItemId]*nNumber
	-- 二次确认
	local sText = tJanuary_GiftsBigCarnival_Text[nNpcId]["Text311"]
	local sItemName = tJanuary_GiftsBigCarnival_Text[nNpcId]["ItemName"][nItemId]
	tNpcGossip[nNpcId]["Text311"] = string.format(sText,nNeedEMoney,nNumber,sItemName)
	-- local sOption = tJanuary_GiftsBigCarnival_Text[nNpcId]["Option12"]
	-- tNpcGossip[nNpcId]["Option12"] = string.format(sOption,nNeedEMoney)
	tNpcGossip[nNpcId]["OptionFunc18"] = "January_GiftsBigCarnival_SureBuy</N>20174</N>"..nItemId.."</N>"..nNumber
	
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end

-- 确认换取天石赠
function January_GiftsBigCarnival_SureBuy(nNpcId,nItemId,nNumber)
	if not Sys_ChkFullTime(tJanuary_GiftsBigCarnival_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	-- 各种条件判断
	if not January_GiftsBigCarnival_BuyItemChk(nNpcId,nItemId,nNumber) then
		return
	end
	
	-- 判断铁扇门
	local nIndex = January_GiftsBigCarnival_BuyPermissions()
	
	local nEMoney = tJanuary_GiftsBigCarnival_EMomeyMono[nIndex][nItemId]*nNumber
	if not User_AddEMoneyMono(-nEMoney) then
		return
	end
	
	-- 设置掩码
	January_GiftsBigCarnival_SetStcValue(2,2,nEMoney)
	
	-- 给奖励
	local tNewReward = CommonFunc_Copy(tJanuary_GiftsBigCarnival_Reward[nItemId])
	local sLog =tJanuary_GiftsBigCarnival_Reward[nItemId]["Log"] 
	local sEMoneyLog = tJanuary_GiftsBigCarnival_Reward[nItemId]["EmoneyLog"]
	tNewReward["EmoneyLog"] = string.format(sEMoneyLog,nEMoney)
	tNewReward["RewardItem"][1]["Id"] = nItemId
	local sAttr = tJanuary_GiftsBigCarnival_Reward[nItemId]["RewardItem"][1]["Attr"]
	if nItemId == tJanuary_GiftsBigCarnival_Count["SpeId"] then
		tNewReward["RewardItem"][1]["Attr"] = string.format(sAttr,10*nNumber)
		tNewReward["Log"] = string.format(sLog,nEMoney,10*nNumber)
	else
		tNewReward["RewardItem"][1]["Attr"] = string.format(sAttr,nNumber)
		tNewReward["Log"] = string.format(sLog,nEMoney,nNumber)
	end
	RewardTemplate_UseItemAndMsg(tNewReward)
	-- 提示
	local sRewardText = tJanuary_GiftsBigCarnival_Text[nNpcId]["Reward"]
	User_TalkChannel2005(string.format(sRewardText,nEMoney,nNumber,Get_ItemtypeName(nItemId)))
end

---------------------------------------------------20175
-- 领取百宝大轮盘。
function January_GiftsBigCarnival_ReceiveItem(nNpcId)
	if not Sys_ChkFullTime(tJanuary_GiftsBigCarnival_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 背包中已经有
	local nItemId =tJanuary_GiftsBigCarnival_Count["RouletteId"]
	if Item_ChkItem(nItemId) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 背包不足
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	RewardTemplate_UseItemAndMsg(tJanuary_GiftsBigCarnival_Reward[nItemId])
	
	User_TalkChannel2005(tJanuary_GiftsBigCarnival_Text[nNpcId]["RewardItem"])
end

---------------------------------------------------物品使用
-- 铁扇门特购金牌物品使用
function January_GiftsBigCarnival_UseItem(nItemId)
	if not Sys_ChkFullTime(tJanuary_GiftsBigCarnival_Count["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tJanuary_GiftsBigCarnival_Text["OverDue"])
			local sLog = tJanuary_GiftsBigCarnival_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nItemId))
 		end
	end
	
	-- 寻路
	local nPosX = tJanuary_GiftsBigCarnival_FindWay[nItemId]["PosX"]
	local nPosY = tJanuary_GiftsBigCarnival_FindWay[nItemId]["PosY"]
	local nMapId = tJanuary_GiftsBigCarnival_FindWay[nItemId]["MapId"]
	local nNpcId = tJanuary_GiftsBigCarnival_FindWay[nItemId]["NpcId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

-- 百宝大轮盘
function January_GiftsBigCarnival_UseRouletteItem(nItemId)
	if not Sys_ChkFullTime(tJanuary_GiftsBigCarnival_Count["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId)then
			User_TalkChannel2005(tJanuary_GiftsBigCarnival_Text["OverDue"])
			local sLog = tJanuary_GiftsBigCarnival_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nItemId))
 		end
	end
	
	local nEvent = tJanuary_GiftsBigCarnival_Stc[3]["EventType"]
	local nType = tJanuary_GiftsBigCarnival_Stc[3]["DataType"]
	local nLimit = tJanuary_GiftsBigCarnival_Stc[3]["Limit"]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	-- 今日上限20次
	local nData = Get_UserStatisticValue(nEvent,nType)
	if nData >=  nLimit then
		User_TalkChannel2005(tJanuary_GiftsBigCarnival_Text["DayLimit"])
		return
	end
	
	-- 换购额度不足
	local nMaxLimit = tJanuary_GiftsBigCarnival_Stc[2]["Limit"]
	local nExchangeData = January_GiftsBigCarnival_GetStcValue(2) + tJanuary_GiftsBigCarnival_Count["Mono"]
	if nExchangeData > nMaxLimit then
		User_TalkChannel2005(tJanuary_GiftsBigCarnival_Text["MaxLimit"])
		return
	end
	
	local nTaskId = tJanuary_GiftsBigCarnival_Count["TaskId"]
	RouletteMould_Main(nTaskId)
end
--------------------------------------NPC模块-------------------------------------------
-- 非赠点换赠点
tNpcFace[4637] = 1
tNpcGossip[20173] = tNpcGossip[20173] or DefaultNpc:new{}
tNpcGossip[20173]["OptionHidden"] = 1
tNpcGossip[20173]["DialogueText"] = tJanuary_GiftsBigCarnival_Text[20173] 
-- 活动前
tNpcGossip[20173]["Text1-1"] = {111,112,113}
tNpcGossip[20173]["tOption1-1"] = {1}
tNpcGossip[20173]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tJanuary_GiftsBigCarnival_Count["ActivityTime"])
end

-- 活动后
tNpcGossip[20173]["Text1-2"] = {121}
tNpcGossip[20173]["tOption1-2"] = {2}
tNpcGossip[20173]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tJanuary_GiftsBigCarnival_Count["ActivityTime"])
end

-- 活动中
tNpcGossip[20173]["Text1-3"] = {131,132,133,136,135,134}
tNpcGossip[20173]["tOption1-3"] = {3,4,5}
tNpcGossip[20173]["ChkFunc1-3"] = function ()
	local sText = tJanuary_GiftsBigCarnival_Text[20173]["Text134"]
	local nLessData = tJanuary_GiftsBigCarnival_Stc[1]["Limit"] - January_GiftsBigCarnival_GetStcValue(1)
	tNpcGossip[20173]["Text134"] = string.format(sText,nLessData)
	return true
end
-- 换购2500天石（赠）
tNpcGossip[20173]["OptionFunc3"] = "January_GiftsBigCarnival_ExchangeMono</N>20173</N>3301801"
-- 换购25000天石（赠）
tNpcGossip[20173]["OptionFunc4"] = "January_GiftsBigCarnival_ExchangeMono</N>20173</N>3301802"
-- 我要领取500赠点
tNpcGossip[20173]["OptionFunc5"] = "January_GiftsBigCarnival_FreeReceiveMono</N>20173"
tNpcGossip[20173]["OptionChkFunc5"] = function ()
	local nData = January_GiftsBigCarnival_GetStcValue(4)
	-- 已经领取选项不显示
	if nData >= 2 then
		return false
	end
	return true
end

-- 二次确认
tNpcGossip[20173]["Text2-1"] = {211}
tNpcGossip[20173]["tOption2-1"] = {6,7}
tNpcGossip[20173]["OptionFunc6"] = ""

-- 天石不足
tNpcGossip[20173]["Text2-2"] = {221}
tNpcGossip[20173]["tOption2-2"] = {8}
tNpcGossip[20173]["OptionPoint8"] = "1-3"

-- 换购额度不足
tNpcGossip[20173]["Text2-3"] = {231}
tNpcGossip[20173]["tOption2-3"] = {9}
tNpcGossip[20173]["OptionPoint9"] = "1-3"

-- 背包不足
tNpcGossip[20173]["Text2-4"] = {241}
tNpcGossip[20173]["tOption2-4"] = {10}
tNpcGossip[20173]["OptionPoint10"] = "1-3"

-- 天石（赠）满
tNpcGossip[20173]["Text3-1"] = {311}
tNpcGossip[20173]["tOption3-1"] = {11}
tNpcGossip[20173]["OptionPoint11"] = "1-3"

-- 未参与换购
tNpcGossip[20173]["Text3-2"] = {321}
tNpcGossip[20173]["tOption3-2"] = {12}
tNpcGossip[20173]["OptionPoint12"] = "1-3"

-- 赠品消耗品促销
tNpcFace[4638] = 112
tNpcGossip[20174] = tNpcGossip[20174] or DefaultNpc:new{}
tNpcGossip[20174]["OptionHidden"] = 1
tNpcGossip[20174]["DialogueText"] = tJanuary_GiftsBigCarnival_Text[20174]
-- 活动前
tNpcGossip[20174]["Text1-1"] = {111,112,113}
tNpcGossip[20174]["tOption1-1"] = {1}
tNpcGossip[20174]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tJanuary_GiftsBigCarnival_Count["ActivityTime"])
end

-- 活动后
tNpcGossip[20174]["Text1-2"] = {121}
tNpcGossip[20174]["tOption1-2"] = {2}
tNpcGossip[20174]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tJanuary_GiftsBigCarnival_Count["ActivityTime"])
end

-- 活动中
tNpcGossip[20174]["Text1-3"] = {131,132,133,136,135,134}
tNpcGossip[20174]["tOption1-3"] = {3,4,5,6,7,8}
tNpcGossip[20174]["ChkFunc1-3"] = function ()
	local sText = tJanuary_GiftsBigCarnival_Text[20174]["Text134"]
	local nLessData = tJanuary_GiftsBigCarnival_Stc[2]["Limit"] - January_GiftsBigCarnival_GetStcValue(2)
	tNpcGossip[20174]["Text134"] = string.format(sText,nLessData)
	return true
end
-- 购买龙珠（赠）。
tNpcGossip[20174]["OptionFunc3"] = "January_GiftsBigCarnival_BuyItem</N>20174</N>1088000"
-- 购买+3赤炼石（赠）。
tNpcGossip[20174]["OptionFunc4"] = "January_GiftsBigCarnival_BuyItem</N>20174</N>730003"
-- 赠品小固化石*1
tNpcGossip[20174]["OptionFunc5"] = "January_GiftsBigCarnival_BuyItem</N>20174</N>723694"
-- 赠品金刚尖钻*1
tNpcGossip[20174]["OptionFunc6"] = "January_GiftsBigCarnival_BuyItem</N>20174</N>1200005"
-- 赠品明亮星陨石
tNpcGossip[20174]["OptionFunc7"] = "January_GiftsBigCarnival_BuyItem</N>20174</N>3009001"
-- 下一页
tNpcGossip[20174]["OptionPoint8"] = "1-4"

-- 活动中
tNpcGossip[20174]["Text1-4"] = {131,132,133,135,134}
tNpcGossip[20174]["tOption1-4"] = {9,10,11,12,13,14}
-- tNpcGossip[20174]["ChkFunc1-4"] = function ()
-- 气力值1000点
tNpcGossip[20174]["OptionFunc9"] = "January_GiftsBigCarnival_BuyItem</N>20174</N>3200571"
-- 修行值1000点
tNpcGossip[20174]["OptionFunc10"] = "January_GiftsBigCarnival_BuyItem</N>20174</N> 3300470"
-- 赠品强练丹*10
tNpcGossip[20174]["OptionFunc11"] = "January_GiftsBigCarnival_BuyItem</N>20174</N>3004470"
-- 赠品大爆丹*10
tNpcGossip[20174]["OptionFunc12"] = "January_GiftsBigCarnival_BuyItem</N>20174</N>3003126"
-- 上一个
tNpcGossip[20174]["OptionPoint13"] = "1-3"

-- 购买商品次级对白
tNpcGossip[20174]["Text2-1"] = {211,212,213}
-- 输入框数字
tNpcGossip[20174]["Text2-2"] = {221}
tNpcGossip[20174]["tOption2-2"] = {15}
tNpcGossip[20174]["OptionPoint15"] = 1
-- 赠点不足
tNpcGossip[20174]["Text2-3"] = {231}
tNpcGossip[20174]["tOption2-3"] = {16}
tNpcGossip[20174]["OptionPoint16"] = 1
-- 剩余购买额度不足
tNpcGossip[20174]["Text2-4"] = {241}
tNpcGossip[20174]["tOption2-4"] = {17}
tNpcGossip[20174]["OptionPoint17"] = 1
-- 背包不足
tNpcGossip[20174]["Text2-5"] = {251}
tNpcGossip[20174]["tOption2-5"] = {20}
tNpcGossip[20174]["OptionPoint20"] = 1
-- 成功，二次确认
tNpcGossip[20174]["Text3-1"] = {311}
tNpcGossip[20174]["tOption3-1"] = {18,19}
tNpcGossip[20174]["OptionFunc18"] = ""

-- -赠品转盘
tNpcFace[4639] = 216
tNpcGossip[20175] = tNpcGossip[20175] or DefaultNpc:new{}
tNpcGossip[20175]["OptionHidden"] = 1
tNpcGossip[20175]["DialogueText"] = tJanuary_GiftsBigCarnival_Text[20175] 
-- 活动前
tNpcGossip[20175]["Text1-1"] = {111,112,113,114}
tNpcGossip[20175]["tOption1-1"] = {1}
tNpcGossip[20175]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tJanuary_GiftsBigCarnival_Count["ActivityTime"])
end

-- 活动后
tNpcGossip[20175]["Text1-2"] = {121}
tNpcGossip[20175]["tOption1-2"] = {2}
tNpcGossip[20175]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tJanuary_GiftsBigCarnival_Count["ActivityTime"])
end

-- 活动中
tNpcGossip[20175]["Text1-3"] = {131,132,133,134,135,136,137}
tNpcGossip[20175]["tOption1-3"] = {3,4}
tNpcGossip[20175]["ChkFunc1-3"] = function ()
	local sText = tJanuary_GiftsBigCarnival_Text[20175]["Text136"]
	local nLessData = tJanuary_GiftsBigCarnival_Stc[2]["Limit"] - January_GiftsBigCarnival_GetStcValue(2)
	tNpcGossip[20175]["Text136"] = string.format(sText,nLessData)
	
	local sText = tJanuary_GiftsBigCarnival_Text[20175]["Text137"]
	local nEvent = tJanuary_GiftsBigCarnival_Stc[3]["EventType"]
	local nType = tJanuary_GiftsBigCarnival_Stc[3]["DataType"]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	local nDisData = tJanuary_GiftsBigCarnival_Stc[3]["Limit"] - January_GiftsBigCarnival_GetStcValue(3)
	tNpcGossip[20175]["Text137"] = string.format(sText,nDisData)
	return true
end
-- 领取百宝大轮盘。
tNpcGossip[20175]["OptionFunc3"] = "January_GiftsBigCarnival_ReceiveItem</N>20175"


-- 已有轮盘
tNpcGossip[20175]["Text2-1"] = {211}
tNpcGossip[20175]["tOption2-1"] = {5}

-- 背包满
tNpcGossip[20175]["Text2-2"] = {211}
tNpcGossip[20175]["tOption2-2"] = {5}
--------------------------------------物品模块-------------------------------------------
-- 2500天石（赠）礼包
tItem[3301801] = tItem[3301801] or {}
tItem[3301801]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuary_GiftsBigCarnival_OpenItem[nItemId])
end
-- 25000天石（赠）礼包
tItem[3301802] = tItem[3301802] or {}
tItem[3301802]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuary_GiftsBigCarnival_OpenItem[nItemId])
end

-- 铁扇门特购金牌
tItem[3301803] = tItem[3301803] or {}
tItem[3301803]["Function"] = function(nItemId,sItemName)
	January_GiftsBigCarnival_UseItem(nItemId)
end

-- 百宝大轮盘
tItem[3301804] = tItem[3301804] or {}
tItem[3301804]["Function"] = function(nItemId,sItemName)
	January_GiftsBigCarnival_UseRouletteItem(nItemId)
end

-- 50天石（赠）礼包
tItem[3301805] = tItem[3301805] or {}
tItem[3301805]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuary_GiftsBigCarnival_OpenItem[nItemId])
end
-- 500天石（赠）礼包
tItem[3301806] = tItem[3301806] or {}
tItem[3301806]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuary_GiftsBigCarnival_OpenItem[nItemId])
end
-- +3赤炼石（赠）礼包
tItem[3301807] = tItem[3301807] or {}
tItem[3301807]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuary_GiftsBigCarnival_OpenItem[nItemId])
end
-- 龙珠（赠）礼包
tItem[3301808] = tItem[3301808] or {}
tItem[3301808]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuary_GiftsBigCarnival_OpenItem[nItemId])
end
-- 固化石（赠）礼包
tItem[3301809] = tItem[3301809] or {}
tItem[3301809]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuary_GiftsBigCarnival_OpenItem[nItemId])
end
-- 1000点气力值礼包
tItem[3301810] = tItem[3301810] or {}
tItem[3301810]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuary_GiftsBigCarnival_OpenItem[nItemId])
end
-- 金钢坚钻（赠）礼包
tItem[3301811] = tItem[3301811] or {}
tItem[3301811]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuary_GiftsBigCarnival_OpenItem[nItemId])
end
-- +6赤炼石（赠）礼包
tItem[3301812] = tItem[3301812] or {}
tItem[3301812]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJanuary_GiftsBigCarnival_OpenItem[nItemId])
end



