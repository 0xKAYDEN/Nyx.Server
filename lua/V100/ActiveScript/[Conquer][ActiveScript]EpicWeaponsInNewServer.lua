------------------------------------------------------------------------------------
--Name：            170921[简体征服][活动脚本]史诗武器新服
--Creator:      吴帆
--Created:     2017/09/21
------------------------------------------------------------------------------------
--任务需求：
--【简体征服】史诗武器新服
-- 
--1、制作4个史诗道具赠碎片，集齐50个可以合成1个对应的史诗道具（赠），单个碎片可以赌翻倍
--·勇士史诗道具：3003660 圣灵神木，类型要改成勇士史诗任务，属性改成9
--·忍者史诗道具：3004464 轮回之眼
--·道士史诗道具：3006016 神宝仙丹
--·武僧史诗道具：3007564 空灵佛心
-- 
--2、新增4个史诗道具，可洗赠
--·勇士道具洗赠：3003336 吞日碎片*27
--·忍者道具洗赠：3004462 阴阳鬼契*50
--·道士道具洗赠：3006013 天宝灵叶*50
--·武僧道具洗赠：3007562 禅光宝石*50
--（史诗道具与碎片为永久修改，与活动无关，无需时间判断和过期处理）
-- 
--3、新服暂定时间为10.12，活动时间：10.12-11.10
--·活动期间击杀片区怪物（包括神龙岛）有概率获得史诗抽奖包，击杀潜龙渊怪物概率翻倍，每人每日限量获得
--·神龙岛和潜龙渊的BOSS参与奖奖励增加1个史诗抽奖包，BOSS击杀奖励增加1个史诗抽奖包（每人每日限量）
--·打开史诗抽奖包有概率获得完整的史诗道具（赠）、史诗道具赠碎片、史诗道具赠碎片随机包（可交易，服务器每日限量）、红白恶之花、史诗二级抽奖道具、史诗兑换材料、史诗技能卷轴、史诗任务增加免费次数的道具（需新写，分职业）、以及一些其他养成道具（道具查询方式cq_itemtype where type_desc like "%史诗任务%"）
--·完整史诗道具（赠）概率极低，活动期间每10天每种限量1个，需要有一个地方专门宣传谁抽中了
--·史诗道具碎片不计算交易和击杀BOSS奖励，30天参与下来，平均可获得55个勇士碎片、45个忍者碎片、55个武僧碎片、45个道士碎片
--2017.11.29新增：
--任务需求:
--【简体征服】史诗武器活动全服更新 和12月7日的新服一起更新到全区全服
--1、复用史诗活动，武僧和忍者的碎片概率互换一下 
--2、新增史诗众筹玩法，每天中午12点开始，所有玩家可以在NPC上交流星卷，每天首次上交计100分，之后每交1个加10分，
--分数越多中奖概率越高（按服务器总分占比） 次日零点开奖，大奖每天1个随机史诗武器道具（赠），小奖10个史诗碎片可选包、100个史诗碎片随机包，
--其余的都只获得50气力参与奖，通过邮件发奖。（服务器总分达到10000分后大奖才激活，分数不够显示大奖未激活（只是不给史诗武器，其它奖励照样给））
--2018.2.11新增
--英文征服3月史诗武器活动活动时间：2018年3月1日-3月29日更新时间：2018年3月1日（周四）例行维护任务概述：复用简体史诗武器活动
------------------------------------------------------------------------------------
-- #stc 掩码说明 
---stc(165,83) 背包信
---stc(167,61) 片区怪物掉落神兵灵魄碎片上限100
---stc(167,62) 使用伏魔嘉奖包获得神兵灵魄上限5
---stc(167,63) 怪物掉落神兵灵魄上限5

---stc(174,79) 金币 二次确认屏蔽
---stc(174,80) 龙珠 二次确认屏蔽

-- Global Id说明
---51779 
---		 0号位 勇士史诗武器道具限量掩码
---		 1号位 忍者史诗武器道具限量掩码
---		 2号位 道士史诗武器道具限量掩码
---		 3号位 武僧史诗武器道具限量掩码
---		 4号位 史诗碎片随机包限量掩码
---		 5号位 海盗史诗武器道具限量掩码
---51780 
---
-------------------------------------------------------------------------------------
---stc(124,26) 勇士史诗任务 1阶段
---stc(124,27) 勇士史诗任务 2阶段
---stc(124,28) 勇士史诗任务 3阶段
---stc(124,29) 勇士史诗任务 4阶段
---stc(121,84) 勇士史诗任务阶段掩码

---stc(127,77) 忍者史诗任务
---stc(133,53) 道士史诗任务
---stc(138,46) 武僧史诗任务
---stc(173,01) 海盗史诗任务

--LOGid 12000875

--	命名规范
--	EpicWeaponsInNewServer_
----------------------------------表配置部分--------------------------------------------
-- 新服活动全局动态码
local tEpicWeaponsInNewServer_Cont = {}
	tEpicWeaponsInNewServer_Cont["Global"] = {}
	tEpicWeaponsInNewServer_Cont["Global"]["Id"] = 51131
	tEpicWeaponsInNewServer_Cont["Global"]["Open"] = 1
	tEpicWeaponsInNewServer_Cont["Global"]["Flag"] = 54114
local tEpicWeaponsInNewServer_Stc={}
---stc(167,62) 参与奖 1个神兵灵魄 每日五个
	tEpicWeaponsInNewServer_Stc[1] = {}
	tEpicWeaponsInNewServer_Stc[1]["EventType"] = 167
	tEpicWeaponsInNewServer_Stc[1]["DataType"] = 62
	tEpicWeaponsInNewServer_Stc[1]["Limit"] = 5
---stc(167,63) 击杀奖 1个神兵灵魄 每日五个
	tEpicWeaponsInNewServer_Stc[2] = {}
	tEpicWeaponsInNewServer_Stc[2]["EventType"] = 167
	tEpicWeaponsInNewServer_Stc[2]["DataType"] = 63
	tEpicWeaponsInNewServer_Stc[2]["Limit"] = 5
---stc(121,84) 勇士史诗任务阶段掩码
	tEpicWeaponsInNewServer_Stc[3] = {}
	tEpicWeaponsInNewServer_Stc[3]["EventType"] = 121
	tEpicWeaponsInNewServer_Stc[3]["DataType"] = 84
---stc(170,42) 史诗武器众筹当日上交
	tEpicWeaponsInNewServer_Stc[4] = {}
	tEpicWeaponsInNewServer_Stc[4]["EventType"] = 170
	tEpicWeaponsInNewServer_Stc[4]["DataType"] = 42
	tEpicWeaponsInNewServer_Stc[4]["Received"] = 1
---stc(170,43) 史诗武器众筹积分
	tEpicWeaponsInNewServer_Stc[5] = {}
	tEpicWeaponsInNewServer_Stc[5]["EventType"] = 170
	tEpicWeaponsInNewServer_Stc[5]["DataType"] = 43
---stc(124,26) 勇士史诗任务 1
	tEpicWeaponsInNewServer_Stc["EpicMission"] = {}
	tEpicWeaponsInNewServer_Stc["EpicMission"][1] = {}
	tEpicWeaponsInNewServer_Stc["EpicMission"][1]["NeedPro1"] = 10
	tEpicWeaponsInNewServer_Stc["EpicMission"][1]["NeedPro2"] = 15
	tEpicWeaponsInNewServer_Stc["EpicMission"][1][1] = {}
	tEpicWeaponsInNewServer_Stc["EpicMission"][1][1]["EventType"] = 124
	tEpicWeaponsInNewServer_Stc["EpicMission"][1][1]["DataType"] = 26
	tEpicWeaponsInNewServer_Stc["EpicMission"][1][1]["Complete"] = 1
---stc(124,27) 勇士史诗任务 2
	tEpicWeaponsInNewServer_Stc["EpicMission"][1][2] = {}
	tEpicWeaponsInNewServer_Stc["EpicMission"][1][2]["EventType"] = 124
	tEpicWeaponsInNewServer_Stc["EpicMission"][1][2]["DataType"] = 27
	tEpicWeaponsInNewServer_Stc["EpicMission"][1][2]["Complete"] = 1
---stc(124,28) 勇士史诗任务 3
	tEpicWeaponsInNewServer_Stc["EpicMission"][1][3] = {}
	tEpicWeaponsInNewServer_Stc["EpicMission"][1][3]["EventType"] = 124
	tEpicWeaponsInNewServer_Stc["EpicMission"][1][3]["DataType"] = 28
	tEpicWeaponsInNewServer_Stc["EpicMission"][1][3]["Complete"] = 1
---stc(124,29) 勇士史诗任务 4
	tEpicWeaponsInNewServer_Stc["EpicMission"][1][4] = {}
	tEpicWeaponsInNewServer_Stc["EpicMission"][1][4]["EventType"] = 124
	tEpicWeaponsInNewServer_Stc["EpicMission"][1][4]["DataType"] = 29
	tEpicWeaponsInNewServer_Stc["EpicMission"][1][4]["Complete"] = 1
---stc(127,77) 忍者史诗任务
	tEpicWeaponsInNewServer_Stc["EpicMission"][2] = {}
	tEpicWeaponsInNewServer_Stc["EpicMission"][2]["NeedPro1"] = 50
	tEpicWeaponsInNewServer_Stc["EpicMission"][2]["NeedPro2"] = 55
	tEpicWeaponsInNewServer_Stc["EpicMission"][2][1] = {}
	tEpicWeaponsInNewServer_Stc["EpicMission"][2][1]["EventType"] = 127
	tEpicWeaponsInNewServer_Stc["EpicMission"][2][1]["DataType"] = 77
	tEpicWeaponsInNewServer_Stc["EpicMission"][2][1]["Complete"] = 2
---stc(133,53) 道士史诗任务
	tEpicWeaponsInNewServer_Stc["EpicMission"][3] = {}
	tEpicWeaponsInNewServer_Stc["EpicMission"][3]["NeedPro1"] = 100
	tEpicWeaponsInNewServer_Stc["EpicMission"][3]["NeedPro2"] = 145
	tEpicWeaponsInNewServer_Stc["EpicMission"][3][1] = {}
	tEpicWeaponsInNewServer_Stc["EpicMission"][3][1]["EventType"] = 133
	tEpicWeaponsInNewServer_Stc["EpicMission"][3][1]["DataType"] = 53
	tEpicWeaponsInNewServer_Stc["EpicMission"][3][1]["Complete"] = 2
---stc(138,46) 武僧史诗任务
	tEpicWeaponsInNewServer_Stc["EpicMission"][4] = {}
	tEpicWeaponsInNewServer_Stc["EpicMission"][4]["NeedPro1"] = 60
	tEpicWeaponsInNewServer_Stc["EpicMission"][4]["NeedPro2"] = 65
	tEpicWeaponsInNewServer_Stc["EpicMission"][4][1] = {}
	tEpicWeaponsInNewServer_Stc["EpicMission"][4][1]["EventType"] = 138
	tEpicWeaponsInNewServer_Stc["EpicMission"][4][1]["DataType"] = 46
	tEpicWeaponsInNewServer_Stc["EpicMission"][4][1]["Complete"] = 2
---stc(173,01) 海盗史诗任务
	tEpicWeaponsInNewServer_Stc["EpicMission"][5] = {}
	tEpicWeaponsInNewServer_Stc["EpicMission"][5]["NeedPro1"] = 70
	tEpicWeaponsInNewServer_Stc["EpicMission"][5]["NeedPro2"] = 75
	tEpicWeaponsInNewServer_Stc["EpicMission"][5][1] = {}
	tEpicWeaponsInNewServer_Stc["EpicMission"][5][1]["EventType"] = 173
	tEpicWeaponsInNewServer_Stc["EpicMission"][5][1]["DataType"] = 01
	tEpicWeaponsInNewServer_Stc["EpicMission"][5][1]["Complete"] = 1
local tEpicWeaponsInNewServer_Data={}
	tEpicWeaponsInNewServer_Data["Activity"] = tActivityTime["EpicWeaponsSoul"]["Activity"]
	tEpicWeaponsInNewServer_Data["Level"] = 80
	tEpicWeaponsInNewServer_Data["Metempsychosis"] = 0
	--使用1个史诗武器碎片几率
	tEpicWeaponsInNewServer_Data["SeedUsePieces"] = 52
	--史诗武器id
	tEpicWeaponsInNewServer_Data["Weapon"] = {}
	tEpicWeaponsInNewServer_Data["Weapon"][1] = 3305414
	tEpicWeaponsInNewServer_Data["Weapon"][2] = 3305415
	tEpicWeaponsInNewServer_Data["Weapon"][3] = 3305416
	tEpicWeaponsInNewServer_Data["Weapon"][4] = 3305417
	tEpicWeaponsInNewServer_Data["Weapon"][5] = 3321029
	--史诗武器Global
	tEpicWeaponsInNewServer_Data["Global"] = {}
	tEpicWeaponsInNewServer_Data["Global"]["Weapon"] = {} 
	tEpicWeaponsInNewServer_Data["Global"]["Weapon"][1] = {}
	tEpicWeaponsInNewServer_Data["Global"]["Weapon"][1]["GlobalId"] = 51779
	tEpicWeaponsInNewServer_Data["Global"]["Weapon"][1]["Pos"] = 0
	tEpicWeaponsInNewServer_Data["Global"]["Weapon"][1]["CheckGlobalId"] = 51780
	tEpicWeaponsInNewServer_Data["Global"]["Weapon"][1]["CheckPos"] = 0
	tEpicWeaponsInNewServer_Data["Global"]["Weapon"][2] = {}
	tEpicWeaponsInNewServer_Data["Global"]["Weapon"][2]["GlobalId"] = 51779
	tEpicWeaponsInNewServer_Data["Global"]["Weapon"][2]["Pos"] = 1
	tEpicWeaponsInNewServer_Data["Global"]["Weapon"][2]["CheckGlobalId"] = 51780
	tEpicWeaponsInNewServer_Data["Global"]["Weapon"][2]["CheckPos"] = 1
	tEpicWeaponsInNewServer_Data["Global"]["Weapon"][3] = {}
	tEpicWeaponsInNewServer_Data["Global"]["Weapon"][3]["GlobalId"] = 51779
	tEpicWeaponsInNewServer_Data["Global"]["Weapon"][3]["Pos"] = 2
	tEpicWeaponsInNewServer_Data["Global"]["Weapon"][3]["CheckGlobalId"] = 51780
	tEpicWeaponsInNewServer_Data["Global"]["Weapon"][3]["CheckPos"] = 2
	tEpicWeaponsInNewServer_Data["Global"]["Weapon"][4] = {}
	tEpicWeaponsInNewServer_Data["Global"]["Weapon"][4]["GlobalId"] = 51779
	tEpicWeaponsInNewServer_Data["Global"]["Weapon"][4]["Pos"] = 3
	tEpicWeaponsInNewServer_Data["Global"]["Weapon"][4]["CheckGlobalId"] = 51780
	tEpicWeaponsInNewServer_Data["Global"]["Weapon"][4]["CheckPos"] = 3
	tEpicWeaponsInNewServer_Data["Global"]["Weapon"][5] = {}
	tEpicWeaponsInNewServer_Data["Global"]["Weapon"][5]["GlobalId"] = 51779
	tEpicWeaponsInNewServer_Data["Global"]["Weapon"][5]["Pos"] = 5
	tEpicWeaponsInNewServer_Data["Global"]["Weapon"][5]["CheckGlobalId"] = 51780
	tEpicWeaponsInNewServer_Data["Global"]["Weapon"][5]["CheckPos"] = 5
	--史诗武器碎片随机包Global
	tEpicWeaponsInNewServer_Data["Global"]["WeaponPieces"] = {}
	tEpicWeaponsInNewServer_Data["Global"]["WeaponPieces"]["GlobalId"] = 51779
	tEpicWeaponsInNewServer_Data["Global"]["WeaponPieces"]["Pos"] = 4
	tEpicWeaponsInNewServer_Data["Global"]["WeaponPieces"]["CheckGlobalId"] = 51780
	tEpicWeaponsInNewServer_Data["Global"]["WeaponPieces"]["CheckPos"] = 4
local tEpicWeaponsInNewServer_Compose = {}
	--合成神兵灵魄
	tEpicWeaponsInNewServer_Compose[3305426] = {}
	tEpicWeaponsInNewServer_Compose[3305426]["RequireNum"] = 10
	tEpicWeaponsInNewServer_Compose[3305426]["DeleteItem"] = {}
	tEpicWeaponsInNewServer_Compose[3305426]["DeleteItem"][1] = {}
	tEpicWeaponsInNewServer_Compose[3305426]["DeleteItem"][1]["Id"] = 3305426
	tEpicWeaponsInNewServer_Compose[3305426]["DeleteItem"][1]["ItemNum"] = 10
	tEpicWeaponsInNewServer_Compose[3305426]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Compose[3305426]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Compose[3305426]["RewardItem"][1]["Id"] = 3305425
	tEpicWeaponsInNewServer_Compose[3305426]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Compose[3305426]["NoSpace"] = tEpicWeaponsInNewServer_Text[3305426]["NoSpace"]
	tEpicWeaponsInNewServer_Compose[3305426]["Talk"] = tEpicWeaponsInNewServer_Text[3305426]["Talk"]
	tEpicWeaponsInNewServer_Compose[3305426]["LogId"] = 12000875
