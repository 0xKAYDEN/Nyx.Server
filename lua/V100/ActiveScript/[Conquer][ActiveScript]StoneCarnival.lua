------------------------------------------------------------------------------------
--Name:			180918[英文征服][活动脚本]10月追加大狂欢线上部分制作
--Purpose:		追加大狂欢
--Creator:		wzh
--Created:		2018/09/18
------------------------------------------------------------------------------------
-- 前缀
-- StoneCarnival_

-- LogId 12001167

-- stc掩码说明 
-- stc 183,36	是否上交过勋章
-- stc 183,37	是否领取过勋章
-- stc 183,38	+6赤炼石（赠）狂欢包打开次数
-- stc 183,39	+6赤炼石狂欢包打开次数
-- stc 183,40	+8赤炼石（赠）狂欢包打开次数
-- stc 183,41	+8赤炼石狂欢包打开次数
-- stc 183,42	背包信发放

-- 全局表记录
-- global	

--------------------------------------常量配置部分---------------------------------------
-- 常量表
local tStoneCarnival_Cont = {}
	-- 购买礼包花费天石
	tStoneCarnival_Cont["Cost"] = 1
	
	-- 邮件
	tStoneCarnival_Cont["MailActionId"] = 569932
	tStoneCarnival_Cont["MailExistDay"] = 30
	
	-- 开启礼包花费
	tStoneCarnival_Cont["Open"] = {}
	-- +6赤炼石（赠）狂欢包
	tStoneCarnival_Cont["Open"][3310794] = {}
	tStoneCarnival_Cont["Open"][3310794][1] = 399
	tStoneCarnival_Cont["Open"][3310794][2] = 389
	tStoneCarnival_Cont["Open"][3310794][3] = 369
	tStoneCarnival_Cont["Open"][3310794][4] = 349
	tStoneCarnival_Cont["Open"][3310794][5] = 319
	-- +6赤炼石狂欢包
	tStoneCarnival_Cont["Open"][3310795] = {}
	tStoneCarnival_Cont["Open"][3310795][1] = 1599
	tStoneCarnival_Cont["Open"][3310795][2] = 1499
	tStoneCarnival_Cont["Open"][3310795][3] = 1399
	tStoneCarnival_Cont["Open"][3310795][4] = 1359
	tStoneCarnival_Cont["Open"][3310795][5] = 1259
	-- +8赤炼石（赠）狂欢包
	tStoneCarnival_Cont["Open"][3310796] = {}
	tStoneCarnival_Cont["Open"][3310796][1] = 3249
	tStoneCarnival_Cont["Open"][3310796][2] = 3149
	tStoneCarnival_Cont["Open"][3310796][3] = 2949
	tStoneCarnival_Cont["Open"][3310796][4] = 2749
	tStoneCarnival_Cont["Open"][3310796][5] = 2599
	-- +8赤炼石狂欢包
	tStoneCarnival_Cont["Open"][3310797] = {}
	tStoneCarnival_Cont["Open"][3310797][1] = 12999
	tStoneCarnival_Cont["Open"][3310797][2] = 11999
	tStoneCarnival_Cont["Open"][3310797][3] = 10999
	tStoneCarnival_Cont["Open"][3310797][4] = 10599
	tStoneCarnival_Cont["Open"][3310797][5] = 9599
	
	-----------新增售卖礼包
	-- 1颗璀璨星陨石礼包
	tStoneCarnival_Cont["Open"][3323198] = {}
	tStoneCarnival_Cont["Open"][3323198][1] = 999
	tStoneCarnival_Cont["Open"][3323198][2] = 935
	tStoneCarnival_Cont["Open"][3323198][3] = 820
	tStoneCarnival_Cont["Open"][3323198][4] = 695
	tStoneCarnival_Cont["Open"][3323198][5] = 550
	
	-- 4颗璀璨星陨石礼包
	tStoneCarnival_Cont["Open"][3323199] = {}
	tStoneCarnival_Cont["Open"][3323199][1] = 3999
	tStoneCarnival_Cont["Open"][3323199][2] = 3690
	tStoneCarnival_Cont["Open"][3323199][3] = 3380
	tStoneCarnival_Cont["Open"][3323199][4] = 3260
	tStoneCarnival_Cont["Open"][3323199][5] = 2950
	
-- 掩码表
local tStoneCarnival_Stc = {}
	-- 是否上交过勋章
	tStoneCarnival_Stc[1] = {}
	tStoneCarnival_Stc[1]["EventType"] = 183
	tStoneCarnival_Stc[1]["DataType"] = 36
	-- 是否领取过勋章
	tStoneCarnival_Stc[2] = {}
	tStoneCarnival_Stc[2]["EventType"] = 183
	tStoneCarnival_Stc[2]["DataType"] = 37
	-- +6赤炼石（赠）狂欢包打开次数
	tStoneCarnival_Stc[3310794] = {}
	tStoneCarnival_Stc[3310794]["EventType"] = 183
	tStoneCarnival_Stc[3310794]["DataType"] = 38
	-- +6赤炼石狂欢包打开次数
	tStoneCarnival_Stc[3310795] = {}
	tStoneCarnival_Stc[3310795]["EventType"] = 183
	tStoneCarnival_Stc[3310795]["DataType"] = 39
	-- +8赤炼石（赠）狂欢包打开次数
	tStoneCarnival_Stc[3310796] = {}
	tStoneCarnival_Stc[3310796]["EventType"] = 183
	tStoneCarnival_Stc[3310796]["DataType"] = 40
	-- +8赤炼石狂欢包打开次数
	tStoneCarnival_Stc[3310797] = {}
	tStoneCarnival_Stc[3310797]["EventType"] = 183
	tStoneCarnival_Stc[3310797]["DataType"] = 41

	-----复用新增
	
	-- 1颗璀璨星陨石礼包打开次数
	tStoneCarnival_Stc[3323198] = {}
	tStoneCarnival_Stc[3323198]["EventType"] = 203
	tStoneCarnival_Stc[3323198]["DataType"] = 2
	-- 4颗璀璨星陨石礼包打开次数
	tStoneCarnival_Stc[3323199] = {}
	tStoneCarnival_Stc[3323199]["EventType"] = 203
	tStoneCarnival_Stc[3323199]["DataType"] = 3
	
