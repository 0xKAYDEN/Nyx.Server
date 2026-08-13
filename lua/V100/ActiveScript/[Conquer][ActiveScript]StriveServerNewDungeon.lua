------------------------------------------------------------------------------------
--Name:			180531[简体征服][活动脚本]奋斗服新地宫玩法制作
--Purpose:		奋斗服
--Creator:		wzh
--Created:		2018-05-31
------------------------------------------------------------------------------------
-- 前缀
-- StriveSeverNewDungeon_

-- LogId 12001092

-- stc掩码说明 
-- stc 177，85		记录是否领取酒窖搜宝袋
-- stc 177，86		记录是否领取火窟搜宝袋
-- stc 177，87		记录是否使用过地宫特权令

-- 全局表说明
-- global 52691		DATA0 记录宝石限量掉落，DATA1 记录赤炼石限量掉落


---------------------------------------------常量配置部分---------------------------------------
-- 常量表
local tStriveSeverNewDungeon_Cont = {}
	-- 奋斗服Global
	tStriveSeverNewDungeon_Cont["StriveGlobal"] = 52599
	-- 掉落限量
	tStriveSeverNewDungeon_Cont["LimitGlobal"] = 52691
	tStriveSeverNewDungeon_Cont["GemLimit"] = 300
	tStriveSeverNewDungeon_Cont["StoneLimit"] = 200
	
	-- 地图
	tStriveSeverNewDungeon_Cont["Map"] = {}
	-- 敦煌2-3层
	tStriveSeverNewDungeon_Cont["Map"][1] = {1786,1787}
	-- 冰封3-4层
	tStriveSeverNewDungeon_Cont["Map"][2] = {1999,2054}
	-- 新地宫对应搜宝袋ID
	tStriveSeverNewDungeon_Cont["Map"][10346] = 3309685
	tStriveSeverNewDungeon_Cont["Map"][10347] = 3309686
	-- BOSS对应地图
	tStriveSeverNewDungeon_Cont["Map"][4802] = 10346
	tStriveSeverNewDungeon_Cont["Map"][4803] = 10346
	-- tStriveSeverNewDungeon_Cont["Map"][4804] = 10347
	tStriveSeverNewDungeon_Cont["Map"][4805] = 10347
	
	-- 等级
	tStriveSeverNewDungeon_Cont["Level"] = 80
	tStriveSeverNewDungeon_Cont["Metempsychosis"] = 0
	
	-- 光效
	tStriveSeverNewDungeon_Cont["Effect"] = {}
	tStriveSeverNewDungeon_Cont["Effect"][1] = "zf2-e128"
	tStriveSeverNewDungeon_Cont["Effect"][2] = "accession"
	
	-- BOSS ID
	tStriveSeverNewDungeon_Cont["BossId"] = {4802,4803,4805}
	tStriveSeverNewDungeon_Cont["BossMapId"] = {10346,10346,10347}
	
	-- NPC相关配置
	-- 酒神杜康配置
	tStriveSeverNewDungeon_Cont[22977] = {}
	tStriveSeverNewDungeon_Cont[22977]["EnterTime"] = "13:00 19:00"
	tStriveSeverNewDungeon_Cont[22977]["ItemId"] = 723030
	tStriveSeverNewDungeon_Cont[22977]["EmoneyNum"] = 3
	tStriveSeverNewDungeon_Cont[22977]["MapId"] = 10346
	-- 火神祝融配置
	tStriveSeverNewDungeon_Cont[22978] = {}
	tStriveSeverNewDungeon_Cont[22978]["EnterTime"] = "16:00 22:00"
	tStriveSeverNewDungeon_Cont[22978]["ItemId"] = 720598
	tStriveSeverNewDungeon_Cont[22978]["EmoneyNum"] = 9
	tStriveSeverNewDungeon_Cont[22978]["MapId"] = 10347
	
	-- 传送相关配置
	tStriveSeverNewDungeon_Cont["ChgMap"] = {}
	-- 酒神杜康
	tStriveSeverNewDungeon_Cont["ChgMap"][22977] = {}
	tStriveSeverNewDungeon_Cont["ChgMap"][22977]["MapId"] = 1001
	tStriveSeverNewDungeon_Cont["ChgMap"][22977]["CellX"] = 316
	tStriveSeverNewDungeon_Cont["ChgMap"][22977]["CellY"] = 646
	tStriveSeverNewDungeon_Cont["ChgMap"][22977]["Range"] = 3
	tStriveSeverNewDungeon_Cont["ChgMap"][22977]["IntoMap"] = 10346
	-- 火神祝融
	tStriveSeverNewDungeon_Cont["ChgMap"][22978] = {}
	tStriveSeverNewDungeon_Cont["ChgMap"][22978]["MapId"] = 1927
	tStriveSeverNewDungeon_Cont["ChgMap"][22978]["CellX"] = 381
	tStriveSeverNewDungeon_Cont["ChgMap"][22978]["CellY"] = 631
	tStriveSeverNewDungeon_Cont["ChgMap"][22978]["Range"] = 3
	tStriveSeverNewDungeon_Cont["ChgMap"][22978]["IntoMap"] = 10347
	-- 敦煌酒窖
	tStriveSeverNewDungeon_Cont["ChgMap"][10346] = {}
	tStriveSeverNewDungeon_Cont["ChgMap"][10346]["MapId"] = 10346
	tStriveSeverNewDungeon_Cont["ChgMap"][10346]["CellX"] = 155
	tStriveSeverNewDungeon_Cont["ChgMap"][10346]["CellY"] = 304
	tStriveSeverNewDungeon_Cont["ChgMap"][10346]["Range"] = 3
	-- 极寒火窟
	tStriveSeverNewDungeon_Cont["ChgMap"][10347] = {}
	tStriveSeverNewDungeon_Cont["ChgMap"][10347]["MapId"] = 10347
	tStriveSeverNewDungeon_Cont["ChgMap"][10347]["CellX"] = 504
	tStriveSeverNewDungeon_Cont["ChgMap"][10347]["CellY"] = 627
	tStriveSeverNewDungeon_Cont["ChgMap"][10347]["Range"] = 3
	-- 双龙城
	tStriveSeverNewDungeon_Cont["ChgMap"][1002] = {}
	tStriveSeverNewDungeon_Cont["ChgMap"][1002]["MapId"] = 1002
	tStriveSeverNewDungeon_Cont["ChgMap"][1002]["CellX"] = 410
	tStriveSeverNewDungeon_Cont["ChgMap"][1002]["CellY"] = 354
	tStriveSeverNewDungeon_Cont["ChgMap"][1002]["Range"] = 3
	
	-- BOSS刷新位置
	tStriveSeverNewDungeon_Cont["Boss"] = {}
	-- 敦煌酒窖
	tStriveSeverNewDungeon_Cont["Boss"][10346] = {}
	tStriveSeverNewDungeon_Cont["Boss"][10346]["MapId"] = 10346
	-- 随机坐标
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"] = {}
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][1] ={}
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][1]["PosX"] = 154
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][1]["PosY"] = 265
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][2] ={}       
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][2]["PosX"] = 209
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][2]["PosY"] = 282
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][3] ={}       
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][3]["PosX"] = 263
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][3]["PosY"] = 240
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][4] ={}       
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][4]["PosX"] = 253
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][4]["PosY"] = 185
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][5] ={}       
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][5]["PosX"] = 153
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][5]["PosY"] = 183
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][6] ={}       
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][6]["PosX"] = 93
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][6]["PosY"] = 219
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][7] ={}
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][7]["PosX"] = 86
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][7]["PosY"] = 159
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][8] ={}
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][8]["PosX"] = 157
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][8]["PosY"] = 96
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][9] ={}
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][9]["PosX"] = 218
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][9]["PosY"] = 108
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][10] ={}
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][10]["PosX"] = 116
	tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][10]["PosY"] = 57
	-- 敦煌修罗
	tStriveSeverNewDungeon_Cont["Boss"][10346][1] = {}
	tStriveSeverNewDungeon_Cont["Boss"][10346][1]["MonsterId"] = 4802
	tStriveSeverNewDungeon_Cont["Boss"][10346][1]["GenId"] = 25036
	-- 敦煌魔獒王
	tStriveSeverNewDungeon_Cont["Boss"][10346][2] = {}
	tStriveSeverNewDungeon_Cont["Boss"][10346][2]["MonsterId"] = 4803
	tStriveSeverNewDungeon_Cont["Boss"][10346][2]["GenId"] = 25037
	
	-- 极寒火窟
	tStriveSeverNewDungeon_Cont["Boss"][10347] = {}
	tStriveSeverNewDungeon_Cont["Boss"][10347]["MapId"] = 10347
	-- 随机坐标
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"] = {}
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][1] ={}
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][1]["PosX"] = 241
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][1]["PosY"] = 348
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][2] ={}       
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][2]["PosX"] = 263
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][2]["PosY"] = 410
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][3] ={}       
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][3]["PosX"] = 410
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][3]["PosY"] = 487
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][4] ={}       
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][4]["PosX"] = 391
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][4]["PosY"] = 552
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][5] ={}       
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][5]["PosX"] = 413
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][5]["PosY"] = 611
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][6] ={}       
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][6]["PosX"] = 493
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][6]["PosY"] = 598
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][7] ={}       
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][7]["PosX"] = 546
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][7]["PosY"] = 449
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][8] ={}       
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][8]["PosX"] = 580
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][8]["PosY"] = 375
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][9] ={}    
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][9]["PosX"] = 451
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][9]["PosY"] = 348
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][10] ={}       
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][10]["PosX"] = 274
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][10]["PosY"] = 247
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][11] ={}       
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][11]["PosX"] = 237
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][11]["PosY"] = 156
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][12] ={}       
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][12]["PosX"] = 195
	tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][12]["PosY"] = 213
	-- 炼狱翼魔王
	-- tStriveSeverNewDungeon_Cont["Boss"][10347][1] = {}
	-- tStriveSeverNewDungeon_Cont["Boss"][10347][1]["MonsterId"] = 4804
	-- tStriveSeverNewDungeon_Cont["Boss"][10347][1]["GenId"] = 25050
	-- 镇狱魔龙王
	tStriveSeverNewDungeon_Cont["Boss"][10347][2] = {}
	tStriveSeverNewDungeon_Cont["Boss"][10347][2]["MonsterId"] = 4805
	tStriveSeverNewDungeon_Cont["Boss"][10347][2]["GenId"] = 25051
	

-- 掩码表
local tStriveSeverNewDungeon_Stc = {}
	-- 隔天重置
	tStriveSeverNewDungeon_Stc["Day"] = {}
	tStriveSeverNewDungeon_Stc["Day"]["Total"] = 2
	-- 记录是否领取酒窖搜宝袋
	tStriveSeverNewDungeon_Stc["Day"][1] = {}
	tStriveSeverNewDungeon_Stc["Day"][1]["EventType"] = 177
	tStriveSeverNewDungeon_Stc["Day"][1]["DataType"] = 85
	tStriveSeverNewDungeon_Stc["Day"][1]["Limit"] = 1
	-- 记录是否领取火窟搜宝袋
	tStriveSeverNewDungeon_Stc["Day"][2] = {}
	tStriveSeverNewDungeon_Stc["Day"][2]["EventType"] = 177
	tStriveSeverNewDungeon_Stc["Day"][2]["DataType"] = 86
	tStriveSeverNewDungeon_Stc["Day"][2]["Limit"] = 1
	-- 非隔天重置
	-- 记录是否使用过地宫特权令
	tStriveSeverNewDungeon_Stc["Vip"] = {}
	tStriveSeverNewDungeon_Stc["Vip"]["EventType"] = 177
	tStriveSeverNewDungeon_Stc["Vip"]["DataType"] = 87
	tStriveSeverNewDungeon_Stc["Vip"]["Time"] = 30

-- Log
local tStriveSeverNewDungeon_Log = {}
	tStriveSeverNewDungeon_Log["Delete"] = "0,0,%d,1,12001092,0,0,0"
	tStriveSeverNewDungeon_Log["Emoney"] = {}
	tStriveSeverNewDungeon_Log["Emoney"][22977] = "350	4880	3	3	1	"
	tStriveSeverNewDungeon_Log["Emoney"][22978] = "350	4881	9	9	1	"
	