local tEpicWeaponsInNewServer_Use = {}
	--使用神兵灵魄
	--圣灵神木（赠）
	tEpicWeaponsInNewServer_Use[3305425] = {}
	tEpicWeaponsInNewServer_Use[3305425]["ItemChanceSum"] = 1000000
	tEpicWeaponsInNewServer_Use[3305425][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][1]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][1]["ItemChance"] = 20
	tEpicWeaponsInNewServer_Use[3305425][1]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][1]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][1]["RewardItem"][1]["Id"] = 3305414
	tEpicWeaponsInNewServer_Use[3305425][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tEpicWeaponsInNewServer_Use[3305425][1]["GlobalId"] = 51779
	tEpicWeaponsInNewServer_Use[3305425][1]["Pos"] = 0
	tEpicWeaponsInNewServer_Use[3305425][1]["MaxData"] = 1
	tEpicWeaponsInNewServer_Use[3305425][1]["FullIndex"] = 42
	tEpicWeaponsInNewServer_Use[3305425][1]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3305425][1]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3305425][1]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3305425][1]["Log"] = "0,0,3305425,1,12000875,2,3305414,1"
	--轮回之眼（赠）
	tEpicWeaponsInNewServer_Use[3305425][2] = {}
	tEpicWeaponsInNewServer_Use[3305425][2]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][2]["ItemChance"] = 20
	tEpicWeaponsInNewServer_Use[3305425][2]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][2]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][2]["RewardItem"][1]["Id"] = 3305415
	tEpicWeaponsInNewServer_Use[3305425][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tEpicWeaponsInNewServer_Use[3305425][2]["GlobalId"] = 51779
	tEpicWeaponsInNewServer_Use[3305425][2]["Pos"] = 1
	tEpicWeaponsInNewServer_Use[3305425][2]["MaxData"] = 1
	tEpicWeaponsInNewServer_Use[3305425][2]["FullIndex"] = 42
	tEpicWeaponsInNewServer_Use[3305425][2]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3305425][2]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3305425][2]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3305425][2]["Log"] = "0,0,3305425,1,12000875,2,3305415,1"
	--神宝仙丹（赠）
	tEpicWeaponsInNewServer_Use[3305425][3] = {}
	tEpicWeaponsInNewServer_Use[3305425][3]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][3]["ItemChance"] = 20
	tEpicWeaponsInNewServer_Use[3305425][3]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][3]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][3]["RewardItem"][1]["Id"] = 3305416
	tEpicWeaponsInNewServer_Use[3305425][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tEpicWeaponsInNewServer_Use[3305425][3]["GlobalId"] = 51779
	tEpicWeaponsInNewServer_Use[3305425][3]["Pos"] = 2
	tEpicWeaponsInNewServer_Use[3305425][3]["MaxData"] = 1
	tEpicWeaponsInNewServer_Use[3305425][3]["FullIndex"] = 42
	tEpicWeaponsInNewServer_Use[3305425][3]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3305425][3]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3305425][3]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3305425][3]["Log"] = "0,0,3305425,1,12000875,2,3305416,1"
	--空灵佛心（赠）
	tEpicWeaponsInNewServer_Use[3305425][4] = {}
	tEpicWeaponsInNewServer_Use[3305425][4]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][4]["ItemChance"] = 20
	tEpicWeaponsInNewServer_Use[3305425][4]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][4]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][4]["RewardItem"][1]["Id"] = 3305417
	tEpicWeaponsInNewServer_Use[3305425][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tEpicWeaponsInNewServer_Use[3305425][4]["GlobalId"] = 51779
	tEpicWeaponsInNewServer_Use[3305425][4]["Pos"] = 3
	tEpicWeaponsInNewServer_Use[3305425][4]["MaxData"] = 1
	tEpicWeaponsInNewServer_Use[3305425][4]["FullIndex"] = 42
	tEpicWeaponsInNewServer_Use[3305425][4]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3305425][4]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3305425][4]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3305425][4]["Log"] = "0,0,3305425,1,12000875,2,3305417,1"
	--圣灵神木碎片
	tEpicWeaponsInNewServer_Use[3305425][5] = {}
	tEpicWeaponsInNewServer_Use[3305425][5]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][5]["ItemChance"] = 100000
	tEpicWeaponsInNewServer_Use[3305425][5]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][5]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][5]["RewardItem"][1]["Id"] = 3305418
	tEpicWeaponsInNewServer_Use[3305425][5]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][5]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3305425][5]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3305425][5]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3305425][5]["Log"] = "0,0,3305425,1,12000875,2,3305418,1"
	--轮回之眼碎片
	tEpicWeaponsInNewServer_Use[3305425][6] = {}
	tEpicWeaponsInNewServer_Use[3305425][6]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][6]["ItemChance"] = 100000
	tEpicWeaponsInNewServer_Use[3305425][6]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][6]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][6]["RewardItem"][1]["Id"] = 3305419
	tEpicWeaponsInNewServer_Use[3305425][6]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][6]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3305425][6]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3305425][6]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3305425][6]["Log"] = "0,0,3305425,1,12000875,2,3305419,1"
	--神宝仙丹碎片
	tEpicWeaponsInNewServer_Use[3305425][7] = {}
	tEpicWeaponsInNewServer_Use[3305425][7]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][7]["ItemChance"] = 80000
	tEpicWeaponsInNewServer_Use[3305425][7]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][7]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][7]["RewardItem"][1]["Id"] = 3305420
	tEpicWeaponsInNewServer_Use[3305425][7]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][7]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3305425][7]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3305425][7]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3305425][7]["Log"] = "0,0,3305425,1,12000875,2,3305420,1"
	--空灵佛心碎片
	tEpicWeaponsInNewServer_Use[3305425][8] = {}
	tEpicWeaponsInNewServer_Use[3305425][8]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][8]["ItemChance"] = 80000
	tEpicWeaponsInNewServer_Use[3305425][8]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][8]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][8]["RewardItem"][1]["Id"] = 3305421
	tEpicWeaponsInNewServer_Use[3305425][8]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][8]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3305425][8]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3305425][8]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3305425][8]["Log"] = "0,0,3305425,1,12000875,2,3305421,1"
	--史诗碎片随机包
	tEpicWeaponsInNewServer_Use[3305425][9] = {}
	tEpicWeaponsInNewServer_Use[3305425][9]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][9]["ItemChance"] = 1000
	tEpicWeaponsInNewServer_Use[3305425][9]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][9]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][9]["RewardItem"][1]["Id"] = 3305422
	tEpicWeaponsInNewServer_Use[3305425][9]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][9]["GlobalId"] = 51779
	tEpicWeaponsInNewServer_Use[3305425][9]["Pos"] = 4
	tEpicWeaponsInNewServer_Use[3305425][9]["MaxData"] = 20
	tEpicWeaponsInNewServer_Use[3305425][9]["FullIndex"] = 34
	tEpicWeaponsInNewServer_Use[3305425][9]["Log"] = "0,0,3305425,1,12000875,2,3305422,1"
	--红色恶之花
	tEpicWeaponsInNewServer_Use[3305425][10] = {}
	tEpicWeaponsInNewServer_Use[3305425][10]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][10]["ItemChance"] = 50000
	tEpicWeaponsInNewServer_Use[3305425][10]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][10]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][10]["RewardItem"][1]["Id"] = 722732
	tEpicWeaponsInNewServer_Use[3305425][10]["RewardItem"][1]["Attr"] = "0 3"
	tEpicWeaponsInNewServer_Use[3305425][10]["Log"] = "0,0,3305425,1,12000875,2,722732,3"
	--白色恶之花
	tEpicWeaponsInNewServer_Use[3305425][11] = {}
	tEpicWeaponsInNewServer_Use[3305425][11]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][11]["ItemChance"] = 50000
	tEpicWeaponsInNewServer_Use[3305425][11]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][11]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][11]["RewardItem"][1]["Id"] = 722736
	tEpicWeaponsInNewServer_Use[3305425][11]["RewardItem"][1]["Attr"] = "0 3"
	tEpicWeaponsInNewServer_Use[3305425][11]["Log"] = "0,0,3305425,1,12000875,2,722736,3"
	--影之卷轴
	tEpicWeaponsInNewServer_Use[3305425][12] = {}
	tEpicWeaponsInNewServer_Use[3305425][12]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][12]["ItemChance"] = 1000
	tEpicWeaponsInNewServer_Use[3305425][12]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][12]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][12]["RewardItem"][1]["Id"] = 3004459
	tEpicWeaponsInNewServer_Use[3305425][12]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][12]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3305425][12]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3305425][12]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3305425][12]["Log"] = "0,0,3305425,1,12000875,2,3004459,1"
	--灭之卷轴
	tEpicWeaponsInNewServer_Use[3305425][13] = {}
	tEpicWeaponsInNewServer_Use[3305425][13]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][13]["ItemChance"] = 1000
	tEpicWeaponsInNewServer_Use[3305425][13]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][13]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][13]["RewardItem"][1]["Id"] = 3004460
	tEpicWeaponsInNewServer_Use[3305425][13]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][13]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3305425][13]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3305425][13]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3305425][13]["Log"] = "0,0,3305425,1,12000875,2,3004460,1"
	--绝之卷轴
	tEpicWeaponsInNewServer_Use[3305425][14] = {}
	tEpicWeaponsInNewServer_Use[3305425][14]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][14]["ItemChance"] = 1000
	tEpicWeaponsInNewServer_Use[3305425][14]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][14]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][14]["RewardItem"][1]["Id"] = 3004461
	tEpicWeaponsInNewServer_Use[3305425][14]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][14]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3305425][14]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3305425][14]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3305425][14]["Log"] = "0,0,3305425,1,12000875,2,3004461,1"
	--阴阳鬼契
	tEpicWeaponsInNewServer_Use[3305425][15] = {}
	tEpicWeaponsInNewServer_Use[3305425][15]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][15]["ItemChance"] = 3000
	tEpicWeaponsInNewServer_Use[3305425][15]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][15]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][15]["RewardItem"][1]["Id"] = 3004462
	tEpicWeaponsInNewServer_Use[3305425][15]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][15]["Log"] = "0,0,3305425,1,12000875,2,3004462,1"
	--五行勾玉
	tEpicWeaponsInNewServer_Use[3305425][16] = {}
	tEpicWeaponsInNewServer_Use[3305425][16]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][16]["ItemChance"] = 300
	tEpicWeaponsInNewServer_Use[3305425][16]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][16]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][16]["RewardItem"][1]["Id"] = 3004463
	tEpicWeaponsInNewServer_Use[3305425][16]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][16]["Log"] = "0,0,3305425,1,12000875,2,3004463,1"
	--星之砂
	tEpicWeaponsInNewServer_Use[3305425][17] = {}
	tEpicWeaponsInNewServer_Use[3305425][17]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][17]["ItemChance"] = 50000
	tEpicWeaponsInNewServer_Use[3305425][17]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][17]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][17]["RewardItem"][1]["Id"] = 3004465
	tEpicWeaponsInNewServer_Use[3305425][17]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][17]["Log"] = "0,0,3305425,1,12000875,2,3004465,1"
	--天宝灵叶
	tEpicWeaponsInNewServer_Use[3305425][18] = {}
	tEpicWeaponsInNewServer_Use[3305425][18]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][18]["ItemChance"] = 3000
	tEpicWeaponsInNewServer_Use[3305425][18]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][18]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][18]["RewardItem"][1]["Id"] = 3006013
	tEpicWeaponsInNewServer_Use[3305425][18]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][18]["Log"] = "0,0,3305425,1,12000875,2,3006013,1"
	--灵宝星晶
	tEpicWeaponsInNewServer_Use[3305425][19] = {}
	tEpicWeaponsInNewServer_Use[3305425][19]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][19]["ItemChance"] = 300
	tEpicWeaponsInNewServer_Use[3305425][19]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][19]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][19]["RewardItem"][1]["Id"] = 3006014
	tEpicWeaponsInNewServer_Use[3305425][19]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][19]["Log"] = "0,0,3305425,1,12000875,2,3006014,1"
	--阴阳鱼
	tEpicWeaponsInNewServer_Use[3305425][20] = {}
	tEpicWeaponsInNewServer_Use[3305425][20]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][20]["ItemChance"] = 50000
	tEpicWeaponsInNewServer_Use[3305425][20]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][20]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][20]["RewardItem"][1]["Id"] = 3006015
	tEpicWeaponsInNewServer_Use[3305425][20]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][20]["Log"] = "0,0,3305425,1,12000875,2,3006015,1"
	--殒命莲花卷轴
	tEpicWeaponsInNewServer_Use[3305425][21] = {}
	tEpicWeaponsInNewServer_Use[3305425][21]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][21]["ItemChance"] = 1000
	tEpicWeaponsInNewServer_Use[3305425][21]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][21]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][21]["RewardItem"][1]["Id"] = 3006017
	tEpicWeaponsInNewServer_Use[3305425][21]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][21]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3305425][21]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3305425][21]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3305425][21]["Log"] = "0,0,3305425,1,12000875,2,3006017,1"
	--重生莲花卷轴
	tEpicWeaponsInNewServer_Use[3305425][22] = {}
	tEpicWeaponsInNewServer_Use[3305425][22]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][22]["ItemChance"] = 1000
	tEpicWeaponsInNewServer_Use[3305425][22]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][22]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][22]["RewardItem"][1]["Id"] = 3006018
	tEpicWeaponsInNewServer_Use[3305425][22]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][22]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3305425][22]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3305425][22]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3305425][22]["Log"] = "0,0,3305425,1,12000875,2,3006018,1"
	--炽焰烈破卷轴
	tEpicWeaponsInNewServer_Use[3305425][23] = {}
	tEpicWeaponsInNewServer_Use[3305425][23]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][23]["ItemChance"] = 1000
	tEpicWeaponsInNewServer_Use[3305425][23]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][23]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][23]["RewardItem"][1]["Id"] = 3006019
	tEpicWeaponsInNewServer_Use[3305425][23]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][23]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3305425][23]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3305425][23]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3305425][23]["Log"] = "0,0,3305425,1,12000875,2,3006019,1"
	--水神祝福卷轴
	tEpicWeaponsInNewServer_Use[3305425][24] = {}
	tEpicWeaponsInNewServer_Use[3305425][24]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][24]["ItemChance"] = 1000
	tEpicWeaponsInNewServer_Use[3305425][24]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][24]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][24]["RewardItem"][1]["Id"] = 3006020
	tEpicWeaponsInNewServer_Use[3305425][24]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][24]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3305425][24]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3305425][24]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3305425][24]["Log"] = "0,0,3305425,1,12000875,2,3006020,1"
	--禅光宝石
	tEpicWeaponsInNewServer_Use[3305425][25] = {}
	tEpicWeaponsInNewServer_Use[3305425][25]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][25]["ItemChance"] = 3000
	tEpicWeaponsInNewServer_Use[3305425][25]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][25]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][25]["RewardItem"][1]["Id"] = 3007562
	tEpicWeaponsInNewServer_Use[3305425][25]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][25]["Log"] = "0,0,3305425,1,12000875,2,3007562,1"
	--菩提璎珞
	tEpicWeaponsInNewServer_Use[3305425][26] = {}
	tEpicWeaponsInNewServer_Use[3305425][26]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][26]["ItemChance"] = 300
	tEpicWeaponsInNewServer_Use[3305425][26]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][26]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][26]["RewardItem"][1]["Id"] = 3007563
	tEpicWeaponsInNewServer_Use[3305425][26]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][26]["Log"] = "0,0,3305425,1,12000875,2,3007563,1"
	--紫檀香
	tEpicWeaponsInNewServer_Use[3305425][27] = {}
	tEpicWeaponsInNewServer_Use[3305425][27]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][27]["ItemChance"] = 50000
	tEpicWeaponsInNewServer_Use[3305425][27]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][27]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][27]["RewardItem"][1]["Id"] = 3007565
	tEpicWeaponsInNewServer_Use[3305425][27]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][27]["Log"] = "0,0,3305425,1,12000875,2,3007565,1"
	--天王守护卷轴
	tEpicWeaponsInNewServer_Use[3305425][28] = {}
	tEpicWeaponsInNewServer_Use[3305425][28]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][28]["ItemChance"] = 1000
	tEpicWeaponsInNewServer_Use[3305425][28]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][28]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][28]["RewardItem"][1]["Id"] = 3007566
	tEpicWeaponsInNewServer_Use[3305425][28]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][28]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3305425][28]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3305425][28]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3305425][28]["Log"] = "0,0,3305425,1,12000875,2,3007566,1"
	--天王击卷轴
	tEpicWeaponsInNewServer_Use[3305425][29] = {}
	tEpicWeaponsInNewServer_Use[3305425][29]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][29]["ItemChance"] = 1000
	tEpicWeaponsInNewServer_Use[3305425][29]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][29]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][29]["RewardItem"][1]["Id"] = 3007567
	tEpicWeaponsInNewServer_Use[3305425][29]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][29]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3305425][29]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3305425][29]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3305425][29]["Log"] = "0,0,3305425,1,12000875,2,3007567,1"
	--修罗地狱卷轴
	tEpicWeaponsInNewServer_Use[3305425][30] = {}
	tEpicWeaponsInNewServer_Use[3305425][30]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][30]["ItemChance"] = 1000
	tEpicWeaponsInNewServer_Use[3305425][30]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][30]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][30]["RewardItem"][1]["Id"] = 3007568
	tEpicWeaponsInNewServer_Use[3305425][30]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][30]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3305425][30]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3305425][30]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3305425][30]["Log"] = "0,0,3305425,1,12000875,2,3007568,1"
	--灵武酬勤卷轴
	tEpicWeaponsInNewServer_Use[3305425][31] = {}
	tEpicWeaponsInNewServer_Use[3305425][31]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][31]["ItemChance"] = 40000
	tEpicWeaponsInNewServer_Use[3305425][31]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][31]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][31]["RewardItem"][1]["Id"] = 3305423
	tEpicWeaponsInNewServer_Use[3305425][31]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][31]["Log"] = "0,0,3305425,1,12000875,2,3305423,1"
	--明亮星陨石*1
	tEpicWeaponsInNewServer_Use[3305425][32] = {}
	tEpicWeaponsInNewServer_Use[3305425][32]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][32]["ItemChance"] = 30000
	tEpicWeaponsInNewServer_Use[3305425][32]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][32]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][32]["RewardItem"][1]["Id"] = 3009001
	tEpicWeaponsInNewServer_Use[3305425][32]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tEpicWeaponsInNewServer_Use[3305425][32]["Log"] = "0,0,3305425,1,12000875,2,3009001,1"
	--明亮星陨石*3
	tEpicWeaponsInNewServer_Use[3305425][33] = {}
	tEpicWeaponsInNewServer_Use[3305425][33]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][33]["ItemChance"] = 15000
	tEpicWeaponsInNewServer_Use[3305425][33]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][33]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][33]["RewardItem"][1]["Id"] = 3009001
	tEpicWeaponsInNewServer_Use[3305425][33]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tEpicWeaponsInNewServer_Use[3305425][33]["Log"] = "0,0,3305425,1,12000875,2,3009001,3"
	--100气力值
	tEpicWeaponsInNewServer_Use[3305425][34] = {}
	tEpicWeaponsInNewServer_Use[3305425][34]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][34]["ItemChance"] = 40000
	tEpicWeaponsInNewServer_Use[3305425][34]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][34]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][34]["RewardItem"][1]["Id"] = 3005309
	tEpicWeaponsInNewServer_Use[3305425][34]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][34]["Log"] = "0,0,3305425,1,12000875,2,3005309,1"
	--300气力值
	tEpicWeaponsInNewServer_Use[3305425][35] = {}
	tEpicWeaponsInNewServer_Use[3305425][35]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][35]["ItemChance"] = 10000
	tEpicWeaponsInNewServer_Use[3305425][35]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][35]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][35]["RewardItem"][1]["Id"] = 3005312
	tEpicWeaponsInNewServer_Use[3305425][35]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][35]["Log"] = "0,0,3305425,1,12000875,2,3005312,1"
	--通神丹
	tEpicWeaponsInNewServer_Use[3305425][36] = {}
	tEpicWeaponsInNewServer_Use[3305425][36]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][36]["ItemChance"] = 25000
	tEpicWeaponsInNewServer_Use[3305425][36]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][36]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][36]["RewardItem"][1]["Id"] = 3003125
	tEpicWeaponsInNewServer_Use[3305425][36]["RewardItem"][1]["Attr"] = "0 1 3"
	tEpicWeaponsInNewServer_Use[3305425][36]["Log"] = "0,0,3305425,1,12000875,2,3003125,1"
	--免费强炼丹
	tEpicWeaponsInNewServer_Use[3305425][37] = {}
	tEpicWeaponsInNewServer_Use[3305425][37]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][37]["ItemChance"] = 23100
	tEpicWeaponsInNewServer_Use[3305425][37]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][37]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][37]["RewardItem"][1]["Id"] = 3003124
	tEpicWeaponsInNewServer_Use[3305425][37]["RewardItem"][1]["Attr"] = "0 1 3"
	tEpicWeaponsInNewServer_Use[3305425][37]["Log"] = "0,0,3305425,1,12000875,2,3003124,1"
	--究极通神丹
	tEpicWeaponsInNewServer_Use[3305425][38] = {}
	tEpicWeaponsInNewServer_Use[3305425][38]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][38]["ItemChance"] = 9900
	tEpicWeaponsInNewServer_Use[3305425][38]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][38]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][38]["RewardItem"][1]["Id"] = 3003126
	tEpicWeaponsInNewServer_Use[3305425][38]["RewardItem"][1]["Attr"] = "0 1 3"
	tEpicWeaponsInNewServer_Use[3305425][38]["Log"] = "0,0,3305425,1,12000875,2,3003126,1"
	--秘制免费修炼丹
	tEpicWeaponsInNewServer_Use[3305425][39] = {}
	tEpicWeaponsInNewServer_Use[3305425][39]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][39]["ItemChance"] = 6000
	tEpicWeaponsInNewServer_Use[3305425][39]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][39]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][39]["RewardItem"][1]["Id"] = 3002926
	tEpicWeaponsInNewServer_Use[3305425][39]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][39]["Log"] = "0,0,3305425,1,12000875,2,3002926,1"
	--强效护心丹
	tEpicWeaponsInNewServer_Use[3305425][40] = {}
	tEpicWeaponsInNewServer_Use[3305425][40]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][40]["ItemChance"] = 40000
	tEpicWeaponsInNewServer_Use[3305425][40]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][40]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][40]["RewardItem"][1]["Id"] = 3002030
	tEpicWeaponsInNewServer_Use[3305425][40]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][40]["Log"] = "0,0,3305425,1,12000875,2,3002030,1"
	--赤炼石+2
	tEpicWeaponsInNewServer_Use[3305425][41] = {}
	tEpicWeaponsInNewServer_Use[3305425][41]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][41]["ItemChance"] = 40000
	tEpicWeaponsInNewServer_Use[3305425][41]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][41]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][41]["RewardItem"][1]["Id"] = 730002
	tEpicWeaponsInNewServer_Use[3305425][41]["RewardItem"][1]["Attr"] = "0 1 3"
	tEpicWeaponsInNewServer_Use[3305425][41]["Log"] = "0,0,3305425,1,12000875,2,730002,1"
	--赤炼石+3
	tEpicWeaponsInNewServer_Use[3305425][42] = {}
	tEpicWeaponsInNewServer_Use[3305425][42]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][42]["ItemChance"] = 10000
	tEpicWeaponsInNewServer_Use[3305425][42]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][42]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][42]["RewardItem"][1]["Id"] = 730003
	tEpicWeaponsInNewServer_Use[3305425][42]["RewardItem"][1]["Attr"] = "0 1 3"
	tEpicWeaponsInNewServer_Use[3305425][42]["Log"] = "0,0,3305425,1,12000875,2,730003,1"
	--海之心（赠）
	tEpicWeaponsInNewServer_Use[3305425][43] = {}
	tEpicWeaponsInNewServer_Use[3305425][43]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][43]["ItemChance"] = 20
	tEpicWeaponsInNewServer_Use[3305425][43]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][43]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][43]["RewardItem"][1]["Id"] = 3321029
	tEpicWeaponsInNewServer_Use[3305425][43]["RewardItem"][1]["Attr"] = "0 1 3"
	tEpicWeaponsInNewServer_Use[3305425][43]["GlobalId"] = 51779
	tEpicWeaponsInNewServer_Use[3305425][43]["Pos"] = 5
	tEpicWeaponsInNewServer_Use[3305425][43]["MaxData"] = 1
	tEpicWeaponsInNewServer_Use[3305425][43]["FullIndex"] = 42
	tEpicWeaponsInNewServer_Use[3305425][43]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3305425][43]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3305425][43]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3305425][43]["Log"] = "0,0,3305425,1,12000875,2,3321029,1"
	--空灵佛心碎片
	tEpicWeaponsInNewServer_Use[3305425][44] = {}
	tEpicWeaponsInNewServer_Use[3305425][44]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305425][44]["ItemChance"] = 80000
	tEpicWeaponsInNewServer_Use[3305425][44]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305425][44]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305425][44]["RewardItem"][1]["Id"] = 3321030
	tEpicWeaponsInNewServer_Use[3305425][44]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305425][44]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3305425][44]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3305425][44]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3305425][44]["Log"] = "0,0,3305425,1,12000875,2,3321030,1"
	
	--史诗武器碎片随机包
	tEpicWeaponsInNewServer_Use[3305422] = {}
	tEpicWeaponsInNewServer_Use[3305422]["ItemChanceSum"] = 10000
	--圣灵神木碎片
	tEpicWeaponsInNewServer_Use[3305422][1] = {}
	tEpicWeaponsInNewServer_Use[3305422][1]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305422][1]["ItemChance"] = 2000
	tEpicWeaponsInNewServer_Use[3305422][1]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305422][1]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305422][1]["RewardItem"][1]["Id"] = 3305418
	tEpicWeaponsInNewServer_Use[3305422][1]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305422][1]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3305422][1]["RewardEffect"]["SzObj"]  = "self"
	tEpicWeaponsInNewServer_Use[3305422][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tEpicWeaponsInNewServer_Use[3305422][1]["Log"] = "0,0,3305422,1,12000875,2,3305418,1"
	--轮回之眼碎片
	tEpicWeaponsInNewServer_Use[3305422][2] = {}
	tEpicWeaponsInNewServer_Use[3305422][2]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305422][2]["ItemChance"] = 2000
	tEpicWeaponsInNewServer_Use[3305422][2]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305422][2]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305422][2]["RewardItem"][1]["Id"] = 3305419
	tEpicWeaponsInNewServer_Use[3305422][2]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305422][2]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3305422][2]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3305422][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tEpicWeaponsInNewServer_Use[3305422][2]["Log"] = "0,0,3305422,1,12000875,2,3305419,1"
	--神宝仙丹碎片
	tEpicWeaponsInNewServer_Use[3305422][3] = {}
	tEpicWeaponsInNewServer_Use[3305422][3]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305422][3]["ItemChance"] = 2000
	tEpicWeaponsInNewServer_Use[3305422][3]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305422][3]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305422][3]["RewardItem"][1]["Id"] = 3305420
	tEpicWeaponsInNewServer_Use[3305422][3]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305422][3]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3305422][3]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3305422][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tEpicWeaponsInNewServer_Use[3305422][3]["Log"] = "0,0,3305422,1,12000875,2,3305420,1"
	--空灵佛心碎片
	tEpicWeaponsInNewServer_Use[3305422][4] = {}
	tEpicWeaponsInNewServer_Use[3305422][4]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305422][4]["ItemChance"] = 2000
	tEpicWeaponsInNewServer_Use[3305422][4]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305422][4]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305422][4]["RewardItem"][1]["Id"] = 3305421
	tEpicWeaponsInNewServer_Use[3305422][4]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305422][4]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3305422][4]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3305422][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tEpicWeaponsInNewServer_Use[3305422][4]["Log"] = "0,0,3305422,1,12000875,2,3305421,1"
	--海之心碎片
	tEpicWeaponsInNewServer_Use[3305422][5] = {}
	tEpicWeaponsInNewServer_Use[3305422][5]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3305422][5]["ItemChance"] = 2000
	tEpicWeaponsInNewServer_Use[3305422][5]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305422][5]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305422][5]["RewardItem"][1]["Id"] = 3321030
	tEpicWeaponsInNewServer_Use[3305422][5]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305422][5]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3305422][5]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3305422][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tEpicWeaponsInNewServer_Use[3305422][5]["Log"] = "0,0,3305422,1,12000875,2,3321030,1"
	--史诗武器道具碎片随机包
	tEpicWeaponsInNewServer_Use[3306773] = {}
	tEpicWeaponsInNewServer_Use[3306773]["ItemChanceSum"] = 10000
	--圣灵神木碎片
	tEpicWeaponsInNewServer_Use[3306773][1] = {}
	tEpicWeaponsInNewServer_Use[3306773][1]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3306773][1]["ItemChance"] = 2000
	tEpicWeaponsInNewServer_Use[3306773][1]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3306773][1]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3306773][1]["RewardItem"][1]["Id"] = 3305418
	tEpicWeaponsInNewServer_Use[3306773][1]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3306773][1]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3306773][1]["RewardEffect"]["SzObj"]  = "self"
	tEpicWeaponsInNewServer_Use[3306773][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tEpicWeaponsInNewServer_Use[3306773][1]["Log"] = "0,0,3306773,1,12000875,2,3305418,1"
	--轮回之眼碎片
	tEpicWeaponsInNewServer_Use[3306773][2] = {}
	tEpicWeaponsInNewServer_Use[3306773][2]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3306773][2]["ItemChance"] = 2000
	tEpicWeaponsInNewServer_Use[3306773][2]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3306773][2]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3306773][2]["RewardItem"][1]["Id"] = 3305419
	tEpicWeaponsInNewServer_Use[3306773][2]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3306773][2]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3306773][2]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3306773][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tEpicWeaponsInNewServer_Use[3306773][2]["Log"] = "0,0,3306773,1,12000875,2,3305419,1"
	--神宝仙丹碎片
	tEpicWeaponsInNewServer_Use[3306773][3] = {}
	tEpicWeaponsInNewServer_Use[3306773][3]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3306773][3]["ItemChance"] = 2000
	tEpicWeaponsInNewServer_Use[3306773][3]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3306773][3]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3306773][3]["RewardItem"][1]["Id"] = 3305420
	tEpicWeaponsInNewServer_Use[3306773][3]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3306773][3]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3306773][3]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3306773][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tEpicWeaponsInNewServer_Use[3306773][3]["Log"] = "0,0,3306773,1,12000875,2,3305420,1"
	--空灵佛心碎片
	tEpicWeaponsInNewServer_Use[3306773][4] = {}
	tEpicWeaponsInNewServer_Use[3306773][4]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3306773][4]["ItemChance"] = 2000
	tEpicWeaponsInNewServer_Use[3306773][4]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3306773][4]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3306773][4]["RewardItem"][1]["Id"] = 3305421
	tEpicWeaponsInNewServer_Use[3306773][4]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3306773][4]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3306773][4]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3306773][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tEpicWeaponsInNewServer_Use[3306773][4]["Log"] = "0,0,3306773,1,12000875,2,3305421,1"
	--海之心碎片
	tEpicWeaponsInNewServer_Use[3306773][5] = {}
	tEpicWeaponsInNewServer_Use[3306773][5]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3306773][5]["ItemChance"] = 2000
	tEpicWeaponsInNewServer_Use[3306773][5]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3306773][5]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3306773][5]["RewardItem"][1]["Id"] = 3321030
	tEpicWeaponsInNewServer_Use[3306773][5]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3306773][5]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3306773][5]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3306773][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tEpicWeaponsInNewServer_Use[3306773][5]["Log"] = "0,0,3306773,1,12000875,2,3321030,1"
	--史诗武器道具随机包
	tEpicWeaponsInNewServer_Use[3306779] = {}
	tEpicWeaponsInNewServer_Use[3306779]["ItemChanceSum"] = 10000
	--圣灵神木
	tEpicWeaponsInNewServer_Use[3306779][1] = {}
	tEpicWeaponsInNewServer_Use[3306779][1]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3306779][1]["ItemChance"] = 2000
	tEpicWeaponsInNewServer_Use[3306779][1]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3306779][1]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3306779][1]["RewardItem"][1]["Id"] = 3305414
	tEpicWeaponsInNewServer_Use[3306779][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tEpicWeaponsInNewServer_Use[3306779][1]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3306779][1]["RewardEffect"]["SzObj"]  = "self"
	tEpicWeaponsInNewServer_Use[3306779][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tEpicWeaponsInNewServer_Use[3306779][1]["Log"] = "0,0,3306779,1,12000875,2,3305414,1"
	--轮回之眼
	tEpicWeaponsInNewServer_Use[3306779][2] = {}
	tEpicWeaponsInNewServer_Use[3306779][2]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3306779][2]["ItemChance"] = 2000
	tEpicWeaponsInNewServer_Use[3306779][2]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3306779][2]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3306779][2]["RewardItem"][1]["Id"] = 3305415
	tEpicWeaponsInNewServer_Use[3306779][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tEpicWeaponsInNewServer_Use[3306779][2]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3306779][2]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3306779][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tEpicWeaponsInNewServer_Use[3306779][2]["Log"] = "0,0,3306779,1,12000875,2,3305415,1"
	--神宝仙丹
	tEpicWeaponsInNewServer_Use[3306779][3] = {}
	tEpicWeaponsInNewServer_Use[3306779][3]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3306779][3]["ItemChance"] = 2000
	tEpicWeaponsInNewServer_Use[3306779][3]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3306779][3]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3306779][3]["RewardItem"][1]["Id"] = 3305416
	tEpicWeaponsInNewServer_Use[3306779][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tEpicWeaponsInNewServer_Use[3306779][3]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3306779][3]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3306779][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tEpicWeaponsInNewServer_Use[3306779][3]["Log"] = "0,0,3306779,1,12000875,2,3305416,1"
	--空灵佛心
	tEpicWeaponsInNewServer_Use[3306779][4] = {}
	tEpicWeaponsInNewServer_Use[3306779][4]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3306779][4]["ItemChance"] = 2000
	tEpicWeaponsInNewServer_Use[3306779][4]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3306779][4]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3306779][4]["RewardItem"][1]["Id"] = 3305417
	tEpicWeaponsInNewServer_Use[3306779][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tEpicWeaponsInNewServer_Use[3306779][4]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3306779][4]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3306779][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tEpicWeaponsInNewServer_Use[3306779][4]["Log"] = "0,0,3306779,1,12000875,2,3305417,1"
	--海之心
	tEpicWeaponsInNewServer_Use[3306779][5] = {}
	tEpicWeaponsInNewServer_Use[3306779][5]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3306779][5]["ItemChance"] = 2000
	tEpicWeaponsInNewServer_Use[3306779][5]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3306779][5]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3306779][5]["RewardItem"][1]["Id"] = 3321029
	tEpicWeaponsInNewServer_Use[3306779][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tEpicWeaponsInNewServer_Use[3306779][5]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3306779][5]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3306779][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tEpicWeaponsInNewServer_Use[3306779][5]["Log"] = "0,0,3306779,1,12000875,2,3321029,1"
	
	--史诗武器道具幸运箱
	tEpicWeaponsInNewServer_Use[3307540] = {}
	tEpicWeaponsInNewServer_Use[3307540]["ItemChanceSum"] = 10000
	--圣灵神木
	tEpicWeaponsInNewServer_Use[3307540][1] = {}
	tEpicWeaponsInNewServer_Use[3307540][1]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3307540][1]["ItemChance"] = 2000
	tEpicWeaponsInNewServer_Use[3307540][1]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3307540][1]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3307540][1]["RewardItem"][1]["Id"] = 3305414
	tEpicWeaponsInNewServer_Use[3307540][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tEpicWeaponsInNewServer_Use[3307540][1]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3307540][1]["RewardEffect"]["SzObj"]  = "self"
	tEpicWeaponsInNewServer_Use[3307540][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tEpicWeaponsInNewServer_Use[3307540][1]["Log"] = "0,0,3307540,1,12000875,2,3305414,1"
	--轮回之眼
	tEpicWeaponsInNewServer_Use[3307540][2] = {}
	tEpicWeaponsInNewServer_Use[3307540][2]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3307540][2]["ItemChance"] = 2000
	tEpicWeaponsInNewServer_Use[3307540][2]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3307540][2]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3307540][2]["RewardItem"][1]["Id"] = 3305415
	tEpicWeaponsInNewServer_Use[3307540][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tEpicWeaponsInNewServer_Use[3307540][2]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3307540][2]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3307540][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tEpicWeaponsInNewServer_Use[3307540][2]["Log"] = "0,0,3307540,1,12000875,2,3305415,1"
	--神宝仙丹
	tEpicWeaponsInNewServer_Use[3307540][3] = {}
	tEpicWeaponsInNewServer_Use[3307540][3]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3307540][3]["ItemChance"] = 2000
	tEpicWeaponsInNewServer_Use[3307540][3]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3307540][3]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3307540][3]["RewardItem"][1]["Id"] = 3305416
	tEpicWeaponsInNewServer_Use[3307540][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tEpicWeaponsInNewServer_Use[3307540][3]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3307540][3]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3307540][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tEpicWeaponsInNewServer_Use[3307540][3]["Log"] = "0,0,3307540,1,12000875,2,3305416,1"
	--空灵佛心
	tEpicWeaponsInNewServer_Use[3307540][4] = {}
	tEpicWeaponsInNewServer_Use[3307540][4]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3307540][4]["ItemChance"] = 2000
	tEpicWeaponsInNewServer_Use[3307540][4]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3307540][4]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3307540][4]["RewardItem"][1]["Id"] = 3305417
	tEpicWeaponsInNewServer_Use[3307540][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tEpicWeaponsInNewServer_Use[3307540][4]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3307540][4]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3307540][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tEpicWeaponsInNewServer_Use[3307540][4]["Log"] = "0,0,3307540,1,12000875,2,3305417,1"
	--海之心
	tEpicWeaponsInNewServer_Use[3307540][5] = {}
	tEpicWeaponsInNewServer_Use[3307540][5]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3307540][5]["ItemChance"] = 2000
	tEpicWeaponsInNewServer_Use[3307540][5]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3307540][5]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3307540][5]["RewardItem"][1]["Id"] = 3321029
	tEpicWeaponsInNewServer_Use[3307540][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tEpicWeaponsInNewServer_Use[3307540][5]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3307540][5]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3307540][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tEpicWeaponsInNewServer_Use[3307540][5]["Log"] = "0,0,3307540,1,12000875,2,3321029,1"
	--洗赠
	--圣灵神木
	tEpicWeaponsInNewServer_Use[3305414] = {}
	tEpicWeaponsInNewServer_Use[3305414]["RequireNum"] = 27
	tEpicWeaponsInNewServer_Use[3305414]["RequireItem"] = 3003336
	tEpicWeaponsInNewServer_Use[3305414]["DeleteItem"] = {}
	tEpicWeaponsInNewServer_Use[3305414]["DeleteItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305414]["DeleteItem"][1]["Id"] = 3305414
	tEpicWeaponsInNewServer_Use[3305414]["DeleteItem"][1]["ItemNum"] = 1
	tEpicWeaponsInNewServer_Use[3305414]["DeleteItem"][2] = {}
	tEpicWeaponsInNewServer_Use[3305414]["DeleteItem"][2]["Id"] = 3003336
	tEpicWeaponsInNewServer_Use[3305414]["DeleteItem"][2]["ItemNum"] = 27
	tEpicWeaponsInNewServer_Use[3305414]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305414]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305414]["RewardItem"][1]["Id"] = 3003660
	tEpicWeaponsInNewServer_Use[3305414]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305414]["Talk"] = tEpicWeaponsInNewServer_Text[3305414]["TalkToClear"]
	tEpicWeaponsInNewServer_Use[3305414]["LogId"] = 12000875
	--轮回之眼
	tEpicWeaponsInNewServer_Use[3305415] = {}
	tEpicWeaponsInNewServer_Use[3305415]["RequireNum"] = 50
	tEpicWeaponsInNewServer_Use[3305415]["RequireItem"] = 3004462
	tEpicWeaponsInNewServer_Use[3305415]["DeleteItem"] = {}
	tEpicWeaponsInNewServer_Use[3305415]["DeleteItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305415]["DeleteItem"][1]["Id"] = 3305415
	tEpicWeaponsInNewServer_Use[3305415]["DeleteItem"][1]["ItemNum"] = 1
	tEpicWeaponsInNewServer_Use[3305415]["DeleteItem"][2] = {}
	tEpicWeaponsInNewServer_Use[3305415]["DeleteItem"][2]["Id"] = 3004462
	tEpicWeaponsInNewServer_Use[3305415]["DeleteItem"][2]["ItemNum"] = 50
	tEpicWeaponsInNewServer_Use[3305415]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305415]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305415]["RewardItem"][1]["Id"] = 3004464
	tEpicWeaponsInNewServer_Use[3305415]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305415]["Talk"] = tEpicWeaponsInNewServer_Text[3305415]["TalkToClear"]
	tEpicWeaponsInNewServer_Use[3305415]["LogId"] = 12000875
	--神宝仙丹
	tEpicWeaponsInNewServer_Use[3305416] = {}
	tEpicWeaponsInNewServer_Use[3305416]["RequireNum"] = 50
	tEpicWeaponsInNewServer_Use[3305416]["RequireItem"] = 3006013
	tEpicWeaponsInNewServer_Use[3305416]["DeleteItem"] = {}
	tEpicWeaponsInNewServer_Use[3305416]["DeleteItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305416]["DeleteItem"][1]["Id"] = 3305416
	tEpicWeaponsInNewServer_Use[3305416]["DeleteItem"][1]["ItemNum"] = 1
	tEpicWeaponsInNewServer_Use[3305416]["DeleteItem"][2] = {}
	tEpicWeaponsInNewServer_Use[3305416]["DeleteItem"][2]["Id"] = 3006013
	tEpicWeaponsInNewServer_Use[3305416]["DeleteItem"][2]["ItemNum"] = 50
	tEpicWeaponsInNewServer_Use[3305416]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305416]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305416]["RewardItem"][1]["Id"] = 3006016
	tEpicWeaponsInNewServer_Use[3305416]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305416]["Talk"] = tEpicWeaponsInNewServer_Text[3305416]["TalkToClear"]
	tEpicWeaponsInNewServer_Use[3305416]["LogId"] = 12000875
	--空灵佛心
	tEpicWeaponsInNewServer_Use[3305417] = {}
	tEpicWeaponsInNewServer_Use[3305417]["RequireNum"] = 50
	tEpicWeaponsInNewServer_Use[3305417]["RequireItem"] = 3007562
	tEpicWeaponsInNewServer_Use[3305417]["DeleteItem"] = {}
	tEpicWeaponsInNewServer_Use[3305417]["DeleteItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305417]["DeleteItem"][1]["Id"] = 3305417
	tEpicWeaponsInNewServer_Use[3305417]["DeleteItem"][1]["ItemNum"] = 1
	tEpicWeaponsInNewServer_Use[3305417]["DeleteItem"][2] = {}
	tEpicWeaponsInNewServer_Use[3305417]["DeleteItem"][2]["Id"] = 3007562
	tEpicWeaponsInNewServer_Use[3305417]["DeleteItem"][2]["ItemNum"] = 50
	tEpicWeaponsInNewServer_Use[3305417]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3305417]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3305417]["RewardItem"][1]["Id"] = 3007564
	tEpicWeaponsInNewServer_Use[3305417]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3305417]["Talk"] = tEpicWeaponsInNewServer_Text[3305417]["TalkToClear"]
	tEpicWeaponsInNewServer_Use[3305417]["LogId"] = 12000875
	--海之心
	tEpicWeaponsInNewServer_Use[3321029] = {}
	tEpicWeaponsInNewServer_Use[3321029]["RequireNum"] = 50
	tEpicWeaponsInNewServer_Use[3321029]["RequireItem"] = 3307450
	tEpicWeaponsInNewServer_Use[3321029]["DeleteItem"] = {}
	tEpicWeaponsInNewServer_Use[3321029]["DeleteItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3321029]["DeleteItem"][1]["Id"] = 3321029
	tEpicWeaponsInNewServer_Use[3321029]["DeleteItem"][1]["ItemNum"] = 1
	tEpicWeaponsInNewServer_Use[3321029]["DeleteItem"][2] = {}
	tEpicWeaponsInNewServer_Use[3321029]["DeleteItem"][2]["Id"] = 3307450
	tEpicWeaponsInNewServer_Use[3321029]["DeleteItem"][2]["ItemNum"] = 50
	tEpicWeaponsInNewServer_Use[3321029]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3321029]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3321029]["RewardItem"][1]["Id"] = 3307449	
	tEpicWeaponsInNewServer_Use[3321029]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3321029]["Talk"] = tEpicWeaponsInNewServer_Text[3321029]["TalkToClear"]
	tEpicWeaponsInNewServer_Use[3321029]["LogId"] = 12000875
	
	--史诗转盘1
	tEpicWeaponsInNewServer_Use[3307453] = {}
	tEpicWeaponsInNewServer_Use[3307453]["ItemChanceSum"] = 100000
	--气力值200改为气力值2000
	tEpicWeaponsInNewServer_Use[3307453][1] = {}
	tEpicWeaponsInNewServer_Use[3307453][1]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3307453][1]["ItemChance"] = 20000
	tEpicWeaponsInNewServer_Use[3307453][1]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3307453][1]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3307453][1]["RewardItem"][1]["Id"] = 3001844
	tEpicWeaponsInNewServer_Use[3307453][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tEpicWeaponsInNewServer_Use[3307453][1]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3307453][1]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3307453][1]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3307453][1]["LogId"] = 12000875
	--微光星陨石*5改为明亮星陨石*1
	tEpicWeaponsInNewServer_Use[3307453][2] = {}
	tEpicWeaponsInNewServer_Use[3307453][2]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3307453][2]["ItemChance"] = 20000
	tEpicWeaponsInNewServer_Use[3307453][2]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3307453][2]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3307453][2]["RewardItem"][1]["Id"] = 3009001
	tEpicWeaponsInNewServer_Use[3307453][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tEpicWeaponsInNewServer_Use[3307453][2]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3307453][2]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3307453][2]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3307453][2]["LogId"] = 12000875
	--+2赤炼石赠*2改为+3赤炼石赠*2
	tEpicWeaponsInNewServer_Use[3307453][3] = {}
	tEpicWeaponsInNewServer_Use[3307453][3]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3307453][3]["ItemChance"] = 13000
	tEpicWeaponsInNewServer_Use[3307453][3]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3307453][3]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3307453][3]["RewardItem"][1]["Id"] = 730003
	tEpicWeaponsInNewServer_Use[3307453][3]["RewardItem"][1]["Attr"] = "0 2 3"
	tEpicWeaponsInNewServer_Use[3307453][3]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3307453][3]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3307453][3]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3307453][3]["LogId"] = 12000875
	--原+2马匹赠*2改为人参果*2改为明亮星陨石*2
	tEpicWeaponsInNewServer_Use[3307453][4] = {}
	tEpicWeaponsInNewServer_Use[3307453][4]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3307453][4]["ItemChance"] = 13000
	tEpicWeaponsInNewServer_Use[3307453][4]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3307453][4]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3307453][4]["RewardItem"][1]["Id"] = 3009001
	tEpicWeaponsInNewServer_Use[3307453][4]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tEpicWeaponsInNewServer_Use[3307453][4]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3307453][4]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3307453][4]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3307453][4]["LogId"] = 12000875
	--明亮星陨石*1改为3改为明亮星陨石*5
	tEpicWeaponsInNewServer_Use[3307453][5] = {}
	tEpicWeaponsInNewServer_Use[3307453][5]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3307453][5]["ItemChance"] = 13000
	tEpicWeaponsInNewServer_Use[3307453][5]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3307453][5]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3307453][5]["RewardItem"][1]["Id"] = 3009001
	tEpicWeaponsInNewServer_Use[3307453][5]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tEpicWeaponsInNewServer_Use[3307453][5]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3307453][5]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3307453][5]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3307453][5]["LogId"] = 12000875
	--气力值500改为+5赤练石赠*1
	tEpicWeaponsInNewServer_Use[3307453][6] = {}
	tEpicWeaponsInNewServer_Use[3307453][6]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3307453][6]["ItemChance"] = 1000
	tEpicWeaponsInNewServer_Use[3307453][6]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3307453][6]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3307453][6]["RewardItem"][1]["Id"] = 730005
	tEpicWeaponsInNewServer_Use[3307453][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tEpicWeaponsInNewServer_Use[3307453][6]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3307453][6]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3307453][6]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3307453][6]["LogId"] = 12000875
	--黄色神纹精粹赠*4改为20改为黄色神纹精粹赠*50
	tEpicWeaponsInNewServer_Use[3307453][7] = {}
	tEpicWeaponsInNewServer_Use[3307453][7]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3307453][7]["ItemChance"] = 20000
	tEpicWeaponsInNewServer_Use[3307453][7]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3307453][7]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3307453][7]["RewardItem"][1]["Id"] = 4050001
	tEpicWeaponsInNewServer_Use[3307453][7]["RewardItem"][1]["Attr"] = "0 50 3"
	tEpicWeaponsInNewServer_Use[3307453][7]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3307453][7]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3307453][7]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3307453][7]["LogId"] = 12000875
	
	--史诗转盘2
	tEpicWeaponsInNewServer_Use[3307454] = {}
	tEpicWeaponsInNewServer_Use[3307454]["ItemChanceSum"] = 100000
	--气力值200改为气力值2000
	tEpicWeaponsInNewServer_Use[3307454][1] = {}
	tEpicWeaponsInNewServer_Use[3307454][1]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3307454][1]["ItemChance"] = 20000
	tEpicWeaponsInNewServer_Use[3307454][1]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3307454][1]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3307454][1]["RewardItem"][1]["Id"] = 3001844
	tEpicWeaponsInNewServer_Use[3307454][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tEpicWeaponsInNewServer_Use[3307454][1]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3307454][1]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3307454][1]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3307454][1]["LogId"] = 12000875
	--微光星陨石*5改为明亮星陨石*1
	tEpicWeaponsInNewServer_Use[3307454][2] = {}
	tEpicWeaponsInNewServer_Use[3307454][2]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3307454][2]["ItemChance"] = 20000
	tEpicWeaponsInNewServer_Use[3307454][2]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3307454][2]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3307454][2]["RewardItem"][1]["Id"] = 3009001
	tEpicWeaponsInNewServer_Use[3307454][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tEpicWeaponsInNewServer_Use[3307454][2]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3307454][2]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3307454][2]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3307454][2]["LogId"] = 12000875
	--+2赤炼石赠*2改为+3赤炼石赠*2
	tEpicWeaponsInNewServer_Use[3307454][3] = {}
	tEpicWeaponsInNewServer_Use[3307454][3]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3307454][3]["ItemChance"] = 10000
	tEpicWeaponsInNewServer_Use[3307454][3]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3307454][3]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3307454][3]["RewardItem"][1]["Id"] = 730003
	tEpicWeaponsInNewServer_Use[3307454][3]["RewardItem"][1]["Attr"] = "0 2 3"
	tEpicWeaponsInNewServer_Use[3307454][3]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3307454][3]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3307454][3]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3307454][3]["LogId"] = 12000875
	--原+2马匹赠*2改为人参果*2改为明亮星陨石*2
	tEpicWeaponsInNewServer_Use[3307454][4] = {}
	tEpicWeaponsInNewServer_Use[3307454][4]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3307454][4]["ItemChance"] = 10000
	tEpicWeaponsInNewServer_Use[3307454][4]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3307454][4]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3307454][4]["RewardItem"][1]["Id"] = 3009001
	tEpicWeaponsInNewServer_Use[3307454][4]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tEpicWeaponsInNewServer_Use[3307454][4]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3307454][4]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3307454][4]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3307454][4]["LogId"] = 12000875
	--明亮星陨石*1改为3改为明亮星陨石*5
	tEpicWeaponsInNewServer_Use[3307454][5] = {}
	tEpicWeaponsInNewServer_Use[3307454][5]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3307454][5]["ItemChance"] = 10000
	tEpicWeaponsInNewServer_Use[3307454][5]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3307454][5]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3307454][5]["RewardItem"][1]["Id"] = 3009001
	tEpicWeaponsInNewServer_Use[3307454][5]["RewardItem"][1]["Attr"] = "0 5 0 2880 1"
	tEpicWeaponsInNewServer_Use[3307454][5]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3307454][5]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3307454][5]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3307454][5]["LogId"] = 12000875
	--气力值500改为+5赤练石赠*1
	tEpicWeaponsInNewServer_Use[3307454][6] = {}
	tEpicWeaponsInNewServer_Use[3307454][6]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3307454][6]["ItemChance"] = 9950
	tEpicWeaponsInNewServer_Use[3307454][6]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3307454][6]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3307454][6]["RewardItem"][1]["Id"] = 730005
	tEpicWeaponsInNewServer_Use[3307454][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tEpicWeaponsInNewServer_Use[3307454][6]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3307454][6]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3307454][6]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3307454][6]["LogId"] = 12000875
	--黄色神纹精粹赠*4改为20改为黄色神纹精粹赠*50
	tEpicWeaponsInNewServer_Use[3307454][7] = {}
	tEpicWeaponsInNewServer_Use[3307454][7]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3307454][7]["ItemChance"] = 20000
	tEpicWeaponsInNewServer_Use[3307454][7]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3307454][7]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3307454][7]["RewardItem"][1]["Id"] = 4050001
	tEpicWeaponsInNewServer_Use[3307454][7]["RewardItem"][1]["Attr"] = "0 50 3"
	tEpicWeaponsInNewServer_Use[3307454][7]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3307454][7]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3307454][7]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3307454][7]["LogId"] = 12000875
	--随机史诗武器道具包
	tEpicWeaponsInNewServer_Use[3307454][8] = {}
	tEpicWeaponsInNewServer_Use[3307454][8]["RandomItemChanceType"] = 2
	tEpicWeaponsInNewServer_Use[3307454][8]["ItemChance"] = 50
	tEpicWeaponsInNewServer_Use[3307454][8]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use[3307454][8]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use[3307454][8]["RewardItem"][1]["Id"] = 3307540
	tEpicWeaponsInNewServer_Use[3307454][8]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use[3307454][8]["GlobalId"] = 52039
	tEpicWeaponsInNewServer_Use[3307454][8]["Pos"] = 1
	tEpicWeaponsInNewServer_Use[3307454][8]["MaxData"] = 1
	tEpicWeaponsInNewServer_Use[3307454][8]["FullIndex"] = 7
	tEpicWeaponsInNewServer_Use[3307454][8]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_Use[3307454][8]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_Use[3307454][8]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Use[3307454][8]["LogId"] = 12000875
	
	--获得神兵灵魄
	tEpicWeaponsInNewServer_Use["EpicSoul"] = {}
	tEpicWeaponsInNewServer_Use["EpicSoul"]["RewardItem"] = {}
	tEpicWeaponsInNewServer_Use["EpicSoul"]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_Use["EpicSoul"]["RewardItem"][1]["Id"] = 3305425
	tEpicWeaponsInNewServer_Use["EpicSoul"]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_Use["EpicSoul"]["EventType"] = 167
	tEpicWeaponsInNewServer_Use["EpicSoul"]["DataType"] = 62
	tEpicWeaponsInNewServer_Use["EpicSoul"]["RewardData"] = 5
	tEpicWeaponsInNewServer_Use["EpicSoul"]["RewardDelay"] = 1
	tEpicWeaponsInNewServer_Use["EpicSoul"]["RewardTimeType"] = 4
	tEpicWeaponsInNewServer_Use["EpicSoul"]["HaveReceive"] = tEpicWeaponsInNewServer_Text["KillBoss"]["HaveReceive"]
	tEpicWeaponsInNewServer_Use["EpicSoul"]["LogId"] = 12000875