-- Log表
local tStoneCarnival_Log = {}
	-- 删除log
	tStoneCarnival_Log["Del"] = "0,0,%d,%d,12001156,0,0,0"
	-- Emoneylog
	tStoneCarnival_Log["Emoney"] = {}
	tStoneCarnival_Log["Emoney"]["HandIn"] = "350	21746	0	0	1	"
	-- 打开礼包
	-- +6赤炼石（赠）狂欢包
	tStoneCarnival_Log["Emoney"][3310794] = {}
	tStoneCarnival_Log["Emoney"][3310794][1] = "350	21747	399	399	1	"
	tStoneCarnival_Log["Emoney"][3310794][2] = "350	21748	389	389	1	"
	tStoneCarnival_Log["Emoney"][3310794][3] = "350	21749	369	369	1	"
	tStoneCarnival_Log["Emoney"][3310794][4] = "350	21750	349	349	1	"
	tStoneCarnival_Log["Emoney"][3310794][5] = "350	21751	319	319	1	"
	-- +6赤炼石狂欢包
	tStoneCarnival_Log["Emoney"][3310795] = {}
	tStoneCarnival_Log["Emoney"][3310795][1] = "350	21757	1599	1599	1	"
	tStoneCarnival_Log["Emoney"][3310795][2] = "350	21758	1499	1499	1	"
	tStoneCarnival_Log["Emoney"][3310795][3] = "350	21759	1399	1399	1	"
	tStoneCarnival_Log["Emoney"][3310795][4] = "350	21760	1359	1359	1	"
	tStoneCarnival_Log["Emoney"][3310795][5] = "350	21761	1259	1259	1	"
	-- +8赤炼石（赠）狂欢包
	tStoneCarnival_Log["Emoney"][3310796] = {}
	tStoneCarnival_Log["Emoney"][3310796][1] = "350	21752	3249	3249	1	"
	tStoneCarnival_Log["Emoney"][3310796][2] = "350	21753	3149	3149	1	"
	tStoneCarnival_Log["Emoney"][3310796][3] = "350	21754	2949	2949	1	"
	tStoneCarnival_Log["Emoney"][3310796][4] = "350	21755	2749	2749	1	"
	tStoneCarnival_Log["Emoney"][3310796][5] = "350	21756	2599	2599	1	"
	-- +8赤炼石狂欢包
	tStoneCarnival_Log["Emoney"][3310797] = {}
	tStoneCarnival_Log["Emoney"][3310797][1] = "350	21762	12999	12999	1	"
	tStoneCarnival_Log["Emoney"][3310797][2] = "350	21763	11999	11999	1	"
	tStoneCarnival_Log["Emoney"][3310797][3] = "350	21764	10999	10999	1	"
	tStoneCarnival_Log["Emoney"][3310797][4] = "350	21765	10599	10599	1	"
	tStoneCarnival_Log["Emoney"][3310797][5] = "350	21766	9599	9599	1	"
	
	--------复用新增
	
	-- 1颗璀璨星陨石礼包
	tStoneCarnival_Log["Emoney"][3323198] = {}
	tStoneCarnival_Log["Emoney"][3323198][1] = "10000	0794	999	999	1	"
	tStoneCarnival_Log["Emoney"][3323198][2] = "10000	0795	935	935	1	"
	tStoneCarnival_Log["Emoney"][3323198][3] = "10000	0796	820	820	1	"
	tStoneCarnival_Log["Emoney"][3323198][4] = "10000	0797	695	695	1	"
	tStoneCarnival_Log["Emoney"][3323198][5] = "10000	0798	550	550	1	"
	-- 4颗璀璨星陨石礼包
	tStoneCarnival_Log["Emoney"][3323199] = {}
	tStoneCarnival_Log["Emoney"][3323199][1] = "10000	0799	3999	3999	1	"
	tStoneCarnival_Log["Emoney"][3323199][2] = "10000	0800	3690	3690	1	"
	tStoneCarnival_Log["Emoney"][3323199][3] = "10000	0801	3380	3380	1	"
	tStoneCarnival_Log["Emoney"][3323199][4] = "10000	0802	3260	3260	1	"
	tStoneCarnival_Log["Emoney"][3323199][5] = "10000	0803	2950	2950	1	"	
	
