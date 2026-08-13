------------------------------------------------------------------------------------
--Name:		160825[英文征服][活动脚本]9月赠品大狂欢及上线领赠点
--Creator: 	兰瑞妹
--Created:	2016/08/29
------------------------------------------------------------------------------------

-- 命名前缀
-- BigCarnival_ReceiveMono_

-- #stc 掩码说明 
-- #stc(148,52) 背包信
-- #stc(148,48) 免费领取天石赠所有侠士 个位==1 可领取 ==2 已领取
-- #stc(148,48) 战士可额外领取 十位==1 可领取 ==2 已领取

-- #stc(148,49) 特惠商品尊享包上限 个位==1
-- #stc(148,49) 七星宝钻上限 十位==6
-- #stc(148,49) 固化石上限 百千位==10
-- #stc(148,49) 1000修行值礼包 万==10

-- #stc(148,50) 500内功值礼包 十位==15
-- #stc(148,50) 10颗免费强炼丹（赠） 百千位==20
-- #stc(148,50) 10颗究极通神丹（赠） 万==20
-- #stc(148,50) 1000气力值礼包 百千位=50

-- #stc(148,51) 龙珠（赠） 十位==50
-- #stc(148,51) 明亮星陨石 百千位==50
-- #stc(148,51) +3赤炼石（赠） 万==50
-- #stc(148,51) 特转药水 百万==6



-- 常量表
local tBigCarnival_ReceiveMono_Count = {}
	-- 9.8-9.21（赠品促销）
	tBigCarnival_ReceiveMono_Count["CarnivalActivityTime"] = "2016-09-08 00:00 2016-09-21 23:59"
	-- 9.8-10.7（上线领赠点）
	tBigCarnival_ReceiveMono_Count["MonoActivityTime"] = "2016-09-08 00:00 2016-10-07 23:59"
	
	tBigCarnival_ReceiveMono_Count["EMoneyMono"] = 1000
	
	-- 需要金卡
	tBigCarnival_ReceiveMono_Count["CardItemId"] = 3300466
	
	-- 玩家等级要求
	tBigCarnival_ReceiveMono_Count["Metempsychosis"] = 0
	tBigCarnival_ReceiveMono_Count["Level"] = 100

-- 对白对应物品
local tBigCarnival_ReceiveMono_DialogIndex = {}
	tBigCarnival_ReceiveMono_DialogIndex[1] = 3300468
	tBigCarnival_ReceiveMono_DialogIndex[2] = 1200006
	tBigCarnival_ReceiveMono_DialogIndex[3] = 723694
	tBigCarnival_ReceiveMono_DialogIndex[4] = 3300470
	tBigCarnival_ReceiveMono_DialogIndex[5] = 3300469
	tBigCarnival_ReceiveMono_DialogIndex[6] = 3003124
	tBigCarnival_ReceiveMono_DialogIndex[7] = 3003126
	tBigCarnival_ReceiveMono_DialogIndex[8] = 3200571
	tBigCarnival_ReceiveMono_DialogIndex[9] = 1088000
	tBigCarnival_ReceiveMono_DialogIndex[10] = 3009001
	tBigCarnival_ReceiveMono_DialogIndex[11] = 730003
	
-- log
local tBigCarnival_ReceiveMono_Log= {}
	-- 物品过期删除
	tBigCarnival_ReceiveMono_Log["TimeOut"] = "0,0,3300466,1,12000507,2,0,0"
	
-- 添加自动寻路
local tBigCarnival_ReceiveMono_FindNpc = {}
	tBigCarnival_ReceiveMono_FindNpc["PosX"] = 310
	tBigCarnival_ReceiveMono_FindNpc["PosY"] = 248
	tBigCarnival_ReceiveMono_FindNpc["MapId"] = 1002
	tBigCarnival_ReceiveMono_FindNpc["NpcId"] = 19461
	
-- 对白index对应
local tBigCarnival_ReceiveMono_DialogText = {"Text312","Text313","Text314","Text315","Text316","Text317","Text318"}
	
