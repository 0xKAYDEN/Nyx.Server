------------------------------------------------------------------------------------
--Name：           190213[英文征服][活动脚本]任务-英文征服3月SVIP特权月制作-专属副本部分
--Creator:      杨艳
--Created:     2019/02/15
--------------------------------------------------------------------------------------

--	命名规范
--	ShuraBattleGround_
--	logid： 12001313

----------------------------------表配置部分--------------------------------------------
local tShuraBattleGround_Data = {}
-- 3320219,'白金战场通行令
-- 3320220,'黄金战场通行令
-- 3320221,'黑金战场通行令
	tShuraBattleGround_Data["Tikets"] = {}
	tShuraBattleGround_Data["Tikets"][1] = 3320219   --白金
	tShuraBattleGround_Data["Tikets"][2] = 3320220   --黄金
	tShuraBattleGround_Data["Tikets"][3] = 3320221	 --黑金
	
	--怪物陷阱
	tShuraBattleGround_Data["MonserTrap"] = 2286
	tShuraBattleGround_Data["PoisonTrap"] = 2287
	tShuraBattleGround_Data["TrapLeave"] = 2288
	
	--副本
	tShuraBattleGround_Data["ActMapId"] = 10431
	tShuraBattleGround_Data["InstanceType"] = 235
	tShuraBattleGround_Data["MapDoc"] = 1993
	
	--击杀BOSS掉落参数
	tShuraBattleGround_Data["Cellx"] = 25
	tShuraBattleGround_Data["Celly"] = 25
	tShuraBattleGround_Data["ExistTime"] = 300
	tShuraBattleGround_Data["BossDrop"] = {}
	-- 100气力值礼包
	tShuraBattleGround_Data["BossDrop"][1] = {}
	tShuraBattleGround_Data["BossDrop"][1]["ItemId"] = 3304324
	tShuraBattleGround_Data["BossDrop"][1]["Num"] = 1
	tShuraBattleGround_Data["BossDrop"][1]["ItemChanceSum"] = 100
	tShuraBattleGround_Data["BossDrop"][1]["ItemChanceNum"] = 100
	
	--传送地图
	tShuraBattleGround_Data["Trans"] = {}
	--普通服
	tShuraBattleGround_Data["Trans"][1] = {}
	tShuraBattleGround_Data["Trans"][1]["MapId"] = 1002
	tShuraBattleGround_Data["Trans"][1]["PosX"] = 326
	tShuraBattleGround_Data["Trans"][1]["PosY"] = 499
	--激情服
	-- tShuraBattleGround_Data["Trans"][2] = {}
	-- tShuraBattleGround_Data["Trans"][2]["MapId"] = 1002
	-- tShuraBattleGround_Data["Trans"][2]["PosX"] = 340
	-- tShuraBattleGround_Data["Trans"][2]["PosY"] = 341
	
	tShuraBattleGround_Data["GlobalId"] = 53523
	
	-- 进入地图
	tShuraBattleGround_Data["EmonyBuyEnter"] ="350	22766	0	0	1	"
	-- tShuraBattleGround_Data["EmonyBuyFinish"] ="350	22767	0	0	1	"
	
	
local tShuraBattleGround_Stc ={}
	--第几波
	tShuraBattleGround_Stc[1] = {}
	tShuraBattleGround_Stc[1]["DataType"] = 191
	tShuraBattleGround_Stc[1]["EventType"] = 15
	
	--最佳积分
	tShuraBattleGround_Stc[2] = {}
	tShuraBattleGround_Stc[2]["DataType"] = 191
	tShuraBattleGround_Stc[2]["EventType"] = 16
	
	--领取奖励
	tShuraBattleGround_Stc[3] = {}
	tShuraBattleGround_Stc[3]["DataType"] = 191
	tShuraBattleGround_Stc[3]["EventType"] = 17
	
	-- 积分
	tShuraBattleGround_Stc[4] = {}
	tShuraBattleGround_Stc[4]["DataType"] = 191
	tShuraBattleGround_Stc[4]["EventType"] = 18
	
	--补给怪掉落限制10
	tShuraBattleGround_Stc[5] = {}
	tShuraBattleGround_Stc[5]["DataType"] = 191
	tShuraBattleGround_Stc[5]["EventType"] = 19
	tShuraBattleGround_Stc[5]["DataLimit"] = 9
	