local tEpicWeaponsInNewServer_KillMonster = {}
	tEpicWeaponsInNewServer_KillMonster["RewardItem"] = {}
	tEpicWeaponsInNewServer_KillMonster["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_KillMonster["RewardItem"][1]["Id"] = 3305426
	tEpicWeaponsInNewServer_KillMonster["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_KillMonster["EventType"] = 167
	tEpicWeaponsInNewServer_KillMonster["DataType"] = 61
	tEpicWeaponsInNewServer_KillMonster["RewardData"] = 100
	tEpicWeaponsInNewServer_KillMonster["RewardDelay"] = 1
	tEpicWeaponsInNewServer_KillMonster["RewardTimeType"] = 4
	tEpicWeaponsInNewServer_KillMonster["HaveReceive"] = tEpicWeaponsInNewServer_Text["KillMonster"]["HaveReceive"]
	--tEpicWeaponsInNewServer_KillMonster["Talk"] = ""
	tEpicWeaponsInNewServer_KillMonster["LogId"] = 12000875
local tEpicWeaponsInNewServer_KillBoss = {}
	tEpicWeaponsInNewServer_KillBoss["RewardItem"] = {}
	tEpicWeaponsInNewServer_KillBoss["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_KillBoss["RewardItem"][1]["Id"] = 3305425
	tEpicWeaponsInNewServer_KillBoss["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_KillBoss["EventType"] = 167
	tEpicWeaponsInNewServer_KillBoss["DataType"] = 63
	tEpicWeaponsInNewServer_KillBoss["RewardData"] = 5
	tEpicWeaponsInNewServer_KillBoss["RewardDelay"] = 1
	tEpicWeaponsInNewServer_KillBoss["RewardTimeType"] = 4
	tEpicWeaponsInNewServer_KillBoss["HaveReceive"] = tEpicWeaponsInNewServer_Text["KillBoss"]["HaveReceive"]
	--tEpicWeaponsInNewServer_KillBoss["Talk"] = ""
	tEpicWeaponsInNewServer_KillBoss["LogId"] = 12000875
--使用史诗武器道具（赠）
local tEpicWeaponsInNewServer_UseEpicItem = {}
	--圣灵神木
	tEpicWeaponsInNewServer_UseEpicItem[3305414] = {}
	tEpicWeaponsInNewServer_UseEpicItem[3305414]["NeedPro1"] = 10
	tEpicWeaponsInNewServer_UseEpicItem[3305414]["NeedPro2"] = 15
	tEpicWeaponsInNewServer_UseEpicItem[3305414]["WeaponSubType"] = 614
	tEpicWeaponsInNewServer_UseEpicItem[3305414]["EquipPos"] = {}
	tEpicWeaponsInNewServer_UseEpicItem[3305414]["EquipPos"][1] = 4
	tEpicWeaponsInNewServer_UseEpicItem[3305414]["EquipPos"][2] = 5
	tEpicWeaponsInNewServer_UseEpicItem[3305414]["EquipCheckType"] = {}
	tEpicWeaponsInNewServer_UseEpicItem[3305414]["EquipCheckType"][1] = {}
	tEpicWeaponsInNewServer_UseEpicItem[3305414]["EquipCheckType"][1][1] = 410
	tEpicWeaponsInNewServer_UseEpicItem[3305414]["EquipCheckType"][1][2] = 420
	tEpicWeaponsInNewServer_UseEpicItem[3305414]["EquipCheckType"][1][3] = 430
	tEpicWeaponsInNewServer_UseEpicItem[3305414]["EquipCheckType"][1][4] = 450
	tEpicWeaponsInNewServer_UseEpicItem[3305414]["EquipCheckType"][1][5] = 460
	tEpicWeaponsInNewServer_UseEpicItem[3305414]["EquipCheckType"][1][6] = 480
	tEpicWeaponsInNewServer_UseEpicItem[3305414]["EquipCheckType"][1][7] = 481
	tEpicWeaponsInNewServer_UseEpicItem[3305414]["EquipCheckType"][1][8] = 490
	tEpicWeaponsInNewServer_UseEpicItem[3305414]["EquipCheckType"][1][9] = 440
	tEpicWeaponsInNewServer_UseEpicItem[3305414]["EquipCheckType"][2] = {}
	tEpicWeaponsInNewServer_UseEpicItem[3305414]["EquipCheckType"][2][1] = 410
	tEpicWeaponsInNewServer_UseEpicItem[3305414]["EquipCheckType"][2][2] = 420
	tEpicWeaponsInNewServer_UseEpicItem[3305414]["EquipCheckType"][2][3] = 430
	tEpicWeaponsInNewServer_UseEpicItem[3305414]["EquipCheckType"][2][4] = 450
	tEpicWeaponsInNewServer_UseEpicItem[3305414]["EquipCheckType"][2][5] = 460
	tEpicWeaponsInNewServer_UseEpicItem[3305414]["EquipCheckType"][2][6] = 480
	tEpicWeaponsInNewServer_UseEpicItem[3305414]["EquipCheckType"][2][7] = 481
	tEpicWeaponsInNewServer_UseEpicItem[3305414]["EquipCheckType"][2][8] = 490
	tEpicWeaponsInNewServer_UseEpicItem[3305414]["EquipCheckType"][2][9] = 440
	--轮回之眼
	tEpicWeaponsInNewServer_UseEpicItem[3305415] = {}
	tEpicWeaponsInNewServer_UseEpicItem[3305415]["NeedPro1"] = 50
	tEpicWeaponsInNewServer_UseEpicItem[3305415]["NeedPro2"] = 55
	tEpicWeaponsInNewServer_UseEpicItem[3305415]["WeaponSubType"] = 616
	tEpicWeaponsInNewServer_UseEpicItem[3305415]["EquipPos"] = {}
	tEpicWeaponsInNewServer_UseEpicItem[3305415]["EquipPos"][1] = 4
	tEpicWeaponsInNewServer_UseEpicItem[3305415]["EquipPos"][2] = 5
	tEpicWeaponsInNewServer_UseEpicItem[3305415]["EquipCheckType"] = {}
	tEpicWeaponsInNewServer_UseEpicItem[3305415]["EquipCheckType"][1] = {}
	tEpicWeaponsInNewServer_UseEpicItem[3305415]["EquipCheckType"][1][1] = 601
	tEpicWeaponsInNewServer_UseEpicItem[3305415]["EquipCheckType"][2] = {}
	tEpicWeaponsInNewServer_UseEpicItem[3305415]["EquipCheckType"][2][1] = 601
	--神宝仙丹
	tEpicWeaponsInNewServer_UseEpicItem[3305416] = {}
	tEpicWeaponsInNewServer_UseEpicItem[3305416]["NeedPro1"] = 100
	tEpicWeaponsInNewServer_UseEpicItem[3305416]["NeedPro2"] = 145
	tEpicWeaponsInNewServer_UseEpicItem[3305416]["WeaponSubType"] = 620
	tEpicWeaponsInNewServer_UseEpicItem[3305416]["EquipPos"] = {}
	tEpicWeaponsInNewServer_UseEpicItem[3305416]["EquipPos"][1] = 4
	tEpicWeaponsInNewServer_UseEpicItem[3305416]["EquipCheckType"] = {}
	tEpicWeaponsInNewServer_UseEpicItem[3305416]["EquipCheckType"][1] = {}
	tEpicWeaponsInNewServer_UseEpicItem[3305416]["EquipCheckType"][1][1] = 421
	--空灵佛心
	tEpicWeaponsInNewServer_UseEpicItem[3305417] = {}
	tEpicWeaponsInNewServer_UseEpicItem[3305417]["NeedPro1"] = 60
	tEpicWeaponsInNewServer_UseEpicItem[3305417]["NeedPro2"] = 65
	tEpicWeaponsInNewServer_UseEpicItem[3305417]["WeaponSubType"] = 622
	tEpicWeaponsInNewServer_UseEpicItem[3305417]["EquipPos"] = {}
	tEpicWeaponsInNewServer_UseEpicItem[3305417]["EquipPos"][1] = 4
	tEpicWeaponsInNewServer_UseEpicItem[3305417]["EquipPos"][2] = 5
	tEpicWeaponsInNewServer_UseEpicItem[3305417]["EquipCheckType"] = {}
	tEpicWeaponsInNewServer_UseEpicItem[3305417]["EquipCheckType"][1] = {}
	tEpicWeaponsInNewServer_UseEpicItem[3305417]["EquipCheckType"][1][1] = 610
	tEpicWeaponsInNewServer_UseEpicItem[3305417]["EquipCheckType"][2] = {}
	tEpicWeaponsInNewServer_UseEpicItem[3305417]["EquipCheckType"][2][1] = 610
	--海之心
	tEpicWeaponsInNewServer_UseEpicItem[3321029] = {}
	tEpicWeaponsInNewServer_UseEpicItem[3321029]["NeedPro1"] = 70
	tEpicWeaponsInNewServer_UseEpicItem[3321029]["NeedPro2"] = 75
	tEpicWeaponsInNewServer_UseEpicItem[3321029]["WeaponSubType"] = {}
	tEpicWeaponsInNewServer_UseEpicItem[3321029]["WeaponSubType"][4] = 671
	tEpicWeaponsInNewServer_UseEpicItem[3321029]["WeaponSubType"][5] = 670
	tEpicWeaponsInNewServer_UseEpicItem[3321029]["EquipPos"] = {}
	tEpicWeaponsInNewServer_UseEpicItem[3321029]["EquipPos"][1] = 4
	tEpicWeaponsInNewServer_UseEpicItem[3321029]["EquipPos"][2] = 5
	tEpicWeaponsInNewServer_UseEpicItem[3321029]["EquipCheckType"] = {}
	tEpicWeaponsInNewServer_UseEpicItem[3321029]["EquipCheckType"][1] = {}
	tEpicWeaponsInNewServer_UseEpicItem[3321029]["EquipCheckType"][1][1] = 611
	tEpicWeaponsInNewServer_UseEpicItem[3321029]["EquipCheckType"][2] = {}
	tEpicWeaponsInNewServer_UseEpicItem[3321029]["EquipCheckType"][2][1] = 612
--史诗武器道具碎片可选包
	tEpicWeaponsInNewServer_ChoicePackageItemData = {}
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772] = {}
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][1] = {}
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][1]["LogId"] = 12000875
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][1]["DeleteItem"] = {}
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][1]["DeleteItem"][1] = {}
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][1]["DeleteItem"][1]["Id"] = 3306772
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][1]["RewardItem"] = {}
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][1]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][1]["RewardItem"][1]["Id"] = 3305421  --空灵佛心碎片
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][1]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][1]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][1]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][1]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][2] = {}  
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][2]["LogId"] = 12000875
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][2]["DeleteItem"] = {}
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][2]["DeleteItem"][1] = {}
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][2]["DeleteItem"][1]["Id"] = 3306772
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][2]["RewardItem"] = {}
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][2]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][2]["RewardItem"][1]["Id"] = 3305420  --神宝仙丹碎片
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][2]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][2]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][2]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][2]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][3] = {}  
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][3]["LogId"] = 12000875
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][3]["DeleteItem"] = {}
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][3]["DeleteItem"][1] = {}
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][3]["DeleteItem"][1]["Id"] = 3306772
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][3]["RewardItem"] = {}
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][3]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][3]["RewardItem"][1]["Id"] = 3305418  --圣灵神木碎片
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][3]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][3]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][3]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][3]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][4] = {}  
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][4]["LogId"] = 12000875
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][4]["DeleteItem"] = {}
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][4]["DeleteItem"][1] = {}
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][4]["DeleteItem"][1]["Id"] = 3306772
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][4]["RewardItem"] = {}
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][4]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][4]["RewardItem"][1]["Id"] = 3305419  --轮回之眼碎片
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][4]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][4]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][4]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][4]["RewardEffect"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][5] = {}  
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][5]["LogId"] = 12000875
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][5]["DeleteItem"] = {}
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][5]["DeleteItem"][1] = {}
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][5]["DeleteItem"][1]["Id"] = 3306772
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][5]["RewardItem"] = {}
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][5]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][5]["RewardItem"][1]["Id"] = 3321030  --海之心碎片
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][5]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][5]["RewardEffect"] = {}
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][5]["RewardEffect"]["SzObj"] = "self"
	tEpicWeaponsInNewServer_ChoicePackageItemData[3306772][5]["RewardEffect"]["Effect"] = "angelwing"