-- 物品或玩家天石等掩码配置数值
local tBigCarnival_ReceiveMono_EMoney = {}
	-- 所有侠士
	tBigCarnival_ReceiveMono_EMoney[1] = {}
	tBigCarnival_ReceiveMono_EMoney[1]["StcIndex"] = 1
	tBigCarnival_ReceiveMono_EMoney[1]["StcMin"] = -1
	tBigCarnival_ReceiveMono_EMoney[1]["StcMax"] = -1
	tBigCarnival_ReceiveMono_EMoney[1]["StcSave"] = 1
	-- 战士
	tBigCarnival_ReceiveMono_EMoney[2] = {}
	tBigCarnival_ReceiveMono_EMoney[2]["StcIndex"] = 1
	tBigCarnival_ReceiveMono_EMoney[2]["StcMin"] = -2
	tBigCarnival_ReceiveMono_EMoney[2]["StcMax"] = -2
	tBigCarnival_ReceiveMono_EMoney[2]["StcSave"] = 10
	-- 特惠商品尊享包
	tBigCarnival_ReceiveMono_EMoney[3300468] = {}
	tBigCarnival_ReceiveMono_EMoney[3300468]["EMoney"] = 1500
	tBigCarnival_ReceiveMono_EMoney[3300468]["StcIndex"] = 2
	tBigCarnival_ReceiveMono_EMoney[3300468]["StcMin"] = -1
	tBigCarnival_ReceiveMono_EMoney[3300468]["StcMax"] = -1
	tBigCarnival_ReceiveMono_EMoney[3300468]["StcSave"] = 1
	tBigCarnival_ReceiveMono_EMoney[3300468]["MaxData"] = 1
	-- 七星宝钻（赠）
	tBigCarnival_ReceiveMono_EMoney[1200006] = {}
	tBigCarnival_ReceiveMono_EMoney[1200006]["EMoney"] = 599
	tBigCarnival_ReceiveMono_EMoney[1200006]["StcIndex"] = 2
	tBigCarnival_ReceiveMono_EMoney[1200006]["StcMin"] = -2
	tBigCarnival_ReceiveMono_EMoney[1200006]["StcMax"] = -2
	tBigCarnival_ReceiveMono_EMoney[1200006]["StcSave"] = 10
	tBigCarnival_ReceiveMono_EMoney[1200006]["MaxData"] = 6
	-- 固化石（赠）
	tBigCarnival_ReceiveMono_EMoney[723694] = {}
	tBigCarnival_ReceiveMono_EMoney[723694]["EMoney"] = 115
	tBigCarnival_ReceiveMono_EMoney[723694]["StcIndex"] = 2
	tBigCarnival_ReceiveMono_EMoney[723694]["StcMin"] = -4
	tBigCarnival_ReceiveMono_EMoney[723694]["StcMax"] = -3
	tBigCarnival_ReceiveMono_EMoney[723694]["StcSave"] = 100
	tBigCarnival_ReceiveMono_EMoney[723694]["MaxData"] = 10
	-- 1000修行值礼包 
	tBigCarnival_ReceiveMono_EMoney[3300470] = {}
	tBigCarnival_ReceiveMono_EMoney[3300470]["EMoney"] = 40
	tBigCarnival_ReceiveMono_EMoney[3300470]["StcIndex"] = 2
	tBigCarnival_ReceiveMono_EMoney[3300470]["StcMin"] = -6
	tBigCarnival_ReceiveMono_EMoney[3300470]["StcMax"] = -5
	tBigCarnival_ReceiveMono_EMoney[3300470]["StcSave"] = 10000
	tBigCarnival_ReceiveMono_EMoney[3300470]["MaxData"] = 10
	-- 500内功值礼包
	tBigCarnival_ReceiveMono_EMoney[3300469] = {}
	tBigCarnival_ReceiveMono_EMoney[3300469]["EMoney"] = 30
	tBigCarnival_ReceiveMono_EMoney[3300469]["StcIndex"] = 3
	tBigCarnival_ReceiveMono_EMoney[3300469]["StcMin"] = -2
	tBigCarnival_ReceiveMono_EMoney[3300469]["StcMax"] = -1
	tBigCarnival_ReceiveMono_EMoney[3300469]["StcSave"] = 1
	tBigCarnival_ReceiveMono_EMoney[3300469]["MaxData"] = 15
	-- 10颗免费强炼丹（赠）
	tBigCarnival_ReceiveMono_EMoney[3003124] = {}
	tBigCarnival_ReceiveMono_EMoney[3003124]["EMoney"] = 25
	tBigCarnival_ReceiveMono_EMoney[3003124]["StcIndex"] = 3
	tBigCarnival_ReceiveMono_EMoney[3003124]["StcMin"] = -4
	tBigCarnival_ReceiveMono_EMoney[3003124]["StcMax"] = -3
	tBigCarnival_ReceiveMono_EMoney[3003124]["StcSave"] = 100
	tBigCarnival_ReceiveMono_EMoney[3003124]["MaxData"] = 20
	-- 10颗究极通神丹（赠）
	tBigCarnival_ReceiveMono_EMoney[3003126] = {}
	tBigCarnival_ReceiveMono_EMoney[3003126]["EMoney"] = 80
	tBigCarnival_ReceiveMono_EMoney[3003126]["StcIndex"] = 3
	tBigCarnival_ReceiveMono_EMoney[3003126]["StcMin"] = -6
	tBigCarnival_ReceiveMono_EMoney[3003126]["StcMax"] = -5
	tBigCarnival_ReceiveMono_EMoney[3003126]["StcSave"] = 10000
	tBigCarnival_ReceiveMono_EMoney[3003126]["MaxData"] = 20
	-- 1000气力值礼包
	tBigCarnival_ReceiveMono_EMoney[3200571] = {}
	tBigCarnival_ReceiveMono_EMoney[3200571]["EMoney"] = 60
	tBigCarnival_ReceiveMono_EMoney[3200571]["StcIndex"] = 3
	tBigCarnival_ReceiveMono_EMoney[3200571]["StcMin"] = -8
	tBigCarnival_ReceiveMono_EMoney[3200571]["StcMax"] = -7
	tBigCarnival_ReceiveMono_EMoney[3200571]["StcSave"] = 1000000
	tBigCarnival_ReceiveMono_EMoney[3200571]["MaxData"] = 50
	-- 龙珠（赠）
	tBigCarnival_ReceiveMono_EMoney[1088000] = {}
	tBigCarnival_ReceiveMono_EMoney[1088000]["EMoney"] = 40
	tBigCarnival_ReceiveMono_EMoney[1088000]["StcIndex"] = 4
	tBigCarnival_ReceiveMono_EMoney[1088000]["StcMin"] = -2
	tBigCarnival_ReceiveMono_EMoney[1088000]["StcMax"] = -1
	tBigCarnival_ReceiveMono_EMoney[1088000]["StcSave"] = 1
	tBigCarnival_ReceiveMono_EMoney[1088000]["MaxData"] = 50
	-- 明亮星陨石
	tBigCarnival_ReceiveMono_EMoney[3009001] = {}
	tBigCarnival_ReceiveMono_EMoney[3009001]["EMoney"] = 30
	tBigCarnival_ReceiveMono_EMoney[3009001]["StcIndex"] = 4
	tBigCarnival_ReceiveMono_EMoney[3009001]["StcMin"] = -4
	tBigCarnival_ReceiveMono_EMoney[3009001]["StcMax"] = -3
	tBigCarnival_ReceiveMono_EMoney[3009001]["StcSave"] = 100
	tBigCarnival_ReceiveMono_EMoney[3009001]["MaxData"] = 50
	-- +3赤炼石（赠）
	tBigCarnival_ReceiveMono_EMoney[730003] = {}
	tBigCarnival_ReceiveMono_EMoney[730003]["EMoney"] = 30
	tBigCarnival_ReceiveMono_EMoney[730003]["StcIndex"] = 4
	tBigCarnival_ReceiveMono_EMoney[730003]["StcMin"] = -6
	tBigCarnival_ReceiveMono_EMoney[730003]["StcMax"] = -5
	tBigCarnival_ReceiveMono_EMoney[730003]["StcSave"] = 10000
	tBigCarnival_ReceiveMono_EMoney[730003]["MaxData"] = 50
	-- 特转药水
	tBigCarnival_ReceiveMono_EMoney[711083] = {}
	tBigCarnival_ReceiveMono_EMoney[711083]["EMoney"] = 1
	tBigCarnival_ReceiveMono_EMoney[711083]["StcIndex"] = 4
	tBigCarnival_ReceiveMono_EMoney[711083]["StcMin"] = -7
	tBigCarnival_ReceiveMono_EMoney[711083]["StcMax"] = -7
	tBigCarnival_ReceiveMono_EMoney[711083]["StcSave"] = 1000000
	tBigCarnival_ReceiveMono_EMoney[711083]["MaxData"] = 6
	
	-- 战士（20-25）
local tBigCarnival_ReceiveMono_Pro = {}
	tBigCarnival_ReceiveMono_Pro["Min"] = G_PRO_Warrior0
	tBigCarnival_ReceiveMono_Pro["Max"] = G_PRO_Warrior5
	
	
-- stc掩码
local tBigCarnival_ReceiveMono_Stc = {}
	-- 免费领取天石赠
	tBigCarnival_ReceiveMono_Stc[1] = {}
	tBigCarnival_ReceiveMono_Stc[1]["EventType"] = 148
	tBigCarnival_ReceiveMono_Stc[1]["DataType"] = 48
	-- 购买上限
	tBigCarnival_ReceiveMono_Stc[2] = {}
	tBigCarnival_ReceiveMono_Stc[2]["EventType"] = 148
	tBigCarnival_ReceiveMono_Stc[2]["DataType"] = 49
	tBigCarnival_ReceiveMono_Stc[3] = {}
	tBigCarnival_ReceiveMono_Stc[3]["EventType"] = 148
	tBigCarnival_ReceiveMono_Stc[3]["DataType"] = 50
	tBigCarnival_ReceiveMono_Stc[4] = {}
	tBigCarnival_ReceiveMono_Stc[4]["EventType"] = 148
	tBigCarnival_ReceiveMono_Stc[4]["DataType"] = 51
	