-- 奖励表
local tStoneCarnival_Reward = {}
	-- 购买+6赤炼石（赠）狂欢包
	tStoneCarnival_Reward[3310794] = {}
	tStoneCarnival_Reward[3310794]["RewardItem"] = {}
	tStoneCarnival_Reward[3310794]["RewardItem"][1] = {}
	tStoneCarnival_Reward[3310794]["RewardItem"][1]["Id"] = 3310794
	tStoneCarnival_Reward[3310794]["RewardItem"][1]["Attr"] = "0 1"
	tStoneCarnival_Reward[3310794]["LogId"] = 12001167
	-- 购买+6赤炼石狂欢包
	tStoneCarnival_Reward[3310795] = {}
	tStoneCarnival_Reward[3310795]["RewardItem"] = {}
	tStoneCarnival_Reward[3310795]["RewardItem"][1] = {}
	tStoneCarnival_Reward[3310795]["RewardItem"][1]["Id"] = 3310795
	tStoneCarnival_Reward[3310795]["RewardItem"][1]["Attr"] = "0 1"
	tStoneCarnival_Reward[3310795]["LogId"] = 12001167
	-- 购买+8赤炼石（赠）狂欢包
	tStoneCarnival_Reward[3310796] = {}
	tStoneCarnival_Reward[3310796]["RewardItem"] = {}
	tStoneCarnival_Reward[3310796]["RewardItem"][1] = {}
	tStoneCarnival_Reward[3310796]["RewardItem"][1]["Id"] = 3310796
	tStoneCarnival_Reward[3310796]["RewardItem"][1]["Attr"] = "0 1"
	tStoneCarnival_Reward[3310796]["LogId"] = 12001167
	-- 购买+8赤炼石狂欢包
	tStoneCarnival_Reward[3310797] = {}
	tStoneCarnival_Reward[3310797]["RewardItem"] = {}
	tStoneCarnival_Reward[3310797]["RewardItem"][1] = {}
	tStoneCarnival_Reward[3310797]["RewardItem"][1]["Id"] = 3310797
	tStoneCarnival_Reward[3310797]["RewardItem"][1]["Attr"] = "0 1"
	tStoneCarnival_Reward[3310797]["LogId"] = 12001167
	
	--------复用新增
	
	-- 购买1颗璀璨星陨石礼包
	tStoneCarnival_Reward[3323198] = {}
	tStoneCarnival_Reward[3323198]["RewardItem"] = {}
	tStoneCarnival_Reward[3323198]["RewardItem"][1] = {}
	tStoneCarnival_Reward[3323198]["RewardItem"][1]["Id"] = 3323198
	tStoneCarnival_Reward[3323198]["RewardItem"][1]["Attr"] = "0 1"
	tStoneCarnival_Reward[3323198]["LogId"] = 12001167
	-- 购买4颗璀璨星陨石礼包
	tStoneCarnival_Reward[3323199] = {}
	tStoneCarnival_Reward[3323199]["RewardItem"] = {}
	tStoneCarnival_Reward[3323199]["RewardItem"][1] = {}
	tStoneCarnival_Reward[3323199]["RewardItem"][1]["Id"] = 3323199
	tStoneCarnival_Reward[3323199]["RewardItem"][1]["Attr"] = "0 1"
	tStoneCarnival_Reward[3323199]["LogId"] = 12001167
	
	
	-- 打开狂欢包
	tStoneCarnival_Reward["Open"] = {}
	-- 打开+6赤炼石（赠）狂欢包
	tStoneCarnival_Reward["Open"][3310794] = {}
	tStoneCarnival_Reward["Open"][3310794]["RewardItem"] = {}
	tStoneCarnival_Reward["Open"][3310794]["RewardItem"][1] = {}
	tStoneCarnival_Reward["Open"][3310794]["RewardItem"][1]["Id"] = 730006
	tStoneCarnival_Reward["Open"][3310794]["RewardItem"][1]["Attr"] = "0 1 3"
	tStoneCarnival_Reward["Open"][3310794]["LogId"] = 12001167
	-- 打开+6赤炼石狂欢包
	tStoneCarnival_Reward["Open"][3310795] = {}
	tStoneCarnival_Reward["Open"][3310795]["RewardItem"] = {}
	tStoneCarnival_Reward["Open"][3310795]["RewardItem"][1] = {}
	tStoneCarnival_Reward["Open"][3310795]["RewardItem"][1]["Id"] = 730006
	tStoneCarnival_Reward["Open"][3310795]["RewardItem"][1]["Attr"] = "0 1"
	tStoneCarnival_Reward["Open"][3310795]["LogId"] = 12001167
	-- 打开+8赤炼石（赠）狂欢包
	tStoneCarnival_Reward["Open"][3310796] = {}
	tStoneCarnival_Reward["Open"][3310796]["RewardItem"] = {}
	tStoneCarnival_Reward["Open"][3310796]["RewardItem"][1] = {}
	tStoneCarnival_Reward["Open"][3310796]["RewardItem"][1]["Id"] = 730008
	tStoneCarnival_Reward["Open"][3310796]["RewardItem"][1]["Attr"] = "0 1 3"
	tStoneCarnival_Reward["Open"][3310796]["LogId"] = 12001167
	-- 打开+8赤炼石狂欢包
	tStoneCarnival_Reward["Open"][3310797] = {}
	tStoneCarnival_Reward["Open"][3310797]["RewardItem"] = {}
	tStoneCarnival_Reward["Open"][3310797]["RewardItem"][1] = {}
	tStoneCarnival_Reward["Open"][3310797]["RewardItem"][1]["Id"] = 730008
	tStoneCarnival_Reward["Open"][3310797]["RewardItem"][1]["Attr"] = "0 1"
	tStoneCarnival_Reward["Open"][3310797]["LogId"] = 12001167
	
	---------复用新增
	
	-- 打开1颗璀璨星陨石礼包
	tStoneCarnival_Reward["Open"][3323198] = {}
	tStoneCarnival_Reward["Open"][3323198]["RewardItem"] = {}
	tStoneCarnival_Reward["Open"][3323198]["RewardItem"][1] = {}
	tStoneCarnival_Reward["Open"][3323198]["RewardItem"][1]["Id"] = 3009003
	tStoneCarnival_Reward["Open"][3323198]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tStoneCarnival_Reward["Open"][3323198]["LogId"] = 12001167
	-- 打开4颗璀璨星陨石礼包
	tStoneCarnival_Reward["Open"][3323199] = {}
	tStoneCarnival_Reward["Open"][3323199]["RewardItem"] = {}
	tStoneCarnival_Reward["Open"][3323199]["RewardItem"][1] = {}
	tStoneCarnival_Reward["Open"][3323199]["RewardItem"][1]["Id"] = 3009003
	tStoneCarnival_Reward["Open"][3323199]["RewardItem"][1]["Attr"] = "0 4 0 2880 1"
	tStoneCarnival_Reward["Open"][3323199]["LogId"] = 12001167
	
	-- 首次开礼包给狂欢购勋章
	tStoneCarnival_Reward[3310798] = {}
	tStoneCarnival_Reward[3310798]["RewardItem"] = {}
	tStoneCarnival_Reward[3310798]["RewardItem"][1] = {}
	tStoneCarnival_Reward[3310798]["RewardItem"][1]["Id"] = 3310798
	tStoneCarnival_Reward[3310798]["RewardItem"][1]["Attr"] = "0 1"
	tStoneCarnival_Reward[3310798]["LogId"] = 12001167
	
	