--log
local tEpicWeaponsInNewServer_Log = {}
	tEpicWeaponsInNewServer_Log["DeleteItem"] = "0,0,%d,%d,12000875,3,0,0"
	tEpicWeaponsInNewServer_Log["DeleteItemAwardItem"] = "0,0,%d,%d,12000875,3,%d,%d"
	tEpicWeaponsInNewServer_Log["AwardItem"] = "0,0,0,0,12000875,3,%d,%d"
	tEpicWeaponsInNewServer_Log[1] = "0,0,0,0,12000875,1[1],0,0"
	tEpicWeaponsInNewServer_Log[2] = "0,0,0,0,12000875,1[2],0,0"
	tEpicWeaponsInNewServer_Log[3] = "0,0,0,0,12000875,1[3],0,0"
	tEpicWeaponsInNewServer_Log[4] = "0,0,0,0,12000875,1[4],0,0"
	tEpicWeaponsInNewServer_Log[5] = "0,0,0,0,12000875,1[5],0,0"
	tEpicWeaponsInNewServer_Log[6] = "0,0,0,0,12000875,1[6],0,0"
	tEpicWeaponsInNewServer_Log[7] = "0,0,0,0,12000875,1[7],0,0"
	tEpicWeaponsInNewServer_Log[8] = "0,0,0,0,12000875,1[8],0,0"
--effect
local tEpicWeaponsInNewServer_Effect = {}
	tEpicWeaponsInNewServer_Effect["OpenPackage"] = {}
	tEpicWeaponsInNewServer_Effect["OpenPackage"]["EffectObj"] = "self"
	tEpicWeaponsInNewServer_Effect["OpenPackage"]["Effect"] = "angelwing"
	tEpicWeaponsInNewServer_Effect["Compose"] = {}
	tEpicWeaponsInNewServer_Effect["Compose"]["EffectObj"] = "self"
	tEpicWeaponsInNewServer_Effect["Compose"]["Effect"] = "zf2-e128"
	tEpicWeaponsInNewServer_Effect["ClearEpicItem"] = {}
	tEpicWeaponsInNewServer_Effect["ClearEpicItem"]["EffectObj"] = "self"
	tEpicWeaponsInNewServer_Effect["ClearEpicItem"]["Effect"] = "zf2-e128"
--全服积分
local tEpicWeaponsInNewServer_ServerGlobalScore = {}
	tEpicWeaponsInNewServer_ServerGlobalScore["Id"] = 51919
	tEpicWeaponsInNewServer_ServerGlobalScore["Pos"] = 0
--global data
local tEpicWeaponsInNewServer_GlobalData = {}
	--1到10名
	tEpicWeaponsInNewServer_GlobalData[1] = 51915
	tEpicWeaponsInNewServer_GlobalData[2] = 51916
	--1到10名名字
	tEpicWeaponsInNewServer_GlobalData[3] = 51917
	tEpicWeaponsInNewServer_GlobalData[4] = 51918
--邮件发奖
local tEpicWeaponsInNewServer_MailAction = {}
	--一等奖
	tEpicWeaponsInNewServer_MailAction[1] = 567410
	--二等奖
	tEpicWeaponsInNewServer_MailAction[2] = 567411
	--三等奖
	tEpicWeaponsInNewServer_MailAction[3] = 567412
	--参与奖
	tEpicWeaponsInNewServer_MailAction[4] = 567413
--邮件发奖物品
local tEpicWeaponsInNewServer_MailActionItem = {}
	--一等奖
	tEpicWeaponsInNewServer_MailActionItem[1] = 3306779
	--二等奖
	tEpicWeaponsInNewServer_MailActionItem[2] = 3306772
	--三等奖
	tEpicWeaponsInNewServer_MailActionItem[3] = 3306773
	--参与奖
	tEpicWeaponsInNewServer_MailActionItem[4] = 3008186
--参与玩家表全局表
local tEpicWeaponsInNewServer_Player = {}
local tEpicWeaponsInNewServer_Player_Award = {}
--2018.2.11新增 史诗转盘玩法
--转盘全服上交次数
local tEpicWeaponsInNewServer_ZhuanPan_ServerGlobalScore = {}
	tEpicWeaponsInNewServer_ZhuanPan_ServerGlobalScore["Id"] = 52039
	tEpicWeaponsInNewServer_ZhuanPan_ServerGlobalScore["Pos"] = 0
--上交数据
local tEpicWeaponsInNewServer_ZhuanPan_HandIn = {}
	tEpicWeaponsInNewServer_ZhuanPan_HandIn[1] = {}
	tEpicWeaponsInNewServer_ZhuanPan_HandIn[1]["Id"] = 0
	-- tEpicWeaponsInNewServer_ZhuanPan_HandIn[1]["Num"] = 5000000
	tEpicWeaponsInNewServer_ZhuanPan_HandIn[1]["Num"] = 3000000
	tEpicWeaponsInNewServer_ZhuanPan_HandIn[1]["Monopoly"] = 0
	
	tEpicWeaponsInNewServer_ZhuanPan_HandIn[2] = {}
	tEpicWeaponsInNewServer_ZhuanPan_HandIn[2]["Id"] = 1088000
	tEpicWeaponsInNewServer_ZhuanPan_HandIn[2]["Num"] = 1
	tEpicWeaponsInNewServer_ZhuanPan_HandIn[2]["Monopoly"] = 0
local tEpicWeaponsInNewServer_ZhuanPan_Reward = {}
	--没到达20000
	tEpicWeaponsInNewServer_ZhuanPan_Reward[1] = {}
	--交金币
	tEpicWeaponsInNewServer_ZhuanPan_Reward[1][1] = {}
	tEpicWeaponsInNewServer_ZhuanPan_Reward[1][1]["RewardMoney"] = {}
	-- tEpicWeaponsInNewServer_ZhuanPan_Reward[1][1]["RewardMoney"]["Value"] = -5000000
	tEpicWeaponsInNewServer_ZhuanPan_Reward[1][1]["RewardMoney"]["Value"] = -3000000
	tEpicWeaponsInNewServer_ZhuanPan_Reward[1][1]["RewardItem"] = {}
	tEpicWeaponsInNewServer_ZhuanPan_Reward[1][1]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_ZhuanPan_Reward[1][1]["RewardItem"][1]["Id"] = 3307453
	tEpicWeaponsInNewServer_ZhuanPan_Reward[1][1]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_ZhuanPan_Reward[1][1]["Talk"] = tEpicWeaponsInNewServer_Text[21446]["ZhuanPanAward"]
	tEpicWeaponsInNewServer_ZhuanPan_Reward[1][1]["LogId"] = 12000875
	--交龙珠
	tEpicWeaponsInNewServer_ZhuanPan_Reward[1][2] = {}
	tEpicWeaponsInNewServer_ZhuanPan_Reward[1][2]["DeleteItem"] = {}
	tEpicWeaponsInNewServer_ZhuanPan_Reward[1][2]["DeleteItem"][1] = {}
	tEpicWeaponsInNewServer_ZhuanPan_Reward[1][2]["DeleteItem"][1]["Id"] = 1088000
	tEpicWeaponsInNewServer_ZhuanPan_Reward[1][2]["DeleteItem"][1]["ItemNum"] = 1
	tEpicWeaponsInNewServer_ZhuanPan_Reward[1][2]["DeleteItem"][1]["Monopoly"] = 0
	tEpicWeaponsInNewServer_ZhuanPan_Reward[1][2]["RewardItem"] = {}
	tEpicWeaponsInNewServer_ZhuanPan_Reward[1][2]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_ZhuanPan_Reward[1][2]["RewardItem"][1]["Id"] = 3307453
	tEpicWeaponsInNewServer_ZhuanPan_Reward[1][2]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_ZhuanPan_Reward[1][2]["LogId"] = 12000875
	--到达20000
	tEpicWeaponsInNewServer_ZhuanPan_Reward[2] = {}
	--交金币
	tEpicWeaponsInNewServer_ZhuanPan_Reward[2][1] = {}
	tEpicWeaponsInNewServer_ZhuanPan_Reward[2][1]["RewardMoney"] = {}
	-- tEpicWeaponsInNewServer_ZhuanPan_Reward[2][1]["RewardMoney"]["Value"] = -5000000
	tEpicWeaponsInNewServer_ZhuanPan_Reward[2][1]["RewardMoney"]["Value"] = -3000000
	tEpicWeaponsInNewServer_ZhuanPan_Reward[2][1]["RewardItem"] = {}
	tEpicWeaponsInNewServer_ZhuanPan_Reward[2][1]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_ZhuanPan_Reward[2][1]["RewardItem"][1]["Id"] = 3307454
	tEpicWeaponsInNewServer_ZhuanPan_Reward[2][1]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_ZhuanPan_Reward[2][1]["Talk"] = tEpicWeaponsInNewServer_Text[21446]["ZhuanPanAward"]
	tEpicWeaponsInNewServer_ZhuanPan_Reward[2][1]["LogId"] = 12000875
	--交龙珠
	tEpicWeaponsInNewServer_ZhuanPan_Reward[2][2] = {}
	tEpicWeaponsInNewServer_ZhuanPan_Reward[2][2]["DeleteItem"] = {}
	tEpicWeaponsInNewServer_ZhuanPan_Reward[2][2]["DeleteItem"][1] = {}
	tEpicWeaponsInNewServer_ZhuanPan_Reward[2][2]["DeleteItem"][1]["Id"] = 1088000
	tEpicWeaponsInNewServer_ZhuanPan_Reward[2][2]["DeleteItem"][1]["ItemNum"] = 1
	tEpicWeaponsInNewServer_ZhuanPan_Reward[2][2]["DeleteItem"][1]["Monopoly"] = 0
	tEpicWeaponsInNewServer_ZhuanPan_Reward[2][2]["RewardItem"] = {}
	tEpicWeaponsInNewServer_ZhuanPan_Reward[2][2]["RewardItem"][1] = {}
	tEpicWeaponsInNewServer_ZhuanPan_Reward[2][2]["RewardItem"][1]["Id"] = 3307454
	tEpicWeaponsInNewServer_ZhuanPan_Reward[2][2]["RewardItem"][1]["Attr"] = "0 1"
	tEpicWeaponsInNewServer_ZhuanPan_Reward[2][2]["LogId"] = 12000875
local tEpicWeaponsInNewServer_ZhuanPan_Stc = {}
	tEpicWeaponsInNewServer_ZhuanPan_Stc[1] = {}
	tEpicWeaponsInNewServer_ZhuanPan_Stc[1]["DataType"] = 174
	tEpicWeaponsInNewServer_ZhuanPan_Stc[1]["EventType"] = 79
	tEpicWeaponsInNewServer_ZhuanPan_Stc[1]["TalkIndex"] = "2-1"
	tEpicWeaponsInNewServer_ZhuanPan_Stc[2] = {}
	tEpicWeaponsInNewServer_ZhuanPan_Stc[2]["DataType"] = 174
	tEpicWeaponsInNewServer_ZhuanPan_Stc[2]["EventType"] = 80
	tEpicWeaponsInNewServer_ZhuanPan_Stc[2]["TalkIndex"] = "2-2"
--emoneylog
local tEpicWeaponsInNewServer_ZhuanPan_EmoneyLog = {}
	tEpicWeaponsInNewServer_ZhuanPan_EmoneyLog[1] = "350	31207	0	0	1	" -- 金币
	tEpicWeaponsInNewServer_ZhuanPan_EmoneyLog[2] = "350	31208	0	0	1	" -- 龙珠