-- 奖励表
local tBigCarnival_ReceiveMono_Reward = {}
	-- 特转药水
	tBigCarnival_ReceiveMono_Reward[711083] = {}
	tBigCarnival_ReceiveMono_Reward[711083]["Log"] = "1,0,0,0,12000507,2,711083,1"
	tBigCarnival_ReceiveMono_Reward[711083]["EmoneyLog"] = "350	20309	1	1	1	"
	tBigCarnival_ReceiveMono_Reward[711083]["RewardItem"] = {}
	tBigCarnival_ReceiveMono_Reward[711083]["RewardItem"][1] = {}
	tBigCarnival_ReceiveMono_Reward[711083]["RewardItem"][1]["Id"] = 711083
	tBigCarnival_ReceiveMono_Reward[711083]["RewardItem"][1]["Attr"] = "0 1 3"
	tBigCarnival_ReceiveMono_Reward[711083]["RewardEffect"] = {}
	tBigCarnival_ReceiveMono_Reward[711083]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 1000天石赠(所有)
	tBigCarnival_ReceiveMono_Reward[1] = {}
	tBigCarnival_ReceiveMono_Reward[1]["Log"] = "0,0,0,0,12000507,2,3,1000"
	tBigCarnival_ReceiveMono_Reward[1]["RewardNoNeedTip"] = 1
	tBigCarnival_ReceiveMono_Reward[1]["RewardEMoneyMono"] = {}
	tBigCarnival_ReceiveMono_Reward[1]["RewardEMoneyMono"]["Value"] = 1000
	tBigCarnival_ReceiveMono_Reward[1]["RewardEMoneyMono"]["EmoneyLog"] = "350	20295	0	0	1000	"
	tBigCarnival_ReceiveMono_Reward[1]["RewardEffect"] = {}
	tBigCarnival_ReceiveMono_Reward[1]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000天石赠(战士)
	tBigCarnival_ReceiveMono_Reward[2] = {}
	tBigCarnival_ReceiveMono_Reward[2]["Log"] = "0,0,0,0,12000507,2,3,1000"
	tBigCarnival_ReceiveMono_Reward[2]["RewardNoNeedTip"] = 1
	tBigCarnival_ReceiveMono_Reward[2]["RewardEMoneyMono"] = {}
	tBigCarnival_ReceiveMono_Reward[2]["RewardEMoneyMono"]["Value"] = 1000
	tBigCarnival_ReceiveMono_Reward[2]["RewardEMoneyMono"]["EmoneyLog"] = "350	20296	0	0	1000	"
	tBigCarnival_ReceiveMono_Reward[2]["RewardEffect"] = {}
	tBigCarnival_ReceiveMono_Reward[2]["RewardEffect"]["Effect"] = "angelwing"
	-- 特惠商品尊享包
	tBigCarnival_ReceiveMono_Reward[3300468] = {}
	tBigCarnival_ReceiveMono_Reward[3300468]["Log"] = "1500,0,0,0,12000507,2,3300468,1"
	tBigCarnival_ReceiveMono_Reward[3300468]["EmoneyLog"] = "350	20298	1500	1500	1	"
	tBigCarnival_ReceiveMono_Reward[3300468]["RewardItem"] = {}
	tBigCarnival_ReceiveMono_Reward[3300468]["RewardItem"][1] = {}
	tBigCarnival_ReceiveMono_Reward[3300468]["RewardItem"][1]["Id"] = 3300468
	tBigCarnival_ReceiveMono_Reward[3300468]["RewardItem"][1]["Attr"] = "0 1"
	tBigCarnival_ReceiveMono_Reward[3300468]["RewardEffect"] = {}
	tBigCarnival_ReceiveMono_Reward[3300468]["RewardEffect"]["Effect"] = "angelwing"
	-- 七星宝钻（赠）
	tBigCarnival_ReceiveMono_Reward[1200006] = {}
	tBigCarnival_ReceiveMono_Reward[1200006]["Log"] = "599,0,0,0,12000507,2,1200006,1"
	tBigCarnival_ReceiveMono_Reward[1200006]["EmoneyLog"] = "350	20303	599	599	1	"
	tBigCarnival_ReceiveMono_Reward[1200006]["RewardItem"] = {}
	tBigCarnival_ReceiveMono_Reward[1200006]["RewardItem"][1] = {}
	tBigCarnival_ReceiveMono_Reward[1200006]["RewardItem"][1]["Id"] = 1200006
	tBigCarnival_ReceiveMono_Reward[1200006]["RewardItem"][1]["Attr"] = "0 1 3"
	tBigCarnival_ReceiveMono_Reward[1200006]["RewardEffect"] = {}
	tBigCarnival_ReceiveMono_Reward[1200006]["RewardEffect"]["Effect"] = "angelwing"
	-- 固化石（赠）
	tBigCarnival_ReceiveMono_Reward[723694] = {}
	tBigCarnival_ReceiveMono_Reward[723694]["Log"] = "115,0,0,0,12000507,2,723694,1"
	tBigCarnival_ReceiveMono_Reward[723694]["EmoneyLog"] = "350	20301	115	115	1	"
	tBigCarnival_ReceiveMono_Reward[723694]["RewardItem"] = {}
	tBigCarnival_ReceiveMono_Reward[723694]["RewardItem"][1] = {}
	tBigCarnival_ReceiveMono_Reward[723694]["RewardItem"][1]["Id"] = 723694
	tBigCarnival_ReceiveMono_Reward[723694]["RewardItem"][1]["Attr"] = "0 1 3"
	tBigCarnival_ReceiveMono_Reward[723694]["RewardEffect"] = {}
	tBigCarnival_ReceiveMono_Reward[723694]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000修行值礼包
	tBigCarnival_ReceiveMono_Reward[3300470] = {}
	tBigCarnival_ReceiveMono_Reward[3300470]["Log"] = "40,0,0,0,12000507,2,3300470,1"
	tBigCarnival_ReceiveMono_Reward[3300470]["EmoneyLog"] = "350	20304	40	40	1	"
	tBigCarnival_ReceiveMono_Reward[3300470]["RewardItem"] = {}
	tBigCarnival_ReceiveMono_Reward[3300470]["RewardItem"][1] = {}
	tBigCarnival_ReceiveMono_Reward[3300470]["RewardItem"][1]["Id"] = 3300470
	tBigCarnival_ReceiveMono_Reward[3300470]["RewardItem"][1]["Attr"] = "0 1"
	tBigCarnival_ReceiveMono_Reward[3300470]["RewardEffect"] = {}
	tBigCarnival_ReceiveMono_Reward[3300470]["RewardEffect"]["Effect"] = "angelwing"
	-- 500内功值礼包
	tBigCarnival_ReceiveMono_Reward[3300469] = {}
	tBigCarnival_ReceiveMono_Reward[3300469]["Log"] = "30,0,0,0,12000507,2,3300469,1"
	tBigCarnival_ReceiveMono_Reward[3300469]["EmoneyLog"] = "350	20307	30	30	1	"
	tBigCarnival_ReceiveMono_Reward[3300469]["RewardItem"] = {}
	tBigCarnival_ReceiveMono_Reward[3300469]["RewardItem"][1] = {}
	tBigCarnival_ReceiveMono_Reward[3300469]["RewardItem"][1]["Id"] = 3300469
	tBigCarnival_ReceiveMono_Reward[3300469]["RewardItem"][1]["Attr"] = "0 1"
	tBigCarnival_ReceiveMono_Reward[3300469]["RewardEffect"] = {}
	tBigCarnival_ReceiveMono_Reward[3300469]["RewardEffect"]["Effect"] = "angelwing"
	-- 10颗免费强炼丹(赠)
	tBigCarnival_ReceiveMono_Reward[3003124] = {}
	tBigCarnival_ReceiveMono_Reward[3003124]["Log"] = "25,0,0,0,12000507,2,3003124,1"
	tBigCarnival_ReceiveMono_Reward[3003124]["EmoneyLog"] = "350	20305	25	25	1	"
	tBigCarnival_ReceiveMono_Reward[3003124]["RewardItem"] = {}
	tBigCarnival_ReceiveMono_Reward[3003124]["RewardItem"][1] = {}
	tBigCarnival_ReceiveMono_Reward[3003124]["RewardItem"][1]["Id"] = 3003124
	tBigCarnival_ReceiveMono_Reward[3003124]["RewardItem"][1]["Attr"] = "0 10 3"
	tBigCarnival_ReceiveMono_Reward[3003124]["RewardEffect"] = {}
	tBigCarnival_ReceiveMono_Reward[3003124]["RewardEffect"]["Effect"] = "angelwing"
	-- 10颗究极通神丹（赠）
	tBigCarnival_ReceiveMono_Reward[3003126] = {}
	tBigCarnival_ReceiveMono_Reward[3003126]["Log"] = "80,0,0,0,12000507,2,3003126,1"
	tBigCarnival_ReceiveMono_Reward[3003126]["EmoneyLog"] = "350	20306	80	80	1	"
	tBigCarnival_ReceiveMono_Reward[3003126]["RewardItem"] = {}
	tBigCarnival_ReceiveMono_Reward[3003126]["RewardItem"][1] = {}
	tBigCarnival_ReceiveMono_Reward[3003126]["RewardItem"][1]["Id"] = 3003126
	tBigCarnival_ReceiveMono_Reward[3003126]["RewardItem"][1]["Attr"] = "0 10 3"
	tBigCarnival_ReceiveMono_Reward[3003126]["RewardEffect"] = {}
	tBigCarnival_ReceiveMono_Reward[3003126]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000气力值礼包
	tBigCarnival_ReceiveMono_Reward[3200571] = {}
	tBigCarnival_ReceiveMono_Reward[3200571]["Log"] = "60,0,0,0,12000507,2,3200571,1"
	tBigCarnival_ReceiveMono_Reward[3200571]["EmoneyLog"] = "350	20302	60	60	1	"
	tBigCarnival_ReceiveMono_Reward[3200571]["RewardItem"] = {}
	tBigCarnival_ReceiveMono_Reward[3200571]["RewardItem"][1] = {}
	tBigCarnival_ReceiveMono_Reward[3200571]["RewardItem"][1]["Id"] = 3200571
	tBigCarnival_ReceiveMono_Reward[3200571]["RewardItem"][1]["Attr"] = "0 1"
	tBigCarnival_ReceiveMono_Reward[3200571]["RewardEffect"] = {}
	tBigCarnival_ReceiveMono_Reward[3200571]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙珠（赠）
	tBigCarnival_ReceiveMono_Reward[1088000] = {}
	tBigCarnival_ReceiveMono_Reward[1088000]["Log"] = "40,0,0,0,12000507,2,1088000,1"
	tBigCarnival_ReceiveMono_Reward[1088000]["EmoneyLog"] = "350	20299	40	40	1	"
	tBigCarnival_ReceiveMono_Reward[1088000]["RewardItem"] = {}
	tBigCarnival_ReceiveMono_Reward[1088000]["RewardItem"][1] = {}
	tBigCarnival_ReceiveMono_Reward[1088000]["RewardItem"][1]["Id"] = 1088000
	tBigCarnival_ReceiveMono_Reward[1088000]["RewardItem"][1]["Attr"] = "0 1 3"
	tBigCarnival_ReceiveMono_Reward[1088000]["RewardEffect"] = {}
	tBigCarnival_ReceiveMono_Reward[1088000]["RewardEffect"]["Effect"] = "angelwing"
	--  明亮星陨石
	tBigCarnival_ReceiveMono_Reward[3009001] = {}
	tBigCarnival_ReceiveMono_Reward[3009001]["Log"] = "30,0,0,0,12000507,2,3009001,1"
	tBigCarnival_ReceiveMono_Reward[3009001]["EmoneyLog"] = "350	20308	30	30	1	"
	tBigCarnival_ReceiveMono_Reward[3009001]["RewardItem"] = {}
	tBigCarnival_ReceiveMono_Reward[3009001]["RewardItem"][1] = {}
	tBigCarnival_ReceiveMono_Reward[3009001]["RewardItem"][1]["Id"] = 3009001
	tBigCarnival_ReceiveMono_Reward[3009001]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tBigCarnival_ReceiveMono_Reward[3009001]["RewardEffect"] = {}
	tBigCarnival_ReceiveMono_Reward[3009001]["RewardEffect"]["Effect"] = "angelwing"
	--  +3赤炼石
	tBigCarnival_ReceiveMono_Reward[730003] = {}
	tBigCarnival_ReceiveMono_Reward[730003]["Log"] = "30,0,0,0,12000507,2,730003,1"
	tBigCarnival_ReceiveMono_Reward[730003]["EmoneyLog"] = "350	20300	30	30	1	"
	tBigCarnival_ReceiveMono_Reward[730003]["RewardItem"] = {}
	tBigCarnival_ReceiveMono_Reward[730003]["RewardItem"][1] = {}
	tBigCarnival_ReceiveMono_Reward[730003]["RewardItem"][1]["Id"] = 730003
	tBigCarnival_ReceiveMono_Reward[730003]["RewardItem"][1]["Attr"] = "0 1 3"
	tBigCarnival_ReceiveMono_Reward[730003]["RewardEffect"] = {}
	tBigCarnival_ReceiveMono_Reward[730003]["RewardEffect"]["Effect"] = "angelwing"
	