--------------4月新增忍者部分
	tStoneCarnival_Reward["MetePackStc"]={}
	tStoneCarnival_Reward["MetePackStc"]["Event"]= 217
	tStoneCarnival_Reward["MetePackStc"]["Type"]= 83
	
	tStoneCarnival_Reward["PackToLevel"]={}
	tStoneCarnival_Reward["PackToLevel"][1]= 0120 
	tStoneCarnival_Reward["PackToLevel"][2]= 180 
	tStoneCarnival_Reward["PackToLevel"][3]= 220
	
	tStoneCarnival_Reward["PackToLevel"][4]= 2080
	tStoneCarnival_Reward["PackToLevel"][5]= 20120 
	tStoneCarnival_Reward["PackToLevel"][6]= 20140 
	
	tStoneCarnival_Reward["MeteToLevel"]={}
	tStoneCarnival_Reward["MeteToLevel"][1]={}
	tStoneCarnival_Reward["MeteToLevel"][1][1]= 0 
	tStoneCarnival_Reward["MeteToLevel"][1][2]= 120
	
	tStoneCarnival_Reward["MeteToLevel"][2]={}
	tStoneCarnival_Reward["MeteToLevel"][2][1]= 1 
	tStoneCarnival_Reward["MeteToLevel"][2][2]= 80
	
	tStoneCarnival_Reward["MeteToLevel"][3]={}
	tStoneCarnival_Reward["MeteToLevel"][3][1]= 1 
	tStoneCarnival_Reward["MeteToLevel"][3][2]= 120 
	
	tStoneCarnival_Reward["MeteToLevel"][4]={}
	tStoneCarnival_Reward["MeteToLevel"][4][1]= 2 
	tStoneCarnival_Reward["MeteToLevel"][4][2]= 80 
	
	tStoneCarnival_Reward["MeteToLevel"][5]={}
	tStoneCarnival_Reward["MeteToLevel"][5][1]= 2 
	tStoneCarnival_Reward["MeteToLevel"][5][2]= 120 
	
	tStoneCarnival_Reward["MeteToLevel"][6]={}
	tStoneCarnival_Reward["MeteToLevel"][6][1]= 2 
	tStoneCarnival_Reward["MeteToLevel"][6][2]= 140
	
	--等级奖励
	-- ===0转120级忍者奖励
	-- ===索引:tStoneCarnival_Reward["MetePack"][1]
	-- ===
	-- ===
	-- ===
	-- ===
	tStoneCarnival_Reward["MetePack"] = {}
	tStoneCarnival_Reward["MetePack"][1] = {}
	tStoneCarnival_Reward["MetePack"][1]["LogId"] = 12001167
	tStoneCarnival_Reward["MetePack"][1]["RewardItem"] = {}
	tStoneCarnival_Reward["MetePack"][1]["RewardItem"][1] = {}
	tStoneCarnival_Reward["MetePack"][1]["RewardItem"][1]["Id"] = 723700 -- ExpBall[723700][属性:0][叠加:10][金币:0], 【表格】经验球
	tStoneCarnival_Reward["MetePack"][1]["RewardItem"][1]["Attr"] = "0 3 3" -- ExpBall（赠）*3
	tStoneCarnival_Reward["MetePack"][1]["RewardItem"][2] = {}
	tStoneCarnival_Reward["MetePack"][1]["RewardItem"][2]["Id"] = 730002 -- +2Stone[730002][属性:0][叠加:0][金币:0], 【表格】+2赤炼石
	tStoneCarnival_Reward["MetePack"][1]["RewardItem"][2]["Attr"] = "0 1 3" -- +2Stone（赠）*1
	tStoneCarnival_Reward["MetePack"][1]["RewardItem"][3] = {}
	tStoneCarnival_Reward["MetePack"][1]["RewardItem"][3]["Id"] = 721259 -- CelestialStone[721259][属性:0][叠加:10][金币:0], 【表格】涅槃灵石
	tStoneCarnival_Reward["MetePack"][1]["RewardItem"][3]["Attr"] = "0 1 3" -- CelestialStone（赠）*1
	tStoneCarnival_Reward["MetePack"][1]["RewardEffect"] = {}
	tStoneCarnival_Reward["MetePack"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStoneCarnival_Reward["MetePack"][1]["RewardEffect"]["Effect"] = "angelwing"


	tStoneCarnival_Reward["MetePack"][2] = {}
	-- ===1转80级忍者奖励
	-- ===索引:tStoneCarnival_Reward["MetePack"][2]
	-- ===
	-- ===
	-- ===
	-- ===
	tStoneCarnival_Reward["MetePack"][2]["LogId"] = 12001167
	tStoneCarnival_Reward["MetePack"][2]["RewardItem"] = {}
	tStoneCarnival_Reward["MetePack"][2]["RewardItem"][1] = {}
	tStoneCarnival_Reward["MetePack"][2]["RewardItem"][1]["Id"] = 3308948 -- MeteorScroll[720027][属性:0][叠加:0][金币:0], 【表格】流星卷
	tStoneCarnival_Reward["MetePack"][2]["RewardItem"][1]["Attr"] = "0 1" -- MeteorScroll（赠）*10
	tStoneCarnival_Reward["MetePack"][2]["RewardItem"][2] = {}
	tStoneCarnival_Reward["MetePack"][2]["RewardItem"][2]["Id"] = 1088000 -- DragonBall[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠
	tStoneCarnival_Reward["MetePack"][2]["RewardItem"][2]["Attr"] = "0 3 3" -- DragonBall（赠）*3
	tStoneCarnival_Reward["MetePack"][2]["RewardItem"][3] = {}
	tStoneCarnival_Reward["MetePack"][2]["RewardItem"][3]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】+3赤炼石
	tStoneCarnival_Reward["MetePack"][2]["RewardItem"][3]["Attr"] = "0 1 3" -- +3Stone（赠）*1
	tStoneCarnival_Reward["MetePack"][2]["RewardEffect"] = {}
	tStoneCarnival_Reward["MetePack"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStoneCarnival_Reward["MetePack"][2]["RewardEffect"]["Effect"] = "angelwing"


	tStoneCarnival_Reward["MetePack"][3] = {}
	-- ===1转120级忍者奖励
	-- ===索引:tStoneCarnival_Reward["MetePack"][3]
	-- ===
	-- ===
	-- ===
	-- ===
	tStoneCarnival_Reward["MetePack"][3]["LogId"] = 12001167
	tStoneCarnival_Reward["MetePack"][3]["RewardCultivation"] = {}
	tStoneCarnival_Reward["MetePack"][3]["RewardCultivation"]["Value"] = 1000 -- 修行值, 【需求】1000修行值
	tStoneCarnival_Reward["MetePack"][3]["RewardStrengthValue"] = {}
	tStoneCarnival_Reward["MetePack"][3]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000气力值
	tStoneCarnival_Reward["MetePack"][3]["RewardItem"] = {}
	tStoneCarnival_Reward["MetePack"][3]["RewardItem"][1] = {}
	tStoneCarnival_Reward["MetePack"][3]["RewardItem"][1]["Id"] = 723701 -- ExemptionToken[723701][属性:0][叠加:0][金币:0], 【表格】免试金牌
	tStoneCarnival_Reward["MetePack"][3]["RewardItem"][1]["Attr"] = "0 1 3" -- ExemptionToken（赠）*1
	tStoneCarnival_Reward["MetePack"][3]["RewardEffect"] = {}
	tStoneCarnival_Reward["MetePack"][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStoneCarnival_Reward["MetePack"][3]["RewardEffect"]["Effect"] = "angelwing"


	tStoneCarnival_Reward["MetePack"][4] = {}
	-- ===2转80级忍者奖励
	-- ===索引:tStoneCarnival_Reward["MetePack"][4]
	-- ===
	-- ===
	-- ===
	-- ===
	tStoneCarnival_Reward["MetePack"][4]["LogId"] = 12001167
	tStoneCarnival_Reward["MetePack"][4]["RewardEMoneyMono"] = {}
	tStoneCarnival_Reward["MetePack"][4]["RewardEMoneyMono"]["Value"] = 1000 -- 赠点, 【需求】1000赠品天石
	tStoneCarnival_Reward["MetePack"][4]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1679"
	tStoneCarnival_Reward["MetePack"][4]["RewardItem"] = {}
	tStoneCarnival_Reward["MetePack"][4]["RewardItem"][1] = {}
	tStoneCarnival_Reward["MetePack"][4]["RewardItem"][1]["Id"] = 3306370 -- YellowRuneFragment[3306370][属性:9][叠加:10000][金币:0], 【表格】随机黄色神纹碎片
	tStoneCarnival_Reward["MetePack"][4]["RewardItem"][1]["Attr"] = "0 10" -- YellowRuneFragment*10
	tStoneCarnival_Reward["MetePack"][4]["RewardItem"][2] = {}
	tStoneCarnival_Reward["MetePack"][4]["RewardItem"][2]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】免费强炼丹
	tStoneCarnival_Reward["MetePack"][4]["RewardItem"][2]["Attr"] = "0 20 3" -- FavoredTrainingPill（赠）*20（[错误]物品数量超10个）
	tStoneCarnival_Reward["MetePack"][4]["RewardEffect"] = {}
	tStoneCarnival_Reward["MetePack"][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStoneCarnival_Reward["MetePack"][4]["RewardEffect"]["Effect"] = "angelwing"


	tStoneCarnival_Reward["MetePack"][5] = {}
	-- ===2转120级忍者奖励
	-- ===索引:tStoneCarnival_Reward["MetePack"][5]
	-- ===
	-- ===
	-- ===
	-- ===
	tStoneCarnival_Reward["MetePack"][5]["LogId"] = 12001167
	tStoneCarnival_Reward["MetePack"][5]["RewardItem"] = {}
	tStoneCarnival_Reward["MetePack"][5]["RewardItem"][1] = {}
	tStoneCarnival_Reward["MetePack"][5]["RewardItem"][1]["Id"] = 3306370 -- YellowRuneFragment[3306370][属性:9][叠加:10000][金币:0], 【表格】黄色神纹碎片
	tStoneCarnival_Reward["MetePack"][5]["RewardItem"][1]["Attr"] = "0 10" -- YellowRuneFragment*10
	tStoneCarnival_Reward["MetePack"][5]["RewardItem"][2] = {}
	tStoneCarnival_Reward["MetePack"][5]["RewardItem"][2]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tStoneCarnival_Reward["MetePack"][5]["RewardItem"][2]["Attr"] = "0 50 3" -- UniversalRuneEssence（赠）*50
	tStoneCarnival_Reward["MetePack"][5]["RewardItem"][3] = {}
	tStoneCarnival_Reward["MetePack"][5]["RewardItem"][3]["Id"] = 4010301 -- Assassin[4010301][属性:8][叠加:0][金币:0], 【表格】忍者红色神纹-忍法暗杀
	tStoneCarnival_Reward["MetePack"][5]["RewardItem"][3]["Attr"] = "0 1 3" -- Assassin（赠）*1
	tStoneCarnival_Reward["MetePack"][5]["RewardEffect"] = {}
	tStoneCarnival_Reward["MetePack"][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStoneCarnival_Reward["MetePack"][5]["RewardEffect"]["Effect"] = "angelwing"


	tStoneCarnival_Reward["MetePack"][6] = {}
	-- ===2转140级忍者奖励
	-- ===索引:tStoneCarnival_Reward["MetePack"][6]
	-- ===
	-- ===
	-- ===
	-- ===
	tStoneCarnival_Reward["MetePack"][6]["LogId"] = 12001167
	tStoneCarnival_Reward["MetePack"][6]["RewardEMoneyMono"] = {}
	tStoneCarnival_Reward["MetePack"][6]["RewardEMoneyMono"]["Value"] = 1500 -- 赠点, 【需求】1500赠品天石
	tStoneCarnival_Reward["MetePack"][6]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1680"
	tStoneCarnival_Reward["MetePack"][6]["RewardItem"] = {}
	tStoneCarnival_Reward["MetePack"][6]["RewardItem"][1] = {}
	tStoneCarnival_Reward["MetePack"][6]["RewardItem"][1]["Id"] = 3009102 -- MoonFruit[3009102][属性:9][叠加:10000][金币:0], 【表格】辉月果
	tStoneCarnival_Reward["MetePack"][6]["RewardItem"][1]["Attr"] = "0 1" -- MoonFruit*1
	tStoneCarnival_Reward["MetePack"][6]["RewardItem"][2] = {}
	tStoneCarnival_Reward["MetePack"][6]["RewardItem"][2]["Id"] = 195485 -- InvincibleEastern(Supreme)[195485][属性:0][叠加:0][金币:0], 【表格】30天InvincibleEastern（Supreme）*1
	tStoneCarnival_Reward["MetePack"][6]["RewardItem"][2]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的InvincibleEastern(Supreme)（赠）*1
	tStoneCarnival_Reward["MetePack"][6]["RewardEffect"] = {}
	tStoneCarnival_Reward["MetePack"][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStoneCarnival_Reward["MetePack"][6]["RewardEffect"]["Effect"] = "angelwing"



----------------------------------------逻辑部分-------------------------------------
-- 购买礼包
function StoneCarnival_Buy(nNpcId,nItemId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["StoneCarnival"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	-- 天石不足
	local nUserEmoney = Get_UserEMoney()
	if nUserEmoney < tStoneCarnival_Cont["Cost"] then
		Sys_MsgBox(tStoneCarnival_Text[105]["NotEnoughEmoney"])
		return false
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tStoneCarnival_Reward[nItemId])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tStoneCarnival_Text[105]["FullBag"])
		return false
	end
	
	-- 扣天石
	if User_AddEMoney(-tStoneCarnival_Cont["Cost"]) then
		-- 给礼包
		RewardTemplate_UseItemAndMsg(tStoneCarnival_Reward[nItemId])
		
		return true
	end
end

-- 上交勋章
function StoneCarnival_HandIn(nNpcId,nItemId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["StoneCarnival"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	-- 判断物品是否存在
	if not Item_ChkItem(nItemId) then
		LinkNpcGossipFunc_New(nNpcId,"2-8")
		return false
	end
	
	-- 删除勋章
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local nEvent_1 = tStoneCarnival_Stc[1]["EventType"]
		local nType_1 = tStoneCarnival_Stc[1]["DataType"]
		
		Task_SetStatistic(nEvent_1,nType_1,1,1)
		Task_SetStcTimestamp(nEvent_1,nType_1,0)
		
		-- 记emoneylog 供运营统计参与玩家
		Sys_SaveEmoneyBuy(tStoneCarnival_Log["Emoney"]["HandIn"])
		LinkNpcGossipFunc_New(nNpcId,"2-6")
		return true
	end
end

-- 打开线下页面
function StoneCarnival_Web(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["StoneCarnival"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	local nEvent_1 = tStoneCarnival_Stc[1]["EventType"]
	local nType_1 = tStoneCarnival_Stc[1]["DataType"]
	local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
	
	-- 未参与
	if nData_1 == 0 then
		LinkNpcGossipFunc_New(nNpcId,"2-7")
		return false
	else
		User_SendWebPage(tStoneCarnival_Text["Web"])
		return true
	end
end

-- 使用狂欢包
function StoneCarnival_UsePack(nItemId)
	-- 物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["StoneCarnival"]["PackTime"]) then
		local nNum = Get_CountItemType(nItemId,0)
		
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tStoneCarnival_Text[2005]["OutTime"])
			
			-- 记录删除log
			local sLog = string.format(tStoneCarnival_Log["Del"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sLog)
		end
		
		return false
	end
	
	local nEvent = tStoneCarnival_Stc[nItemId]["EventType"]
	local nType = tStoneCarnival_Stc[nItemId]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	
	-- 重置
	if nData >= 5 then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	LinkItemGossipFunc_New(nItemId,"1")
	return true
end

-- 打开狂欢包
function StoneCarnival_OpenPack(nItemId)
	-- 物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["StoneCarnival"]["PackTime"]) then
		local nNum = Get_CountItemType(nItemId,0)
		
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tStoneCarnival_Text[2005]["OutTime"])
			
			-- 记录删除log
			local sLog = string.format(tStoneCarnival_Log["Del"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sLog)
		end
		
		return false
	end
	
	local nEvent = tStoneCarnival_Stc[nItemId]["EventType"]
	local nType = tStoneCarnival_Stc[nItemId]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	
	-- 重置
	if nData >= 5 then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		nData = Get_UserStatisticValue(nEvent,nType)
	end
	
	local nOpenCost = tStoneCarnival_Cont["Open"][nItemId][nData+1]
	
	-- 天石不足
	local nNowEmoney = Get_UserEMoney()
	if nNowEmoney < nOpenCost then
		Sys_MsgBox(tStoneCarnival_Text[105]["CantOpen"])
		return false
	end	
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tStoneCarnival_Reward["Open"][nItemId])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tStoneCarnival_Text[105]["OpenFullBag"],nSpace))
		return false
	end
	
	tItem[nItemId]["Text211"] = string.format(tStoneCarnival_Text[nItemId]["Text211"],nOpenCost)
	tItem[nItemId]["Option211"] = tStoneCarnival_Text[nItemId]["Option211"]
	tItem[nItemId]["Option212"] = tStoneCarnival_Text[nItemId]["Option212"]
	tItem[nItemId]["OptionFunc211"] = "StoneCarnival_OpenConfirm</N>" .. nItemId
	
	LinkItemGossipFunc_New(nItemId,"2-1")
	return true
end

-- 二次确认
function StoneCarnival_OpenConfirm(nItemId)
	-- 物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["StoneCarnival"]["PackTime"]) then
		local nNum = Get_CountItemType(nItemId,0)
		
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tStoneCarnival_Text[2005]["OutTime"])
			
			-- 记录删除log
			local sLog = string.format(tStoneCarnival_Log["Del"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sLog)
		end
		
		return false
	end
	
	local nEvent = tStoneCarnival_Stc[nItemId]["EventType"]
	local nType = tStoneCarnival_Stc[nItemId]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	
	-- 重置
	if nData >= 5 then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	local nOpenCost = tStoneCarnival_Cont["Open"][nItemId][nData+1]
	
	-- 天石不足
	local nNowEmoney = Get_UserEMoney()
	if nNowEmoney < nOpenCost then
		Sys_MsgBox(tStoneCarnival_Text[105]["CantOpen"])
		return false
	end
	
	-- 判断背包空间
	local tReward = CommonFunc_Copy(tStoneCarnival_Reward["Open"][nItemId])
	local nSpace = RewardTemplate_GetRewardSpace(tReward)
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tStoneCarnival_Text[105]["OpenFullBag"],nSpace))
		return false
	end
	
	-- 扣天石
	if User_AddEMoney(-nOpenCost) then
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		local nData = Get_UserStatisticValue(nEvent,nType)
		
		-- 重置
		if nData >= 5 then
			Task_SetStatistic(nEvent,nType,0,1)
			Task_SetStcTimestamp(nEvent,nType,0)
			
			tReward["DeleteItem"] = {}
			tReward["DeleteItem"][1] = {}
			tReward["DeleteItem"][1]["Id"] = nItemId
			-- 给赤炼石
			RewardTemplate_UseItemAndMsg(tReward)
		else
			-- 给赤炼石
			RewardTemplate_UseItemAndMsg(tReward)
		end
		
		-- 首次打开礼包给勋章
		local nEvent_2 = tStoneCarnival_Stc[2]["EventType"]
		local nType_2 = tStoneCarnival_Stc[2]["DataType"]
		local nData_2 = Get_UserStatisticValue(nEvent_2,nType_2)
		
		if nData_2 == 0 then
			Task_SetStatistic(nEvent_2,nType_2,1,1)
			Task_SetStcTimestamp(nEvent_2,nType_2,0)
			
			local nSpace = RewardTemplate_GetRewardSpace(tStoneCarnival_Reward[3310798])
			-- 空间不足则发邮件
			if not User_CheckLeftSpace(nSpace) then
				local nUserId = Get_UserId()
				local nActionId = tStoneCarnival_Cont["MailActionId"]
				local nExistDay = tStoneCarnival_Cont["MailExistDay"]
				local sSender = tStoneCarnival_Text["Mail"]["Sender"]
				local sTitle = tStoneCarnival_Text["Mail"]["Title"]
				local sContent = tStoneCarnival_Text["Mail"]["Content"]
				
				Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
			else
				RewardTemplate_UseItemAndMsg(tStoneCarnival_Reward[3310798])
			end
		end
		
		Sys_SaveEmoneyBuy(tStoneCarnival_Log["Emoney"][nItemId][nData])
		return true
	end
end

--领取等级奖励
function StoneCarnival_GetNinjaReward(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["StoneCarnival"]["ActTime"]) then 
		return 
	end 
	 
	--判断玩家等级
	local nLevel= Get_UserLevel()
	local nMete = Get_UserMetempsychosis()
	
	local nMetePackEvent = tStoneCarnival_Reward["MetePackStc"]["Event"]
	local nMetePackType = tStoneCarnival_Reward["MetePackStc"]["Type"]
	
	local nNowDate=Get_UserStatisticValue(nMetePackEvent,nMetePackType)
	
	
	if nNowDate>=6 then 
		return
	end 
	
	local nNextData=nNowDate+1
	local nNextMete=tStoneCarnival_Reward["MeteToLevel"][nNextData][1]
	local nNextlevel=tStoneCarnival_Reward["MeteToLevel"][nNextData][2]
	local nNextMeteLevel =tStoneCarnival_Reward["PackToLevel"][nNextData]
	local nNowMeteLevel = 0
	
	
	if nMete < nNextMete then
		return Sys_MsgBox(tStoneCarnival_Text[105]["NoMete"])
	end 
	
	
	if nNextData <4 then
		nNowMeteLevel = tonumber(nMete .. nLevel)
	else
		nNowMeteLevel = tonumber(nMete .. "0" .. nLevel)
	end 
	
	if nNowMeteLevel<nNextMeteLevel then 
		if nNextMete==0 then 
			tNpcGossip[nNpcId]["Text421"]=string.format(tStoneCarnival_Text[nNpcId]["Text422"],nNextlevel)
		else
			tNpcGossip[nNpcId]["Text421"]=string.format(tStoneCarnival_Text[nNpcId]["Text421"],nNextMete,nNextlevel)
		end 
		return LinkNpcGossipFunc_New(nNpcId,"4-2")
	else 
		
		--其他条件判断
		local bJudge = TermsOfUse_Main(nItemId,tStoneCarnival_Reward["MetePack"][nNextData])
		
		if not bJudge then
			return
		end
		
		--加掩码
		Task_SetStatistic(nMetePackEvent,nMetePackType,nNextData,1) 
		Task_SetStcTimestamp(nMetePackEvent,nMetePackType,0)
		
		--给奖励
		RewardTemplate_UseItemAndMsg(tStoneCarnival_Reward["MetePack"][nNextData])
	end 
end 
	
----------------------------------------模板部分-------------------------------------
-------------------------------NPC模板
-- 优惠大使 23254
tNpcFace[6223] = 49
tNpcGossip[23254] = tNpcGossip[23254] or DefaultNpc:new{}
tNpcGossip[23254]["OptionHidden"] = 1
tNpcGossip[23254]["DialogueText"] = tStoneCarnival_Text[23254]

-- 活动前
tNpcGossip[23254]["Text1-1"] = {111,112,113}
tNpcGossip[23254]["tOption1-1"] = {111}
tNpcGossip[23254]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["StoneCarnival"]["ActTime"])
end

-- 活动后
tNpcGossip[23254]["Text1-2"] = {121}
tNpcGossip[23254]["tOption1-2"] = {121}
tNpcGossip[23254]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["StoneCarnival"]["ActTime"])
end

-- 活动中
tNpcGossip[23254]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[23254]["tOption1-3"] = {131,133,137,138,135,136,139}
tNpcGossip[23254]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["StoneCarnival"]["ActTime"])
end