----------------------------------逻辑部分---------------------------------------------
--时间自检 清理史诗碎片随机包每天限量50个GlobalData
function EpicWeaponsInNewServer_ResetWeaponPiecesGlobalData()
	--检查服务器
	if Get_SysDynaGlobalData0(tEpicWeaponsInNewServer_Cont["Global"]["Flag"]) <= 0 then
		return
	end
	
	local nCheckGlobalId = tEpicWeaponsInNewServer_Data["Global"]["WeaponPieces"]["CheckGlobalId"]
	local nCheckPos = tEpicWeaponsInNewServer_Data["Global"]["WeaponPieces"]["CheckPos"]
	if Get_SysDynaGlobalData(nCheckGlobalId,nCheckPos) == 0 then
		local nGlobalId = tEpicWeaponsInNewServer_Data["Global"]["WeaponPieces"]["GlobalId"]
		local nPos = tEpicWeaponsInNewServer_Data["Global"]["WeaponPieces"]["Pos"]
		Sys_SetSynaGlobalData(nGlobalId,nPos,0)
		Sys_SetSynaGlobalData(nCheckGlobalId,nCheckPos,1)
		--全服积分清零
		EpicWeaponsInNewServer_ResetServerScore()
		--转盘全服积分清零
		EpicWeaponsInNewServer_ZhuanPan_ResetServerScore()
	end
end
--重置检查自检的GlobalData
function EpicWeaponsInNewServer_ResetWeaponPiecesGlobalData2()
	--检查服务器
	if Get_SysDynaGlobalData0(tEpicWeaponsInNewServer_Cont["Global"]["Flag"]) <= 0 then
		return
	end
	
	local nCheckGlobalId = tEpicWeaponsInNewServer_Data["Global"]["WeaponPieces"]["CheckGlobalId"]
	local nCheckPos = tEpicWeaponsInNewServer_Data["Global"]["WeaponPieces"]["CheckPos"]
	if Get_SysDynaGlobalData(nCheckGlobalId,nCheckPos) >= 1 then
		Sys_SetSynaGlobalData(nCheckGlobalId,nCheckPos,0)
	end
end
--时间自检 清理史诗武器道具10天一个GlobalData
function EpicWeaponsInNewServer_ResetEpicWeaponsGlobalData()
	--检查服务器
	if Get_SysDynaGlobalData0(tEpicWeaponsInNewServer_Cont["Global"]["Flag"]) <= 0 then
		return
	end
	
	if not EpicWeaponsInNewServer_IsInClearTime() then 
		return
	end
	local nGlobalId = 0
	local nPos = 0
	local nCheckGlobalId = 0
	local nCheckPos = 0
	for i = 1,#tEpicWeaponsInNewServer_Data["Global"]["Weapon"] do
		nGlobalId = tEpicWeaponsInNewServer_Data["Global"]["Weapon"][i]["GlobalId"]
		nPos = tEpicWeaponsInNewServer_Data["Global"]["Weapon"][i]["Pos"]
		nCheckGlobalId = tEpicWeaponsInNewServer_Data["Global"]["Weapon"][i]["CheckGlobalId"]
		nCheckPos = tEpicWeaponsInNewServer_Data["Global"]["Weapon"][i]["CheckPos"]
		if Get_SysDynaGlobalData(nCheckGlobalId,nCheckPos) == 0 then
			Sys_SetSynaGlobalData(nGlobalId,nPos,0)
			Sys_SetSynaGlobalData(nCheckGlobalId,nCheckPos,1)
		end
	end
end
--时间自检 史诗武器道具10天一个GlobalData设置为1，活动过后神兵灵魄不产出史诗武器道具
function EpicWeaponsInNewServer_SetEpicWeaponsGlobalData()
	--检查服务器
	if Get_SysDynaGlobalData0(tEpicWeaponsInNewServer_Cont["Global"]["Flag"]) <= 0 then
		return
	end
	
	if not EpicWeaponsInNewServer_IsInSetTime() then
		return
	end
	local nGlobalId = 0
	local nPos = 0
	local nCheckGlobalId = 0
	local nCheckPos = 0
	for i = 1,#tEpicWeaponsInNewServer_Data["Global"]["Weapon"] do
		nGlobalId = tEpicWeaponsInNewServer_Data["Global"]["Weapon"][i]["GlobalId"]
		nPos = tEpicWeaponsInNewServer_Data["Global"]["Weapon"][i]["Pos"]
		nCheckGlobalId = tEpicWeaponsInNewServer_Data["Global"]["Weapon"][i]["CheckGlobalId"]
		nCheckPos = tEpicWeaponsInNewServer_Data["Global"]["Weapon"][i]["CheckPos"]
		if Get_SysDynaGlobalData(nCheckGlobalId,nCheckPos) == 0 then
			--全设置为1，活动过后神兵灵魄不产出史诗武器道具
			Sys_SetSynaGlobalData(nGlobalId,nPos,1)
			Sys_SetSynaGlobalData(nCheckGlobalId,nCheckPos,1)
		end
	end
end
--重置检查自检的GlobalData
function EpicWeaponsInNewServer_ResetEpicWeaponsGlobalData2()
	--检查服务器
	if Get_SysDynaGlobalData0(tEpicWeaponsInNewServer_Cont["Global"]["Flag"]) <= 0 then
		return
	end
	
	if EpicWeaponsInNewServer_IsInClearTime() or EpicWeaponsInNewServer_IsInSetTime() then 
		local nCheckGlobalId = 0
		local nCheckPos = 0
		for i = 1,#tEpicWeaponsInNewServer_Data["Global"]["Weapon"] do
			nCheckGlobalId = tEpicWeaponsInNewServer_Data["Global"]["Weapon"][i]["CheckGlobalId"]
			nCheckPos = tEpicWeaponsInNewServer_Data["Global"]["Weapon"][i]["CheckPos"]
			if Get_SysDynaGlobalData(nCheckGlobalId,nCheckPos) >= 1 then
				Sys_SetSynaGlobalData(nCheckGlobalId,nCheckPos,0)
			end
		end
	end
end
--判断是否新服
function EpicWeaponsInNewServer_IsNewServer()
	-- 判断是否新服
	local nGlobal = tEpicWeaponsInNewServer_Cont["Global"]["Id"]
	local nData = Get_SysDynaGlobalData0(nGlobal)
	if nData < tEpicWeaponsInNewServer_Cont["Global"]["Open"] then
		return false
	end
	return true
end
--判断活动时间 新服
function EpicWeaponsInNewServer_IsInTime()
	--if not EpicWeaponsInNewServer_IsNewServer() then
	--	return false
	--end
	if not Sys_ChkFullTime(tEpicWeaponsInNewServer_Data["Activity"]) then
		return false
	end
	return true
end
--判断清理global时间 
function EpicWeaponsInNewServer_IsInClearTime()
	local bIsTime = false
	local nTime = CommonFunc_DisActivityTime(tEpicWeaponsInNewServer_Data["Activity"])
	if nTime < 31 and nTime % 10 == 0 then
		bIsTime = true
	end
	return bIsTime
end
--判断置globaldata为1的时间
function EpicWeaponsInNewServer_IsInSetTime()
	local nTime = CommonFunc_DisActivityTime(tEpicWeaponsInNewServer_Data["Activity"])
	if (not Sys_ChkFullTime(tEpicWeaponsInNewServer_Data["Activity"])) and (nTime <= 32) then
		return true
	end
	return false
end
--判断活动时间，活动后删除删除物品
--function EpicWeaponsInNewServer_CheckItemOutOfTime(nItemId)
--	if not EpicWeaponsInNewServer_IsNewServer() then
--		return true
--	end
--	if Sys_ChkFullTime(tEpicWeaponsInNewServer_Data["AfterActivity"]) then
--		if Item_ChkItem(nItemId) then
--			if Item_DelAllItemByType(nItemId) then
--				User_TalkChannel2005(tEpicWeaponsInNewServer_Text[nItemId]["NotTime"])
--				return true
--			end	
--		end
--		return true
--	end
--	return false
--end
--使用随机礼包
function EpicWeaponsInNewServer_UseRandomPackage(nItemId)
	--判断活动时间，活动后删除删除物品
	--if EpicWeaponsInNewServer_CheckItemOutOfTime(nItemId) then
	--	return
	--end
	-- 判断是否有物品
	if not Item_ChkItem(nItemId) then
		return
	end
	--检查背包
	local bHaveSpace,nSpace = RewardTemplate_ChkRandomSpace(tEpicWeaponsInNewServer_Use,nItemId)
	if not bHaveSpace then
		-- 背包空间不足
		Sys_MsgBox(string.format(tEpicWeaponsInNewServer_Text[nItemId]["NoSpace"],nSpace))
		return
	end
	-- 删物品给奖励
	if Item_DelItem(nItemId) then
		local tReward,sReward = RewardTemplate_NewRandom(tEpicWeaponsInNewServer_Use,nItemId)
		local nGetItemId = tReward[1]["tAward"][1]["RewardItem"][1]["Id"]
		local nGetItemNum = EpicWeaponsInNewServer_SubAttrGetNum(tReward[1]["tAward"][1]["RewardItem"][1]["Attr"])
		local nNeedEffect = tReward[1]["tAward"][1]["RewardEffect"]
		--User_TalkChannel2005(string.format(tEpicWeaponsInNewServer_Text[nItemId]["Talk"],nGetItemNum,Get_ItemtypeName(nGetItemId)))
		if nGetItemId ~= nil and nNeedEffect == nil then
			User_EffectAdd(tEpicWeaponsInNewServer_Effect["OpenPackage"]["EffectObj"],tEpicWeaponsInNewServer_Effect["OpenPackage"]["Effect"])
		end
		return nGetItemId,nGetItemNum,sReward
	end
end
--获取个数
function EpicWeaponsInNewServer_SubAttrGetNum(sAttr)
	local nNum = string.sub(sAttr,3,4)
	return nNum
end
--合成
function EpicWeaponsInNewServer_ComposeItem(nItemId)
	--检查物品是否足够
	if not Item_ChkMulItem(nItemId,nItemId,tEpicWeaponsInNewServer_Compose[nItemId]["RequireNum"]) then
		Sys_MsgBox(tEpicWeaponsInNewServer_Text[nItemId]["NoItem"])
		return
	end
	--检查背包
	if not RewardTemplate_CheckSpace(tEpicWeaponsInNewServer_Compose[nItemId]) then
		Sys_MsgBox(tEpicWeaponsInNewServer_Text[nItemId]["NoSpace"])
		return
	end
	--合成
	if Item_ChkMulItem(nItemId,nItemId,tEpicWeaponsInNewServer_Compose[nItemId]["RequireNum"]) then
		if RewardTemplate_UseItem(tEpicWeaponsInNewServer_Compose[nItemId]) then
			User_EffectAdd(tEpicWeaponsInNewServer_Effect["Compose"]["EffectObj"],tEpicWeaponsInNewServer_Effect["Compose"]["Effect"])
		end
	end	
end
--合成神兵灵魄
function EpicWeaponsInNewServer_ComposeWeaponSoul(nItemId)
	--判断活动时间，活动后删除删除物品
	--if EpicWeaponsInNewServer_CheckItemOutOfTime(nItemId) then
	--	return
	--end
	EpicWeaponsInNewServer_ComposeItem(nItemId)
end
--检查当天是否完成史诗武器任务
function EpicWeaponsInNewServer_EpicMissionComplete()
	local nPro = Get_UserProfession()
	local nProIndex = 0
	for i = 1,#tEpicWeaponsInNewServer_Stc["EpicMission"] do
		if nPro >= tEpicWeaponsInNewServer_Stc["EpicMission"][i]["NeedPro1"] 
			and nPro <= tEpicWeaponsInNewServer_Stc["EpicMission"][i]["NeedPro2"] then
			nProIndex = i
		end
	end
	--不是其中的职业
	if nProIndex == 0 then
		Sys_MsgBox(tEpicWeaponsInNewServer_Text[3305423]["NotPro"])
		return false
	end
	--获取阶段
	local nStep = EpicWeaponsInNewServer_GetEpicMissionStep(nProIndex)
	--一阶段
	if nProIndex == 1 and nStep == 1 then
		--有27个吞日碎片
		if Item_ChkMulItem(3003336,3003336,27) then
			nStep = 0
		end
	end
	--四阶段
	if nProIndex == 1 and nStep == 4 then
		--有99个纯阳精华
		if Item_ChkMulItem(3003338,3003338,99) then
			nStep = 0
		end
	end
	if nStep == 0 then
		Sys_MsgBox(tEpicWeaponsInNewServer_Text[3305423]["NoMission"])
		return false
	end
	local nEventType = tEpicWeaponsInNewServer_Stc["EpicMission"][nProIndex][nStep]["EventType"]
	local nDataType = tEpicWeaponsInNewServer_Stc["EpicMission"][nProIndex][nStep]["DataType"]
	local nComplete = tEpicWeaponsInNewServer_Stc["EpicMission"][nProIndex][nStep]["Complete"]
	local nData = Get_UserStatisticValue(nEventType,nDataType)
	if nProIndex == 1 and nStep == 3 then
		--妖王还未杀死	
		if Get_UserStatisticValue(121,91) == 1 then
			return false
		end
	end
	if nData >= nComplete then
		return true,nEventType,nDataType
	end
	return false
end
--获取任务阶段
function EpicWeaponsInNewServer_GetEpicMissionStep(nIndex)
	local nStep = 0
	--勇士
	if nIndex == 1 then
		local nEventType = tEpicWeaponsInNewServer_Stc[3]["EventType"]
		local nDataType = tEpicWeaponsInNewServer_Stc[3]["DataType"]
		local nData = Get_UserStatisticValue(nEventType,nDataType)
		--第一阶段
		if nData >= 1 and nData < 10 then
			nStep = 1
		--第二阶段
		elseif nData >= 11 and nData < 20 then
			nStep = 2
		--第三阶段
		elseif nData>= 21 and nData < 30 then
			nStep = 3
		--第四阶段
		elseif nData >= 40 and nData <= 41 then
			nStep = 4
		end
	else
		nStep = 1
	end
	return nStep
end
--灵武酬勤卷轴对话检查
function EpicWeaponsInNewServer_ResetScrollCheck()
	local nItemId = 3305423
	--if EpicWeaponsInNewServer_CheckItemOutOfTime(nItemId) then
	--	return false
	--end
	local bComplete,nEventType,nDataType = EpicWeaponsInNewServer_EpicMissionComplete()
	if not bComplete then
		Sys_MsgBox(tEpicWeaponsInNewServer_Text[nItemId]["NotComplete"])
		return false
	end
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(tEpicWeaponsInNewServer_Text[nItemId]["NoItem"])
		return false
	end
	return true,nEventType,nDataType
end
--点击灵武酬勤卷轴
function EpicWeaponsInNewServer_ClickResetScroll(nItemId)
	if not EpicWeaponsInNewServer_ResetScrollCheck() then
		return
	end
	--弹出一次确认
	EpicWeaponsInNewServer_ResetScrollDialog(nItemId,1,"</F>EpicWeaponsInNewServer_ConfrimResetScroll</N>" .. nItemId)
end
--灵武酬勤卷轴二次确认
function EpicWeaponsInNewServer_ConfrimResetScroll(nItemId)
	if not EpicWeaponsInNewServer_ResetScrollCheck() then
		return
	end
	--弹出二次确认
	EpicWeaponsInNewServer_ResetScrollDialog(nItemId,2,"</F>EpicWeaponsInNewServer_UseResetScroll</N>" .. nItemId)
end
--拼接对话
function EpicWeaponsInNewServer_ResetScrollDialog(nItemId,nIndex,sFunction)
	if not EpicWeaponsInNewServer_ResetScrollCheck() then
		return
	end
	--拼对话
	Sys_DialogText(tEpicWeaponsInNewServer_Text[nItemId]["Text" .. nIndex .. "11"])
	Sys_DialogOption(tEpicWeaponsInNewServer_Text[nItemId]["Option" .. nIndex .. "11"],sFunction)
	Sys_DialogOption(tEpicWeaponsInNewServer_Text[nItemId]["Option" .. nIndex .. "12"])
	Sys_DialogEnd()
end
--使用灵武酬勤卷轴
function EpicWeaponsInNewServer_UseResetScroll(nItemId)
	local bComplete,nEventType,nDataType = EpicWeaponsInNewServer_ResetScrollCheck()
	if not bComplete then
		return
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		Task_SetStatistic(nEventType,nDataType,0,1)
		User_TalkChannel2005(tEpicWeaponsInNewServer_Text[nItemId]["Talk"])
		Sys_SaveActionFestivalLog(string.format(tEpicWeaponsInNewServer_Log["DeleteItem"],nItemId,1))
	end
end
--点击史诗武器道具 转化成史诗武器
function EpicWeaponsInNewServer_ConfirmEpicItemToTurn(nItemId)
	--检查是否满足史诗武器道具条件
	if not EpicWeaponsInNewServer_CheckEpicItemToTurn(nItemId) then
		return
	end
	LinkItemGossipFunc_New(nItemId,"2-1")
end
--使用史诗武器道具 转化成史诗武器
function EpicWeaponsInNewServer_UseEpicItemToTurn(nItemId)
	local nWeaponSubType = tEpicWeaponsInNewServer_UseEpicItem[nItemId]["WeaponSubType"]
	--检查是否满足史诗武器道具条件 获取满足条件的武器位
	local nCheckEpicItemToTurn,nPos = EpicWeaponsInNewServer_CheckEpicItemToTurn(nItemId)
	if not nCheckEpicItemToTurn then
		return
	end
	
	if type(nWeaponSubType) == "table" then
		nWeaponSubType = nWeaponSubType[nPos]
	end
	
	--检查物品 转换为史诗武器 打log
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		if Item_WeaponChangeSubtype(nPos,nWeaponSubType) then
			local nWeaponId = Get_EquipIDByPos(nPos)
			local nItemTypeId = Get_ItemType(nWeaponId)
			User_TalkChannel2005(tEpicWeaponsInNewServer_Text[nItemId]["TalkToTurn"])
			Sys_SaveActionFestivalLog(string.format(tEpicWeaponsInNewServer_Log["DeleteItemAwardItem"],nItemId,1,nItemTypeId,1))
		end
	end
end
--检查是否满足史诗武器道具条件 返回满足条件的武器位
function EpicWeaponsInNewServer_CheckEpicItemToTurn(nItemId)
	--不是新服
	--if not EpicWeaponsInNewServer_IsNewServer() then
		--return false
	--end
	local nPro = Get_UserProfession()
	if not (nPro >= tEpicWeaponsInNewServer_UseEpicItem[nItemId]["NeedPro1"] 
		and nPro <= tEpicWeaponsInNewServer_UseEpicItem[nItemId]["NeedPro2"]) then
		--非本职业
		LinkItemGossipFunc_New(nItemId,"3-1")
		return false
	end
	--是否已经是史诗武器
	if EpicWeaponsInNewServer_CheckEquipIsEpic(nItemId) then
		Sys_MsgBox(tEpicWeaponsInNewServer_Text[nItemId]["NoMoreUse"])
		return false
	end
	--武器检查
	local bCheckEquip,nPos = EpicWeaponsInNewServer_CheckEquip(nItemId)
	if not bCheckEquip then
		--没有对应的武器
		LinkItemGossipFunc_New(nItemId,"4-1")
		return false
	end
	--检查物品
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(tEpicWeaponsInNewServer_Text[nItemId]["NoItemToTurn"])
		return false
	end
	return true,nPos
end
--装备检查 返回满足条件的武器位
function EpicWeaponsInNewServer_CheckEquip(nItemId)
	--武器位
	local nEquipPos = 0
	--武器id
	local nWeaponId = 0
	--检查类型
	local nEquipCheckType = 0
	--装备检查
	for i = 1,#tEpicWeaponsInNewServer_UseEpicItem[nItemId]["EquipPos"] do
		nEquipPos = tEpicWeaponsInNewServer_UseEpicItem[nItemId]["EquipPos"][i]
		nWeaponId = Get_EquipIDByPos(nEquipPos)
		for j = 1,#tEpicWeaponsInNewServer_UseEpicItem[nItemId]["EquipCheckType"][i] do
			nEquipCheckType = tEpicWeaponsInNewServer_UseEpicItem[nItemId]["EquipCheckType"][i][j]
			if User_EquipCheck(nEquipPos,nEquipCheckType) and EpicWeaponsInNewServer_CheckMonopoly(nWeaponId) then
				return true,nEquipPos
			end
		end
	end
	return false
end
function EpicWeaponsInNewServer_CheckMonopoly(nItem)
	return Get_ItemMonopoly(nItem) == 3 or Get_ItemMonopoly(nItem) == 2 or Get_ItemMonopoly(nItem) == 1
end
--检查是否已经是史诗武器
function EpicWeaponsInNewServer_CheckEquipIsEpic(nItemId)
	
	local nEquipPos = 0
	local nFlag = true
	for i = 1,#tEpicWeaponsInNewServer_UseEpicItem[nItemId]["EquipPos"] do
		local nWeaponSubType = tEpicWeaponsInNewServer_UseEpicItem[nItemId]["WeaponSubType"]
		
		nEquipPos = tEpicWeaponsInNewServer_UseEpicItem[nItemId]["EquipPos"][i]
		
		if type(nWeaponSubType) == "table" then
			nWeaponSubType = nWeaponSubType[nEquipPos]
		end
		
		if (not User_EquipCheck(nEquipPos,nWeaponSubType)) and EpicWeaponsInNewServer_CheckEquipInBody(nEquipPos) then
			nFlag = false
		end
	end
	return nFlag
end
--某装备位是否有装备
function EpicWeaponsInNewServer_CheckEquipInBody(nEquipPos)
	local nItemId = Get_EquipIDByPos(nEquipPos) or 0
	if (nItemId == nil) or (nItemId <= 0) then
		return false
	end
	return true
end
--点击史诗武器道具 洗赠
function EpicWeaponsInNewServer_ConfirmEpicItemToClear(nItemId)
	--检查洗赠条件
	if not EpicWeaponsInNewServer_CheckEpicItemToClear(nItemId) then
		return
	end
	--二次确认
	LinkItemGossipFunc_New(nItemId,"5-1")
end
--洗赠
function EpicWeaponsInNewServer_UseEpicItemToClear(nItemId)
	--检查洗赠条件
	if not EpicWeaponsInNewServer_CheckEpicItemToClear(nItemId) then
		return
	end
	--检查背包
	if not RewardTemplate_CheckSpace(tEpicWeaponsInNewServer_Use[nItemId]) then
		return
	end
	--检查物品给奖励
	if Item_ChkItem(nItemId) then
		RewardTemplate_UseItem(tEpicWeaponsInNewServer_Use[nItemId])
		User_EffectAdd(tEpicWeaponsInNewServer_Effect["ClearEpicItem"]["EffectObj"],tEpicWeaponsInNewServer_Effect["ClearEpicItem"]["Effect"])
		Sys_SaveActionFestivalLog(tEpicWeaponsInNewServer_Log[6])
	end
end
--检查洗赠条件
function EpicWeaponsInNewServer_CheckEpicItemToClear(nItemId)
	--不是新服
	--if not EpicWeaponsInNewServer_IsNewServer() then
		--return
	--end
	--检查史诗武器道具 是否赠品
	if not Item_ChkItem(nItemId,2) then
		Sys_MsgBox(tEpicWeaponsInNewServer_Text[nItemId]["NoItemToClear"])
		return false
	end
	local nRequireItem = tEpicWeaponsInNewServer_Use[nItemId]["RequireItem"]
	local nRequireNum = tEpicWeaponsInNewServer_Use[nItemId]["RequireNum"]
	--检查洗赠道具
	if not Item_ChkMulItem(nRequireItem,nRequireItem,nRequireNum) then
		Sys_MsgBox(tEpicWeaponsInNewServer_Text[nItemId]["LessItemToClear"])
		return false
	end
	return true
end
--神龙岛潜龙渊Boss参与奖礼包 
--[Conquer][TaskScript]TreasureArea和[Conquer][TaskScript]UndergroundPalace用到
function EpicWeaponsInNewServer_KillBossPackage(nItemId)
	if not EpicWeaponsInNewServer_IsInTime() then
		return
	end
	if not EpicWeaponsInNewServer_IsBossPackage(nItemId) then
		return
	end
	RewardTemplate_UseItem(tEpicWeaponsInNewServer_Use["EpicSoul"])