-- 物品打开奖励
local tBigCarnival_ReceiveMono_ItemUseReward = {}
-- 特惠商品尊享包
	tBigCarnival_ReceiveMono_ItemUseReward[3300468] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["Log"] = "0,0,3300468,1,12000507,2,3300471[3300472][723694][1200006][3003124][3003126][3009001][12][6][19],1[1][1][1][50][20][6][6000][2000][1000]"
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["DeleteItem"] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["DeleteItem"][1] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["DeleteItem"][1]["Id"] = 3300468
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["DeleteItem"][1]["Attr"] = "0 1"
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardItem"] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardItem"][1] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardItem"][1]["Id"] = 3300471
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardItem"][1]["Attr"] = "0 1"
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardItem"][2] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardItem"][2]["Id"] = 3300472
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardItem"][2]["Attr"] = "0 1"
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardItem"][3] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardItem"][3]["Id"] = 723694
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardItem"][3]["Attr"] = "0 1 3"
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardItem"][4] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardItem"][4]["Id"] = 1200006
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardItem"][4]["Attr"] = "0 1 3"
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardItem"][5] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardItem"][5]["Id"] = 3003124
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardItem"][5]["Attr"] = "0 50 3"
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardItem"][6] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardItem"][6]["Id"] = 3003126
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardItem"][6]["Attr"] = "0 20 3"
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardItem"][7] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardItem"][7]["Id"] = 3009001
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardItem"][7]["Attr"] = "0 6 0 2880 1"
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardStrengthValue"] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardStrengthValue"]["Value"] = 6000
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardCultivation"] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardCultivation"]["Value"] = 2000
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardRepairValue"] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardRepairValue"]["Value"] = 1000
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardEffect"] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300468]["RewardEffect"]["Effect"] = "angelwing"

	-- 500内功值礼包
	tBigCarnival_ReceiveMono_ItemUseReward[3300469] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300469]["Log"] = "0,0,3300469,1,12000507,2,19,500"
	tBigCarnival_ReceiveMono_ItemUseReward[3300469]["DeleteItem"] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300469]["DeleteItem"][1] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300469]["DeleteItem"][1]["Id"] = 3300469
	tBigCarnival_ReceiveMono_ItemUseReward[3300469]["DeleteItem"][1]["Attr"] = "0 1"
	tBigCarnival_ReceiveMono_ItemUseReward[3300469]["RewardRepairValue"] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300469]["RewardRepairValue"]["Value"] = 500
	tBigCarnival_ReceiveMono_ItemUseReward[3300469]["RewardEffect"] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300469]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 1000修行值礼包
	tBigCarnival_ReceiveMono_ItemUseReward[3300470] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300470]["Log"] = "0,0,3300470,1,12000507,2,6,1000"
	tBigCarnival_ReceiveMono_ItemUseReward[3300470]["DeleteItem"] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300470]["DeleteItem"][1] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300470]["DeleteItem"][1]["Id"] = 3300470
	tBigCarnival_ReceiveMono_ItemUseReward[3300470]["DeleteItem"][1]["Attr"] = "0 1"
	tBigCarnival_ReceiveMono_ItemUseReward[3300470]["RewardCultivation"] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300470]["RewardCultivation"]["Value"] = 1000
	tBigCarnival_ReceiveMono_ItemUseReward[3300470]["RewardEffect"] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300470]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 龙珠（赠）礼包
	tBigCarnival_ReceiveMono_ItemUseReward[3300471] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300471]["Log"] = "0,0,3300471,1,12000507,2,1088000,6"
	tBigCarnival_ReceiveMono_ItemUseReward[3300471]["DeleteItem"] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300471]["DeleteItem"][1] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300471]["DeleteItem"][1]["Id"] = 3300471
	tBigCarnival_ReceiveMono_ItemUseReward[3300471]["DeleteItem"][1]["Attr"] = "0 1"
	tBigCarnival_ReceiveMono_ItemUseReward[3300471]["RewardItem"] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300471]["RewardItem"][1] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300471]["RewardItem"][1]["Id"] = 1088000
	tBigCarnival_ReceiveMono_ItemUseReward[3300471]["RewardItem"][1]["Attr"] = "0 6 3"
	tBigCarnival_ReceiveMono_ItemUseReward[3300471]["RewardEffect"] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300471]["RewardEffect"]["Effect"] = "angelwing"
	
	-- +3赤炼石（赠）礼包
	tBigCarnival_ReceiveMono_ItemUseReward[3300472] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300472]["Log"] = "0,0,3300472,1,12000507,2,730003,8"
	tBigCarnival_ReceiveMono_ItemUseReward[3300472]["DeleteItem"] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300472]["DeleteItem"][1] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300472]["DeleteItem"][1]["Id"] = 3300472
	tBigCarnival_ReceiveMono_ItemUseReward[3300472]["DeleteItem"][1]["Attr"] = "0 1"
	tBigCarnival_ReceiveMono_ItemUseReward[3300472]["RewardItem"] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300472]["RewardItem"][1] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300472]["RewardItem"][1]["Id"] = 730003
	tBigCarnival_ReceiveMono_ItemUseReward[3300472]["RewardItem"][1]["Attr"] = "0 8 3"
	tBigCarnival_ReceiveMono_ItemUseReward[3300472]["RewardEffect"] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300472]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 1000天石赠礼包
	tBigCarnival_ReceiveMono_ItemUseReward[3300473] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300473]["Log"] = "0,0,3300473,1,12000507,2,3,1000"
	tBigCarnival_ReceiveMono_ItemUseReward[3300473]["DeleteItem"] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300473]["DeleteItem"][1] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300473]["DeleteItem"][1]["Id"] = 3300473
	tBigCarnival_ReceiveMono_ItemUseReward[3300473]["DeleteItem"][1]["Attr"] = "0 1"
	tBigCarnival_ReceiveMono_ItemUseReward[3300473]["RewardEMoneyMono"] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300473]["RewardEMoneyMono"]["EmoneyLog"] = "350	20297	0	0	1000	"
	tBigCarnival_ReceiveMono_ItemUseReward[3300473]["RewardEMoneyMono"]["Value"] = 1000
	tBigCarnival_ReceiveMono_ItemUseReward[3300473]["RewardEffect"] = {}
	tBigCarnival_ReceiveMono_ItemUseReward[3300473]["RewardEffect"]["Effect"] = "angelwing"