tNpcGossip[23254]["OptionPoint131"] = "2-1"
tNpcGossip[23254]["OptionPoint132"] = "2-2"
tNpcGossip[23254]["OptionPoint133"] = "2-3"
tNpcGossip[23254]["OptionPoint134"] = "2-4"
tNpcGossip[23254]["OptionFunc135"] = "StoneCarnival_HandIn</N>23254</N>3310798"
tNpcGossip[23254]["OptionFunc136"] = "StoneCarnival_Web</N>23254"
tNpcGossip[23254]["OptionPoint137"] = "3-1"
tNpcGossip[23254]["OptionPoint138"] = "3-2"
tNpcGossip[23254]["OptionChkFunc139"] = function ()
	--判断职业
	local nPro=Get_UserProfession()
	
	if nPro>=50 and nPro<=55 then 
		local nMetePackEvent = tStoneCarnival_Reward["MetePackStc"]["Event"]
		local nMetePackType = tStoneCarnival_Reward["MetePackStc"]["Type"]
	
		local nNowDate=Get_UserStatisticValue(nMetePackEvent,nMetePackType)
	
		if nNowDate>=6 then 
			return false
		else
			return true
		end 
	else
		return false
	end 
end 
tNpcGossip[23254]["OptionPoint139"] = "4-1"