end
--判断是不是参与奖礼包 
--[Conquer][TaskScript]TreasureArea和[Conquer][TaskScript]UndergroundPalace用到
function EpicWeaponsInNewServer_IsBossPackage(nItemId)
	return (nItemId == 3600041 or nItemId == 3600043 or nItemId == 3303520 or nItemId == 3303521)
end
--神龙岛潜龙渊Boss击杀奖
function EpicWeaponsInNewServer_KillBoss(nMonsterId)
	--检查服务器
	if Get_SysDynaGlobalData0(tEpicWeaponsInNewServer_Cont["Global"]["Flag"]) <= 0 then
		return
	end
	
	--检查时间
	if not EpicWeaponsInNewServer_IsInTime() then
		return
	end
	--检查背包
	if not RewardTemplate_CheckSpace(tEpicWeaponsInNewServer_KillBoss) then
		User_TalkChannel2005(tEpicWeaponsInNewServer_Text["KillBoss"]["NoSpace"])
		return
	end
	RewardTemplate_UseItem(tEpicWeaponsInNewServer_KillBoss)
end
--杀片区怪
function EpicWeaponsInNewServer_KillAreaMonster(nMonsterId)
	EpicWeaponsInNewServer_KillMonsterAndGetPieces(nMonsterId,3)
end
--杀潜龙渊怪
function EpicWeaponsInNewServer_KillTreasureAreaMonster(nMonsterId)
	EpicWeaponsInNewServer_KillMonsterAndGetPieces(nMonsterId,6)
end
--杀怪出神兵灵魄碎片
function EpicWeaponsInNewServer_KillMonsterAndGetPieces(nMonsterId,nProb)
	--检查服务器
	if Get_SysDynaGlobalData0(tEpicWeaponsInNewServer_Cont["Global"]["Flag"]) <= 0 then
		return
	end
	
	--检查时间
	if not EpicWeaponsInNewServer_IsInTime() then
		return
	end
	--检查背包
	if not RewardTemplate_CheckSpace(tEpicWeaponsInNewServer_KillMonster) then
		User_TalkChannel2005(tEpicWeaponsInNewServer_Text["KillMonster"]["NoSpace"])
		return
	end
	if Sys_Random(nProb,1000) then
		RewardTemplate_UseItem(tEpicWeaponsInNewServer_KillMonster)
		Sys_SaveActionFestivalLog(tEpicWeaponsInNewServer_Log[1])
	end