--奖励
local tShuraBattleGround_Award = {}
	tShuraBattleGround_Award["RewardEMoneyMono"] = {}
	tShuraBattleGround_Award["RewardEMoneyMono"]["LogId"] = 12001313
	tShuraBattleGround_Award["RewardEMoneyMono"]["RewardEMoneyMono"] = {}
	tShuraBattleGround_Award["RewardEMoneyMono"]["RewardEMoneyMono"]["Value"] = 0
	tShuraBattleGround_Award["RewardEMoneyMono"]["RewardEffect"]={}
	tShuraBattleGround_Award["RewardEMoneyMono"]["RewardEffect"]["Effect"] = "angelwing"

	tShuraBattleGround_Award[3320219] = 1
	tShuraBattleGround_Award[3320220] = 3
	tShuraBattleGround_Award[3320221] = 5
	
	-- ===VIP良品神纹源晶礼盒
	-- ===索引:3322725
	-- ===删除: 3322725,1
	-- ===
	tShuraBattleGround_Award[3322725] = {}
	tShuraBattleGround_Award[3322725][1] = {}
	tShuraBattleGround_Award[3322725][1]["LogId"] = 12001313
	tShuraBattleGround_Award[3322725][1]["DeleteItem"] = {}
	tShuraBattleGround_Award[3322725][1]["DeleteItem"][1] = {}
	tShuraBattleGround_Award[3322725][1]["DeleteItem"][1]["Id"] = 3322725 -- 【库】VIPRuneCrystalBox[属性:9]
	tShuraBattleGround_Award[3322725][1]["RewardItem"] = {}
	tShuraBattleGround_Award[3322725][1]["RewardItem"][1] = {}
	tShuraBattleGround_Award[3322725][1]["RewardItem"][1]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9]【表格】赠良品神纹源晶*10
	tShuraBattleGround_Award[3322725][1]["RewardItem"][1]["Attr"] = "0 10 3" -- MysticRuneStone*10
	tShuraBattleGround_Award[3322725][1]["RewardEffect"] = {}
	tShuraBattleGround_Award[3322725][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShuraBattleGround_Award[3322725][1]["RewardEffect"]["Effect"] = "angelwing"

	-- ===VIP女神礼物可选包
	-- ===索引: 3322726
	-- ===删除: 3322726,1
	-- ===
	tShuraBattleGround_Award[3322726] = {}
	tShuraBattleGround_Award[3322726][1] = {}
	tShuraBattleGround_Award[3322726][1]["LogId"] = 12001313
	tShuraBattleGround_Award[3322726][1]["DeleteItem"] = {}
	tShuraBattleGround_Award[3322726][1]["DeleteItem"][1] = {}
	tShuraBattleGround_Award[3322726][1]["DeleteItem"][1]["Id"] = 3322726 -- 【库】VIPFemaleGiftPack[属性:8]
	tShuraBattleGround_Award[3322726][1]["RewardItem"] = {}
	tShuraBattleGround_Award[3322726][1]["RewardItem"][1] = {}
	tShuraBattleGround_Award[3322726][1]["RewardItem"][1]["Id"] = 751999 -- 【库】999RedRoses[属性:8]【表格】999朵玫瑰
	tShuraBattleGround_Award[3322726][1]["RewardItem"][1]["Attr"] = "0 1" -- 999RedRoses*1
	tShuraBattleGround_Award[3322726][1]["RewardEffect"] = {}
	tShuraBattleGround_Award[3322726][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShuraBattleGround_Award[3322726][1]["RewardEffect"]["Effect"] = "angelwing"
	
	tShuraBattleGround_Award[3322726][2] = {}
	tShuraBattleGround_Award[3322726][2]["LogId"] = 12001313
	tShuraBattleGround_Award[3322726][2]["DeleteItem"] = {}
	tShuraBattleGround_Award[3322726][2]["DeleteItem"][1] = {}
	tShuraBattleGround_Award[3322726][2]["DeleteItem"][1]["Id"] = 3322726 -- 【库】VIPFemaleGiftPack[属性:8]
	tShuraBattleGround_Award[3322726][2]["RewardItem"] = {}
	tShuraBattleGround_Award[3322726][2]["RewardItem"][1] = {}
	tShuraBattleGround_Award[3322726][2]["RewardItem"][1]["Id"] = 753999 -- 【库】999RedRoses[属性:8]【表格】999朵玫瑰
	tShuraBattleGround_Award[3322726][2]["RewardItem"][1]["Attr"] = "0 1" -- 999RedRoses*1
	tShuraBattleGround_Award[3322726][2]["RewardEffect"] = {}
	tShuraBattleGround_Award[3322726][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShuraBattleGround_Award[3322726][2]["RewardEffect"]["Effect"] = "angelwing"
	
	tShuraBattleGround_Award[3322726][3] = {}
	tShuraBattleGround_Award[3322726][3]["LogId"] = 12001313
	tShuraBattleGround_Award[3322726][3]["DeleteItem"] = {}
	tShuraBattleGround_Award[3322726][3]["DeleteItem"][1] = {}
	tShuraBattleGround_Award[3322726][3]["DeleteItem"][1]["Id"] = 3322726 -- 【库】VIPFemaleGiftPack[属性:8]
	tShuraBattleGround_Award[3322726][3]["RewardItem"] = {}
	tShuraBattleGround_Award[3322726][3]["RewardItem"][1] = {}
	tShuraBattleGround_Award[3322726][3]["RewardItem"][1]["Id"] = 752999 -- 【库】999RedRoses[属性:8]【表格】999朵玫瑰
	tShuraBattleGround_Award[3322726][3]["RewardItem"][1]["Attr"] = "0 1" -- 999RedRoses*1
	tShuraBattleGround_Award[3322726][3]["RewardEffect"] = {}
	tShuraBattleGround_Award[3322726][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShuraBattleGround_Award[3322726][3]["RewardEffect"]["Effect"] = "angelwing"
	
	tShuraBattleGround_Award[3322726][4] = {}
	tShuraBattleGround_Award[3322726][4]["LogId"] = 12001313
	tShuraBattleGround_Award[3322726][4]["DeleteItem"] = {}
	tShuraBattleGround_Award[3322726][4]["DeleteItem"][1] = {}
	tShuraBattleGround_Award[3322726][4]["DeleteItem"][1]["Id"] = 3322726 -- 【库】VIPFemaleGiftPack[属性:8]
	tShuraBattleGround_Award[3322726][4]["RewardItem"] = {}
	tShuraBattleGround_Award[3322726][4]["RewardItem"][1] = {}
	tShuraBattleGround_Award[3322726][4]["RewardItem"][1]["Id"] = 754999 -- 【库】999RedRoses[属性:8]【表格】999朵玫瑰
	tShuraBattleGround_Award[3322726][4]["RewardItem"][1]["Attr"] = "0 1" -- 999RedRoses*1
	tShuraBattleGround_Award[3322726][4]["RewardEffect"] = {}
	tShuraBattleGround_Award[3322726][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShuraBattleGround_Award[3322726][4]["RewardEffect"]["Effect"] = "angelwing"
	
	
	-- ===VIP男神礼物可选包
	-- ===索引: 3322727
	-- ===删除: 3322727,1
	-- ===
	tShuraBattleGround_Award[3322727] = {}
	tShuraBattleGround_Award[3322727][1] = {}
	tShuraBattleGround_Award[3322727][1]["LogId"] = 12001313
	tShuraBattleGround_Award[3322727][1]["DeleteItem"] = {}
	tShuraBattleGround_Award[3322727][1]["DeleteItem"][1] = {}
	tShuraBattleGround_Award[3322727][1]["DeleteItem"][1]["Id"] = 3322727 -- 【库】VIPMaleGiftPack[属性:8]
	tShuraBattleGround_Award[3322727][1]["RewardItem"] = {}
	tShuraBattleGround_Award[3322727][1]["RewardItem"][1] = {}
	tShuraBattleGround_Award[3322727][1]["RewardItem"][1]["Id"] = 755999 -- 【库】999Kisses[属性:8]【表格】999个飞吻
	tShuraBattleGround_Award[3322727][1]["RewardItem"][1]["Attr"] = "0 1" -- 999Kisses*1
	tShuraBattleGround_Award[3322727][1]["RewardEffect"] = {}
	tShuraBattleGround_Award[3322727][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShuraBattleGround_Award[3322727][1]["RewardEffect"]["Effect"] = "angelwing"
	                
	tShuraBattleGround_Award[3322727][2] = {}
	tShuraBattleGround_Award[3322727][2]["LogId"] = 12001313
	tShuraBattleGround_Award[3322727][2]["DeleteItem"] = {}
	tShuraBattleGround_Award[3322727][2]["DeleteItem"][1] = {}
	tShuraBattleGround_Award[3322727][2]["DeleteItem"][1]["Id"] = 3322727 -- 【库】VIPMaleGiftPack[属性:8]
	tShuraBattleGround_Award[3322727][2]["RewardItem"] = {}
	tShuraBattleGround_Award[3322727][2]["RewardItem"][1] = {}
	tShuraBattleGround_Award[3322727][2]["RewardItem"][1]["Id"] = 756999 -- 【库】999Kisses[属性:8]【表格】999个飞吻
	tShuraBattleGround_Award[3322727][2]["RewardItem"][1]["Attr"] = "0 1" -- 999Kisses*1
	tShuraBattleGround_Award[3322727][2]["RewardEffect"] = {}
	tShuraBattleGround_Award[3322727][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShuraBattleGround_Award[3322727][2]["RewardEffect"]["Effect"] = "angelwing"
	
	tShuraBattleGround_Award[3322727][3] = {}
	tShuraBattleGround_Award[3322727][3]["LogId"] = 12001313
	tShuraBattleGround_Award[3322727][3]["DeleteItem"] = {}
	tShuraBattleGround_Award[3322727][3]["DeleteItem"][1] = {}
	tShuraBattleGround_Award[3322727][3]["DeleteItem"][1]["Id"] = 3322727 -- 【库】VIPMaleGiftPack[属性:8]
	tShuraBattleGround_Award[3322727][3]["RewardItem"] = {}
	tShuraBattleGround_Award[3322727][3]["RewardItem"][1] = {}
	tShuraBattleGround_Award[3322727][3]["RewardItem"][1]["Id"] = 757999 -- 【库】999Kisses[属性:8]【表格】999个飞吻
	tShuraBattleGround_Award[3322727][3]["RewardItem"][1]["Attr"] = "0 1" -- 999Kisses*1
	tShuraBattleGround_Award[3322727][3]["RewardEffect"] = {}
	tShuraBattleGround_Award[3322727][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShuraBattleGround_Award[3322727][3]["RewardEffect"]["Effect"] = "angelwing"
	
	tShuraBattleGround_Award[3322727][4] = {}
	tShuraBattleGround_Award[3322727][4]["LogId"] = 12001313
	tShuraBattleGround_Award[3322727][4]["DeleteItem"] = {}
	tShuraBattleGround_Award[3322727][4]["DeleteItem"][1] = {}
	tShuraBattleGround_Award[3322727][4]["DeleteItem"][1]["Id"] = 3322727 -- 【库】VIPMaleGiftPack[属性:8]
	tShuraBattleGround_Award[3322727][4]["RewardItem"] = {}
	tShuraBattleGround_Award[3322727][4]["RewardItem"][1] = {}
	tShuraBattleGround_Award[3322727][4]["RewardItem"][1]["Id"] = 758999 -- 【库】999Kisses[属性:8]【表格】999个飞吻
	tShuraBattleGround_Award[3322727][4]["RewardItem"][1]["Attr"] = "0 1" -- 999Kisses*1
	tShuraBattleGround_Award[3322727][4]["RewardEffect"] = {}
	tShuraBattleGround_Award[3322727][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShuraBattleGround_Award[3322727][4]["RewardEffect"]["Effect"] = "angelwing"
					
	-- ===VIP稀有蓝色神纹碎片包
	-- ===索引: 3322728
	-- ===删除: 3322728,1
	-- ===
	tShuraBattleGround_Award[3322728] = {}
	tShuraBattleGround_Award[3322728][1] = {}
	tShuraBattleGround_Award[3322728][1]["LogId"] = 12001313
	tShuraBattleGround_Award[3322728][1]["DeleteItem"] = {}
	tShuraBattleGround_Award[3322728][1]["DeleteItem"][1] = {}
	tShuraBattleGround_Award[3322728][1]["DeleteItem"][1]["Id"] = 3322728 -- 【库】VIPRuneFragmentBox[属性:9]
	tShuraBattleGround_Award[3322728][1]["RewardItem"] = {}
	tShuraBattleGround_Award[3322728][1]["RewardItem"][1] = {}
	tShuraBattleGround_Award[3322728][1]["RewardItem"][1]["Id"] = 3311749 -- 【库】RareBlueRune(B)Fragment[属性:9]【表格】赠稀有蓝色神纹碎片*1
	tShuraBattleGround_Award[3322728][1]["RewardItem"][1]["Attr"] = "0 1" -- RareBlueRune(B)Fragment*1
	tShuraBattleGround_Award[3322728][1]["RewardEffect"] = {}
	tShuraBattleGround_Award[3322728][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShuraBattleGround_Award[3322728][1]["RewardEffect"]["Effect"] = "angelwing"

--随机奖励	
local tShuraBattleGround_RunAward = {}
	
	tShuraBattleGround_RunAward[1] = {}
	tShuraBattleGround_RunAward[1]["ItemChanceSum"] = 10000
	tShuraBattleGround_RunAward[1]["LogId"] = 12001313
-- 3322725,'VIP良品神纹源晶礼盒',9
-- 3322726,'VIP女神礼物可选包',8,9
-- 3322727,'VIP男神礼物可选包',8,9
-- 3322728,'VIP稀有蓝色神纹碎片盒'
-- 3322729,'VIP灵珠极运包',8,98471

	tShuraBattleGround_RunAward[1][1] = {}
	tShuraBattleGround_RunAward[1][1]["RandomItemChanceType"] = 2
	tShuraBattleGround_RunAward[1][1]["ItemChance"] = 2000
	tShuraBattleGround_RunAward[1][1]["RewardItem"] = {}
	tShuraBattleGround_RunAward[1][1]["RewardItem"][1] = {}
	tShuraBattleGround_RunAward[1][1]["RewardItem"][1]["Id"] = 3322725 
	tShuraBattleGround_RunAward[1][1]["RewardItem"][1]["Attr"] = "0 1" 
	tShuraBattleGround_RunAward[1][1]["RewardEffect"] = {}
	tShuraBattleGround_RunAward[1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShuraBattleGround_RunAward[1][1]["RewardEffect"]["Effect"] = "angelwing"

	tShuraBattleGround_RunAward[1][2] = {}
	tShuraBattleGround_RunAward[1][2]["RandomItemChanceType"] = 2
	tShuraBattleGround_RunAward[1][2]["ItemChance"] = 2000
	tShuraBattleGround_RunAward[1][2]["RewardItem"] = {}
	tShuraBattleGround_RunAward[1][2]["RewardItem"][1] = {}
	tShuraBattleGround_RunAward[1][2]["RewardItem"][1]["Id"] = 3322726 -- 【库】神兵灵魄[属性:9]【表格】20个神兵灵魄
	tShuraBattleGround_RunAward[1][2]["RewardItem"][1]["Attr"] = "0 1" -- 神兵灵魄*20
	tShuraBattleGround_RunAward[1][2]["RewardEffect"] = {}
	tShuraBattleGround_RunAward[1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShuraBattleGround_RunAward[1][2]["RewardEffect"]["Effect"] = "angelwing"

	tShuraBattleGround_RunAward[1][3] = {}
	tShuraBattleGround_RunAward[1][3]["RandomItemChanceType"] = 2
	tShuraBattleGround_RunAward[1][3]["ItemChance"] = 2000
	tShuraBattleGround_RunAward[1][3]["RewardItem"] = {}
	tShuraBattleGround_RunAward[1][3]["RewardItem"][1] = {}
	tShuraBattleGround_RunAward[1][3]["RewardItem"][1]["Id"] = 3322727 
	tShuraBattleGround_RunAward[1][3]["RewardItem"][1]["Attr"] = "0 1"
	tShuraBattleGround_RunAward[1][3]["RewardEffect"] = {}
	tShuraBattleGround_RunAward[1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShuraBattleGround_RunAward[1][3]["RewardEffect"]["Effect"] = "angelwing"

	tShuraBattleGround_RunAward[1][4] = {}
	tShuraBattleGround_RunAward[1][4]["RandomItemChanceType"] = 2
	tShuraBattleGround_RunAward[1][4]["ItemChance"] = 2000
	tShuraBattleGround_RunAward[1][4]["RewardItem"] = {}
	tShuraBattleGround_RunAward[1][4]["RewardItem"][1] = {}
	tShuraBattleGround_RunAward[1][4]["RewardItem"][1]["Id"] = 3322728 -- 【库】神兵灵魄[属性:9]【表格】50个神兵灵魄
	tShuraBattleGround_RunAward[1][4]["RewardItem"][1]["Attr"] = "0 1" -- 神兵灵魄*50
	tShuraBattleGround_RunAward[1][4]["GlobalId"] = 53523
	tShuraBattleGround_RunAward[1][4]["MaxData"] = 10
	tShuraBattleGround_RunAward[1][4]["FullIndex"] = 1
	tShuraBattleGround_RunAward[1][4]["Pos"] = 0
	tShuraBattleGround_RunAward[1][4]["RewardEffect"] = {}
	tShuraBattleGround_RunAward[1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShuraBattleGround_RunAward[1][4]["RewardEffect"]["Effect"] = "angelwing"

	tShuraBattleGround_RunAward[1][5] = {}
	tShuraBattleGround_RunAward[1][5]["RandomItemChanceType"] = 2
	tShuraBattleGround_RunAward[1][5]["ItemChance"] = 2000
	tShuraBattleGround_RunAward[1][5]["RewardItem"] = {}
	tShuraBattleGround_RunAward[1][5]["RewardItem"][1] = {}
	tShuraBattleGround_RunAward[1][5]["RewardItem"][1]["Id"] = 3322729 -- 【库】神兵灵魄[属性:9]【表格】80个神兵灵魄
	tShuraBattleGround_RunAward[1][5]["RewardItem"][1]["Attr"] = "0 1" -- 神兵灵魄*80
	tShuraBattleGround_RunAward[1][5]["RewardEffect"] = {}
	tShuraBattleGround_RunAward[1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShuraBattleGround_RunAward[1][5]["RewardEffect"]["Effect"] = "angelwing"
	
	
-- 3322729,'VIPAnimaLuckyPack'
	tShuraBattleGround_RunAward[3322729] = {}
	tShuraBattleGround_RunAward[3322729]["ItemChanceSum"] = 10000
    tShuraBattleGround_RunAward[3322729]["LogId"] = 12001313
	
	-- 4阶灵珠*1	4200004	1							10%		
	tShuraBattleGround_RunAward[3322729][1] = {}
	tShuraBattleGround_RunAward[3322729][1]["RandomItemChanceType"] = 2
	tShuraBattleGround_RunAward[3322729][1]["ItemChance"] = 1000
	tShuraBattleGround_RunAward[3322729][1]["RewardItem"] = {}
	tShuraBattleGround_RunAward[3322729][1]["RewardItem"][1] = {}
	tShuraBattleGround_RunAward[3322729][1]["RewardItem"][1]["Id"] = 4200004
	tShuraBattleGround_RunAward[3322729][1]["RewardItem"][1]["Attr"] = "0 1"
	tShuraBattleGround_RunAward[3322729][1]["RewardItem"][1]["PreciousType"] = 320
	tShuraBattleGround_RunAward[3322729][1]["EmoneyLog"] = "350	22496	0	0	1	"

	-- 4阶灵珠*2	4200004	2							12%		
	tShuraBattleGround_RunAward[3322729][2] = {}
	tShuraBattleGround_RunAward[3322729][2]["RandomItemChanceType"] = 2
	tShuraBattleGround_RunAward[3322729][2]["ItemChance"] = 1200
	tShuraBattleGround_RunAward[3322729][2]["RewardItem"] = {}
	tShuraBattleGround_RunAward[3322729][2]["RewardItem"][1] = {}
	tShuraBattleGround_RunAward[3322729][2]["RewardItem"][1]["Id"] = 4200004
	tShuraBattleGround_RunAward[3322729][2]["RewardItem"][1]["Attr"] = "0 2"
	tShuraBattleGround_RunAward[3322729][2]["RewardItem"][1]["PreciousType"] = 320
	tShuraBattleGround_RunAward[3322729][2]["EmoneyLog"] = "350	22497	0	0	1	"
	
	-- 5阶灵珠*1	4200005	1							12%			
	tShuraBattleGround_RunAward[3322729][3] = {}
	tShuraBattleGround_RunAward[3322729][3]["RandomItemChanceType"] = 2
	tShuraBattleGround_RunAward[3322729][3]["ItemChance"] = 1200
	tShuraBattleGround_RunAward[3322729][3]["RewardItem"] = {}
	tShuraBattleGround_RunAward[3322729][3]["RewardItem"][1] = {}
	tShuraBattleGround_RunAward[3322729][3]["RewardItem"][1]["Id"] = 4200005
	tShuraBattleGround_RunAward[3322729][3]["RewardItem"][1]["Attr"] = "0 1"
	tShuraBattleGround_RunAward[3322729][3]["RewardItem"][1]["PreciousType"] = 320
	tShuraBattleGround_RunAward[3322729][3]["EmoneyLog"] = "350	22498	0	0	1	"
	
	-- 5阶灵珠*2	4200005	2							23%		
	tShuraBattleGround_RunAward[3322729][4] = {}
	tShuraBattleGround_RunAward[3322729][4]["RandomItemChanceType"] = 2
	tShuraBattleGround_RunAward[3322729][4]["ItemChance"] = 2300
	tShuraBattleGround_RunAward[3322729][4]["RewardItem"] = {}
	tShuraBattleGround_RunAward[3322729][4]["RewardItem"][1] = {}
	tShuraBattleGround_RunAward[3322729][4]["RewardItem"][1]["Id"] = 4200005
	tShuraBattleGround_RunAward[3322729][4]["RewardItem"][1]["Attr"] = "0 2"
	tShuraBattleGround_RunAward[3322729][4]["RewardItem"][1]["PreciousType"] = 320
	tShuraBattleGround_RunAward[3322729][4]["EmoneyLog"] = "350	22499	0	0	1	"	

	-- 6阶灵珠*1	4200006	1							24%		
	tShuraBattleGround_RunAward[3322729][5] = {}
	tShuraBattleGround_RunAward[3322729][5]["RandomItemChanceType"] = 2
	tShuraBattleGround_RunAward[3322729][5]["ItemChance"] = 2400
	tShuraBattleGround_RunAward[3322729][5]["RewardItem"] = {}
	tShuraBattleGround_RunAward[3322729][5]["RewardItem"][1] = {}
	tShuraBattleGround_RunAward[3322729][5]["RewardItem"][1]["Id"] = 4200006
	tShuraBattleGround_RunAward[3322729][5]["RewardItem"][1]["Attr"] = "0 1"
	tShuraBattleGround_RunAward[3322729][5]["RewardItem"][1]["PreciousType"] = 320
	tShuraBattleGround_RunAward[3322729][5]["EmoneyLog"] = "350	22500	0	0	1	"
	
	-- 6阶灵珠*2	4200006	2							14%			单服每日限量50个，给完给6阶灵珠*1
	tShuraBattleGround_RunAward[3322729][6] = {}
	tShuraBattleGround_RunAward[3322729][6]["RandomItemChanceType"] = 2
	tShuraBattleGround_RunAward[3322729][6]["ItemChance"] = 1400
	tShuraBattleGround_RunAward[3322729][6]["RewardItem"] = {}
	tShuraBattleGround_RunAward[3322729][6]["RewardItem"][1] = {}
	tShuraBattleGround_RunAward[3322729][6]["RewardItem"][1]["Id"] = 4200006
	tShuraBattleGround_RunAward[3322729][6]["RewardItem"][1]["Attr"] = "0 2"
	tShuraBattleGround_RunAward[3322729][6]["RewardItem"][1]["PreciousType"] = 320
	tShuraBattleGround_RunAward[3322729][6]["GlobalId"] = 53523
	tShuraBattleGround_RunAward[3322729][6]["MaxData"] = 50
	tShuraBattleGround_RunAward[3322729][6]["FullIndex"] = 5
	tShuraBattleGround_RunAward[3322729][6]["Pos"] = 1
	tShuraBattleGround_RunAward[3322729][6]["EmoneyLog"] = "350	22501	0	0	1	"
	
	-- 7阶灵珠*1	4200007	1							4%			单服每日限量30个，给完给6阶灵珠*1
	tShuraBattleGround_RunAward[3322729][7] = {}
	tShuraBattleGround_RunAward[3322729][7]["RandomItemChanceType"] = 2
	tShuraBattleGround_RunAward[3322729][7]["ItemChance"] = 400
	tShuraBattleGround_RunAward[3322729][7]["RewardItem"] = {}
	tShuraBattleGround_RunAward[3322729][7]["RewardItem"][1] = {}
	tShuraBattleGround_RunAward[3322729][7]["RewardItem"][1]["Id"] = 4200007
	tShuraBattleGround_RunAward[3322729][7]["RewardItem"][1]["Attr"] = "0 1"
	tShuraBattleGround_RunAward[3322729][7]["RewardItem"][1]["PreciousType"] = 320
	tShuraBattleGround_RunAward[3322729][7]["GlobalId"] = 53523
	tShuraBattleGround_RunAward[3322729][7]["MaxData"] = 30
	tShuraBattleGround_RunAward[3322729][7]["FullIndex"] = 5
	tShuraBattleGround_RunAward[3322729][7]["Pos"] = 2
	tShuraBattleGround_RunAward[3322729][7]["EmoneyLog"] = "350	22502	0	0	1	"
	
	-- 8阶灵珠*1	4200008	1							1%			单服每日限量10个，给完给6阶灵珠*1
	tShuraBattleGround_RunAward[3322729][8] = {}
	tShuraBattleGround_RunAward[3322729][8]["RandomItemChanceType"] = 2
	tShuraBattleGround_RunAward[3322729][8]["ItemChance"] = 100
	tShuraBattleGround_RunAward[3322729][8]["RewardItem"] = {}
	tShuraBattleGround_RunAward[3322729][8]["RewardItem"][1] = {}
	tShuraBattleGround_RunAward[3322729][8]["RewardItem"][1]["Id"] = 4200008
	tShuraBattleGround_RunAward[3322729][8]["RewardItem"][1]["Attr"] = "0 1"
	tShuraBattleGround_RunAward[3322729][8]["RewardItem"][1]["PreciousType"] = 320
	tShuraBattleGround_RunAward[3322729][8]["GlobalId"] = 53523
	tShuraBattleGround_RunAward[3322729][8]["MaxData"] = 10
	tShuraBattleGround_RunAward[3322729][8]["FullIndex"] = 5
	tShuraBattleGround_RunAward[3322729][8]["Pos"] = 3
	tShuraBattleGround_RunAward[3322729][8]["EmoneyLog"] = "350	22503	0	0	1	"
	
	
local tShuraBattleGround_GeneratorMonster = {}
	tShuraBattleGround_GeneratorMonster[1] = {}
	tShuraBattleGround_GeneratorMonster[1][1] = {}
	tShuraBattleGround_GeneratorMonster[1][1]["MonsterId"] = 3403
	tShuraBattleGround_GeneratorMonster[1][1]["GenId"] = 24787
	tShuraBattleGround_GeneratorMonster[1][1]["Num"] = {3,0,3,3,0,3,0,3}
	tShuraBattleGround_GeneratorMonster[1][1]["Pos"] = {1,4,5,6,9,11,12,15}
	tShuraBattleGround_GeneratorMonster[1][2] = {}
	tShuraBattleGround_GeneratorMonster[1][2]["MonsterId"] = 3404
	tShuraBattleGround_GeneratorMonster[1][2]["GenId"] = 24788
	tShuraBattleGround_GeneratorMonster[1][2]["Num"] = {3,3,0,3,3,3,0}
	tShuraBattleGround_GeneratorMonster[1][2]["Pos"] = {2,3,7,8,10,13,14}
	
	tShuraBattleGround_GeneratorMonster[2] = {}
	tShuraBattleGround_GeneratorMonster[2][1] = {}
	tShuraBattleGround_GeneratorMonster[2][1]["MonsterId"] = 3405
	tShuraBattleGround_GeneratorMonster[2][1]["GenId"] = 24789
	tShuraBattleGround_GeneratorMonster[2][1]["Num"] = {3,0,3,3,0,3,0,3}
	tShuraBattleGround_GeneratorMonster[2][1]["Pos"] = {1,4,5,6,9,11,12,15}
	tShuraBattleGround_GeneratorMonster[2][2] = {}
	tShuraBattleGround_GeneratorMonster[2][2]["MonsterId"] = 3406
	tShuraBattleGround_GeneratorMonster[2][2]["GenId"] = 24790
	tShuraBattleGround_GeneratorMonster[2][2]["Num"] = {3,3,0,3,3,3,0}
	tShuraBattleGround_GeneratorMonster[2][2]["Pos"] = {2,3,7,8,10,13,14}
	
	tShuraBattleGround_GeneratorMonster[3] = {}
	tShuraBattleGround_GeneratorMonster[3][1] = {}
	tShuraBattleGround_GeneratorMonster[3][1]["MonsterId"] = 3407
	tShuraBattleGround_GeneratorMonster[3][1]["GenId"] = 24791
	tShuraBattleGround_GeneratorMonster[3][1]["Num"] = {3,3,0,3,0,3,0,3}
	tShuraBattleGround_GeneratorMonster[3][1]["Pos"] = {1,4,5,6,9,11,12,15}
	tShuraBattleGround_GeneratorMonster[3][2] = {}
	tShuraBattleGround_GeneratorMonster[3][2]["MonsterId"] = 3408
	tShuraBattleGround_GeneratorMonster[3][2]["GenId"] = 24792
	tShuraBattleGround_GeneratorMonster[3][2]["Num"] = {3,3,0,3,3,3,0}
	tShuraBattleGround_GeneratorMonster[3][2]["Pos"] = {2,3,7,8,10,13,14}
	tShuraBattleGround_GeneratorMonster[3][3] = {}
	tShuraBattleGround_GeneratorMonster[3][3]["MonsterId"] = 3409
	tShuraBattleGround_GeneratorMonster[3][3]["GenId"] = 24793
	tShuraBattleGround_GeneratorMonster[3][3]["Num"] = {3}
	tShuraBattleGround_GeneratorMonster[3][3]["Pos"] = {5}
	
	tShuraBattleGround_GeneratorMonster[4] = {}
	tShuraBattleGround_GeneratorMonster[4][1] = {}
	tShuraBattleGround_GeneratorMonster[4][1]["MonsterId"] = 3410
	tShuraBattleGround_GeneratorMonster[4][1]["GenId"] = 24794
	tShuraBattleGround_GeneratorMonster[4][1]["Num"] = {4,0,4,3,3,3,0,3}
	tShuraBattleGround_GeneratorMonster[4][1]["Pos"] = {1,4,5,6,9,11,12,15}
	tShuraBattleGround_GeneratorMonster[4][2] = {}
	tShuraBattleGround_GeneratorMonster[4][2]["MonsterId"] = 3411
	tShuraBattleGround_GeneratorMonster[4][2]["GenId"] = 24795
	tShuraBattleGround_GeneratorMonster[4][2]["Num"] = {4,4,3,3,3,3,0}
	tShuraBattleGround_GeneratorMonster[4][2]["Pos"] = {2,3,7,8,10,13,14}
	
	tShuraBattleGround_GeneratorMonster[5] = {}
	tShuraBattleGround_GeneratorMonster[5][1] = {}
	tShuraBattleGround_GeneratorMonster[5][1]["MonsterId"] = 3412
	tShuraBattleGround_GeneratorMonster[5][1]["GenId"] = 24796
	tShuraBattleGround_GeneratorMonster[5][1]["Num"] = {4,0,4,3,3,3,0,3}
	tShuraBattleGround_GeneratorMonster[5][1]["Pos"] = {1,4,5,6,9,11,12,15}
	tShuraBattleGround_GeneratorMonster[5][2] = {}
	tShuraBattleGround_GeneratorMonster[5][2]["MonsterId"] = 3413
	tShuraBattleGround_GeneratorMonster[5][2]["GenId"] = 24797
	tShuraBattleGround_GeneratorMonster[5][2]["Num"] = {4,4,3,3,3,3,0}
	tShuraBattleGround_GeneratorMonster[5][2]["Pos"] = {2,3,7,8,10,13,14}

	tShuraBattleGround_GeneratorMonster[6] = {}
	tShuraBattleGround_GeneratorMonster[6][1] = {}
	tShuraBattleGround_GeneratorMonster[6][1]["MonsterId"] = 3414
	tShuraBattleGround_GeneratorMonster[6][1]["GenId"] = 24798
	tShuraBattleGround_GeneratorMonster[6][1]["Num"] = {4,4,0,3,3,3,0,3}
	tShuraBattleGround_GeneratorMonster[6][1]["Pos"] = {1,4,5,6,9,11,12,15}
	tShuraBattleGround_GeneratorMonster[6][2] = {}
	tShuraBattleGround_GeneratorMonster[6][2]["MonsterId"] = 3415
	tShuraBattleGround_GeneratorMonster[6][2]["GenId"] = 24799
	tShuraBattleGround_GeneratorMonster[6][2]["Num"] = {4,4,3,3,3,3,0}
	tShuraBattleGround_GeneratorMonster[6][2]["Pos"] = {2,3,7,8,10,13,14}
	tShuraBattleGround_GeneratorMonster[6][3] = {}
	tShuraBattleGround_GeneratorMonster[6][3]["MonsterId"] = 3416
	tShuraBattleGround_GeneratorMonster[6][3]["GenId"] = 24800
	tShuraBattleGround_GeneratorMonster[6][3]["Num"] = {3}
	tShuraBattleGround_GeneratorMonster[6][3]["Pos"] = {5}
	
	tShuraBattleGround_GeneratorMonster[7] = {}
	tShuraBattleGround_GeneratorMonster[7][1] = {}
	tShuraBattleGround_GeneratorMonster[7][1]["MonsterId"] = 3417
	tShuraBattleGround_GeneratorMonster[7][1]["GenId"] = 24801
	tShuraBattleGround_GeneratorMonster[7][1]["Num"] = {4,4,4,3,3,3,3,3,3}
	tShuraBattleGround_GeneratorMonster[7][1]["Pos"] = {1,4,5,6,8,9,11,12,15}
	tShuraBattleGround_GeneratorMonster[7][2] = {}
	tShuraBattleGround_GeneratorMonster[7][2]["MonsterId"] = 3418
	tShuraBattleGround_GeneratorMonster[7][2]["GenId"] = 24802
	tShuraBattleGround_GeneratorMonster[7][2]["Num"] = {3,3,3,3,3,0}
	tShuraBattleGround_GeneratorMonster[7][2]["Pos"] = {2,3,7,10,13,14}
	
	tShuraBattleGround_GeneratorMonster[8] = {}
	tShuraBattleGround_GeneratorMonster[8][1] = {}
	tShuraBattleGround_GeneratorMonster[8][1]["MonsterId"] = 3419
	tShuraBattleGround_GeneratorMonster[8][1]["GenId"] = 24803
	tShuraBattleGround_GeneratorMonster[8][1]["Num"] = {4,4,4,3,3,3,3,3,3}
	tShuraBattleGround_GeneratorMonster[8][1]["Pos"] = {1,4,5,6,8,9,11,12,15}
	tShuraBattleGround_GeneratorMonster[8][2] = {}
	tShuraBattleGround_GeneratorMonster[8][2]["MonsterId"] = 3420
	tShuraBattleGround_GeneratorMonster[8][2]["GenId"] = 24804
	tShuraBattleGround_GeneratorMonster[8][2]["Num"] = {3,3,3,3,3,0}
	tShuraBattleGround_GeneratorMonster[8][2]["Pos"] = {2,3,7,10,13,14}
	
	tShuraBattleGround_GeneratorMonster[9] = {}
	tShuraBattleGround_GeneratorMonster[9][1] = {}
	tShuraBattleGround_GeneratorMonster[9][1]["MonsterId"] = 3421
	tShuraBattleGround_GeneratorMonster[9][1]["GenId"] = 24805
	tShuraBattleGround_GeneratorMonster[9][1]["Num"] = {4,4,0,4,4,4,4,3,3}
	tShuraBattleGround_GeneratorMonster[9][1]["Pos"] = {1,4,5,6,8,9,11,12,15}
	tShuraBattleGround_GeneratorMonster[9][2] = {}
	tShuraBattleGround_GeneratorMonster[9][2]["MonsterId"] = 3422
	tShuraBattleGround_GeneratorMonster[9][2]["GenId"] = 24806
	tShuraBattleGround_GeneratorMonster[9][2]["Num"] = {3,3,3,3,3,0}
	tShuraBattleGround_GeneratorMonster[9][2]["Pos"] = {2,3,7,10,13,14}
	tShuraBattleGround_GeneratorMonster[9][3] = {}
	tShuraBattleGround_GeneratorMonster[9][3]["MonsterId"] = 3423
	tShuraBattleGround_GeneratorMonster[9][3]["GenId"] = 24807
	tShuraBattleGround_GeneratorMonster[9][3]["Num"] = {3}
	tShuraBattleGround_GeneratorMonster[9][3]["Pos"] = {5}
	
	tShuraBattleGround_GeneratorMonster[10] = {}
	tShuraBattleGround_GeneratorMonster[10][1] = {}
	tShuraBattleGround_GeneratorMonster[10][1]["MonsterId"] = 3424
	tShuraBattleGround_GeneratorMonster[10][1]["GenId"] = 24808
	tShuraBattleGround_GeneratorMonster[10][1]["Num"] = {3}
	tShuraBattleGround_GeneratorMonster[10][1]["Pos"] = {16}
	tShuraBattleGround_GeneratorMonster[10][2] = {}
	tShuraBattleGround_GeneratorMonster[10][2]["MonsterId"] = 3425
	tShuraBattleGround_GeneratorMonster[10][2]["GenId"] = 24809
	tShuraBattleGround_GeneratorMonster[10][2]["Num"] = {4,4,0,4,4,4,4,3,3}
	tShuraBattleGround_GeneratorMonster[10][2]["Pos"] = {1,3,5,6,8,9,11,12,15}
	tShuraBattleGround_GeneratorMonster[10][3] = {}
	tShuraBattleGround_GeneratorMonster[10][3]["MonsterId"] = 3426
	tShuraBattleGround_GeneratorMonster[10][3]["GenId"] = 24810
	tShuraBattleGround_GeneratorMonster[10][3]["Num"] = {3,0,3,3,3,3}
	tShuraBattleGround_GeneratorMonster[10][3]["Pos"] = {2,4,7,10,13,14}
	tShuraBattleGround_GeneratorMonster[10][4] = {}
	tShuraBattleGround_GeneratorMonster[10][4]["MonsterId"] = 3427
	tShuraBattleGround_GeneratorMonster[10][4]["GenId"] = 24811
	tShuraBattleGround_GeneratorMonster[10][4]["Num"] = {3}
	tShuraBattleGround_GeneratorMonster[10][4]["Pos"] = {17}
	
	tShuraBattleGround_GeneratorMonster[11] = {}
	tShuraBattleGround_GeneratorMonster[11][1] = {}
	tShuraBattleGround_GeneratorMonster[11][1]["MonsterId"] = 3428
	tShuraBattleGround_GeneratorMonster[11][1]["GenId"] = 24812
	tShuraBattleGround_GeneratorMonster[11][1]["Num"] = {5}
	tShuraBattleGround_GeneratorMonster[11][1]["Pos"] = {16}
	tShuraBattleGround_GeneratorMonster[11][2] = {}
	tShuraBattleGround_GeneratorMonster[11][2]["MonsterId"] = 3429
	tShuraBattleGround_GeneratorMonster[11][2]["GenId"] = 24813
	tShuraBattleGround_GeneratorMonster[11][2]["Num"] = {4,4,0,4,4,4,4,3,3}
	tShuraBattleGround_GeneratorMonster[11][2]["Pos"] = {1,3,5,6,8,9,11,12,15}
	tShuraBattleGround_GeneratorMonster[11][3] = {}
	tShuraBattleGround_GeneratorMonster[11][3]["MonsterId"] = 3430
	tShuraBattleGround_GeneratorMonster[11][3]["GenId"] = 24814
	tShuraBattleGround_GeneratorMonster[11][3]["Num"] = {4,0,4,4,4,4}
	tShuraBattleGround_GeneratorMonster[11][3]["Pos"] = {2,4,7,10,13,14}
	tShuraBattleGround_GeneratorMonster[11][4] = {}
	tShuraBattleGround_GeneratorMonster[11][4]["MonsterId"] = 3431
	tShuraBattleGround_GeneratorMonster[11][4]["GenId"] = 24815
	tShuraBattleGround_GeneratorMonster[11][4]["Num"] = {5}
	tShuraBattleGround_GeneratorMonster[11][4]["Pos"] = {17}
	
	tShuraBattleGround_GeneratorMonster[12] = {}
	tShuraBattleGround_GeneratorMonster[12][1] = {}
	tShuraBattleGround_GeneratorMonster[12][1]["MonsterId"] = 3432
	tShuraBattleGround_GeneratorMonster[12][1]["GenId"] = 24816
	tShuraBattleGround_GeneratorMonster[12][1]["Num"] = {5}
	tShuraBattleGround_GeneratorMonster[12][1]["Pos"] = {16}
	tShuraBattleGround_GeneratorMonster[12][2] = {}
	tShuraBattleGround_GeneratorMonster[12][2]["MonsterId"] = 3433
	tShuraBattleGround_GeneratorMonster[12][2]["GenId"] = 24817
	tShuraBattleGround_GeneratorMonster[12][2]["Num"] = {4,4,0,4,4,4,4,3,3}
	tShuraBattleGround_GeneratorMonster[12][2]["Pos"] = {1,3,5,6,8,9,11,12,15}
	tShuraBattleGround_GeneratorMonster[12][3] = {}
	tShuraBattleGround_GeneratorMonster[12][3]["MonsterId"] = 3434
	tShuraBattleGround_GeneratorMonster[12][3]["GenId"] = 24818
	tShuraBattleGround_GeneratorMonster[12][3]["Num"] = {4,0,4,4,4,4}
	tShuraBattleGround_GeneratorMonster[12][3]["Pos"] = {2,4,7,10,13,14}
	tShuraBattleGround_GeneratorMonster[12][4] = {}
	tShuraBattleGround_GeneratorMonster[12][4]["MonsterId"] = 3435
	tShuraBattleGround_GeneratorMonster[12][4]["GenId"] = 24819
	tShuraBattleGround_GeneratorMonster[12][4]["Num"] = {5}
	tShuraBattleGround_GeneratorMonster[12][4]["Pos"] = {17}
	tShuraBattleGround_GeneratorMonster[12][5] = {}
	tShuraBattleGround_GeneratorMonster[12][5]["MonsterId"] = 3436
	tShuraBattleGround_GeneratorMonster[12][5]["GenId"] = 24820
	tShuraBattleGround_GeneratorMonster[12][5]["Num"] = {1}
	tShuraBattleGround_GeneratorMonster[12][5]["Pos"] = {18}
	
	tShuraBattleGround_GeneratorMonster[13] = {}
	tShuraBattleGround_GeneratorMonster[13][1] = {}
	tShuraBattleGround_GeneratorMonster[13][1]["MonsterId"] = 3437
	tShuraBattleGround_GeneratorMonster[13][1]["GenId"] = 24821
	tShuraBattleGround_GeneratorMonster[13][1]["Num"] = {5}
	tShuraBattleGround_GeneratorMonster[13][1]["Pos"] = {16}
	tShuraBattleGround_GeneratorMonster[13][2] = {}
	tShuraBattleGround_GeneratorMonster[13][2]["MonsterId"] = 3438
	tShuraBattleGround_GeneratorMonster[13][2]["GenId"] = 24822
	tShuraBattleGround_GeneratorMonster[13][2]["Num"] = {3,0,0,3,3,3,0,3}
	tShuraBattleGround_GeneratorMonster[13][2]["Pos"] = {1,4,5,6,9,11,12,15}
	tShuraBattleGround_GeneratorMonster[13][3] = {}
	tShuraBattleGround_GeneratorMonster[13][3]["MonsterId"] = 3438
	tShuraBattleGround_GeneratorMonster[13][3]["GenId"] = 24822
	tShuraBattleGround_GeneratorMonster[13][3]["Num"] = {3,3,0,3,3,3,0}
	tShuraBattleGround_GeneratorMonster[13][3]["Pos"] = {2,3,7,8,10,13,14}
	tShuraBattleGround_GeneratorMonster[13][4] = {}
	tShuraBattleGround_GeneratorMonster[13][4]["MonsterId"] = 3439
	tShuraBattleGround_GeneratorMonster[13][4]["GenId"] = 24823
	tShuraBattleGround_GeneratorMonster[13][4]["Num"] = {5}
	tShuraBattleGround_GeneratorMonster[13][4]["Pos"] = {17}
	
	tShuraBattleGround_GeneratorMonster[14] = {}
	tShuraBattleGround_GeneratorMonster[14][1] = {}
	tShuraBattleGround_GeneratorMonster[14][1]["MonsterId"] = 3440
	tShuraBattleGround_GeneratorMonster[14][1]["GenId"] = 24824
	tShuraBattleGround_GeneratorMonster[14][1]["Num"] = {4,3,3}
	tShuraBattleGround_GeneratorMonster[14][1]["Pos"] = {1,6,11}
	tShuraBattleGround_GeneratorMonster[14][2] = {}
	tShuraBattleGround_GeneratorMonster[14][2]["MonsterId"] = 3441
	tShuraBattleGround_GeneratorMonster[14][2]["GenId"] = 24825
	tShuraBattleGround_GeneratorMonster[14][2]["Num"] = {4,4,3,3,3,3}
	tShuraBattleGround_GeneratorMonster[14][2]["Pos"] = {2,3,7,8,12,13}
	tShuraBattleGround_GeneratorMonster[14][3] = {}
	tShuraBattleGround_GeneratorMonster[14][3]["MonsterId"] = 3442
	tShuraBattleGround_GeneratorMonster[14][3]["GenId"] = 24826
	tShuraBattleGround_GeneratorMonster[14][3]["Num"] = {5}
	tShuraBattleGround_GeneratorMonster[14][3]["Pos"] = {17}
	tShuraBattleGround_GeneratorMonster[14][4] = {}
	tShuraBattleGround_GeneratorMonster[14][4]["MonsterId"] = 3443
	tShuraBattleGround_GeneratorMonster[14][4]["GenId"] = 24827
	tShuraBattleGround_GeneratorMonster[14][4]["Num"] = {1}
	tShuraBattleGround_GeneratorMonster[14][4]["Pos"] = {18}
	
	tShuraBattleGround_GeneratorMonster[15] = {}
	tShuraBattleGround_GeneratorMonster[15][1] = {}
	tShuraBattleGround_GeneratorMonster[15][1]["MonsterId"] = 3444
	tShuraBattleGround_GeneratorMonster[15][1]["GenId"] = 24828
	tShuraBattleGround_GeneratorMonster[15][1]["Num"] = {3,2}
	tShuraBattleGround_GeneratorMonster[15][1]["Pos"] = {3,2}
	tShuraBattleGround_GeneratorMonster[15][2] = {}
	tShuraBattleGround_GeneratorMonster[15][2]["MonsterId"] = 3445
	tShuraBattleGround_GeneratorMonster[15][2]["GenId"] = 24829
	tShuraBattleGround_GeneratorMonster[15][2]["Num"] = {4,0,4,0,0,4,0,4,0,0,4}
	tShuraBattleGround_GeneratorMonster[15][2]["Pos"] = {1,6,7,8,9,10,11,12,13,14,15}
	tShuraBattleGround_GeneratorMonster[15][3] = {}
	tShuraBattleGround_GeneratorMonster[15][3]["MonsterId"] = 3446
	tShuraBattleGround_GeneratorMonster[15][3]["GenId"] = 24830
	tShuraBattleGround_GeneratorMonster[15][3]["Num"] = {5}
	tShuraBattleGround_GeneratorMonster[15][3]["Pos"] = {17}
	tShuraBattleGround_GeneratorMonster[15][4] = {}
	tShuraBattleGround_GeneratorMonster[15][4]["MonsterId"] = 3447
	tShuraBattleGround_GeneratorMonster[15][4]["GenId"] = 24831
	tShuraBattleGround_GeneratorMonster[15][4]["Num"] = {1}
	tShuraBattleGround_GeneratorMonster[15][4]["Pos"] = {18}
	
	tShuraBattleGround_GeneratorMonster[16] = {}
	tShuraBattleGround_GeneratorMonster[16][1] = {}
	tShuraBattleGround_GeneratorMonster[16][1]["MonsterId"] = 3448
	tShuraBattleGround_GeneratorMonster[16][1]["GenId"] = 24832
	tShuraBattleGround_GeneratorMonster[16][1]["Num"] = {1}
	tShuraBattleGround_GeneratorMonster[16][1]["Pos"] = {18}
	tShuraBattleGround_GeneratorMonster[16][2] = {}
	tShuraBattleGround_GeneratorMonster[16][2]["MonsterId"] = 3449
	tShuraBattleGround_GeneratorMonster[16][2]["GenId"] = 24833
	tShuraBattleGround_GeneratorMonster[16][2]["Num"] = 10
	tShuraBattleGround_GeneratorMonster[16][2]["Owner"] = 3448
	tShuraBattleGround_GeneratorMonster[16][3] = {}
	tShuraBattleGround_GeneratorMonster[16][3]["MonsterId"] = 3450
	tShuraBattleGround_GeneratorMonster[16][3]["GenId"] = 24834
	tShuraBattleGround_GeneratorMonster[16][3]["Num"] = {3}
	tShuraBattleGround_GeneratorMonster[16][3]["Pos"] = {5}
	tShuraBattleGround_GeneratorMonster[16][4] = {}
	tShuraBattleGround_GeneratorMonster[16][4]["MonsterId"] = 3451
	tShuraBattleGround_GeneratorMonster[16][4]["GenId"] = 24835
	tShuraBattleGround_GeneratorMonster[16][4]["Num"] = {3,3,3,3,3}
	tShuraBattleGround_GeneratorMonster[16][4]["Pos"] = {3,7,8,12,13}
	tShuraBattleGround_GeneratorMonster[16][5] = {}
	tShuraBattleGround_GeneratorMonster[16][5]["MonsterId"] = 3452
	tShuraBattleGround_GeneratorMonster[16][5]["GenId"] = 24836
	tShuraBattleGround_GeneratorMonster[16][5]["Num"] = {4,4,4,3,3,3,3,3,3}
	tShuraBattleGround_GeneratorMonster[16][5]["Pos"] = {1,2,4,6,9,10,11,14,15}
	
	tShuraBattleGround_GeneratorMonster[17] = {}
	tShuraBattleGround_GeneratorMonster[17][1] = {}
	tShuraBattleGround_GeneratorMonster[17][1]["MonsterId"] = 3453
	tShuraBattleGround_GeneratorMonster[17][1]["GenId"] = 24837
	tShuraBattleGround_GeneratorMonster[17][1]["Num"] = {2}
	tShuraBattleGround_GeneratorMonster[17][1]["Pos"] = {5}
	tShuraBattleGround_GeneratorMonster[17][2] = {}
	tShuraBattleGround_GeneratorMonster[17][2]["MonsterId"] = 3454
	tShuraBattleGround_GeneratorMonster[17][2]["GenId"] = 24838
	tShuraBattleGround_GeneratorMonster[17][2]["Num"] = 15
	tShuraBattleGround_GeneratorMonster[17][2]["Owner"] = 3453
	tShuraBattleGround_GeneratorMonster[17][3] = {}
	tShuraBattleGround_GeneratorMonster[17][3]["MonsterId"] = 3455
	tShuraBattleGround_GeneratorMonster[17][3]["GenId"] = 24839
	tShuraBattleGround_GeneratorMonster[17][3]["Num"] = {5}
	tShuraBattleGround_GeneratorMonster[17][3]["Pos"] = {16}
	tShuraBattleGround_GeneratorMonster[17][4] = {}
	tShuraBattleGround_GeneratorMonster[17][4]["MonsterId"] = 3456
	tShuraBattleGround_GeneratorMonster[17][4]["GenId"] = 24840
	tShuraBattleGround_GeneratorMonster[17][4]["Num"] = {4,4,0,3,3,0,3,3}
	tShuraBattleGround_GeneratorMonster[17][4]["Pos"] = {1,3,6,8,10,11,13,15}
	
	tShuraBattleGround_GeneratorMonster[18] = {}
	tShuraBattleGround_GeneratorMonster[18][1] = {}
	tShuraBattleGround_GeneratorMonster[18][1]["MonsterId"] = 3457
	tShuraBattleGround_GeneratorMonster[18][1]["GenId"] = 24841
	tShuraBattleGround_GeneratorMonster[18][1]["Num"] = {3}
	tShuraBattleGround_GeneratorMonster[18][1]["Pos"] = {17}
	tShuraBattleGround_GeneratorMonster[18][2] = {}
	tShuraBattleGround_GeneratorMonster[18][2]["MonsterId"] = 3458
	tShuraBattleGround_GeneratorMonster[18][2]["GenId"] = 24842
	tShuraBattleGround_GeneratorMonster[18][2]["Num"] = 10
	tShuraBattleGround_GeneratorMonster[18][2]["Owner"] = 3459
	tShuraBattleGround_GeneratorMonster[18][3] = {}
	tShuraBattleGround_GeneratorMonster[18][3]["MonsterId"] = 3459
	tShuraBattleGround_GeneratorMonster[18][3]["GenId"] = 24843
	tShuraBattleGround_GeneratorMonster[18][3]["Num"] = {1}
	tShuraBattleGround_GeneratorMonster[18][3]["Pos"] = {18}
	
local tShuraBattleGround_GeneratorMonsterId = {}
	tShuraBattleGround_GeneratorMonsterId[1] = {}
	tShuraBattleGround_GeneratorMonsterId[1][1] = 3403
	tShuraBattleGround_GeneratorMonsterId[1][2] = 3404
	
	tShuraBattleGround_GeneratorMonsterId[2] = {}
	tShuraBattleGround_GeneratorMonsterId[2][1] = 3405
	tShuraBattleGround_GeneratorMonsterId[2][2] = 3406
	
	tShuraBattleGround_GeneratorMonsterId[3] = {}
	tShuraBattleGround_GeneratorMonsterId[3][1] = 3407
	tShuraBattleGround_GeneratorMonsterId[3][2] = 3408
	tShuraBattleGround_GeneratorMonsterId[3][3] = 3409
	
	tShuraBattleGround_GeneratorMonsterId[4] = {}
	tShuraBattleGround_GeneratorMonsterId[4][1] = 3410
	tShuraBattleGround_GeneratorMonsterId[4][2] = 3411
	
	tShuraBattleGround_GeneratorMonsterId[5] = {}
	tShuraBattleGround_GeneratorMonsterId[5][1] = 3412
	tShuraBattleGround_GeneratorMonsterId[5][2] = 3413
	
	tShuraBattleGround_GeneratorMonsterId[6] = {}
	tShuraBattleGround_GeneratorMonsterId[6][1] = 3414
	tShuraBattleGround_GeneratorMonsterId[6][2] = 3415
	tShuraBattleGround_GeneratorMonsterId[6][3] = 3416
	
	tShuraBattleGround_GeneratorMonsterId[7] = {}
	tShuraBattleGround_GeneratorMonsterId[7][1] = 3417
	tShuraBattleGround_GeneratorMonsterId[7][2] = 3418
	
	tShuraBattleGround_GeneratorMonsterId[8] = {}
	tShuraBattleGround_GeneratorMonsterId[8][1] = 3419
	tShuraBattleGround_GeneratorMonsterId[8][2] = 3420
	
	tShuraBattleGround_GeneratorMonsterId[9] = {}
	tShuraBattleGround_GeneratorMonsterId[9][1] = 3421
	tShuraBattleGround_GeneratorMonsterId[9][2] = 3422
	tShuraBattleGround_GeneratorMonsterId[9][3] = 3423
	
	tShuraBattleGround_GeneratorMonsterId[10] = {}
	tShuraBattleGround_GeneratorMonsterId[10][1] = 3424
	tShuraBattleGround_GeneratorMonsterId[10][2] = 3425
	tShuraBattleGround_GeneratorMonsterId[10][3] = 3426
	tShuraBattleGround_GeneratorMonsterId[10][4] = 3427
	
	
local tShuraBattleGround_GeneratorMonsterNum = {}
	tShuraBattleGround_GeneratorMonsterNum[3403] = 15
	tShuraBattleGround_GeneratorMonsterNum[3404] = 15
	tShuraBattleGround_GeneratorMonsterNum[3405] = 15
	tShuraBattleGround_GeneratorMonsterNum[3406] = 15
	tShuraBattleGround_GeneratorMonsterNum[3407] = 15
	tShuraBattleGround_GeneratorMonsterNum[3408] = 15
	tShuraBattleGround_GeneratorMonsterNum[3409] = 3
	tShuraBattleGround_GeneratorMonsterNum[3410] = 20
	tShuraBattleGround_GeneratorMonsterNum[3411] = 20
	tShuraBattleGround_GeneratorMonsterNum[3412] = 20
	tShuraBattleGround_GeneratorMonsterNum[3413] = 20
	tShuraBattleGround_GeneratorMonsterNum[3414] = 20
	tShuraBattleGround_GeneratorMonsterNum[3415] = 20
	tShuraBattleGround_GeneratorMonsterNum[3416] = 3
	tShuraBattleGround_GeneratorMonsterNum[3417] = 30
	tShuraBattleGround_GeneratorMonsterNum[3418] = 15
	tShuraBattleGround_GeneratorMonsterNum[3419] = 30
	tShuraBattleGround_GeneratorMonsterNum[3420] = 15
	tShuraBattleGround_GeneratorMonsterNum[3421] = 30
	tShuraBattleGround_GeneratorMonsterNum[3422] = 15
	tShuraBattleGround_GeneratorMonsterNum[3423] = 3
	tShuraBattleGround_GeneratorMonsterNum[3424] = 3
	tShuraBattleGround_GeneratorMonsterNum[3425] = 30
	tShuraBattleGround_GeneratorMonsterNum[3426] = 15
	tShuraBattleGround_GeneratorMonsterNum[3427] = 3
	tShuraBattleGround_GeneratorMonsterNum[3428] = 5
	tShuraBattleGround_GeneratorMonsterNum[3429] = 30
	tShuraBattleGround_GeneratorMonsterNum[3430] = 20
	tShuraBattleGround_GeneratorMonsterNum[3431] = 5
	tShuraBattleGround_GeneratorMonsterNum[3432] = 5
	tShuraBattleGround_GeneratorMonsterNum[3433] = 30
	tShuraBattleGround_GeneratorMonsterNum[3434] = 20
	tShuraBattleGround_GeneratorMonsterNum[3435] = 5
	tShuraBattleGround_GeneratorMonsterNum[3436] = 1
	tShuraBattleGround_GeneratorMonsterNum[3437] = 5
	tShuraBattleGround_GeneratorMonsterNum[3438] = 30
	tShuraBattleGround_GeneratorMonsterNum[3439] = 5
	tShuraBattleGround_GeneratorMonsterNum[3440] = 10
	tShuraBattleGround_GeneratorMonsterNum[3441] = 20
	tShuraBattleGround_GeneratorMonsterNum[3442] = 5
	tShuraBattleGround_GeneratorMonsterNum[3443] = 1
	tShuraBattleGround_GeneratorMonsterNum[3444] = 5
	tShuraBattleGround_GeneratorMonsterNum[3445] = 30
	tShuraBattleGround_GeneratorMonsterNum[3446] = 5
	tShuraBattleGround_GeneratorMonsterNum[3447] = 1
	tShuraBattleGround_GeneratorMonsterNum[3448] = 1
	tShuraBattleGround_GeneratorMonsterNum[3449] = 10
	tShuraBattleGround_GeneratorMonsterNum[3450] = 3
	tShuraBattleGround_GeneratorMonsterNum[3451] = 15
	tShuraBattleGround_GeneratorMonsterNum[3452] = 30
	tShuraBattleGround_GeneratorMonsterNum[3453] = 2
	tShuraBattleGround_GeneratorMonsterNum[3454] = 15
	tShuraBattleGround_GeneratorMonsterNum[3455] = 5
	tShuraBattleGround_GeneratorMonsterNum[3456] = 20
	tShuraBattleGround_GeneratorMonsterNum[3457] = 3
	tShuraBattleGround_GeneratorMonsterNum[3458] = 10
	tShuraBattleGround_GeneratorMonsterNum[3459] = 1

	
--特殊怪
local tShuraBattleGround_GeneratorSpicalMonster = {}
	tShuraBattleGround_GeneratorSpicalMonster[1] = {}
	tShuraBattleGround_GeneratorSpicalMonster[1]["MonsterId"] = 3460
	tShuraBattleGround_GeneratorSpicalMonster[1]["GenId"] = 24844
	tShuraBattleGround_GeneratorSpicalMonster[1]["Num"] = 20
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"] = {}
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][1] = {}
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][1]["PosX"] = 147
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][1]["PosY"] = 172
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][1]["Num"] = 1
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][2] = {}
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][2]["PosX"] = 155
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][2]["PosY"] = 165
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][2]["Num"] = 1
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][3] = {}
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][3]["PosX"] = 170
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][3]["PosY"] = 151
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][3]["Num"] = 1
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][4] = {}
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][4]["PosX"] = 165
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][4]["PosY"] = 143
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][4]["Num"] = 1
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][5] = {}
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][5]["PosX"] = 158
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][5]["PosY"] = 149
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][5]["Num"] = 1
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][6] = {}
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][6]["PosX"] = 150
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][6]["PosY"] = 156
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][6]["Num"] = 1
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][7] = {}
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][7]["PosX"] = 140
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][7]["PosY"] = 166
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][7]["Num"] = 1
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][8] = {}
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][8]["PosX"] = 132
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][8]["PosY"] = 159
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][8]["Num"] = 1
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][9] = {}
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][9]["PosX"] = 138
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][9]["PosY"] = 151
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][9]["Num"] = 1
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][10] = {}
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][10]["PosX"] = 142
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][10]["PosY"] = 141
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][10]["Num"] = 1
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][11] = {}
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][11]["PosX"] = 153
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][11]["PosY"] = 130
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][11]["Num"] = 1
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][12] = {}
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][12]["PosX"] = 157
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][12]["PosY"] = 151
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][12]["Num"] = 1
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][13] = {}
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][13]["PosX"] = 163
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][13]["PosY"] = 143
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][13]["Num"] = 1
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][14] = {}
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][14]["PosX"] = 167
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][14]["PosY"] = 138
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][14]["Num"] = 1
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][15] = {}
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][15]["PosX"] = 157
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][15]["PosY"] = 137
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][15]["Num"] = 1
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][16] = {}
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][16]["PosX"] = 153
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][16]["PosY"] = 137
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][16]["Num"] = 1
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][17] = {}
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][17]["PosX"] = 149
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][17]["PosY"] = 146
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][17]["Num"] = 1
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][18] = {}
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][18]["PosX"] = 145
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][18]["PosY"] = 150
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][18]["Num"] = 1
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][19] = {}
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][19]["PosX"] = 160
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][19]["PosY"] = 125
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][19]["Num"] = 1
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][20] = {}
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][20]["PosX"] = 152
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][20]["PosY"] = 132
	tShuraBattleGround_GeneratorSpicalMonster[1]["Pos"][20]["Num"] = 1
	tShuraBattleGround_GeneratorSpicalMonster[1]["Random"] = 10
	
	tShuraBattleGround_GeneratorSpicalMonster[2] = {}
	tShuraBattleGround_GeneratorSpicalMonster[2]["MonsterId"] = 3461
	tShuraBattleGround_GeneratorSpicalMonster[2]["GenId"] = 24845
	tShuraBattleGround_GeneratorSpicalMonster[2]["Num"] = 20
	tShuraBattleGround_GeneratorSpicalMonster[2]["Pos"] = {}
	tShuraBattleGround_GeneratorSpicalMonster[2]["Pos"][1] = {}
	tShuraBattleGround_GeneratorSpicalMonster[2]["Pos"][1]["PosX"] = 149
	tShuraBattleGround_GeneratorSpicalMonster[2]["Pos"][1]["PosY"] = 136
	tShuraBattleGround_GeneratorSpicalMonster[2]["Pos"][1]["Num"] = 6
	tShuraBattleGround_GeneratorSpicalMonster[2]["Pos"][2] = {}
	tShuraBattleGround_GeneratorSpicalMonster[2]["Pos"][2]["PosX"] = 137
	tShuraBattleGround_GeneratorSpicalMonster[2]["Pos"][2]["PosY"] = 158
	tShuraBattleGround_GeneratorSpicalMonster[2]["Pos"][2]["Num"] = 8
	tShuraBattleGround_GeneratorSpicalMonster[2]["Pos"][3] = {}
	tShuraBattleGround_GeneratorSpicalMonster[2]["Pos"][3]["PosX"] = 129
	tShuraBattleGround_GeneratorSpicalMonster[2]["Pos"][3]["PosY"] = 182
	tShuraBattleGround_GeneratorSpicalMonster[2]["Pos"][3]["Num"] = 6
	tShuraBattleGround_GeneratorSpicalMonster[2]["Random"] = 10
	
	tShuraBattleGround_GeneratorSpicalMonster[3] = {}
	tShuraBattleGround_GeneratorSpicalMonster[3]["MonsterId"] = 3462
	tShuraBattleGround_GeneratorSpicalMonster[3]["GenId"] = 24846
	tShuraBattleGround_GeneratorSpicalMonster[3]["PosX"] = 152
	tShuraBattleGround_GeneratorSpicalMonster[3]["PosY"] = 141
	tShuraBattleGround_GeneratorSpicalMonster[3]["Num"] = 10
	tShuraBattleGround_GeneratorSpicalMonster[3]["Random"] = 10
	
	tShuraBattleGround_GeneratorSpicalMonster[4] = {}
	tShuraBattleGround_GeneratorSpicalMonster[4]["MonsterId"] = 3463
	tShuraBattleGround_GeneratorSpicalMonster[4]["GenId"] = 24847
	tShuraBattleGround_GeneratorSpicalMonster[4]["Pos"] = {}
	tShuraBattleGround_GeneratorSpicalMonster[4]["Pos"][1] = {}
	tShuraBattleGround_GeneratorSpicalMonster[4]["Pos"][1]["PosX"] = 129
	tShuraBattleGround_GeneratorSpicalMonster[4]["Pos"][1]["PosY"] = 164
	tShuraBattleGround_GeneratorSpicalMonster[4]["Pos"][1]["Num"] = 3
	tShuraBattleGround_GeneratorSpicalMonster[4]["Pos"][2] = {}
	tShuraBattleGround_GeneratorSpicalMonster[4]["Pos"][2]["PosX"] = 167
	tShuraBattleGround_GeneratorSpicalMonster[4]["Pos"][2]["PosY"] = 173
	tShuraBattleGround_GeneratorSpicalMonster[4]["Pos"][2]["Num"] = 4
	tShuraBattleGround_GeneratorSpicalMonster[4]["Pos"][3] = {}
	tShuraBattleGround_GeneratorSpicalMonster[4]["Pos"][3]["PosX"] = 177
	tShuraBattleGround_GeneratorSpicalMonster[4]["Pos"][3]["PosY"] = 165
	tShuraBattleGround_GeneratorSpicalMonster[4]["Pos"][3]["Num"] = 3
	tShuraBattleGround_GeneratorSpicalMonster[4]["Num"] = 10
	tShuraBattleGround_GeneratorSpicalMonster[4]["Random"] = 10
	