-- 购买+6赤炼石（赠）狂欢包
tNpcGossip[23254]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110}
tNpcGossip[23254]["tOption2-1"] = {211,212}

-- 购买+6赤炼石狂欢包
tNpcGossip[23254]["Text2-2"] = {221,222,223,224,225,226,227,228,229,2210}
tNpcGossip[23254]["tOption2-2"] = {221,222}

-- 购买+8赤炼石（赠）狂欢包
tNpcGossip[23254]["Text2-3"] = {231,232,233,234,235,236,237,238,239,2310}
tNpcGossip[23254]["tOption2-3"] = {231,232}

-- 购买+8赤炼石狂欢包
tNpcGossip[23254]["Text2-4"] = {241,242,243,244,245,246,247,248,249,2410}
tNpcGossip[23254]["tOption2-4"] = {241,242}

-- 狂欢购勋章不足
tNpcGossip[23254]["Text2-5"] = {251}
tNpcGossip[23254]["tOption2-5"] = {251}

-- 狂欢购勋章上交成功
tNpcGossip[23254]["Text2-6"] = {261}
tNpcGossip[23254]["tOption2-6"] = {261}

-- 未参与
tNpcGossip[23254]["Text2-7"] = {271}
tNpcGossip[23254]["tOption2-7"] = {271}