end
--上交流星卷
function EpicWeaponsInNewServer_HandIn(nItemId,nNum)
	if nNum == nil then
		nNum = 1
	end
	local nNpcId = Get_NpcId()
	if not Sys_ChkDayTime(tActivityTime["EpicWeaponsSoul"]["HandInTime"]) then
		--不在活动时间
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	if not Item_ChkMulItem(nItemId,nItemId,nNum,0) then
		--没有流星卷
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	local nEventType = tEpicWeaponsInNewServer_Stc[4]["EventType"]
	local nDataType = tEpicWeaponsInNewServer_Stc[4]["DataType"]
	local nScore = 0
	--隔天
	if Task_StcInterval(nEventType,nDataType,1,4) then
		Task_SetStatistic(nEventType,nDataType,0,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end
	local nTimes = Get_UserStatisticValue(nEventType,nDataType)
	--删除流星卷
	if Item_ChkMulItem(nItemId,nItemId,nNum,0) and Item_DelMulItem(nItemId,nItemId,nNum,0) then
		--如果第一次上交
		if nTimes < tEpicWeaponsInNewServer_Stc[4]["Received"] then
			nScore = nScore + 90
		end
		nScore = nScore + 10 * nNum
		--置掩码
		Task_AddStatistic(nEventType,nDataType,1,1)
		--记录积分
		EpicWeaponsInNewServer_RecordScore(nScore)
		--记录全服积分
		EpicWeaponsInNewServer_RecordServerScore(nScore)
		--记录玩家表
		EpicWeaponsInNewServer_RecordPlayerScore(nScore)
		User_EffectAdd(tEpicWeaponsInNewServer_Effect["Compose"]["EffectObj"],tEpicWeaponsInNewServer_Effect["Compose"]["Effect"])
		User_TalkChannel2005(string.format(tEpicWeaponsInNewServer_Text[nNpcId]["HandInSucceed"],nNum,nScore))
		Sys_SaveActionFestivalLog(tEpicWeaponsInNewServer_Log[7])
		LinkNpcGossipFunc_New(nNpcId,"5-1")
	end
end
--记录积分
function EpicWeaponsInNewServer_RecordScore(nScore)
	local nEventType = tEpicWeaponsInNewServer_Stc[5]["EventType"]
	local nDataType = tEpicWeaponsInNewServer_Stc[5]["DataType"]
	if Task_StcInterval(nEventType,nDataType,1,4) then
		Task_SetStatistic(nEventType,nDataType,0,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end
	Task_AddStatistic(nEventType,nDataType,nScore,1)
end
--记录玩家表
function EpicWeaponsInNewServer_RecordPlayerScore(nScore)
	local nUserId = Get_UserId()
	if tEpicWeaponsInNewServer_Player[nUserId] == nil then
		tEpicWeaponsInNewServer_Player[nUserId] = {}
		tEpicWeaponsInNewServer_Player[nUserId]["Score"] = nScore
		tEpicWeaponsInNewServer_Player[nUserId]["PlayerName"] = Get_UserName()
	else
		tEpicWeaponsInNewServer_Player[nUserId]["Score"] = tEpicWeaponsInNewServer_Player[nUserId]["Score"] + nScore
		tEpicWeaponsInNewServer_Player[nUserId]["PlayerName"] = Get_UserName()
	end
end
--记录全服积分
function EpicWeaponsInNewServer_RecordServerScore(nScore)
	local nGlobalId = tEpicWeaponsInNewServer_ServerGlobalScore["Id"]
	local nCurrentnScore = Get_SysDynaGlobalData0(nGlobalId)
	Sys_SetSynaGlobalData0(nGlobalId,nCurrentnScore + nScore)
end
--获取全服积分
function EpicWeaponsInNewServer_GetServerScore()
	local nGlobalId = tEpicWeaponsInNewServer_ServerGlobalScore["Id"]
	return Get_SysDynaGlobalData0(nGlobalId)
end
--全服积分清零发奖
function EpicWeaponsInNewServer_ResetServerScore()
	local nServerScore = EpicWeaponsInNewServer_GetServerScore()
	local nGlobalId = tEpicWeaponsInNewServer_ServerGlobalScore["Id"]
	Sys_SetSynaGlobalData0(nGlobalId,0)
	--发奖
	EpicWeaponsInNewServer_GetRandomAward(nServerScore)
end
--获取随机表
function EpicWeaponsInNewServer_GetPlayerAwardTable(nServerScore)
	local t = {}
	local nScore = 0
	tEpicWeaponsInNewServer_Player_Award = {}
	tEpicWeaponsInNewServer_Player_Award[1] = {}
	tEpicWeaponsInNewServer_Player_Award[1]["ItemChanceSum"] = nServerScore
	for k,v in pairs(tEpicWeaponsInNewServer_Player) do
		t = {}
		t["RandomItemChanceType"] = 2
		t["ItemChance"] = v["Score"]
		t["Score"] = v["Score"]
		t["PlayerId"] = k
		t["PlayerName"] = v["PlayerName"]
		nScore = nScore + v["Score"]
		table.insert(tEpicWeaponsInNewServer_Player_Award[1],t)
	end
	tEpicWeaponsInNewServer_Player_Award[1]["ItemChanceSum"] = nScore
	EpicWeaponsInNewServer_ResetPlayer()
	return nScore
end
--隔日发奖
function EpicWeaponsInNewServer_GetRandomAward(nServerScore)
	--获取随机表
	nServerScore = EpicWeaponsInNewServer_GetPlayerAwardTable(nServerScore)
	if tEpicWeaponsInNewServer_Player_Award[1]["ItemChanceSum"] == 0 then
		return
	end
	local nUserId = 0
	local sUserName = ""
	local nStart = 1
	if nServerScore < 10000 then
		nStart = 2
	end
	for i = nStart,111 do
		nUserId,sUserName = EpicWeaponsInNewServer_GetPlayerAward()
		if nUserId == nil or nUserId == 0 then
			return
		end
		if i == 1 then
			EpicWeaponsInNewServer_SendAwardMail(nUserId,1)
			--记录排行榜
			EpicWeaponsInNewServer_RecordAndSortRankList(nUserId,sUserName)
			--发邮件
		elseif i <= 11 then
			--发邮件
			EpicWeaponsInNewServer_SendAwardMail(nUserId,2)
		else
			--发邮件
			EpicWeaponsInNewServer_SendAwardMail(nUserId,3)
		end
	end
	EpicWeaponsInNewServer_GetPartAward_One()
end
--发奖第一阶段，判断人数如果超过200就分段发
function EpicWeaponsInNewServer_GetPartAward_One()
	if #tEpicWeaponsInNewServer_Player_Award[1] <= 200 then
		EpicWeaponsInNewServer_GetPartAward(1,#tEpicWeaponsInNewServer_Player_Award[1])
	else
		local nEnd = math.floor(#tEpicWeaponsInNewServer_Player_Award[1]/3)
		EpicWeaponsInNewServer_GetPartAward(1,nEnd)
	end
end
--发奖第二阶段
function EpicWeaponsInNewServer_GetPartAward_Two()
	local nCheckGlobalId = tEpicWeaponsInNewServer_ServerGlobalScore["Id"]
	local nCheckPos = 2
	if Get_SysDynaGlobalData(nCheckGlobalId,nCheckPos) == 0 then
		if #tEpicWeaponsInNewServer_Player_Award[1] > 200 then
			local nStart = math.floor(#tEpicWeaponsInNewServer_Player_Award[1]/3) + 1
			local nEnd = math.floor(#tEpicWeaponsInNewServer_Player_Award[1]/3) * 2
			EpicWeaponsInNewServer_GetPartAward(nStart,nEnd)
		end
	end
end
--发奖第二阶段重置检查
function EpicWeaponsInNewServer_SendPartRewardCheck_Two()
	local nCheckGlobalId = tEpicWeaponsInNewServer_ServerGlobalScore["Id"]
	local nCheckPos = 2
	if Get_SysDynaGlobalData(nCheckGlobalId,nCheckPos) >= 1 then
		Sys_SetSynaGlobalData(nCheckGlobalId,nCheckPos,0)
	end
end
--发奖第三阶段
function EpicWeaponsInNewServer_GetPartAward_Three()
	local nCheckGlobalId = tEpicWeaponsInNewServer_ServerGlobalScore["Id"]
	local nCheckPos = 3
	if Get_SysDynaGlobalData(nCheckGlobalId,nCheckPos) == 0 then
		if #tEpicWeaponsInNewServer_Player_Award[1] > 200 then
			local nStart = math.floor(#tEpicWeaponsInNewServer_Player_Award[1]/3) * 2 + 1
			local nEnd = #tEpicWeaponsInNewServer_Player_Award[1]
			EpicWeaponsInNewServer_GetPartAward(nStart,nEnd)
		end
	end
end
--发奖第三阶段重置检查
function EpicWeaponsInNewServer_SendPartRewardCheck_Three()
	local nCheckGlobalId = tEpicWeaponsInNewServer_ServerGlobalScore["Id"]
	local nCheckPos = 3
	if Get_SysDynaGlobalData(nCheckGlobalId,nCheckPos) >= 1 then
		Sys_SetSynaGlobalData(nCheckGlobalId,nCheckPos,0)
	end
end
--发参与奖
function EpicWeaponsInNewServer_GetPartAward(nStart,nEnd)
	if nStart > #tEpicWeaponsInNewServer_Player_Award[1] or nEnd > #tEpicWeaponsInNewServer_Player_Award[1] then
		return
	end
	local nUserId = 0
	for j = nStart,nEnd do
		nUserId = tEpicWeaponsInNewServer_Player_Award[1][j]["PlayerId"]
		if nUserId == nil or nUserId == 0 then
			return
		end
		EpicWeaponsInNewServer_SendAwardMail(nUserId,4)
	end
end
--随机取奖励玩家，取完剔除该玩家
function EpicWeaponsInNewServer_GetPlayerAward()
	if (tEpicWeaponsInNewServer_Player_Award[1]["ItemChanceSum"]) <= 0 then
		tEpicWeaponsInNewServer_Player_Award[1] = {}
		return nil
	end
	local flat,tNum = Probabil_RandomAward(tEpicWeaponsInNewServer_Player_Award,1)
	local nPlayerId = tNum[1]["tAward"][1]["PlayerId"]
	local nPlayerName = tNum[1]["tAward"][1]["PlayerName"]
	local nIndex = tNum[1]["tAward"][1]["TestIndex"]
	local nScore = tNum[1]["tAward"][1]["Score"]
	table.remove(tEpicWeaponsInNewServer_Player_Award[1],nIndex)
	tEpicWeaponsInNewServer_Player_Award[1]["ItemChanceSum"] = tEpicWeaponsInNewServer_Player_Award[1]["ItemChanceSum"] - nScore
	return nPlayerId,nPlayerName
end
--邮件发奖
function EpicWeaponsInNewServer_SendAwardMail(nUserId,nIndex)
	local nItemId = tEpicWeaponsInNewServer_MailActionItem[nIndex]
	local nActionId = tEpicWeaponsInNewServer_MailAction[nIndex]
	local nExistDay = 30
	local sSender = tEpicWeaponsInNewServer_Text["Mail"]["Sender"]
	local sTitle = tEpicWeaponsInNewServer_Text["Mail"]["Title"]
	local sContent = string.format(tEpicWeaponsInNewServer_Text["Mail"]["Content"],Get_ItemtypeName(nItemId))
	if nUserId ~= 0 or nUserId ~= nil then
		Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
		--log
		-- Sys_SaveActionFestivalLog(string.format(tEpicWeaponsInNewServer_Log["AwardItem"],nItemId,1),nUserId)
	end
end
--重置player表
function EpicWeaponsInNewServer_ResetPlayer()
	tEpicWeaponsInNewServer_Player = {}
end
--史诗武器道具碎片可选包
function EpicWeaponsInNewServer_GetChoicePackage(nItemId,nIndex)
	if not Item_ChkItem(nItemId) then
		return
	end
	if not RewardTemplate_CheckSpace(tEpicWeaponsInNewServer_ChoicePackageItemData[nItemId][nIndex]) then
		return
	end
	RewardTemplate_UseItemAndMsg(tEpicWeaponsInNewServer_ChoicePackageItemData[nItemId][nIndex])
end
--记录排行榜
function EpicWeaponsInNewServer_RecordAndSortRankList(nCurrentUserId,sCurrentUserName)
	local tRankList = EpicWeaponsInNewServer_GetGlobalRankList()
	local nCurrentNum = EpicWeaponsInNewServer_GetGlobalHandInTime()
	local nLen = #tRankList
	--如果自己已经在排行榜里
	for i = 1,nLen do
		if nCurrentUserId == tRankList[i]["UserId"] then
			if nCurrentNum > tRankList[i]["Num"] then
				tRankList[i]["Num"] = nCurrentNum
				tRankList[i]["UserName"] = sCurrentUserName
				tRankList = EpicWeaponsInNewServer_SortRankList(tRankList)
				--排序完的表更新到全局表
				EpicWeaponsInNewServer_RecordRankList(tRankList)
				return
			else
				return
			end
		end
	end
	--判断排行榜是满了没
	local nTarget = nLen + 1
	if nLen < 10 then
		tRankList[nTarget] = {}
		tRankList[nTarget]["UserId"] = nCurrentUserId  
		tRankList[nTarget]["Num"] =  nCurrentNum 
		tRankList[nTarget]["UserName"] =  sCurrentUserName 
	else
		--判断是否比最后一名数量多
		if tRankList[nLen]["Num"] > nCurrentNum then
			return
		else
			tRankList[nLen]["UserId"] =  nCurrentUserId  
			tRankList[nLen]["Num"] =  nCurrentNum 
			tRankList[nLen]["UserName"] =  sCurrentUserName
		end
	end
	--排序
	tRankList = EpicWeaponsInNewServer_SortRankList(tRankList)
	--排序完的表更新到全局表
	EpicWeaponsInNewServer_RecordRankList(tRankList)
end
--记录排行榜到全局表
function EpicWeaponsInNewServer_RecordRankList(tRankList)
	local nIndex = 0
	for i = 1,2 do
		for j = 1, 5 do
			nIndex = nIndex + 1
			local nUserId = tRankList[nIndex]["UserId"]
			local nNum = tRankList[nIndex]["Num"]
			local sUserName = tRankList[nIndex]["UserName"]
			local nGlobalId = tEpicWeaponsInNewServer_GlobalData[i]
			local nNameGlobalId = tEpicWeaponsInNewServer_GlobalData[i+2]
			Sys_SetSynaGlobalData(nGlobalId,j,nUserId)
			Sys_SetSynaGlobalDataStr(nGlobalId,j,tostring(nNum))
			Sys_SetSynaGlobalDataStr(nNameGlobalId,j,sUserName)
		end
	end
end	
--排序
function EpicWeaponsInNewServer_SortRankList(tList)
	local tRankList = tList
	local tmp = 0
	for i=1,#tRankList-1 do  
		for j=1,#tRankList-i do  
			if tRankList[j]["Num"] < tRankList[j+1]["Num"] then  
				tmp = tRankList[j]  
				tRankList[j] = tRankList[j+1]
				tRankList[j+1] = tmp  
			end  
		end  
	end 
	return tRankList
end
--获取全局表排行榜
function EpicWeaponsInNewServer_GetGlobalRankList()
	local tRankList = {}
	local nIndex = 0
	--获取全局表排行榜
	for i = 1,2 do
		for j = 1, 5 do
			local nGlobalId = tEpicWeaponsInNewServer_GlobalData[i]
			local nNameGlobalId = tEpicWeaponsInNewServer_GlobalData[i+2]
			local nUserId = Get_SysDynaGlobalData(nGlobalId,j)
			local nNum = Get_SysDynaGlobalDataStr(nGlobalId,j)
			local sUserName = Get_SysDynaGlobalDataStr(nNameGlobalId,j)
			nIndex = nIndex + 1
			tRankList[nIndex]={}
			tRankList[nIndex]["UserId"]= nUserId
			tRankList[nIndex]["UserName"]= sUserName
			if nNum=="" then
				tRankList[nIndex]["Num"] = 0
			else
				tRankList[nIndex]["Num"] = tonumber(nNum)
			end
		end
	end
	return tRankList
end
--获取并增加全服上交次数
function EpicWeaponsInNewServer_GetGlobalHandInTime()
	local nGlobalId = tEpicWeaponsInNewServer_ServerGlobalScore["Id"]
	local nTime = Get_SysDynaGlobalData1(nGlobalId)
	Sys_SetSynaGlobalData1(nGlobalId,nTime + 1)
	return nTime + 1
end
--2018.2.11新增 史诗转盘玩法
function EpicWeaponsInNewServer_ZhuanPan_HandIn(nIndex,nTwice)
	local nNpcId = Get_NpcId()
	--不在活动时间
	if not EpicWeaponsInNewServer_IsInTime() then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	if not Sys_ChkDayTime(tActivityTime["EpicWeaponsSoul"]["ZhuanPanHandInTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	local nItemId = tEpicWeaponsInNewServer_ZhuanPan_HandIn[nIndex]["Id"]
	local nNum = tEpicWeaponsInNewServer_ZhuanPan_HandIn[nIndex]["Num"]
	local nMonopoly = tEpicWeaponsInNewServer_ZhuanPan_HandIn[nIndex]["Monopoly"]
	local nGlobalId = tEpicWeaponsInNewServer_ZhuanPan_ServerGlobalScore["Id"]
	local nPos = tEpicWeaponsInNewServer_ZhuanPan_ServerGlobalScore["Pos"]
	local nCurrentnScore = Get_SysDynaGlobalData(nGlobalId,nPos)
	local nScoreIndex = 1
	-- if nCurrentnScore >= 20000 then
	if nCurrentnScore >= 500 then
		nScoreIndex = 2
	end
	if nItemId == 0 then
		if not User_CanPutMoney2Bag(-nNum) then
			--没钱
			Sys_MsgBox(tEpicWeaponsInNewServer_Text[nNpcId]["NoMoney"])
			return
		end
	else
		if not Item_ChkMulItem(nItemId,nItemId,nNum,nMonopoly) then
			--没有龙珠
			Sys_MsgBox(tEpicWeaponsInNewServer_Text[nNpcId]["NoBall"])
			return
		end
	end
	if not RewardTemplate_CheckSpace(tEpicWeaponsInNewServer_ZhuanPan_Reward[nScoreIndex][nIndex]) then
		Sys_MsgBox(tEpicWeaponsInNewServer_Text[nNpcId]["BackPackFull"])
		return
	end
	--二次确认
	if nTwice ~= nil and EpicWeaponsInNewServer_ZhuanPan_GetDontAsk(nIndex) then
		LinkNpcGossipFunc_New(nNpcId,tEpicWeaponsInNewServer_ZhuanPan_Stc[nIndex]["TalkIndex"])
		return
	end
	if RewardTemplate_UseItem(tEpicWeaponsInNewServer_ZhuanPan_Reward[nScoreIndex][nIndex]) then
		EpicWeaponsInNewServer_ZhuanPan_RecordScore(1)
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		if nItemId == 0 then 
			Sys_SaveEmoneyBuy(tEpicWeaponsInNewServer_ZhuanPan_EmoneyLog[1])
		else
			Sys_SaveEmoneyBuy(tEpicWeaponsInNewServer_ZhuanPan_EmoneyLog[2])
		end
	end
end
--屏蔽二次确认
function EpicWeaponsInNewServer_ZhuanPan_DontAsk(nIndex)
	local nNpcId = Get_NpcId()
	local nDataType = tEpicWeaponsInNewServer_ZhuanPan_Stc[nIndex]["DataType"]
	local nEventType = tEpicWeaponsInNewServer_ZhuanPan_Stc[nIndex]["EventType"]
	--隔天
	if Task_StcInterval(nEventType,nDataType,1,4) then
		Task_SetStatistic(nEventType,nDataType,0,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end
	Task_SetStatistic(nEventType,nDataType,1,1)
	LinkNpcGossipFunc_New(nNpcId,"1-2")
end
--获取二次确认
function EpicWeaponsInNewServer_ZhuanPan_GetDontAsk(nIndex)
	local nDataType = tEpicWeaponsInNewServer_ZhuanPan_Stc[nIndex]["DataType"]
	local nEventType = tEpicWeaponsInNewServer_ZhuanPan_Stc[nIndex]["EventType"]
	--隔天
	if Task_StcInterval(nEventType,nDataType,1,4) then
		Task_SetStatistic(nEventType,nDataType,0,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end
	return Task_ChkStcValue(nEventType,nDataType,"==",0)
end
--记录转盘上交积分
function EpicWeaponsInNewServer_ZhuanPan_RecordScore(nScore)
	local nGlobalId = tEpicWeaponsInNewServer_ZhuanPan_ServerGlobalScore["Id"]
	local nPos = tEpicWeaponsInNewServer_ZhuanPan_ServerGlobalScore["Pos"]
	local nCurrentnScore = Get_SysDynaGlobalData(nGlobalId,nPos)
	Sys_SetSynaGlobalData(nGlobalId,nPos,nCurrentnScore + nScore)
end
--转盘上交积分清零
function EpicWeaponsInNewServer_ZhuanPan_ResetServerScore()
	local nGlobalId = tEpicWeaponsInNewServer_ZhuanPan_ServerGlobalScore["Id"]
	local nPos = tEpicWeaponsInNewServer_ZhuanPan_ServerGlobalScore["Pos"]
	Sys_SetSynaGlobalData(nGlobalId,nPos,0)
	--重置每日开启一个随机史诗武器包
	Sys_SetSynaGlobalData1(nGlobalId,0)
end
----------------------------------NPC部分---------------------------------------------
tNpcFace[4979] = 67
tNpcGossip[21154]= tNpcGossip[21154] or DefaultNpc:new{}
tNpcGossip[21154]["OptionHidden"] = 1
--活动前
tNpcGossip[21154]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[21154]["Text111"] = tEpicWeaponsInNewServer_Text[21154]["Text111"]
tNpcGossip[21154]["Text112"] = tEpicWeaponsInNewServer_Text[21154]["Text112"]
tNpcGossip[21154]["Text113"] = tEpicWeaponsInNewServer_Text[21154]["Text113"]
tNpcGossip[21154]["Text114"] = tEpicWeaponsInNewServer_Text[21154]["Text114"]
tNpcGossip[21154]["Text115"] = tEpicWeaponsInNewServer_Text[21154]["Text115"]
tNpcGossip[21154]["Text116"] = tEpicWeaponsInNewServer_Text[21154]["Text116"]
tNpcGossip[21154]["Text117"] = tEpicWeaponsInNewServer_Text[21154]["Text117"]
tNpcGossip[21154]["ChkFunc1-1"]= function()
	return CommonFunc_GetBeforeActivityTime(tEpicWeaponsInNewServer_Data["Activity"])
end
tNpcGossip[21154]["tOption1-1"] = {111}
tNpcGossip[21154]["Option111"] = tEpicWeaponsInNewServer_Text[21154]["Option111"]
--活动中
tNpcGossip[21154]["Text1-2"] = {121,122,123,124,125,126,127,128,129,130}
tNpcGossip[21154]["Text121"] = tEpicWeaponsInNewServer_Text[21154]["Text121"]
tNpcGossip[21154]["Text122"] = tEpicWeaponsInNewServer_Text[21154]["Text122"]
tNpcGossip[21154]["Text123"] = tEpicWeaponsInNewServer_Text[21154]["Text123"]
tNpcGossip[21154]["Text124"] = tEpicWeaponsInNewServer_Text[21154]["Text124"]
tNpcGossip[21154]["Text125"] = tEpicWeaponsInNewServer_Text[21154]["Text125"]
tNpcGossip[21154]["Text126"] = tEpicWeaponsInNewServer_Text[21154]["Text126"]
tNpcGossip[21154]["Text127"] = tEpicWeaponsInNewServer_Text[21154]["Text127"]
tNpcGossip[21154]["Text128"] = tEpicWeaponsInNewServer_Text[21154]["Text128"]
tNpcGossip[21154]["Text129"] = tEpicWeaponsInNewServer_Text[21154]["Text129"]
tNpcGossip[21154]["Text130"] = tEpicWeaponsInNewServer_Text[21154]["Text130"]
tNpcGossip[21154]["ChkFunc1-2"]= function()
	return Sys_ChkFullTime(tEpicWeaponsInNewServer_Data["Activity"])
end
tNpcGossip[21154]["tOption1-2"] = {121,122}
tNpcGossip[21154]["Option121"] = tEpicWeaponsInNewServer_Text[21154]["Option121"]
tNpcGossip[21154]["Option122"] = tEpicWeaponsInNewServer_Text[21154]["Option122"]
tNpcGossip[21154]["OptionPoint121"] = "2-1"
--活动后
tNpcGossip[21154]["Text1-3"] = {131,132}
tNpcGossip[21154]["Text131"] = tEpicWeaponsInNewServer_Text[21154]["Text131"]
tNpcGossip[21154]["Text132"] = tEpicWeaponsInNewServer_Text[21154]["Text132"]
tNpcGossip[21154]["ChkFunc1-3"]= function()
	return CommonFunc_GetAfterActivityTime(tEpicWeaponsInNewServer_Data["Activity"])
end
tNpcGossip[21154]["tOption1-3"] = {131}
tNpcGossip[21154]["Option131"] = tEpicWeaponsInNewServer_Text[21154]["Option131"]
--如何获取神兵灵魄？
tNpcGossip[21154]["Text2-1"] = {211,212,213,214,215,216,217,218}
tNpcGossip[21154]["Text211"] = tEpicWeaponsInNewServer_Text[21154]["Text211"]
tNpcGossip[21154]["Text212"] = tEpicWeaponsInNewServer_Text[21154]["Text212"]
tNpcGossip[21154]["Text213"] = tEpicWeaponsInNewServer_Text[21154]["Text213"]
tNpcGossip[21154]["Text214"] = tEpicWeaponsInNewServer_Text[21154]["Text214"]
tNpcGossip[21154]["Text215"] = tEpicWeaponsInNewServer_Text[21154]["Text215"]
tNpcGossip[21154]["Text216"] = tEpicWeaponsInNewServer_Text[21154]["Text216"]
tNpcGossip[21154]["Text217"] = tEpicWeaponsInNewServer_Text[21154]["Text217"]
tNpcGossip[21154]["Text218"] = tEpicWeaponsInNewServer_Text[21154]["Text218"]
tNpcGossip[21154]["ChkFunc2-1"]= function()
	return Sys_ChkFullTime(tEpicWeaponsInNewServer_Data["Activity"])
end
tNpcGossip[21154]["tOption2-1"] = {211}
tNpcGossip[21154]["Option211"] = tEpicWeaponsInNewServer_Text[21154]["Option211"]
--众筹宝箱
tNpcFace[3536] = 1136
tNpcGossip[21339]= tNpcGossip[21339] or DefaultNpc:new{}
tNpcGossip[21339]["OptionHidden"] = 1
--活动前
tNpcGossip[21339]["Text1-1"] = {111}
tNpcGossip[21339]["Text111"] = tEpicWeaponsInNewServer_Text[21339]["Text111"]
tNpcGossip[21339]["ChkFunc1-1"]= function()
	return CommonFunc_GetBeforeActivityTime(tEpicWeaponsInNewServer_Data["Activity"])
end
tNpcGossip[21339]["tOption1-1"] = {111}
tNpcGossip[21339]["Option111"] = tEpicWeaponsInNewServer_Text[21339]["Option111"]
--活动中
tNpcGossip[21339]["Text1-2"] = {121,122,123,124,125,126,127,128,129}
tNpcGossip[21339]["Text121"] = tEpicWeaponsInNewServer_Text[21339]["Text121"]
tNpcGossip[21339]["Text122"] = tEpicWeaponsInNewServer_Text[21339]["Text122"]
tNpcGossip[21339]["Text123"] = tEpicWeaponsInNewServer_Text[21339]["Text123"]
tNpcGossip[21339]["Text124"] = tEpicWeaponsInNewServer_Text[21339]["Text124"]
tNpcGossip[21339]["Text125"] = tEpicWeaponsInNewServer_Text[21339]["Text125"]
tNpcGossip[21339]["Text126"] = tEpicWeaponsInNewServer_Text[21339]["Text126"]
tNpcGossip[21339]["Text127"] = tEpicWeaponsInNewServer_Text[21339]["Text127"]
tNpcGossip[21339]["Text128"] = tEpicWeaponsInNewServer_Text[21339]["Text128"]
tNpcGossip[21339]["Text129"] = tEpicWeaponsInNewServer_Text[21339]["Text129"]
tNpcGossip[21339]["ChkFunc1-2"]= function()
	if not Sys_ChkFullTime(tEpicWeaponsInNewServer_Data["Activity"]) then
		return false
	end
	local nServerScore = EpicWeaponsInNewServer_GetServerScore()
	local nEventType = tEpicWeaponsInNewServer_Stc[5]["EventType"]
	local nDataType = tEpicWeaponsInNewServer_Stc[5]["DataType"]
	if Task_StcInterval(nEventType,nDataType,1,4) then
		Task_SetStatistic(nEventType,nDataType,0,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end
	local nScore = Get_UserStatisticValue(nEventType,nDataType)
	local sTxt = tEpicWeaponsInNewServer_Text[21339]["NotActivate"]
	tNpcGossip[21339]["Text124"] = string.format(tEpicWeaponsInNewServer_Text[21339]["Text124NotActivate"],sTxt)
	if nServerScore >= 10000 then
		sTxt = tEpicWeaponsInNewServer_Text[21339]["Activate"]
		tNpcGossip[21339]["Text124"] = string.format(tEpicWeaponsInNewServer_Text[21339]["Text124"],sTxt)
	end
	tNpcGossip[21339]["Text123"] = string.format(tEpicWeaponsInNewServer_Text[21339]["Text123"],nServerScore)
	tNpcGossip[21339]["Text129"] = string.format(tEpicWeaponsInNewServer_Text[21339]["Text129"],nScore)
	return true
end
tNpcGossip[21339]["tOption1-2"] = {121,122}
tNpcGossip[21339]["Option121"] = tEpicWeaponsInNewServer_Text[21339]["Option121"]
tNpcGossip[21339]["Option122"] = tEpicWeaponsInNewServer_Text[21339]["Option122"]
tNpcGossip[21339]["OptionPoint121"] = "5-1"
tNpcGossip[21339]["OptionPoint122"] = "4-1"
--活动后
tNpcGossip[21339]["Text1-3"] = {131}
tNpcGossip[21339]["Text131"] = tEpicWeaponsInNewServer_Text[21339]["Text131"]
tNpcGossip[21339]["ChkFunc1-3"]= function()
	return CommonFunc_GetAfterActivityTime(tEpicWeaponsInNewServer_Data["Activity"])
end
tNpcGossip[21339]["tOption1-3"] = {131}
tNpcGossip[21339]["Option131"] = tEpicWeaponsInNewServer_Text[21339]["Option131"]
--上交流星卷，没有流星卷
tNpcGossip[21339]["Text2-1"] = {211}
tNpcGossip[21339]["Text211"] = tEpicWeaponsInNewServer_Text[21339]["Text211"]
tNpcGossip[21339]["tOption2-1"] = {211}
tNpcGossip[21339]["Option211"] = tEpicWeaponsInNewServer_Text[21339]["Option211"]
--上交流星卷，上交时已过活动时间段
tNpcGossip[21339]["Text3-1"] = {311}
tNpcGossip[21339]["Text311"] = tEpicWeaponsInNewServer_Text[21339]["Text311"]
tNpcGossip[21339]["tOption3-1"] = {311}
tNpcGossip[21339]["Option311"] = tEpicWeaponsInNewServer_Text[21339]["Option311"]
--查看历史中奖记录
tNpcGossip[21339]["Text4-1"] = {411,412,413,414,415,416,417,418,419,420,421,422,423}
tNpcGossip[21339]["Text411"] = tEpicWeaponsInNewServer_Text[21339]["Text411"]
tNpcGossip[21339]["Text412"] = tEpicWeaponsInNewServer_Text[21339]["Text412"]
tNpcGossip[21339]["Text413"] = tEpicWeaponsInNewServer_Text[21339]["Text413"]
tNpcGossip[21339]["Text414"] = tEpicWeaponsInNewServer_Text[21339]["Text414"]
tNpcGossip[21339]["Text415"] = tEpicWeaponsInNewServer_Text[21339]["Text415"]
tNpcGossip[21339]["Text416"] = tEpicWeaponsInNewServer_Text[21339]["Text416"]
tNpcGossip[21339]["Text417"] = tEpicWeaponsInNewServer_Text[21339]["Text417"]
tNpcGossip[21339]["Text418"] = tEpicWeaponsInNewServer_Text[21339]["Text418"]
tNpcGossip[21339]["Text419"] = tEpicWeaponsInNewServer_Text[21339]["Text419"]
tNpcGossip[21339]["Text420"] = tEpicWeaponsInNewServer_Text[21339]["Text420"]
tNpcGossip[21339]["Text421"] = tEpicWeaponsInNewServer_Text[21339]["Text421"]
tNpcGossip[21339]["Text422"] = tEpicWeaponsInNewServer_Text[21339]["Text422"]
tNpcGossip[21339]["Text423"] = tEpicWeaponsInNewServer_Text[21339]["Text423"]
tNpcGossip[21339]["ChkFunc4-1"]= function()
	if not Sys_ChkFullTime(tEpicWeaponsInNewServer_Data["Activity"]) then
		return false
	end
	local tRankList = EpicWeaponsInNewServer_GetGlobalRankList()
	local nNpcGossipIndex = 412
	for i = 1 ,10 do
		local sUserName = ""
		if tRankList[i]["UserId"] == nil or tRankList[i]["UserId"] == 0 then
			sUserName = ""
			if i == 1 then
				sUserName = tEpicWeaponsInNewServer_Text[21339]["NoOne"]
			end
		else
			sUserName = "<"..tRankList[i]["UserName"]..">"..tEpicWeaponsInNewServer_Text[21339]["HaveReceived"]
		end
		tNpcGossip[21339]["Text"..nNpcGossipIndex+i] = string.format(tEpicWeaponsInNewServer_Text[21339]["Text"..nNpcGossipIndex+i],sUserName)
	end
	return true
end
tNpcGossip[21339]["tOption4-1"] = {411}
tNpcGossip[21339]["Option411"] = tEpicWeaponsInNewServer_Text[21339]["Option411"]
tNpcGossip[21339]["OptionPoint411"] = "1-2"
--上交成功后
tNpcGossip[21339]["Text5-1"] = {511,512,513,514,515,516}
tNpcGossip[21339]["Text511"] = tEpicWeaponsInNewServer_Text[21339]["Text511"]
tNpcGossip[21339]["Text512"] = tEpicWeaponsInNewServer_Text[21339]["Text512"]
tNpcGossip[21339]["Text513"] = tEpicWeaponsInNewServer_Text[21339]["Text513"]
tNpcGossip[21339]["Text514"] = tEpicWeaponsInNewServer_Text[21339]["Text514"]
tNpcGossip[21339]["Text515"] = tEpicWeaponsInNewServer_Text[21339]["Text515"]
tNpcGossip[21339]["Text516"] = tEpicWeaponsInNewServer_Text[21339]["Text516"]
tNpcGossip[21339]["ChkFunc5-1"]= function()
	if not Sys_ChkFullTime(tEpicWeaponsInNewServer_Data["Activity"]) then
		return false
	end
	local nEventType = tEpicWeaponsInNewServer_Stc[5]["EventType"]
	local nDataType = tEpicWeaponsInNewServer_Stc[5]["DataType"]
	if Task_StcInterval(nEventType,nDataType,1,4) then
		Task_SetStatistic(nEventType,nDataType,0,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end
	local nScore = Get_UserStatisticValue(nEventType,nDataType)
	tNpcGossip[21339]["Text516"] = string.format(tEpicWeaponsInNewServer_Text[21339]["Text516"],nScore)
	return true
end
tNpcGossip[21339]["tOption5-1"] = {511,512}
tNpcGossip[21339]["Option511"] = tEpicWeaponsInNewServer_Text[21339]["Option511"]
tNpcGossip[21339]["Option512"] = tEpicWeaponsInNewServer_Text[21339]["Option512"]
tNpcGossip[21339]["OptionFunc511"] = "EpicWeaponsInNewServer_HandIn</N>720027"
tNpcGossip[21339]["OptionFunc512"] = "EpicWeaponsInNewServer_HandIn</N>720027</N>10"
--史诗转盘
tNpcFace[1288] = 27
tNpcGossip[21446]= tNpcGossip[21446] or DefaultNpc:new{}
tNpcGossip[21446]["OptionHidden"] = 1
--活动前
tNpcGossip[21446]["Text1-1"] = {111}
tNpcGossip[21446]["Text111"] = tEpicWeaponsInNewServer_Text[21446]["Text111"]
tNpcGossip[21446]["ChkFunc1-1"]= function()
	return CommonFunc_GetBeforeActivityTime(tEpicWeaponsInNewServer_Data["Activity"])
end
tNpcGossip[21446]["tOption1-1"] = {111}
tNpcGossip[21446]["Option111"] = tEpicWeaponsInNewServer_Text[21446]["Option111"]
--活动中
tNpcGossip[21446]["Text1-2"] = {121,122,123,124,125,126}
tNpcGossip[21446]["Text121"] = tEpicWeaponsInNewServer_Text[21446]["Text121"]
tNpcGossip[21446]["Text122"] = tEpicWeaponsInNewServer_Text[21446]["Text122"]
tNpcGossip[21446]["Text123"] = tEpicWeaponsInNewServer_Text[21446]["Text123"]
tNpcGossip[21446]["Text124"] = tEpicWeaponsInNewServer_Text[21446]["Text124"]
tNpcGossip[21446]["Text125"] = tEpicWeaponsInNewServer_Text[21446]["Text125"]
tNpcGossip[21446]["Text126"] = tEpicWeaponsInNewServer_Text[21446]["Text126"]
tNpcGossip[21446]["ChkFunc1-2"]= function()
	if not Sys_ChkFullTime(tEpicWeaponsInNewServer_Data["Activity"]) then
		return false
	end
	return true
end
tNpcGossip[21446]["tOption1-2"] = {121,122}
tNpcGossip[21446]["Option121"] = tEpicWeaponsInNewServer_Text[21446]["Option121"]
tNpcGossip[21446]["Option122"] = tEpicWeaponsInNewServer_Text[21446]["Option122"]
tNpcGossip[21446]["OptionFunc121"] = "EpicWeaponsInNewServer_ZhuanPan_HandIn</N>1</N>1"
tNpcGossip[21446]["OptionFunc122"] = "EpicWeaponsInNewServer_ZhuanPan_HandIn</N>2</N>1"
--活动后
tNpcGossip[21446]["Text1-3"] = {131}
tNpcGossip[21446]["Text131"] = tEpicWeaponsInNewServer_Text[21446]["Text131"]
tNpcGossip[21446]["tOption1-3"] = {131}
tNpcGossip[21446]["Option131"] = tEpicWeaponsInNewServer_Text[21446]["Option131"]
--二次确认
tNpcGossip[21446]["Text2-1"] = {211}
tNpcGossip[21446]["Text211"] = tEpicWeaponsInNewServer_Text[21446]["Text211"]
tNpcGossip[21446]["tOption2-1"] = {211,212,223}
tNpcGossip[21446]["Option211"] = tEpicWeaponsInNewServer_Text[21446]["Option211"]
tNpcGossip[21446]["Option212"] = tEpicWeaponsInNewServer_Text[21446]["Option212"]
tNpcGossip[21446]["Option213"] = tEpicWeaponsInNewServer_Text[21446]["Option213"]
tNpcGossip[21446]["OptionFunc211"] = "EpicWeaponsInNewServer_ZhuanPan_HandIn</N>1"
tNpcGossip[21446]["OptionFunc212"] = "EpicWeaponsInNewServer_ZhuanPan_DontAsk</N>1"
--二次确认
tNpcGossip[21446]["Text2-2"] = {221}
tNpcGossip[21446]["Text221"] = tEpicWeaponsInNewServer_Text[21446]["Text221"]
tNpcGossip[21446]["tOption2-2"] = {221,222,223}
tNpcGossip[21446]["Option221"] = tEpicWeaponsInNewServer_Text[21446]["Option221"]
tNpcGossip[21446]["Option222"] = tEpicWeaponsInNewServer_Text[21446]["Option222"]
tNpcGossip[21446]["Option223"] = tEpicWeaponsInNewServer_Text[21446]["Option223"]
tNpcGossip[21446]["OptionFunc221"] = "EpicWeaponsInNewServer_ZhuanPan_HandIn</N>2"
tNpcGossip[21446]["OptionFunc222"] = "EpicWeaponsInNewServer_ZhuanPan_DontAsk</N>2"
--结算时间
tNpcGossip[21446]["Text3-1"] = {311}
tNpcGossip[21446]["Text311"] = tEpicWeaponsInNewServer_Text[21446]["Text311"]
tNpcGossip[21446]["tOption3-1"] = {311}
tNpcGossip[21446]["Option311"] = tEpicWeaponsInNewServer_Text[21446]["Option311"]
-- ---------------------------------物品部分---------------------------------------------
tItemFace[3305424] = 1127

tItemFace[3305414] = 1128
tItemFace[3305415] = 1129
tItemFace[3305416] = 1130
tItemFace[3305417] = 1131
tItemFace[3305418] = 1132
tItemFace[3305419] = 1133
tItemFace[3305420] = 1134
tItemFace[3305421] = 1135

tItemFace[3306772] = 847
tItemFace[3321029] = 1365
tItemFace[3321030] = 403

--神兵灵魄碎片
tItem[3305426] = tItem[3305426] or {}
tItem[3305426]["Function"] = function(nItemId,sItemName)
	EpicWeaponsInNewServer_ComposeWeaponSoul(nItemId)
end
--神兵灵魄
tItem[3305425] = tItem[3305425] or {}
tItem[3305425]["Function"] = function(nItemId,sItemName)
	local nCurrentItemId,nNum = EpicWeaponsInNewServer_UseRandomPackage(nItemId)
	if nCurrentItemId == nil then
		return
	end
	Sys_SaveActionFestivalLog(tEpicWeaponsInNewServer_Log[2])
	--史诗武器给公告
	if nCurrentItemId >= tEpicWeaponsInNewServer_Data["Weapon"][1] and nCurrentItemId <= tEpicWeaponsInNewServer_Data["Weapon"][4] then
		Sys_SystemBroadcast(string.format(tEpicWeaponsInNewServer_Text["Broadcast"]["OpenPackage"],Get_UserName(),Get_ItemtypeName(nItemId),Get_ItemtypeName(nCurrentItemId)))
		Sys_SaveActionFestivalLog(tEpicWeaponsInNewServer_Log[8])
	end
end
--史诗武器碎片随机包
tItem[3305422] = tItem[3305422] or {}
tItem[3305422]["Function"] = function(nItemId,sItemName)
	EpicWeaponsInNewServer_UseRandomPackage(nItemId)
end
--灵武酬勤卷轴
tItem[3305423] = tItem[3305423] or {}
tItem[3305423]["Function"] = function(nItemId,sItemName)
	EpicWeaponsInNewServer_ClickResetScroll(nItemId)
end

--圣灵神木
tItem[3305414] =tItem[3305414] or {}
tItem[3305414]["Text1-1"] = {111,112}
tItem[3305414]["Text111"] = tEpicWeaponsInNewServer_Text[3305414]["Text111"]
tItem[3305414]["Text112"] = tEpicWeaponsInNewServer_Text[3305414]["Text112"]
tItem[3305414]["tOption1-1"] = {111,112}
tItem[3305414]["Option111"] = tEpicWeaponsInNewServer_Text[3305414]["Option111"]
tItem[3305414]["Option112"] = tEpicWeaponsInNewServer_Text[3305414]["Option112"]
tItem[3305414]["OptionFunc111"] = "EpicWeaponsInNewServer_ConfirmEpicItemToTurn</N>3305414"
tItem[3305414]["OptionFunc112"] = "EpicWeaponsInNewServer_ConfirmEpicItemToClear</N>3305414"
--合成史诗武器二次确认
tItem[3305414]["Text2-1"] = {211}
tItem[3305414]["Text211"] = tEpicWeaponsInNewServer_Text[3305414]["Text211"]
tItem[3305414]["tOption2-1"] = {211,212}
tItem[3305414]["Option211"] = tEpicWeaponsInNewServer_Text[3305414]["Option211"]
tItem[3305414]["Option212"] = tEpicWeaponsInNewServer_Text[3305414]["Option212"]
tItem[3305414]["OptionFunc211"] = "EpicWeaponsInNewServer_UseEpicItemToTurn</N>3305414"
tItem[3305414]["OptionPoint212"] = "1-1"
--失败 非勇士职业
tItem[3305414]["Text3-1"] = {311}
tItem[3305414]["Text311"] = tEpicWeaponsInNewServer_Text[3305414]["Text311"]
tItem[3305414]["tOption3-1"] = {311}
tItem[3305414]["Option311"] = tEpicWeaponsInNewServer_Text[3305414]["Option311"]
--失败 非赠品属性的主手短武器
tItem[3305414]["Text4-1"] = {411}
tItem[3305414]["Text411"] = tEpicWeaponsInNewServer_Text[3305414]["Text411"]
tItem[3305414]["tOption4-1"] = {411}
tItem[3305414]["Option411"] = tEpicWeaponsInNewServer_Text[3305414]["Option411"]
--洗赠二次确认
tItem[3305414]["Text5-1"] = {511}
tItem[3305414]["Text511"] = tEpicWeaponsInNewServer_Text[3305414]["Text511"]
tItem[3305414]["tOption5-1"] = {511,512}
tItem[3305414]["Option511"] = tEpicWeaponsInNewServer_Text[3305414]["Option511"]
tItem[3305414]["Option512"] = tEpicWeaponsInNewServer_Text[3305414]["Option512"]
tItem[3305414]["OptionFunc511"] = "EpicWeaponsInNewServer_UseEpicItemToClear</N>3305414"
tItem[3305414]["OptionPoint512"] = "1-1"

--轮回之眼
tItem[3305415] =tItem[3305415] or {}
tItem[3305415]["Text1-1"] = {111,112}
tItem[3305415]["Text111"] = tEpicWeaponsInNewServer_Text[3305415]["Text111"]
tItem[3305415]["Text112"] = tEpicWeaponsInNewServer_Text[3305415]["Text112"]
tItem[3305415]["tOption1-1"] = {111,112}
tItem[3305415]["Option111"] = tEpicWeaponsInNewServer_Text[3305415]["Option111"]
tItem[3305415]["Option112"] = tEpicWeaponsInNewServer_Text[3305415]["Option112"]
tItem[3305415]["OptionFunc111"] = "EpicWeaponsInNewServer_ConfirmEpicItemToTurn</N>3305415"
tItem[3305415]["OptionFunc112"] = "EpicWeaponsInNewServer_ConfirmEpicItemToClear</N>3305415"
--合成史诗武器二次确认
tItem[3305415]["Text2-1"] = {211}
tItem[3305415]["Text211"] = tEpicWeaponsInNewServer_Text[3305415]["Text211"]
tItem[3305415]["tOption2-1"] = {211,212}
tItem[3305415]["Option211"] = tEpicWeaponsInNewServer_Text[3305415]["Option211"]
tItem[3305415]["Option212"] = tEpicWeaponsInNewServer_Text[3305415]["Option212"]
tItem[3305415]["OptionFunc211"] = "EpicWeaponsInNewServer_UseEpicItemToTurn</N>3305415"
tItem[3305415]["OptionPoint212"] = "1-1"
--失败 非忍者职业
tItem[3305415]["Text3-1"] = {311}
tItem[3305415]["Text311"] = tEpicWeaponsInNewServer_Text[3305415]["Text311"]
tItem[3305415]["tOption3-1"] = {311}
tItem[3305415]["Option311"] = tEpicWeaponsInNewServer_Text[3305415]["Option311"]
--失败 非赠品属性的主手忍刀武器
tItem[3305415]["Text4-1"] = {411}
tItem[3305415]["Text411"] = tEpicWeaponsInNewServer_Text[3305415]["Text411"]
tItem[3305415]["tOption4-1"] = {411}
tItem[3305415]["Option411"] = tEpicWeaponsInNewServer_Text[3305415]["Option411"]
--洗赠二次确认
tItem[3305415]["Text5-1"] = {511}
tItem[3305415]["Text511"] = tEpicWeaponsInNewServer_Text[3305415]["Text511"]
tItem[3305415]["tOption5-1"] = {511,512}
tItem[3305415]["Option511"] = tEpicWeaponsInNewServer_Text[3305415]["Option511"]
tItem[3305415]["Option512"] = tEpicWeaponsInNewServer_Text[3305415]["Option512"]
tItem[3305415]["OptionFunc511"] = "EpicWeaponsInNewServer_UseEpicItemToClear</N>3305415"
tItem[3305415]["OptionPoint512"] = "1-1"

--神宝仙丹
tItem[3305416] =tItem[3305416] or {}
tItem[3305416]["Text1-1"] = {111,112}
tItem[3305416]["Text111"] = tEpicWeaponsInNewServer_Text[3305416]["Text111"]
tItem[3305416]["Text112"] = tEpicWeaponsInNewServer_Text[3305416]["Text112"]
tItem[3305416]["tOption1-1"] = {111,112}
tItem[3305416]["Option111"] = tEpicWeaponsInNewServer_Text[3305416]["Option111"]
tItem[3305416]["Option112"] = tEpicWeaponsInNewServer_Text[3305416]["Option112"]
tItem[3305416]["OptionFunc111"] = "EpicWeaponsInNewServer_ConfirmEpicItemToTurn</N>3305416"
tItem[3305416]["OptionFunc112"] = "EpicWeaponsInNewServer_ConfirmEpicItemToClear</N>3305416"
--合成史诗武器二次确认
tItem[3305416]["Text2-1"] = {211}
tItem[3305416]["Text211"] = tEpicWeaponsInNewServer_Text[3305416]["Text211"]
tItem[3305416]["tOption2-1"] = {211,212}
tItem[3305416]["Option211"] = tEpicWeaponsInNewServer_Text[3305416]["Option211"]
tItem[3305416]["Option212"] = tEpicWeaponsInNewServer_Text[3305416]["Option212"]
tItem[3305416]["OptionFunc211"] = "EpicWeaponsInNewServer_UseEpicItemToTurn</N>3305416"
tItem[3305416]["OptionPoint212"] = "1-1"
--失败 非道士职业
tItem[3305416]["Text3-1"] = {311}
tItem[3305416]["Text311"] = tEpicWeaponsInNewServer_Text[3305416]["Text311"]
tItem[3305416]["tOption3-1"] = {311}
tItem[3305416]["Option311"] = tEpicWeaponsInNewServer_Text[3305416]["Option311"]
--失败 非赠品属性的主手法剑武器
tItem[3305416]["Text4-1"] = {411}
tItem[3305416]["Text411"] = tEpicWeaponsInNewServer_Text[3305416]["Text411"]
tItem[3305416]["tOption4-1"] = {411}
tItem[3305416]["Option411"] = tEpicWeaponsInNewServer_Text[3305416]["Option411"]
--洗赠二次确认
tItem[3305416]["Text5-1"] = {511}
tItem[3305416]["Text511"] = tEpicWeaponsInNewServer_Text[3305416]["Text511"]
tItem[3305416]["tOption5-1"] = {511,512}
tItem[3305416]["Option511"] = tEpicWeaponsInNewServer_Text[3305416]["Option511"]
tItem[3305416]["Option512"] = tEpicWeaponsInNewServer_Text[3305416]["Option512"]
tItem[3305416]["OptionFunc511"] = "EpicWeaponsInNewServer_UseEpicItemToClear</N>3305416"
tItem[3305416]["OptionPoint512"] = "1-1"

--空灵佛心
tItem[3305417] =tItem[3305417] or {}
tItem[3305417]["Text1-1"] = {111,112}
tItem[3305417]["Text111"] = tEpicWeaponsInNewServer_Text[3305417]["Text111"]
tItem[3305417]["Text112"] = tEpicWeaponsInNewServer_Text[3305417]["Text112"]
tItem[3305417]["tOption1-1"] = {111,112}
tItem[3305417]["Option111"] = tEpicWeaponsInNewServer_Text[3305417]["Option111"]
tItem[3305417]["Option112"] = tEpicWeaponsInNewServer_Text[3305417]["Option112"]
tItem[3305417]["OptionFunc111"] = "EpicWeaponsInNewServer_ConfirmEpicItemToTurn</N>3305417"
tItem[3305417]["OptionFunc112"] = "EpicWeaponsInNewServer_ConfirmEpicItemToClear</N>3305417"
--合成史诗武器二次确认
tItem[3305417]["Text2-1"] = {211}
tItem[3305417]["Text211"] = tEpicWeaponsInNewServer_Text[3305417]["Text211"]
tItem[3305417]["tOption2-1"] = {211,212}
tItem[3305417]["Option211"] = tEpicWeaponsInNewServer_Text[3305417]["Option211"]
tItem[3305417]["Option212"] = tEpicWeaponsInNewServer_Text[3305417]["Option212"]
tItem[3305417]["OptionFunc211"] = "EpicWeaponsInNewServer_UseEpicItemToTurn</N>3305417"
tItem[3305417]["OptionPoint212"] = "1-1"
--失败 非武僧职业
tItem[3305417]["Text3-1"] = {311}
tItem[3305417]["Text311"] = tEpicWeaponsInNewServer_Text[3305417]["Text311"]
tItem[3305417]["tOption3-1"] = {311}
tItem[3305417]["Option311"] = tEpicWeaponsInNewServer_Text[3305417]["Option311"]
--失败 非赠品属性的主手念珠武器
tItem[3305417]["Text4-1"] = {411}
tItem[3305417]["Text411"] = tEpicWeaponsInNewServer_Text[3305417]["Text411"]
tItem[3305417]["tOption4-1"] = {411}
tItem[3305417]["Option411"] = tEpicWeaponsInNewServer_Text[3305417]["Option411"]
--洗赠二次确认
tItem[3305417]["Text5-1"] = {511}
tItem[3305417]["Text511"] = tEpicWeaponsInNewServer_Text[3305417]["Text511"]
tItem[3305417]["tOption5-1"] = {511,512}
tItem[3305417]["Option511"] = tEpicWeaponsInNewServer_Text[3305417]["Option511"]
tItem[3305417]["Option512"] = tEpicWeaponsInNewServer_Text[3305417]["Option512"]
tItem[3305417]["OptionFunc511"] = "EpicWeaponsInNewServer_UseEpicItemToClear</N>3305417"
tItem[3305417]["OptionPoint512"] = "1-1"
--史诗武器道具碎片可选包
tItem[3306772] = tItem[3306772] or {}
tItem[3306772]["DialogueText"] = tEpicWeaponsInNewServer_Text[3306772]
tItem[3306772]["Text1-1"] = {111}
tItem[3306772]["tOption1-1"] = {1,2,3,4,5}
tItem[3306772]["OptionFunc1"] = "EpicWeaponsInNewServer_GetChoicePackage</N>3306772</N>1"
tItem[3306772]["OptionFunc2"] = "EpicWeaponsInNewServer_GetChoicePackage</N>3306772</N>2"
tItem[3306772]["OptionFunc3"] = "EpicWeaponsInNewServer_GetChoicePackage</N>3306772</N>3"
tItem[3306772]["OptionFunc4"] = "EpicWeaponsInNewServer_GetChoicePackage</N>3306772</N>4"
tItem[3306772]["OptionFunc5"] = "EpicWeaponsInNewServer_GetChoicePackage</N>3306772</N>5"
--海之心
tItem[3321029] =tItem[3321029] or {}
tItem[3321029]["Text1-1"] = {111,112}
tItem[3321029]["Text111"] = tEpicWeaponsInNewServer_Text[3321029]["Text111"]
tItem[3321029]["Text112"] = tEpicWeaponsInNewServer_Text[3321029]["Text112"]
tItem[3321029]["tOption1-1"] = {111,112}
tItem[3321029]["Option111"] = tEpicWeaponsInNewServer_Text[3321029]["Option111"]
tItem[3321029]["Option112"] = tEpicWeaponsInNewServer_Text[3321029]["Option112"]
tItem[3321029]["OptionFunc111"] = "EpicWeaponsInNewServer_ConfirmEpicItemToTurn</N>3321029"
tItem[3321029]["OptionFunc112"] = "EpicWeaponsInNewServer_ConfirmEpicItemToClear</N>3321029"
--合成史诗武器二次确认
tItem[3321029]["Text2-1"] = {211}
tItem[3321029]["Text211"] = tEpicWeaponsInNewServer_Text[3321029]["Text211"]
tItem[3321029]["tOption2-1"] = {211,212}
tItem[3321029]["Option211"] = tEpicWeaponsInNewServer_Text[3321029]["Option211"]
tItem[3321029]["Option212"] = tEpicWeaponsInNewServer_Text[3321029]["Option212"]
tItem[3321029]["OptionFunc211"] = "EpicWeaponsInNewServer_UseEpicItemToTurn</N>3321029"
tItem[3321029]["OptionPoint212"] = "1-1"
--失败 非海盗职业
tItem[3321029]["Text3-1"] = {311}
tItem[3321029]["Text311"] = tEpicWeaponsInNewServer_Text[3321029]["Text311"]
tItem[3321029]["tOption3-1"] = {311}
tItem[3321029]["Option311"] = tEpicWeaponsInNewServer_Text[3321029]["Option311"]
--失败 非赠品属性的主手武器
tItem[3321029]["Text4-1"] = {411}
tItem[3321029]["Text411"] = tEpicWeaponsInNewServer_Text[3321029]["Text411"]
tItem[3321029]["tOption4-1"] = {411}
tItem[3321029]["Option411"] = tEpicWeaponsInNewServer_Text[3321029]["Option411"]
--洗赠二次确认
tItem[3321029]["Text5-1"] = {511}
tItem[3321029]["Text511"] = tEpicWeaponsInNewServer_Text[3321029]["Text511"]
tItem[3321029]["tOption5-1"] = {511,512}
tItem[3321029]["Option511"] = tEpicWeaponsInNewServer_Text[3321029]["Option511"]
tItem[3321029]["Option512"] = tEpicWeaponsInNewServer_Text[3321029]["Option512"]
tItem[3321029]["OptionFunc511"] = "EpicWeaponsInNewServer_UseEpicItemToClear</N>3321029"
tItem[3321029]["OptionPoint512"] = "1-1"

--史诗武器道具碎片随机包
tItem[3306773] = tItem[3306773] or {}
tItem[3306773]["Function"] = function(nItemId,sItemName)
	EpicWeaponsInNewServer_UseRandomPackage(nItemId)
end
--史诗武器道具随机包
tItem[3306779] = tItem[3306779] or {}
tItem[3306779]["Function"] = function(nItemId,sItemName)
	local nCurrentItemId,nNum,sReward = EpicWeaponsInNewServer_UseRandomPackage(nItemId)
	if nCurrentItemId == nil then
		return
	end
	Sys_NormalBroadcast(string.format(tEpicWeaponsInNewServer_Text["Mail"]["Global"],Get_UserName(),sReward))
end

--2018.2.11新增 史诗转盘玩法
--史诗武器道具幸运箱
tItem[3307540] = tItem[3307540] or {}
tItem[3307540]["Function"] = function(nItemId,sItemName)
	EpicWeaponsInNewServer_UseRandomPackage(nItemId)
end
--史诗武器转盘1
tItem[3307453] = tItem[3307453] or {}
tItem[3307453]["Function"] = function(nItemId,sItemName)
	local nCurrentItemId,nNum = EpicWeaponsInNewServer_UseRandomPackage(nItemId)
	if nCurrentItemId == nil then
		return
	end
	--史诗武器给公告
	if nCurrentItemId == 3307540 then
		Sys_SystemBroadcast(string.format(tEpicWeaponsInNewServer_Text["Broadcast"]["OpenRott"],Get_UserName(),Get_ItemtypeName(nCurrentItemId)))
	end
end
--史诗武器转盘2
tItem[3307454] = tItem[3307454] or {}
tItem[3307454]["Function"] = function(nItemId,sItemName)
	local nCurrentItemId,nNum = EpicWeaponsInNewServer_UseRandomPackage(nItemId)
	if nCurrentItemId == nil then
		return
	end
	--史诗武器给公告
	if nCurrentItemId == 3307540 then
		Sys_SystemBroadcast(string.format(tEpicWeaponsInNewServer_Text["Broadcast"]["OpenRott"],Get_UserName(),Get_ItemtypeName(nCurrentItemId)))
	end
end
-- ---------------------------------怪物部分---------------------------------------------
--片区怪
local tEpicWeaponsInNewServer_KillAreaMonster = {}
tEpicWeaponsInNewServer_KillAreaMonster["Function"]= EpicWeaponsInNewServer_KillAreaMonster
tEpicWeaponsInNewServer_KillAreaMonster["Area"] = {1,2,3,4,5,6,7,8,9,10,11}
table.insert(tMonsterDrop_AreaLoad,tEpicWeaponsInNewServer_KillAreaMonster)
-- 古神灵境 3973,3974,3975,4709,4710,4711,4712,4713,4720
local tEpicWeaponsInNewServer_KillTreasureAreaMonsterDrop = {}
tEpicWeaponsInNewServer_KillTreasureAreaMonsterDrop["Function"]= EpicWeaponsInNewServer_KillTreasureAreaMonster
tEpicWeaponsInNewServer_KillTreasureAreaMonsterDrop["MonsterId"] = {3973,3974,3975,4709,4710,4711,4712,4713,4720}
table.insert(tMonsterDrop_AreaLoad,tEpicWeaponsInNewServer_KillTreasureAreaMonsterDrop)
--神龙岛潜龙渊boss击杀
-- 啸海巨魔 4220
-- 禁天妖兽 4212
-- 晶魄雪妖  4171 
-- 熔岩狂魔  4151   
local tEpicWeaponsInNewServer_KillBossDrop = {}
	tEpicWeaponsInNewServer_KillBossDrop["Function"] = EpicWeaponsInNewServer_KillBoss
	tEpicWeaponsInNewServer_KillBossDrop["MonsterId"] = {3976,3977,3978,3970,3971,4220,4212,4171,4151}
table.insert(tMonsterDrop_AreaLoad,tEpicWeaponsInNewServer_KillBossDrop)
-- ---------------------------------时间自检---------------------------------------------
--时间自检 清理史诗碎片随机包每天限量50个GlobalData
--新版'00:00 00:03'
local tEpicWeaponsInNewServer_ResetWeaponPiecesSystemProp = {}
tEpicWeaponsInNewServer_ResetWeaponPiecesSystemProp["Type"] = 2
tEpicWeaponsInNewServer_ResetWeaponPiecesSystemProp["TimeType"] = 4
tEpicWeaponsInNewServer_ResetWeaponPiecesSystemProp["Time"] = "00:00 00:02"
tEpicWeaponsInNewServer_ResetWeaponPiecesSystemProp["Func"] = EpicWeaponsInNewServer_ResetWeaponPiecesGlobalData
table.insert(tSystemTime_InitialData,tEpicWeaponsInNewServer_ResetWeaponPiecesSystemProp)
local tEpicWeaponsInNewServer_ResetWeaponPiecesSystemProp2 = {}
tEpicWeaponsInNewServer_ResetWeaponPiecesSystemProp2["Type"] = 2
tEpicWeaponsInNewServer_ResetWeaponPiecesSystemProp2["TimeType"] = 4
tEpicWeaponsInNewServer_ResetWeaponPiecesSystemProp2["Time"] = "00:03 00:04"
tEpicWeaponsInNewServer_ResetWeaponPiecesSystemProp2["Func"] = EpicWeaponsInNewServer_ResetWeaponPiecesGlobalData2
table.insert(tSystemTime_InitialData,tEpicWeaponsInNewServer_ResetWeaponPiecesSystemProp2)

----时间自检 发参与奖1
----新版'00:00 00:03'
--local tEpicWeaponsInNewServer_SendPartRewardSystemProp = {}
--tEpicWeaponsInNewServer_SendPartRewardSystemProp["Type"] = 2
--tEpicWeaponsInNewServer_SendPartRewardSystemProp["TimeType"] = 4
--tEpicWeaponsInNewServer_SendPartRewardSystemProp["Time"] = "00:03 00:04"
--tEpicWeaponsInNewServer_SendPartRewardSystemProp["Func"] = EpicWeaponsInNewServer_GetPartAward_Two
--table.insert(tSystemTime_InitialData,tEpicWeaponsInNewServer_SendPartRewardSystemProp)
--local tEpicWeaponsInNewServer_SendPartRewardSystemPropCheck = {}
--tEpicWeaponsInNewServer_SendPartRewardSystemPropCheck["Type"] = 2
--tEpicWeaponsInNewServer_SendPartRewardSystemPropCheck["TimeType"] = 4
--tEpicWeaponsInNewServer_SendPartRewardSystemPropCheck["Time"] = "00:05 00:06"
--tEpicWeaponsInNewServer_SendPartRewardSystemPropCheck["Func"] = EpicWeaponsInNewServer_SendPartRewardCheck_Two
--table.insert(tSystemTime_InitialData,tEpicWeaponsInNewServer_SendPartRewardSystemPropCheck)
--
----时间自检 发参与奖2
----新版'00:00 00:03'
--local tEpicWeaponsInNewServer_SendPartRewardSystemProp2 = {}
--tEpicWeaponsInNewServer_SendPartRewardSystemProp2["Type"] = 2
--tEpicWeaponsInNewServer_SendPartRewardSystemProp2["TimeType"] = 4
--tEpicWeaponsInNewServer_SendPartRewardSystemProp2["Time"] = "00:05 00:06"
--tEpicWeaponsInNewServer_SendPartRewardSystemProp2["Func"] = EpicWeaponsInNewServer_GetPartAward_Three
--table.insert(tSystemTime_InitialData,tEpicWeaponsInNewServer_SendPartRewardSystemProp2)
--local tEpicWeaponsInNewServer_SendPartRewardSystemPropCheck2 = {}
--tEpicWeaponsInNewServer_SendPartRewardSystemPropCheck2["Type"] = 2
--tEpicWeaponsInNewServer_SendPartRewardSystemPropCheck2["TimeType"] = 4
--tEpicWeaponsInNewServer_SendPartRewardSystemPropCheck2["Time"] = "00:07 00:08"
--tEpicWeaponsInNewServer_SendPartRewardSystemPropCheck2["Func"] = EpicWeaponsInNewServer_SendPartRewardCheck_Three
--table.insert(tSystemTime_InitialData,tEpicWeaponsInNewServer_SendPartRewardSystemPropCheck2)
----------------------------------------------------------------------------------------
--时间自检 清理史诗武器道具10天一个GlobalData
--新版'00:00 00:03'
local tEpicWeaponsInNewServer_ResetEpicWeaponsSystemProp = {}
tEpicWeaponsInNewServer_ResetEpicWeaponsSystemProp["Type"] = 2
tEpicWeaponsInNewServer_ResetEpicWeaponsSystemProp["TimeType"] = 4
tEpicWeaponsInNewServer_ResetEpicWeaponsSystemProp["Time"] = "00:00 00:03"
tEpicWeaponsInNewServer_ResetEpicWeaponsSystemProp["Func"] = EpicWeaponsInNewServer_ResetEpicWeaponsGlobalData
table.insert(tSystemTime_InitialData,tEpicWeaponsInNewServer_ResetEpicWeaponsSystemProp)
local tEpicWeaponsInNewServer_ResetEpicWeaponsSystemProp_Check = {}
tEpicWeaponsInNewServer_ResetEpicWeaponsSystemProp_Check["Type"] = 2
tEpicWeaponsInNewServer_ResetEpicWeaponsSystemProp_Check["TimeType"] = 4
tEpicWeaponsInNewServer_ResetEpicWeaponsSystemProp_Check["Time"] = "00:04 00:05"
tEpicWeaponsInNewServer_ResetEpicWeaponsSystemProp_Check["Func"] = EpicWeaponsInNewServer_ResetEpicWeaponsGlobalData2
table.insert(tSystemTime_InitialData,tEpicWeaponsInNewServer_ResetEpicWeaponsSystemProp_Check)
--时间自检 史诗武器道具GlobalData设置为1，活动过后神兵灵魄不产出史诗武器道具
--新版'00:00 00:03'
local tEpicWeaponsInNewServer_ResetEpicWeaponsSystemProp1 = {}
tEpicWeaponsInNewServer_ResetEpicWeaponsSystemProp1["Type"] = 2
tEpicWeaponsInNewServer_ResetEpicWeaponsSystemProp1["TimeType"] = 4
tEpicWeaponsInNewServer_ResetEpicWeaponsSystemProp1["Time"] = "00:00 00:03"
tEpicWeaponsInNewServer_ResetEpicWeaponsSystemProp1["Func"] = EpicWeaponsInNewServer_SetEpicWeaponsGlobalData
table.insert(tSystemTime_InitialData,tEpicWeaponsInNewServer_ResetEpicWeaponsSystemProp1)
local tEpicWeaponsInNewServer_ResetEpicWeaponsSystemProp_Check1 = {}
tEpicWeaponsInNewServer_ResetEpicWeaponsSystemProp_Check1["Type"] = 2
tEpicWeaponsInNewServer_ResetEpicWeaponsSystemProp_Check1["TimeType"] = 4
tEpicWeaponsInNewServer_ResetEpicWeaponsSystemProp_Check1["Time"] = "00:04 00:05"
tEpicWeaponsInNewServer_ResetEpicWeaponsSystemProp_Check1["Func"] = EpicWeaponsInNewServer_ResetEpicWeaponsGlobalData2
table.insert(tSystemTime_InitialData,tEpicWeaponsInNewServer_ResetEpicWeaponsSystemProp_Check1)
----------------------------------------------------------------------------------------
-- 服务器启动加载
--function EpicWeaponsInNewServer_StartServer()
--	tEpicWeaponsInNewServer_Data["Activity"] = Get_SysDynaGlobalDataStr2(tEpicWeaponsInNewServer_Cont["Global"]["Id"])
--	tActivityTime["EpicWeaponsSoul"]["Activity"] = Get_SysDynaGlobalDataStr2(tEpicWeaponsInNewServer_Cont["Global"]["Id"])
--end
--
--tServerStart["tFunction"] = tServerStart["tFunction"] or {}
--table.insert(tServerStart["tFunction"],EpicWeaponsInNewServer_StartServer)