--刷怪间隔
--Type=1 杀死本波怪物后n秒刷新
--Type=2 创建本波怪物后n秒刷新
--Type=3 击杀某怪物后立即刷新
--Type=4 踩到陷阱后刷下一波
local tShuraBattleGround_GeneratorTime = {}
	tShuraBattleGround_GeneratorTime[0] = {}
	tShuraBattleGround_GeneratorTime[0]["Type"] = 1
	tShuraBattleGround_GeneratorTime[0]["Time"] = 5
	tShuraBattleGround_GeneratorTime[1] = {}
	tShuraBattleGround_GeneratorTime[1]["Type"] = 1
	tShuraBattleGround_GeneratorTime[1]["Time"] = 30
	tShuraBattleGround_GeneratorTime[2] = {}
	tShuraBattleGround_GeneratorTime[2]["Type"] = 1
	tShuraBattleGround_GeneratorTime[2]["Time"] = 8
	tShuraBattleGround_GeneratorTime[3] = {}
	tShuraBattleGround_GeneratorTime[3]["Type"] = 1
	tShuraBattleGround_GeneratorTime[3]["Time"] = 5
	tShuraBattleGround_GeneratorTime[4] = {}
	tShuraBattleGround_GeneratorTime[4]["Type"] = 2
	tShuraBattleGround_GeneratorTime[4]["Time"] = 120
	tShuraBattleGround_GeneratorTime[5] = {}
	tShuraBattleGround_GeneratorTime[5]["Type"] = 2
	tShuraBattleGround_GeneratorTime[5]["Time"] = 105
	tShuraBattleGround_GeneratorTime[6] = {}
	tShuraBattleGround_GeneratorTime[6]["Type"] = 2
	tShuraBattleGround_GeneratorTime[6]["Time"] = 90
	tShuraBattleGround_GeneratorTime[7] = {}
	tShuraBattleGround_GeneratorTime[7]["Type"] = 1
	tShuraBattleGround_GeneratorTime[7]["Time"] = 0
	tShuraBattleGround_GeneratorTime[8] = {}
	tShuraBattleGround_GeneratorTime[8]["Type"] = 1
	tShuraBattleGround_GeneratorTime[8]["Time"] = 0
	tShuraBattleGround_GeneratorTime[9] = {}
	tShuraBattleGround_GeneratorTime[9]["Type"] = 1
	tShuraBattleGround_GeneratorTime[9]["Time"] = 0
	tShuraBattleGround_GeneratorTime[10] = {}
	tShuraBattleGround_GeneratorTime[10]["Type"] = 3
	tShuraBattleGround_GeneratorTime[10]["NeedMonster"] = 3424
	tShuraBattleGround_GeneratorTime[10]["NeedNum"] = 1