-- 勋章不足
tNpcGossip[23254]["Text2-8"] = {281}
tNpcGossip[23254]["tOption2-8"] = {281}

-- 购买1颗璀璨星陨石礼包
tNpcGossip[23254]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110}
tNpcGossip[23254]["tOption3-1"] = {311,312}

-- 购买4颗璀璨星陨石礼包
tNpcGossip[23254]["Text3-2"] = {321,322,323,324,325,326,327,328,329,3210}
tNpcGossip[23254]["tOption3-2"] = {321,322}

tNpcGossip[23254]["OptionFunc211"] = "StoneCarnival_Buy</N>23254</N>3310794"
tNpcGossip[23254]["OptionFunc221"] = "StoneCarnival_Buy</N>23254</N>3310795"
tNpcGossip[23254]["OptionFunc231"] = "StoneCarnival_Buy</N>23254</N>3310796"
tNpcGossip[23254]["OptionFunc241"] = "StoneCarnival_Buy</N>23254</N>3310797"

tNpcGossip[23254]["OptionFunc311"] = "StoneCarnival_Buy</N>23254</N>3323198"
tNpcGossip[23254]["OptionFunc321"] = "StoneCarnival_Buy</N>23254</N>3323199"

tNpcGossip[23254]["OptionPoint212"] = "1"
tNpcGossip[23254]["OptionPoint222"] = "1"
tNpcGossip[23254]["OptionPoint232"] = "1"
tNpcGossip[23254]["OptionPoint242"] = "1"
tNpcGossip[23254]["OptionPoint271"] = "1"
tNpcGossip[23254]["OptionPoint281"] = "1"