--------------------------------------逻辑部分-------------------------------------------
-- 玩家上线判断权益
function BigCarnival_ReceiveMono_Online()
	-- 是否活动时间
	if not Sys_ChkFullTime(tBigCarnival_ReceiveMono_Count["MonoActivityTime"]) then
		return
	end
	
	local nNowUserId = Get_UserId()
	local bReset = false
	local nAllData,nAlBasic = BigCarnival_ReceiveMono_GetNowStcData(1,nNowUserId)
	local nWarriorData,nWarriorBasic = BigCarnival_ReceiveMono_GetNowStcData(2,nNowUserId)
	--- 所有侠士
	if nAllData < 1 then
		-- 等级不足不能领取
		if User_JudgeLevelAndMetempsychosis(tBigCarnival_ReceiveMono_Count["Level"],tBigCarnival_ReceiveMono_Count["Metempsychosis"]) then
			nAllData = 1
			bReset = true
		end
	end
	
	-- 战士额外
	if nWarriorData < 1 then
		-- 判断玩家是否战士
		local nPro = Get_UserProfession(nNowUserId)
		if nPro >= tBigCarnival_ReceiveMono_Pro["Min"] and nPro <= tBigCarnival_ReceiveMono_Pro["Max"] then
			nWarriorData = 1
			bReset = true
		end
	end
	
	-- 设置掩码
	if bReset then
		local nEvent = tBigCarnival_ReceiveMono_Stc[1]["EventType"]
		local nType = tBigCarnival_ReceiveMono_Stc[1]["DataType"]
		local nSaveData = nAllData*nAlBasic+nWarriorData*nWarriorBasic
		Task_SetStatistic(nEvent,nType,nSaveData,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
end

-- 获取各个物品掩码
function BigCarnival_ReceiveMono_GetNowStcData(nItemId,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	
	local nStcIndex = tBigCarnival_ReceiveMono_EMoney[nItemId]["StcIndex"]
	local nEvent = tBigCarnival_ReceiveMono_Stc[nStcIndex]["EventType"]
	local nType = tBigCarnival_ReceiveMono_Stc[nStcIndex]["DataType"]
	
	
	local nStcMin = tBigCarnival_ReceiveMono_EMoney[nItemId]["StcMin"]
	local nStcMax = tBigCarnival_ReceiveMono_EMoney[nItemId]["StcMax"]
	local nStcBasic = tBigCarnival_ReceiveMono_EMoney[nItemId]["StcSave"]
	local nMaxData = tBigCarnival_ReceiveMono_EMoney[nItemId]["MaxData"]
	
	local nData = Get_UserStatisticValue(nEvent,nType,nNowUserId)
	
	local nNeedData = tonumber(string.sub(nData,nStcMin,nStcMax)) or 0
	 
	return nNeedData,nStcBasic,nMaxData
end
----------------------金秋盛典大使

-- 免费领取天石（赠）。
function BigCarnival_ReceiveMono_ReceiveMono(nNpcId)
	-- 活动后
	if not Sys_ChkFullTime(tBigCarnival_ReceiveMono_Count["MonoActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 权益判断
	BigCarnival_ReceiveMono_Online()
	local nNowUserId = Get_UserId()
	local nAllData,nAlBasic = BigCarnival_ReceiveMono_GetNowStcData(1,nNowUserId)
	local nWarriorData,nWarriorBasic = BigCarnival_ReceiveMono_GetNowStcData(2,nNowUserId)
	
	local sAllText,sWarriorText = nil,nil
	local nAddEmoney = 0
	if nAllData <= 1 then
		sAllText = tBigCarnival_ReceiveMono_Text[nNpcId]["NoReceive"]
		if nAllData == 1 then
			nAddEmoney = nAddEmoney+tBigCarnival_ReceiveMono_Count["EMoneyMono"]
		end
	else
		sAllText = tBigCarnival_ReceiveMono_Text[nNpcId]["AlReceive"]
	end
	
	if nWarriorData <= 1 then
		sWarriorText = tBigCarnival_ReceiveMono_Text[nNpcId]["NoReceive"]
		if nWarriorData == 1 then
			nAddEmoney = nAddEmoney+tBigCarnival_ReceiveMono_Count["EMoneyMono"]
		end
	else
		sWarriorText = tBigCarnival_ReceiveMono_Text[nNpcId]["AlReceive"]
	end
	
	-- 赠点天石满了
	local nUserEMoney = Get_UserMonoEMoney()
	if nUserEMoney + nAddEmoney > G_User_MaxEmoneyMono then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	local sAlShowText = tBigCarnival_ReceiveMono_Text[nNpcId]["Text211"]
	tNpcGossip[nNpcId]["Text211"] = string.format(sAlShowText,sAllText)
	local sWarriorShowText = tBigCarnival_ReceiveMono_Text[nNpcId]["Text212"]
	tNpcGossip[nNpcId]["Text212"] = string.format(sWarriorShowText,sWarriorText)

	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

-- 免费领取天石（赠）。
function BigCarnival_ReceiveMono_SureReceiveMono(nNpcId)
	-- 活动后
	if not Sys_ChkFullTime(tBigCarnival_ReceiveMono_Count["MonoActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nNowUserId = Get_UserId()
	local nAllData,nAlBasic = BigCarnival_ReceiveMono_GetNowStcData(1,nNowUserId)
	local nWarriorData,nWarriorBasic = BigCarnival_ReceiveMono_GetNowStcData(2,nNowUserId)
	
	-- 全部已经领取了
	if nAllData == 2 and nWarriorData == 2 then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	local nAddEmoney = 0
	local bAllData,bWarriorData = false,false
	if nAllData == 1 then
		nAllData = 2
		bAllData = true
		nAddEmoney = nAddEmoney+tBigCarnival_ReceiveMono_Count["EMoneyMono"]
	end
	
	if nWarriorData == 1 then
		nWarriorData = 2
		bWarriorData= true
		nAddEmoney = nAddEmoney+tBigCarnival_ReceiveMono_Count["EMoneyMono"]
	end
	
	-- 都不可领取分提示
	if not bAllData and not bWarriorData then
		-- 等级不足
		if nAllData == 0 then
			LinkNpcGossipFunc_New(nNpcId,"2-6")
			return
		end
		
		-- 非战士
		if nWarriorData == 0 then
			LinkNpcGossipFunc_New(nNpcId,"2-7")
			return
		end
	end
	
	if nAddEmoney > 0 then
		local nEvent = tBigCarnival_ReceiveMono_Stc[1]["EventType"]
		local nType = tBigCarnival_ReceiveMono_Stc[1]["DataType"]
		local nSaveData = nAllData*nAlBasic+nWarriorData*nWarriorBasic
		Task_SetStatistic(nEvent,nType,nSaveData,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		if bAllData then
			RewardTemplate_UseItemAndMsg(tBigCarnival_ReceiveMono_Reward[1])
		end
		if bWarriorData then
			RewardTemplate_UseItemAndMsg(tBigCarnival_ReceiveMono_Reward[2])
		end
		local sTip = tBigCarnival_ReceiveMono_Text[nNpcId]["RewardEmoney"]
		User_TalkChannel2005(string.format(sTip,nAddEmoney))
	end
end

-- 购买乾坤九转神露（赠）（1天石）。
function BigCarnival_ReceiveMono_BuyTurnItem(nNpcId,nItemId)
	-- 活动后
	if not Sys_ChkFullTime(tBigCarnival_ReceiveMono_Count["MonoActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nData,nBasic,nMaxData = BigCarnival_ReceiveMono_GetNowStcData(nItemId)
	local nEMoney = tBigCarnival_ReceiveMono_EMoney[nItemId]["EMoney"]
	
	local sItemName = Get_ItemtypeName(nItemId)
	-- 购买次数已满
	if nData+1 > nMaxData then
		local sText = tBigCarnival_ReceiveMono_Text[nNpcId]["Text251"]
		tNpcGossip[nNpcId]["Text251"] = string.format(sText,sItemName)
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	local nEMoney = tBigCarnival_ReceiveMono_EMoney[nItemId]["EMoney"]
	-- 天石不足
	local nUserEMoney = Get_UserEMoney()
	if nUserEMoney < nEMoney then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tBigCarnival_ReceiveMono_Text[nNpcId]["NoSpace"])
		return
	end
	
	-- 扣取天石得物品
	if not User_AddEMoney(-nEMoney) then
		return
	end 
	
	local nStcIndex = tBigCarnival_ReceiveMono_EMoney[nItemId]["StcIndex"]
	local nEvent = tBigCarnival_ReceiveMono_Stc[nStcIndex]["EventType"]
	local nType = tBigCarnival_ReceiveMono_Stc[nStcIndex]["DataType"]
	
	Task_AddStatistic(nEvent,nType,nBasic,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	
	RewardTemplate_UseItemAndMsg(tBigCarnival_ReceiveMono_Reward[nItemId])
	-- Sys_SaveEmoneyBuy(tBigCarnival_ReceiveMono_Reward[nItemId]["EmoneyLog"])
end

--------------------导购女郎爱丽丝
-- 购买特惠商品。
function BigCarnival_ReceiveMono_BuyOnSale(nNpcId,nItemId)
	-- 活动后
	-- if not Sys_ChkFullTime(tBigCarnival_ReceiveMono_Count["CarnivalActivityTime"]) then
		-- LinkNpcGossipFunc_New(nNpcId,"1-2")
		-- return
	-- end
	
	-- 无特购金卡
	-- if not Item_ChkItem(nItemId) then
		-- LinkNpcGossipFunc_New(nNpcId,"2-1")
		-- return
	-- end
	
	local tDialogLeft = {}
	for i=1,11 do
		tDialogLeft[i] = {}
		tDialogLeft[i]["Data"],tDialogLeft[i]["StcSave"],tDialogLeft[i]["MaxData"] = BigCarnival_ReceiveMono_GetNowStcData(tBigCarnival_ReceiveMono_DialogIndex[i])
		tDialogLeft[i]["NowData"] = tDialogLeft[i]["MaxData"]-tDialogLeft[i]["Data"]
	end
	
	local sShowTextOne = tBigCarnival_ReceiveMono_Text[nNpcId]["Text223"]
	-- local sShowTextTwo = tBigCarnival_ReceiveMono_Text[nNpcId]["Text224"]
	local sShowTextThree = tBigCarnival_ReceiveMono_Text[nNpcId]["Text225"]
	local sShowTextFour = tBigCarnival_ReceiveMono_Text[nNpcId]["Text226"]
	local sShowTextFive = tBigCarnival_ReceiveMono_Text[nNpcId]["Text227"]
	local sShowTextSix = tBigCarnival_ReceiveMono_Text[nNpcId]["Text228"]
	local sShowTextSev = tBigCarnival_ReceiveMono_Text[nNpcId]["Text229"]
	
	-- tNpcGossip[nNpcId]["Text223"] = string.format(sShowTextOne,tDialogLeft[1]["NowData"])
	tNpcGossip[nNpcId]["Text223"] = string.format(sShowTextOne,tDialogLeft[1]["NowData"],tDialogLeft[2]["NowData"])
	tNpcGossip[nNpcId]["Text225"] = string.format(sShowTextThree,tDialogLeft[3]["NowData"],tDialogLeft[4]["NowData"])
	tNpcGossip[nNpcId]["Text226"] = string.format(sShowTextFour,tDialogLeft[5]["NowData"],tDialogLeft[6]["NowData"])
	tNpcGossip[nNpcId]["Text227"] = string.format(sShowTextFive,tDialogLeft[7]["NowData"],tDialogLeft[8]["NowData"])
	tNpcGossip[nNpcId]["Text228"] = string.format(sShowTextSix,tDialogLeft[9]["NowData"],tDialogLeft[10]["NowData"])
	tNpcGossip[nNpcId]["Text229"] = string.format(sShowTextSev,tDialogLeft[11]["NowData"])
	
	-- LinkNpcGossipFunc_New(nNpcId,"2-2")
end

-- 检测
function BigCarnival_ReceiveMono_BuyChk(nNpcId,nItemId)
	local nData,nBasic,nMaxData = BigCarnival_ReceiveMono_GetNowStcData(nItemId)
	local nEMoney = tBigCarnival_ReceiveMono_EMoney[nItemId]["EMoney"]
	
	-- 没有购买卷
	local nNeedCard = tBigCarnival_ReceiveMono_Count["CardItemId"]
	if not Item_ChkItem(nNeedCard) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return false
	end
	
	local sItemName = Get_ItemtypeName(nItemId)
	-- 购买次数已满
	if nData+1 > nMaxData then
		local sText = tBigCarnival_ReceiveMono_Text[nNpcId]["Text251"]
		tNpcGossip[nNpcId]["Text251"] = string.format(sText,sItemName)
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return false
	end
	
	-- 天石不足
	local nUserEMoney = Get_UserEMoney()
	if nUserEMoney < nEMoney then
		local sText = tBigCarnival_ReceiveMono_Text[nNpcId]["Text241"]
		tNpcGossip[nNpcId]["Text241"] = string.format(sText,nEMoney)
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return false
	end
	
	-- 背包空间不足
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tBigCarnival_ReceiveMono_Text[nNpcId]["NoSpace"])
		return false
	end
	
	return true
end

-- 购买物品
function BigCarnival_ReceiveMono_BuyItem(nNpcId,nItemId)
	if not Sys_ChkFullTime(tBigCarnival_ReceiveMono_Count["CarnivalActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 各种条件判断
	if not BigCarnival_ReceiveMono_BuyChk(nNpcId,nItemId) then
		return
	end
	
	-- 二次确认框
	local sItemName = tBigCarnival_ReceiveMono_Text[nNpcId]["ItemName"][nItemId]
	local nEMoney = tBigCarnival_ReceiveMono_EMoney[nItemId]["EMoney"]
	local sText = tBigCarnival_ReceiveMono_Text[nNpcId]["Text311"]
	local tShowText = {}
	for i=1,7 do
		local sIndex = tBigCarnival_ReceiveMono_DialogText[i]
		tShowText[sIndex] = ""
	end
	if nItemId == tBigCarnival_ReceiveMono_DialogIndex[1] then
		for j=1,7 do
			local sIndex = tBigCarnival_ReceiveMono_DialogText[j]
			tShowText[sIndex] =  tBigCarnival_ReceiveMono_Text["PackText"][sIndex]
		end
	end
	tNpcGossip[nNpcId]["Text311"] = string.format(sText,nEMoney,sItemName)
	for h=1,7 do
		local sIndex = tBigCarnival_ReceiveMono_DialogText[h]
		tNpcGossip[nNpcId][sIndex] =  tShowText[sIndex]
	end
	tNpcGossip[nNpcId]["OptionFunc22"] = "BigCarnival_ReceiveMono_SureBuy</N>"..nNpcId.."</N>"..nItemId
	
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end

-- 确认购买
function BigCarnival_ReceiveMono_SureBuy(nNpcId,nItemId)
	if not Sys_ChkFullTime(tBigCarnival_ReceiveMono_Count["CarnivalActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 各种条件判断
	if not BigCarnival_ReceiveMono_BuyChk(nNpcId,nItemId) then
		return
	end
	
	local nEMoney = tBigCarnival_ReceiveMono_EMoney[nItemId]["EMoney"]
	if not User_AddEMoney(-nEMoney) then
		return
	end
	
	local nData,nBasic,nMaxData = BigCarnival_ReceiveMono_GetNowStcData(nItemId)
	local nStcIndex = tBigCarnival_ReceiveMono_EMoney[nItemId]["StcIndex"]
	local nEvent = tBigCarnival_ReceiveMono_Stc[nStcIndex]["EventType"]
	local nType = tBigCarnival_ReceiveMono_Stc[nStcIndex]["DataType"]
	
	Task_AddStatistic(nEvent,nType,nBasic,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	
	-- 给奖励
	RewardTemplate_UseItemAndMsg(tBigCarnival_ReceiveMono_Reward[nItemId])
	-- Sys_SaveEmoneyBuy(tBigCarnival_ReceiveMono_Reward[nItemId]["EmoneyLog"])
end

-- 物品使用
function BigCarnival_ReceiveMono_UseCardItem(nItemId)
	-- 活动时间过后
	if not Sys_ChkFullTime(tBigCarnival_ReceiveMono_Count["CarnivalActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tBigCarnival_ReceiveMono_Text[19461]["OverTime"])
			Sys_SaveActionFestivalLog(tBigCarnival_ReceiveMono_Log["TimeOut"])
			return
		end
	end
	
	local nPosX = tBigCarnival_ReceiveMono_FindNpc["PosX"] 
	local nPosY = tBigCarnival_ReceiveMono_FindNpc["PosY"] 
	local nMapId = tBigCarnival_ReceiveMono_FindNpc["MapId"]
	local nNpcId = tBigCarnival_ReceiveMono_FindNpc["NpcId"]
	local nNowMapId = Get_UserMapId()
	if nNowMapId == nMapId then
		Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
	else
		User_TalkChannel2005(tBigCarnival_ReceiveMono_Text[19461]["UseOnly"])
	end
	
end
--------------------------------------NPC模块-------------------------------------------
-- 金秋盛典大使
tNpcFace[4314] = 46
tNpcGossip[19460] = tNpcGossip[19460] or DefaultNpc:new{}
tNpcGossip[19460]["OptionHidden"] = 1
tNpcGossip[19460]["DialogueText"] = tBigCarnival_ReceiveMono_Text[19460] 
-- 活动前
tNpcGossip[19460]["Text1-1"] = {111,112,113}
tNpcGossip[19460]["tOption1-1"] = {1}
tNpcGossip[19460]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tBigCarnival_ReceiveMono_Count["MonoActivityTime"])
end

-- 活动后
tNpcGossip[19460]["Text1-2"] = {121}
tNpcGossip[19460]["tOption1-2"] = {2}
tNpcGossip[19460]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tBigCarnival_ReceiveMono_Count["MonoActivityTime"])
end

-- 活动中
tNpcGossip[19460]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[19460]["tOption1-3"] = {3,4,5}
tNpcGossip[19460]["ChkFunc1-3"] = function()
	local sShowText = tBigCarnival_ReceiveMono_Text[19460]["Text135"]
	local nData,nBasic,nMaxData = BigCarnival_ReceiveMono_GetNowStcData(711083)
	local nLessData = nMaxData-nData
	tNpcGossip[19460]["Text135"] = string.format(sShowText,nLessData)
	return true
end
-- 免费领取天石（赠）。
tNpcGossip[19460]["OptionFunc3"] = "BigCarnival_ReceiveMono_ReceiveMono</N>19460"
-- 购买乾坤九转神露（赠）（1天石）。
tNpcGossip[19460]["OptionFunc4"] = "BigCarnival_ReceiveMono_BuyTurnItem</N>19460</N>711083"
-- 我想再逛逛。

-- 免费领取天石（赠）
tNpcGossip[19460]["Text2-1"] = {211,212}
tNpcGossip[19460]["tOption2-1"] = {6}
tNpcGossip[19460]["ChkFunc2-1"] = function()
	return true
end
tNpcGossip[19460]["OptionFunc6"] = "BigCarnival_ReceiveMono_SureReceiveMono</N>19460"

-- 【接上、天石（赠）满】
tNpcGossip[19460]["Text2-2"] = {221}
tNpcGossip[19460]["tOption2-2"] = {7}

-- 【接上、已领取】
tNpcGossip[19460]["Text2-3"] = {231}
tNpcGossip[19460]["tOption2-3"] = {8}

-- 购买乾坤九转神露（赠）天石不足
tNpcGossip[19460]["Text2-4"] = {241}
tNpcGossip[19460]["tOption2-4"] = {9}

tNpcGossip[19460]["Text2-5"] = {251}
tNpcGossip[19460]["tOption2-5"] = {10}

tNpcGossip[19460]["Text2-6"] = {261}
tNpcGossip[19460]["tOption2-6"] = {11}

tNpcGossip[19460]["Text2-7"] = {271}
tNpcGossip[19460]["tOption2-7"] = {12}

-- 导购女郎爱丽丝
tNpcFace[4315] = 119
tNpcGossip[19461] = tNpcGossip[19461] or DefaultNpc:new{}
tNpcGossip[19461]["OptionHidden"] = 1
tNpcGossip[19461]["DialogueText"] = tBigCarnival_ReceiveMono_Text[19461]
-- 活动前
tNpcGossip[19461]["Text1-1"] = {111,112,113,114}
tNpcGossip[19461]["tOption1-1"] = {1}
tNpcGossip[19461]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tBigCarnival_ReceiveMono_Count["CarnivalActivityTime"])
end

-- 活动后
tNpcGossip[19461]["Text1-2"] = {121}
tNpcGossip[19461]["tOption1-2"] = {2}
tNpcGossip[19461]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tBigCarnival_ReceiveMono_Count["CarnivalActivityTime"])
end

-- 活动中
tNpcGossip[19461]["Text1-3"] = {221,222,223,225,226,227,228,229,230,224}
tNpcGossip[19461]["tOption1-3"] = {6,7,8,9,10,11,12,13}
tNpcGossip[19461]["ChkFunc1-3"] = function ()
	-- 是否有特购金卡
	local nNeedCard = tBigCarnival_ReceiveMono_Count["CardItemId"]
	BigCarnival_ReceiveMono_BuyOnSale(19461,nNeedCard)
	-- if not Item_ChkItem(nNeedCard) then
		-- return false
	-- end
	return true
end
-- 购买特惠商品。
tNpcGossip[19461]["OptionFunc3"] = "BigCarnival_ReceiveMono_BuyOnSale</N>19461</N>3300466"

-- tNpcGossip[19461]["Text1-4"] = {211}
-- tNpcGossip[19461]["tOption1-4"] = {5}
-- tNpcGossip[19461]["ChkFunc1-4"] = function ()
	-- 是否有特购金卡
	-- local nNeedCard = tBigCarnival_ReceiveMono_Count["CardItemId"]
	-- if Item_ChkItem(nNeedCard) then
		-- return false
	-- end
	-- return true
-- end

-- 购买特惠商品次级对白
-- 【无特购金卡】
tNpcGossip[19461]["Text2-1"] = {211}
tNpcGossip[19461]["tOption2-1"] = {5}

-- 【持有特购金卡】
tNpcGossip[19461]["Text2-2"] = {221,222,223,225,226,227,228,229,230,224}
tNpcGossip[19461]["tOption2-2"] = {6,7,8,9,10,11,12,13}
-- 特惠商品尊享包（1500天石）。
tNpcGossip[19461]["OptionFunc6"] = "BigCarnival_ReceiveMono_BuyItem</N>19461</N>3300468"
-- 七星宝钻（赠）（599天石）。
tNpcGossip[19461]["OptionFunc7"] = "BigCarnival_ReceiveMono_BuyItem</N>19461</N>1200006"
-- 固化石（赠）（115天石）。
tNpcGossip[19461]["OptionFunc8"] = "BigCarnival_ReceiveMono_BuyItem</N>19461</N>723694"
-- 10颗究极通神丹（赠）（80天石）。
tNpcGossip[19461]["OptionFunc9"] = "BigCarnival_ReceiveMono_BuyItem</N>19461</N>3003126"
-- 1000气力值礼包（60天石）。
tNpcGossip[19461]["OptionFunc10"] = "BigCarnival_ReceiveMono_BuyItem</N>19461</N>3200571"
-- 龙珠（赠）（40天石）。
tNpcGossip[19461]["OptionFunc11"] = "BigCarnival_ReceiveMono_BuyItem</N>19461</N>1088000"
-- 1000修行值礼包（40天石）。
tNpcGossip[19461]["OptionFunc12"] = "BigCarnival_ReceiveMono_BuyItem</N>19461</N>3300470"
-- 购买其它商品（下一页）。
tNpcGossip[19461]["OptionPoint13"] = "2-3"

-- 【下一页】
tNpcGossip[19461]["Text2-3"] = {221,222,223,225,226,227,228,229,230,224}
tNpcGossip[19461]["tOption2-3"] = {14,15,16,17,18,19}
-- 500内功值礼包（30天石）。
tNpcGossip[19461]["OptionFunc14"] = "BigCarnival_ReceiveMono_BuyItem</N>19461</N>3300469"
-- 明亮星陨石（30天石）。
tNpcGossip[19461]["OptionFunc15"] = "BigCarnival_ReceiveMono_BuyItem</N>19461</N>3009001"
-- +3赤炼石（赠）（30天石）。
tNpcGossip[19461]["OptionFunc16"] = "BigCarnival_ReceiveMono_BuyItem</N>19461</N>730003"
-- 10颗免费强炼丹（赠）（25
tNpcGossip[19461]["OptionFunc17"] = "BigCarnival_ReceiveMono_BuyItem</N>19461</N>3003124"
-- 购买其它商品（上一页）。
tNpcGossip[19461]["OptionPoint18"] = "2-2"
-- 我就随便看看。

-- 购买特惠商品-天石不足
tNpcGossip[19461]["Text2-4"] = {241}
tNpcGossip[19461]["tOption2-4"] = {20}

-- 购买特惠商品-购买次数已满
tNpcGossip[19461]["Text2-5"] = {251}
tNpcGossip[19461]["tOption2-5"] = {21}

-- 【天石足够、二次确认】
tNpcGossip[19461]["Text3-1"] = {311,312,313,314,315,316,317,318}
tNpcGossip[19461]["tOption3-1"] = {22,23}
-- 确认购买。
tNpcGossip[19461]["OptionFunc22"] = ""

--------------------------------------物品模块-------------------------------------------
-- 特购金卡
tItem[3300466] = tItem[3300466] or {}
tItem[3300466]["Function"] = function(nItemId,sItemName)
	BigCarnival_ReceiveMono_UseCardItem(nItemId)
end

-- 特惠商品尊享包
tItem[3300468] = tItem[3300468] or {}
tItem[3300468]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tBigCarnival_ReceiveMono_ItemUseReward[nItemId])
end

-- 500内功值礼包
tItem[3300469] = tItem[3300469] or {}
tItem[3300469]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tBigCarnival_ReceiveMono_ItemUseReward[nItemId])
end

-- 1000修行值礼包
tItem[3300470] = tItem[3300470] or {}
tItem[3300470]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tBigCarnival_ReceiveMono_ItemUseReward[nItemId])
end

-- 龙珠（赠）礼包
tItem[3300471] = tItem[3300471] or {}
tItem[3300471]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tBigCarnival_ReceiveMono_ItemUseReward[nItemId])
end

-- +3赤炼石（赠）礼包
tItem[3300472] = tItem[3300472] or {}
tItem[3300472]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tBigCarnival_ReceiveMono_ItemUseReward[nItemId])
end

-- 1000天石赠礼包
tItem[3300473] = tItem[3300473] or {}
tItem[3300473]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tBigCarnival_ReceiveMono_ItemUseReward[nItemId])
end