local tShuraBattleGround_MonsterId = {3403,3404,3405,3406,3407,3408,3409,3410,3411,3412,3413,3414,3415,3416,3417,3418,3419,3420,3421,3422,3423,3424,3425,3426,3427,3460,3461,3462,3463}


--光效配置
local tShuraBattleGround_Effect = {}
	--进入光效
	tShuraBattleGround_Effect[1] = {}
	tShuraBattleGround_Effect[1]["SzObj"] = "self"
	tShuraBattleGround_Effect[1]["Effect"] = "gift_tzgxtzks"
	
	
local tShuraBattleGround_MonsterData = {}
	tShuraBattleGround_MonsterData["Monster"] = {}
	tShuraBattleGround_MonsterData["Monster"][1] = {}
	tShuraBattleGround_MonsterData["Monster"][1][1] = {}
	tShuraBattleGround_MonsterData["Monster"][1][1]["MonsterId"] = 3403
	tShuraBattleGround_MonsterData["Monster"][1][1]["GenId"] = 24787
	tShuraBattleGround_MonsterData["Monster"][1][1]["Num"] = 8
	tShuraBattleGround_MonsterData["Monster"][1][2] = {}
	tShuraBattleGround_MonsterData["Monster"][1][2]["MonsterId"] = 3404
	tShuraBattleGround_MonsterData["Monster"][1][2]["GenId"] = 24788
	tShuraBattleGround_MonsterData["Monster"][1][2]["Num"] = 9
	
	tShuraBattleGround_MonsterData["Monster"][2] = {}
	tShuraBattleGround_MonsterData["Monster"][2][1] = {}
	tShuraBattleGround_MonsterData["Monster"][2][1]["MonsterId"] = 3405
	tShuraBattleGround_MonsterData["Monster"][2][1]["GenId"] = 24789
	tShuraBattleGround_MonsterData["Monster"][2][1]["Num"] = 8
	tShuraBattleGround_MonsterData["Monster"][2][2] = {}
	tShuraBattleGround_MonsterData["Monster"][2][2]["MonsterId"] = 3406
	tShuraBattleGround_MonsterData["Monster"][2][2]["GenId"] = 24790
	tShuraBattleGround_MonsterData["Monster"][2][2]["Num"] = 10
	
	tShuraBattleGround_MonsterData["Monster"][3] = {}
	tShuraBattleGround_MonsterData["Monster"][3][1] = {}
	tShuraBattleGround_MonsterData["Monster"][3][1]["MonsterId"] = 3407
	tShuraBattleGround_MonsterData["Monster"][3][1]["GenId"] = 24791
	tShuraBattleGround_MonsterData["Monster"][3][1]["Num"] = 10
	tShuraBattleGround_MonsterData["Monster"][3][2] = {}
	tShuraBattleGround_MonsterData["Monster"][3][2]["MonsterId"] = 3408
	tShuraBattleGround_MonsterData["Monster"][3][2]["GenId"] = 24792
	tShuraBattleGround_MonsterData["Monster"][3][2]["Num"] = 10
	tShuraBattleGround_MonsterData["Monster"][3][3] = {}
	tShuraBattleGround_MonsterData["Monster"][3][3]["MonsterId"] = 3409
	tShuraBattleGround_MonsterData["Monster"][3][3]["GenId"] = 24793
	tShuraBattleGround_MonsterData["Monster"][3][3]["Num"] = 3
	
	tShuraBattleGround_MonsterData["Monster"][4] = {}
	tShuraBattleGround_MonsterData["Monster"][4][1] = {}
	tShuraBattleGround_MonsterData["Monster"][4][1]["MonsterId"] = 3410
	tShuraBattleGround_MonsterData["Monster"][4][1]["GenId"] = 24794
	tShuraBattleGround_MonsterData["Monster"][4][1]["Num"] = 15
	tShuraBattleGround_MonsterData["Monster"][4][2] = {}
	tShuraBattleGround_MonsterData["Monster"][4][2]["MonsterId"] = 3411
	tShuraBattleGround_MonsterData["Monster"][4][2]["GenId"] = 24795
	tShuraBattleGround_MonsterData["Monster"][4][2]["Num"] = 15
	
	tShuraBattleGround_MonsterData["Monster"][5] = {}
	tShuraBattleGround_MonsterData["Monster"][5][1] = {}
	tShuraBattleGround_MonsterData["Monster"][5][1]["MonsterId"] = 3412
	tShuraBattleGround_MonsterData["Monster"][5][1]["GenId"] = 24796
	tShuraBattleGround_MonsterData["Monster"][5][1]["Num"] = 15
	tShuraBattleGround_MonsterData["Monster"][5][2] = {}
	tShuraBattleGround_MonsterData["Monster"][5][2]["MonsterId"] = 3413
	tShuraBattleGround_MonsterData["Monster"][5][2]["GenId"] = 24797
	tShuraBattleGround_MonsterData["Monster"][5][2]["Num"] = 15
	
	tShuraBattleGround_MonsterData["Monster"][6] = {}
	tShuraBattleGround_MonsterData["Monster"][6][1] = {}
	tShuraBattleGround_MonsterData["Monster"][6][1]["MonsterId"] = 3414
	tShuraBattleGround_MonsterData["Monster"][6][1]["GenId"] = 24798
	tShuraBattleGround_MonsterData["Monster"][6][1]["Num"] = 15
	tShuraBattleGround_MonsterData["Monster"][6][2] = {}
	tShuraBattleGround_MonsterData["Monster"][6][2]["MonsterId"] = 3415
	tShuraBattleGround_MonsterData["Monster"][6][2]["GenId"] = 24799
	tShuraBattleGround_MonsterData["Monster"][6][2]["Num"] = 15
	tShuraBattleGround_MonsterData["Monster"][6][3] = {}
	tShuraBattleGround_MonsterData["Monster"][6][3]["MonsterId"] = 3416
	tShuraBattleGround_MonsterData["Monster"][6][3]["GenId"] = 24800
	tShuraBattleGround_MonsterData["Monster"][6][3]["Num"] = 3
	
	tShuraBattleGround_MonsterData["Monster"][7] = {}
	tShuraBattleGround_MonsterData["Monster"][7][1] = {}
	tShuraBattleGround_MonsterData["Monster"][7][1]["MonsterId"] = 3417
	tShuraBattleGround_MonsterData["Monster"][7][1]["GenId"] = 24801
	tShuraBattleGround_MonsterData["Monster"][7][1]["Num"] = 20
	tShuraBattleGround_MonsterData["Monster"][7][2] = {}
	tShuraBattleGround_MonsterData["Monster"][7][2]["MonsterId"] = 3418
	tShuraBattleGround_MonsterData["Monster"][7][2]["GenId"] = 24802
	tShuraBattleGround_MonsterData["Monster"][7][2]["Num"] = 15
	
	tShuraBattleGround_MonsterData["Monster"][8] = {}
	tShuraBattleGround_MonsterData["Monster"][8][1] = {}
	tShuraBattleGround_MonsterData["Monster"][8][1]["MonsterId"] = 3419
	tShuraBattleGround_MonsterData["Monster"][8][1]["GenId"] = 24803
	tShuraBattleGround_MonsterData["Monster"][8][1]["Num"] = 20
	tShuraBattleGround_MonsterData["Monster"][8][2] = {}
	tShuraBattleGround_MonsterData["Monster"][8][2]["MonsterId"] = 3420
	tShuraBattleGround_MonsterData["Monster"][8][2]["GenId"] = 24804
	tShuraBattleGround_MonsterData["Monster"][8][2]["Num"] = 15
	
	tShuraBattleGround_MonsterData["Monster"][9] = {}
	tShuraBattleGround_MonsterData["Monster"][9][1] = {}
	tShuraBattleGround_MonsterData["Monster"][9][1]["MonsterId"] = 3421
	tShuraBattleGround_MonsterData["Monster"][9][1]["GenId"] = 24805
	tShuraBattleGround_MonsterData["Monster"][9][1]["Num"] = 20
	tShuraBattleGround_MonsterData["Monster"][9][2] = {}
	tShuraBattleGround_MonsterData["Monster"][9][2]["MonsterId"] = 3422
	tShuraBattleGround_MonsterData["Monster"][9][2]["GenId"] = 24806
	tShuraBattleGround_MonsterData["Monster"][9][2]["Num"] = 15
	tShuraBattleGround_MonsterData["Monster"][9][3] = {}
	tShuraBattleGround_MonsterData["Monster"][9][3]["MonsterId"] = 3423
	tShuraBattleGround_MonsterData["Monster"][9][3]["GenId"] = 24807
	tShuraBattleGround_MonsterData["Monster"][9][3]["Num"] = 3
	 
	tShuraBattleGround_MonsterData["Monster"][10] = {}
	tShuraBattleGround_MonsterData["Monster"][10][1] = {}
	tShuraBattleGround_MonsterData["Monster"][10][1]["MonsterId"] = 3424
	tShuraBattleGround_MonsterData["Monster"][10][1]["GenId"] = 24808
	tShuraBattleGround_MonsterData["Monster"][10][1]["Num"] = 3
	tShuraBattleGround_MonsterData["Monster"][10][2] = {}
	tShuraBattleGround_MonsterData["Monster"][10][2]["MonsterId"] = 3425
	tShuraBattleGround_MonsterData["Monster"][10][2]["GenId"] = 24809
	tShuraBattleGround_MonsterData["Monster"][10][2]["Num"] = 20
	tShuraBattleGround_MonsterData["Monster"][10][3] = {}
	tShuraBattleGround_MonsterData["Monster"][10][3]["MonsterId"] = 3426
	tShuraBattleGround_MonsterData["Monster"][10][3]["GenId"] = 24810
	tShuraBattleGround_MonsterData["Monster"][10][3]["Num"] = 15
	tShuraBattleGround_MonsterData["Monster"][10][4] = {}
	tShuraBattleGround_MonsterData["Monster"][10][4]["MonsterId"] = 3427
	tShuraBattleGround_MonsterData["Monster"][10][4]["GenId"] = 24811
	tShuraBattleGround_MonsterData["Monster"][10][4]["Num"] = 3
	