-- 奖励表
local tStriveSeverNewDungeon_Reward = {}
	-- 领取酒窖搜宝袋
	tStriveSeverNewDungeon_Reward[22977] = {}
	tStriveSeverNewDungeon_Reward[22977]["RewardItem"] = {}
	tStriveSeverNewDungeon_Reward[22977]["RewardItem"][1] = {}
	tStriveSeverNewDungeon_Reward[22977]["RewardItem"][1]["Id"] = 3309685
	tStriveSeverNewDungeon_Reward[22977]["RewardItem"][1]["Attr"] = "0 5 0 1440 1"
	tStriveSeverNewDungeon_Reward[22977]["LogId"] = 12001092
	
	-- 领取火窟搜宝袋
	tStriveSeverNewDungeon_Reward[22978] = {}
	tStriveSeverNewDungeon_Reward[22978]["RewardItem"] = {}
	tStriveSeverNewDungeon_Reward[22978]["RewardItem"][1] = {}
	tStriveSeverNewDungeon_Reward[22978]["RewardItem"][1]["Id"] = 3309686
	tStriveSeverNewDungeon_Reward[22978]["RewardItem"][1]["Attr"] = "0 5 0 1440 1"
	tStriveSeverNewDungeon_Reward[22978]["LogId"] = 12001092
	
	-- 合成龙珠
	tStriveSeverNewDungeon_Reward[3309684] = {}
	tStriveSeverNewDungeon_Reward[3309684]["DeleteItem"] = {}
	tStriveSeverNewDungeon_Reward[3309684]["DeleteItem"][1] = {}
	tStriveSeverNewDungeon_Reward[3309684]["DeleteItem"][1]["Id"] = 3309684
	tStriveSeverNewDungeon_Reward[3309684]["DeleteItem"][1]["ItemNum"] = 7
	tStriveSeverNewDungeon_Reward[3309684]["RewardItem"] = {}
	tStriveSeverNewDungeon_Reward[3309684]["RewardItem"][1] = {}
	tStriveSeverNewDungeon_Reward[3309684]["RewardItem"][1]["Id"] = 1088000
	tStriveSeverNewDungeon_Reward[3309684]["RewardItem"][1]["Attr"] = "0 1"
	tStriveSeverNewDungeon_Reward[3309684]["LogId"] = 12001092
	
	-- 赤炼石幸运包
	tStriveSeverNewDungeon_Reward[3309687] = {}
	tStriveSeverNewDungeon_Reward[3309687]["ItemChanceSum"] = 10000  
	---- 赤炼石+1
	tStriveSeverNewDungeon_Reward[3309687][1] = {} 
	tStriveSeverNewDungeon_Reward[3309687][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Reward[3309687][1]["ItemChance"] = 5700
	tStriveSeverNewDungeon_Reward[3309687][1]["RewardItem"] = {}
	tStriveSeverNewDungeon_Reward[3309687][1]["RewardItem"][1] = {}
	tStriveSeverNewDungeon_Reward[3309687][1]["RewardItem"][1]["Id"] = 730001
	tStriveSeverNewDungeon_Reward[3309687][1]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tStriveSeverNewDungeon_Reward[3309687][1]["RewardEffect"] = {}
	tStriveSeverNewDungeon_Reward[3309687][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tStriveSeverNewDungeon_Reward[3309687][1]["Log"] = "0,0,3309687,1,12001092,2,730001,1"
	---- 赤炼石+3
	tStriveSeverNewDungeon_Reward[3309687][2] = {} 
	tStriveSeverNewDungeon_Reward[3309687][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Reward[3309687][2]["ItemChance"] = 4200
	tStriveSeverNewDungeon_Reward[3309687][2]["RewardItem"] = {}
	tStriveSeverNewDungeon_Reward[3309687][2]["RewardItem"][1] = {}
	tStriveSeverNewDungeon_Reward[3309687][2]["RewardItem"][1]["Id"] = 730003
	tStriveSeverNewDungeon_Reward[3309687][2]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tStriveSeverNewDungeon_Reward[3309687][2]["RewardEffect"] = {}
	tStriveSeverNewDungeon_Reward[3309687][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tStriveSeverNewDungeon_Reward[3309687][2]["Log"] = "0,0,3309687,1,12001092,2,730003,1"
	---- 赤炼石+5
	tStriveSeverNewDungeon_Reward[3309687][3] = {} 
	tStriveSeverNewDungeon_Reward[3309687][3]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Reward[3309687][3]["ItemChance"] = 100
	tStriveSeverNewDungeon_Reward[3309687][3]["RewardItem"] = {}
	tStriveSeverNewDungeon_Reward[3309687][3]["RewardItem"][1] = {}
	tStriveSeverNewDungeon_Reward[3309687][3]["RewardItem"][1]["Id"] = 730005
	tStriveSeverNewDungeon_Reward[3309687][3]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tStriveSeverNewDungeon_Reward[3309687][3]["RewardEffect"] = {}
	tStriveSeverNewDungeon_Reward[3309687][3]["RewardEffect"]["Effect"] = "zf2-e128"
	-- tStriveSeverNewDungeon_Reward[3309687][3]["RewardBroadCast"] = tStriveSeverNewDungeon_Text["BroadCast"][3309687]		-- 全服公告
	tStriveSeverNewDungeon_Reward[3309687][3]["Log"] = "0,0,3309687,1,12001092,2,730005,1"
	
	-- 星陨石幸运包
	tStriveSeverNewDungeon_Reward[3309688] = {}
	tStriveSeverNewDungeon_Reward[3309688]["ItemChanceSum"] = 10000  
	---- 明星星陨石
	tStriveSeverNewDungeon_Reward[3309688][1] = {} 
	tStriveSeverNewDungeon_Reward[3309688][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Reward[3309688][1]["ItemChance"] = 9500
	tStriveSeverNewDungeon_Reward[3309688][1]["RewardItem"] = {}
	tStriveSeverNewDungeon_Reward[3309688][1]["RewardItem"][1] = {}
	tStriveSeverNewDungeon_Reward[3309688][1]["RewardItem"][1]["Id"] = 3009001
	tStriveSeverNewDungeon_Reward[3309688][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tStriveSeverNewDungeon_Reward[3309688][1]["RewardEffect"] = {}
	tStriveSeverNewDungeon_Reward[3309688][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tStriveSeverNewDungeon_Reward[3309688][1]["Log"] = "0,0,3309688,1,12001092,2,3009001,1"
	---- 晶莹星陨石
	tStriveSeverNewDungeon_Reward[3309688][2] = {} 
	tStriveSeverNewDungeon_Reward[3309688][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Reward[3309688][2]["ItemChance"] = 500
	tStriveSeverNewDungeon_Reward[3309688][2]["RewardItem"] = {}
	tStriveSeverNewDungeon_Reward[3309688][2]["RewardItem"][1] = {}
	tStriveSeverNewDungeon_Reward[3309688][2]["RewardItem"][1]["Id"] = 3009002
	tStriveSeverNewDungeon_Reward[3309688][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tStriveSeverNewDungeon_Reward[3309688][2]["RewardEffect"] = {}
	tStriveSeverNewDungeon_Reward[3309688][2]["RewardEffect"]["Effect"] = "zf2-e128"
	-- tStriveSeverNewDungeon_Reward[3309688][2]["RewardBroadCast"] = tStriveSeverNewDungeon_Text["BroadCast"][3309688]		-- 全服公告
	tStriveSeverNewDungeon_Reward[3309688][2]["Log"] = "0,0,3309688,1,12001092,2,3009002,1"
	
	-- 300气力值包
	tStriveSeverNewDungeon_Reward[3309689] = {}
	tStriveSeverNewDungeon_Reward[3309689]["DeleteItem"] = {}
	tStriveSeverNewDungeon_Reward[3309689]["DeleteItem"][1] = {}
	tStriveSeverNewDungeon_Reward[3309689]["DeleteItem"][1]["Id"] = 3309689
	tStriveSeverNewDungeon_Reward[3309689]["RewardStrengthValue"] = {}    
	tStriveSeverNewDungeon_Reward[3309689]["RewardStrengthValue"]["Value"] = 300
	tStriveSeverNewDungeon_Reward[3309689]["LogId"] = 12001092
	
	-- 敦煌神纹精粹包
	tStriveSeverNewDungeon_Reward[3309706] = {}
	tStriveSeverNewDungeon_Reward[3309706]["DeleteItem"] = {}
	tStriveSeverNewDungeon_Reward[3309706]["DeleteItem"][1] = {}
	tStriveSeverNewDungeon_Reward[3309706]["DeleteItem"][1]["Id"] = 3309706
	tStriveSeverNewDungeon_Reward[3309706]["RewardItem"] = {}
	tStriveSeverNewDungeon_Reward[3309706]["RewardItem"][1] = {}
	tStriveSeverNewDungeon_Reward[3309706]["RewardItem"][1]["Id"] = 4060001
	tStriveSeverNewDungeon_Reward[3309706]["RewardItem"][1]["Attr"] = "0 30"
	tStriveSeverNewDungeon_Reward[3309706]["LogId"] = 12001092
	
	-- 极寒神纹精粹包
	tStriveSeverNewDungeon_Reward[3309707] = {}
	tStriveSeverNewDungeon_Reward[3309707]["DeleteItem"] = {}
	tStriveSeverNewDungeon_Reward[3309707]["DeleteItem"][1] = {}
	tStriveSeverNewDungeon_Reward[3309707]["DeleteItem"][1]["Id"] = 3309707
	tStriveSeverNewDungeon_Reward[3309707]["RewardItem"] = {}
	tStriveSeverNewDungeon_Reward[3309707]["RewardItem"][1] = {}
	tStriveSeverNewDungeon_Reward[3309707]["RewardItem"][1]["Id"] = 4060001
	tStriveSeverNewDungeon_Reward[3309707]["RewardItem"][1]["Attr"] = "0 50"
	tStriveSeverNewDungeon_Reward[3309707]["LogId"] = 12001092
	
	-- 小怪掉落到背包的奖励
	tStriveSeverNewDungeon_Reward["Normal"] = {}
	-- 掉落龙血灵石
	tStriveSeverNewDungeon_Reward["Normal"][3309684] = {}
	tStriveSeverNewDungeon_Reward["Normal"][3309684]["Attr"] = "0 1 0 420 1"
	-- 掉落赤炼石+1
	tStriveSeverNewDungeon_Reward["Normal"][730001] = {}
	tStriveSeverNewDungeon_Reward["Normal"][730001]["Attr"] = "0 1 0 10080 1"
	-- 掉落赤炼石+2
	tStriveSeverNewDungeon_Reward["Normal"][730002] = {}
	tStriveSeverNewDungeon_Reward["Normal"][730002]["Attr"] = "0 1 0 10080 1"
	-- 掉落赤炼石幸运包
	tStriveSeverNewDungeon_Reward["Normal"][3309687] = {}
	tStriveSeverNewDungeon_Reward["Normal"][3309687]["Attr"] = "0 1 0 10080 1"
	-- 掉落微光星陨石
	tStriveSeverNewDungeon_Reward["Normal"][3009000] = {}
	tStriveSeverNewDungeon_Reward["Normal"][3009000]["Attr"] = "0 1 0 2880 1"
	-- 掉落明亮星陨石
	tStriveSeverNewDungeon_Reward["Normal"][3009001] = {}
	tStriveSeverNewDungeon_Reward["Normal"][3009001]["Attr"] = "0 1 0 2880 1"
	-- 掉落星陨石幸运包
	tStriveSeverNewDungeon_Reward["Normal"][3309688] = {}
	tStriveSeverNewDungeon_Reward["Normal"][3309688]["Attr"] = "0 1 0 2880 1"
	-- 掉落1000气力值包
	tStriveSeverNewDungeon_Reward["Normal"][3008193] = {}
	tStriveSeverNewDungeon_Reward["Normal"][3008193]["Attr"] = "0 1"
	-- 掉落1500气力值包
	tStriveSeverNewDungeon_Reward["Normal"][3008195] = {}
	tStriveSeverNewDungeon_Reward["Normal"][3008195]["Attr"] = "0 1"
	
	-- 精英怪掉落到背包的奖励
	tStriveSeverNewDungeon_Reward["Elite"] = {}
	-- 掉落龙血灵石
	tStriveSeverNewDungeon_Reward["Elite"][3309684] = {}
	tStriveSeverNewDungeon_Reward["Elite"][3309684]["Attr"] = "0 1 0 420 1"
	-- 掉落赤炼石+1
	tStriveSeverNewDungeon_Reward["Elite"][730001] = {}
	tStriveSeverNewDungeon_Reward["Elite"][730001]["Attr"] = "0 1 0 10080 1"
	-- 掉落赤炼石+2
	tStriveSeverNewDungeon_Reward["Elite"][730002] = {}
	tStriveSeverNewDungeon_Reward["Elite"][730002]["Attr"] = "0 1 0 10080 1"
	-- 掉落赤炼石+5
	tStriveSeverNewDungeon_Reward["Elite"][730005] = {}
	tStriveSeverNewDungeon_Reward["Elite"][730005]["Attr"] = "0 1 0 10080 1"
	
	-- Boss掉落到背包的奖励
	tStriveSeverNewDungeon_Reward["Boss"] = {}
	-- 掉落龙血灵石
	tStriveSeverNewDungeon_Reward["Boss"][3309684] = {}
	tStriveSeverNewDungeon_Reward["Boss"][3309684]["Attr"] = "0 3 0 420 1"
	-- 掉落赤炼石+1
	tStriveSeverNewDungeon_Reward["Boss"][730001] = {}
	tStriveSeverNewDungeon_Reward["Boss"][730001]["Attr"] = "0 2 0 10080 1"
	-- 掉落赤炼石+2
	tStriveSeverNewDungeon_Reward["Boss"][730002] = {}
	tStriveSeverNewDungeon_Reward["Boss"][730002]["Attr"] = "0 2 0 10080 1"
	-- 掉落赤炼石+5
	tStriveSeverNewDungeon_Reward["Boss"][730005] = {}
	tStriveSeverNewDungeon_Reward["Boss"][730005]["Attr"] = "0 2 0 10080 1"
	
	-- 额外掉落
	tStriveSeverNewDungeon_Reward["Extra"] = {}
	-- 敦煌2-3层
	tStriveSeverNewDungeon_Reward["Extra"][1] = {}
	tStriveSeverNewDungeon_Reward["Extra"][1]["ItemChanceSum"] = 10000  
	---- 良品龙恨
	tStriveSeverNewDungeon_Reward["Extra"][1][1] = {} 
	tStriveSeverNewDungeon_Reward["Extra"][1][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Reward["Extra"][1][1]["ItemChance"] = 562
	tStriveSeverNewDungeon_Reward["Extra"][1][1]["RewardItem"] = {}
	tStriveSeverNewDungeon_Reward["Extra"][1][1]["RewardItem"][1] = {}
	tStriveSeverNewDungeon_Reward["Extra"][1][1]["RewardItem"][1]["Id"] = 700012
	tStriveSeverNewDungeon_Reward["Extra"][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tStriveSeverNewDungeon_Reward["Extra"][1][1]["LogId"] = 12001092
	---- 良品风吟
	tStriveSeverNewDungeon_Reward["Extra"][1][2] = {} 
	tStriveSeverNewDungeon_Reward["Extra"][1][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Reward["Extra"][1][2]["ItemChance"] = 1348
	tStriveSeverNewDungeon_Reward["Extra"][1][2]["RewardItem"] = {}
	tStriveSeverNewDungeon_Reward["Extra"][1][2]["RewardItem"][1] = {}
	tStriveSeverNewDungeon_Reward["Extra"][1][2]["RewardItem"][1]["Id"] = 700002
	tStriveSeverNewDungeon_Reward["Extra"][1][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tStriveSeverNewDungeon_Reward["Extra"][1][2]["LogId"] = 12001092
	---- 良品青虹
	tStriveSeverNewDungeon_Reward["Extra"][1][3] = {} 
	tStriveSeverNewDungeon_Reward["Extra"][1][3]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Reward["Extra"][1][3]["ItemChance"] = 1348
	tStriveSeverNewDungeon_Reward["Extra"][1][3]["RewardItem"] = {}
	tStriveSeverNewDungeon_Reward["Extra"][1][3]["RewardItem"][1] = {}
	tStriveSeverNewDungeon_Reward["Extra"][1][3]["RewardItem"][1]["Id"] = 700032
	tStriveSeverNewDungeon_Reward["Extra"][1][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tStriveSeverNewDungeon_Reward["Extra"][1][3]["LogId"] = 12001092
	---- 良品明月
	tStriveSeverNewDungeon_Reward["Extra"][1][4] = {} 
	tStriveSeverNewDungeon_Reward["Extra"][1][4]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Reward["Extra"][1][4]["ItemChance"] = 1685
	tStriveSeverNewDungeon_Reward["Extra"][1][4]["RewardItem"] = {}
	tStriveSeverNewDungeon_Reward["Extra"][1][4]["RewardItem"][1] = {}
	tStriveSeverNewDungeon_Reward["Extra"][1][4]["RewardItem"][1]["Id"] = 700062
	tStriveSeverNewDungeon_Reward["Extra"][1][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tStriveSeverNewDungeon_Reward["Extra"][1][4]["LogId"] = 12001092
	---- 良品紫霞
	tStriveSeverNewDungeon_Reward["Extra"][1][5] = {} 
	tStriveSeverNewDungeon_Reward["Extra"][1][5]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Reward["Extra"][1][5]["ItemChance"] = 1685
	tStriveSeverNewDungeon_Reward["Extra"][1][5]["RewardItem"] = {}
	tStriveSeverNewDungeon_Reward["Extra"][1][5]["RewardItem"][1] = {}
	tStriveSeverNewDungeon_Reward["Extra"][1][5]["RewardItem"][1]["Id"] = 700052
	tStriveSeverNewDungeon_Reward["Extra"][1][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tStriveSeverNewDungeon_Reward["Extra"][1][5]["LogId"] = 12001092
	---- 良品惊鸿
	tStriveSeverNewDungeon_Reward["Extra"][1][6] = {} 
	tStriveSeverNewDungeon_Reward["Extra"][1][6]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Reward["Extra"][1][6]["ItemChance"] = 1685
	tStriveSeverNewDungeon_Reward["Extra"][1][6]["RewardItem"] = {}
	tStriveSeverNewDungeon_Reward["Extra"][1][6]["RewardItem"][1] = {}
	tStriveSeverNewDungeon_Reward["Extra"][1][6]["RewardItem"][1]["Id"] = 700022
	tStriveSeverNewDungeon_Reward["Extra"][1][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tStriveSeverNewDungeon_Reward["Extra"][1][6]["LogId"] = 12001092
	---- 良品金鳞
	tStriveSeverNewDungeon_Reward["Extra"][1][7] = {} 
	tStriveSeverNewDungeon_Reward["Extra"][1][7]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Reward["Extra"][1][7]["ItemChance"] = 1687
	tStriveSeverNewDungeon_Reward["Extra"][1][7]["RewardItem"] = {}
	tStriveSeverNewDungeon_Reward["Extra"][1][7]["RewardItem"][1] = {}
	tStriveSeverNewDungeon_Reward["Extra"][1][7]["RewardItem"][1]["Id"] = 700042
	tStriveSeverNewDungeon_Reward["Extra"][1][7]["RewardItem"][1]["Attr"] = "0 1 3"
	tStriveSeverNewDungeon_Reward["Extra"][1][7]["LogId"] = 12001092
	
	-- 冰封3-4层
	tStriveSeverNewDungeon_Reward["Extra"][2] = {}
	tStriveSeverNewDungeon_Reward["Extra"][2]["ItemChanceSum"] = 100000
	---- 赤炼石+1
	tStriveSeverNewDungeon_Reward["Extra"][2][1] = {} 
	tStriveSeverNewDungeon_Reward["Extra"][2][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Reward["Extra"][2][1]["ItemChance"] = 10
	tStriveSeverNewDungeon_Reward["Extra"][2][1]["RewardItem"] = {}
	tStriveSeverNewDungeon_Reward["Extra"][2][1]["RewardItem"][1] = {}
	tStriveSeverNewDungeon_Reward["Extra"][2][1]["RewardItem"][1]["Id"] = 730001
	tStriveSeverNewDungeon_Reward["Extra"][2][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tStriveSeverNewDungeon_Reward["Extra"][2][1]["LogId"] = 12001092
	---- 赤练石+2
	tStriveSeverNewDungeon_Reward["Extra"][2][2] = {} 
	tStriveSeverNewDungeon_Reward["Extra"][2][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Reward["Extra"][2][2]["ItemChance"] = 3
	tStriveSeverNewDungeon_Reward["Extra"][2][2]["RewardItem"] = {}
	tStriveSeverNewDungeon_Reward["Extra"][2][2]["RewardItem"][1] = {}
	tStriveSeverNewDungeon_Reward["Extra"][2][2]["RewardItem"][1]["Id"] = 730002
	tStriveSeverNewDungeon_Reward["Extra"][2][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tStriveSeverNewDungeon_Reward["Extra"][2][2]["LogId"] = 12001092
	---- 无奖励
	tStriveSeverNewDungeon_Reward["Extra"][2][3] = {} 
	tStriveSeverNewDungeon_Reward["Extra"][2][3]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Reward["Extra"][2][3]["ItemChance"] = 99987
	tStriveSeverNewDungeon_Reward["Extra"][2][3]["RewardItem"] = {}
	
	
	
-- 概率表
local tStriveSeverNewDungeon_Random = {}
	-- 小怪掉率
	tStriveSeverNewDungeon_Random["Normal"] = {}
	-- 240战噬金沙怪
	tStriveSeverNewDungeon_Random["Normal"][4758] = {}
	tStriveSeverNewDungeon_Random["Normal"][4758]["ItemChanceSum"] = 10000
	-- 给奖励               
	tStriveSeverNewDungeon_Random["Normal"][4758][1] = {}
	tStriveSeverNewDungeon_Random["Normal"][4758][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][4758][1]["ItemChance"] = 160
	tStriveSeverNewDungeon_Random["Normal"][4758][1]["Num"] = 1
	-- 无奖励           
	tStriveSeverNewDungeon_Random["Normal"][4758][2] = {}
	tStriveSeverNewDungeon_Random["Normal"][4758][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][4758][2]["ItemChance"] = 9840
	tStriveSeverNewDungeon_Random["Normal"][4758][2]["Num"] = 0
	-- 250战噬金沙怪
	tStriveSeverNewDungeon_Random["Normal"][4759] = {}
	tStriveSeverNewDungeon_Random["Normal"][4759]["ItemChanceSum"] = 10000
	-- 给奖励               
	tStriveSeverNewDungeon_Random["Normal"][4759][1] = {}
	tStriveSeverNewDungeon_Random["Normal"][4759][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][4759][1]["ItemChance"] = 169
	tStriveSeverNewDungeon_Random["Normal"][4759][1]["Num"] = 1
	-- 无奖励           
	tStriveSeverNewDungeon_Random["Normal"][4759][2] = {}
	tStriveSeverNewDungeon_Random["Normal"][4759][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][4759][2]["ItemChance"] = 9831
	tStriveSeverNewDungeon_Random["Normal"][4759][2]["Num"] = 0
	-- 260战噬金沙怪
	tStriveSeverNewDungeon_Random["Normal"][4760] = {}
	tStriveSeverNewDungeon_Random["Normal"][4760]["ItemChanceSum"] = 10000
	-- 给奖励               
	tStriveSeverNewDungeon_Random["Normal"][4760][1] = {}
	tStriveSeverNewDungeon_Random["Normal"][4760][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][4760][1]["ItemChance"] = 179
	tStriveSeverNewDungeon_Random["Normal"][4760][1]["Num"] = 1
	-- 无奖励           
	tStriveSeverNewDungeon_Random["Normal"][4760][2] = {}
	tStriveSeverNewDungeon_Random["Normal"][4760][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][4760][2]["ItemChance"] = 9821
	tStriveSeverNewDungeon_Random["Normal"][4760][2]["Num"] = 0
	
	-- 270战噬金蝠妖
	tStriveSeverNewDungeon_Random["Normal"][4761] = {}
	tStriveSeverNewDungeon_Random["Normal"][4761]["ItemChanceSum"] = 10000
	-- 给奖励               
	tStriveSeverNewDungeon_Random["Normal"][4761][1] = {}
	tStriveSeverNewDungeon_Random["Normal"][4761][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][4761][1]["ItemChance"] = 188
	tStriveSeverNewDungeon_Random["Normal"][4761][1]["Num"] = 1
	-- 无奖励           
	tStriveSeverNewDungeon_Random["Normal"][4761][2] = {}
	tStriveSeverNewDungeon_Random["Normal"][4761][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][4761][2]["ItemChance"] = 9812
	tStriveSeverNewDungeon_Random["Normal"][4761][2]["Num"] = 0
	-- 280战噬金蝠妖
	tStriveSeverNewDungeon_Random["Normal"][4762] = {}
	tStriveSeverNewDungeon_Random["Normal"][4762]["ItemChanceSum"] = 10000
	-- 给奖励               
	tStriveSeverNewDungeon_Random["Normal"][4762][1] = {}
	tStriveSeverNewDungeon_Random["Normal"][4762][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][4762][1]["ItemChance"] = 197
	tStriveSeverNewDungeon_Random["Normal"][4762][1]["Num"] = 1
	-- 无奖励           
	tStriveSeverNewDungeon_Random["Normal"][4762][2] = {}
	tStriveSeverNewDungeon_Random["Normal"][4762][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][4762][2]["ItemChance"] = 9803
	tStriveSeverNewDungeon_Random["Normal"][4762][2]["Num"] = 0
	
	-- 290战敦煌刀魂
	tStriveSeverNewDungeon_Random["Normal"][4763] = {}
	tStriveSeverNewDungeon_Random["Normal"][4763]["ItemChanceSum"] = 10000
	-- 给奖励               
	tStriveSeverNewDungeon_Random["Normal"][4763][1] = {}
	tStriveSeverNewDungeon_Random["Normal"][4763][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][4763][1]["ItemChance"] = 207
	tStriveSeverNewDungeon_Random["Normal"][4763][1]["Num"] = 1
	-- 无奖励           
	tStriveSeverNewDungeon_Random["Normal"][4763][2] = {}
	tStriveSeverNewDungeon_Random["Normal"][4763][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][4763][2]["ItemChance"] = 9793
	tStriveSeverNewDungeon_Random["Normal"][4763][2]["Num"] = 0
	-- 300战敦煌刀魂
	tStriveSeverNewDungeon_Random["Normal"][4764] = {}
	tStriveSeverNewDungeon_Random["Normal"][4764]["ItemChanceSum"] = 10000
	-- 给奖励               
	tStriveSeverNewDungeon_Random["Normal"][4764][1] = {}
	tStriveSeverNewDungeon_Random["Normal"][4764][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][4764][1]["ItemChance"] = 216
	tStriveSeverNewDungeon_Random["Normal"][4764][1]["Num"] = 1
	-- 无奖励           
	tStriveSeverNewDungeon_Random["Normal"][4764][2] = {}
	tStriveSeverNewDungeon_Random["Normal"][4764][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][4764][2]["ItemChance"] = 9784
	tStriveSeverNewDungeon_Random["Normal"][4764][2]["Num"] = 0
	
	-- 270战流焰火鼠
	tStriveSeverNewDungeon_Random["Normal"][4765] = {}
	tStriveSeverNewDungeon_Random["Normal"][4765]["ItemChanceSum"] = 10000
	-- 给奖励               
	tStriveSeverNewDungeon_Random["Normal"][4765][1] = {}
	tStriveSeverNewDungeon_Random["Normal"][4765][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][4765][1]["ItemChance"] = 180
	tStriveSeverNewDungeon_Random["Normal"][4765][1]["Num"] = 1
	-- 无奖励           
	tStriveSeverNewDungeon_Random["Normal"][4765][2] = {}
	tStriveSeverNewDungeon_Random["Normal"][4765][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][4765][2]["ItemChance"] = 9820
	tStriveSeverNewDungeon_Random["Normal"][4765][2]["Num"] = 0
	-- 280战流焰火鼠
	tStriveSeverNewDungeon_Random["Normal"][4766] = {}
	tStriveSeverNewDungeon_Random["Normal"][4766]["ItemChanceSum"] = 10000
	-- 给奖励               
	tStriveSeverNewDungeon_Random["Normal"][4766][1] = {}
	tStriveSeverNewDungeon_Random["Normal"][4766][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][4766][1]["ItemChance"] = 191
	tStriveSeverNewDungeon_Random["Normal"][4766][1]["Num"] = 1
	-- 无奖励           
	tStriveSeverNewDungeon_Random["Normal"][4766][2] = {}
	tStriveSeverNewDungeon_Random["Normal"][4766][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][4766][2]["ItemChance"] = 9809
	tStriveSeverNewDungeon_Random["Normal"][4766][2]["Num"] = 0
	
	-- 290战赤翼火蛇
	tStriveSeverNewDungeon_Random["Normal"][4767] = {}
	tStriveSeverNewDungeon_Random["Normal"][4767]["ItemChanceSum"] = 10000
	-- 给奖励               
	tStriveSeverNewDungeon_Random["Normal"][4767][1] = {}
	tStriveSeverNewDungeon_Random["Normal"][4767][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][4767][1]["ItemChance"] = 201
	tStriveSeverNewDungeon_Random["Normal"][4767][1]["Num"] = 1
	-- 无奖励           
	tStriveSeverNewDungeon_Random["Normal"][4767][2] = {}
	tStriveSeverNewDungeon_Random["Normal"][4767][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][4767][2]["ItemChance"] = 9799
	tStriveSeverNewDungeon_Random["Normal"][4767][2]["Num"] = 0
	-- 300战赤翼火蛇
	tStriveSeverNewDungeon_Random["Normal"][4768] = {}
	tStriveSeverNewDungeon_Random["Normal"][4768]["ItemChanceSum"] = 10000
	-- 给奖励               
	tStriveSeverNewDungeon_Random["Normal"][4768][1] = {}
	tStriveSeverNewDungeon_Random["Normal"][4768][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][4768][1]["ItemChance"] = 212
	tStriveSeverNewDungeon_Random["Normal"][4768][1]["Num"] = 1
	-- 无奖励           
	tStriveSeverNewDungeon_Random["Normal"][4768][2] = {}
	tStriveSeverNewDungeon_Random["Normal"][4768][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][4768][2]["ItemChance"] = 9788
	tStriveSeverNewDungeon_Random["Normal"][4768][2]["Num"] = 0
	-- 310战赤翼火蛇
	tStriveSeverNewDungeon_Random["Normal"][4769] = {}
	tStriveSeverNewDungeon_Random["Normal"][4769]["ItemChanceSum"] = 10000
	-- 给奖励               
	tStriveSeverNewDungeon_Random["Normal"][4769][1] = {}
	tStriveSeverNewDungeon_Random["Normal"][4769][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][4769][1]["ItemChance"] = 223
	tStriveSeverNewDungeon_Random["Normal"][4769][1]["Num"] = 1
	-- 无奖励           
	tStriveSeverNewDungeon_Random["Normal"][4769][2] = {}
	tStriveSeverNewDungeon_Random["Normal"][4769][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][4769][2]["ItemChance"] = 9777
	tStriveSeverNewDungeon_Random["Normal"][4769][2]["Num"] = 0
	
	-- 320战爆炎牛魔
	tStriveSeverNewDungeon_Random["Normal"][4770] = {}
	tStriveSeverNewDungeon_Random["Normal"][4770]["ItemChanceSum"] = 10000
	-- 给奖励               
	tStriveSeverNewDungeon_Random["Normal"][4770][1] = {}
	tStriveSeverNewDungeon_Random["Normal"][4770][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][4770][1]["ItemChance"] = 233
	tStriveSeverNewDungeon_Random["Normal"][4770][1]["Num"] = 1
	-- 无奖励           
	tStriveSeverNewDungeon_Random["Normal"][4770][2] = {}
	tStriveSeverNewDungeon_Random["Normal"][4770][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][4770][2]["ItemChance"] = 9767
	tStriveSeverNewDungeon_Random["Normal"][4770][2]["Num"] = 0
	-- 330战爆炎牛魔
	tStriveSeverNewDungeon_Random["Normal"][4771] = {}
	tStriveSeverNewDungeon_Random["Normal"][4771]["ItemChanceSum"] = 10000
	-- 给奖励               
	tStriveSeverNewDungeon_Random["Normal"][4771][1] = {}
	tStriveSeverNewDungeon_Random["Normal"][4771][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][4771][1]["ItemChance"] = 244
	tStriveSeverNewDungeon_Random["Normal"][4771][1]["Num"] = 1
	-- 无奖励           
	tStriveSeverNewDungeon_Random["Normal"][4771][2] = {}
	tStriveSeverNewDungeon_Random["Normal"][4771][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][4771][2]["ItemChance"] = 9756
	tStriveSeverNewDungeon_Random["Normal"][4771][2]["Num"] = 0
	
	
	-- 敦煌酒窖小怪掉落
	tStriveSeverNewDungeon_Random["Normal"][10346] = {}
	tStriveSeverNewDungeon_Random["Normal"][10346]["ItemChanceSum"] = 10000
	-- 宝石               
	tStriveSeverNewDungeon_Random["Normal"][10346][1] = {}
	tStriveSeverNewDungeon_Random["Normal"][10346][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][10346][1]["ItemChance"] = 3191
	tStriveSeverNewDungeon_Random["Normal"][10346][1]["Item"] = 1
	tStriveSeverNewDungeon_Random["Normal"][10346][1]["Num"] = 1
	-- 流星           
	tStriveSeverNewDungeon_Random["Normal"][10346][2] = {}
	tStriveSeverNewDungeon_Random["Normal"][10346][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][10346][2]["ItemChance"] = 532
	tStriveSeverNewDungeon_Random["Normal"][10346][2]["Item"] = 1088001
	tStriveSeverNewDungeon_Random["Normal"][10346][2]["Num"] = 1
	-- 火舞精丹           
	tStriveSeverNewDungeon_Random["Normal"][10346][3] = {}
	tStriveSeverNewDungeon_Random["Normal"][10346][3]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][10346][3]["ItemChance"] = 106
	tStriveSeverNewDungeon_Random["Normal"][10346][3]["Item"] = 720598
	tStriveSeverNewDungeon_Random["Normal"][10346][3]["Num"] = 1
	-- 龙血灵石           
	tStriveSeverNewDungeon_Random["Normal"][10346][4] = {}
	tStriveSeverNewDungeon_Random["Normal"][10346][4]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][10346][4]["ItemChance"] = 319
	tStriveSeverNewDungeon_Random["Normal"][10346][4]["Item"] = 3309684
	tStriveSeverNewDungeon_Random["Normal"][10346][4]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][10346][4]["IntoBag"] = 1
	-- 1000征服币           
	tStriveSeverNewDungeon_Random["Normal"][10346][5] = {}
	tStriveSeverNewDungeon_Random["Normal"][10346][5]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][10346][5]["ItemChance"] = 3724
	tStriveSeverNewDungeon_Random["Normal"][10346][5]["Item"] = 2
	tStriveSeverNewDungeon_Random["Normal"][10346][5]["Num"] = 1000
	-- 龙虎回力丸           
	tStriveSeverNewDungeon_Random["Normal"][10346][6] = {}
	tStriveSeverNewDungeon_Random["Normal"][10346][6]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][10346][6]["ItemChance"] = 1862
	tStriveSeverNewDungeon_Random["Normal"][10346][6]["Item"] = 729252
	tStriveSeverNewDungeon_Random["Normal"][10346][6]["Num"] = 1
	-- 200点气力包（可交易）           
	tStriveSeverNewDungeon_Random["Normal"][10346][7] = {}
	tStriveSeverNewDungeon_Random["Normal"][10346][7]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][10346][7]["ItemChance"] = 160
	tStriveSeverNewDungeon_Random["Normal"][10346][7]["Item"] = 3001411
	tStriveSeverNewDungeon_Random["Normal"][10346][7]["Num"] = 1
	-- 1000点气力包           
	tStriveSeverNewDungeon_Random["Normal"][10346][8] = {}
	tStriveSeverNewDungeon_Random["Normal"][10346][8]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][10346][8]["ItemChance"] = 53
	tStriveSeverNewDungeon_Random["Normal"][10346][8]["Item"] = 3008193
	tStriveSeverNewDungeon_Random["Normal"][10346][8]["Num"] = 1
	-- 敦煌神纹精粹包           
	tStriveSeverNewDungeon_Random["Normal"][10346][9] = {}
	tStriveSeverNewDungeon_Random["Normal"][10346][9]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][10346][9]["ItemChance"] = 53
	tStriveSeverNewDungeon_Random["Normal"][10346][9]["Item"] = 3309706
	tStriveSeverNewDungeon_Random["Normal"][10346][9]["Num"] = 1
	
	
	-- 极寒火窟小怪掉落
	tStriveSeverNewDungeon_Random["Normal"][10347] = {}
	tStriveSeverNewDungeon_Random["Normal"][10347]["ItemChanceSum"] = 10000
	-- 赤炼石+1               
	tStriveSeverNewDungeon_Random["Normal"][10347][1] = {}
	tStriveSeverNewDungeon_Random["Normal"][10347][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][10347][1]["ItemChance"] = 1413
	tStriveSeverNewDungeon_Random["Normal"][10347][1]["Item"] = 730001
	tStriveSeverNewDungeon_Random["Normal"][10347][1]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][10347][1]["IntoBag"] = 1
	tStriveSeverNewDungeon_Random["Normal"][10347][1]["Add"] = 1
	-- 赤炼石+2           
	tStriveSeverNewDungeon_Random["Normal"][10347][2] = {}
	tStriveSeverNewDungeon_Random["Normal"][10347][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][10347][2]["ItemChance"] = 353
	tStriveSeverNewDungeon_Random["Normal"][10347][2]["Item"] = 730002
	tStriveSeverNewDungeon_Random["Normal"][10347][2]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][10347][2]["IntoBag"] = 1
	tStriveSeverNewDungeon_Random["Normal"][10347][2]["Add"] = 4
	-- 赤练石幸运包           
	tStriveSeverNewDungeon_Random["Normal"][10347][3] = {}
	tStriveSeverNewDungeon_Random["Normal"][10347][3]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][10347][3]["ItemChance"] = 235
	tStriveSeverNewDungeon_Random["Normal"][10347][3]["Item"] = 3309687
	tStriveSeverNewDungeon_Random["Normal"][10347][3]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][10347][3]["IntoBag"] = 1
	-- 流星           
	tStriveSeverNewDungeon_Random["Normal"][10347][4] = {}
	tStriveSeverNewDungeon_Random["Normal"][10347][4]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][10347][4]["ItemChance"] = 471
	tStriveSeverNewDungeon_Random["Normal"][10347][4]["Item"] = 1088001
	tStriveSeverNewDungeon_Random["Normal"][10347][4]["Num"] = 1
	-- 龙血灵石           
	tStriveSeverNewDungeon_Random["Normal"][10347][5] = {}
	tStriveSeverNewDungeon_Random["Normal"][10347][5]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][10347][5]["ItemChance"] = 377
	tStriveSeverNewDungeon_Random["Normal"][10347][5]["Item"] = 3309684
	tStriveSeverNewDungeon_Random["Normal"][10347][5]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][10347][5]["IntoBag"] = 1
	-- 微光星陨石           
	tStriveSeverNewDungeon_Random["Normal"][10347][6] = {}
	tStriveSeverNewDungeon_Random["Normal"][10347][6]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][10347][6]["ItemChance"] = 283
	tStriveSeverNewDungeon_Random["Normal"][10347][6]["Item"] = 3009000
	tStriveSeverNewDungeon_Random["Normal"][10347][6]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][10347][6]["IntoBag"] = 1
	-- 明亮星陨石           
	tStriveSeverNewDungeon_Random["Normal"][10347][7] = {}
	tStriveSeverNewDungeon_Random["Normal"][10347][7]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][10347][7]["ItemChance"] = 24
	tStriveSeverNewDungeon_Random["Normal"][10347][7]["Item"] = 3009001
	tStriveSeverNewDungeon_Random["Normal"][10347][7]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][10347][7]["IntoBag"] = 1
	-- 星陨石幸运包           
	tStriveSeverNewDungeon_Random["Normal"][10347][8] = {}
	tStriveSeverNewDungeon_Random["Normal"][10347][8]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][10347][8]["ItemChance"] = 14
	tStriveSeverNewDungeon_Random["Normal"][10347][8]["Item"] = 3309688
	tStriveSeverNewDungeon_Random["Normal"][10347][8]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][10347][8]["IntoBag"] = 1
	-- 300气力值包           
	tStriveSeverNewDungeon_Random["Normal"][10347][9] = {}
	tStriveSeverNewDungeon_Random["Normal"][10347][9]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][10347][9]["ItemChance"] = 141
	tStriveSeverNewDungeon_Random["Normal"][10347][9]["Item"] = 3309689
	tStriveSeverNewDungeon_Random["Normal"][10347][9]["Num"] = 1
	-- 1500气力值包           
	tStriveSeverNewDungeon_Random["Normal"][10347][10] = {}
	tStriveSeverNewDungeon_Random["Normal"][10347][10]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][10347][10]["ItemChance"] = 47
	tStriveSeverNewDungeon_Random["Normal"][10347][10]["Item"] = 3008195
	tStriveSeverNewDungeon_Random["Normal"][10347][10]["Num"] = 1
	-- 极寒神纹精粹包           
	tStriveSeverNewDungeon_Random["Normal"][10347][11] = {}
	tStriveSeverNewDungeon_Random["Normal"][10347][11]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][10347][11]["ItemChance"] = 47
	tStriveSeverNewDungeon_Random["Normal"][10347][11]["Item"] = 3309707
	tStriveSeverNewDungeon_Random["Normal"][10347][11]["Num"] = 1
	-- 1000征服币           
	tStriveSeverNewDungeon_Random["Normal"][10347][12] = {}
	tStriveSeverNewDungeon_Random["Normal"][10347][12]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][10347][12]["ItemChance"] = 4711
	tStriveSeverNewDungeon_Random["Normal"][10347][12]["Item"] = 2
	tStriveSeverNewDungeon_Random["Normal"][10347][12]["Num"] = 1000
	-- 龙虎回力丸           
	tStriveSeverNewDungeon_Random["Normal"][10347][13] = {}
	tStriveSeverNewDungeon_Random["Normal"][10347][13]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][10347][13]["ItemChance"] = 1884
	tStriveSeverNewDungeon_Random["Normal"][10347][13]["Item"] = 729252
	tStriveSeverNewDungeon_Random["Normal"][10347][13]["Num"] = 1
	
	-- 宝石掉落子表
	tStriveSeverNewDungeon_Random["Normal"][1] = {}
	tStriveSeverNewDungeon_Random["Normal"][1]["ItemChanceSum"] = 10000
	-- 普通天怒               
	tStriveSeverNewDungeon_Random["Normal"][1][1] = {}
	tStriveSeverNewDungeon_Random["Normal"][1][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][1][1]["ItemChance"] = 103
	tStriveSeverNewDungeon_Random["Normal"][1][1]["Item"] = 700101
	tStriveSeverNewDungeon_Random["Normal"][1][1]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][1][1]["Add"] = 1
	-- 普通地灵               
	tStriveSeverNewDungeon_Random["Normal"][1][2] = {}
	tStriveSeverNewDungeon_Random["Normal"][1][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][1][2]["ItemChance"] = 103
	tStriveSeverNewDungeon_Random["Normal"][1][2]["Item"] = 700121
	tStriveSeverNewDungeon_Random["Normal"][1][2]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][1][2]["Add"] = 1
	-- 普通龙恨               
	tStriveSeverNewDungeon_Random["Normal"][1][3] = {}
	tStriveSeverNewDungeon_Random["Normal"][1][3]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][1][3]["ItemChance"] = 517
	tStriveSeverNewDungeon_Random["Normal"][1][3]["Item"] = 700011
	tStriveSeverNewDungeon_Random["Normal"][1][3]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][1][3]["Add"] = 1
	-- 普通风吟               
	tStriveSeverNewDungeon_Random["Normal"][1][4] = {}
	tStriveSeverNewDungeon_Random["Normal"][1][4]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][1][4]["ItemChance"] = 1035
	tStriveSeverNewDungeon_Random["Normal"][1][4]["Item"] = 700101
	tStriveSeverNewDungeon_Random["Normal"][1][4]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][1][4]["Add"] = 1
	-- 普通青虹               
	tStriveSeverNewDungeon_Random["Normal"][1][5] = {}
	tStriveSeverNewDungeon_Random["Normal"][1][5]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][1][5]["ItemChance"] = 1035
	tStriveSeverNewDungeon_Random["Normal"][1][5]["Item"] = 700031
	tStriveSeverNewDungeon_Random["Normal"][1][5]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][1][5]["Add"] = 1
	-- 普通明月               
	tStriveSeverNewDungeon_Random["Normal"][1][6] = {}
	tStriveSeverNewDungeon_Random["Normal"][1][6]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][1][6]["ItemChance"] = 1552
	tStriveSeverNewDungeon_Random["Normal"][1][6]["Item"] = 700061
	tStriveSeverNewDungeon_Random["Normal"][1][6]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][1][6]["Add"] = 1
	-- 普通紫霞               
	tStriveSeverNewDungeon_Random["Normal"][1][7] = {}
	tStriveSeverNewDungeon_Random["Normal"][1][7]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][1][7]["ItemChance"] = 1552
	tStriveSeverNewDungeon_Random["Normal"][1][7]["Item"] = 700051
	tStriveSeverNewDungeon_Random["Normal"][1][7]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][1][7]["Add"] = 1
	-- 普通惊鸿               
	tStriveSeverNewDungeon_Random["Normal"][1][8] = {}
	tStriveSeverNewDungeon_Random["Normal"][1][8]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][1][8]["ItemChance"] = 1552
	tStriveSeverNewDungeon_Random["Normal"][1][8]["Item"] = 700021
	tStriveSeverNewDungeon_Random["Normal"][1][8]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][1][8]["Add"] = 1
	-- 普通金鳞               
	tStriveSeverNewDungeon_Random["Normal"][1][9] = {}
	tStriveSeverNewDungeon_Random["Normal"][1][9]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][1][9]["ItemChance"] = 1552
	tStriveSeverNewDungeon_Random["Normal"][1][9]["Item"] = 700041
	tStriveSeverNewDungeon_Random["Normal"][1][9]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][1][9]["Add"] = 1
	-- 良品天怒               
	tStriveSeverNewDungeon_Random["Normal"][1][10] = {}
	tStriveSeverNewDungeon_Random["Normal"][1][10]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][1][10]["ItemChance"] = 10
	tStriveSeverNewDungeon_Random["Normal"][1][10]["Item"] = 700102
	tStriveSeverNewDungeon_Random["Normal"][1][10]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][1][10]["Add"] = 10
	-- 良品地灵               
	tStriveSeverNewDungeon_Random["Normal"][1][11] = {}
	tStriveSeverNewDungeon_Random["Normal"][1][11]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][1][11]["ItemChance"] = 10
	tStriveSeverNewDungeon_Random["Normal"][1][11]["Item"] = 700122
	tStriveSeverNewDungeon_Random["Normal"][1][11]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][1][11]["Add"] = 10
	-- 良品龙恨               
	tStriveSeverNewDungeon_Random["Normal"][1][12] = {}
	tStriveSeverNewDungeon_Random["Normal"][1][12]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][1][12]["ItemChance"] = 49
	tStriveSeverNewDungeon_Random["Normal"][1][12]["Item"] = 700012
	tStriveSeverNewDungeon_Random["Normal"][1][12]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][1][12]["Add"] = 10
	-- 良品风吟               
	tStriveSeverNewDungeon_Random["Normal"][1][13] = {}
	tStriveSeverNewDungeon_Random["Normal"][1][13]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][1][13]["ItemChance"] = 119
	tStriveSeverNewDungeon_Random["Normal"][1][13]["Item"] = 700002
	tStriveSeverNewDungeon_Random["Normal"][1][13]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][1][13]["Add"] = 10
	-- 良品青虹               
	tStriveSeverNewDungeon_Random["Normal"][1][14] = {}
	tStriveSeverNewDungeon_Random["Normal"][1][14]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][1][14]["ItemChance"] = 119
	tStriveSeverNewDungeon_Random["Normal"][1][14]["Item"] = 700032
	tStriveSeverNewDungeon_Random["Normal"][1][14]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][1][14]["Add"] = 10
	-- 良品明月               
	tStriveSeverNewDungeon_Random["Normal"][1][15] = {}
	tStriveSeverNewDungeon_Random["Normal"][1][15]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][1][15]["ItemChance"] = 148
	tStriveSeverNewDungeon_Random["Normal"][1][15]["Item"] = 700062
	tStriveSeverNewDungeon_Random["Normal"][1][15]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][1][15]["Add"] = 10
	-- 良品紫霞               
	tStriveSeverNewDungeon_Random["Normal"][1][16] = {}
	tStriveSeverNewDungeon_Random["Normal"][1][16]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][1][16]["ItemChance"] = 148
	tStriveSeverNewDungeon_Random["Normal"][1][16]["Item"] = 700052
	tStriveSeverNewDungeon_Random["Normal"][1][16]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][1][16]["Add"] = 10
	-- 良品惊鸿               
	tStriveSeverNewDungeon_Random["Normal"][1][17] = {}
	tStriveSeverNewDungeon_Random["Normal"][1][17]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][1][17]["ItemChance"] = 148
	tStriveSeverNewDungeon_Random["Normal"][1][17]["Item"] = 700022
	tStriveSeverNewDungeon_Random["Normal"][1][17]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][1][17]["Add"] = 10
	-- 良品金鳞               
	tStriveSeverNewDungeon_Random["Normal"][1][18] = {}
	tStriveSeverNewDungeon_Random["Normal"][1][18]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][1][18]["ItemChance"] = 148
	tStriveSeverNewDungeon_Random["Normal"][1][18]["Item"] = 700042
	tStriveSeverNewDungeon_Random["Normal"][1][18]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][1][18]["Add"] = 10
	-- 优质风吟               
	tStriveSeverNewDungeon_Random["Normal"][1][19] = {}
	tStriveSeverNewDungeon_Random["Normal"][1][19]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][1][19]["ItemChance"] = 6
	tStriveSeverNewDungeon_Random["Normal"][1][19]["Item"] = 700003
	tStriveSeverNewDungeon_Random["Normal"][1][19]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][1][19]["Add"] = 1
	-- 优质青虹               
	tStriveSeverNewDungeon_Random["Normal"][1][20] = {}
	tStriveSeverNewDungeon_Random["Normal"][1][20]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][1][20]["ItemChance"] = 6
	tStriveSeverNewDungeon_Random["Normal"][1][20]["Item"] = 700033
	tStriveSeverNewDungeon_Random["Normal"][1][20]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][1][20]["Add"] = 1
	-- 优质明月               
	tStriveSeverNewDungeon_Random["Normal"][1][21] = {}
	tStriveSeverNewDungeon_Random["Normal"][1][21]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][1][21]["ItemChance"] = 19
	tStriveSeverNewDungeon_Random["Normal"][1][21]["Item"] = 700063
	tStriveSeverNewDungeon_Random["Normal"][1][21]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][1][21]["Add"] = 1
	-- 优质紫霞               
	tStriveSeverNewDungeon_Random["Normal"][1][22] = {}
	tStriveSeverNewDungeon_Random["Normal"][1][22]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][1][22]["ItemChance"] = 19
	tStriveSeverNewDungeon_Random["Normal"][1][22]["Item"] = 700053
	tStriveSeverNewDungeon_Random["Normal"][1][22]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][1][22]["Add"] = 1
	-- 优质惊鸿               
	tStriveSeverNewDungeon_Random["Normal"][1][23] = {}
	tStriveSeverNewDungeon_Random["Normal"][1][23]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][1][23]["ItemChance"] = 25
	tStriveSeverNewDungeon_Random["Normal"][1][23]["Item"] = 700023
	tStriveSeverNewDungeon_Random["Normal"][1][23]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][1][23]["Add"] = 1
	-- 优质金鳞               
	tStriveSeverNewDungeon_Random["Normal"][1][24] = {}
	tStriveSeverNewDungeon_Random["Normal"][1][24]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Normal"][1][24]["ItemChance"] = 25
	tStriveSeverNewDungeon_Random["Normal"][1][24]["Item"] = 700043
	tStriveSeverNewDungeon_Random["Normal"][1][24]["Num"] = 1
	tStriveSeverNewDungeon_Random["Normal"][1][24]["Add"] = 1
	
	
	
	-- 精英怪掉落
	tStriveSeverNewDungeon_Random["Elite"] = {}
	-- 敦煌护法
	tStriveSeverNewDungeon_Random["Elite"][4800] = {}
	tStriveSeverNewDungeon_Random["Elite"][4800]["MustDrop"] = {3004260,723340,723340,729252,729252}
	tStriveSeverNewDungeon_Random["Elite"][4800][1] = {}
	tStriveSeverNewDungeon_Random["Elite"][4800][1]["ItemChanceSum"] = 10000
	-- 宝石               
	tStriveSeverNewDungeon_Random["Elite"][4800][1][1] = {}
	tStriveSeverNewDungeon_Random["Elite"][4800][1][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Elite"][4800][1][1]["ItemChance"] = 5000
	tStriveSeverNewDungeon_Random["Elite"][4800][1][1]["Item"] = 1
	tStriveSeverNewDungeon_Random["Elite"][4800][1][1]["Num"] = 1
	-- 龙血灵石           
	tStriveSeverNewDungeon_Random["Elite"][4800][1][2] = {}
	tStriveSeverNewDungeon_Random["Elite"][4800][1][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Elite"][4800][1][2]["ItemChance"] = 5000
	tStriveSeverNewDungeon_Random["Elite"][4800][1][2]["Item"] = 3309684
	tStriveSeverNewDungeon_Random["Elite"][4800][1][2]["Num"] = 1
	tStriveSeverNewDungeon_Random["Elite"][4800][1][2]["IntoBag"] = 1
	
	-- 浴火炎魔
	tStriveSeverNewDungeon_Random["Elite"][4801] = {}
	tStriveSeverNewDungeon_Random["Elite"][4801]["MustDrop"] = {723340,723340,729252,729252}
	tStriveSeverNewDungeon_Random["Elite"][4801][1] = {}
	tStriveSeverNewDungeon_Random["Elite"][4801][1]["ItemChanceSum"] = 10000
	-- 赤炼石               
	tStriveSeverNewDungeon_Random["Elite"][4801][1][1] = {}
	tStriveSeverNewDungeon_Random["Elite"][4801][1][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Elite"][4801][1][1]["ItemChance"] = 3000
	tStriveSeverNewDungeon_Random["Elite"][4801][1][1]["Item"] = 3
	tStriveSeverNewDungeon_Random["Elite"][4801][1][1]["Num"] = 1
	-- 无奖励           
	tStriveSeverNewDungeon_Random["Elite"][4801][1][2] = {}
	tStriveSeverNewDungeon_Random["Elite"][4801][1][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Elite"][4801][1][2]["ItemChance"] = 7000
	tStriveSeverNewDungeon_Random["Elite"][4801][1][2]["Item"] = 0
	tStriveSeverNewDungeon_Random["Elite"][4801][1][2]["Num"] = 0
	
	tStriveSeverNewDungeon_Random["Elite"][4801][2] = {}
	tStriveSeverNewDungeon_Random["Elite"][4801][2]["ItemChanceSum"] = 10000
	-- 龙血灵石               
	tStriveSeverNewDungeon_Random["Elite"][4801][2][1] = {}
	tStriveSeverNewDungeon_Random["Elite"][4801][2][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Elite"][4801][2][1]["ItemChance"] = 8000
	tStriveSeverNewDungeon_Random["Elite"][4801][2][1]["Item"] = 3309684
	tStriveSeverNewDungeon_Random["Elite"][4801][2][1]["Num"] = 1
	tStriveSeverNewDungeon_Random["Elite"][4801][2][1]["IntoBag"] = 1
	-- 无奖励           
	tStriveSeverNewDungeon_Random["Elite"][4801][2][2] = {}
	tStriveSeverNewDungeon_Random["Elite"][4801][2][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Elite"][4801][2][2]["ItemChance"] = 2000
	tStriveSeverNewDungeon_Random["Elite"][4801][2][2]["Item"] = 0
	tStriveSeverNewDungeon_Random["Elite"][4801][2][2]["Num"] = 0
	
	tStriveSeverNewDungeon_Random["Elite"][4801][3] = {}
	tStriveSeverNewDungeon_Random["Elite"][4801][3]["ItemChanceSum"] = 10000
	-- 神魂卷轴               
	tStriveSeverNewDungeon_Random["Elite"][4801][3][1] = {}
	tStriveSeverNewDungeon_Random["Elite"][4801][3][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Elite"][4801][3][1]["ItemChance"] = 8000
	tStriveSeverNewDungeon_Random["Elite"][4801][3][1]["Item"] = 3004260
	tStriveSeverNewDungeon_Random["Elite"][4801][3][1]["Num"] = 1
	-- 蛮荒骨符           
	tStriveSeverNewDungeon_Random["Elite"][4801][3][2] = {}
	tStriveSeverNewDungeon_Random["Elite"][4801][3][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Elite"][4801][3][2]["ItemChance"] = 2000
	tStriveSeverNewDungeon_Random["Elite"][4801][3][2]["Item"] = 3004181
	tStriveSeverNewDungeon_Random["Elite"][4801][3][2]["Num"] = 1
	
	-- 赤炼石掉落子表
	tStriveSeverNewDungeon_Random["Elite"][3] = {}
	tStriveSeverNewDungeon_Random["Elite"][3]["ItemChanceSum"] = 10000
	-- 赤炼石+1               
	tStriveSeverNewDungeon_Random["Elite"][3][1] = {}
	tStriveSeverNewDungeon_Random["Elite"][3][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Elite"][3][1]["ItemChance"] = 8000
	tStriveSeverNewDungeon_Random["Elite"][3][1]["Item"] = 730001
	tStriveSeverNewDungeon_Random["Elite"][3][1]["Num"] = 1
	tStriveSeverNewDungeon_Random["Elite"][3][1]["IntoBag"] = 1
	-- 赤炼石+2              
	tStriveSeverNewDungeon_Random["Elite"][3][2] = {}
	tStriveSeverNewDungeon_Random["Elite"][3][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Elite"][3][2]["ItemChance"] = 1950
	tStriveSeverNewDungeon_Random["Elite"][3][2]["Item"] = 730002
	tStriveSeverNewDungeon_Random["Elite"][3][2]["Num"] = 1
	tStriveSeverNewDungeon_Random["Elite"][3][2]["IntoBag"] = 1
	-- 赤炼石+5              
	tStriveSeverNewDungeon_Random["Elite"][3][3] = {}
	tStriveSeverNewDungeon_Random["Elite"][3][3]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Elite"][3][3]["ItemChance"] = 50
	tStriveSeverNewDungeon_Random["Elite"][3][3]["Item"] = 730005
	tStriveSeverNewDungeon_Random["Elite"][3][3]["Num"] = 1
	tStriveSeverNewDungeon_Random["Elite"][3][3]["IntoBag"] = 1
	
	
	
	-- Boss掉落
	tStriveSeverNewDungeon_Random["Boss"] = {}
	-- 敦煌修罗，敦煌魔獒王
	tStriveSeverNewDungeon_Random["Boss"][4802] = {}
	tStriveSeverNewDungeon_Random["Boss"][4802]["MustDrop"] = {720598,3002029,3002029,3304324,3304324}
	-- 100%掉宝石
	tStriveSeverNewDungeon_Random["Boss"][4802][1] = {}
	tStriveSeverNewDungeon_Random["Boss"][4802][1]["ItemChanceSum"] = 10000               
	tStriveSeverNewDungeon_Random["Boss"][4802][1][1] = {}
	tStriveSeverNewDungeon_Random["Boss"][4802][1][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Boss"][4802][1][1]["ItemChance"] = 10000
	tStriveSeverNewDungeon_Random["Boss"][4802][1][1]["Item"] = 1
	tStriveSeverNewDungeon_Random["Boss"][4802][1][1]["Num"] = 2
	
	-- 100%掉龙血灵石               
	tStriveSeverNewDungeon_Random["Boss"][4802][2] = {}
	tStriveSeverNewDungeon_Random["Boss"][4802][2]["ItemChanceSum"] = 10000
	tStriveSeverNewDungeon_Random["Boss"][4802][2][1] = {}
	tStriveSeverNewDungeon_Random["Boss"][4802][2][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Boss"][4802][2][1]["ItemChance"] = 10000
	tStriveSeverNewDungeon_Random["Boss"][4802][2][1]["Item"] = 3309684
	tStriveSeverNewDungeon_Random["Boss"][4802][2][1]["Num"] = 3
	tStriveSeverNewDungeon_Random["Boss"][4802][2][1]["IntoBag"] = 1
	           
	tStriveSeverNewDungeon_Random["Boss"][4802][3] = {}
	tStriveSeverNewDungeon_Random["Boss"][4802][3]["ItemChanceSum"] = 10000
	-- 防具神魂转盘
	tStriveSeverNewDungeon_Random["Boss"][4802][3][1] = {}
	tStriveSeverNewDungeon_Random["Boss"][4802][3][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Boss"][4802][3][1]["ItemChance"] = 7000
	tStriveSeverNewDungeon_Random["Boss"][4802][3][1]["Item"] = 3303477
	tStriveSeverNewDungeon_Random["Boss"][4802][3][1]["Num"] = 1
	-- 武器神魂转盘
	tStriveSeverNewDungeon_Random["Boss"][4802][3][2] = {}
	tStriveSeverNewDungeon_Random["Boss"][4802][3][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Boss"][4802][3][2]["ItemChance"] = 3000
	tStriveSeverNewDungeon_Random["Boss"][4802][3][2]["Item"] = 3303478
	tStriveSeverNewDungeon_Random["Boss"][4802][3][2]["Num"] = 1
	
	
	-- 炼狱翼魔王，镇狱魔龙王
	tStriveSeverNewDungeon_Random["Boss"][4805] = {}
	tStriveSeverNewDungeon_Random["Boss"][4805]["MustDrop"] = {723340,723340,3304324,3304324}
	-- 100%掉赤炼石
	tStriveSeverNewDungeon_Random["Boss"][4805][1] = {}
	tStriveSeverNewDungeon_Random["Boss"][4805][1]["ItemChanceSum"] = 10000               
	tStriveSeverNewDungeon_Random["Boss"][4805][1][1] = {}
	tStriveSeverNewDungeon_Random["Boss"][4805][1][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Boss"][4805][1][1]["ItemChance"] = 10000
	tStriveSeverNewDungeon_Random["Boss"][4805][1][1]["Item"] = 3
	tStriveSeverNewDungeon_Random["Boss"][4805][1][1]["Num"] = 2
	
	-- 100%掉龙血灵石
	tStriveSeverNewDungeon_Random["Boss"][4805][2] = {}
	tStriveSeverNewDungeon_Random["Boss"][4805][2]["ItemChanceSum"] = 10000               
	tStriveSeverNewDungeon_Random["Boss"][4805][2][1] = {}
	tStriveSeverNewDungeon_Random["Boss"][4805][2][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Boss"][4805][2][1]["ItemChance"] = 10000
	tStriveSeverNewDungeon_Random["Boss"][4805][2][1]["Item"] = 3309684
	tStriveSeverNewDungeon_Random["Boss"][4805][2][1]["Num"] = 3
	tStriveSeverNewDungeon_Random["Boss"][4805][2][1]["IntoBag"] = 1
	
	tStriveSeverNewDungeon_Random["Boss"][4805][3] = {}
	tStriveSeverNewDungeon_Random["Boss"][4805][3]["ItemChanceSum"] = 10000       
	-- 防具神魂转盘
	tStriveSeverNewDungeon_Random["Boss"][4805][3][1] = {}
	tStriveSeverNewDungeon_Random["Boss"][4805][3][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Boss"][4805][3][1]["ItemChance"] = 7000
	tStriveSeverNewDungeon_Random["Boss"][4805][3][1]["Item"] = 3303477
	tStriveSeverNewDungeon_Random["Boss"][4805][3][1]["Num"] = 2
	-- 武器神魂转盘
	tStriveSeverNewDungeon_Random["Boss"][4805][3][2] = {}
	tStriveSeverNewDungeon_Random["Boss"][4805][3][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Boss"][4805][3][2]["ItemChance"] = 3000
	tStriveSeverNewDungeon_Random["Boss"][4805][3][2]["Item"] = 3303478
	tStriveSeverNewDungeon_Random["Boss"][4805][3][2]["Num"] = 2
	
	
	
	-- 额外掉落
	tStriveSeverNewDungeon_Random["Extra"] = {}
	-- 敦煌2-3层额外掉落
	tStriveSeverNewDungeon_Random["Extra"][1] = {}
	tStriveSeverNewDungeon_Random["Extra"][1]["ItemChanceSum"] = 10000               
	-- 0.01%掉落
	tStriveSeverNewDungeon_Random["Extra"][1][1] = {}
	tStriveSeverNewDungeon_Random["Extra"][1][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Extra"][1][1]["ItemChance"] = 1
	tStriveSeverNewDungeon_Random["Extra"][1][1]["Item"] = 1
	-- 不掉落
	tStriveSeverNewDungeon_Random["Extra"][1][2] = {}
	tStriveSeverNewDungeon_Random["Extra"][1][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Extra"][1][2]["ItemChance"] = 9999
	tStriveSeverNewDungeon_Random["Extra"][1][2]["Item"] = 0
	
	
	
	-- 搜宝袋触发概率
	tStriveSeverNewDungeon_Random["Search"] = {}
	-- 敦煌酒窖搜宝袋
	tStriveSeverNewDungeon_Random["Search"][3309685] = {}
	tStriveSeverNewDungeon_Random["Search"][3309685]["ItemChanceSum"] = 10000               
	-- 火舞精丹
	tStriveSeverNewDungeon_Random["Search"][3309685][1] = {}
	tStriveSeverNewDungeon_Random["Search"][3309685][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Search"][3309685][1]["ItemChance"] = 50
	tStriveSeverNewDungeon_Random["Search"][3309685][1]["Item"] = 720598
	-- 200点气力包（可交易）
	tStriveSeverNewDungeon_Random["Search"][3309685][2] = {}
	tStriveSeverNewDungeon_Random["Search"][3309685][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Search"][3309685][2]["ItemChance"] = 15
	tStriveSeverNewDungeon_Random["Search"][3309685][2]["Item"] = 3001411
	-- 1000点气力包
	tStriveSeverNewDungeon_Random["Search"][3309685][3] = {}
	tStriveSeverNewDungeon_Random["Search"][3309685][3]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Search"][3309685][3]["ItemChance"] = 25
	tStriveSeverNewDungeon_Random["Search"][3309685][3]["Item"] = 3008193
	tStriveSeverNewDungeon_Random["Search"][3309685][3]["IntoBag"] = 1
	-- 敦煌神纹精粹包
	tStriveSeverNewDungeon_Random["Search"][3309685][4] = {}
	tStriveSeverNewDungeon_Random["Search"][3309685][4]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Search"][3309685][4]["ItemChance"] = 10
	tStriveSeverNewDungeon_Random["Search"][3309685][4]["Item"] = 3309706
	-- 不掉落
	tStriveSeverNewDungeon_Random["Search"][3309685][5] = {}
	tStriveSeverNewDungeon_Random["Search"][3309685][5]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Search"][3309685][5]["ItemChance"] = 9900
	tStriveSeverNewDungeon_Random["Search"][3309685][5]["Item"] = 0
	
	-- 极寒火窟搜宝袋
	tStriveSeverNewDungeon_Random["Search"][3309686] = {}
	tStriveSeverNewDungeon_Random["Search"][3309686]["ItemChanceSum"] = 100000             
	-- 赤炼石幸运包
	tStriveSeverNewDungeon_Random["Search"][3309686][1] = {}
	tStriveSeverNewDungeon_Random["Search"][3309686][1]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Search"][3309686][1]["ItemChance"] = 225
	tStriveSeverNewDungeon_Random["Search"][3309686][1]["Item"] = 3309687
	tStriveSeverNewDungeon_Random["Search"][3309686][1]["IntoBag"] = 1
	-- 星陨石幸运包
	tStriveSeverNewDungeon_Random["Search"][3309686][2] = {}
	tStriveSeverNewDungeon_Random["Search"][3309686][2]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Search"][3309686][2]["ItemChance"] = 225
	tStriveSeverNewDungeon_Random["Search"][3309686][2]["Item"] = 3309688
	tStriveSeverNewDungeon_Random["Search"][3309686][2]["IntoBag"] = 1
	-- 300气力值（可交易）
	tStriveSeverNewDungeon_Random["Search"][3309686][3] = {}
	tStriveSeverNewDungeon_Random["Search"][3309686][3]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Search"][3309686][3]["ItemChance"] = 150
	tStriveSeverNewDungeon_Random["Search"][3309686][3]["Item"] = 3309689
	-- 1500气力值包
	tStriveSeverNewDungeon_Random["Search"][3309686][4] = {}
	tStriveSeverNewDungeon_Random["Search"][3309686][4]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Search"][3309686][4]["ItemChance"] = 300
	tStriveSeverNewDungeon_Random["Search"][3309686][4]["Item"] = 3008195
	tStriveSeverNewDungeon_Random["Search"][3309686][4]["IntoBag"] = 1
	-- 极寒神纹精粹包
	tStriveSeverNewDungeon_Random["Search"][3309686][5] = {}
	tStriveSeverNewDungeon_Random["Search"][3309686][5]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Search"][3309686][5]["ItemChance"] = 100
	tStriveSeverNewDungeon_Random["Search"][3309686][5]["Item"] = 3309707
	-- 不掉落
	tStriveSeverNewDungeon_Random["Search"][3309686][6] = {}
	tStriveSeverNewDungeon_Random["Search"][3309686][6]["RandomItemChanceType"] = 2
	tStriveSeverNewDungeon_Random["Search"][3309686][6]["ItemChance"] = 99000
	tStriveSeverNewDungeon_Random["Search"][3309686][6]["Item"] = 0
	
	
-----------------------------------------------逻辑部分-----------------------------------------
-- 奋斗服判断
function StriveSeverNewDungeon_ChkStrive()
	local nGlobalId = tStriveSeverNewDungeon_Cont["StriveGlobal"]
	local nGlobalData0 = Get_SysDynaGlobalData(nGlobalId,0)
	-- 判断奋斗服
	if nGlobalData0 ~= 1 then
		return false
	else
		return true
	end
end

-- 传送
function StriveSeverNewDungeon_ChgMap(nIndex,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	-- 判断奋斗服
	if not StriveSeverNewDungeon_ChkStrive() then
		return
	end
	
	-- 判断是否从新地宫传出
	if nIndex > 10000000 then
		nIndex = nIndex - 10000000
		Sys_MsgBox(tStriveSeverNewDungeon_Text[105]["Exit"][nIndex],"NULL","NULL",nNowUserId)
	end
	
	local nMapId = tStriveSeverNewDungeon_Cont["ChgMap"][nIndex]["MapId"]
	local nCellX = tStriveSeverNewDungeon_Cont["ChgMap"][nIndex]["CellX"]
	local nCellY = tStriveSeverNewDungeon_Cont["ChgMap"][nIndex]["CellY"]
	local nRange = tStriveSeverNewDungeon_Cont["ChgMap"][nIndex]["Range"]
	
	User_UserRandBoundTrans(nMapId,nCellX,nCellY,nRange,nRange,1,nNowUserId)
end

-- 隔天重置掩码
function StriveSeverNewDungeon_ClearStc()
	for i=1,tStriveSeverNewDungeon_Stc["Day"]["Total"] do
		local nEvent = tStriveSeverNewDungeon_Stc["Day"][i]["EventType"]
		local nType = tStriveSeverNewDungeon_Stc["Day"][i]["DataType"]
		
		-- 隔天重置掩码
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1)
			Task_SetStcTimestamp(nEvent,nType,0)
		end
	end
end

-- 进入挂机区地宫
function StriveSeverNewDungeon_EnterDungeon(nNpcId)
	-- 判断奋斗服
	if not StriveSeverNewDungeon_ChkStrive() then
		return
	end
	
	-- 判断活动时间
	if not Sys_ChkDayTime(tStriveSeverNewDungeon_Cont[nNpcId]["EnterTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return false
	end
	
	local nEvent_Vip = tStriveSeverNewDungeon_Stc["Vip"]["EventType"]
	local nType_Vip = tStriveSeverNewDungeon_Stc["Vip"]["DataType"]
	local nData_Vip = Get_UserStatisticValue(nEvent_Vip,nType_Vip)
	local nMapId = tStriveSeverNewDungeon_Cont[nNpcId]["MapId"]
	
	-- 判断是否已有地宫特权
	if nData_Vip ~= 0 then
		-- 特权过期则重置
		if Task_StcInterval(nEvent_Vip,nType_Vip,nData_Vip,3) then
			Task_SetStatistic(nEvent_Vip,nType_Vip,0,1)
			Task_SetStcTimestamp(nEvent_Vip,nType_Vip,0)
		else
			-- 有地宫特权可直接传送
			StriveSeverNewDungeon_ChgMap(nMapId)
			
			-- 特权到期前三天进入地图出提示
			if Task_StcInterval(nEvent_Vip,nType_Vip,nData_Vip-3,3) then
				Sys_MsgBox(tStriveSeverNewDungeon_Text[105]["VipOutTime"])
			end
			
			return true
		end
	end
	
	-- 无特权则用替代物品入场
	local nItemId = tStriveSeverNewDungeon_Cont[nNpcId]["ItemId"]
	
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return false
	end
	
	-- 优先删赠
	if Item_ChkItem(nItemId,2) then
		-- 删物品
		if Item_DelItem(nItemId,2) then
			-- 记log
			local sLog = string.format(tStriveSeverNewDungeon_Log["Delete"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
			-- 传送
			StriveSeverNewDungeon_ChgMap(nMapId)
		end
	elseif Item_ChkItem(nItemId,0) then
		-- 删物品
		if Item_DelItem(nItemId,0) then
			-- 记log
			local sLog = string.format(tStriveSeverNewDungeon_Log["Delete"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
			-- 传送
			StriveSeverNewDungeon_ChgMap(nMapId)
		end
	end
	
	return true
end

-- 天石替代物品
function StriveSeverNewDungeon_ReplaceOfEmoney(nNpcId)
	-- 判断奋斗服
	if not StriveSeverNewDungeon_ChkStrive() then
		return
	end
	
	-- 判断活动时间
	if not Sys_ChkDayTime(tStriveSeverNewDungeon_Cont[nNpcId]["EnterTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return false
	end
	
	local nNeedEmoneyNum = tStriveSeverNewDungeon_Cont[nNpcId]["EmoneyNum"]
	
	-- 判断天石是否充足
	local nUserEmoney = Get_UserEMoney()
	if nUserEmoney < nNeedEmoneyNum then
		Sys_MsgBox(tStriveSeverNewDungeon_Text[105]["EmoneyNotEnough"][nNpcId])
		return false
	else
		-- 二次确认
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return true
	end
end

-- 花费天石二次确认
function StriveSeverNewDungeon_CostEmoneyConfirm(nNpcId)
	-- 判断奋斗服
	if not StriveSeverNewDungeon_ChkStrive() then
		return
	end
	
	-- 判断活动时间
	if not Sys_ChkDayTime(tStriveSeverNewDungeon_Cont[nNpcId]["EnterTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return false
	end
	
	local nNeedEmoneyNum = tStriveSeverNewDungeon_Cont[nNpcId]["EmoneyNum"]
	
	-- 天石不足
	local nUserEmoney = Get_UserEMoney()
	if nUserEmoney < nNeedEmoneyNum then
		Sys_MsgBox(tStriveSeverNewDungeon_Text[105]["EmoneyNotEnough"][nNpcId])
		return false
	end
	
	-- 扣天石
	if User_AddEMoney(-nNeedEmoneyNum) then
		Sys_MsgBox(tStriveSeverNewDungeon_Text[105]["CostEmoney"][nNpcId])
		
		local nMapId = tStriveSeverNewDungeon_Cont[nNpcId]["MapId"]
		StriveSeverNewDungeon_ChgMap(nMapId)
		Sys_SaveEmoneyBuy(tStriveSeverNewDungeon_Log["Emoney"][nNpcId])
		return true
	end
end

-- 领取搜宝袋
function StriveSeverNewDungeon_GetTreasureBag(nNpcId,nIndex)
	-- 判断奋斗服
	if not StriveSeverNewDungeon_ChkStrive() then
		return
	end
	
	-- 判断活动时间
	if not Sys_ChkDayTime(tStriveSeverNewDungeon_Cont[nNpcId]["EnterTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return false
	end
	
	local nEvent_1 = tStriveSeverNewDungeon_Stc["Day"][nIndex]["EventType"]
	local nType_1 = tStriveSeverNewDungeon_Stc["Day"][nIndex]["DataType"]
	local nLimit_1 = tStriveSeverNewDungeon_Stc["Day"][nIndex]["Limit"]
	
	-- 隔天重置掩码
	StriveSeverNewDungeon_ClearStc()
	
	local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
	
	-- 判断是否已领取
	if nData_1 == nLimit_1 then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tStriveSeverNewDungeon_Reward[nNpcId])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tStriveSeverNewDungeon_Text[105]["FullBag"],nSpace))
		return
	end
	
	Task_SetStatistic(nEvent_1,nType_1,1,1)
	Task_SetStcTimestamp(nEvent_1,nType_1,0)
	RewardTemplate_UseItemAndMsg(tStriveSeverNewDungeon_Reward[nNpcId])
	User_EffectAdd("self",tStriveSeverNewDungeon_Cont["Effect"][1])
	LinkNpcGossipFunc_New(nNpcId,"1")
end

-- 使用地宫特权令
function StriveSeverNewDungeon_DungeonVip(nItemId)
	-- 判断奋斗服
	if not StriveSeverNewDungeon_ChkStrive() then
		return
	end
	
	local nEvent_Vip = tStriveSeverNewDungeon_Stc["Vip"]["EventType"]
	local nType_Vip = tStriveSeverNewDungeon_Stc["Vip"]["DataType"]
	local nData_Vip = Get_UserStatisticValue(nEvent_Vip,nType_Vip)
	local nTime_Vip = tStriveSeverNewDungeon_Stc["Vip"]["Time"] 
	
	-- 删物品
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 判断是否已有地宫特权
		if nData_Vip ~= 0 then
			-- 特权过期则重置
			if Task_StcInterval(nEvent_Vip,nType_Vip,nData_Vip,3) then
				Task_SetStatistic(nEvent_Vip,nType_Vip,nTime_Vip,1)
				Task_SetStcTimestamp(nEvent_Vip,nType_Vip,0)
			else
				Task_AddStatistic(nEvent_Vip,nType_Vip,nTime_Vip,1)
			end
		else
			Task_SetStatistic(nEvent_Vip,nType_Vip,nTime_Vip,1)
			Task_SetStcTimestamp(nEvent_Vip,nType_Vip,0)
		end
		
		User_EffectAdd("self",tStriveSeverNewDungeon_Cont["Effect"][2])
		User_TalkChannel2005(tStriveSeverNewDungeon_Text[2005]["GetVip"])
		
		-- 记log
		local sLog = string.format(tStriveSeverNewDungeon_Log["Delete"],nItemId)
		Sys_SaveActionFestivalLog(sLog)
	end
end

-- 合成龙珠
function StriveSeverNewDungeon_CompoundDragonBall(nItemId)
	-- 判断奋斗服
	if not StriveSeverNewDungeon_ChkStrive() then
		return
	end
	
	-- 是否有7个龙血灵石
	if not Item_ChkMulItem(nItemId,nItemId,7) then
		Sys_MsgBox(tStriveSeverNewDungeon_Text[105]["DebrisNotEnough"])
		return false
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tStriveSeverNewDungeon_Reward[nItemId])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tStriveSeverNewDungeon_Text[105]["CompoundFullBag"],nSpace))
		return
	end
	
	RewardTemplate_UseItemAndMsg(tStriveSeverNewDungeon_Reward[nItemId])
	Sys_MsgBox(tStriveSeverNewDungeon_Text[105]["CompoundSuccessed"])
end

-- 使用随机礼包
function StriveSeverNewDungeon_RandomUsePack(nItemId)
	-- 判断奋斗服
	if not StriveSeverNewDungeon_ChkStrive() then
		return
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tStriveSeverNewDungeon_Reward,nItemId)
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tStriveSeverNewDungeon_Text[105]["UseItemFullBag"])
		return false
	end
	
	-- 删物品给奖励
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tStriveSeverNewDungeon_Reward,nItemId)
		return true
	end
end

-- 精英怪掉落
function StriveSeverNewDungeon_KillElite(nMonsterId)
	-- 判断奋斗服
	if not StriveSeverNewDungeon_ChkStrive() then
		return
	end
	
	local tDrop = tStriveSeverNewDungeon_Random["Elite"][nMonsterId]["MustDrop"]
	local tIntoBag = {}
	
	-- 取掉落表和直接给的奖励表
	for i=1, #tStriveSeverNewDungeon_Random["Elite"][nMonsterId] do
		if tStriveSeverNewDungeon_Random["Elite"][nMonsterId][i] ~= nil then
			local nFlag,tAward = Probabil_RandomAward(tStriveSeverNewDungeon_Random["Elite"][nMonsterId],i)
			local nItemId = tAward[1]["tAward"][1]["Item"]
			local nNum = tAward[1]["tAward"][1]["Num"]
			
			-- 随机到宝石（子表继续随机概率）
			if nItemId == 1 then
				nFlag,tAward = Probabil_RandomAward(tStriveSeverNewDungeon_Random["Normal"],nItemId)
				nItemId = tAward[1]["tAward"][1]["Item"]
				nNum = tAward[1]["tAward"][1]["Num"]
			end
			
			-- 随机到赤炼石（子表继续随机概率）
			if nItemId == 3 then
				nFlag,tAward = Probabil_RandomAward(tStriveSeverNewDungeon_Random["Elite"],nItemId)
				nItemId = tAward[1]["tAward"][1]["Item"]
				nNum = tAward[1]["tAward"][1]["Num"]
			end
			
			if tAward[1]["tAward"][1]["IntoBag"] ~= nil then
				table.insert(tIntoBag,nItemId)
			elseif nNum ~= 0 then
				for j=1,nNum do
					table.insert(tDrop,nItemId)
				end
			end
		end
	end
	
	-- 掉落地面
	for i,v in ipairs(tDrop) do
		Monster_SysDropItem(v)
	end
	
	-- 直接给到背包
	if tIntoBag ~= nil then
		for i,v in ipairs(tIntoBag) do
			local sAttr = tStriveSeverNewDungeon_Reward["Elite"][v]["Attr"]
			Item_AddNewItem(v,sAttr)
			User_TalkChannel2005(tStriveSeverNewDungeon_Text[2005]["GetItem"]["Elite"][v])
		end
	end
	User_EffectAdd("self",tStriveSeverNewDungeon_Cont["Effect"][1])
end

-- Boss掉落
function StriveSeverNewDungeon_KillBoss(nMonsterId)
	-- 判断奋斗服
	if not StriveSeverNewDungeon_ChkStrive() then
		return
	end
	
	local nMapId = tStriveSeverNewDungeon_Cont["Map"][nMonsterId]
	Monster_DelMonster(nMapId,nMonsterId)
	Monster_Death(nMonsterId,nMapId)
	
	local nOldMonsterId = nMonsterId
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	
	if nMonsterId == 4803 then
		nMonsterId = 4802
	end
	
	-- if nMonsterId == 4805 then
		-- nMonsterId = 4804
	-- end
	
	local tDrop = tStriveSeverNewDungeon_Random["Boss"][nMonsterId]["MustDrop"]
	local tIntoBag = {}
	
	-- 取掉落表和直接给的奖励表
	for i=1, #tStriveSeverNewDungeon_Random["Boss"][nMonsterId] do
		if tStriveSeverNewDungeon_Random["Boss"][nMonsterId][i] ~= nil then
			local nFlag,tAward = Probabil_RandomAward(tStriveSeverNewDungeon_Random["Boss"][nMonsterId],i)
			local nItemId = tAward[1]["tAward"][1]["Item"]
			local nNum = tAward[1]["tAward"][1]["Num"]
			
			-- 随机到宝石（子表继续随机概率）
			if nItemId == 1 then
				nFlag,tAward = Probabil_RandomAward(tStriveSeverNewDungeon_Random["Normal"],nItemId)
				nItemId = tAward[1]["tAward"][1]["Item"]
				nNum = tAward[1]["tAward"][1]["Num"] * 2
			end
			
			-- 随机到赤炼石（子表继续随机概率）
			if nItemId == 3 then
				nFlag,tAward = Probabil_RandomAward(tStriveSeverNewDungeon_Random["Elite"],nItemId)
				nItemId = tAward[1]["tAward"][1]["Item"]
				nNum = tAward[1]["tAward"][1]["Num"] * 2
			end
			
			if tAward[1]["tAward"][1]["IntoBag"] ~= nil then
				table.insert(tIntoBag,nItemId)
			elseif nNum ~= 0 then
				for j=1,nNum do
					table.insert(tDrop,nItemId)
				end
			end
		end
	end
	
	-- 掉落地面
	for i,v in ipairs(tDrop) do
		Monster_SysDropItem(v)
	end
	
	-- 直接给到背包
	if tIntoBag ~= nil then
		for i,v in ipairs(tIntoBag) do
			local sAttr = tStriveSeverNewDungeon_Reward["Boss"][v]["Attr"]
			Item_AddNewItem(v,sAttr)
			User_TalkChannel2005(tStriveSeverNewDungeon_Text[2005]["GetItem"]["Boss"][v])
		end
	end
	
	Sys_SystemBroadcast(string.format(tStriveSeverNewDungeon_Text["BroadCast"]["KillBoss"][nOldMonsterId],sUserName))
	User_EffectAdd("self",tStriveSeverNewDungeon_Cont["Effect"][1])
end

-- 小怪掉落
function StriveSeverNewDungeon_KillNormalMonster(nMonsterId)
	-- 判断奋斗服
	if not StriveSeverNewDungeon_ChkStrive() then
		return
	end
	
	local nGlobalId = tStriveSeverNewDungeon_Cont["LimitGlobal"]
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	local nFlag,tAward = Probabil_RandomAward(tStriveSeverNewDungeon_Random["Normal"],nMonsterId)
	local nNum = tAward[1]["tAward"][1]["Num"]
	local nItemId
	local nExtraItemId
	local nMapId = Get_UserMapId()
	local nSearchBagId = tStriveSeverNewDungeon_Cont["Map"][nMapId]
	
	-- 搜宝袋随机概率
	if Item_ChkItem(nSearchBagId) then
		local nFlag1,tAward1 = Probabil_RandomAward(tStriveSeverNewDungeon_Random["Search"],nSearchBagId)
		nExtraItemId = tAward1[1]["tAward"][1]["Item"]
		
		-- 触发掉落
		if nExtraItemId ~= 0 then
			-- 删搜宝袋
			if Item_DelItem(nSearchBagId) then
				-- 区分掉落还是直接给
				if tAward1[1]["tAward"][1]["IntoBag"] ~= nil then
					local sAttr = tStriveSeverNewDungeon_Reward["Normal"][nExtraItemId]["Attr"]
					Item_AddNewItem(nExtraItemId,sAttr)
					User_TalkChannel2005(tStriveSeverNewDungeon_Text[2005]["GetItem"]["Normal"][nExtraItemId])
				else
					Monster_SysDropItem(nExtraItemId)
					if tStriveSeverNewDungeon_Text["BroadCast"][nExtraItemId] ~= nil then
						Sys_SystemBroadcast(string.format(tStriveSeverNewDungeon_Text["BroadCast"][nExtraItemId],sUserName))
					end
					if tStriveSeverNewDungeon_Text[2005][nExtraItemId] ~= nil then
						User_TalkChannel2005(tStriveSeverNewDungeon_Text[2005][nExtraItemId])
					end
				end
			end
		end
	end
	
	-- 无掉落
	if nNum == 0 then
		return
	end
	
	-- 敦煌酒窖与极寒火窟区分掉落
	nFlag,tAward = Probabil_RandomAward(tStriveSeverNewDungeon_Random["Normal"],nMapId)
	nItemId = tAward[1]["tAward"][1]["Item"]
	nNum = tAward[1]["tAward"][1]["Num"]
	
	-- 赤炼石上限判断
	if tAward[1]["tAward"][1]["Add"] ~= nil then
		local nStoneDropNum = Get_SysDynaGlobalData(nGlobalId,1)
		local nStoneLimit = tStriveSeverNewDungeon_Cont["StoneLimit"]
		
		-- 掉落达上限则掉落征服币
		if nStoneDropNum >= nStoneLimit then
			nItemId = 2
			nNum = 1000
		else
			nStoneDropNum = nStoneDropNum + tAward[1]["tAward"][1]["Add"]
			Sys_SetSynaGlobalData(nGlobalId,1,nStoneDropNum)
		end
	end
	
	-- 随机到宝石（子表继续随机概率）
	if nItemId == 1 then
		nFlag,tAward = Probabil_RandomAward(tStriveSeverNewDungeon_Random["Normal"],nItemId)
		nItemId = tAward[1]["tAward"][1]["Item"]
		nNum = tAward[1]["tAward"][1]["Num"]
		
		local nGemDropNum = Get_SysDynaGlobalData(nGlobalId,0)
		local nGemLimit = tStriveSeverNewDungeon_Cont["GemLimit"]
		
		-- 掉落达上限则掉落征服币
		if nGemDropNum >= nGemLimit then
			nItemId = 2
			nNum = 1000
		-- 判断是否良品
		else
			nGemDropNum = nGemDropNum + tAward[1]["tAward"][1]["Add"]
			Sys_SetSynaGlobalData(nGlobalId,0,nGemDropNum)
		end
	end
	
	-- 掉落金币
	if nItemId == 2 then
		Monster_SysDropMoney(nNum)
	-- 直接给到背包的物品
	elseif tAward[1]["tAward"][1]["IntoBag"] ~= nil then
		local sAttr = tStriveSeverNewDungeon_Reward["Normal"][nItemId]["Attr"]
		Item_AddNewItem(nItemId,sAttr)
		User_TalkChannel2005(tStriveSeverNewDungeon_Text[2005]["GetItem"]["Normal"][nItemId])
	else
		-- 掉落地面
		for i=1,nNum do
			Monster_SysDropItem(nItemId)
		end
		
		if tStriveSeverNewDungeon_Text["BroadCast"][nItemId] ~= nil then
			Sys_SystemBroadcast(string.format(tStriveSeverNewDungeon_Text["BroadCast"][nItemId],sUserName))
		end
	end
end

-- 冰封3-4层额外掉落
function StriveSeverNewDungeon_ExtraDrop1(nMonsterId)
	-- 判断奋斗服
	if not StriveSeverNewDungeon_ChkStrive() then
		return
	end
	
	local nMapId = Get_UserMapId()
	for i,v in ipairs(tStriveSeverNewDungeon_Cont["Map"][2]) do
		if nMapId == v then
			-- 判断背包空间
			local nSpace = RewardTemplate_GetRandomSpace(tStriveSeverNewDungeon_Reward["Extra"],2)
			if not User_CheckLeftSpace(nSpace) then
				return false
			end
			
			RewardTemplate_NewRandom(tStriveSeverNewDungeon_Reward["Extra"],2)
			return true
		end
	end
end

-- 敦煌2-3层额外掉落
function StriveSeverNewDungeon_ExtraDrop2(nMonsterId)
	-- 判断奋斗服
	if not StriveSeverNewDungeon_ChkStrive() then
		return
	end
	
	local nMapId = Get_UserMapId()
	for i,v in ipairs(tStriveSeverNewDungeon_Cont["Map"][1]) do
		if nMapId == v then
			local nFlag,tAward = Probabil_RandomAward(tStriveSeverNewDungeon_Random["Extra"],1)
			local nItem = tAward[1]["tAward"][1]["Item"]
			
			if nItem == 0 then
				return false
			end
			
			-- 判断背包空间
			local nSpace = RewardTemplate_GetRandomSpace(tStriveSeverNewDungeon_Reward["Extra"],1)
			if not User_CheckLeftSpace(nSpace) then
				return false
			end
			
			RewardTemplate_NewRandom(tStriveSeverNewDungeon_Reward["Extra"],1)
			return true
		end
	end
end

-- 清理Global
function StriveSeverNewDungeon_ClearGlobal()
	-- 判断奋斗服
	if not StriveSeverNewDungeon_ChkStrive() then
		return
	end
	
	local nGlobalId = tStriveSeverNewDungeon_Cont["LimitGlobal"]
	Sys_ResetAllSynaGlobalData(nGlobalId)
end

-- 关闭敦煌酒窖
function StriveSeverNewDungeon_ClearMap1()
	-- 判断奋斗服
	if not StriveSeverNewDungeon_ChkStrive() then
		return
	end
	
	local nMapId = tStriveSeverNewDungeon_Cont[22977]["MapId"]
	Map_UserExeFunc(nMapId,-1,"StriveSeverNewDungeon_ChgMap</N>10022977")
end

-- 关闭极寒火窟
function StriveSeverNewDungeon_ClearMap2()
	-- 判断奋斗服
	if not StriveSeverNewDungeon_ChkStrive() then
		return
	end
	
	local nMapId = tStriveSeverNewDungeon_Cont[22978]["MapId"]
	Map_UserExeFunc(nMapId,-1,"StriveSeverNewDungeon_ChgMap</N>10022978")
end

-- 刷新BOSS
function StriveSeverNewDungeon_BrushBoss()
	-- 判断奋斗服
	if not StriveSeverNewDungeon_ChkStrive() then
		return
	end
	
	-- 判断时间(敦煌酒窖)
	if Sys_ChkDayTime(tStriveSeverNewDungeon_Cont[22977]["EnterTime"]) then
		local nMapId = tStriveSeverNewDungeon_Cont["Boss"][10346]["MapId"]
		local nMonsterId_1 = tStriveSeverNewDungeon_Cont["Boss"][10346][1]["MonsterId"]
		local nMonsterId_2 = tStriveSeverNewDungeon_Cont["Boss"][10346][2]["MonsterId"]
		
		local nNum1 = Get_SysTempData(1,nMapId,nMonsterId_1)
		local nNum2 = Get_SysTempData(1,nMapId,nMonsterId_2)
		
		-- 暂无BOSS则刷新
		if nNum1 <= 0 and nNum2 <= 0 then
			-- 随机坐标
			local nLen = #tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"]
			local nPosRandom = math.random(1,nLen)
			local nPosX = tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][nPosRandom]["PosX"]
			local nPosY = tStriveSeverNewDungeon_Cont["Boss"][10346]["Random"][nPosRandom]["PosY"]
			-- 随机BOSS
			local nMonsterRandom = math.random(1,2)
			local nMonsterId = tStriveSeverNewDungeon_Cont["Boss"][10346][nMonsterRandom]["MonsterId"]
			local nGenId = tStriveSeverNewDungeon_Cont["Boss"][10346][nMonsterRandom]["GenId"]
			-- 刷BOSS、全服公告
			Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)
			Sys_TalkBroadcast(string.format(tStriveSeverNewDungeon_Text["BroadCast"]["Brush"][nMonsterId],nPosX,nPosY))
		end
	end
	
	-- 判断时间(极寒火窟)
	if Sys_ChkDayTime(tStriveSeverNewDungeon_Cont[22978]["EnterTime"]) then
		local nMapId = tStriveSeverNewDungeon_Cont["Boss"][10347]["MapId"]
		local nMonsterId_2 = tStriveSeverNewDungeon_Cont["Boss"][10347][2]["MonsterId"]
		local nNum = Get_SysTempData(1,nMapId,nMonsterId_2)
		
		-- 暂无BOSS则刷新
		if nNum <= 0 then
			-- 随机坐标
			local nLen = #tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"]
			local nPosRandom = math.random(1,nLen)
			local nPosX = tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][nPosRandom]["PosX"]
			local nPosY = tStriveSeverNewDungeon_Cont["Boss"][10347]["Random"][nPosRandom]["PosY"]
			-- 改为只刷魔龙王
			local nMonsterId = nMonsterId_2
			local nGenId = tStriveSeverNewDungeon_Cont["Boss"][10347][2]["GenId"]
			-- 刷BOSS、全服公告
			Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)
			Sys_TalkBroadcast(string.format(tStriveSeverNewDungeon_Text["BroadCast"]["Brush"][nMonsterId],nPosX,nPosY))
		end
	end
end

-- 服务器启动
function StriveSeverNewDungeon_NewServerStart()
	for i=1,#tStriveSeverNewDungeon_Cont["BossMapId"] do
		local nMapId = tStriveSeverNewDungeon_Cont["BossMapId"][i]
		local nMonsterId = tStriveSeverNewDungeon_Cont["BossId"][i]
		Monster_DelMonster(nMapId,nMonsterId)
		Monster_Death(nMonsterId,nMapId)
	end
end

-- 超链接
function StriveSeverNewDungeon_Hyperlink(nNpcId,nMonsterId)
	-- 判断奋斗服
	if not StriveSeverNewDungeon_ChkStrive() then
		return
	end
	
	local nUserMapId = Get_UserMapId()
	local nIntoMap = tStriveSeverNewDungeon_Cont["ChgMap"][nNpcId]["IntoMap"]
	
	-- 判断是否已在地图
	if nUserMapId == nIntoMap then
		Sys_MsgBox(tStriveSeverNewDungeon_Text[105]["InMap"][nMonsterId])
	else
		StriveSeverNewDungeon_ChgMap(nNpcId)
	end
end


-----------------------------------------------模板部分-----------------------------------------
-------------------------------NPC模板
-- -- 酒神杜康
-- tNpcFace[6102] = 64
-- tNpcGossip[22977] = tNpcGossip[22977] or DefaultNpc:new{}
-- tNpcGossip[22977]["OptionHidden"] = 1
-- tNpcGossip[22977]["DialogueText"] = tStriveSeverNewDungeon_Text[22977]

-- -- 等级不足
-- tNpcGossip[22977]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
-- tNpcGossip[22977]["tOption1-1"] = {111}
-- tNpcGossip[22977]["ChkFunc1-1"] = function ()
	-- local nEvent_Vip = tStriveSeverNewDungeon_Stc["Vip"]["EventType"]
	-- local nType_Vip = tStriveSeverNewDungeon_Stc["Vip"]["DataType"]
	-- local nData_Vip = Get_UserStatisticValue(nEvent_Vip,nType_Vip)
	
	-- -- 判断是否已有地宫特权
	-- if nData_Vip ~= 0 then
		-- -- 特权过期则重置
		-- if Task_StcInterval(nEvent_Vip,nType_Vip,nData_Vip,3) then
			-- Task_SetStatistic(nEvent_Vip,nType_Vip,0,1)
			-- Task_SetStcTimestamp(nEvent_Vip,nType_Vip,0)
			-- tNpcGossip[22977]["Text1-1"] = {111,112,113,114,115,116,117,118}
		-- else
			-- local nNowTime = os.time() 
			-- local nBeginTime = Get_UserStcTimestampValue(nEvent_Vip,nType_Vip)
			-- local nDay = math.modf((nNowTime - nBeginTime)/86400)
			-- local nLeft = nData_Vip - nDay
			-- tNpcGossip[22977]["Text119"] = string.format(tStriveSeverNewDungeon_Text[22977]["Text119"],nLeft)
			-- tNpcGossip[22977]["Text1-1"] = {111,112,113,114,115,116,117,119}
		-- end
	-- else
		-- tNpcGossip[22977]["Text1-1"] = {111,112,113,114,115,116,117,118}
	-- end
	
	-- return not User_JudgeLevelAndMetempsychosis(tStriveSeverNewDungeon_Cont["Level"],tStriveSeverNewDungeon_Cont["Metempsychosis"])
-- end

-- -- 活动中（满足参与条件并且未完成所有小任务）
-- tNpcGossip[22977]["Text1-2"] = {121,122,123,124,125,126,127,128,129}
-- tNpcGossip[22977]["tOption1-2"] = {121,122,123,124}
-- tNpcGossip[22977]["ChkFunc1-2"] = function ()
	-- local nEvent_1 = tStriveSeverNewDungeon_Stc["Day"][1]["EventType"]
	-- local nType_1 = tStriveSeverNewDungeon_Stc["Day"][1]["DataType"]
	-- local nLimit_1 = tStriveSeverNewDungeon_Stc["Day"][1]["Limit"]
	
	-- -- 判断活动时间与等级
	-- if not User_JudgeLevelAndMetempsychosis(tStriveSeverNewDungeon_Cont["Level"],tStriveSeverNewDungeon_Cont["Metempsychosis"]) then
		-- return false
	-- end
	
	-- -- 隔天重置掩码
	-- StriveSeverNewDungeon_ClearStc()
	
	-- local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
	
	-- -- 判断是否领取酒窖寻宝袋
	-- if nData_1 == nLimit_1 then
		-- tNpcGossip[22977]["tOption1-2"] = {121,123,124}
	-- else
		-- tNpcGossip[22977]["tOption1-2"] = {121,122,124}
	-- end
	
	-- local nEvent_Vip = tStriveSeverNewDungeon_Stc["Vip"]["EventType"]
	-- local nType_Vip = tStriveSeverNewDungeon_Stc["Vip"]["DataType"]
	-- local nData_Vip = Get_UserStatisticValue(nEvent_Vip,nType_Vip)
	
	-- -- 判断是否已有地宫特权
	-- if nData_Vip ~= 0 then
		-- -- 特权过期则重置
		-- if Task_StcInterval(nEvent_Vip,nType_Vip,nData_Vip,3) then
			-- Task_SetStatistic(nEvent_Vip,nType_Vip,0,1)
			-- Task_SetStcTimestamp(nEvent_Vip,nType_Vip,0)
			-- tNpcGossip[22977]["Text1-2"] = {121,122,123,124,125,126,127,128}
		-- else
			-- local nNowTime = os.time() 
			-- local nBeginTime = Get_UserStcTimestampValue(nEvent_Vip,nType_Vip)
			-- local nDay = math.modf((nNowTime - nBeginTime)/86400)
			-- local nLeft = nData_Vip - nDay
			-- tNpcGossip[22977]["Text129"] = string.format(tStriveSeverNewDungeon_Text[22977]["Text129"],nLeft)
			-- tNpcGossip[22977]["Text1-2"] = {121,122,123,124,125,126,127,129}
		-- end
	-- else
		-- tNpcGossip[22977]["Text1-2"] = {121,122,123,124,125,126,127,128}
	-- end
	
	-- return true
-- end

-- tNpcGossip[22977]["OptionFunc121"] = "StriveSeverNewDungeon_EnterDungeon</N>22977"
-- tNpcGossip[22977]["OptionFunc122"] = "StriveSeverNewDungeon_GetTreasureBag</N>22977</N>1"
-- tNpcGossip[22977]["OptionPoint123"] = "2-3"
-- tNpcGossip[22977]["OptionFunc124"] = "StriveSeverNewDungeon_ChgMap</N>1002"

-- -- 活动时间外
-- tNpcGossip[22977]["Text2-1"] = {211}
-- tNpcGossip[22977]["tOption2-1"] = {211}

-- -- 没有杜康酒
-- tNpcGossip[22977]["Text2-2"] = {221}
-- tNpcGossip[22977]["tOption2-2"] = {221,222}

-- -- 已领取搜宝袋
-- tNpcGossip[22977]["Text2-3"] = {231}
-- tNpcGossip[22977]["tOption2-3"] = {231}

-- tNpcGossip[22977]["OptionFunc221"] = "StriveSeverNewDungeon_ReplaceOfEmoney</N>22977"
-- tNpcGossip[22977]["OptionPoint222"] = "1"
-- tNpcGossip[22977]["OptionPoint231"] = "1"


-- -- 花费天石二次确认
-- tNpcGossip[22977]["Text3-1"] = {311}
-- tNpcGossip[22977]["tOption3-1"] = {311,312}

-- tNpcGossip[22977]["OptionFunc311"] = "StriveSeverNewDungeon_CostEmoneyConfirm</N>22977"



-- -- 火神祝融
-- tNpcFace[6103] = 52
-- tNpcGossip[22978] = tNpcGossip[22978] or DefaultNpc:new{}
-- tNpcGossip[22978]["OptionHidden"] = 1
-- tNpcGossip[22978]["DialogueText"] = tStriveSeverNewDungeon_Text[22978]

-- -- 等级不足
-- tNpcGossip[22978]["Text1-1"] = {111,112,113,114,115,116,117,118}
-- tNpcGossip[22978]["tOption1-1"] = {111}
-- tNpcGossip[22978]["ChkFunc1-1"] = function ()
	-- local nEvent_Vip = tStriveSeverNewDungeon_Stc["Vip"]["EventType"]
	-- local nType_Vip = tStriveSeverNewDungeon_Stc["Vip"]["DataType"]
	-- local nData_Vip = Get_UserStatisticValue(nEvent_Vip,nType_Vip)
	
	-- -- 判断是否已有地宫特权
	-- if nData_Vip ~= 0 then
		-- -- 特权过期则重置
		-- if Task_StcInterval(nEvent_Vip,nType_Vip,nData_Vip,3) then
			-- Task_SetStatistic(nEvent_Vip,nType_Vip,0,1)
			-- Task_SetStcTimestamp(nEvent_Vip,nType_Vip,0)
			-- tNpcGossip[22978]["Text1-1"] = {111,112,113,114,115,116,117}
		-- else
			-- local nNowTime = os.time() 
			-- local nBeginTime = Get_UserStcTimestampValue(nEvent_Vip,nType_Vip)
			-- local nDay = math.modf((nNowTime - nBeginTime)/86400)
			-- local nLeft = nData_Vip - nDay
			-- tNpcGossip[22978]["Text118"] = string.format(tStriveSeverNewDungeon_Text[22977]["Text118"],nLeft)
			-- tNpcGossip[22978]["Text1-1"] = {111,112,113,114,115,116,118}
		-- end
	-- else
		-- tNpcGossip[22978]["Text1-1"] = {111,112,113,114,115,116,117}
	-- end
	
	-- return not User_JudgeLevelAndMetempsychosis(tStriveSeverNewDungeon_Cont["Level"],tStriveSeverNewDungeon_Cont["Metempsychosis"])
-- end

-- -- 活动中（满足参与条件并且未完成所有小任务）
-- tNpcGossip[22978]["Text1-2"] = {121,122,123,124,125,126,127,128}
-- tNpcGossip[22978]["tOption1-2"] = {121,122,123,124}
-- tNpcGossip[22978]["ChkFunc1-2"] = function ()
	-- local nEvent_2 = tStriveSeverNewDungeon_Stc["Day"][2]["EventType"]
	-- local nType_2 = tStriveSeverNewDungeon_Stc["Day"][2]["DataType"]
	-- local nLimit_2 = tStriveSeverNewDungeon_Stc["Day"][2]["Limit"]
	
	-- -- 判断活动时间与等级
	-- if not User_JudgeLevelAndMetempsychosis(tStriveSeverNewDungeon_Cont["Level"],tStriveSeverNewDungeon_Cont["Metempsychosis"]) then
		-- return false
	-- end
	
	-- -- 隔天重置掩码
	-- StriveSeverNewDungeon_ClearStc()
	
	-- local nData_2 = Get_UserStatisticValue(nEvent_2,nType_2)
	
	-- -- 判断是否领取酒窖寻宝袋
	-- if nData_2 == nLimit_2 then
		-- tNpcGossip[22978]["tOption1-2"] = {121,123,124}
	-- else
		-- tNpcGossip[22978]["tOption1-2"] = {121,122,124}
	-- end
	
	-- local nEvent_Vip = tStriveSeverNewDungeon_Stc["Vip"]["EventType"]
	-- local nType_Vip = tStriveSeverNewDungeon_Stc["Vip"]["DataType"]
	-- local nData_Vip = Get_UserStatisticValue(nEvent_Vip,nType_Vip)
	
	-- -- 判断是否已有地宫特权
	-- if nData_Vip ~= 0 then
		-- -- 特权过期则重置
		-- if Task_StcInterval(nEvent_Vip,nType_Vip,nData_Vip,3) then
			-- Task_SetStatistic(nEvent_Vip,nType_Vip,0,1)
			-- Task_SetStcTimestamp(nEvent_Vip,nType_Vip,0)
			-- tNpcGossip[22978]["Text1-2"] = {121,122,123,124,125,126,127}
		-- else
			-- local nNowTime = os.time() 
			-- local nBeginTime = Get_UserStcTimestampValue(nEvent_Vip,nType_Vip)
			-- local nDay = math.modf((nNowTime - nBeginTime)/86400)
			-- local nLeft = nData_Vip - nDay
			-- tNpcGossip[22978]["Text128"] = string.format(tStriveSeverNewDungeon_Text[22978]["Text128"],nLeft)
			-- tNpcGossip[22978]["Text1-2"] = {121,122,123,124,125,126,128}
		-- end
	-- else
		-- tNpcGossip[22978]["Text1-2"] = {121,122,123,124,125,126,127}
	-- end
	
	-- return true
-- end

-- tNpcGossip[22978]["OptionFunc121"] = "StriveSeverNewDungeon_EnterDungeon</N>22978"
-- tNpcGossip[22978]["OptionFunc122"] = "StriveSeverNewDungeon_GetTreasureBag</N>22978</N>2"
-- tNpcGossip[22978]["OptionPoint123"] = "2-3"
-- tNpcGossip[22978]["OptionFunc124"] = "StriveSeverNewDungeon_ChgMap</N>1002"


-- -- 活动时间外
-- tNpcGossip[22978]["Text2-1"] = {211}
-- tNpcGossip[22978]["tOption2-1"] = {211}

-- -- 没有火舞精丹
-- tNpcGossip[22978]["Text2-2"] = {221}
-- tNpcGossip[22978]["tOption2-2"] = {221,222}

-- -- 已领取搜宝袋
-- tNpcGossip[22978]["Text2-3"] = {231}
-- tNpcGossip[22978]["tOption2-3"] = {231}

-- tNpcGossip[22978]["OptionFunc221"] = "StriveSeverNewDungeon_ReplaceOfEmoney</N>22978"
-- tNpcGossip[22978]["OptionPoint222"] = "1"
-- tNpcGossip[22978]["OptionPoint231"] = "1"


-- -- 花费天石二次确认
-- tNpcGossip[22978]["Text3-1"] = {311}
-- tNpcGossip[22978]["tOption3-1"] = {311,312}

-- tNpcGossip[22978]["OptionFunc311"] = "StriveSeverNewDungeon_CostEmoneyConfirm</N>22978"


-- -------------------------------物品模板
-- -- 地宫特权令
-- tItem[3309683] = tItem[3309683] or {}
-- tItem[3309683]["Function"] = function(nItemId,sItemName)
	-- StriveSeverNewDungeon_DungeonVip(nItemId)
-- end

-- -- 龙血灵石
-- tItemFace[3309684] = 1605
-- tItem[3309684] = tItem[3309684] or {}
-- tItem[3309684]["DialogueText"] = tStriveSeverNewDungeon_Text[3309684]
-- tItem[3309684]["Text1-1"] = {111}
-- tItem[3309684]["tOption1-1"] = {111,112}
-- tItem[3309684]["OptionFunc111"] = "StriveSeverNewDungeon_CompoundDragonBall</N>3309684"

-- -- 赤炼石幸运包
-- tItem[3309687] = tItem[3309687] or {}
-- -- 星陨石幸运包
-- tItem[3309688] = tItem[3309687] or {}
-- tItem[3309687]["Function"] = function(nItemId,sItemName)
	-- StriveSeverNewDungeon_RandomUsePack(nItemId)
-- end

-- 300气力值包
tItem[3309689] = tItem[3309689] or {}
tItem[3309689]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tStriveSeverNewDungeon_Reward[nItemId])
end

-- -- 敦煌神纹精粹包
-- tItem[3309706] = tItem[3309706] or {}
-- tItem[3309706]["Function"] = function(nItemId,sItemName)
	-- RewardTemplate_UseItemAndMsg(tStriveSeverNewDungeon_Reward[nItemId])
-- end

-- -- 极寒神纹精粹包
-- tItem[3309707] = tItem[3309707] or {}
-- tItem[3309707]["Function"] = function(nItemId,sItemName)
	-- RewardTemplate_UseItemAndMsg(tStriveSeverNewDungeon_Reward[nItemId])
-- end

-- -------------------------------怪物掉落
-- local tStriveSeverNewDungeon_Monster = {}
	-- -- 精英怪
	-- tStriveSeverNewDungeon_Monster[1] = {}
	-- tStriveSeverNewDungeon_Monster[1]["Function"] = StriveSeverNewDungeon_KillElite
	-- tStriveSeverNewDungeon_Monster[1]["MonsterId"] = {4800,4801}
	-- table.insert(tMonsterDrop_AreaLoad,tStriveSeverNewDungeon_Monster[1])
	-- -- Boss
	-- tStriveSeverNewDungeon_Monster[2] = {}
	-- tStriveSeverNewDungeon_Monster[2]["Function"] = StriveSeverNewDungeon_KillBoss
	-- tStriveSeverNewDungeon_Monster[2]["MonsterId"] = {4802,4803,4805}
	-- table.insert(tMonsterDrop_AreaLoad,tStriveSeverNewDungeon_Monster[2])
	-- -- 小怪
	-- tStriveSeverNewDungeon_Monster[3] = {}
	-- tStriveSeverNewDungeon_Monster[3]["Function"] = StriveSeverNewDungeon_KillNormalMonster
	-- tStriveSeverNewDungeon_Monster[3]["MonsterId"] = {4758,4759,4760,4761,4762,4763,4764,4765,4766,4767,4768,4769,4770,4771}
	-- table.insert(tMonsterDrop_AreaLoad,tStriveSeverNewDungeon_Monster[3])
	-- -- 冰封3-4层额外掉落
	-- tStriveSeverNewDungeon_Monster[4] = {}
	-- tStriveSeverNewDungeon_Monster[4]["Function"] = StriveSeverNewDungeon_ExtraDrop1
	-- tStriveSeverNewDungeon_Monster[4]["Area"] = {7}
	-- table.insert(tMonsterDrop_AreaLoad,tStriveSeverNewDungeon_Monster[4])
	-- -- -- 敦煌2-3层额外掉落
	-- -- tStriveSeverNewDungeon_Monster[5] = {}
	-- -- tStriveSeverNewDungeon_Monster[5]["Function"] = StriveSeverNewDungeon_ExtraDrop2
	-- -- tStriveSeverNewDungeon_Monster[5]["MonsterId"] = {2159,2178,2163,2162,2180}
	-- -- table.insert(tMonsterDrop_AreaLoad,tStriveSeverNewDungeon_Monster[5])
	
	
-- -------------------------------时间自检
-- local tStriveSeverNewDungeon_OnTime = {}
	-- -- 开启时间内每小时
	-- tStriveSeverNewDungeon_OnTime[1] = {}
	-- tStriveSeverNewDungeon_OnTime[1]["Type"] = 2
	-- tStriveSeverNewDungeon_OnTime[1]["TimeType"] = 4
	-- tStriveSeverNewDungeon_OnTime[1]["Multiple"] = {}
	-- tStriveSeverNewDungeon_OnTime[1]["Multiple"][1]  = "13:00 13:00"
	-- tStriveSeverNewDungeon_OnTime[1]["Multiple"][2]  = "14:00 14:00"
	-- tStriveSeverNewDungeon_OnTime[1]["Multiple"][3]  = "15:00 15:00"
	-- tStriveSeverNewDungeon_OnTime[1]["Multiple"][4]  = "16:00 16:00"
	-- tStriveSeverNewDungeon_OnTime[1]["Multiple"][5]  = "17:00 17:00"
	-- tStriveSeverNewDungeon_OnTime[1]["Multiple"][6]  = "18:00 18:00"
	-- tStriveSeverNewDungeon_OnTime[1]["Multiple"][7]  = "19:00 19:00"
	-- tStriveSeverNewDungeon_OnTime[1]["Multiple"][8]  = "20:00 20:00"
	-- tStriveSeverNewDungeon_OnTime[1]["Multiple"][9]  = "21:00 21:00"
	-- tStriveSeverNewDungeon_OnTime[1]["Multiple"][10]  = "22:00 22:00"
	-- tStriveSeverNewDungeon_OnTime[1]["Func"] = StriveSeverNewDungeon_ClearGlobal
	-- table.insert(tSystemTime_InitialData,tStriveSeverNewDungeon_OnTime[1])
	
	-- -- 关闭敦煌酒窖
	-- tStriveSeverNewDungeon_OnTime[2] = {}
	-- tStriveSeverNewDungeon_OnTime[2]["Type"] = 2
	-- tStriveSeverNewDungeon_OnTime[2]["TimeType"] = 4
	-- tStriveSeverNewDungeon_OnTime[2]["Multiple"] = {}
	-- tStriveSeverNewDungeon_OnTime[2]["Multiple"][1]  = "19:01 19:03"
	-- tStriveSeverNewDungeon_OnTime[2]["Func"] = StriveSeverNewDungeon_ClearMap1
	-- table.insert(tSystemTime_InitialData,tStriveSeverNewDungeon_OnTime[2])
	
	-- -- 关闭极寒火窟
	-- tStriveSeverNewDungeon_OnTime[3] = {}
	-- tStriveSeverNewDungeon_OnTime[3]["Type"] = 2
	-- tStriveSeverNewDungeon_OnTime[3]["TimeType"] = 4
	-- tStriveSeverNewDungeon_OnTime[3]["Multiple"] = {}
	-- tStriveSeverNewDungeon_OnTime[3]["Multiple"][1]  = "22:01 22:03"
	-- tStriveSeverNewDungeon_OnTime[3]["Func"] = StriveSeverNewDungeon_ClearMap2
	-- table.insert(tSystemTime_InitialData,tStriveSeverNewDungeon_OnTime[3])
	
	-- -- 刷新BOSS
	-- tStriveSeverNewDungeon_OnTime[4] = {}
	-- tStriveSeverNewDungeon_OnTime[4]["Type"] = 3  -- 刷怪
	-- tStriveSeverNewDungeon_OnTime[4]["TimeType"] = 5  -- 小时时间
	-- tStriveSeverNewDungeon_OnTime[4]["Multiple"] = {}
	-- tStriveSeverNewDungeon_OnTime[4]["Multiple"][1] = "00 00"
	-- tStriveSeverNewDungeon_OnTime[4]["Func"] = StriveSeverNewDungeon_BrushBoss
	-- table.insert(tSystemTime_InitialData,tStriveSeverNewDungeon_OnTime[4])
	
	
-- -------------------------------服务器启动	
-- tServerStart["tFunction"] = tServerStart["tFunction"] or {}
-- table.insert(tServerStart["tFunction"],StriveSeverNewDungeon_NewServerStart)
	
	