tNpcGossip[23254]["OptionPoint312"] = "1"
tNpcGossip[23254]["OptionPoint322"] = "1"


tNpcGossip[23254]["Text4-1"] = {411,412,413,414,415,416,417,418,419,4110,4111}
tNpcGossip[23254]["tOption4-1"] = {411,412}
tNpcGossip[23254]["OptionFunc411"] = "StoneCarnival_GetNinjaReward</N>23254"
tNpcGossip[23254]["OptionPoint412"] = "1-3"

tNpcGossip[23254]["Text4-2"] = {421}
tNpcGossip[23254]["tOption4-2"] = {421}
-------------------------------物品模板
-- +6赤炼石（赠）狂欢包
tItemFace[3310794] = 1785
-- +6赤炼石狂欢包
tItemFace[3310795] = 1786
-- +8赤炼石（赠）狂欢包
tItemFace[3310796] = 1787
-- +8赤炼石狂欢包
tItemFace[3310797] = 1788

-- 1颗璀璨星陨石礼包
tItemFace[3323198] = 2471
-- 4颗璀璨星陨石礼包
tItemFace[3323199] = 2472

for i=3310794,3310797 do
	tItem[i] = tItem[i] or {}
	tItem[i]["OptionHidden"] = 1
	tItem[i]["DialogueText"] = tStoneCarnival_Text[i]
	
	tItem[i]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110}
	tItem[i]["tOption1-1"] = {111,112}
	tItem[i]["ChkFunc1-1"] = function ()
		local nEvent = tStoneCarnival_Stc[i]["EventType"]
		local nType = tStoneCarnival_Stc[i]["DataType"]
		local nData = Get_UserStatisticValue(nEvent,nType)
		local nOpenCost = tStoneCarnival_Cont["Open"][i][nData+1]
		
		tItem[i]["Text1110"] = string.format(tStoneCarnival_Text[i]["Text1110"],nData+1)
		tItem[i]["Option111"] = string.format(tStoneCarnival_Text[i]["Option111"],nOpenCost)
		return true
	end
	
	tItem[i]["OptionFunc111"] = "StoneCarnival_OpenPack</N>" .. i
	
	tItem[i]["Text2-1"] = {211}
	tItem[i]["tOption2-1"] = {211,212}
end

--复用新增礼包
for i=3323198,3323199 do
	tItem[i] = tItem[i] or {}
	tItem[i]["OptionHidden"] = 1
	tItem[i]["DialogueText"] = tStoneCarnival_Text[i]
	
	tItem[i]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110}
	tItem[i]["tOption1-1"] = {111,112}
	tItem[i]["ChkFunc1-1"] = function ()
	
		local nEvent = tStoneCarnival_Stc[i]["EventType"]
		local nType = tStoneCarnival_Stc[i]["DataType"]
		local nData = Get_UserStatisticValue(nEvent,nType)
		local nOpenCost = tStoneCarnival_Cont["Open"][i][nData+1]
		
		tItem[i]["Text1110"] = string.format(tStoneCarnival_Text[i]["Text1110"],nData+1)
		tItem[i]["Option111"] = string.format(tStoneCarnival_Text[i]["Option111"],nOpenCost)
		return true
	end
	
	tItem[i]["OptionFunc111"] = "StoneCarnival_OpenPack</N>" .. i
	
	tItem[i]["Text2-1"] = {211}
	tItem[i]["tOption2-1"] = {211,212}
end