--坐标
	local tShuraBattleGround_Pos = {}
	tShuraBattleGround_Pos["MonsterPos"] = {}
	tShuraBattleGround_Pos["MonsterPos"][1] = {174,174}
	tShuraBattleGround_Pos["MonsterPos"][2] = {166,165}
	tShuraBattleGround_Pos["MonsterPos"][3] = {159,157}
	tShuraBattleGround_Pos["MonsterPos"][4] = {151,149}
	tShuraBattleGround_Pos["MonsterPos"][5] = {144,159}
	tShuraBattleGround_Pos["MonsterPos"][6] = {137,136}
	tShuraBattleGround_Pos["MonsterPos"][7] = {149,172}
	tShuraBattleGround_Pos["MonsterPos"][8] = {155,165}
	tShuraBattleGround_Pos["MonsterPos"][9] = {162,159}
	tShuraBattleGround_Pos["MonsterPos"][10] = {170,151}
	tShuraBattleGround_Pos["MonsterPos"][11] = {165,143}
	tShuraBattleGround_Pos["MonsterPos"][12] = {158,149}
	tShuraBattleGround_Pos["MonsterPos"][13] = {150,156}
	tShuraBattleGround_Pos["MonsterPos"][14] = {140,166}
	tShuraBattleGround_Pos["MonsterPos"][15] = {132,159}
	tShuraBattleGround_Pos["MonsterPos"][16] = {138,151}
	tShuraBattleGround_Pos["MonsterPos"][17] = {142,141}
	tShuraBattleGround_Pos["MonsterPos"][18] = {153,130}
	tShuraBattleGround_Pos["MonsterPos"][19] = {129,164}
	tShuraBattleGround_Pos["MonsterPos"][20] = {132,158}
	tShuraBattleGround_Pos["MonsterPos"][21] = {137,153}
	tShuraBattleGround_Pos["MonsterPos"][22] = {140,149}
	tShuraBattleGround_Pos["MonsterPos"][23] = {143,145}
	tShuraBattleGround_Pos["MonsterPos"][24] = {149,136}
	tShuraBattleGround_Pos["MonsterPos"][25] = {152,132}
	tShuraBattleGround_Pos["MonsterPos"][26] = {157,129}
	tShuraBattleGround_Pos["MonsterPos"][27] = {160,125}
	tShuraBattleGround_Pos["MonsterPos"][28] = {142,153}
	tShuraBattleGround_Pos["MonsterPos"][29] = {145,150}
	tShuraBattleGround_Pos["MonsterPos"][30] = {149,146}
	tShuraBattleGround_Pos["MonsterPos"][31] = {153,142}
	tShuraBattleGround_Pos["MonsterPos"][32] = {157,137}
	tShuraBattleGround_Pos["MonsterPos"][33] = {162,133}
	tShuraBattleGround_Pos["MonsterPos"][34] = {167,138}
	tShuraBattleGround_Pos["MonsterPos"][35] = {163,143}
	tShuraBattleGround_Pos["MonsterPos"][36] = {157,151}
	tShuraBattleGround_Pos["MonsterPos"][37] = {160,182}
	tShuraBattleGround_Pos["MonsterPos"][38] = {164,178}
	tShuraBattleGround_Pos["MonsterPos"][39] = {167,173}
	tShuraBattleGround_Pos["MonsterPos"][40] = {174,165}
	tShuraBattleGround_Pos["MonsterPos"][41] = {177,165}
	tShuraBattleGround_Pos["MonsterPos"][42] = {181,161}
	tShuraBattleGround_Pos["MonsterPos"][43] = {186,182}
	tShuraBattleGround_Pos["MonsterPos"][44] = {180,184}
	tShuraBattleGround_Pos["MonsterPos"][45] = {175,188}
	tShuraBattleGround_Pos["MonsterPos"][46] = {172,192}
	tShuraBattleGround_Pos["MonsterPos"][47] = {169,197}
	tShuraBattleGround_Pos["MonsterPos"][48] = {190,178}
	tShuraBattleGround_Pos["MonsterPos"][49] = {194,175}
	tShuraBattleGround_Pos["MonsterPos"][50] = {199,173}
	tShuraBattleGround_Pos["MonsterPos"][51] = {176,174}
	tShuraBattleGround_Pos["MonsterPos"][52] = {185,165}
	tShuraBattleGround_Pos["MonsterPos"][53] = {166,182}
	tShuraBattleGround_Pos["MonsterPos"][54] = {158,152}
	
--临时表记录玩家进入副本
local nShuraBattleGround_Into = {} 
	
--Log
local tShuraBattleGround_Log = {}
	tShuraBattleGround_Log["EmoneyMoMoLog"] = "10000	0189	0	0	%d	"
	-- 白金VIP玩家进入副本次数 350 22023
	-- 黄金VIP玩家进入副本次数 350 22024
	-- 黑金VIP玩家进入副本次数 350 22025
	tShuraBattleGround_Log[3320219] = "350	22023	0	0	1	"
	tShuraBattleGround_Log[3320220] = "350	22024	0	0	1	"
	tShuraBattleGround_Log[3320221] = "350	22025	0	0	1	"
	
	--花费天石打开礼包
	tShuraBattleGround_Log[3322725] = "10000	0648	1300	1300	1	"
	tShuraBattleGround_Log[3322726] = "10000	0649	450	450	1	"
	tShuraBattleGround_Log[3322727] = "10000	0650	450	450	1	"
	tShuraBattleGround_Log[3322728] = "10000	0651	1500	1500	1	"
	tShuraBattleGround_Log[3322729] = "10000	0652	180	180	1	"
	
local tUserTimes = {}
----------------------------------逻辑部分---------------------------------------------

--时间自检重置全服限量
function ShuraBattleGround_ResetReward()
	
	local nData5 = Get_SysDynaGlobalData5(tShuraBattleGround_Data["GlobalId"])
	if nData5 == 0 or nData5 == nil then 
		Sys_SetSynaGlobalData5(tShuraBattleGround_Data["GlobalId"],1)
		Sys_SetSynaGlobalData0(tShuraBattleGround_Data["GlobalId"],0)
		Sys_SetSynaGlobalData1(tShuraBattleGround_Data["GlobalId"],0)
		Sys_SetSynaGlobalData2(tShuraBattleGround_Data["GlobalId"],0)
		Sys_SetSynaGlobalData3(tShuraBattleGround_Data["GlobalId"],0)
	end
end
function ShuraBattleGround_ResetReward2()
	local nAllData5 = Get_SysDynaGlobalData5(tShuraBattleGround_Data["GlobalId"])

	if nAllData5 == 1 then
		Sys_SetSynaGlobalData5(tShuraBattleGround_Data["GlobalId"],0)
	end
end

function ShuraBattleGround_OpenPack(nItemId,nEmoney)
	--判断物品
	if not Item_ChkItem(nItemId) then
		return	
	end	
	--天石判断
	if Get_UserEMoney() < nEmoney then
		LinkItemGossipFunc_New(nItemId,"2-2")
	else
		LinkItemGossipFunc_New(nItemId,"2-1")
	end
end 

function ShuraBattleGround_OpenPackSure(nItemId,nEmoney,nFlag)
	--判断物品
	if not Item_ChkItem(nItemId) then
		return	
	end	
	local nUserId = Get_UserId()
	--天石判断
	if Get_UserEMoney() < nEmoney then
		LinkItemGossipFunc_New(nItemId,"2-2")
		return
	else
		local nSpaceSum = 0
		--判断背包空间
		if nItemId == 3322729 then 
			nSpaceSum =	RewardTemplate_GetRandomSpace(tShuraBattleGround_RunAward,nItemId,nUserId)
		else
			nSpaceSum = RewardTemplate_GetRewardSpace(tShuraBattleGround_Award[nItemId][nFlag],nUserId) 
		end 
		if not User_CheckLeftSpace(nSpaceSum-1,nUserId) then
			local sSay = string.format(tCrossServerBestHero_Text[24162]["Space"],nSpaceSum-1)
			User_TalkChannel2005(sSay)
			return
		end
		if User_AddEMoney(-nEmoney) then
			Sys_SaveEmoneyBuy(tShuraBattleGround_Log[nItemId])
			if nItemId == 3322729 then 
				if Item_DelItem(nItemId) then
					RewardTemplate_NewRandom(tShuraBattleGround_RunAward,nItemId)	
				end 
			else
				RewardTemplate_UseItemAndMsg(tShuraBattleGround_Award[nItemId][nFlag])
			end 		
		end
	end

end 


--获取积分
function ShuraBattleGround_GetUserStaticValue(nDataType,nEventType,nNowUserId)
	local nNowUserId = nNowUserId or Get_UserId()
	if Task_StcInterval(nDataType,nEventType,1,4,nNowUserId) then
		Task_SetStatistic(nDataType,nEventType,0,1,nNowUserId)
		Task_SetStcTimestamp(nDataType,nEventType,0,nNowUserId)
	end
	local nData = Get_UserStatisticValue(nDataType,nEventType)
	return nData
end 

--领奖
function ShuraBattleGround_CostScore(nNpcId,nTikets)
	local nUserId = Get_UserId()
	--判断身份
	if not Item_ChkItem(nTikets) then
		Sys_MsgBox(tShuraBattleGround_Text["MsgBox"][nTikets])
		return
	end 
	local nDataType3 = tShuraBattleGround_Stc[3]["DataType"]
	local nEventType3 = tShuraBattleGround_Stc[3]["EventType"]
	--判断是否被领取
	if Task_StcInterval(nDataType3,nEventType3,1,4,nUserId) then
		Task_SetStatistic(nDataType3,nEventType3,0,1,nUserId)
		Task_SetStcTimestamp(nDataType3,nEventType3,0,nUserId)
	end
	local nData = Get_UserStatisticValue(nDataType3,nEventType3)
	if nData > 0 then 
		Sys_MsgBox(tShuraBattleGround_Text["MsgBox"]["HaveReward"])
		return
	end 
	--判断积分 
	local nDataType2 = tShuraBattleGround_Stc[2]["DataType"]
	local nEventType2 = tShuraBattleGround_Stc[2]["EventType"]
	local nUserBestPoint = ShuraBattleGround_GetUserStaticValue(nDataType2,nEventType2,nUserId)
	if nUserBestPoint == 0 then 
		Sys_MsgBox(tShuraBattleGround_Text["MsgBox"]["NoPoint"])
		return
	end 
	--防止刷奖  积分达到上限 给上限 产出怪物最多360只 因此积分上限为360 >360 给360 做个限定 防止刷奖
	if nUserBestPoint > 360 then 
		nUserBestPoint = 360
		Sys_SaveAbnormalLog(string.format("函数 ShuraBattleGround_CostScore 中玩家身上积分超过上限  玩家id==%d",nUserId))
	end 
	
	local tRewardTable = CommonFunc_Copy(tShuraBattleGround_Award["RewardEMoneyMono"])
	--赠点上限判断
	if Get_UserMonoEMoney() + tShuraBattleGround_Award[nTikets]*nUserBestPoint > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tBlackFiveDayAct_Text["Sys"]["EmoneyMoMoLimit"])
		return
	end
	local nNum = math.floor(nUserBestPoint/100)
	if nNum ~= 0 then
		if not User_CheckLeftSpace(nNum,nUserId) then
			local sSay = string.format(tCrossServerBestHero_Text[24162]["Space"],nNum)
			User_TalkChannel2005(sSay)
			return
		end
		
		for i = 1 , nNum do 
			RewardTemplate_NewRandom(tShuraBattleGround_RunAward,1)
		end 
	end
	Task_SetStatistic(nDataType3,nEventType3,1,1,nUserId)
	Task_SetStcTimestamp(nDataType3,nEventType3,0,nUserId)
	Sys_SaveEmoneyBuy(string.format(tShuraBattleGround_Log["EmoneyMoMoLog"],tShuraBattleGround_Award[nTikets]*nUserBestPoint))
	--修改复制表的奖励数
	tRewardTable["RewardEMoneyMono"]["Value"] = tShuraBattleGround_Award[nTikets]*nUserBestPoint
	RewardTemplate_UseItem(tRewardTable)
end 


--判断背包中有何种门票 没有返回false  有返回true 和 表 表结构 t[i]["Id"]  t[i]["Num"]
function ShuraBattleGround_CheckTiketsItem()
	local tItem = {}
	local nIndex = 1
	
	for a,b in pairs(tShuraBattleGround_Data["Tikets"]) do
		if Item_ChkItem(b) then
			tItem[nIndex] = {}
			-- nBagNum = Get_CountItemType(b,0)
			tItem[nIndex]["Id"] = b
			-- tItem[nIndex]["Num"] = nBagNum
			nIndex = nIndex + 1	
		end
	end
	if nIndex == 1 then
		return tItem , false
	else
		return tItem , true
	end

end

--检测物品
function ShuraBattleGround_CheckItem(nItemId)
	if Item_ChkItem(nItemId) then
		return true	
	else
		return false
	end
end 


--进入副本
function ShuraBattleGround_EnterInstance(nInstanceId)
	local nUserId = Get_UserId()
	
	--判断是否领奖
	
	--组队无法进入副本
	if Get_UserTeamNumbers() > 0 then  
		Sys_MsgBox(tShuraBattleGround_Text["MsgBox"]["TeamTip"])
		return
	end
	
	-- 判断是否有门票
	local tItem,b = ShuraBattleGround_CheckTiketsItem()
	if not b then 
		Sys_MsgBox(tShuraBattleGround_Text["MsgBox"]["NoTiket"])
		return 
	end 
	
	local nMapId = Get_UserMapId(nUserId)
	--检查地图属性
	if Get_MapDoc(nMapId) == tShuraBattleGround_Data["MapDoc"] then
		return
	end
	-- 移动到副本
	if User_EnterInstance(tShuraBattleGround_Data["InstanceType"]) then
		User_TalkChannel2005(tShuraBattleGround_Text["Sys"]["EterSuccess"])
		Sys_SaveEmoneyBuy(tShuraBattleGround_Data["EmonyBuyEnter"])
		--清除第几波掩码积分 隔天重置当天最佳记录隔天重置奖励
		ShuraBattleGround_ResetStep(nUserId)
	
		if nShuraBattleGround_Into[nUserId] ~= nil then 
			nShuraBattleGround_Into[nUserId] = 1 + nShuraBattleGround_Into[nUserId]
			-- nShuraBattleGround_Into = 1 + nShuraBattleGround_Into
		else
			nShuraBattleGround_Into[nUserId] = 0
			
		end 
			
		--删除所有的怪
		ShuraBattleGround_DelMonsterAll(nUserId)
		
		--重置地图怪物数
		-- DarkBattleGround_ResetMapMonsterNum(nUserId)
		--生成怪物npc
		-- if User_IsTeamLeader(nUserId) then
			-- DarkBattleGround_GeneratorMonsterNPC(nUserId)
		-- end
	
	end
	
end

--清空阶段
function ShuraBattleGround_ResetStep(nNowUserId)
	local nUserMapId = Get_UserMapId()
	if Get_MapDoc(nUserMapId) ~= tShuraBattleGround_Data["MapDoc"] then
		return
	end
	local nDataType = tShuraBattleGround_Stc[1]["DataType"]
	local nEventType = tShuraBattleGround_Stc[1]["EventType"]
	local nDataType2 = tShuraBattleGround_Stc[2]["DataType"]
	local nEventType2 = tShuraBattleGround_Stc[2]["EventType"]
	local nDataType3 = tShuraBattleGround_Stc[3]["DataType"]
	local nEventType3 = tShuraBattleGround_Stc[3]["EventType"]
	local nDataType4 = tShuraBattleGround_Stc[4]["DataType"]
	local nEventType4 = tShuraBattleGround_Stc[4]["EventType"]
	
	--清空阶段
	Task_SetStatistic(nDataType,nEventType,0,1,nNowUserId)
	Task_SetStatistic(nDataType4,nEventType4,0,1,nNowUserId)

	--隔天重置当天最佳记录
	if Task_StcInterval(nDataType2,nEventType2,1,4,nNowUserId) then
		Task_SetStatistic(nDataType2,nEventType2,0,1,nNowUserId)
		Task_SetStcTimestamp(nDataType2,nEventType2,0,nNowUserId)
		nShuraBattleGround_Into = {} 
	end
	--隔天重置奖励
	if Task_StcInterval(nDataType3,nEventType3,1,4,nNowUserId) then
		Task_SetStatistic(nDataType3,nEventType3,0,1,nNowUserId)
		Task_SetStcTimestamp(nDataType3,nEventType3,0,nNowUserId)
	end
	
end 

--记录波次
function ShuraBattleGround_RecordStep(nStep,nUserId)
	local nUserMapId = Get_UserMapId(nUserId)
	if Get_MapDoc(nUserMapId) ~= tShuraBattleGround_Data["MapDoc"] then
		return
	end
	local nDataType = tShuraBattleGround_Stc[1]["DataType"]
	local nEventType = tShuraBattleGround_Stc[1]["EventType"]

	Task_SetStatistic(nDataType,nEventType,nStep,1,nUserId)
	if nStep == 1 then
		Task_SetStcTimestamp(nDataType,nEventType,0,nUserId)
	end
	
end

--开始战斗
function ShuraBattleGround_Begin()
	local nUserId = Get_UserId()

	--清空阶段
	ShuraBattleGround_ResetStep(nUserId)
	
	--重置地图怪物数
	ShuraBattleGround_ResetMapMonsterNum()
	--第一阶段开始
	local nShuraBattleGround_IntoNum = 0
	if  nShuraBattleGround_Into[nUserId] ~= nil then 
		nShuraBattleGround_IntoNum = nShuraBattleGround_Into[nUserId]
	end 
	-- User_TalkChannel2005("kaishizhand=="..nShuraBattleGround_IntoNum)
	ShuraBattleGround_AddTimerAndBegin(nShuraBattleGround_IntoNum,nUserId)
	local tItem,b = ShuraBattleGround_CheckTiketsItem()
	if tItem[1] ~= nil then 
		if tItem[1]["Id"] ~= nil then 
			--记录log
			local nItemLog = tItem[1]["Id"]
			if tShuraBattleGround_Log[nItemLog] ~= nil then 
				Sys_SaveEmoneyBuy(tShuraBattleGround_Log[nItemLog])
			end 
		end 
	end 

end
function ShuraBattleGround_AddTimerAndBegin(nShuraBattleGround_IntoNow,nUserId)
	-- User_TalkChannel2005("ShuraBattleGround_AddTimerAndBegin"..nShuraBattleGround_IntoNow,nUserId)
	local nTime = tShuraBattleGround_GeneratorTime[0]["Time"]
	ShuraBattleGround_RecordStep(1,nUserId)
	
	User_SetTimer(300,"ShuraBattleGroundTime_Out</N>"..nShuraBattleGround_IntoNow.."</N>"..nUserId,1,nUserId)
	-- User_SetTimer(nTime,"ShuraBattleGround_StepBegin</N>".. 1 .. "</N>"..nUserId.."</N>"..nShuraBattleGround_IntoNow,1,nUserId)
	ShuraBattleGround_StepBegin(1,nUserId,nShuraBattleGround_IntoNow)
	Sys_MsgBox(tShuraBattleGround_Text["MsgBox"]["BattleBegin"],nil,nil,nUserId)
	User_TalkChannel2005(tShuraBattleGround_Text["Sys"]["BattleBegin"],nUserId)
	--播光效
	local sSzObj = tShuraBattleGround_Effect[1]["SzObj"]
	local sEffect = tShuraBattleGround_Effect[1]["Effect"]
	User_EffectAdd(sSzObj,sEffect,nUserId)
	--屏幕抖动
	User_Screffect(1,nUserId)
	--屏幕变暗变亮
	User_Screffect(4,nUserId)
end

--陷阱触发离开
function ShuraBattleGround_TrapLeave(nTrapType)
	Sys_MsgBox(tShuraBattleGround_Text["MsgBox"]["Leave"],"ShuraBattleGround_LeaveOut")
end

--离开
function ShuraBattleGround_LeaveOut()
	ShuraBattleGround_Leave(Get_UserId())
end
--离开副本
function ShuraBattleGround_Leave(nUserId)
	local nUserMapId = Get_UserMapId(nUserId)

	if Get_MapDoc(nUserMapId) == tShuraBattleGround_Data["MapDoc"] then
		-- 重置地图怪物数
		
		-- 删除全部怪物npc
		User_SetTimer(1,"NULL",1,nUserId)
		if nShuraBattleGround_Into[nUserId] ~= nil then 
			nShuraBattleGround_Into[nUserId] = 1 + nShuraBattleGround_Into[nUserId]
			-- nShuraBattleGround_Into = 1 + nShuraBattleGround_Into
		else
			nShuraBattleGround_Into[nUserId] = 0
			
		end 
		-- nShuraBattleGround_Into = 1 + nShuraBattleGround_Into
		ShuraBattleGround_Out()
		--清除第几波掩码积分 隔天重置当天最佳记录隔天重置奖励
		ShuraBattleGround_ResetStep(nUserId)
	end
	
end
--判断激情服
function ShuraBattleGround_CheckSever()
	local nFlag = 1
	if  SpecialServer_ChkNoGiftServer() then
		nFlag = 2 
	end
	return nFlag
end 

--物品导航
function ShuraBattleGround_ItemGoto(nUserId)
	local nUserMapId = Get_UserMapId(nUserId)
	
	if Get_MapDoc(nUserMapId) == tShuraBattleGround_Data["MapDoc"] then
		return
	end
	-- local nFlag = ShuraBattleGround_CheckSever()
	local nMapId = tShuraBattleGround_Data["Trans"][1]["MapId"]
	local nPosX = tShuraBattleGround_Data["Trans"][1]["PosX"]
	local nPosY = tShuraBattleGround_Data["Trans"][1]["PosY"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId)
end 

--传送出去
function ShuraBattleGround_Out(nUserId)
	-- local nFlag = ShuraBattleGround_CheckSever()
	local nMapId = tShuraBattleGround_Data["Trans"][1]["MapId"]
	local nPosX = tShuraBattleGround_Data["Trans"][1]["PosX"]
	local nPosY = tShuraBattleGround_Data["Trans"][1]["PosY"]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,2,2,1,nUserId)
end
--计时器触发离开
function ShuraBattleGroundTime_Out(nShuraBattleGround_IntoNow,nUserId)
	if nShuraBattleGround_Into[nUserId] ~= nil then 
		if nShuraBattleGround_IntoNow ~= nShuraBattleGround_Into[nUserId] then 
			-- User_TalkChannel2005("nShuraBattleGround_IntoNow=="..nShuraBattleGround_IntoNow.."nShuraBattleGround_Into=="..nShuraBattleGround_Into[nUserId],nUserId)
			return
		end 
	
	end 
	
	-- local nFlag = ShuraBattleGround_CheckSever()
	local nMapId = tShuraBattleGround_Data["Trans"][1]["MapId"]
	local nPosX = tShuraBattleGround_Data["Trans"][1]["PosX"]
	local nPosY = tShuraBattleGround_Data["Trans"][1]["PosY"]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,2,2,1,nUserId)
end

--删除全部怪物npc
function DarkBattleGround_DelAllMonsterNPC(nUserId)
	for nIndex = 1 ,18 do
		if tDarkBattleGround_Text["MonsterNPC"][nIndex] ~= nil then
			for i = 1 , #tDarkBattleGround_Text["MonsterNPC"][nIndex] do
				Npc_DelDynaNpc(Get_UserMapId(nUserId),"name",tDarkBattleGround_Text["MonsterNPC"][nIndex][i])
			end
		end
	end
end

--开始某一阶段
function ShuraBattleGround_StepBegin(nStep,nUserId,nShuraBattleGround_IntoNow)

	-- User_TalkChannel2005("ShuraBattleGround_StepBegin=="..nShuraBattleGround_IntoNow,nUserId)
	local nMapId = Get_UserMapId(nUserId)
	if Get_MapDoc(nMapId) ~= tShuraBattleGround_Data["MapDoc"] then
		return
	end

	--删除上一波怪
	ShuraBattleGround_DelMonsterById(nStep-1,nUserId)

	--刷某一阶段怪
	ShuraBattleGround_GeneratorMonster(nStep,nUserId,nShuraBattleGround_IntoNow)

	--删除陷阱
	ShuraBattleGround_DelTrap(tShuraBattleGround_Data["PoisonTrap"],nUserId)

	--刷特殊怪随机
	ShuraBattleGround_AddTimerAndGenSpicalMonster(nUserId)
	 
end
--删除所有怪物
function ShuraBattleGround_DelMonsterAll(nUserId)
	local nMapId = Get_UserMapId(nUserId)
	
	for i = 1 , #tShuraBattleGround_MonsterId do
		Monster_DelMonster(nMapId,tShuraBattleGround_MonsterId[i])
	end

end 

--删除某波怪物
function ShuraBattleGround_DelMonsterById(nStep,nUserId)
	if nStep == 0 then 
		return
	end 
	
	local nMapId = Get_UserMapId(nUserId)
	
	if tShuraBattleGround_MonsterData["Monster"][nStep] == nil then
		-- User_TalkChannel2005("Stop==nStep=="..nStep,nUserId)
		return
	end
	
	for k, v in pairs(tShuraBattleGround_MonsterData["Monster"][nStep]) do
	
		Monster_DelMonster(nMapId,v["MonsterId"])
	end

end 

--生成怪物npc
function DarkBattleGround_GeneratorMonsterNPC()
	for k, v in pairs(tDarkBattleGround_MonsterNPC) do
		for n,m in pairs(v) do
			Npc_CreateDynaNpc(m["Name"],2,0,m["LookFace"],0,0,Get_UserMapId(),m["PosX"],m["PosY"],0,0,0,0)
		end
	end
end
--删除怪物npc
function ShuraBattleGround_DelMonsterNPCByIndex(nIndex,nUserId)
	if tShuraBattleGround_Text["MonsterNPC"][nIndex] == nil then
		return
	end
	for i = 1 , #tShuraBattleGround_Text["MonsterNPC"][nIndex] do
		Npc_DelDynaNpc(Get_UserMapId(nUserId),"name",tShuraBattleGround_Text["MonsterNPC"][nIndex][i])
	end
end
--刷特殊怪
function ShuraBattleGround_GeneratorSpicalMonster(nUserId)
	if nUserId == 0 then
		return
	end
	
	local nMapId = Get_UserMapId(nUserId)
	if Get_MapDoc(nMapId) ~= tShuraBattleGround_Data["MapDoc"] then
		return
	end
	for k,v in pairs(tShuraBattleGround_GeneratorSpicalMonster) do
		local nRandom = v["Random"]
		local nMonsterId = v["MonsterId"]
		local nGenId = v["GenId"]
		local nNum = 0
		local x = 0
		local y = 0
		local n = 1
		if v["Pos"] == nil then
			x = v["PosX"]
			y = v["PosY"]
			nNum = v["Num"]
		else 
			n = #v["Pos"]
		end
		if nMonsterId == 3460 then
			x = Get_UserPositionX(nUserId)
			y = Get_UserPositionY(nUserId)
		end
		if Sys_Random(nRandom,100) then
			local nTotalNum = 0
			for l = 1,n do
				if v["Pos"] ~= nil then
					x = v["Pos"][l]["PosX"]
					y = v["Pos"][l]["PosY"]
					nNum = v["Pos"][l]["Num"]
				end
				local nTime = math.ceil(math.sqrt(nNum))
				nTotalNum = nTotalNum + nNum
				for j = 1,nTime do
					for k = 1 ,nTime do
						if ShuraBattleGround_GetMapMonsterNum(nMonsterId,nUserId) < nTotalNum then
							Monster_AddAndCount(nMapId,x+j*3,y+k*3,nGenId,nMonsterId)
						end
					end
				end
			end
			Map_SendBroadcastMsg(nMapId,tShuraBattleGround_Text["MapBroadCastMsg"][nMonsterId])
			return
		end
	end
end

--刷怪
function ShuraBattleGround_GeneratorMonster(nIndex,nUserId,nShuraBattleGround_IntoNow)
-- User_TalkChannel2005("ShuraBattleGround_GeneratorMonster=="..nShuraBattleGround_IntoNow,nUserId)
	if nUserId == 0 then
		return
	end
	if nIndex > 10 then 
		ShuraBattleGround_DelMonsterAll(nUserId)
		Sys_MsgBox(tShuraBattleGround_Text["MsgBox"]["Over"],"ShuraBattleGround_FindToExit</N>"..nUserId,nil,nUserId)
		return
	end 
	if nShuraBattleGround_Into[nUserId] ~= nil then 
		if nShuraBattleGround_IntoNow ~= nShuraBattleGround_Into[nUserId] then 
			-- User_TalkChannel2005("nShuraBattleGround_IntoNow=="..nShuraBattleGround_IntoNow.."nShuraBattleGround_Into=="..nShuraBattleGround_Into[nUserId],nUserId)
			return
		end 
	
	end 
	
	
	
	local nMapId = Get_UserMapId(nUserId)
	if Get_MapDoc(nMapId) ~= tShuraBattleGround_Data["MapDoc"] then
		return
	end
	
	if tShuraBattleGround_MonsterData["Monster"][nIndex] ~= nil then 
		for i=1,#tShuraBattleGround_MonsterData["Monster"][nIndex] do
			local nMonsterId = tShuraBattleGround_MonsterData["Monster"][nIndex][i]["MonsterId"]
			local nGenId = tShuraBattleGround_MonsterData["Monster"][nIndex][i]["GenId"]
			local nNum = tShuraBattleGround_MonsterData["Monster"][nIndex][i]["Num"]
		
			for j =1,nNum do 
				-- 随机一个区域
				local tNewRandom = tShuraBattleGround_Pos["MonsterPos"]
				local nRandomIndex = math.random(1,#tNewRandom)
				local tRandom = tShuraBattleGround_Pos["MonsterPos"][nRandomIndex]

				local nPosX = tRandom[1]
				local nPosY = tRandom[2]
				Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)
	
			end 
			 
			
		end 
	end 
		
	if tShuraBattleGround_Text["Sys"]["Monster"][nIndex] ~= nil then 
		Map_SendBroadcastMsg(nMapId,tShuraBattleGround_Text["Sys"]["Monster"][nIndex])
	end 

	if nIndex < 11 then 
		if tUserTimes[nUserId] == nil then 
			tUserTimes[nUserId] = 1
		else	
			tUserTimes[nUserId] = nIndex
		end 
		-- User_SetTimer(30,"ShuraBattleGround_StepBegin</N>"..nIndex+1 .. "</N>"..nUserId.."</N>"..nShuraBattleGround_IntoNow,1,nUserId)
		ShuraBattleGround_RecordStep(nIndex,nUserId)
	end 
end
--杀补给怪地面奖励 100气力包
function ShuraBattleGround_MapDropItem(nPosX,nPosY,nMapId)
	
	local nCellx = tShuraBattleGround_Data["Cellx"]
	local nCelly = tShuraBattleGround_Data["Celly"]
	local nExistTime = tShuraBattleGround_Data["ExistTime"]
	for i,v in pairs(tShuraBattleGround_Data["BossDrop"]) do
		if Sys_Random(v["ItemChanceNum"],v["ItemChanceSum"]) then
			local nItemId = v["ItemId"]
			local nItemNum = v["Num"]
			Map_DropMultiItems(nMapId, nItemId, nPosX-12, nPosY-10, nCellx, nCelly, nItemNum, nExistTime)
		end
	end
end
--判断是否还有怪物
function ShuraBattleGround_CheckMonster(nMapId)

	local nFlag = 0
	for i=1,#tShuraBattleGround_MonsterId do
		local nMonsterId = tShuraBattleGround_MonsterId[i]
		local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
		if nMonsterNum > 0 then 
			nFlag = nFlag + 1
		end 
	end 

	return nFlag
	
end 

function ShuraBattleGround_KillMonster(nMonsterId)

	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	Monster_Death(nMonsterId,nMapId)
	--增加积分
	local nDataType = tShuraBattleGround_Stc[4]["DataType"]
	local nEventType = tShuraBattleGround_Stc[4]["EventType"]

	if Task_StcInterval(nDataType,nEventType,1,4,nUserId) then
		Task_SetStatistic(nDataType,nEventType,0,1,nUserId)
		Task_SetStcTimestamp(nDataType,nEventType,0,nUserId)
	end

	Task_AddStatistic(nDataType, nEventType, 1, 1)
	Task_SetStcTimestamp(nDataType, nEventType, 0)

	local nUserPoint = Get_UserStatisticValue(nDataType,nEventType,nUserId)
	--记录最佳积分
	ShuraBattleGround_SetBestPoint(nUserPoint,nUserId)

	--生成剧毒陷阱
	if nMonsterId == 3462 then

		ShuraBattleGround_GenTrap(tShuraBattleGround_Data["PoisonTrap"],Get_MonsterPosX(),Get_MonsterPosY(),nUserId)
		User_SetTimer(60,"ShuraBattleGround_DelTrap</N>".. tShuraBattleGround_Data["PoisonTrap"] .. "</N>"..nUserId,0,nUserId)

	end
	
	--补给怪掉落
	if nMonsterId == 3463 then
	
		local nDataType_5 = tShuraBattleGround_Stc[5]["DataType"]
		local nEventType_5 = tShuraBattleGround_Stc[5]["EventType"]
		
		if Task_StcInterval(nDataType_5,nEventType_5,1,4,nUserId) then
			Task_SetStatistic(nDataType_5,nEventType_5,0,1,nUserId)
			Task_SetStcTimestamp(nDataType_5,nEventType_5,0,nUserId)
		end
		
		local nData_5 = Get_UserStatisticValue(nDataType_5,nEventType_5,nUserId)
		if nData_5 > tShuraBattleGround_Stc[5]["DataLimit"] then 
			return
		end 
		
		Task_AddStatistic(nDataType_5, nEventType_5, 1, 1)
		Task_SetStcTimestamp(nDataType_5, nEventType_5, 0)
		
		local nPosX = Get_MonsterPosX()
		local nPosY = Get_MonsterPosY()
		
		ShuraBattleGround_MapDropItem(nPosX,nPosY,nMapId)
		
		if nData_5 == tShuraBattleGround_Stc[5]["DataLimit"] then 
			Task_AddStatistic(nDataType_5, nEventType_5, 1, 1)
			Task_SetStcTimestamp(nDataType_5, nEventType_5, 0)
			Sys_MsgBox(tShuraBattleGround_Text["MsgBox"]["FullLimit"])
		end 
	end 
	local nMonsterNum =  ShuraBattleGround_CheckMonster(nMapId)
	if nMonsterNum == 0 then 
		local nTims = 1
		if tUserTimes[nUserId] ~= nil then 
			nTims = tUserTimes[nUserId]
		end 
		ShuraBattleGround_GeneratorMonster(nTims+1,nUserId,nShuraBattleGround_Into[nUserId])
	end 

end
--记录最佳积分
function ShuraBattleGround_SetBestPoint(nUserPoint,nUserId)
	local nDataType2 = tShuraBattleGround_Stc[2]["DataType"]
	local nEventType2 = tShuraBattleGround_Stc[2]["EventType"]
	
	if Get_UserStatisticValue(nDataType2,nEventType2) < nUserPoint then
		Task_SetStatistic(nDataType2,nEventType2,nUserPoint,1,nUserId)
	end
	
end 

--全队计时器出特殊怪
function ShuraBattleGround_AddTimerAndGenSpicalMonster(nUserId)
	local nTime = math.random(10,20)
	User_SetTimer(nTime,"ShuraBattleGround_GeneratorSpicalMonster</N>"..nUserId,0,nUserId)
end
--获取当前地图某只怪的数量
function ShuraBattleGround_GetMapMonsterNum(nMonsterId,nUserId)
	
	local nMapId = Get_UserMapId(nUserId)
	return Get_SysTempData(1,nMapId,nMonsterId)
end

--重置地图怪物数量
function ShuraBattleGround_ResetMapMonsterNum(nUserId)
	local nMapId = Get_UserMapId(nUserId)
	for k,v in pairs(tShuraBattleGround_MonsterId) do
		Sys_SetTempData(1,nMapId,v,0)
	end
end

--获取当前阶段的怪物是否杀完
function ShuraBattleGround_GetCurrentStepMonsterDeath(nStep,nUserId)
	local nCount = 0
	for i = 1 , #tShuraBattleGround_GeneratorMonsterId[nStep] do
		local nMonsterId = tShuraBattleGround_GeneratorMonsterId[nStep][i]
		nCount = nCount + ShuraBattleGround_GetMapMonsterNum(nMonsterId,nUserId)
	end
	if nCount == 0 then
		return true
	end
	return false
end

--获取阶段
function ShuraBattleGround_GetStep()
	local nDataType = tShuraBattleGround_Stc[1]["DataType"]
	local nEventType = tShuraBattleGround_Stc[1]["EventType"]
	return Get_UserStatisticValue(nDataType,nEventType)
end

--生成陷阱
function ShuraBattleGround_GenTrap(nTrapType,nPosX,nPosY,nUserId)
	local nMapId = Get_UserMapId(nUserId)
	-- 创建陷阱
	Trap_CreateMapTrap(nTrapType,nTrapType,0,nMapId,nPosX,nPosY,2,2)
end

--删除地图上的陷阱
function ShuraBattleGround_DelTrap(nTrapType,nUserId)
	local nMapId = Get_UserMapId(nUserId)
	Trap_DelMapTrap(nMapId,nTrapType)
end

--怪物陷阱
function ShuraBattleGround_MonsterTrap(nTrapType)
	local nStep = ShuraBattleGround_GetStep()
	local nUserId = Get_UserId()
	if nStep == nil or nStep == 0 then
		nStep = 1
	end
	ShuraBattleGround_StepBegin(nStep+1,nUserId,nShuraBattleGround_Into)
end

--剧毒陷阱
function ShuraBattleGround_PoisonTrap()
	local nStatus = 2
	local nPower = 1000
	local nSecs = 20
	local nTimes = 0
	local nRemainTime = 20
	local nEndTime = 1
	local nRecordable = 1
	User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,nRecordable,0,0,Get_UserId())
end


--寻路到出口
function ShuraBattleGround_FindToExit(nUserId)
	local nUserId = nUserId or Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	
	if Get_MapDoc(nMapId) ~= tShuraBattleGround_Data["MapDoc"] then
		return
	end
	
	local nPosX = Get_TrapPosX(994304)
	local nPosY = Get_TrapPosY(994304)
	
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId)
end

----------------------------------NPC部分---------------------------------------------
-- 23740,'阿瑞斯',0002,64930,
-- 23741,'阿瑞斯',0002,64930,

tNpcFace[6493] = 245
tNpcGossip[23740]= tNpcGossip[23740] or DefaultNpc:new{}
tNpcGossip[23740]["OptionHidden"] = 1

--【活动中，不是白金、黄金、黑金称号玩家】  
tNpcGossip[23740]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[23740]["Text111"] = tShuraBattleGround_Text[23740]["Text111"]
tNpcGossip[23740]["Text112"] = tShuraBattleGround_Text[23740]["Text112"]
tNpcGossip[23740]["Text113"] = tShuraBattleGround_Text[23740]["Text113"]
tNpcGossip[23740]["Text114"] = tShuraBattleGround_Text[23740]["Text114"]
tNpcGossip[23740]["Text115"] = tShuraBattleGround_Text[23740]["Text115"]
tNpcGossip[23740]["Text116"] = tShuraBattleGround_Text[23740]["Text116"]

tNpcGossip[23740]["ChkFunc1-1"]= function()
	local tItem,b = ShuraBattleGround_CheckTiketsItem()
	if not b then 
		return true
	else 
		return false
	end 
	
end

tNpcGossip[23740]["tOption1-1"] = {111,112}
tNpcGossip[23740]["Option111"] = tShuraBattleGround_Text[23740]["Option111"]
tNpcGossip[23740]["Option112"] = tShuraBattleGround_Text[23740]["Option112"]
tNpcGossip[23740]["OptionFunc112"] = "VIP_Paradise_SendWebPag</N>25172</N>1"

-- 【活动中，白金、黄金、黑金称号玩家】 
tNpcGossip[23740]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[23740]["Text121"] = tShuraBattleGround_Text[23740]["Text121"]
tNpcGossip[23740]["Text122"] = tShuraBattleGround_Text[23740]["Text122"]
tNpcGossip[23740]["Text123"] = tShuraBattleGround_Text[23740]["Text123"]
tNpcGossip[23740]["Text124"] = tShuraBattleGround_Text[23740]["Text124"]
tNpcGossip[23740]["Text125"] = tShuraBattleGround_Text[23740]["Text125"]

tNpcGossip[23740]["ChkFunc1-2"]= function()
	local nUserId = Get_UserId()

	local nDataType2 = tShuraBattleGround_Stc[2]["DataType"]
	local nEventType2 = tShuraBattleGround_Stc[2]["EventType"]
	local nData =  ShuraBattleGround_GetUserStaticValue(nDataType2,nEventType2,nUserId)
	tNpcGossip[23740]["Text125"] = string.format(tShuraBattleGround_Text[23740]["Text125"],nData)
	
	local tItem,b = ShuraBattleGround_CheckTiketsItem()
	if not b then 
		return false
	else
		return true
	end 
end

tNpcGossip[23740]["tOption1-2"] = {121,122,112}
tNpcGossip[23740]["Option121"] = tShuraBattleGround_Text[23740]["Option121"]
tNpcGossip[23740]["Option122"] = tShuraBattleGround_Text[23740]["Option122"]
tNpcGossip[23740]["OptionFunc121"] = "ShuraBattleGround_EnterInstance</N>235"
tNpcGossip[23740]["OptionPoint122"] = "2-1"

--如何征战修罗战场？
tNpcGossip[23740]["Text2-1"] = {211,212,213,214,215,216,217}
tNpcGossip[23740]["Text211"] = tShuraBattleGround_Text[23740]["Text211"]
tNpcGossip[23740]["Text212"] = tShuraBattleGround_Text[23740]["Text212"]
tNpcGossip[23740]["Text213"] = tShuraBattleGround_Text[23740]["Text213"]
tNpcGossip[23740]["Text214"] = tShuraBattleGround_Text[23740]["Text214"]
tNpcGossip[23740]["Text215"] = tShuraBattleGround_Text[23740]["Text215"]
tNpcGossip[23740]["Text216"] = tShuraBattleGround_Text[23740]["Text216"]
tNpcGossip[23740]["Text217"] = tShuraBattleGround_Text[23740]["Text217"]
tNpcGossip[23740]["ChkFunc2-1"]= function()
	-- if Sys_ChkDayTime(tDarkBattleGround_Requirement["Time"]) then
		-- tNpcGossip[23740]["OptionPoint211"] = "1-4"
	-- else
		-- tNpcGossip[23740]["OptionPoint211"] = "1-3"
	-- end
	return true
end
tNpcGossip[23740]["tOption2-1"] = {211}
tNpcGossip[23740]["Option211"] = tShuraBattleGround_Text[23740]["Option211"]
tNpcGossip[23740]["OptionPoint211"] = "1-2"

-- 23741,'阿瑞斯
tNpcGossip[23741]= tNpcGossip[23741] or DefaultNpc:new{}
tNpcGossip[23741]["OptionHidden"] = 1
--挑战开始前
tNpcGossip[23741]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[23741]["Text111"] = tShuraBattleGround_Text[23741]["Text111"]
tNpcGossip[23741]["Text112"] = tShuraBattleGround_Text[23741]["Text112"]
tNpcGossip[23741]["Text113"] = tShuraBattleGround_Text[23741]["Text113"]
tNpcGossip[23741]["Text114"] = tShuraBattleGround_Text[23741]["Text114"]
tNpcGossip[23741]["Text115"] = tShuraBattleGround_Text[23741]["Text115"]
tNpcGossip[23741]["Text116"] = tShuraBattleGround_Text[23741]["Text116"]
tNpcGossip[23741]["Text117"] = tShuraBattleGround_Text[23741]["Text117"]
tNpcGossip[23741]["ChkFunc1-1"]= function()
	local nStep = ShuraBattleGround_GetStep()
	if nStep == 0 then
		return true
	end
	return false
end
tNpcGossip[23741]["tOption1-1"] = {111}
tNpcGossip[23741]["Option111"] = tShuraBattleGround_Text[23741]["Option111"]
tNpcGossip[23741]["OptionFunc111"] = "ShuraBattleGround_Begin"
-- tNpcGossip[23741]["OptionFunc112"] = "DarkBattleGround_FindToExit"
--第n波
tNpcGossip[23741]["Text1-2"] = {121,122,123,124,125,126}
tNpcGossip[23741]["Text121"] = tShuraBattleGround_Text[23741]["Text121"]
tNpcGossip[23741]["Text122"] = tShuraBattleGround_Text[23741]["Text122"]
tNpcGossip[23741]["Text123"] = tShuraBattleGround_Text[23741]["Text123"]
tNpcGossip[23741]["Text124"] = tShuraBattleGround_Text[23741]["Text124"]
tNpcGossip[23741]["Text125"] = tShuraBattleGround_Text[23741]["Text125"]
tNpcGossip[23741]["Text126"] = tShuraBattleGround_Text[23741]["Text126"]
tNpcGossip[23741]["ChkFunc1-2"]= function()
	local nUserId = Get_UserId()
	local nStep = ShuraBattleGround_GetStep()
	local nDataType4 = tShuraBattleGround_Stc[4]["DataType"]
	local nEventType4 = tShuraBattleGround_Stc[4]["EventType"]
	local nData =  ShuraBattleGround_GetUserStaticValue(nDataType4,nEventType4,nUserId)
	tNpcGossip[23741]["Text121"] = string.format(tShuraBattleGround_Text[23741]["Text121"],nStep)
	tNpcGossip[23741]["Text123"] =  string.format(tShuraBattleGround_Text[23741]["Text123"],nData)
	
	return true
end
tNpcGossip[23741]["tOption1-2"] = {121}
tNpcGossip[23741]["Option121"] = tShuraBattleGround_Text[23741]["Option121"]
-- tNpcGossip[23741]["OptionFunc121"] = "DarkBattleGround_FindToExit"



-- (23742,'白金宝箱
tNpcFace[3371] = 2120
tNpcGossip[23742]= tNpcGossip[23742] or DefaultNpc:new{}
tNpcGossip[23742]["OptionHidden"] = 1
tNpcGossip[23742]["Text1-1"] = {111,112,113}
tNpcGossip[23742]["Text111"] = tShuraBattleGround_Text[23742]["Text111"]
tNpcGossip[23742]["Text112"] = tShuraBattleGround_Text[23742]["Text112"]
tNpcGossip[23742]["Text113"] = tShuraBattleGround_Text[23742]["Text113"]

tNpcGossip[23742]["tOption1-1"] = {111}
tNpcGossip[23742]["Option111"] = tShuraBattleGround_Text[23742]["Option111"]

tNpcGossip[23742]["OptionFunc111"] = "ShuraBattleGround_CostScore</N>23742</N>3320219"
tNpcGossip[23742]["ChkFunc1-1"]= function()
	--判断没有白金卡
	if not ShuraBattleGround_CheckItem(tShuraBattleGround_Data["Tikets"][1]) then 
		return true
	end 
	
end
-- 【玩家是白金侠士】
tNpcGossip[23742]["Text1-2"] = {121}
tNpcGossip[23742]["Text121"] = tShuraBattleGround_Text[23742]["Text121"]

tNpcGossip[23742]["tOption1-2"] = {121,122}
tNpcGossip[23742]["Option121"] = tShuraBattleGround_Text[23742]["Option121"]
tNpcGossip[23742]["Option122"] = tShuraBattleGround_Text[23742]["Option122"]
tNpcGossip[23742]["OptionPoint121"] = "2-1"
-- tNpcGossip[23742]["OptionFunc121"] = "ShuraBattleGround_CostScore</N>23742</N>3320219"
tNpcGossip[23742]["ChkFunc1-2"]= function()
	local nUserId = Get_UserId()
	local nDataType2 = tShuraBattleGround_Stc[2]["DataType"]
	local nEventType2 = tShuraBattleGround_Stc[2]["EventType"]
	local nData =  ShuraBattleGround_GetUserStaticValue(nDataType2,nEventType2,nUserId)
	tNpcGossip[23742]["Text121"] = string.format(tShuraBattleGround_Text[23742]["Text121"],nData)
	--判断有白金卡
	if ShuraBattleGround_CheckItem(tShuraBattleGround_Data["Tikets"][1]) then 
		return true
	end 
end

tNpcGossip[23742]["Text2-1"] = {211,212}
tNpcGossip[23742]["Text211"] = tShuraBattleGround_Text[23742]["Text211"]
tNpcGossip[23742]["tOption2-1"] = {211,212}
tNpcGossip[23742]["Option211"] = tShuraBattleGround_Text[23742]["Option121"]
tNpcGossip[23742]["Option212"] = tShuraBattleGround_Text[23742]["Option122"]
tNpcGossip[23742]["OptionFunc211"] = "ShuraBattleGround_CostScore</N>23742</N>3320219"


-- (23743,'黄金宝箱
tNpcFace[3372] = 2121
tNpcGossip[23743]= tNpcGossip[23743] or DefaultNpc:new{}
tNpcGossip[23743]["OptionHidden"] = 1
tNpcGossip[23743]["Text1-1"] = {111,112,113}
tNpcGossip[23743]["Text111"] = tShuraBattleGround_Text[23743]["Text111"]
tNpcGossip[23743]["Text112"] = tShuraBattleGround_Text[23743]["Text112"]
tNpcGossip[23743]["Text113"] = tShuraBattleGround_Text[23743]["Text113"]

tNpcGossip[23743]["tOption1-1"] = {111}
tNpcGossip[23743]["Option111"] = tShuraBattleGround_Text[23743]["Option111"]

tNpcGossip[23743]["OptionFunc111"] = "ShuraBattleGround_CostScore</N>23743</N>3320220"
tNpcGossip[23743]["ChkFunc1-1"]= function()
	--判断没有白金卡
	if not ShuraBattleGround_CheckItem(tShuraBattleGround_Data["Tikets"][2]) then 
		return true
	end 
	
end
-- 【玩家是黄金侠士】
tNpcGossip[23743]["Text1-2"] = {121}
tNpcGossip[23743]["Text121"] = tShuraBattleGround_Text[23743]["Text121"]

tNpcGossip[23743]["tOption1-2"] = {121,122}
tNpcGossip[23743]["Option121"] = tShuraBattleGround_Text[23743]["Option121"]
tNpcGossip[23743]["Option122"] = tShuraBattleGround_Text[23743]["Option122"]
tNpcGossip[23743]["OptionPoint121"] = "2-1"
-- tNpcGossip[23743]["OptionFunc121"] = "ShuraBattleGround_CostScore</N>23743</N>3320220"
tNpcGossip[23743]["ChkFunc1-2"]= function()
	
	local nUserId = Get_UserId()
	local nDataType2 = tShuraBattleGround_Stc[2]["DataType"]
	local nEventType2 = tShuraBattleGround_Stc[2]["EventType"]
	local nData =  ShuraBattleGround_GetUserStaticValue(nDataType2,nEventType2,nUserId)
	tNpcGossip[23743]["Text121"] = string.format(tShuraBattleGround_Text[23743]["Text121"],nData)
	--判断有白金卡
	if ShuraBattleGround_CheckItem(tShuraBattleGround_Data["Tikets"][2]) then 
		return true
	end 
end

tNpcGossip[23743]["Text2-1"] = {211,212}
tNpcGossip[23743]["Text211"] = tShuraBattleGround_Text[23742]["Text211"]
tNpcGossip[23743]["tOption2-1"] = {211,212}
tNpcGossip[23743]["Option211"] = tShuraBattleGround_Text[23742]["Option121"]
tNpcGossip[23743]["Option212"] = tShuraBattleGround_Text[23742]["Option122"]
tNpcGossip[23743]["OptionFunc211"] = "ShuraBattleGround_CostScore</N>23743</N>3320220"


-- (23744,'黑金宝箱
tNpcFace[3373] = 2122
tNpcGossip[23744]= tNpcGossip[23744] or DefaultNpc:new{}
tNpcGossip[23744]["OptionHidden"] = 1
tNpcGossip[23744]["Text1-1"] = {111,112,113}
tNpcGossip[23744]["Text111"] = tShuraBattleGround_Text[23744]["Text111"]
tNpcGossip[23744]["Text112"] = tShuraBattleGround_Text[23744]["Text112"]
tNpcGossip[23744]["Text113"] = tShuraBattleGround_Text[23744]["Text113"]

tNpcGossip[23744]["tOption1-1"] = {111}
tNpcGossip[23744]["Option111"] = tShuraBattleGround_Text[23744]["Option111"]

tNpcGossip[23744]["OptionFunc111"] = "ShuraBattleGround_CostScore</N>23744</N>3320221"
tNpcGossip[23744]["ChkFunc1-1"]= function()
	--判断没有白金卡
	if not ShuraBattleGround_CheckItem(tShuraBattleGround_Data["Tikets"][3]) then 
		return true
	end 
	
end
-- 【玩家是白金侠士】
tNpcGossip[23744]["Text1-2"] = {121}
tNpcGossip[23744]["Text121"] = tShuraBattleGround_Text[23744]["Text121"]

tNpcGossip[23744]["tOption1-2"] = {121,122}
tNpcGossip[23744]["Option121"] = tShuraBattleGround_Text[23744]["Option121"]
tNpcGossip[23744]["Option122"] = tShuraBattleGround_Text[23744]["Option122"]
tNpcGossip[23744]["OptionPoint121"] = "2-1"
-- tNpcGossip[23744]["OptionFunc121"] = "ShuraBattleGround_CostScore</N>23744</N>3320221"
tNpcGossip[23744]["ChkFunc1-2"]= function()
	
	local nUserId = Get_UserId()
	local nDataType2 = tShuraBattleGround_Stc[2]["DataType"]
	local nEventType2 = tShuraBattleGround_Stc[2]["EventType"]
	local nData =  ShuraBattleGround_GetUserStaticValue(nDataType2,nEventType2,nUserId)
	tNpcGossip[23744]["Text121"] = string.format(tShuraBattleGround_Text[23744]["Text121"],nData)
	--判断有白金卡
	if ShuraBattleGround_CheckItem(tShuraBattleGround_Data["Tikets"][3]) then 
		return true
	end 
end

tNpcGossip[23744]["Text2-1"] = {211,212}
tNpcGossip[23744]["Text211"] = tShuraBattleGround_Text[23742]["Text211"]
tNpcGossip[23744]["tOption2-1"] = {211,212}
tNpcGossip[23744]["Option211"] = tShuraBattleGround_Text[23742]["Option121"]
tNpcGossip[23744]["Option212"] = tShuraBattleGround_Text[23742]["Option122"]
tNpcGossip[23744]["OptionFunc211"] = "ShuraBattleGround_CostScore</N>23744</N>3320221"

---------------------------------物品部分---------------------------------------------
-- 3320219,'白金战场通行令
-- 3320220,'黄金战场通行令
-- 3320221,'黑金战场通行令
-- 导航
tItem[3320219] = tItem[3320219] or {}
tItem[3320219]["Function"] = function(nItemId,sItemName)
	ShuraBattleGround_ItemGoto(nItemId)
end
tItem[3320220] = tItem[3320219] or {}
tItem[3320221] = tItem[3320219] or {}

-- 3322725,'VIP良品神纹源晶礼盒',9
tItemFace[3322725] = 1904
tItem[3322725] = tItem[3322725] or {}
tItem[3322725]["DialogueText"] = tShuraBattleGround_Text[3322725]
tItem[3322725]["Text1-1"] = {111}
tItem[3322725]["Text111"] = tShuraBattleGround_Text[3322725]["Text111"]
tItem[3322725]["tOption1-1"] = {111,112}
tItem[3322725]["Option111"] = tShuraBattleGround_Text[3322725]["Option111"]
tItem[3322725]["Option112"] = tShuraBattleGround_Text[3322725]["Option112"]
tItem[3322725]["OptionFunc111"]="ShuraBattleGround_OpenPack</N>3322725</N>1300"

--二次确认
tItem[3322725]["Text2-1"] = {211}
tItem[3322725]["Text211"] = tShuraBattleGround_Text[3322725]["Text211"]
tItem[3322725]["tOption2-1"] = {211,212}
tItem[3322725]["Option211"] = tShuraBattleGround_Text[3322725]["Option211"]
tItem[3322725]["OptionFunc211"] = "ShuraBattleGround_OpenPackSure</N>3322725</N>1300</N>1"
tItem[3322725]["Option212"] = tShuraBattleGround_Text[3322725]["Option212"]

--天石不足
tItem[3322725]["Text2-2"] = {221}
tItem[3322725]["Text221"] = tShuraBattleGround_Text[3322725]["Text221"]
tItem[3322725]["tOption2-2"] = {221}
tItem[3322725]["Option221"] = tShuraBattleGround_Text[3322725]["Option221"]

-- 3322726,'VIP女神礼物可选包',8,9
tItemFace[3322726] = 1102
tItem[3322726] = tItem[3322726] or {}
tItem[3322726]["DialogueText"] = tShuraBattleGround_Text[3322726]
tItem[3322726]["Text1-1"] = {111}
tItem[3322726]["Text111"] = tShuraBattleGround_Text[3322726]["Text111"]
tItem[3322726]["tOption1-1"] = {111,112}
tItem[3322726]["Option111"] = tShuraBattleGround_Text[3322726]["Option111"]
tItem[3322726]["Option112"] = tShuraBattleGround_Text[3322726]["Option112"]
tItem[3322726]["OptionFunc111"]="ShuraBattleGround_OpenPack</N>3322726</N>450"

--二次确认
tItem[3322726]["Text2-1"] = {211}
tItem[3322726]["Text211"] = tShuraBattleGround_Text[3322726]["Text211"]
tItem[3322726]["tOption2-1"] = {211,212,213,214}
tItem[3322726]["Option211"] = tShuraBattleGround_Text[3322726]["Option211"]
tItem[3322726]["Option212"] = tShuraBattleGround_Text[3322726]["Option212"]
tItem[3322726]["Option213"] = tShuraBattleGround_Text[3322726]["Option213"]
tItem[3322726]["Option214"] = tShuraBattleGround_Text[3322726]["Option214"]
tItem[3322726]["OptionFunc211"] = "ShuraBattleGround_OpenPackSure</N>3322726</N>450</N>1"
tItem[3322726]["OptionFunc212"] = "ShuraBattleGround_OpenPackSure</N>3322726</N>450</N>2"
tItem[3322726]["OptionFunc213"] = "ShuraBattleGround_OpenPackSure</N>3322726</N>450</N>3"
tItem[3322726]["OptionFunc214"] = "ShuraBattleGround_OpenPackSure</N>3322726</N>450</N>4"

--天石不足
tItem[3322726]["Text2-2"] = {221}
tItem[3322726]["Text221"] = tShuraBattleGround_Text[3322725]["Text221"]
tItem[3322726]["tOption2-2"] = {221}
tItem[3322726]["Option221"] = tShuraBattleGround_Text[3322725]["Option221"]


-- 3322727,'VIP男神礼物可选包',8,9
tItemFace[3322727] = 1098
tItem[3322727] = tItem[3322727] or {}
tItem[3322727]["DialogueText"] = tShuraBattleGround_Text[3322727]
tItem[3322727]["Text1-1"] = {111}
tItem[3322727]["Text111"] = tShuraBattleGround_Text[3322727]["Text111"]
tItem[3322727]["tOption1-1"] = {111,112}
tItem[3322727]["Option111"] = tShuraBattleGround_Text[3322727]["Option111"]
tItem[3322727]["Option112"] = tShuraBattleGround_Text[3322727]["Option112"]
tItem[3322727]["OptionFunc111"]="ShuraBattleGround_OpenPack</N>3322727</N>450"

--二次确认
tItem[3322727]["Text2-1"] = {211}
tItem[3322727]["Text211"] = tShuraBattleGround_Text[3322727]["Text211"]
tItem[3322727]["tOption2-1"] = {211,212,213,214}
tItem[3322727]["Option211"] = tShuraBattleGround_Text[3322727]["Option211"]
tItem[3322727]["Option212"] = tShuraBattleGround_Text[3322727]["Option212"]
tItem[3322727]["Option213"] = tShuraBattleGround_Text[3322727]["Option213"]
tItem[3322727]["Option214"] = tShuraBattleGround_Text[3322727]["Option214"]
tItem[3322727]["OptionFunc211"] = "ShuraBattleGround_OpenPackSure</N>3322727</N>450</N>1"
tItem[3322727]["OptionFunc212"] = "ShuraBattleGround_OpenPackSure</N>3322727</N>450</N>2"
tItem[3322727]["OptionFunc213"] = "ShuraBattleGround_OpenPackSure</N>3322727</N>450</N>3"
tItem[3322727]["OptionFunc214"] = "ShuraBattleGround_OpenPackSure</N>3322727</N>450</N>4"

--天石不足
tItem[3322727]["Text2-2"] = {221}
tItem[3322727]["Text221"] = tShuraBattleGround_Text[3322725]["Text221"]
tItem[3322727]["tOption2-2"] = {221}
tItem[3322727]["Option221"] = tShuraBattleGround_Text[3322725]["Option221"]


-- 3322728,'VIP稀有蓝色神纹碎片盒'
tItemFace[3322728] = 2438
tItem[3322728] = tItem[3322728] or {}
tItem[3322728]["DialogueText"] = tShuraBattleGround_Text[3322728]
tItem[3322728]["Text1-1"] = {111}
tItem[3322728]["Text111"] = tShuraBattleGround_Text[3322728]["Text111"]
tItem[3322728]["tOption1-1"] = {111,112}
tItem[3322728]["Option111"] = tShuraBattleGround_Text[3322728]["Option111"]
tItem[3322728]["Option112"] = tShuraBattleGround_Text[3322728]["Option112"]
tItem[3322728]["OptionFunc111"]="ShuraBattleGround_OpenPack</N>3322728</N>1500"

--二次确认
tItem[3322728]["Text2-1"] = {211}
tItem[3322728]["Text211"] = tShuraBattleGround_Text[3322728]["Text211"]
tItem[3322728]["tOption2-1"] = {211,212}
tItem[3322728]["Option211"] = tShuraBattleGround_Text[3322728]["Option211"]
tItem[3322728]["OptionFunc211"] = "ShuraBattleGround_OpenPackSure</N>3322728</N>1500</N>1"
tItem[3322728]["Option212"] = tShuraBattleGround_Text[3322728]["Option212"]

--天石不足
tItem[3322728]["Text2-2"] = {221}
tItem[3322728]["Text221"] = tShuraBattleGround_Text[3322725]["Text221"]
tItem[3322728]["tOption2-2"] = {221}
tItem[3322728]["Option221"] = tShuraBattleGround_Text[3322725]["Option221"]


-- 3322729,'VIP灵珠极运包',8,98471
tItemFace[3322729] = 1164
tItem[3322729] = tItem[3322729] or {}
tItem[3322729]["DialogueText"] = tShuraBattleGround_Text[3322729]
tItem[3322729]["Text1-1"] = {111}
tItem[3322729]["Text111"] = tShuraBattleGround_Text[3322729]["Text111"]
tItem[3322729]["tOption1-1"] = {111,112}
tItem[3322729]["Option111"] = tShuraBattleGround_Text[3322729]["Option111"]
tItem[3322729]["Option112"] = tShuraBattleGround_Text[3322729]["Option112"]
tItem[3322729]["OptionFunc111"]="ShuraBattleGround_OpenPack</N>3322729</N>180"

--二次确认
tItem[3322729]["Text2-1"] = {211}
tItem[3322729]["Text211"] = tShuraBattleGround_Text[3322729]["Text211"]
tItem[3322729]["tOption2-1"] = {211,212}
tItem[3322729]["Option211"] = tShuraBattleGround_Text[3322729]["Option211"]
tItem[3322729]["OptionFunc211"] = "ShuraBattleGround_OpenPackSure</N>3322729</N>180</N>1"
tItem[3322729]["Option212"] = tShuraBattleGround_Text[3322729]["Option212"]

--天石不足
tItem[3322729]["Text2-2"] = {221}
tItem[3322729]["Text221"] = tShuraBattleGround_Text[3322725]["Text221"]
tItem[3322729]["tOption2-2"] = {221}
tItem[3322729]["Option221"] = tShuraBattleGround_Text[3322725]["Option221"]


---------------------------------怪物部分---------------------------------------------
local tShuraBattleGround_KillMonster = {}
	tShuraBattleGround_KillMonster["Function"] = ShuraBattleGround_KillMonster
	tShuraBattleGround_KillMonster["MonsterId"] = {3403,3404,3405,3406,3407,3408,3409,3410,3411,3412,3413,3414,3415,3416,3417,3418,3419,3420,3421,3422,3423,3424,3425,3426,3427,3460,3461,3462,3463}
table.insert(tMonsterDrop_AreaLoad,tShuraBattleGround_KillMonster)

---------------------------------陷阱部分---------------------------------------------
--怪物陷阱
-- tTrap[2286] = tTrap[2286] or {}
-- tTrap[2286]["Function"] = function(nTrapId,nTrapType)
	-- ShuraBattleGround_MonsterTrap(nTrapType)
-- end

tTrap[2287] = tTrap[2287] or {}
tTrap[2287]["Function"] = function(nTrapId,nTrapType)
	ShuraBattleGround_PoisonTrap(nTrapType)
end

tTrap[2288] = tTrap[2288] or {}
tTrap[2288]["Function"] = function(nTrapId,nTrapType)
	ShuraBattleGround_TrapLeave(nTrapType)
end

------------------------------------------------------时间自检部分-------------------------------------------------------------

--时间自检重置全服限量
local tShuraBattleGround_Reset = {}
tShuraBattleGround_Reset["Type"] = 2
tShuraBattleGround_Reset["TimeType"] = 4
tShuraBattleGround_Reset["Multiple"] = {}
tShuraBattleGround_Reset["Multiple"][1]  = "00:00 00:03"
tShuraBattleGround_Reset["Func"] = ShuraBattleGround_ResetReward
table.insert(tSystemTime_InitialData,tShuraBattleGround_Reset)


local tShuraBattleGround_Reset2 = {}
tShuraBattleGround_Reset2["Type"] = 2
tShuraBattleGround_Reset2["TimeType"] = 4
tShuraBattleGround_Reset2["Multiple"] = {}
tShuraBattleGround_Reset2["Multiple"][1]  = "00:04 00:06"
tShuraBattleGround_Reset2["Func"] = ShuraBattleGround_ResetReward2
table.insert(tSystemTime_InitialData,tShuraBattleGround_Reset2)








