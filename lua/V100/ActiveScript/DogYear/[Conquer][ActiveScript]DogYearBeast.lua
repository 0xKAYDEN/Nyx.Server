------------------------------------------------------------------------------------
--Name：        180117[简体征服][活动脚本]狗年年兽活动制作(2.8)
--Creator:      陈莺
--Created:     2018/01/17
------------------------------------------------------------------------------------




-- 命名规范
-- DogYearBeast_

-- 52034  data1 挂机掉落 每小时全服限量10
--        data2  挂机掉落  狗粮，每日限量5个

----------------------------------表配置部分--------------------------------------------
local tDogYearBeast_Data = {}
	tDogYearBeast_Data["BefTime"] = tActivityTime["DogYear"]["BefTime"]
	tDogYearBeast_Data["NowTime"] = tActivityTime["DogYear"]["NowTime"]
	tDogYearBeast_Data["Level"] = 80
	tDogYearBeast_Data["Metempsychosis"] = 0
	tDogYearBeast_Data["Instancetype"] = 138
	tDogYearBeast_Data["BoxNpcId"] = 21413
	tDogYearBeast_Data["GenId"] = 24295  --副本
	tDogYearBeast_Data["MonsterId"] = 3993  --副本怪
	tDogYearBeast_Data["BossEffect"] = "5fire-Boos" --副本怪光效
	tDogYearBeast_Data["Random"] = 4800
	tDogYearBeast_Data["Number"] = 1
	tDogYearBeast_Data["Web"] = "http://co.99.com/guide/event/2018/catsanddogs/client/"
	tDogYearBeast_Data["Effect"] = "task061"
	--钓鱼左边
	tDogYearBeast_Data["MapId"] = 1002
	tDogYearBeast_Data["PosX"] = 336
	tDogYearBeast_Data["PosY"] = 570
	-- 世界boss的位置
	tDogYearBeast_Data["Boss"] = {}
	tDogYearBeast_Data["Boss"]["GenId"] = 24296
	tDogYearBeast_Data["Boss"]["PosX"] = 580
	tDogYearBeast_Data["Boss"]["PosY"] = 391
	tDogYearBeast_Data["Boss"]["MapId"] = 1002
	tDogYearBeast_Data["Boss"]["Id"] = 3994
	
	tDogYearBeast_Data["Tiger"] = {}
	tDogYearBeast_Data["Tiger"]["MapId"] = 10265
	tDogYearBeast_Data["Tiger"]["PosX"] = 60
	tDogYearBeast_Data["Tiger"]["PosY"] = 50
	
	tDogYearBeast_Data["Break"] = {}
	tDogYearBeast_Data["Break"]["MapId"] = 1002
	tDogYearBeast_Data["Break"]["PosX"] = 330
	tDogYearBeast_Data["Break"]["PosY"] = 496
	
	tDogYearBeast_Data["Magic"] = {}
	tDogYearBeast_Data["Magic"][1] = 14740
	tDogYearBeast_Data["Magic"][2] = 14750
	tDogYearBeast_Data["Magic"][3] = 14760
	
	tDogYearBeast_Data["Money"] = {}
	tDogYearBeast_Data["Money"][3307199] = 27
	tDogYearBeast_Data["Money"][3307200] = 99
	
	tDogYearBeast_Data["Index"] = {}
	tDogYearBeast_Data["Index"][3307199] = 10
	tDogYearBeast_Data["Index"][3307200] = 1
	
	tDogYearBeast_Data["Emoneylog"] = {}
	tDogYearBeast_Data["Emoneylog"][3307199] = {}
	tDogYearBeast_Data["Emoneylog"][3307199][1] = "350	21169	27	27	1	"
	tDogYearBeast_Data["Emoneylog"][3307199][5] = "350	21170	135	135	1	"

	tDogYearBeast_Data["Emoneylog"][3307200] = {}
	tDogYearBeast_Data["Emoneylog"][3307200][1] = "350	21171	99	99	1	"
	tDogYearBeast_Data["Emoneylog"][3307200][5] = "350	21172	495	495	1	"

	
	tDogYearBeast_Data["MagicLev"] = {}
	tDogYearBeast_Data["MagicLev"][14740] = {}
	tDogYearBeast_Data["MagicLev"][14740][1] = 14740
	tDogYearBeast_Data["MagicLev"][14740][2] = 14741
	tDogYearBeast_Data["MagicLev"][14740][3] = 14742
	tDogYearBeast_Data["MagicLev"][14740][4] = 14743
	tDogYearBeast_Data["MagicLev"][14740][5] = 14744
	tDogYearBeast_Data["MagicLev"][14740][6] = 14745
	
	tDogYearBeast_Data["MagicLev"][14750] = {}
	tDogYearBeast_Data["MagicLev"][14750][1] = 14750
	tDogYearBeast_Data["MagicLev"][14750][2] = 14751
	tDogYearBeast_Data["MagicLev"][14750][3] = 14752
	tDogYearBeast_Data["MagicLev"][14750][4] = 14753
	tDogYearBeast_Data["MagicLev"][14750][5] = 14754
	tDogYearBeast_Data["MagicLev"][14750][6] = 14755

	tDogYearBeast_Data["MagicLev"][14760] = {}
	tDogYearBeast_Data["MagicLev"][14760][1] = 14760
	tDogYearBeast_Data["MagicLev"][14760][2] = 14761
	tDogYearBeast_Data["MagicLev"][14760][3] = 14762
	tDogYearBeast_Data["MagicLev"][14760][4] = 14763
	tDogYearBeast_Data["MagicLev"][14760][5] = 14764
	tDogYearBeast_Data["MagicLev"][14760][6] = 14765

	
	tDogYearBeast_Data["Invite_Pos"] ={}
	tDogYearBeast_Data["Invite_Pos"][1] = {}
	tDogYearBeast_Data["Invite_Pos"][1]["X"] = 584
	tDogYearBeast_Data["Invite_Pos"][1]["Y"] = 390
	
	tDogYearBeast_Data["Invite_Pos"][2] = {}
	tDogYearBeast_Data["Invite_Pos"][2]["X"] = 583
	tDogYearBeast_Data["Invite_Pos"][2]["Y"] = 390
	
	tDogYearBeast_Data["Invite_Pos"][3] = {}
	tDogYearBeast_Data["Invite_Pos"][3]["X"] = 581
	tDogYearBeast_Data["Invite_Pos"][3]["Y"] = 390
	
	tDogYearBeast_Data["Invite_Pos"][4] = {}
	tDogYearBeast_Data["Invite_Pos"][4]["X"] = 579
	tDogYearBeast_Data["Invite_Pos"][4]["Y"] = 392
	
	tDogYearBeast_Data["Invite_Pos"][5] = {}
	tDogYearBeast_Data["Invite_Pos"][5]["X"] = 580
	tDogYearBeast_Data["Invite_Pos"][5]["Y"] = 392
	
	tDogYearBeast_Data["Invite_Pos"][6] = {}
	tDogYearBeast_Data["Invite_Pos"][6]["X"] = 577
	tDogYearBeast_Data["Invite_Pos"][6]["Y"] = 383
	
	tDogYearBeast_Data["Invite_Pos"][7] = {}
	tDogYearBeast_Data["Invite_Pos"][7]["X"] = 582
	tDogYearBeast_Data["Invite_Pos"][7]["Y"] = 386
	
	tDogYearBeast_Data["Invite_Pos"][8] = {}
	tDogYearBeast_Data["Invite_Pos"][8]["X"] = 583
	tDogYearBeast_Data["Invite_Pos"][8]["Y"] = 392
	
	
-- 对boss有伤害表
local tDogYearBeast_BossDanger = {}

local tDogYearBeast_Pos = {}
	tDogYearBeast_Pos[21415] = {}
	tDogYearBeast_Pos[21415]["PosX"] = 359
	tDogYearBeast_Pos[21415]["PosY"] = 528

	tDogYearBeast_Pos[21416] = {}
	tDogYearBeast_Pos[21416]["PosX"] = 362
	tDogYearBeast_Pos[21416]["PosY"] = 541

	tDogYearBeast_Pos[21417] = {}
	tDogYearBeast_Pos[21417]["PosX"] = 349
	tDogYearBeast_Pos[21417]["PosY"] = 556
	
	tDogYearBeast_Pos[21418] = {}
	tDogYearBeast_Pos[21418]["PosX"] = 346
	tDogYearBeast_Pos[21418]["PosY"] = 565

	tDogYearBeast_Pos[21419] = {}
	tDogYearBeast_Pos[21419]["PosX"] = 330
	tDogYearBeast_Pos[21419]["PosY"] = 564

	tDogYearBeast_Pos[21420] = {}
	tDogYearBeast_Pos[21420]["PosX"] = 352
	tDogYearBeast_Pos[21420]["PosY"] = 548

	tDogYearBeast_Pos[21421] = {}
	tDogYearBeast_Pos[21421]["PosX"] = 330
	tDogYearBeast_Pos[21421]["PosY"] = 570

	tDogYearBeast_Pos[21422] = {}
	tDogYearBeast_Pos[21422]["PosX"] = 306
	tDogYearBeast_Pos[21422]["PosY"] = 552

	tDogYearBeast_Pos[21423] = {}
	tDogYearBeast_Pos[21423]["PosX"] = 291
	tDogYearBeast_Pos[21423]["PosY"] = 534

	tDogYearBeast_Pos[21424] = {}
	tDogYearBeast_Pos[21424]["PosX"] = 275
	tDogYearBeast_Pos[21424]["PosY"] = 522

	tDogYearBeast_Pos[21425] = {}
	tDogYearBeast_Pos[21425]["PosX"] = 291
	tDogYearBeast_Pos[21425]["PosY"] = 510
-- 新增
	tDogYearBeast_Pos[21429] = {}
	tDogYearBeast_Pos[21429]["PosX"] = 339
	tDogYearBeast_Pos[21429]["PosY"] = 570

	tDogYearBeast_Pos[21430] = {}
	tDogYearBeast_Pos[21430]["PosX"] = 346
	tDogYearBeast_Pos[21430]["PosY"] = 572

	tDogYearBeast_Pos[21431] = {}
	tDogYearBeast_Pos[21431]["PosX"] = 297
	tDogYearBeast_Pos[21431]["PosY"] = 525

	tDogYearBeast_Pos[21432] = {}
	tDogYearBeast_Pos[21432]["PosX"] = 283
	tDogYearBeast_Pos[21432]["PosY"] = 524

	tDogYearBeast_Pos[21433] = {}
	tDogYearBeast_Pos[21433]["PosX"] = 284
	tDogYearBeast_Pos[21433]["PosY"] = 504



local tDogYearBeast_Action = {}
	tDogYearBeast_Action["ExistDay"] = 30
	tDogYearBeast_Action[1] = 568304
	tDogYearBeast_Action[2] = 568305
	tDogYearBeast_Action[3] = 568306
	tDogYearBeast_Action[4] = 568307
	tDogYearBeast_Action[5] = 568308
	tDogYearBeast_Action[6] = 568309
	tDogYearBeast_Action[7] = 568310
	tDogYearBeast_Action[8] = 568311
	tDogYearBeast_Action[9] = 568312
	tDogYearBeast_Action[10] = 568313
	--参与奖
	tDogYearBeast_Action[11] = 568314
	-- 领取喵呜将军坐骑外套
	tDogYearBeast_Action[21388] = 568360
	-- 领取黑狗外套
	tDogYearBeast_Action[21386] = 568361


	
local tDogYearBeast_Log = {}
	tDogYearBeast_Log["Over"] = "0,0,%d,%d,12000984,3,0,0"
	tDogYearBeast_Log["CallBoss"] = "0,0,0,0,12000984,3[1],0,0"
	-- 邮件
	tDogYearBeast_Log["BossRank"] = "0,0,0,0,12000984,2[%d],0,0"
-- 购买肉骨头
	tDogYearBeast_Log["Buy"] = "0,0,0,0,12000984,2,2,%d"
-- 进入副本
	tDogYearBeast_Log["Goto"] = "0,0,0,0,12000984,1,0,0"
local tDogYearBeast_Stc = {}
	-- 记录每日领取祝福礼包
	tDogYearBeast_Stc[1] = {}
	tDogYearBeast_Stc[1]["EventType"] = 172
	tDogYearBeast_Stc[1]["DataType"] = 64

	-- 记录每日进入副本
	tDogYearBeast_Stc[2] = {}
	tDogYearBeast_Stc[2]["EventType"] = 172
	tDogYearBeast_Stc[2]["DataType"] = 65
	
	-- 记录每日打开过喵星宝藏
	tDogYearBeast_Stc[3] = {}
	tDogYearBeast_Stc[3]["EventType"] = 172
	tDogYearBeast_Stc[3]["DataType"] = 66
	
	-- 记录每日捕鱼次数
	tDogYearBeast_Stc[4] = {}
	tDogYearBeast_Stc[4]["EventType"] = 172
	tDogYearBeast_Stc[4]["DataType"] = 67
	tDogYearBeast_Stc[4]["Data"] = 10
	-- 挂机掉落 肉骨头
	tDogYearBeast_Stc[5] = {}
	tDogYearBeast_Stc[5]["EventType"] = 172
	tDogYearBeast_Stc[5]["DataType"] = 68
-- 秘制酱料 
	tDogYearBeast_Stc[6] = {}
	tDogYearBeast_Stc[6]["EventType"] = 172
	tDogYearBeast_Stc[6]["DataType"] = 69

-- 爱心狗粮5个
	tDogYearBeast_Stc[7] = {}
	tDogYearBeast_Stc[7]["EventType"] = 173
	tDogYearBeast_Stc[7]["DataType"] = 24

-- 二次确认屏蔽 10 肉骨头  1 酱香骨头 
	tDogYearBeast_Stc[8] = {}
	tDogYearBeast_Stc[8]["EventType"] = 173
	tDogYearBeast_Stc[8]["DataType"] = 03
	

	-- 亲密度值
	tDogYearBeast_Stc["Point"] = {}
	tDogYearBeast_Stc["Point"][21386] = {}
	tDogYearBeast_Stc["Point"][21386]["EventType"] = 172
	tDogYearBeast_Stc["Point"][21386]["DataType"] = 70
	tDogYearBeast_Stc["Point"][21386]["Data"] = 1000--1500
	-- 好感度
	tDogYearBeast_Stc["Point"][21388] = {}
	tDogYearBeast_Stc["Point"][21388]["EventType"] = 172
	tDogYearBeast_Stc["Point"][21388]["DataType"] = 71
	tDogYearBeast_Stc["Point"][21388]["Data"] = 500--600

	tDogYearBeast_Stc["Get"] = {}
	-- 领取黑狗坐骑外套
	tDogYearBeast_Stc["Get"][21386] = {}
	tDogYearBeast_Stc["Get"][21386]["EventType"] = 172
	tDogYearBeast_Stc["Get"][21386]["DataType"] = 72
	--领取喵呜将军坐骑外套
	tDogYearBeast_Stc["Get"][21388] = {}
	tDogYearBeast_Stc["Get"][21388]["EventType"] = 172
	tDogYearBeast_Stc["Get"][21388]["DataType"] = 73
-- 获得跟随从
	tDogYearBeast_Stc["GetPet"] = {}
	tDogYearBeast_Stc["GetPet"]["EventType"] = 172
	tDogYearBeast_Stc["GetPet"]["DataType"] = 74

-- 物品部分
local tDogYearBeast_Reward = {}
	
	tDogYearBeast_Reward[3307193] = {}
	--随机给一个外套
	tDogYearBeast_Reward[3307193][1] = {}
	tDogYearBeast_Reward[3307193][1]["RewardNoNeedTip"] = 1
	tDogYearBeast_Reward[3307193][1]["ItemChanceSum"] = 10000
	tDogYearBeast_Reward[3307193][1][1] ={}
	tDogYearBeast_Reward[3307193][1][1]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307193][1][1]["ItemChance"] = 6000
	tDogYearBeast_Reward[3307193][1][1]["RewardItem"] = {}
	tDogYearBeast_Reward[3307193][1][1]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307193][1][1]["RewardItem"][1]["Id"] = 200619  --黑色狗年外套3小时
	tDogYearBeast_Reward[3307193][1][1]["RewardItem"][1]["Attr"] = "0 1 3 180 1 0 0 1"
	tDogYearBeast_Reward[3307193][1][1]["Log"] = "0,0,3307193,1,12000984,2,200619,1"
	tDogYearBeast_Reward[3307193][1][1]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307193][1][1]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307193][1][1]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Reward[3307193][1][2] ={}
	tDogYearBeast_Reward[3307193][1][2]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307193][1][2]["ItemChance"] = 3000
	tDogYearBeast_Reward[3307193][1][2]["RewardItem"] = {}
	tDogYearBeast_Reward[3307193][1][2]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307193][1][2]["RewardItem"][1]["Id"] = 200618  --白色狗年外套3小时
	tDogYearBeast_Reward[3307193][1][2]["RewardItem"][1]["Attr"] = "0 1 3 180 1 0 0 1"
	tDogYearBeast_Reward[3307193][1][2]["Log"] = "0,0,3307193,1,12000984,2,200618,1"
	tDogYearBeast_Reward[3307193][1][2]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307193][1][2]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307193][1][2]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Reward[3307193][1][3] ={}
	tDogYearBeast_Reward[3307193][1][3]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307193][1][3]["ItemChance"] = 1000
	tDogYearBeast_Reward[3307193][1][3]["RewardItem"] = {}
	tDogYearBeast_Reward[3307193][1][3]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307193][1][3]["RewardItem"][1]["Id"] = 200620  --金色狗年外套3小时
	tDogYearBeast_Reward[3307193][1][3]["RewardItem"][1]["Attr"] = "0 1 3 180 1 0 0 1"
	tDogYearBeast_Reward[3307193][1][3]["Log"] = "0,0,3307193,1,12000984,2,200620,1"
	tDogYearBeast_Reward[3307193][1][3]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307193][1][3]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307193][1][3]["RewardEffect"]["Effect"] = "angelwing"

	--随机给一个肉骨头
	tDogYearBeast_Reward[3307193][2] = {}
	tDogYearBeast_Reward[3307193][2]["RewardNoNeedTip"] = 1
	tDogYearBeast_Reward[3307193][2]["ItemChanceSum"] = 10000
	tDogYearBeast_Reward[3307193][2][1] ={}
	tDogYearBeast_Reward[3307193][2][1]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307193][2][1]["ItemChance"] = 1500
	tDogYearBeast_Reward[3307193][2][1]["RewardItem"] = {}
	tDogYearBeast_Reward[3307193][2][1]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307193][2][1]["RewardItem"][1]["Id"] = 3307200  --秘制肉骨头
	tDogYearBeast_Reward[3307193][2][1]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Reward[3307193][2][1]["Log"] = "0,0,0,0,12000984,2,3307200,1"
	tDogYearBeast_Reward[3307193][2][1]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307193][2][1]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307193][2][1]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Reward[3307193][2][2] ={}
	tDogYearBeast_Reward[3307193][2][2]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307193][2][2]["ItemChance"] = 0
	tDogYearBeast_Reward[3307193][2][2]["RewardItem"] = {}
	tDogYearBeast_Reward[3307193][2][2]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307193][2][2]["RewardItem"][1]["Id"] = 3307200  --秘制肉骨头*2
	tDogYearBeast_Reward[3307193][2][2]["RewardItem"][1]["Attr"] = "0 2"
	tDogYearBeast_Reward[3307193][2][2]["RewardBroadCast"] = tDogYearBeast_Text["Msg"]["Reward"][1]
	tDogYearBeast_Reward[3307193][2][2]["Log"] = "0,0,0,0,12000984,2,3307200,2"
	tDogYearBeast_Reward[3307193][2][2]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307193][2][2]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307193][2][2]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Reward[3307193][2][3] ={}
	tDogYearBeast_Reward[3307193][2][3]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307193][2][3]["ItemChance"] = 6500
	tDogYearBeast_Reward[3307193][2][3]["RewardItem"] = {}
	tDogYearBeast_Reward[3307193][2][3]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307193][2][3]["RewardItem"][1]["Id"] = 3307199  --肉骨头*1
	tDogYearBeast_Reward[3307193][2][3]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Reward[3307193][2][3]["Log"] = "0,0,0,0,12000984,2,3307199,1"
	tDogYearBeast_Reward[3307193][2][3]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307193][2][3]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307193][2][3]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Reward[3307193][2][4] ={}
	tDogYearBeast_Reward[3307193][2][4]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307193][2][4]["ItemChance"] = 1500
	tDogYearBeast_Reward[3307193][2][4]["RewardItem"] = {}
	tDogYearBeast_Reward[3307193][2][4]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307193][2][4]["RewardItem"][1]["Id"] = 3307199  --肉骨头*2
	tDogYearBeast_Reward[3307193][2][4]["RewardItem"][1]["Attr"] = "0 2"
	tDogYearBeast_Reward[3307193][2][4]["Log"] = "0,0,0,0,12000984,2,3307199,2"
	tDogYearBeast_Reward[3307193][2][4]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307193][2][4]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307193][2][4]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Reward[3307193][2][5] ={}
	tDogYearBeast_Reward[3307193][2][5]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307193][2][5]["ItemChance"] = 500
	tDogYearBeast_Reward[3307193][2][5]["RewardItem"] = {}
	tDogYearBeast_Reward[3307193][2][5]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307193][2][5]["RewardItem"][1]["Id"] = 3307199  --肉骨头*3
	tDogYearBeast_Reward[3307193][2][5]["RewardItem"][1]["Attr"] = "0 3"
	tDogYearBeast_Reward[3307193][2][5]["Log"] = "0,0,0,0,12000984,2,3307199,3"
	tDogYearBeast_Reward[3307193][2][5]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307193][2][5]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307193][2][5]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Reward[3307194] = {}
	--随机给肉骨头
	tDogYearBeast_Reward[3307194][1] = {}
	tDogYearBeast_Reward[3307194][1]["RewardNoNeedTip"] = 1
	tDogYearBeast_Reward[3307194][1]["ItemChanceSum"] = 10000
	tDogYearBeast_Reward[3307194][1][1] ={}
	tDogYearBeast_Reward[3307194][1][1]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307194][1][1]["ItemChance"] = 7500
	tDogYearBeast_Reward[3307194][1][1]["RewardItem"] = {}
	tDogYearBeast_Reward[3307194][1][1]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307194][1][1]["RewardItem"][1]["Id"] = 3307199  --肉骨头*1
	tDogYearBeast_Reward[3307194][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Reward[3307194][1][1]["Log"] = "0,0,3307194,1,12000984,2,3307199,1"
	tDogYearBeast_Reward[3307194][1][1]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307194][1][1]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307194][1][1]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Reward[3307194][1][2] ={}
	tDogYearBeast_Reward[3307194][1][2]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307194][1][2]["ItemChance"] = 2000
	tDogYearBeast_Reward[3307194][1][2]["RewardItem"] = {}
	tDogYearBeast_Reward[3307194][1][2]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307194][1][2]["RewardItem"][1]["Id"] = 3307199  --肉骨头*2
	tDogYearBeast_Reward[3307194][1][2]["RewardItem"][1]["Attr"] = "0 2"
	tDogYearBeast_Reward[3307194][1][2]["Log"] = "0,0,3307194,1,12000984,2,3307199,2"
	tDogYearBeast_Reward[3307194][1][2]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307194][1][2]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307194][1][2]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Reward[3307194][1][3] ={}
	tDogYearBeast_Reward[3307194][1][3]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307194][1][3]["ItemChance"] = 500
	tDogYearBeast_Reward[3307194][1][3]["RewardItem"] = {}
	tDogYearBeast_Reward[3307194][1][3]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307194][1][3]["RewardItem"][1]["Id"] = 3307199  --肉骨头*3
	tDogYearBeast_Reward[3307194][1][3]["RewardItem"][1]["Attr"] = "0 3"
	tDogYearBeast_Reward[3307194][1][3]["Log"] = "0,0,3307194,1,12000984,2,3307199,3"
	tDogYearBeast_Reward[3307194][1][3]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307194][1][3]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307194][1][3]["RewardEffect"]["Effect"] = "angelwing"

	--随机给
	tDogYearBeast_Reward[3307194][2] = {}
	tDogYearBeast_Reward[3307194][2]["RewardNoNeedTip"] = 1
	tDogYearBeast_Reward[3307194][2]["ItemChanceSum"] = 10000
	tDogYearBeast_Reward[3307194][2][1] ={}
	tDogYearBeast_Reward[3307194][2][1]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307194][2][1]["ItemChance"] = 4000
	tDogYearBeast_Reward[3307194][2][1]["RewardItem"] = {}
	tDogYearBeast_Reward[3307194][2][1]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307194][2][1]["RewardItem"][1]["Id"] = 3307197  --螃蟹
	tDogYearBeast_Reward[3307194][2][1]["RewardItem"][1]["Attr"] = "0 3"
	tDogYearBeast_Reward[3307194][2][1]["Log"] = "0,0,0,0,12000984,2,3307197,3"
	tDogYearBeast_Reward[3307194][2][1]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307194][2][1]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307194][2][1]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Reward[3307194][2][2] ={}
	tDogYearBeast_Reward[3307194][2][2]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307194][2][2]["ItemChance"] = 2000
	tDogYearBeast_Reward[3307194][2][2]["RewardItem"] = {}
	tDogYearBeast_Reward[3307194][2][2]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307194][2][2]["RewardItem"][1]["Id"] = 3307198  --鲤鱼
	tDogYearBeast_Reward[3307194][2][2]["RewardItem"][1]["Attr"] = "0 3"
	tDogYearBeast_Reward[3307194][2][2]["Log"] = "0,0,0,0,12000984,2,3307198,3"
	tDogYearBeast_Reward[3307194][2][2]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307194][2][2]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307194][2][2]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Reward[3307194][2][3] ={}
	tDogYearBeast_Reward[3307194][2][3]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307194][2][3]["ItemChance"] = 1000
	tDogYearBeast_Reward[3307194][2][3]["RewardItem"] = {}
	tDogYearBeast_Reward[3307194][2][3]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307194][2][3]["RewardItem"][1]["Id"] = 3307196  --鲫鱼
	tDogYearBeast_Reward[3307194][2][3]["RewardItem"][1]["Attr"] = "0 3"
	tDogYearBeast_Reward[3307194][2][3]["Log"] = "0,0,0,0,12000984,2,3307196,3"
	tDogYearBeast_Reward[3307194][2][3]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307194][2][3]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307194][2][3]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Reward[3307194][2][4] ={}
	tDogYearBeast_Reward[3307194][2][4]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307194][2][4]["ItemChance"] = 2000
	tDogYearBeast_Reward[3307194][2][4]["RewardItem"] = {}
	tDogYearBeast_Reward[3307194][2][4]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307194][2][4]["RewardItem"][1]["Id"] = 3302732  --老虎武器外套1天
	tDogYearBeast_Reward[3307194][2][4]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Reward[3307194][2][4]["Log"] = "0,0,0,0,12000984,2,3302732,1"
	tDogYearBeast_Reward[3307194][2][4]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307194][2][4]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307194][2][4]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Reward[3307194][2][5] ={}
	tDogYearBeast_Reward[3307194][2][5]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307194][2][5]["ItemChance"] = 1000
	tDogYearBeast_Reward[3307194][2][5]["RewardItem"] = {}
	tDogYearBeast_Reward[3307194][2][5]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307194][2][5]["RewardItem"][1]["Id"] = 3302762  --老虎武器外套3天
	tDogYearBeast_Reward[3307194][2][5]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Reward[3307194][2][5]["Log"] = "0,0,0,0,12000984,2,3302762,1"
	tDogYearBeast_Reward[3307194][2][5]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307194][2][5]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307194][2][5]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Reward[3307195] = {}
	--随机给肉骨头
	tDogYearBeast_Reward[3307195][1] = {}
	-- tDogYearBeast_Reward[3307195][1]["RewardNoNeedTip"] = 1
	tDogYearBeast_Reward[3307195][1]["ItemChanceSum"] = 10000
	tDogYearBeast_Reward[3307195][1][1] ={}
	tDogYearBeast_Reward[3307195][1][1]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307195][1][1]["ItemChance"] = 3100
	tDogYearBeast_Reward[3307195][1][1]["RewardItem"] = {}
	tDogYearBeast_Reward[3307195][1][1]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307195][1][1]["RewardItem"][1]["Id"] = 3009000  --微光星陨石
	tDogYearBeast_Reward[3307195][1][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tDogYearBeast_Reward[3307195][1][1]["Log"] = "0,0,3307195,1,12000984,2,3009000,1"
	tDogYearBeast_Reward[3307195][1][1]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307195][1][1]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307195][1][1]["RewardEffect"]["Effect"] = "angelwing"

	-- tDogYearBeast_Reward[3307195][1][2] ={}
	-- tDogYearBeast_Reward[3307195][1][2]["RandomItemChanceType"] = 2
	-- tDogYearBeast_Reward[3307195][1][2]["ItemChance"] = 400
	-- tDogYearBeast_Reward[3307195][1][2]["RewardItem"] = {}
	-- tDogYearBeast_Reward[3307195][1][2]["RewardItem"][1] = {}
	-- tDogYearBeast_Reward[3307195][1][2]["RewardItem"][1]["Id"] = 3009001  --明亮星陨石
	-- tDogYearBeast_Reward[3307195][1][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	-- tDogYearBeast_Reward[3307195][1][2]["Log"] = "0,0,3307195,1,12000984,2,3009001,1"

	tDogYearBeast_Reward[3307195][1][2] ={}
	tDogYearBeast_Reward[3307195][1][2]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307195][1][2]["ItemChance"] = 50
	tDogYearBeast_Reward[3307195][1][2]["RewardItem"] = {}
	tDogYearBeast_Reward[3307195][1][2]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307195][1][2]["RewardItem"][1]["Id"] = 3009002  --晶莹星陨石
	tDogYearBeast_Reward[3307195][1][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tDogYearBeast_Reward[3307195][1][2]["Log"] = "0,0,3307195,1,12000984,2,3009002,1"
	tDogYearBeast_Reward[3307195][1][2]["RewardBroadCast"] = tDogYearBeast_Text["Msg"]["Reward"][2]
	tDogYearBeast_Reward[3307195][1][2]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307195][1][2]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307195][1][2]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Reward[3307195][1][3] ={}
	tDogYearBeast_Reward[3307195][1][3]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307195][1][3]["ItemChance"] = 3000
	tDogYearBeast_Reward[3307195][1][3]["RewardItem"] = {}
	tDogYearBeast_Reward[3307195][1][3]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307195][1][3]["RewardItem"][1]["Id"] = 730001  --赤练石+1
	tDogYearBeast_Reward[3307195][1][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tDogYearBeast_Reward[3307195][1][3]["Log"] = "0,0,3307195,1,12000984,2,730001,1"
	tDogYearBeast_Reward[3307195][1][3]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307195][1][3]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307195][1][3]["RewardEffect"]["Effect"] = "angelwing"

	-- tDogYearBeast_Reward[3307195][1][5] ={}
	-- tDogYearBeast_Reward[3307195][1][5]["RandomItemChanceType"] = 2
	-- tDogYearBeast_Reward[3307195][1][5]["ItemChance"] = 300
	-- tDogYearBeast_Reward[3307195][1][5]["RewardItem"] = {}
	-- tDogYearBeast_Reward[3307195][1][5]["RewardItem"][1] = {}
	-- tDogYearBeast_Reward[3307195][1][5]["RewardItem"][1]["Id"] = 730003  --赤练石+3
	-- tDogYearBeast_Reward[3307195][1][5]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	-- tDogYearBeast_Reward[3307195][1][5]["Log"] = "0,0,3307195,1,12000984,2,730003,1"

	tDogYearBeast_Reward[3307195][1][4] ={}
	tDogYearBeast_Reward[3307195][1][4]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307195][1][4]["ItemChance"] = 50
	tDogYearBeast_Reward[3307195][1][4]["RewardItem"] = {}
	tDogYearBeast_Reward[3307195][1][4]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307195][1][4]["RewardItem"][1]["Id"] = 730005  --赤练石+5
	tDogYearBeast_Reward[3307195][1][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tDogYearBeast_Reward[3307195][1][4]["Log"] = "0,0,3307195,1,12000984,2,730005,1"
	tDogYearBeast_Reward[3307195][1][4]["RewardBroadCast"] = tDogYearBeast_Text["Msg"]["Reward"][3]
	tDogYearBeast_Reward[3307195][1][4]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307195][1][4]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307195][1][4]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Reward[3307195][1][5] ={}
	tDogYearBeast_Reward[3307195][1][5]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307195][1][5]["ItemChance"] = 1055
	tDogYearBeast_Reward[3307195][1][5]["RewardStrengthValue"] = {}
	tDogYearBeast_Reward[3307195][1][5]["RewardStrengthValue"]["Value"] = 100  -- 100气力值
	tDogYearBeast_Reward[3307195][1][5]["Log"] = "0,0,3307195,1,12000984,2,12,100"
	tDogYearBeast_Reward[3307195][1][5]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307195][1][5]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307195][1][5]["RewardEffect"]["Effect"] = "angelwing"

	-- tDogYearBeast_Reward[3307195][1][7] ={}
	-- tDogYearBeast_Reward[3307195][1][7]["RandomItemChanceType"] = 2
	-- tDogYearBeast_Reward[3307195][1][7]["ItemChance"] = 200
	-- tDogYearBeast_Reward[3307195][1][7]["RewardStrengthValue"] = {}
	-- tDogYearBeast_Reward[3307195][1][7]["RewardStrengthValue"]["Value"] = 500  -- 500气力值
	-- tDogYearBeast_Reward[3307195][1][7]["Log"] = "0,0,3307195,1,12000984,2,12,500"

	tDogYearBeast_Reward[3307195][1][6] ={}
	tDogYearBeast_Reward[3307195][1][6]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307195][1][6]["ItemChance"] = 100
	tDogYearBeast_Reward[3307195][1][6]["RewardStrengthValue"] = {}
	tDogYearBeast_Reward[3307195][1][6]["RewardStrengthValue"]["Value"] = 1000  -- 1000气力值
	tDogYearBeast_Reward[3307195][1][6]["Log"] = "0,0,3307195,1,12000984,2,12,1000"
	tDogYearBeast_Reward[3307195][1][6]["RewardBroadCast"] = tDogYearBeast_Text["Msg"]["Reward"][4]
	tDogYearBeast_Reward[3307195][1][6]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307195][1][6]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307195][1][6]["RewardEffect"]["Effect"] = "angelwing"

	
	tDogYearBeast_Reward[3307195][1][7] ={}
	tDogYearBeast_Reward[3307195][1][7]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307195][1][7]["ItemChance"] = 1000
	tDogYearBeast_Reward[3307195][1][7]["RewardItem"] = {}
	tDogYearBeast_Reward[3307195][1][7]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307195][1][7]["RewardItem"][1]["Id"] = 3307349  --狗粮*1
	tDogYearBeast_Reward[3307195][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Reward[3307195][1][7]["Log"] = "0,0,3307195,1,12000984,2,3307349,1"
	tDogYearBeast_Reward[3307195][1][7]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307195][1][7]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307195][1][7]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Reward[3307195][1][8] ={}
	tDogYearBeast_Reward[3307195][1][8]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307195][1][8]["ItemChance"] = 700
	tDogYearBeast_Reward[3307195][1][8]["RewardItem"] = {}
	tDogYearBeast_Reward[3307195][1][8]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307195][1][8]["RewardItem"][1]["Id"] = 3307349  --狗粮*2
	tDogYearBeast_Reward[3307195][1][8]["RewardItem"][1]["Attr"] = "0 2"
	tDogYearBeast_Reward[3307195][1][8]["Log"] = "0,0,3307195,1,12000984,2,3307349,1"
	tDogYearBeast_Reward[3307195][1][8]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307195][1][8]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307195][1][8]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Reward[3307195][1][9] ={}
	tDogYearBeast_Reward[3307195][1][9]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307195][1][9]["ItemChance"] = 100
	tDogYearBeast_Reward[3307195][1][9]["RewardItem"] = {}
	tDogYearBeast_Reward[3307195][1][9]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307195][1][9]["RewardItem"][1]["Id"] = 3307349  --狗粮*3
	tDogYearBeast_Reward[3307195][1][9]["RewardItem"][1]["Attr"] = "0 3"
	tDogYearBeast_Reward[3307195][1][9]["Log"] = "0,0,3307195,1,12000984,2,3307349,1"
	tDogYearBeast_Reward[3307195][1][9]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307195][1][9]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307195][1][9]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Reward[3307195][1][10] ={}
	tDogYearBeast_Reward[3307195][1][10]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307195][1][10]["ItemChance"] = 20
	tDogYearBeast_Reward[3307195][1][10]["RewardItem"] = {}
	tDogYearBeast_Reward[3307195][1][10]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307195][1][10]["RewardItem"][1]["Id"] = 200619  --黑色狗年外套普通永久
	tDogYearBeast_Reward[3307195][1][10]["RewardItem"][1]["Attr"] = "0 1 3 0 1 0 0 1"
	tDogYearBeast_Reward[3307195][1][10]["RewardMagic"] = {}
	tDogYearBeast_Reward[3307195][1][10]["RewardMagic"]["MagicType"] = 14740  --跟随宠
	tDogYearBeast_Reward[3307195][1][10]["RewardMagic"]["LearnMagic"] = tDogYearBeast_Text["Msg"]["GetMagic"]
	tDogYearBeast_Reward[3307195][1][10]["Log"] = "0,0,3307195,1,12000984,2,200619,1"
	tDogYearBeast_Reward[3307195][1][10]["RewardBroadCast"] = tDogYearBeast_Text["Msg"]["Reward"][5]
	tDogYearBeast_Reward[3307195][1][10]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307195][1][10]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307195][1][10]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Reward[3307195][1][11] ={}
	tDogYearBeast_Reward[3307195][1][11]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307195][1][11]["ItemChance"] = 15
	tDogYearBeast_Reward[3307195][1][11]["RewardItem"] = {}
	tDogYearBeast_Reward[3307195][1][11]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307195][1][11]["RewardItem"][1]["Id"] = 200618  --白色狗年外套普通永久
	tDogYearBeast_Reward[3307195][1][11]["RewardItem"][1]["Attr"] = "0 1 3 0 1 0 0 1"
	tDogYearBeast_Reward[3307195][1][11]["RewardMagic"] = {}
	tDogYearBeast_Reward[3307195][1][11]["RewardMagic"]["MagicType"] = 14750  --跟随宠
	tDogYearBeast_Reward[3307195][1][11]["RewardMagic"]["LearnMagic"] = tDogYearBeast_Text["Msg"]["GetMagic"]
	tDogYearBeast_Reward[3307195][1][11]["Log"] = "0,0,3307195,1,12000984,2,200618,1"
	tDogYearBeast_Reward[3307195][1][11]["RewardBroadCast"] = tDogYearBeast_Text["Msg"]["Reward"][6]
	tDogYearBeast_Reward[3307195][1][11]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307195][1][11]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307195][1][11]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Reward[3307195][1][12] ={}
	tDogYearBeast_Reward[3307195][1][12]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307195][1][12]["ItemChance"] = 10
	tDogYearBeast_Reward[3307195][1][12]["RewardItem"] = {}
	tDogYearBeast_Reward[3307195][1][12]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307195][1][12]["RewardItem"][1]["Id"] = 200620  --金色狗年外套普通永久
	tDogYearBeast_Reward[3307195][1][12]["RewardItem"][1]["Attr"] = "0 1 3 0 1 0 0 1"
	tDogYearBeast_Reward[3307195][1][12]["RewardMagic"] = {}
	tDogYearBeast_Reward[3307195][1][12]["RewardMagic"]["MagicType"] = 14760  --跟随宠
	tDogYearBeast_Reward[3307195][1][12]["RewardMagic"]["LearnMagic"] = tDogYearBeast_Text["Msg"]["GetMagic"]
	tDogYearBeast_Reward[3307195][1][12]["Log"] = "0,0,3307195,1,12000984,2,200620,1"
	tDogYearBeast_Reward[3307195][1][12]["RewardBroadCast"] = tDogYearBeast_Text["Msg"]["Reward"][7]
	tDogYearBeast_Reward[3307195][1][12]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307195][1][12]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307195][1][12]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Reward[3307195][1][13] ={}
	tDogYearBeast_Reward[3307195][1][13]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307195][1][13]["ItemChance"] = 500
	tDogYearBeast_Reward[3307195][1][13]["RewardItem"] = {}
	tDogYearBeast_Reward[3307195][1][13]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307195][1][13]["RewardItem"][1]["Id"] = 3307202  --黑色狗年外套碎片
	tDogYearBeast_Reward[3307195][1][13]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Reward[3307195][1][13]["RewardMagic"] = {}
	tDogYearBeast_Reward[3307195][1][13]["RewardMagic"]["MagicType"] = 14740  --跟随宠
	tDogYearBeast_Reward[3307195][1][13]["RewardMagic"]["LearnMagic"] = tDogYearBeast_Text["Msg"]["GetMagic"]
	tDogYearBeast_Reward[3307195][1][13]["Log"] = "0,0,3307195,1,12000984,2,3307202,1"
	tDogYearBeast_Reward[3307195][1][13]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307195][1][13]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307195][1][13]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Reward[3307195][1][14] ={}
	tDogYearBeast_Reward[3307195][1][14]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307195][1][14]["ItemChance"] = 200
	tDogYearBeast_Reward[3307195][1][14]["RewardItem"] = {}
	tDogYearBeast_Reward[3307195][1][14]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307195][1][14]["RewardItem"][1]["Id"] = 3307203  --白色狗年外套碎片
	tDogYearBeast_Reward[3307195][1][14]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Reward[3307195][1][14]["Log"] = "0,0,3307195,1,12000984,2,3307203,1"
	tDogYearBeast_Reward[3307195][1][14]["RewardBroadCast"] = tDogYearBeast_Text["Msg"]["Reward"][8]
	tDogYearBeast_Reward[3307195][1][14]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307195][1][14]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307195][1][14]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Reward[3307195][1][15] ={}
	tDogYearBeast_Reward[3307195][1][15]["RandomItemChanceType"] = 2
	tDogYearBeast_Reward[3307195][1][15]["ItemChance"] = 100
	tDogYearBeast_Reward[3307195][1][15]["RewardItem"] = {}
	tDogYearBeast_Reward[3307195][1][15]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307195][1][15]["RewardItem"][1]["Id"] = 3307204  --金色狗年外套碎片
	tDogYearBeast_Reward[3307195][1][15]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Reward[3307195][1][15]["Log"] = "0,0,3307195,1,12000984,2,3307204,1"
	tDogYearBeast_Reward[3307195][1][15]["RewardBroadCast"] = tDogYearBeast_Text["Msg"]["Reward"][9]
	tDogYearBeast_Reward[3307195][1][15]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307195][1][15]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307195][1][15]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Reward[3307201] = {}
	tDogYearBeast_Reward[3307201]["LogId"] = 12000984
	tDogYearBeast_Reward[3307201]["DeleteItem"] = {}
	tDogYearBeast_Reward[3307201]["DeleteItem"][1] = {}
	tDogYearBeast_Reward[3307201]["DeleteItem"][1]["Id"] = 3307201
	tDogYearBeast_Reward[3307201]["DeleteItem"][1]["ItemNum"] = 10
	tDogYearBeast_Reward[3307201]["DeleteItem"][2] = {}
	tDogYearBeast_Reward[3307201]["DeleteItem"][2]["Id"] = 3307199  --肉骨头
	tDogYearBeast_Reward[3307201]["DeleteItem"][2]["ItemNum"] = 1
	tDogYearBeast_Reward[3307201]["RewardItem"] = {}
	tDogYearBeast_Reward[3307201]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307201]["RewardItem"][1]["Id"] = 3307200  --酱香肉骨头
	tDogYearBeast_Reward[3307201]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Reward[3307201]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307201]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307201]["RewardEffect"]["Effect"] = "angelwing"

-- 肉骨头
	tDogYearBeast_Reward["NpcId"] = {}
	tDogYearBeast_Reward["NpcId"][3307199] = 21386
	tDogYearBeast_Reward["NpcId"][3307196] = 21388
	-- 【白色狗年外套名】可选包
	tDogYearBeast_Reward[3306952] = {}
	tDogYearBeast_Reward[3306952][1] = {}
	tDogYearBeast_Reward[3306952][1]["LogId"] = 12000984
	tDogYearBeast_Reward[3306952][1]["DeleteItem"] = {}
	tDogYearBeast_Reward[3306952][1]["DeleteItem"][1] = {}
	tDogYearBeast_Reward[3306952][1]["DeleteItem"][1]["Id"] = 3306952
	tDogYearBeast_Reward[3306952][1]["DeleteItem"][1]["ItemNum"] = 1
	tDogYearBeast_Reward[3306952][1]["RewardItem"] = {}
	tDogYearBeast_Reward[3306952][1]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3306952][1]["RewardItem"][1]["Id"] = 200618  --7天时效的白色狗
	tDogYearBeast_Reward[3306952][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tDogYearBeast_Reward[3306952][1]["RewardEffect"] = {}
	tDogYearBeast_Reward[3306952][1]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3306952][1]["RewardEffect"]["Effect"] = "angelwing"
	
	tDogYearBeast_Reward[3306952][2] = {}
	tDogYearBeast_Reward[3306952][2]["LogId"] = 12000984
	tDogYearBeast_Reward[3306952][2]["DeleteItem"] = {}
	tDogYearBeast_Reward[3306952][2]["DeleteItem"][1] = {}
	tDogYearBeast_Reward[3306952][2]["DeleteItem"][1]["Id"] = 3306952
	tDogYearBeast_Reward[3306952][2]["DeleteItem"][1]["ItemNum"] = 1
	tDogYearBeast_Reward[3306952][2]["RewardItem"] = {}
	tDogYearBeast_Reward[3306952][2]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3306952][2]["RewardItem"][1]["Id"] = 3307201  --秘制酱料
	tDogYearBeast_Reward[3306952][2]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Reward[3306952][2]["RewardEffect"] = {}
	tDogYearBeast_Reward[3306952][2]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3306952][2]["RewardEffect"]["Effect"] = "angelwing"
-- 【金色狗年外套名】可选包
	tDogYearBeast_Reward[3306953] = {}
	tDogYearBeast_Reward[3306953][1] = {}
	tDogYearBeast_Reward[3306953][1]["LogId"] = 12000984
	tDogYearBeast_Reward[3306953][1]["DeleteItem"] = {}
	tDogYearBeast_Reward[3306953][1]["DeleteItem"][1] = {}
	tDogYearBeast_Reward[3306953][1]["DeleteItem"][1]["Id"] = 3306953
	tDogYearBeast_Reward[3306953][1]["DeleteItem"][1]["ItemNum"] = 1
	tDogYearBeast_Reward[3306953][1]["RewardItem"] = {}
	tDogYearBeast_Reward[3306953][1]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3306953][1]["RewardItem"][1]["Id"] = 200620  --7天时效的金色狗
	tDogYearBeast_Reward[3306953][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tDogYearBeast_Reward[3306953][1]["RewardEffect"] = {}
	tDogYearBeast_Reward[3306953][1]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3306953][1]["RewardEffect"]["Effect"] = "angelwing"
	
	tDogYearBeast_Reward[3306953][2] = {}
	tDogYearBeast_Reward[3306953][2]["LogId"] = 12000984
	tDogYearBeast_Reward[3306953][2]["DeleteItem"] = {}
	tDogYearBeast_Reward[3306953][2]["DeleteItem"][1] = {}
	tDogYearBeast_Reward[3306953][2]["DeleteItem"][1]["Id"] = 3306953
	tDogYearBeast_Reward[3306953][2]["DeleteItem"][1]["ItemNum"] = 1
	tDogYearBeast_Reward[3306953][2]["RewardItem"] = {}
	tDogYearBeast_Reward[3306953][2]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3306953][2]["RewardItem"][1]["Id"] = 3307201  --秘制酱料
	tDogYearBeast_Reward[3306953][2]["RewardItem"][1]["Attr"] = "0 2"
	tDogYearBeast_Reward[3306953][2]["RewardEffect"] = {}
	tDogYearBeast_Reward[3306953][2]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3306953][2]["RewardEffect"]["Effect"] = "angelwing"

	

	
-- 黑色狗年外套碎片
	tDogYearBeast_Reward[3307202] = {}
	tDogYearBeast_Reward[3307202]["LogId"] = 12000984
	tDogYearBeast_Reward[3307202]["DeleteItem"] = {}
	tDogYearBeast_Reward[3307202]["DeleteItem"][1] = {}
	tDogYearBeast_Reward[3307202]["DeleteItem"][1]["Id"] = 3307202
	tDogYearBeast_Reward[3307202]["DeleteItem"][1]["ItemNum"] = 20
	tDogYearBeast_Reward[3307202]["RewardItem"] = {}
	tDogYearBeast_Reward[3307202]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307202]["RewardItem"][1]["Id"] = 200619  --黑色狗年外套
	tDogYearBeast_Reward[3307202]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDogYearBeast_Reward[3307202]["RewardMagic"] = {}
	tDogYearBeast_Reward[3307202]["RewardMagic"]["MagicType"] = 14740  --跟随宠
	tDogYearBeast_Reward[3307202]["RewardMagic"]["LearnMagic"] = tDogYearBeast_Text["Msg"]["GetMagic"]
	tDogYearBeast_Reward[3307202]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307202]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307202]["RewardEffect"]["Effect"] = "angelwing"

-- 白色狗年外套碎片
	tDogYearBeast_Reward[3307203] = {}
	tDogYearBeast_Reward[3307203]["LogId"] = 12000984
	tDogYearBeast_Reward[3307203]["DeleteItem"] = {}
	tDogYearBeast_Reward[3307203]["DeleteItem"][1] = {}
	tDogYearBeast_Reward[3307203]["DeleteItem"][1]["Id"] = 3307203
	tDogYearBeast_Reward[3307203]["DeleteItem"][1]["ItemNum"] = 20
	tDogYearBeast_Reward[3307203]["RewardItem"] = {}
	tDogYearBeast_Reward[3307203]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307203]["RewardItem"][1]["Id"] = 200618  --白色狗年外套
	tDogYearBeast_Reward[3307203]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDogYearBeast_Reward[3307203]["RewardMagic"] = {}
	tDogYearBeast_Reward[3307203]["RewardMagic"]["MagicType"] = 14750  --跟随宠
	tDogYearBeast_Reward[3307203]["RewardMagic"]["LearnMagic"] = tDogYearBeast_Text["Msg"]["GetMagic"]
	tDogYearBeast_Reward[3307203]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307203]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307203]["RewardEffect"]["Effect"] = "angelwing"

-- 金色狗年外套碎片
	tDogYearBeast_Reward[3307204] = {}
	tDogYearBeast_Reward[3307204]["LogId"] = 12000984
	tDogYearBeast_Reward[3307204]["DeleteItem"] = {}
	tDogYearBeast_Reward[3307204]["DeleteItem"][1] = {}
	tDogYearBeast_Reward[3307204]["DeleteItem"][1]["Id"] = 3307204
	tDogYearBeast_Reward[3307204]["DeleteItem"][1]["ItemNum"] = 20
	tDogYearBeast_Reward[3307204]["RewardItem"] = {}
	tDogYearBeast_Reward[3307204]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307204]["RewardItem"][1]["Id"] = 200620  --金色狗年外套
	tDogYearBeast_Reward[3307204]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDogYearBeast_Reward[3307204]["RewardMagic"] = {}
	tDogYearBeast_Reward[3307204]["RewardMagic"]["MagicType"] = 14760  --跟随宠
	tDogYearBeast_Reward[3307204]["RewardMagic"]["LearnMagic"] = tDogYearBeast_Text["Msg"]["GetMagic"]
	tDogYearBeast_Reward[3307204]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307204]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307204]["RewardEffect"]["Effect"] = "angelwing"

	-- 赌碎片
	tDogYearBeast_Reward["Pic"] = {}
	tDogYearBeast_Reward["Pic"]["LogId"] = 12000984
	tDogYearBeast_Reward["Pic"]["DeleteItem"] = {}
	tDogYearBeast_Reward["Pic"]["DeleteItem"][1] = {}
	tDogYearBeast_Reward["Pic"]["DeleteItem"][1]["Id"] = 3307204
	tDogYearBeast_Reward["Pic"]["DeleteItem"][1]["ItemNum"] = 1
	tDogYearBeast_Reward["Pic"]["RewardItem"] = {}
	tDogYearBeast_Reward["Pic"]["RewardItem"][1] = {}
	tDogYearBeast_Reward["Pic"]["RewardItem"][1]["Id"] = 3307204  --碎片
	tDogYearBeast_Reward["Pic"]["RewardItem"][1]["Attr"] = "0 2"
	tDogYearBeast_Reward["Pic"]["RewardEffect"] = {}
	tDogYearBeast_Reward["Pic"]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward["Pic"]["RewardEffect"]["Effect"] = "angelwing"
	
	tDogYearBeast_Reward["DelPic"] = {}
	tDogYearBeast_Reward["DelPic"]["LogId"] = 12000984
	tDogYearBeast_Reward["DelPic"]["DeleteItem"] = {}
	tDogYearBeast_Reward["DelPic"]["DeleteItem"][1] = {}
	tDogYearBeast_Reward["DelPic"]["DeleteItem"][1]["Id"] = 3307204
	tDogYearBeast_Reward["DelPic"]["DeleteItem"][1]["ItemNum"] = 1
	tDogYearBeast_Reward["DelPic"]["RewardEffect"] = {}
	tDogYearBeast_Reward["DelPic"]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward["DelPic"]["RewardEffect"]["Effect"] = "angelwing"


-- 时装光效碎片
	tDogYearBeast_Reward[3307205] = {}
	tDogYearBeast_Reward[3307205][1] = {}
	tDogYearBeast_Reward[3307205][1]["LogId"] = 12000984
	tDogYearBeast_Reward[3307205][1]["DeleteItem"] = {}
	tDogYearBeast_Reward[3307205][1]["DeleteItem"][1] = {}
	tDogYearBeast_Reward[3307205][1]["DeleteItem"][1]["Id"] = 3307205
	tDogYearBeast_Reward[3307205][1]["DeleteItem"][1]["ItemNum"] = 10
	
	tDogYearBeast_Reward[3307205][1]["DeleteItem"][2] = {}
	tDogYearBeast_Reward[3307205][1]["DeleteItem"][2]["Id"] = 200619  --黑狗外套
	tDogYearBeast_Reward[3307205][1]["DeleteItem"][2]["ItemNum"] = 1
	tDogYearBeast_Reward[3307205][1]["DeleteItem"][2]["Monopoly"] = 0
	tDogYearBeast_Reward[3307205][1]["RewardItem"] = {}
	tDogYearBeast_Reward[3307205][1]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307205][1]["RewardItem"][1]["Id"] = 200622  --黑色狗【光效】
	tDogYearBeast_Reward[3307205][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDogYearBeast_Reward[3307205][1]["RewardMagic"] = {}
	tDogYearBeast_Reward[3307205][1]["RewardMagic"]["MagicType"] = 14740  --跟随宠
	tDogYearBeast_Reward[3307205][1]["RewardMagic"]["LearnMagic"] = tDogYearBeast_Text[21387]["Msg"]["GetMagic"]
	tDogYearBeast_Reward[3307205][1]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307205][1]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307205][1]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Reward[3307205][2] = {}
	tDogYearBeast_Reward[3307205][2]["LogId"] = 12000984
	tDogYearBeast_Reward[3307205][2]["DeleteItem"] = {}
	tDogYearBeast_Reward[3307205][2]["DeleteItem"][1] = {}
	tDogYearBeast_Reward[3307205][2]["DeleteItem"][1]["Id"] = 3307205
	tDogYearBeast_Reward[3307205][2]["DeleteItem"][1]["ItemNum"] = 15
	tDogYearBeast_Reward[3307205][2]["DeleteItem"][2] = {}
	tDogYearBeast_Reward[3307205][2]["DeleteItem"][2]["Id"] = 200618  --白狗外套
	tDogYearBeast_Reward[3307205][2]["DeleteItem"][2]["ItemNum"] = 1
	tDogYearBeast_Reward[3307205][2]["DeleteItem"][2]["Monopoly"] = 0
	tDogYearBeast_Reward[3307205][2]["RewardItem"] = {}
	tDogYearBeast_Reward[3307205][2]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307205][2]["RewardItem"][1]["Id"] = 200621  --白色狗【光效】
	tDogYearBeast_Reward[3307205][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDogYearBeast_Reward[3307205][2]["RewardMagic"] = {}
	tDogYearBeast_Reward[3307205][2]["RewardMagic"]["MagicType"] = 14750  --跟随宠
	tDogYearBeast_Reward[3307205][2]["RewardMagic"]["LearnMagic"] = tDogYearBeast_Text[21387]["Msg"]["GetMagic1"]
	tDogYearBeast_Reward[3307205][2]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307205][2]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307205][2]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Reward[3307205][3] = {}
	tDogYearBeast_Reward[3307205][3]["LogId"] = 12000984
	tDogYearBeast_Reward[3307205][3]["DeleteItem"] = {}
	tDogYearBeast_Reward[3307205][3]["DeleteItem"][1] = {}
	tDogYearBeast_Reward[3307205][3]["DeleteItem"][1]["Id"] = 3307205
	tDogYearBeast_Reward[3307205][3]["DeleteItem"][1]["ItemNum"] = 20
	tDogYearBeast_Reward[3307205][3]["DeleteItem"][2] = {}
	tDogYearBeast_Reward[3307205][3]["DeleteItem"][2]["Id"] = 200620  --金色狗外套
	tDogYearBeast_Reward[3307205][3]["DeleteItem"][2]["ItemNum"] = 1
	tDogYearBeast_Reward[3307205][3]["DeleteItem"][2]["Monopoly"] = 0
	tDogYearBeast_Reward[3307205][3]["RewardItem"] = {}
	tDogYearBeast_Reward[3307205][3]["RewardItem"][1] = {}
	tDogYearBeast_Reward[3307205][3]["RewardItem"][1]["Id"] = 200623  --金色狗【光效】
	tDogYearBeast_Reward[3307205][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDogYearBeast_Reward[3307205][3]["RewardMagic"] = {}
	tDogYearBeast_Reward[3307205][3]["RewardMagic"]["MagicType"] = 14760  --跟随宠
	tDogYearBeast_Reward[3307205][3]["RewardMagic"]["LearnMagic"] = tDogYearBeast_Text[21387]["Msg"]["GetMagic2"]
	tDogYearBeast_Reward[3307205][3]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307205][3]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307205][3]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Reward[3307205][4] = {}
	tDogYearBeast_Reward[3307205][4]["LogId"] = 12000984
	tDogYearBeast_Reward[3307205][4]["DeleteItem"] = {}
	tDogYearBeast_Reward[3307205][4]["DeleteItem"][1] = {}
	tDogYearBeast_Reward[3307205][4]["DeleteItem"][1]["Id"] = 3307205
	tDogYearBeast_Reward[3307205][4]["DeleteItem"][1]["ItemNum"] = 1
	tDogYearBeast_Reward[3307205][4]["RewardStrengthValue"] = {}
	tDogYearBeast_Reward[3307205][4]["RewardStrengthValue"]["Value"] = 300  -- 300气力值
	tDogYearBeast_Reward[3307205][4]["RewardEffect"] = {}
	tDogYearBeast_Reward[3307205][4]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Reward[3307205][4]["RewardEffect"]["Effect"] = "angelwing"

local tDogYearBeast_Get = {}
	tDogYearBeast_Get["DailyBag"] = {}
	tDogYearBeast_Get["DailyBag"][21386] = {}
	tDogYearBeast_Get["DailyBag"][21386]["LogId"] = 12000984
	tDogYearBeast_Get["DailyBag"][21386]["RewardItem"] = {}
	tDogYearBeast_Get["DailyBag"][21386]["RewardItem"][1] = {}
	tDogYearBeast_Get["DailyBag"][21386]["RewardItem"][1]["Id"] = 3307193  --狗年祝福礼包
	tDogYearBeast_Get["DailyBag"][21386]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Get["DailyBag"][21386]["RewardEffect"] = {}
	tDogYearBeast_Get["DailyBag"][21386]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Get["DailyBag"][21386]["RewardEffect"]["Effect"] = "angelwing"
	tDogYearBeast_Get["DailyBag"][21386]["Talk"] = tDogYearBeast_Text[21386]["Msg"]["GetBag"]
	

	
	tDogYearBeast_Get["Black"] = {}
	tDogYearBeast_Get["Black"][21386] = {}
	tDogYearBeast_Get["Black"][21386]["LogId"] = 12000984
	tDogYearBeast_Get["Black"][21386]["RewardItem"] = {}
	tDogYearBeast_Get["Black"][21386]["RewardItem"][1] = {}
	tDogYearBeast_Get["Black"][21386]["RewardItem"][1]["Id"] = 200619  --黑狗坐骑外套
	tDogYearBeast_Get["Black"][21386]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDogYearBeast_Get["Black"][21386]["RewardItem"][2] = {}
	tDogYearBeast_Get["Black"][21386]["RewardItem"][2]["Id"] = 3307349  --爱心狗粮
	tDogYearBeast_Get["Black"][21386]["RewardItem"][2]["Attr"] = "0 150"
	tDogYearBeast_Get["Black"][21386]["RewardMagic"] = {}
	tDogYearBeast_Get["Black"][21386]["RewardMagic"]["MagicType"] = 14760  --跟随宠
	tDogYearBeast_Get["Black"][21386]["RewardMagic"]["LearnMagic"] = tDogYearBeast_Text["Msg"]["GetMagic"]
	tDogYearBeast_Get["Black"][21386]["RewardEffect"] = {}
	tDogYearBeast_Get["Black"][21386]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Get["Black"][21386]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Get["Black"][21388] = {}
	tDogYearBeast_Get["Black"][21388]["LogId"] = 12000984
	tDogYearBeast_Get["Black"][21388]["RewardItem"] = {}
	tDogYearBeast_Get["Black"][21388]["RewardItem"][1] = {}
	tDogYearBeast_Get["Black"][21388]["RewardItem"][1]["Id"] = 200541  --呜将军坐骑外套
	tDogYearBeast_Get["Black"][21388]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDogYearBeast_Get["Black"][21388]["RewardEffect"] = {}
	tDogYearBeast_Get["Black"][21388]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Get["Black"][21388]["RewardEffect"]["Effect"] = "angelwing"
	-- tDogYearBeast_Get["DailyBag"][21413]["Talk"] = tDogYearBeast_Text[21386]["Msg"]["GetBag"]

-- 吊睛虎王
	tDogYearBeast_Get[3993] = {}
	tDogYearBeast_Get[3993]["LogId"] = 12000984
	tDogYearBeast_Get[3993]["RewardItem"] = {}
	tDogYearBeast_Get[3993]["RewardItem"][1] = {}
	tDogYearBeast_Get[3993]["RewardItem"][1]["Id"] = 3307194  --霹雳虎礼包
	tDogYearBeast_Get[3993]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Get[3993]["RewardEffect"] = {}
	tDogYearBeast_Get[3993]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Get[3993]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 跟随宠技能
	tDogYearBeast_Get["GetPet"] = {}
	tDogYearBeast_Get["GetPet"]["LogId"] = 12000984
	tDogYearBeast_Get["GetPet"]["RewardMagic"] = {}
	tDogYearBeast_Get["GetPet"]["RewardMagic"]["MagicType"] = 14740  --跟随宠
	tDogYearBeast_Get["GetPet"]["RewardMagic"]["LearnMagic"] = tDogYearBeast_Text[21387]["Msg"]["GetMagic"]
	tDogYearBeast_Get["GetPet"]["RewardEffect"] = {}
	tDogYearBeast_Get["GetPet"]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Get["GetPet"]["RewardEffect"]["Effect"] = "angelwing"

-- 跟随宠技能
	tDogYearBeast_Get["Exchange"] = {}
	tDogYearBeast_Get["Exchange"]["LogId"] = 12000984
	tDogYearBeast_Get["Exchange"]["DeleteItem"] = {}
	tDogYearBeast_Get["Exchange"]["DeleteItem"][1] = {}
	tDogYearBeast_Get["Exchange"]["DeleteItem"][1]["Id"] = 200619
	tDogYearBeast_Get["Exchange"]["DeleteItem"][1]["ItemNum"] = 1
	tDogYearBeast_Get["Exchange"]["DeleteItem"][1]["Monopoly"] = 0
	tDogYearBeast_Get["Exchange"]["DeleteItem"][1]["SaveTime"] = 0
	tDogYearBeast_Get["Exchange"]["RewardItem"] = {}
	tDogYearBeast_Get["Exchange"]["RewardItem"][1] = {}
	tDogYearBeast_Get["Exchange"]["RewardItem"][1]["Id"] = 3307200  --酱香肉骨头
	tDogYearBeast_Get["Exchange"]["RewardItem"][1]["Attr"] = "0 %d"
	tDogYearBeast_Get["Exchange"]["RewardEffect"] = {}
	tDogYearBeast_Get["Exchange"]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Get["Exchange"]["RewardEffect"]["Effect"] = "angelwing"


-- 黑色狗年外套礼包
	tDogYearBeast_Get[3307317] = {}
	tDogYearBeast_Get[3307317]["LogId"] = 12000984
	tDogYearBeast_Get[3307317]["DeleteItem"] = {}
	tDogYearBeast_Get[3307317]["DeleteItem"][1] = {}
	tDogYearBeast_Get[3307317]["DeleteItem"][1]["Id"] = 3307317
	tDogYearBeast_Get[3307317]["DeleteItem"][1]["ItemNum"] = 1
	tDogYearBeast_Get[3307317]["RewardItem"] = {}
	tDogYearBeast_Get[3307317]["RewardItem"][1] = {}
	tDogYearBeast_Get[3307317]["RewardItem"][1]["Id"] = 200619  --黑色狗
	tDogYearBeast_Get[3307317]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tDogYearBeast_Get[3307317]["RewardMagic"] = {}
	tDogYearBeast_Get[3307317]["RewardMagic"]["MagicType"] = 14740  --跟随宠
	tDogYearBeast_Get[3307317]["RewardMagic"]["LearnMagic"] = tDogYearBeast_Text[21387]["Msg"]["GetMagic"]
	tDogYearBeast_Get[3307317]["RewardEffect"] = {}
	tDogYearBeast_Get[3307317]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Get[3307317]["RewardEffect"]["Effect"] = "angelwing"
-- 白色狗年外套礼包
	tDogYearBeast_Get[3307318] = {}
	tDogYearBeast_Get[3307318]["LogId"] = 12000984
	tDogYearBeast_Get[3307318]["DeleteItem"] = {}
	tDogYearBeast_Get[3307318]["DeleteItem"][1] = {}
	tDogYearBeast_Get[3307318]["DeleteItem"][1]["Id"] = 3307318
	tDogYearBeast_Get[3307318]["DeleteItem"][1]["ItemNum"] = 1
	tDogYearBeast_Get[3307318]["RewardItem"] = {}
	tDogYearBeast_Get[3307318]["RewardItem"][1] = {}
	tDogYearBeast_Get[3307318]["RewardItem"][1]["Id"] = 200618  --白色狗
	tDogYearBeast_Get[3307318]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tDogYearBeast_Get[3307318]["RewardMagic"] = {}
	tDogYearBeast_Get[3307318]["RewardMagic"]["MagicType"] = 14750  --跟随宠
	tDogYearBeast_Get[3307318]["RewardMagic"]["LearnMagic"] = tDogYearBeast_Text[21387]["Msg"]["GetMagic2"]
	tDogYearBeast_Get[3307318]["RewardEffect"] = {}
	tDogYearBeast_Get[3307318]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Get[3307318]["RewardEffect"]["Effect"] = "angelwing"

-- 金色狗年外套礼包
	tDogYearBeast_Get[3307319] = {}
	tDogYearBeast_Get[3307319]["LogId"] = 12000984
	tDogYearBeast_Get[3307319]["DeleteItem"] = {}
	tDogYearBeast_Get[3307319]["DeleteItem"][1] = {}
	tDogYearBeast_Get[3307319]["DeleteItem"][1]["Id"] = 3307319
	tDogYearBeast_Get[3307319]["DeleteItem"][1]["ItemNum"] = 1
	tDogYearBeast_Get[3307319]["RewardItem"] = {}
	tDogYearBeast_Get[3307319]["RewardItem"][1] = {}
	tDogYearBeast_Get[3307319]["RewardItem"][1]["Id"] = 200620  --金色狗
	tDogYearBeast_Get[3307319]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tDogYearBeast_Get[3307319]["RewardMagic"] = {}
	tDogYearBeast_Get[3307319]["RewardMagic"]["MagicType"] = 14760  --跟随宠
	tDogYearBeast_Get[3307319]["RewardMagic"]["LearnMagic"] = tDogYearBeast_Text[21387]["Msg"]["GetMagic1"]
	tDogYearBeast_Get[3307319]["RewardEffect"] = {}
	tDogYearBeast_Get[3307319]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Get[3307319]["RewardEffect"]["Effect"] = "angelwing"

-- 金色狗年光效外套礼包
	tDogYearBeast_Get[3307320] = {}
	tDogYearBeast_Get[3307320]["LogId"] = 12000984
	tDogYearBeast_Get[3307320]["DeleteItem"] = {}
	tDogYearBeast_Get[3307320]["DeleteItem"][1] = {}
	tDogYearBeast_Get[3307320]["DeleteItem"][1]["Id"] = 3307320
	tDogYearBeast_Get[3307320]["DeleteItem"][1]["ItemNum"] = 1
	tDogYearBeast_Get[3307320]["RewardItem"] = {}
	tDogYearBeast_Get[3307320]["RewardItem"][1] = {}
	tDogYearBeast_Get[3307320]["RewardItem"][1]["Id"] = 200623  --金色狗【光效】
	tDogYearBeast_Get[3307320]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tDogYearBeast_Get[3307320]["RewardMagic"] = {}
	tDogYearBeast_Get[3307320]["RewardMagic"]["MagicType"] = 14760  --跟随宠
	tDogYearBeast_Get[3307320]["RewardMagic"]["LearnMagic"] = tDogYearBeast_Text[21387]["Msg"]["GetMagic1"]
	tDogYearBeast_Get[3307320]["RewardEffect"] = {}
	tDogYearBeast_Get[3307320]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Get[3307320]["RewardEffect"]["Effect"] = "angelwing"

	
-- 二哈将军【炫彩版】礼包
	tDogYearBeast_Get[3307473] = {}
	tDogYearBeast_Get[3307473]["LogId"] = 12000984
	tDogYearBeast_Get[3307473]["DeleteItem"] = {}
	tDogYearBeast_Get[3307473]["DeleteItem"][1] = {}
	tDogYearBeast_Get[3307473]["DeleteItem"][1]["Id"] = 3307473
	tDogYearBeast_Get[3307473]["DeleteItem"][1]["ItemNum"] = 1
	tDogYearBeast_Get[3307473]["RewardItem"] = {}
	tDogYearBeast_Get[3307473]["RewardItem"][1] = {}
	tDogYearBeast_Get[3307473]["RewardItem"][1]["Id"] = 200622  --二哈将军【炫彩版】
	tDogYearBeast_Get[3307473]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tDogYearBeast_Get[3307473]["RewardMagic"] = {}
	tDogYearBeast_Get[3307473]["RewardMagic"]["MagicType"] = 14740  --跟随宠
	tDogYearBeast_Get[3307473]["RewardMagic"]["LearnMagic"] = tDogYearBeast_Text[21387]["Msg"]["GetMagic"]
	tDogYearBeast_Get[3307473]["RewardEffect"] = {}
	tDogYearBeast_Get[3307473]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Get[3307473]["RewardEffect"]["Effect"] = "angelwing"


-- 二哈将军【炫彩版】礼包
	tDogYearBeast_Get[3307474] = {}
	tDogYearBeast_Get[3307474]["LogId"] = 12000984
	tDogYearBeast_Get[3307474]["DeleteItem"] = {}
	tDogYearBeast_Get[3307474]["DeleteItem"][1] = {}
	tDogYearBeast_Get[3307474]["DeleteItem"][1]["Id"] = 3307474
	tDogYearBeast_Get[3307474]["DeleteItem"][1]["ItemNum"] = 1
	tDogYearBeast_Get[3307474]["RewardItem"] = {}
	tDogYearBeast_Get[3307474]["RewardItem"][1] = {}
	tDogYearBeast_Get[3307474]["RewardItem"][1]["Id"] = 200621  --二哈将军【炫彩版】
	tDogYearBeast_Get[3307474]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tDogYearBeast_Get[3307474]["RewardMagic"] = {}
	tDogYearBeast_Get[3307474]["RewardMagic"]["MagicType"] = 14750  --跟随宠
	tDogYearBeast_Get[3307474]["RewardMagic"]["LearnMagic"] = tDogYearBeast_Text[21387]["Msg"]["GetMagic2"]
	tDogYearBeast_Get[3307474]["RewardEffect"] = {}
	tDogYearBeast_Get[3307474]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Get[3307474]["RewardEffect"]["Effect"] = "angelwing"

-- 逗哥王【至尊】礼包
	tDogYearBeast_Get[3307456] = {}
	tDogYearBeast_Get[3307456]["LogId"] = 12000984
	tDogYearBeast_Get[3307456]["DeleteItem"] = {}
	tDogYearBeast_Get[3307456]["DeleteItem"][1] = {}
	tDogYearBeast_Get[3307456]["DeleteItem"][1]["Id"] = 3307456
	tDogYearBeast_Get[3307456]["DeleteItem"][1]["ItemNum"] = 1
	tDogYearBeast_Get[3307456]["RewardItem"] = {}
	tDogYearBeast_Get[3307456]["RewardItem"][1] = {}
	tDogYearBeast_Get[3307456]["RewardItem"][1]["Id"] = 200624  --逗哥王
	tDogYearBeast_Get[3307456]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tDogYearBeast_Get[3307456]["RewardMagic"] = {}
	tDogYearBeast_Get[3307456]["RewardMagic"]["MagicType"] = 14760  --跟随宠
	tDogYearBeast_Get[3307456]["RewardMagic"]["LearnMagic"] = tDogYearBeast_Text[21387]["Msg"]["GetMagic1"]
	tDogYearBeast_Get[3307456]["RewardEffect"] = {}
	tDogYearBeast_Get[3307456]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Get[3307456]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Get[3307439] = {}
	tDogYearBeast_Get[3307439]["LogId"] = 12000984
	tDogYearBeast_Get[3307439]["DeleteItem"] = {}
	tDogYearBeast_Get[3307439]["DeleteItem"][1] = {}
	tDogYearBeast_Get[3307439]["DeleteItem"][1]["Id"] = 3307439
	tDogYearBeast_Get[3307439]["DeleteItem"][1]["ItemNum"] = 1
	tDogYearBeast_Get[3307439]["RewardItem"] = {}
	tDogYearBeast_Get[3307439]["RewardItem"][1] = {}
	tDogYearBeast_Get[3307439]["RewardItem"][1]["Id"] = 3307200  --酱香肉骨头*5
	tDogYearBeast_Get[3307439]["RewardItem"][1]["Attr"] = "0 5"
	tDogYearBeast_Get[3307439]["RewardEffect"] = {}
	tDogYearBeast_Get[3307439]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Get[3307439]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Get[3307440] = {}
	tDogYearBeast_Get[3307440]["LogId"] = 12000984
	tDogYearBeast_Get[3307440]["DeleteItem"] = {}
	tDogYearBeast_Get[3307440]["DeleteItem"][1] = {}
	tDogYearBeast_Get[3307440]["DeleteItem"][1]["Id"] = 3307440
	tDogYearBeast_Get[3307440]["DeleteItem"][1]["ItemNum"] = 1
	tDogYearBeast_Get[3307440]["RewardItem"] = {}
	tDogYearBeast_Get[3307440]["RewardItem"][1] = {}
	tDogYearBeast_Get[3307440]["RewardItem"][1]["Id"] = 3307200  --酱香肉骨头*10
	tDogYearBeast_Get[3307440]["RewardItem"][1]["Attr"] = "0 10"
	tDogYearBeast_Get[3307440]["RewardEffect"] = {}
	tDogYearBeast_Get[3307440]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Get[3307440]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Get[3307441] = {}
	tDogYearBeast_Get[3307441]["LogId"] = 12000984
	tDogYearBeast_Get[3307441]["DeleteItem"] = {}
	tDogYearBeast_Get[3307441]["DeleteItem"][1] = {}
	tDogYearBeast_Get[3307441]["DeleteItem"][1]["Id"] = 3307441
	tDogYearBeast_Get[3307441]["DeleteItem"][1]["ItemNum"] = 1
	tDogYearBeast_Get[3307441]["RewardItem"] = {}
	tDogYearBeast_Get[3307441]["RewardItem"][1] = {}
	tDogYearBeast_Get[3307441]["RewardItem"][1]["Id"] = 3307200  --酱香肉骨头*15
	tDogYearBeast_Get[3307441]["RewardItem"][1]["Attr"] = "0 15"
	tDogYearBeast_Get[3307441]["RewardEffect"] = {}
	tDogYearBeast_Get[3307441]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Get[3307441]["RewardEffect"]["Effect"] = "angelwing"


	-- 功勋礼包
	tDogYearBeast_Get[1] = {}
	tDogYearBeast_Get[1]["LogId"] = 12000984
	tDogYearBeast_Get[1]["RewardItem"] = {}
	tDogYearBeast_Get[1]["RewardItem"][1] = {}
	tDogYearBeast_Get[1]["RewardItem"][1]["Id"] = 3307199  --5个肉骨头
	tDogYearBeast_Get[1]["RewardItem"][1]["Attr"] = "0 5"
	tDogYearBeast_Get[1]["RewardEffect"] = {}
	tDogYearBeast_Get[1]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Get[1]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Get[2] = {}
	tDogYearBeast_Get[2]["ItemChanceSum"] = 10000
	
	-- 肉骨头
	tDogYearBeast_Get[2][1] ={}
	tDogYearBeast_Get[2][1]["RandomItemChanceType"] = 2
	tDogYearBeast_Get[2][1]["ItemChance"] = 10
	tDogYearBeast_Get[2][1]["EventType"] = tDogYearBeast_Stc[5]["EventType"]
	tDogYearBeast_Get[2][1]["DataType"] = tDogYearBeast_Stc[5]["DataType"]
	tDogYearBeast_Get[2][1]["FullIndex"] = 5
	tDogYearBeast_Get[2][1]["RewardData"] = 5
	tDogYearBeast_Get[2][1]["RewardDelay"] = 1
	tDogYearBeast_Get[2][1]["RewardTimeType"] = 4
	tDogYearBeast_Get[2][1]["RewardItem"] = {}
	tDogYearBeast_Get[2][1]["RewardItem"][1] = {}
	tDogYearBeast_Get[2][1]["RewardItem"][1]["Id"] = 3307199  --肉骨头
	tDogYearBeast_Get[2][1]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Get[2][1]["Log"] = "0,0,0,0,12000984,2[5],3307199,1"
	tDogYearBeast_Get[2][1]["Conent"] = tDogYearBeast_Text["Msg"]["DropItem"][1]
	tDogYearBeast_Get[2][1]["Num"] = 1
	
	tDogYearBeast_Get[2][2] ={}
	tDogYearBeast_Get[2][2]["RandomItemChanceType"] = 2
	tDogYearBeast_Get[2][2]["ItemChance"] = 5
	tDogYearBeast_Get[2][2]["GlobalId"] = 52034
	tDogYearBeast_Get[2][2]["MaxData"] = 10
	tDogYearBeast_Get[2][2]["FullIndex"] = 5
	tDogYearBeast_Get[2][2]["Pos"] = 1
	tDogYearBeast_Get[2][2]["RewardItem"] = {}
	tDogYearBeast_Get[2][2]["RewardItem"][1] = {}
	tDogYearBeast_Get[2][2]["RewardItem"][1]["Id"] = 3307200  --酱香肉骨头
	tDogYearBeast_Get[2][2]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Get[2][2]["Log"] = "0,0,0,0,12000984,2[5],3307200,1"
	tDogYearBeast_Get[2][2]["RewardBroadCast"] = tDogYearBeast_Text["Msg"]["MonsterBroad1"]
	tDogYearBeast_Get[2][2]["Num"] = 0
	
	tDogYearBeast_Get[2][3] ={}
	tDogYearBeast_Get[2][3]["RandomItemChanceType"] = 2
	tDogYearBeast_Get[2][3]["ItemChance"] = 10
	tDogYearBeast_Get[2][3]["EventType"] = tDogYearBeast_Stc[6]["EventType"]
	tDogYearBeast_Get[2][3]["DataType"] = tDogYearBeast_Stc[6]["DataType"]
	tDogYearBeast_Get[2][3]["FullIndex"] = 5
	tDogYearBeast_Get[2][3]["RewardData"] = 10
	tDogYearBeast_Get[2][3]["RewardDelay"] = 1
	tDogYearBeast_Get[2][3]["RewardTimeType"] = 4
	tDogYearBeast_Get[2][3]["RewardItem"] = {}
	tDogYearBeast_Get[2][3]["RewardItem"][1] = {}
	tDogYearBeast_Get[2][3]["RewardItem"][1]["Id"] = 3307201  --秘制酱料
	tDogYearBeast_Get[2][3]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Get[2][3]["Log"] = "0,0,0,0,12000984,2[5],3307201,1"
	tDogYearBeast_Get[2][3]["Conent"] = tDogYearBeast_Text["Msg"]["DropItem"][2]
	tDogYearBeast_Get[2][3]["Num"] = 1
	
	tDogYearBeast_Get[2][4] ={}
	tDogYearBeast_Get[2][4]["RandomItemChanceType"] = 2
	tDogYearBeast_Get[2][4]["ItemChance"] = 100
	tDogYearBeast_Get[2][4]["EventType"] = tDogYearBeast_Stc[7]["EventType"]
	tDogYearBeast_Get[2][4]["DataType"] = tDogYearBeast_Stc[7]["DataType"]
	tDogYearBeast_Get[2][4]["FullIndex"] = 5
	tDogYearBeast_Get[2][4]["RewardData"] = 5
	tDogYearBeast_Get[2][4]["RewardDelay"] = 1
	tDogYearBeast_Get[2][4]["RewardTimeType"] = 4
	tDogYearBeast_Get[2][4]["RewardItem"] = {}
	tDogYearBeast_Get[2][4]["RewardItem"][1] = {}
	tDogYearBeast_Get[2][4]["RewardItem"][1]["Id"] = 3307349  --狗粮
	tDogYearBeast_Get[2][4]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Get[2][4]["Log"] = "0,0,0,0,12000984,2[5],3307349,1"
	tDogYearBeast_Get[2][4]["Conent"] = tDogYearBeast_Text["Msg"]["DropItem"][3]
	tDogYearBeast_Get[2][4]["Num"] = 1
	
	tDogYearBeast_Get[2][5] ={}
	tDogYearBeast_Get[2][5]["RandomItemChanceType"] = 2
	tDogYearBeast_Get[2][5]["ItemChance"] = 9875
	tDogYearBeast_Get[2][5]["Num"] = 0

	tDogYearBeast_Get[3] = {}
	tDogYearBeast_Get[3]["ItemChanceSum"] = 10000
	-- 肉骨头
	tDogYearBeast_Get[3][1] ={}
	tDogYearBeast_Get[3][1]["RandomItemChanceType"] = 2
	tDogYearBeast_Get[3][1]["ItemChance"] = 10
	tDogYearBeast_Get[3][1]["EventType"] = tDogYearBeast_Stc[5]["EventType"]
	tDogYearBeast_Get[3][1]["DataType"] = tDogYearBeast_Stc[5]["DataType"]
	tDogYearBeast_Get[3][1]["FullIndex"] = 5
	tDogYearBeast_Get[3][1]["RewardData"] = 5
	tDogYearBeast_Get[3][1]["RewardDelay"] = 1
	tDogYearBeast_Get[3][1]["RewardTimeType"] = 4
	tDogYearBeast_Get[3][1]["RewardItem"] = {}
	tDogYearBeast_Get[3][1]["RewardItem"][1] = {}
	tDogYearBeast_Get[3][1]["RewardItem"][1]["Id"] = 3307199  --肉骨头
	tDogYearBeast_Get[3][1]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Get[3][1]["Log"] = "0,0,0,0,12000984,2[5],3307199,1"
	tDogYearBeast_Get[3][1]["Conent"] = tDogYearBeast_Text["Msg"]["DropItem"][1]
	tDogYearBeast_Get[3][1]["Num"] = 1
	
	tDogYearBeast_Get[3][2] ={}
	tDogYearBeast_Get[3][2]["RandomItemChanceType"] = 2
	tDogYearBeast_Get[3][2]["ItemChance"] = 5
	tDogYearBeast_Get[3][2]["GlobalId"] = 52034
	tDogYearBeast_Get[3][2]["MaxData"] = 10
	tDogYearBeast_Get[3][2]["FullIndex"] = 5
	tDogYearBeast_Get[3][2]["Pos"] = 1
	tDogYearBeast_Get[3][2]["RewardItem"] = {}
	tDogYearBeast_Get[3][2]["RewardItem"][1] = {}
	tDogYearBeast_Get[3][2]["RewardItem"][1]["Id"] = 3307200  --酱香肉骨头
	tDogYearBeast_Get[3][2]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Get[3][2]["Log"] = "0,0,0,0,12000984,2[5],3307200,1"
	tDogYearBeast_Get[3][2]["RewardBroadCast"] = tDogYearBeast_Text["Msg"]["MonsterBroad1"]
	tDogYearBeast_Get[3][2]["Num"] = 0
	
	tDogYearBeast_Get[3][3] ={}
	tDogYearBeast_Get[3][3]["RandomItemChanceType"] = 2
	tDogYearBeast_Get[3][3]["ItemChance"] = 10
	tDogYearBeast_Get[3][3]["EventType"] = tDogYearBeast_Stc[6]["EventType"]
	tDogYearBeast_Get[3][3]["DataType"] = tDogYearBeast_Stc[6]["DataType"]
	tDogYearBeast_Get[3][3]["FullIndex"] = 5
	tDogYearBeast_Get[3][3]["RewardData"] = 10
	tDogYearBeast_Get[3][3]["RewardDelay"] = 1
	tDogYearBeast_Get[3][3]["RewardTimeType"] = 4
	tDogYearBeast_Get[3][3]["RewardItem"] = {}
	tDogYearBeast_Get[3][3]["RewardItem"][1] = {}
	tDogYearBeast_Get[3][3]["RewardItem"][1]["Id"] = 3307201  --秘制酱料
	tDogYearBeast_Get[3][3]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Get[3][3]["Log"] = "0,0,0,0,12000984,2[5],3307201,1"
	tDogYearBeast_Get[3][3]["Conent"] = tDogYearBeast_Text["Msg"]["DropItem"][2]
	tDogYearBeast_Get[3][3]["Num"] = 1
	
	tDogYearBeast_Get[3][4] ={}
	tDogYearBeast_Get[3][4]["RandomItemChanceType"] = 2
	tDogYearBeast_Get[3][4]["ItemChance"] = 10
	tDogYearBeast_Get[3][4]["EventType"] = tDogYearBeast_Stc[7]["EventType"]
	tDogYearBeast_Get[3][4]["DataType"] = tDogYearBeast_Stc[7]["DataType"]
	tDogYearBeast_Get[3][4]["FullIndex"] = 5
	tDogYearBeast_Get[3][4]["RewardData"] = 5
	tDogYearBeast_Get[3][4]["RewardDelay"] = 1
	tDogYearBeast_Get[3][4]["RewardTimeType"] = 4
	tDogYearBeast_Get[3][4]["RewardItem"] = {}
	tDogYearBeast_Get[3][4]["RewardItem"][1] = {}
	tDogYearBeast_Get[3][4]["RewardItem"][1]["Id"] = 3307349  --狗粮
	tDogYearBeast_Get[3][4]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Get[3][4]["Log"] = "0,0,0,0,12000984,2[5],3307349,1"
	tDogYearBeast_Get[3][4]["Conent"] = tDogYearBeast_Text["Msg"]["DropItem"][3]
	tDogYearBeast_Get[2][4]["Num"] = 1
	
	tDogYearBeast_Get[3][5] ={}
	tDogYearBeast_Get[3][5]["RandomItemChanceType"] = 2
	tDogYearBeast_Get[3][5]["ItemChance"] = 9965
	tDogYearBeast_Get[3][5]["Num"] = 0
	
local tDogYearBeast_BroadCast = {}
	tDogYearBeast_BroadCast[1] = {}
	tDogYearBeast_BroadCast[1]["ItemChanceSum"] = 10000
	
	tDogYearBeast_BroadCast[1][1] ={}
	tDogYearBeast_BroadCast[1][1]["RandomItemChanceType"] = 2
	tDogYearBeast_BroadCast[1][1]["ItemChance"] = 2000
	tDogYearBeast_BroadCast[1][1]["Num"] = 1
	
	tDogYearBeast_BroadCast[1][2] ={}
	tDogYearBeast_BroadCast[1][2]["RandomItemChanceType"] = 2
	tDogYearBeast_BroadCast[1][2]["ItemChance"] = 2000
	tDogYearBeast_BroadCast[1][2]["Num"] = 2
	
	tDogYearBeast_BroadCast[1][3] ={}
	tDogYearBeast_BroadCast[1][3]["RandomItemChanceType"] = 2
	tDogYearBeast_BroadCast[1][3]["ItemChance"] = 2000
	tDogYearBeast_BroadCast[1][3]["Num"] = 3

	tDogYearBeast_BroadCast[1][4] ={}
	tDogYearBeast_BroadCast[1][4]["RandomItemChanceType"] = 2
	tDogYearBeast_BroadCast[1][4]["ItemChance"] = 2000
	tDogYearBeast_BroadCast[1][4]["Num"] = 4
	
	tDogYearBeast_BroadCast[1][5] ={}
	tDogYearBeast_BroadCast[1][5]["RandomItemChanceType"] = 2
	tDogYearBeast_BroadCast[1][5]["ItemChance"] = 2000
	tDogYearBeast_BroadCast[1][5]["Num"] = 5
	
	
local tDogYearBeast_Index = {}
	-- 骨头不足
	tDogYearBeast_Index[3307199] = {}
	tDogYearBeast_Index[3307199][1] = "4-2"
	tDogYearBeast_Index[3307199][5] = "4-3"
	tDogYearBeast_Index[3307199]["Point"] = 5
	tDogYearBeast_Index[3307199]["Space"] = {}
	tDogYearBeast_Index[3307199]["Space"][1] = 1
	tDogYearBeast_Index[3307199]["Space"][5] = 5
	
	tDogYearBeast_Index[3307199]["Test"] = "4-1"
	
	tDogYearBeast_Index[3307199][2] = {}
	tDogYearBeast_Index[3307199][2]["RewardNoNeedTip"] = 1
	tDogYearBeast_Index[3307199][2]["ItemChanceSum"] = 10000
	tDogYearBeast_Index[3307199][2][1] ={}
	tDogYearBeast_Index[3307199][2][1]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307199][2][1]["ItemChance"] = 2000
	tDogYearBeast_Index[3307199][2][1]["RewardItem"] = {}
	tDogYearBeast_Index[3307199][2][1]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307199][2][1]["RewardItem"][1]["Id"] = 3009000  --微光星陨石
	tDogYearBeast_Index[3307199][2][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tDogYearBeast_Index[3307199][2][1]["Log"] = "0,0,3307199,1,12000984,2,3009000,1"
	tDogYearBeast_Index[3307199][2][1]["RewardEffect"] = {}
	tDogYearBeast_Index[3307199][2][1]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307199][2][1]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307199][2][2] ={}
	tDogYearBeast_Index[3307199][2][2]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307199][2][2]["ItemChance"] = 100
	tDogYearBeast_Index[3307199][2][2]["RewardItem"] = {}
	tDogYearBeast_Index[3307199][2][2]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307199][2][2]["RewardItem"][1]["Id"] = 3009002  --晶莹星陨石
	tDogYearBeast_Index[3307199][2][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tDogYearBeast_Index[3307199][2][2]["Log"] = "0,0,3307199,1,12000984,2,3009002,1"
	tDogYearBeast_Index[3307199][2][2]["RewardBroadCast"] = tDogYearBeast_Text[21386]["Msg"]["Broad"][1][1]
	tDogYearBeast_Index[3307199][2][2]["RewardEffect"] = {}
	tDogYearBeast_Index[3307199][2][2]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307199][2][2]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307199][2][3] ={}
	tDogYearBeast_Index[3307199][2][3]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307199][2][3]["ItemChance"] = 2400
	tDogYearBeast_Index[3307199][2][3]["RewardItem"] = {}
	tDogYearBeast_Index[3307199][2][3]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307199][2][3]["RewardItem"][1]["Id"] = 730001  --赤练石+1
	tDogYearBeast_Index[3307199][2][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tDogYearBeast_Index[3307199][2][3]["Log"] = "0,0,3307199,1,12000984,2,730001,1"
	tDogYearBeast_Index[3307199][2][3]["RewardEffect"] = {}
	tDogYearBeast_Index[3307199][2][3]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307199][2][3]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307199][2][4] ={}
	tDogYearBeast_Index[3307199][2][4]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307199][2][4]["ItemChance"] = 100
	tDogYearBeast_Index[3307199][2][4]["RewardItem"] = {}
	tDogYearBeast_Index[3307199][2][4]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307199][2][4]["RewardItem"][1]["Id"] = 730005  --赤练石+5
	tDogYearBeast_Index[3307199][2][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tDogYearBeast_Index[3307199][2][4]["Log"] = "0,0,3307199,1,12000984,2,730005,1"
	tDogYearBeast_Index[3307199][2][4]["RewardBroadCast"] = tDogYearBeast_Text[21386]["Msg"]["Broad"][1][2]
	tDogYearBeast_Index[3307199][2][4]["RewardEffect"] = {}
	tDogYearBeast_Index[3307199][2][4]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307199][2][4]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307199][2][5] ={}
	tDogYearBeast_Index[3307199][2][5]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307199][2][5]["ItemChance"] = 2000
	tDogYearBeast_Index[3307199][2][5]["RewardStrengthValue"] = {}
	tDogYearBeast_Index[3307199][2][5]["RewardStrengthValue"]["Value"] = 50  -- 50气力值
	tDogYearBeast_Index[3307199][2][5]["Log"] = "0,0,3307199,1,12000984,2,12,50"
	tDogYearBeast_Index[3307199][2][5]["RewardEffect"] = {}
	tDogYearBeast_Index[3307199][2][5]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307199][2][5]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307199][2][6] ={}
	tDogYearBeast_Index[3307199][2][6]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307199][2][6]["ItemChance"] = 100
	tDogYearBeast_Index[3307199][2][6]["RewardStrengthValue"] = {}
	tDogYearBeast_Index[3307199][2][6]["RewardStrengthValue"]["Value"] = 1000  -- 1000气力值
	tDogYearBeast_Index[3307199][2][6]["Log"] = "0,0,3307199,1,12000984,2,12,1500"
	tDogYearBeast_Index[3307199][2][6]["RewardBroadCast"] = tDogYearBeast_Text[21386]["Msg"]["Broad"][1][3]
	tDogYearBeast_Index[3307199][2][6]["RewardEffect"] = {}
	tDogYearBeast_Index[3307199][2][6]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307199][2][6]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307199][2][7] ={}
	tDogYearBeast_Index[3307199][2][7]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307199][2][7]["ItemChance"] = 400
	tDogYearBeast_Index[3307199][2][7]["RewardItem"] = {}
	tDogYearBeast_Index[3307199][2][7]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307199][2][7]["RewardItem"][1]["Id"] = 3009001  --明亮星陨石
	tDogYearBeast_Index[3307199][2][7]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tDogYearBeast_Index[3307199][2][7]["Log"] = "0,0,3307199,1,12000984,2,3009001,1"
	tDogYearBeast_Index[3307199][2][7]["RewardEffect"] = {}
	tDogYearBeast_Index[3307199][2][7]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307199][2][7]["RewardEffect"]["Effect"] = "angelwing"

	
	tDogYearBeast_Index[3307199][2][8] ={}
	tDogYearBeast_Index[3307199][2][8]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307199][2][8]["ItemChance"] = 400
	tDogYearBeast_Index[3307199][2][8]["RewardItem"] = {}
	tDogYearBeast_Index[3307199][2][8]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307199][2][8]["RewardItem"][1]["Id"] = 3304324  --100气力值
	tDogYearBeast_Index[3307199][2][8]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Index[3307199][2][8]["Log"] = "0,0,3307199,1,12000984,2,3304324,1"
	-- tDogYearBeast_Index[3307199][2][8]["RewardBroadCast"] = tDogYearBeast_Text[21386]["Msg"]["Broad"][1][4]
	tDogYearBeast_Index[3307199][2][8]["RewardEffect"] = {}
	tDogYearBeast_Index[3307199][2][8]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307199][2][8]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307199][2][9] ={}
	tDogYearBeast_Index[3307199][2][9]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307199][2][9]["ItemChance"] = 1090
	tDogYearBeast_Index[3307199][2][9]["RewardItem"] = {}
	tDogYearBeast_Index[3307199][2][9]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307199][2][9]["RewardItem"][1]["Id"] = 3307349  --狗粮*1
	tDogYearBeast_Index[3307199][2][9]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Index[3307199][2][9]["Log"] = "0,0,3307199,1,12000984,2,3307349,1"
	tDogYearBeast_Index[3307199][2][9]["RewardEffect"] = {}
	tDogYearBeast_Index[3307199][2][9]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307199][2][9]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307199][2][10] ={}
	tDogYearBeast_Index[3307199][2][10]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307199][2][10]["ItemChance"] = 500
	tDogYearBeast_Index[3307199][2][10]["RewardItem"] = {}
	tDogYearBeast_Index[3307199][2][10]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307199][2][10]["RewardItem"][1]["Id"] = 3307349  --狗粮*2
	tDogYearBeast_Index[3307199][2][10]["RewardItem"][1]["Attr"] = "0 2"
	tDogYearBeast_Index[3307199][2][10]["Log"] = "0,0,3307199,1,12000984,2,3307349,2"
	tDogYearBeast_Index[3307199][2][10]["RewardEffect"] = {}
	tDogYearBeast_Index[3307199][2][10]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307199][2][10]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307199][2][11] ={}
	tDogYearBeast_Index[3307199][2][11]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307199][2][11]["ItemChance"] = 100
	tDogYearBeast_Index[3307199][2][11]["RewardItem"] = {}
	tDogYearBeast_Index[3307199][2][11]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307199][2][11]["RewardItem"][1]["Id"] = 3307349  --狗粮*3
	tDogYearBeast_Index[3307199][2][11]["RewardItem"][1]["Attr"] = "0 3"
	tDogYearBeast_Index[3307199][2][11]["Log"] = "0,0,3307199,1,12000984,2,3307349,3"
	tDogYearBeast_Index[3307199][2][11]["RewardBroadCast"] = tDogYearBeast_Text[21386]["Msg"]["Broad"][1][5]
	tDogYearBeast_Index[3307199][2][11]["RewardEffect"] = {}
	tDogYearBeast_Index[3307199][2][11]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307199][2][11]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307199][2][12] ={}
	tDogYearBeast_Index[3307199][2][12]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307199][2][12]["ItemChance"] = 500
	tDogYearBeast_Index[3307199][2][12]["RewardItem"] = {}
	tDogYearBeast_Index[3307199][2][12]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307199][2][12]["RewardItem"][1]["Id"] = 3307202  --黑色狗年外套碎片
	tDogYearBeast_Index[3307199][2][12]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Index[3307199][2][12]["Log"] = "0,0,3307199,1,12000984,2,3307202,1"
	tDogYearBeast_Index[3307199][2][12]["RewardEffect"] = {}
	tDogYearBeast_Index[3307199][2][12]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307199][2][12]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307199][2][13] ={}
	tDogYearBeast_Index[3307199][2][13]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307199][2][13]["ItemChance"] = 200
	tDogYearBeast_Index[3307199][2][13]["RewardItem"] = {}
	tDogYearBeast_Index[3307199][2][13]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307199][2][13]["RewardItem"][1]["Id"] = 3307203  --白色狗年外套碎片
	tDogYearBeast_Index[3307199][2][13]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Index[3307199][2][13]["Log"] = "0,0,3307199,1,12000984,2,3307203,1"
	tDogYearBeast_Index[3307199][2][13]["RewardEffect"] = {}
	tDogYearBeast_Index[3307199][2][13]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307199][2][13]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307199][2][14] ={}
	tDogYearBeast_Index[3307199][2][14]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307199][2][14]["ItemChance"] = 100
	tDogYearBeast_Index[3307199][2][14]["RewardItem"] = {}
	tDogYearBeast_Index[3307199][2][14]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307199][2][14]["RewardItem"][1]["Id"] = 3307204  --金色狗年外套碎片
	tDogYearBeast_Index[3307199][2][14]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Index[3307199][2][14]["Log"] = "0,0,3307199,1,12000984,2,3307204,1"
	tDogYearBeast_Index[3307199][2][14]["RewardEffect"] = {}
	tDogYearBeast_Index[3307199][2][14]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307199][2][14]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307199][2][15] ={}
	tDogYearBeast_Index[3307199][2][15]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307199][2][15]["ItemChance"] = 10
	tDogYearBeast_Index[3307199][2][15]["RewardItem"] = {}
	tDogYearBeast_Index[3307199][2][15]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307199][2][15]["RewardItem"][1]["Id"] = 3307205  --金色光效碎片
	tDogYearBeast_Index[3307199][2][15]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Index[3307199][2][15]["Log"] = "0,0,3307199,1,12000984,2,3307205,1"
	tDogYearBeast_Index[3307199][2][15]["RewardEffect"] = {}
	tDogYearBeast_Index[3307199][2][15]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307199][2][15]["RewardEffect"]["Effect"] = "angelwing"

	
	
-- 酱香肉骨头
	tDogYearBeast_Index[3307200] = {}
	tDogYearBeast_Index[3307200][1] = "5-2"
	tDogYearBeast_Index[3307200][5] = "5-3"
	tDogYearBeast_Index[3307200]["Point"] = 10
	tDogYearBeast_Index[3307200]["Test"] = "5-1"
	
	tDogYearBeast_Index[3307200]["Space"] = {}
	tDogYearBeast_Index[3307200]["Space"][1] = 1
	tDogYearBeast_Index[3307200]["Space"][5] = 5
	tDogYearBeast_Index[3307200]["NoSpace"] = {}
	tDogYearBeast_Index[3307200]["NoSpace"][1] = 1
	tDogYearBeast_Index[3307200]["NoSpace"][5] = 5
	
	tDogYearBeast_Index[3307200][2] = {}
	tDogYearBeast_Index[3307200][2]["RewardNoNeedTip"] = 1
	tDogYearBeast_Index[3307200][2]["ItemChanceSum"] = 10000
	-- tDogYearBeast_Index[3307200][2][1] ={}
	-- tDogYearBeast_Index[3307200][2][1]["RandomItemChanceType"] = 2
	-- tDogYearBeast_Index[3307200][2][1]["ItemChance"] = 970
	-- tDogYearBeast_Index[3307200][2][1]["RewardItem"] = {}
	-- tDogYearBeast_Index[3307200][2][1]["RewardItem"][1] = {}
	-- tDogYearBeast_Index[3307200][2][1]["RewardItem"][1]["Id"] = 3307348  --300赠点红包
	-- tDogYearBeast_Index[3307200][2][1]["RewardItem"][1]["Attr"] = "0 1"
	-- tDogYearBeast_Index[3307200][2][1]["Log"] = "0,0,3307200,1,12000984,2,3307348,1"
	-- tDogYearBeast_Index[3307200][2][1]["RewardEffect"] = {}
	-- tDogYearBeast_Index[3307200][2][1]["RewardEffect"]["SzObj"] = "self"
	-- tDogYearBeast_Index[3307200][2][1]["RewardEffect"]["Effect"] = "angelwing"

	-- tDogYearBeast_Index[3307200][2][2] ={}
	-- tDogYearBeast_Index[3307200][2][2]["RandomItemChanceType"] = 2
	-- tDogYearBeast_Index[3307200][2][2]["ItemChance"] = 200
	-- tDogYearBeast_Index[3307200][2][2]["RewardItem"] = {}
	-- tDogYearBeast_Index[3307200][2][2]["RewardItem"][1] = {}
	-- tDogYearBeast_Index[3307200][2][2]["RewardItem"][1]["Id"] = 3307396  --1000赠点红包
	-- tDogYearBeast_Index[3307200][2][2]["RewardItem"][1]["Attr"] = "0 1"
	-- tDogYearBeast_Index[3307200][2][2]["Log"] = "0,0,3307200,1,12000984,2,3307396,1"
	-- tDogYearBeast_Index[3307200][2][2]["RewardEffect"] = {}
	-- tDogYearBeast_Index[3307200][2][2]["RewardEffect"]["SzObj"] = "self"
	-- tDogYearBeast_Index[3307200][2][2]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307200][2][1] ={}
	tDogYearBeast_Index[3307200][2][1]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307200][2][1]["ItemChance"] = 970
	tDogYearBeast_Index[3307200][2][1]["RewardStrengthValue"] = {}
	tDogYearBeast_Index[3307200][2][1]["RewardStrengthValue"]["Value"] = 500  -- 500气力值
	tDogYearBeast_Index[3307200][2][1]["Log"] = "0,0,3307200,1,12000984,2,12,500"
	tDogYearBeast_Index[3307200][2][1]["RewardEffect"] = {}
	tDogYearBeast_Index[3307200][2][1]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307200][2][1]["RewardEffect"]["Effect"] = "angelwing"
	
	tDogYearBeast_Index[3307200][2][2] ={}
	tDogYearBeast_Index[3307200][2][2]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307200][2][2]["ItemChance"] = 200
	tDogYearBeast_Index[3307200][2][2]["RewardStrengthValue"] = {}
	tDogYearBeast_Index[3307200][2][2]["RewardStrengthValue"]["Value"] = 1000  -- 1000气力值
	tDogYearBeast_Index[3307200][2][2]["Log"] = "0,0,3307200,1,12000984,2,12,1000"
	tDogYearBeast_Index[3307200][2][2]["RewardEffect"] = {}
	tDogYearBeast_Index[3307200][2][2]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307200][2][2]["RewardEffect"]["Effect"] = "angelwing"
	
	tDogYearBeast_Index[3307200][2][3] ={}
	tDogYearBeast_Index[3307200][2][3]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307200][2][3]["ItemChance"] = 2000
	tDogYearBeast_Index[3307200][2][3]["RewardItem"] = {}
	tDogYearBeast_Index[3307200][2][3]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307200][2][3]["RewardItem"][1]["Id"] = 3307349  --狗粮*3
	tDogYearBeast_Index[3307200][2][3]["RewardItem"][1]["Attr"] = "0 3"
	tDogYearBeast_Index[3307200][2][3]["Log"] = "0,0,3307200,1,12000984,2,3307349,3"
	tDogYearBeast_Index[3307200][2][3]["RewardEffect"] = {}
	tDogYearBeast_Index[3307200][2][3]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307200][2][3]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307200][2][4] ={}
	tDogYearBeast_Index[3307200][2][4]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307200][2][4]["ItemChance"] = 600
	tDogYearBeast_Index[3307200][2][4]["RewardItem"] = {}
	tDogYearBeast_Index[3307200][2][4]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307200][2][4]["RewardItem"][1]["Id"] = 3307349  --狗粮*5
	tDogYearBeast_Index[3307200][2][4]["RewardItem"][1]["Attr"] = "0 5"
	tDogYearBeast_Index[3307200][2][4]["Log"] = "0,0,3307200,1,12000984,2,3307349,5"
	tDogYearBeast_Index[3307200][2][4]["RewardEffect"] = {}
	tDogYearBeast_Index[3307200][2][4]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307200][2][4]["RewardEffect"]["Effect"] = "angelwing"


	-- tDogYearBeast_Index[3307200][2][4] ={}
	-- tDogYearBeast_Index[3307200][2][4]["RandomItemChanceType"] = 2
	-- tDogYearBeast_Index[3307200][2][4]["ItemChance"] = 300
	-- tDogYearBeast_Index[3307200][2][4]["RewardItem"] = {}
	-- tDogYearBeast_Index[3307200][2][4]["RewardItem"][1] = {}
	-- tDogYearBeast_Index[3307200][2][4]["RewardItem"][1]["Id"] = 3303373  --魔武通玄丹
	-- tDogYearBeast_Index[3307200][2][4]["RewardItem"][1]["Attr"] = "0 1"
	-- tDogYearBeast_Index[3307200][2][4]["Log"] = "0,0,3307200,1,12000984,2,3303373,1"
	-- tDogYearBeast_Index[3307200][2][4]["RewardEffect"] = {}
	-- tDogYearBeast_Index[3307200][2][4]["RewardEffect"]["SzObj"] = "self"
	-- tDogYearBeast_Index[3307200][2][4]["RewardEffect"]["Effect"] = "angelwing"

	-- tDogYearBeast_Index[3307200][2][5] ={}
	-- tDogYearBeast_Index[3307200][2][5]["RandomItemChanceType"] = 2
	-- tDogYearBeast_Index[3307200][2][5]["ItemChance"] = 600
	-- tDogYearBeast_Index[3307200][2][5]["RewardItem"] = {}
	-- tDogYearBeast_Index[3307200][2][5]["RewardItem"][1] = {}
	-- tDogYearBeast_Index[3307200][2][5]["RewardItem"][1]["Id"] = 3306952  --白色狗年祝福包
	-- tDogYearBeast_Index[3307200][2][5]["RewardItem"][1]["Attr"] = "0 1"
	-- tDogYearBeast_Index[3307200][2][5]["Log"] = "0,0,3307200,1,12000984,2,3306952,1"
	-- tDogYearBeast_Index[3307200][2][5]["RewardEffect"] = {}
	-- tDogYearBeast_Index[3307200][2][5]["RewardEffect"]["SzObj"] = "self"
	-- tDogYearBeast_Index[3307200][2][5]["RewardEffect"]["Effect"] = "angelwing"

	-- tDogYearBeast_Index[3307200][2][6] ={}
	-- tDogYearBeast_Index[3307200][2][6]["RandomItemChanceType"] = 2
	-- tDogYearBeast_Index[3307200][2][6]["ItemChance"] = 600
	-- tDogYearBeast_Index[3307200][2][6]["RewardItem"] = {}
	-- tDogYearBeast_Index[3307200][2][6]["RewardItem"][1] = {}
	-- tDogYearBeast_Index[3307200][2][6]["RewardItem"][1]["Id"] = 3306953  --金色狗年祝福包
	-- tDogYearBeast_Index[3307200][2][6]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tDogYearBeast_Index[3307200][2][6]["Log"] = "0,0,3307200,1,12000984,2,3306953,1"
	-- tDogYearBeast_Index[3307200][2][6]["RewardEffect"] = {}
	-- tDogYearBeast_Index[3307200][2][6]["RewardEffect"]["SzObj"] = "self"
	-- tDogYearBeast_Index[3307200][2][6]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307200][2][5] ={}
	tDogYearBeast_Index[3307200][2][5]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307200][2][5]["ItemChance"] = 100
	tDogYearBeast_Index[3307200][2][5]["RewardItem"] = {}
	tDogYearBeast_Index[3307200][2][5]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307200][2][5]["RewardItem"][1]["Id"] = 200619  --黑色狗年外套普通永久
	tDogYearBeast_Index[3307200][2][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDogYearBeast_Index[3307200][2][5]["RewardMagic"] = {}
	tDogYearBeast_Index[3307200][2][5]["RewardMagic"]["MagicType"] = 14740  --跟随宠
	tDogYearBeast_Index[3307200][2][5]["RewardMagic"]["LearnMagic"] = tDogYearBeast_Text[21387]["Msg"]["GetMagic"]
	tDogYearBeast_Index[3307200][2][5]["Log"] = "0,0,3307200,1,12000984,2,200619,1"
	tDogYearBeast_Index[3307200][2][5]["RewardBroadCast"] = tDogYearBeast_Text[21386]["Msg"]["Broad"][2][1]
	tDogYearBeast_Index[3307200][2][5]["RewardEffect"] = {}
	tDogYearBeast_Index[3307200][2][5]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307200][2][5]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307200][2][6] ={}
	tDogYearBeast_Index[3307200][2][6]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307200][2][6]["ItemChance"] = 50
	tDogYearBeast_Index[3307200][2][6]["RewardItem"] = {}
	tDogYearBeast_Index[3307200][2][6]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307200][2][6]["RewardItem"][1]["Id"] = 200618  --白色狗年外套普通永久
	tDogYearBeast_Index[3307200][2][6]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDogYearBeast_Index[3307200][2][6]["RewardMagic"] = {}
	tDogYearBeast_Index[3307200][2][6]["RewardMagic"]["MagicType"] = 14750  --跟随宠
	tDogYearBeast_Index[3307200][2][6]["RewardMagic"]["LearnMagic"] = tDogYearBeast_Text[21387]["Msg"]["GetMagic1"]
	tDogYearBeast_Index[3307200][2][6]["Log"] = "0,0,3307200,1,12000984,2,200618,1"
	tDogYearBeast_Index[3307200][2][6]["RewardBroadCast"] = tDogYearBeast_Text[21386]["Msg"]["Broad"][2][2]
	tDogYearBeast_Index[3307200][2][6]["RewardEffect"] = {}
	tDogYearBeast_Index[3307200][2][6]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307200][2][6]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307200][2][7] ={}
	tDogYearBeast_Index[3307200][2][7]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307200][2][7]["ItemChance"] = 30
	tDogYearBeast_Index[3307200][2][7]["RewardItem"] = {}
	tDogYearBeast_Index[3307200][2][7]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307200][2][7]["RewardItem"][1]["Id"] = 200620  --金色狗年外套普通永久
	tDogYearBeast_Index[3307200][2][7]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDogYearBeast_Index[3307200][2][7]["RewardMagic"] = {}
	tDogYearBeast_Index[3307200][2][7]["RewardMagic"]["MagicType"] = 14760  --跟随宠
	tDogYearBeast_Index[3307200][2][7]["RewardMagic"]["LearnMagic"] = tDogYearBeast_Text[21387]["Msg"]["GetMagic2"]
	tDogYearBeast_Index[3307200][2][7]["Log"] = "0,0,3307200,1,12000984,2,200620,1"
	tDogYearBeast_Index[3307200][2][7]["RewardBroadCast"] = tDogYearBeast_Text[21386]["Msg"]["Broad"][2][3]
	tDogYearBeast_Index[3307200][2][7]["RewardEffect"] = {}
	tDogYearBeast_Index[3307200][2][7]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307200][2][7]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307200][2][8] ={}
	tDogYearBeast_Index[3307200][2][8]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307200][2][8]["ItemChance"] = 3000
	tDogYearBeast_Index[3307200][2][8]["RewardItem"] = {}
	tDogYearBeast_Index[3307200][2][8]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307200][2][8]["RewardItem"][1]["Id"] = 3307202  --黑色狗年外套碎片
	tDogYearBeast_Index[3307200][2][8]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Index[3307200][2][8]["Log"] = "0,0,3307200,1,12000984,2,3307202,1"
	tDogYearBeast_Index[3307200][2][8]["RewardEffect"] = {}
	tDogYearBeast_Index[3307200][2][8]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307200][2][8]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307200][2][9] ={}
	tDogYearBeast_Index[3307200][2][9]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307200][2][9]["ItemChance"] = 1200
	tDogYearBeast_Index[3307200][2][9]["RewardItem"] = {}
	tDogYearBeast_Index[3307200][2][9]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307200][2][9]["RewardItem"][1]["Id"] = 3307203  --白色狗年外套碎片
	tDogYearBeast_Index[3307200][2][9]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Index[3307200][2][9]["Log"] = "0,0,3307200,1,12000984,2,3307203,1"
	tDogYearBeast_Index[3307200][2][9]["RewardEffect"] = {}
	tDogYearBeast_Index[3307200][2][9]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307200][2][9]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307200][2][10] ={}
	tDogYearBeast_Index[3307200][2][10]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307200][2][10]["ItemChance"] = 1100
	tDogYearBeast_Index[3307200][2][10]["RewardItem"] = {}
	tDogYearBeast_Index[3307200][2][10]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307200][2][10]["RewardItem"][1]["Id"] = 3307204  --金色狗年外套碎片
	tDogYearBeast_Index[3307200][2][10]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Index[3307200][2][10]["Log"] = "0,0,3307200,1,12000984,2,3307204,1"
	tDogYearBeast_Index[3307200][2][10]["RewardEffect"] = {}
	tDogYearBeast_Index[3307200][2][10]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307200][2][10]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307200][2][11] ={}
	tDogYearBeast_Index[3307200][2][11]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307200][2][11]["ItemChance"] = 750
	tDogYearBeast_Index[3307200][2][11]["RewardItem"] = {}
	tDogYearBeast_Index[3307200][2][11]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307200][2][11]["RewardItem"][1]["Id"] = 3307205  --金色光效碎片
	tDogYearBeast_Index[3307200][2][11]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Index[3307200][2][11]["Log"] = "0,0,3307200,1,12000984,2,3307205,1"
	tDogYearBeast_Index[3307200][2][11]["RewardEffect"] = {}
	tDogYearBeast_Index[3307200][2][11]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307200][2][11]["RewardEffect"]["Effect"] = "angelwing"
	
	
	-- 金枪鱼
	tDogYearBeast_Index[3307197] = {}
	tDogYearBeast_Index[3307197][1] = "4-2"
	tDogYearBeast_Index[3307197][5] = "4-3"
	tDogYearBeast_Index[3307197]["Point"] = 1
	tDogYearBeast_Index[3307197]["Space"] = {}
	tDogYearBeast_Index[3307197]["Space"][1] = 1
	tDogYearBeast_Index[3307197]["Space"][5] = 5
	tDogYearBeast_Index[3307197]["Test"] = "4-1"

	tDogYearBeast_Index[3307197][2] = {}
	tDogYearBeast_Index[3307197][2]["ItemChanceSum"] = 10000
	tDogYearBeast_Index[3307197][2]["RewardNoNeedTip"] = 1

	tDogYearBeast_Index[3307197][2][1] ={}
	tDogYearBeast_Index[3307197][2][1]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307197][2][1]["ItemChance"] = 1900
	tDogYearBeast_Index[3307197][2][1]["RewardItem"] = {}
	tDogYearBeast_Index[3307197][2][1]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307197][2][1]["RewardItem"][1]["Id"] = 3302732  --喵基尼武器外套（1天）
	tDogYearBeast_Index[3307197][2][1]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Index[3307197][2][1]["Log"] = "0,0,3307197,1,12000984,2,3302732,1"
	tDogYearBeast_Index[3307197][2][1]["RewardEffect"] = {}
	tDogYearBeast_Index[3307197][2][1]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307197][2][1]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307197][2][2] ={}
	tDogYearBeast_Index[3307197][2][2]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307197][2][2]["ItemChance"] = 3000
	tDogYearBeast_Index[3307197][2][2]["RewardItem"] = {}
	tDogYearBeast_Index[3307197][2][2]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307197][2][2]["RewardItem"][1]["Id"] = 3009000  --微光星陨石
	tDogYearBeast_Index[3307197][2][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tDogYearBeast_Index[3307197][2][2]["Log"] = "0,0,3307199,1,12000984,2,3009000,1"
	tDogYearBeast_Index[3307197][2][2]["RewardEffect"] = {}
	tDogYearBeast_Index[3307197][2][2]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307197][2][2]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307197][2][3] ={}
	tDogYearBeast_Index[3307197][2][3]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307197][2][3]["ItemChance"] = 400
	tDogYearBeast_Index[3307197][2][3]["RewardItem"] = {}
	tDogYearBeast_Index[3307197][2][3]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307197][2][3]["RewardItem"][1]["Id"] = 3009001  --明亮星陨石
	tDogYearBeast_Index[3307197][2][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tDogYearBeast_Index[3307197][2][3]["Log"] = "0,0,3307199,1,12000984,2,3009001,1"
	tDogYearBeast_Index[3307197][2][3]["RewardEffect"] = {}
	tDogYearBeast_Index[3307197][2][3]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307197][2][3]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307197][2][4] ={}
	tDogYearBeast_Index[3307197][2][4]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307197][2][4]["ItemChance"] = 3000
	tDogYearBeast_Index[3307197][2][4]["RewardItem"] = {}
	tDogYearBeast_Index[3307197][2][4]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307197][2][4]["RewardItem"][1]["Id"] = 730001  --赤练石+1
	tDogYearBeast_Index[3307197][2][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tDogYearBeast_Index[3307197][2][4]["Log"] = "0,0,3307199,1,12000984,2,730001,1"
	tDogYearBeast_Index[3307197][2][4]["RewardEffect"] = {}
	tDogYearBeast_Index[3307197][2][4]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307197][2][4]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307197][2][5] ={}
	tDogYearBeast_Index[3307197][2][5]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307197][2][5]["ItemChance"] = 400
	tDogYearBeast_Index[3307197][2][5]["RewardItem"] = {}
	tDogYearBeast_Index[3307197][2][5]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307197][2][5]["RewardItem"][1]["Id"] = 730003  --赤练石+3
	tDogYearBeast_Index[3307197][2][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tDogYearBeast_Index[3307197][2][5]["Log"] = "0,0,3307199,1,12000984,2,730003,1"
	tDogYearBeast_Index[3307197][2][5]["RewardEffect"] = {}
	tDogYearBeast_Index[3307197][2][5]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307197][2][5]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307197][2][6] ={}
	tDogYearBeast_Index[3307197][2][6]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307197][2][6]["ItemChance"] = 1000
	tDogYearBeast_Index[3307197][2][6]["RewardStrengthValue"] = {}
	tDogYearBeast_Index[3307197][2][6]["RewardStrengthValue"]["Value"] = 100  -- 100气力值
	tDogYearBeast_Index[3307197][2][6]["Log"] = "0,0,3307199,1,12000984,2,12,100"
	tDogYearBeast_Index[3307197][2][6]["RewardEffect"] = {}
	tDogYearBeast_Index[3307197][2][6]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307197][2][6]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307197][2][10] ={}
	tDogYearBeast_Index[3307197][2][10]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307197][2][10]["ItemChance"] = 300
	tDogYearBeast_Index[3307197][2][10]["RewardStrengthValue"] = {}
	tDogYearBeast_Index[3307197][2][10]["RewardStrengthValue"]["Value"] = 300  -- 300气力值
	tDogYearBeast_Index[3307197][2][10]["Log"] = "0,0,3307199,1,12000984,2,12,300"
	tDogYearBeast_Index[3307197][2][10]["RewardBroadCast"] = tDogYearBeast_Text[21388]["Msg"]["Broad"][1][4]
	tDogYearBeast_Index[3307197][2][10]["RewardEffect"] = {}
	tDogYearBeast_Index[3307197][2][10]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307197][2][10]["RewardEffect"]["Effect"] = "angelwing"


	-- 皮皮虾
	tDogYearBeast_Index[3307198] = {}
	tDogYearBeast_Index[3307198][1] = "5-2"
	tDogYearBeast_Index[3307198][5] = "5-3"
	tDogYearBeast_Index[3307198]["Point"] = 5
	tDogYearBeast_Index[3307198]["Space"] = {}
	tDogYearBeast_Index[3307198]["Space"][1] = 2
	tDogYearBeast_Index[3307198]["Space"][5] = 10
	tDogYearBeast_Index[3307198]["Test"] = "5-1"

	tDogYearBeast_Index[3307198][2] = {}
	tDogYearBeast_Index[3307198][2]["RewardNoNeedTip"] = 1
	tDogYearBeast_Index[3307198][2]["ItemChanceSum"] = 10000
	tDogYearBeast_Index[3307198][2][1] ={}
	tDogYearBeast_Index[3307198][2][1]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307198][2][1]["ItemChance"] = 2500
	tDogYearBeast_Index[3307198][2][1]["RewardItem"] = {}
	tDogYearBeast_Index[3307198][2][1]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307198][2][1]["RewardItem"][1]["Id"] = 3302762  --喵基尼武器外套（3天）
	tDogYearBeast_Index[3307198][2][1]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Index[3307198][2][1]["Log"] = "0,0,3307198,1,12000984,2,3302762,1"
	tDogYearBeast_Index[3307198][2][1]["RewardEffect"] = {}
	tDogYearBeast_Index[3307198][2][1]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307198][2][1]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307198][2][2] ={}
	tDogYearBeast_Index[3307198][2][2]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307198][2][2]["ItemChance"] = 2500
	tDogYearBeast_Index[3307198][2][2]["RewardItem"] = {}
	tDogYearBeast_Index[3307198][2][2]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307198][2][2]["RewardItem"][1]["Id"] = 3009000  --微光星陨石
	tDogYearBeast_Index[3307198][2][2]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tDogYearBeast_Index[3307198][2][2]["Log"] = "0,0,3307198,1,12000984,2,3009000,2"
	tDogYearBeast_Index[3307198][2][2]["RewardEffect"] = {}
	tDogYearBeast_Index[3307198][2][2]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307198][2][2]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307198][2][3] ={}
	tDogYearBeast_Index[3307198][2][3]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307198][2][3]["ItemChance"] = 500
	tDogYearBeast_Index[3307198][2][3]["RewardItem"] = {}
	tDogYearBeast_Index[3307198][2][3]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307198][2][3]["RewardItem"][1]["Id"] = 3009001  --明亮星陨石
	tDogYearBeast_Index[3307198][2][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tDogYearBeast_Index[3307198][2][3]["Log"] = "0,0,3307198,1,12000984,2,3009001,1"
	tDogYearBeast_Index[3307198][2][3]["RewardEffect"] = {}
	tDogYearBeast_Index[3307198][2][3]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307198][2][3]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307198][2][4] ={}
	tDogYearBeast_Index[3307198][2][4]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307198][2][4]["ItemChance"] = 2500
	tDogYearBeast_Index[3307198][2][4]["RewardItem"] = {}
	tDogYearBeast_Index[3307198][2][4]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307198][2][4]["RewardItem"][1]["Id"] = 730001  --赤练石+1 
	tDogYearBeast_Index[3307198][2][4]["RewardItem"][1]["Attr"] = "0 2 3 10080 1"
	tDogYearBeast_Index[3307198][2][4]["Log"] = "0,0,3307198,1,12000984,2,730001,2"
	tDogYearBeast_Index[3307198][2][4]["RewardEffect"] = {}
	tDogYearBeast_Index[3307198][2][4]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307198][2][4]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307198][2][5] ={}
	tDogYearBeast_Index[3307198][2][5]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307198][2][5]["ItemChance"] = 500
	tDogYearBeast_Index[3307198][2][5]["RewardItem"] = {}
	tDogYearBeast_Index[3307198][2][5]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307198][2][5]["RewardItem"][1]["Id"] = 730003  --赤练石+3
	tDogYearBeast_Index[3307198][2][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tDogYearBeast_Index[3307198][2][5]["Log"] = "0,0,3307198,1,12000984,2,730003,1"
	tDogYearBeast_Index[3307198][2][5]["RewardEffect"] = {}
	tDogYearBeast_Index[3307198][2][5]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307198][2][5]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307198][2][6] ={}
	tDogYearBeast_Index[3307198][2][6]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307198][2][6]["ItemChance"] = 1000
	tDogYearBeast_Index[3307198][2][6]["RewardStrengthValue"] = {}
	tDogYearBeast_Index[3307198][2][6]["RewardStrengthValue"]["Value"] = 150  -- 150气力值
	tDogYearBeast_Index[3307198][2][6]["Log"] = "0,0,3307198,1,12000984,2,12,150"
	tDogYearBeast_Index[3307198][2][6]["RewardEffect"] = {}
	tDogYearBeast_Index[3307198][2][6]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307198][2][6]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307198][2][7] ={}
	tDogYearBeast_Index[3307198][2][7]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307198][2][7]["ItemChance"] = 500
	tDogYearBeast_Index[3307198][2][7]["RewardStrengthValue"] = {}
	tDogYearBeast_Index[3307198][2][7]["RewardStrengthValue"]["Value"] = 500  -- 500气力值
	tDogYearBeast_Index[3307198][2][7]["Log"] = "0,0,3307198,1,12000984,2,12,500"
	tDogYearBeast_Index[3307198][2][7]["RewardBroadCast"] = tDogYearBeast_Text[21388]["Msg"]["Broad"][2]
	tDogYearBeast_Index[3307198][2][7]["RewardEffect"] = {}
	tDogYearBeast_Index[3307198][2][7]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307198][2][7]["RewardEffect"]["Effect"] = "angelwing"

	-- 帝王蟹抽奖
	tDogYearBeast_Index[3307196] = {}
	tDogYearBeast_Index[3307196][1] = "6-2"
	tDogYearBeast_Index[3307196][5] = "6-3"
	tDogYearBeast_Index[3307196]["Point"] = 10
	tDogYearBeast_Index[3307196]["Space"] = {}
	tDogYearBeast_Index[3307196]["Space"][1] = 1
	tDogYearBeast_Index[3307196]["Space"][5] = 5
	tDogYearBeast_Index[3307196]["Test"] = "6-1"

	tDogYearBeast_Index[3307196][2] = {}
	tDogYearBeast_Index[3307196][2]["RewardNoNeedTip"] = 1
	tDogYearBeast_Index[3307196][2]["ItemChanceSum"] = 10000
	tDogYearBeast_Index[3307196][2][1] ={}
	tDogYearBeast_Index[3307196][2][1]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307196][2][1]["ItemChance"] = 2000
	tDogYearBeast_Index[3307196][2][1]["RewardItem"] = {}
	tDogYearBeast_Index[3307196][2][1]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307196][2][1]["RewardItem"][1]["Id"] = 3302762  --喵基尼武器外套（7天）
	tDogYearBeast_Index[3307196][2][1]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_Index[3307196][2][1]["Log"] = "0,0,3307196,1,12000984,2,3302762,1"
	tDogYearBeast_Index[3307196][2][1]["RewardEffect"] = {}
	tDogYearBeast_Index[3307196][2][1]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307196][2][1]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307196][2][2] ={}
	tDogYearBeast_Index[3307196][2][2]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307196][2][2]["ItemChance"] = 1950
	tDogYearBeast_Index[3307196][2][2]["RewardItem"] = {}
	tDogYearBeast_Index[3307196][2][2]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307196][2][2]["RewardItem"][1]["Id"] = 3009000  --微光星陨石
	tDogYearBeast_Index[3307196][2][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tDogYearBeast_Index[3307196][2][2]["Log"] = "0,0,3307196,1,12000984,2,3009000,1"
	tDogYearBeast_Index[3307196][2][2]["RewardEffect"] = {}
	tDogYearBeast_Index[3307196][2][2]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307196][2][2]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307196][2][3] ={}
	tDogYearBeast_Index[3307196][2][3]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307196][2][3]["ItemChance"] = 1000
	tDogYearBeast_Index[3307196][2][3]["RewardItem"] = {}
	tDogYearBeast_Index[3307196][2][3]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307196][2][3]["RewardItem"][1]["Id"] = 3009001  --明亮星陨石
	tDogYearBeast_Index[3307196][2][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tDogYearBeast_Index[3307196][2][3]["Log"] = "0,0,3307196,1,12000984,2,3009001,1"
	tDogYearBeast_Index[3307196][2][3]["RewardEffect"] = {}
	tDogYearBeast_Index[3307196][2][3]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307196][2][3]["RewardEffect"]["Effect"] = "angelwing"
	
	tDogYearBeast_Index[3307196][2][4] ={}
	tDogYearBeast_Index[3307196][2][4]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307196][2][4]["ItemChance"] = 150
	tDogYearBeast_Index[3307196][2][4]["RewardItem"] = {}
	tDogYearBeast_Index[3307196][2][4]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307196][2][4]["RewardItem"][1]["Id"] = 3009002  --晶莹星陨石
	tDogYearBeast_Index[3307196][2][4]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tDogYearBeast_Index[3307196][2][4]["Log"] = "0,0,3307196,1,12000984,2,3009002,1"
	tDogYearBeast_Index[3307196][2][4]["RewardBroadCast"] = tDogYearBeast_Text[21388]["Msg"]["Broad"][3][1]
	tDogYearBeast_Index[3307196][2][4]["RewardEffect"] = {}
	tDogYearBeast_Index[3307196][2][4]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307196][2][4]["RewardEffect"]["Effect"] = "angelwing"
	
	tDogYearBeast_Index[3307196][2][5] ={}
	tDogYearBeast_Index[3307196][2][5]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307196][2][5]["ItemChance"] = 2000
	tDogYearBeast_Index[3307196][2][5]["RewardItem"] = {}
	tDogYearBeast_Index[3307196][2][5]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307196][2][5]["RewardItem"][1]["Id"] = 730001  --赤练石+1
	tDogYearBeast_Index[3307196][2][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tDogYearBeast_Index[3307196][2][5]["Log"] = "0,0,3307196,1,12000984,2,730001,1"
	tDogYearBeast_Index[3307196][2][5]["RewardEffect"] = {}
	tDogYearBeast_Index[3307196][2][5]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307196][2][5]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307196][2][6] ={}
	tDogYearBeast_Index[3307196][2][6]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307196][2][6]["ItemChance"] = 1000
	tDogYearBeast_Index[3307196][2][6]["RewardItem"] = {}
	tDogYearBeast_Index[3307196][2][6]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307196][2][6]["RewardItem"][1]["Id"] = 730003  --赤练石+3
	tDogYearBeast_Index[3307196][2][6]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tDogYearBeast_Index[3307196][2][6]["Log"] = "0,0,3307196,1,12000984,2,730003,1"
	tDogYearBeast_Index[3307196][2][6]["RewardEffect"] = {}
	tDogYearBeast_Index[3307196][2][6]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307196][2][6]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307196][2][7] ={}
	tDogYearBeast_Index[3307196][2][7]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307196][2][7]["ItemChance"] = 150
	tDogYearBeast_Index[3307196][2][7]["RewardItem"] = {}
	tDogYearBeast_Index[3307196][2][7]["RewardItem"][1] = {}
	tDogYearBeast_Index[3307196][2][7]["RewardItem"][1]["Id"] = 730005  --赤练石+5
	tDogYearBeast_Index[3307196][2][7]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tDogYearBeast_Index[3307196][2][7]["Log"] = "0,0,3307196,1,12000984,2,730005,1"
	tDogYearBeast_Index[3307196][2][7]["RewardBroadCast"] = tDogYearBeast_Text[21388]["Msg"]["Broad"][3][2]
	tDogYearBeast_Index[3307196][2][7]["RewardEffect"] = {}
	tDogYearBeast_Index[3307196][2][7]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307196][2][7]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307196][2][8] ={}
	tDogYearBeast_Index[3307196][2][8]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307196][2][8]["ItemChance"] = 1000
	tDogYearBeast_Index[3307196][2][8]["RewardStrengthValue"] = {}
	tDogYearBeast_Index[3307196][2][8]["RewardStrengthValue"]["Value"] = 100  -- 100气力值
	tDogYearBeast_Index[3307196][2][8]["Log"] = "0,0,3307196,1,12000984,2,12,100"
	tDogYearBeast_Index[3307196][2][8]["RewardEffect"] = {}
	tDogYearBeast_Index[3307196][2][8]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307196][2][8]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_Index[3307196][2][9] ={}
	tDogYearBeast_Index[3307196][2][9]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307196][2][9]["ItemChance"] = 600
	tDogYearBeast_Index[3307196][2][9]["RewardStrengthValue"] = {}
	tDogYearBeast_Index[3307196][2][9]["RewardStrengthValue"]["Value"] = 500  -- 500气力值
	tDogYearBeast_Index[3307196][2][9]["Log"] = "0,0,3307196,1,12000984,2,12,500"
	tDogYearBeast_Index[3307196][2][9]["RewardEffect"] = {}
	tDogYearBeast_Index[3307196][2][9]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307196][2][9]["RewardEffect"]["Effect"] = "angelwing"
	
	tDogYearBeast_Index[3307196][2][10] ={}
	tDogYearBeast_Index[3307196][2][10]["RandomItemChanceType"] = 2
	tDogYearBeast_Index[3307196][2][10]["ItemChance"] = 150
	tDogYearBeast_Index[3307196][2][10]["RewardStrengthValue"] = {}
	tDogYearBeast_Index[3307196][2][10]["RewardStrengthValue"]["Value"] = 1500  -- 1500气力值
	tDogYearBeast_Index[3307196][2][10]["Log"] = "0,0,3307196,1,12000984,2,12,1500"
	tDogYearBeast_Index[3307196][2][10]["RewardBroadCast"] = tDogYearBeast_Text[21388]["Msg"]["Broad"][3][3]
	tDogYearBeast_Index[3307196][2][10]["RewardEffect"] = {}
	tDogYearBeast_Index[3307196][2][10]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_Index[3307196][2][10]["RewardEffect"]["Effect"] = "angelwing"


	
-- 喵星宝藏
local tDogYearBeast_OpenBox = {}
	-- tDogYearBeast_OpenBox[""]
	tDogYearBeast_OpenBox[1] = {}
	tDogYearBeast_OpenBox[1]["ItemChanceSum"] = 10000
	tDogYearBeast_OpenBox[1][1] ={}
	tDogYearBeast_OpenBox[1][1]["RandomItemChanceType"] = 2
	tDogYearBeast_OpenBox[1][1]["ItemChance"] = 2500
	tDogYearBeast_OpenBox[1][1]["RewardItem"] = {}
	tDogYearBeast_OpenBox[1][1]["RewardItem"][1] = {}
	tDogYearBeast_OpenBox[1][1]["RewardItem"][1]["Id"] = 3307199  --肉骨头
	tDogYearBeast_OpenBox[1][1]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_OpenBox[1][1]["Log"] = "0,0,0,0,12000984,1[1],3307199,1"
	tDogYearBeast_OpenBox[1][1]["RewardEffect"] = {}
	tDogYearBeast_OpenBox[1][1]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_OpenBox[1][1]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_OpenBox[1][2] ={}
	tDogYearBeast_OpenBox[1][2]["RandomItemChanceType"] = 2
	tDogYearBeast_OpenBox[1][2]["ItemChance"] = 1000
	tDogYearBeast_OpenBox[1][2]["RewardItem"] = {}
	tDogYearBeast_OpenBox[1][2]["RewardItem"][1] = {}
	tDogYearBeast_OpenBox[1][2]["RewardItem"][1]["Id"] = 3307199  --肉骨头
	tDogYearBeast_OpenBox[1][2]["RewardItem"][1]["Attr"] = "0 2"
	tDogYearBeast_OpenBox[1][2]["Log"] = "0,0,0,0,12000984,1[1],3307199,2"
	tDogYearBeast_OpenBox[1][2]["RewardEffect"] = {}
	tDogYearBeast_OpenBox[1][2]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_OpenBox[1][2]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_OpenBox[1][3] ={}
	tDogYearBeast_OpenBox[1][3]["RandomItemChanceType"] = 2
	tDogYearBeast_OpenBox[1][3]["ItemChance"] = 500
	tDogYearBeast_OpenBox[1][3]["RewardItem"] = {}
	tDogYearBeast_OpenBox[1][3]["RewardItem"][1] = {}
	tDogYearBeast_OpenBox[1][3]["RewardItem"][1]["Id"] = 3307199  --肉骨头
	tDogYearBeast_OpenBox[1][3]["RewardItem"][1]["Attr"] = "0 3"
	tDogYearBeast_OpenBox[1][3]["Log"] = "0,0,0,0,12000984,1[1],3307199,3"
	tDogYearBeast_OpenBox[1][3]["RewardEffect"] = {}
	tDogYearBeast_OpenBox[1][3]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_OpenBox[1][3]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_OpenBox[1][4] ={}
	tDogYearBeast_OpenBox[1][4]["RandomItemChanceType"] = 2
	tDogYearBeast_OpenBox[1][4]["ItemChance"] = 500
	tDogYearBeast_OpenBox[1][4]["RewardItem"] = {}
	tDogYearBeast_OpenBox[1][4]["RewardItem"][1] = {}
	tDogYearBeast_OpenBox[1][4]["RewardItem"][1]["Id"] = 3307200  --秘制肉骨头
	tDogYearBeast_OpenBox[1][4]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_OpenBox[1][4]["Log"] = "0,0,0,0,12000984,1[1],3307200,1"
	tDogYearBeast_OpenBox[1][4]["RewardBroadCast"] = tDogYearBeast_Text[21413]["Msg"]["Broad"][1]
	tDogYearBeast_OpenBox[1][4]["RewardEffect"] = {}
	tDogYearBeast_OpenBox[1][4]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_OpenBox[1][4]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_OpenBox[1][5] ={}
	tDogYearBeast_OpenBox[1][5]["RandomItemChanceType"] = 2
	tDogYearBeast_OpenBox[1][5]["ItemChance"] = 2500
	tDogYearBeast_OpenBox[1][5]["RewardItem"] = {}
	tDogYearBeast_OpenBox[1][5]["RewardItem"][1] = {}
	tDogYearBeast_OpenBox[1][5]["RewardItem"][1]["Id"] = 3307197  --金枪鱼
	tDogYearBeast_OpenBox[1][5]["RewardItem"][1]["Attr"] = "0 2"
	tDogYearBeast_OpenBox[1][5]["Log"] = "0,0,0,0,12000984,1[1],3307197,2"
	tDogYearBeast_OpenBox[1][5]["RewardEffect"] = {}
	tDogYearBeast_OpenBox[1][5]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_OpenBox[1][5]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_OpenBox[1][6] ={}
	tDogYearBeast_OpenBox[1][6]["RandomItemChanceType"] = 2
	tDogYearBeast_OpenBox[1][6]["ItemChance"] = 1500
	tDogYearBeast_OpenBox[1][6]["RewardItem"] = {}
	tDogYearBeast_OpenBox[1][6]["RewardItem"][1] = {}
	tDogYearBeast_OpenBox[1][6]["RewardItem"][1]["Id"] = 3307198  --皮皮虾
	tDogYearBeast_OpenBox[1][6]["RewardItem"][1]["Attr"] = "0 2"
	tDogYearBeast_OpenBox[1][6]["Log"] = "0,0,0,0,12000984,1[1],3307198,2"
	tDogYearBeast_OpenBox[1][6]["RewardEffect"] = {}
	tDogYearBeast_OpenBox[1][6]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_OpenBox[1][6]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_OpenBox[1][7] ={}
	tDogYearBeast_OpenBox[1][7]["RandomItemChanceType"] = 2
	tDogYearBeast_OpenBox[1][7]["ItemChance"] = 1500
	tDogYearBeast_OpenBox[1][7]["RewardItem"] = {}
	tDogYearBeast_OpenBox[1][7]["RewardItem"][1] = {}
	tDogYearBeast_OpenBox[1][7]["RewardItem"][1]["Id"] = 3307196  --帝王蟹
	tDogYearBeast_OpenBox[1][7]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_OpenBox[1][7]["Log"] = "0,0,0,0,12000984,1[1],3307196,1"
	tDogYearBeast_OpenBox[1][7]["RewardBroadCast"] = tDogYearBeast_Text[21413]["Msg"]["Broad"][2]
	tDogYearBeast_OpenBox[1][7]["RewardEffect"] = {}
	tDogYearBeast_OpenBox[1][7]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_OpenBox[1][7]["RewardEffect"]["Effect"] = "angelwing"
	
	tDogYearBeast_OpenBox[2] = {}
	tDogYearBeast_OpenBox[2]["ItemChanceSum"] = 10000
	tDogYearBeast_OpenBox[2][1] ={}
	tDogYearBeast_OpenBox[2][1]["RandomItemChanceType"] = 2
	tDogYearBeast_OpenBox[2][1]["ItemChance"] = 20
	tDogYearBeast_OpenBox[2][1]["RewardItem"] = {}
	tDogYearBeast_OpenBox[2][1]["RewardItem"][1] = {}
	tDogYearBeast_OpenBox[2][1]["RewardItem"][1]["Id"] = 200618  --白色狗年外套永久
	tDogYearBeast_OpenBox[2][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDogYearBeast_OpenBox[2][1]["Log"] = "0,0,0,0,12000984,1[1],200618,1"
	tDogYearBeast_OpenBox[2][1]["RewardBroadCast"] = tDogYearBeast_Text[21413]["Msg"]["Broad"][3]
	tDogYearBeast_OpenBox[2][1]["RewardEffect"] = {}
	tDogYearBeast_OpenBox[2][1]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_OpenBox[2][1]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_OpenBox[2][2] ={}
	tDogYearBeast_OpenBox[2][2]["RandomItemChanceType"] = 2
	tDogYearBeast_OpenBox[2][2]["ItemChance"] = 50
	tDogYearBeast_OpenBox[2][2]["RewardItem"] = {}
	tDogYearBeast_OpenBox[2][2]["RewardItem"][1] = {}
	tDogYearBeast_OpenBox[2][2]["RewardItem"][1]["Id"] = 200619  --黑色狗年外套永久
	tDogYearBeast_OpenBox[2][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tDogYearBeast_OpenBox[2][2]["Log"] = "0,0,0,0,12000984,1[1],200619,1"
	tDogYearBeast_OpenBox[2][2]["RewardBroadCast"] = tDogYearBeast_Text[21413]["Msg"]["Broad"][4]
	tDogYearBeast_OpenBox[2][2]["RewardEffect"] = {}
	tDogYearBeast_OpenBox[2][2]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_OpenBox[2][2]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_OpenBox[2][3] ={}
	tDogYearBeast_OpenBox[2][3]["RandomItemChanceType"] = 2
	tDogYearBeast_OpenBox[2][3]["ItemChance"] = 1000
	tDogYearBeast_OpenBox[2][3]["RewardItem"] = {}
	tDogYearBeast_OpenBox[2][3]["RewardItem"][1] = {}
	tDogYearBeast_OpenBox[2][3]["RewardItem"][1]["Id"] = 3002926  --秘制免费修炼丹
	tDogYearBeast_OpenBox[2][3]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_OpenBox[2][3]["Log"] = "0,0,0,0,12000984,1[1],3002926,1"
	tDogYearBeast_OpenBox[2][3]["RewardBroadCast"] = tDogYearBeast_Text[21413]["Msg"]["Broad"]
	tDogYearBeast_OpenBox[2][3]["RewardEffect"] = {}
	tDogYearBeast_OpenBox[2][3]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_OpenBox[2][3]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_OpenBox[2][4] ={}
	tDogYearBeast_OpenBox[2][4]["RandomItemChanceType"] = 2
	tDogYearBeast_OpenBox[2][4]["ItemChance"] = 100
	tDogYearBeast_OpenBox[2][4]["RewardItem"] = {}
	tDogYearBeast_OpenBox[2][4]["RewardItem"][1] = {}
	tDogYearBeast_OpenBox[2][4]["RewardItem"][1]["Id"] = 3303373  --魔武通玄丹
	tDogYearBeast_OpenBox[2][4]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_OpenBox[2][4]["Log"] = "0,0,0,0,12000984,1[1],3303373,1"
	tDogYearBeast_OpenBox[2][4]["RewardBroadCast"] = tDogYearBeast_Text[21413]["Msg"]["Broad"][7]
	tDogYearBeast_OpenBox[2][4]["RewardEffect"] = {}
	tDogYearBeast_OpenBox[2][4]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_OpenBox[2][4]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_OpenBox[2][5] ={}
	tDogYearBeast_OpenBox[2][5]["RandomItemChanceType"] = 2
	tDogYearBeast_OpenBox[2][5]["ItemChance"] = 1000
	tDogYearBeast_OpenBox[2][5]["RewardItem"] = {}
	tDogYearBeast_OpenBox[2][5]["RewardItem"][1] = {}
	tDogYearBeast_OpenBox[2][5]["RewardItem"][1]["Id"] = 3003126  --究极通神丹
	tDogYearBeast_OpenBox[2][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tDogYearBeast_OpenBox[2][5]["Log"] = "0,0,0,0,12000984,1[1],3003126,1"
	tDogYearBeast_OpenBox[2][5]["RewardEffect"] = {}
	tDogYearBeast_OpenBox[2][5]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_OpenBox[2][5]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_OpenBox[2][6] ={}
	tDogYearBeast_OpenBox[2][6]["RandomItemChanceType"] = 2
	tDogYearBeast_OpenBox[2][6]["ItemChance"] = 2000
	tDogYearBeast_OpenBox[2][6]["RewardItem"] = {}
	tDogYearBeast_OpenBox[2][6]["RewardItem"][1] = {}
	tDogYearBeast_OpenBox[2][6]["RewardItem"][1]["Id"] = 3009000  --微光星陨石*3
	tDogYearBeast_OpenBox[2][6]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tDogYearBeast_OpenBox[2][6]["Log"] = "0,0,0,0,12000984,1[1],3009000,3"
	tDogYearBeast_OpenBox[2][6]["RewardEffect"] = {}
	tDogYearBeast_OpenBox[2][6]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_OpenBox[2][6]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_OpenBox[2][7] ={}
	tDogYearBeast_OpenBox[2][7]["RandomItemChanceType"] = 2
	tDogYearBeast_OpenBox[2][7]["ItemChance"] = 1000
	tDogYearBeast_OpenBox[2][7]["RewardItem"] = {}
	tDogYearBeast_OpenBox[2][7]["RewardItem"][1] = {}
	tDogYearBeast_OpenBox[2][7]["RewardItem"][1]["Id"] = 3009001  --明亮星陨石
	tDogYearBeast_OpenBox[2][7]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tDogYearBeast_OpenBox[2][7]["Log"] = "0,0,0,0,12000984,1[1],3009001,1"
	tDogYearBeast_OpenBox[2][7]["RewardEffect"] = {}
	tDogYearBeast_OpenBox[2][7]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_OpenBox[2][7]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_OpenBox[2][8] ={}
	tDogYearBeast_OpenBox[2][8]["RandomItemChanceType"] = 2
	tDogYearBeast_OpenBox[2][8]["ItemChance"] = 100
	tDogYearBeast_OpenBox[2][8]["RewardItem"] = {}
	tDogYearBeast_OpenBox[2][8]["RewardItem"][1] = {}
	tDogYearBeast_OpenBox[2][8]["RewardItem"][1]["Id"] = 3009002  --晶莹星陨石
	tDogYearBeast_OpenBox[2][8]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tDogYearBeast_OpenBox[2][8]["Log"] = "0,0,0,0,12000984,1[1],3009002,1"
	tDogYearBeast_OpenBox[2][8]["RewardBroadCast"] = tDogYearBeast_Text[21413]["Msg"]["Broad"][5]
	tDogYearBeast_OpenBox[2][8]["RewardEffect"] = {}
	tDogYearBeast_OpenBox[2][8]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_OpenBox[2][8]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_OpenBox[2][9] ={}
	tDogYearBeast_OpenBox[2][9]["RandomItemChanceType"] = 2
	tDogYearBeast_OpenBox[2][9]["ItemChance"] = 2400
	tDogYearBeast_OpenBox[2][9]["RewardItem"] = {}
	tDogYearBeast_OpenBox[2][9]["RewardItem"][1] = {}
	tDogYearBeast_OpenBox[2][9]["RewardItem"][1]["Id"] = 730002  --赤练石+2
	tDogYearBeast_OpenBox[2][9]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tDogYearBeast_OpenBox[2][9]["Log"] = "0,0,0,0,12000984,1[1],730002,1"
	tDogYearBeast_OpenBox[2][9]["RewardEffect"] = {}
	tDogYearBeast_OpenBox[2][9]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_OpenBox[2][9]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_OpenBox[2][10] ={}
	tDogYearBeast_OpenBox[2][10]["RandomItemChanceType"] = 2
	tDogYearBeast_OpenBox[2][10]["ItemChance"] = 100
	tDogYearBeast_OpenBox[2][10]["RewardItem"] = {}
	tDogYearBeast_OpenBox[2][10]["RewardItem"][1] = {}
	tDogYearBeast_OpenBox[2][10]["RewardItem"][1]["Id"] = 730005  --赤练石+5
	tDogYearBeast_OpenBox[2][10]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tDogYearBeast_OpenBox[2][10]["Log"] = "0,0,0,0,12000984,1[1],730005,1"
	tDogYearBeast_OpenBox[2][10]["RewardBroadCast"] = tDogYearBeast_Text[21413]["Msg"]["Broad"][6]
	tDogYearBeast_OpenBox[2][10]["RewardEffect"] = {}
	tDogYearBeast_OpenBox[2][10]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_OpenBox[2][10]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_OpenBox[2][11] ={}
	tDogYearBeast_OpenBox[2][11]["RandomItemChanceType"] = 2
	tDogYearBeast_OpenBox[2][11]["ItemChance"] = 2130
	tDogYearBeast_OpenBox[2][11]["RewardStrengthValue"] = {}
	tDogYearBeast_OpenBox[2][11]["RewardStrengthValue"]["Value"] = 100  -- 100气力值
	tDogYearBeast_OpenBox[2][11]["Log"] = "0,0,0,0,12000984,1[1],12,100"
	tDogYearBeast_OpenBox[2][11]["RewardEffect"] = {}
	tDogYearBeast_OpenBox[2][11]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_OpenBox[2][11]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_OpenBox[2][12] ={}
	tDogYearBeast_OpenBox[2][12]["RandomItemChanceType"] = 2
	tDogYearBeast_OpenBox[2][12]["ItemChance"] = 100
	tDogYearBeast_OpenBox[2][12]["RewardStrengthValue"] = {}
	tDogYearBeast_OpenBox[2][12]["RewardStrengthValue"]["Value"] = 1500  -- 1500气力值
	tDogYearBeast_OpenBox[2][12]["Log"] = "0,0,0,0,12000984,1[1],12,1500"
	tDogYearBeast_OpenBox[2][12]["RewardEffect"] = {}
	tDogYearBeast_OpenBox[2][12]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_OpenBox[2][12]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 捕鱼
local tDogYearBeast_GetFish = {}
	tDogYearBeast_GetFish[1] = {}
	tDogYearBeast_GetFish[1]["ItemChanceSum"] = 10000
	tDogYearBeast_GetFish[1][1] ={}
	tDogYearBeast_GetFish[1][1]["RandomItemChanceType"] = 2
	tDogYearBeast_GetFish[1][1]["ItemChance"] = 4000
	tDogYearBeast_GetFish[1][1]["RewardItem"] = {}
	tDogYearBeast_GetFish[1][1]["RewardItem"][1] = {}
	tDogYearBeast_GetFish[1][1]["RewardItem"][1]["Id"] = 3307197  --金枪鱼
	tDogYearBeast_GetFish[1][1]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_GetFish[1][1]["Log"] = "0,0,0,0,12000984,1[3],3307197,1"
	tDogYearBeast_GetFish[1][1]["Talk"] = tDogYearBeast_Text[21388]["Msg"]["Success"][1]
	tDogYearBeast_GetFish[1][1]["RewardEffect"] = {}
	tDogYearBeast_GetFish[1][1]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_GetFish[1][1]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_GetFish[1][2] ={}
	tDogYearBeast_GetFish[1][2]["RandomItemChanceType"] = 2
	tDogYearBeast_GetFish[1][2]["ItemChance"] = 2500
	tDogYearBeast_GetFish[1][2]["RewardItem"] = {}
	tDogYearBeast_GetFish[1][2]["RewardItem"][1] = {}
	tDogYearBeast_GetFish[1][2]["RewardItem"][1]["Id"] = 3307198  --皮皮虾
	tDogYearBeast_GetFish[1][2]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_GetFish[1][2]["Log"] = "0,0,0,0,12000984,1[3],3307198,1"
	tDogYearBeast_GetFish[1][2]["Talk"] = tDogYearBeast_Text[21388]["Msg"]["Success"][2]
	tDogYearBeast_GetFish[1][2]["RewardEffect"] = {}
	tDogYearBeast_GetFish[1][2]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_GetFish[1][2]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_GetFish[1][3] ={}
	tDogYearBeast_GetFish[1][3]["RandomItemChanceType"] = 2
	tDogYearBeast_GetFish[1][3]["ItemChance"] = 1000
	tDogYearBeast_GetFish[1][3]["RewardItem"] = {}
	tDogYearBeast_GetFish[1][3]["RewardItem"][1] = {}
	tDogYearBeast_GetFish[1][3]["RewardItem"][1]["Id"] = 3307196  --帝王蟹
	tDogYearBeast_GetFish[1][3]["RewardItem"][1]["Attr"] = "0 1"
	tDogYearBeast_GetFish[1][3]["Log"] = "0,0,0,0,12000984,1[3],3307196,1"
	tDogYearBeast_GetFish[1][3]["Talk"] = tDogYearBeast_Text[21388]["Msg"]["Success"][3]
	tDogYearBeast_GetFish[1][3]["RewardEffect"] = {}
	tDogYearBeast_GetFish[1][3]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_GetFish[1][3]["RewardEffect"]["Effect"] = "angelwing"

	tDogYearBeast_GetFish[1][4] ={}
	tDogYearBeast_GetFish[1][4]["RandomItemChanceType"] = 2
	tDogYearBeast_GetFish[1][4]["ItemChance"] = 2500
	-- tDogYearBeast_GetFish[1][4]["RewardItem"] = {}
	-- tDogYearBeast_GetFish[1][4]["RewardItem"][1] = {}
	-- tDogYearBeast_GetFish[1][4]["RewardItem"][1]["Id"] = 3307196  --破罐子
	-- tDogYearBeast_GetFish[1][4]["RewardItem"][1]["Attr"] = "0 1"
	-- tDogYearBeast_GetFish[1][4]["Log"] = "0,0,0,0,12000984,1[3],0,0"
	tDogYearBeast_GetFish[1][4]["Talk"] = tDogYearBeast_Text[21388]["Msg"]["Success"][4]
	tDogYearBeast_GetFish[1][4]["RewardEffect"] = {}
	tDogYearBeast_GetFish[1][4]["RewardEffect"]["SzObj"] = "self"
	tDogYearBeast_GetFish[1][4]["RewardEffect"]["Effect"] = "angelwing"

	
----------------------------------NPC逻辑部分---------------------------------------------
-- 重新组合奖励文字
function DogYearBeast_ComText(sItemName)
	-- User_TalkChannel2005(sItemName)
	local tRewardName = Sys_Split(sItemName,tDogYearBeast_Text["Msg"]["Flag"])
	local sRewardStr = ""
	for i,sName in ipairs(tRewardName) do
		-- User_TalkChannel2005("iii+  ".. i)
		sRewardStr = sRewardStr .. "\t\t".. sItemName .."\n"
	end
	
	if sRewardStr == "" then
		sRewardStr = sItemName
	end
	
	return sRewardStr
end


-- 领取每日祝福礼包
function DogYearBeast_DailyGetBag(nNpcId)
	-- 活动时间
	if not Sys_ChkFullTime(tDogYearBeast_Data["NowTime"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tDogYearBeast_Data["Level"],tDogYearBeast_Data["Metempsychosis"]) then
		return
	end
	-- 隔天清零
	DogYearBeast_SetStc()
	-- 今日是否已领取过
	local nEvent = tDogYearBeast_Stc[1]["EventType"]
	local nType = tDogYearBeast_Stc[1]["DataType"]
	local nUserId = Get_UserId()
	if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	--背包判断
	if not RewardTemplate_CheckSpace(tDogYearBeast_Get["DailyBag"][nNpcId]) then
		Sys_MsgBox(tDogYearBeast_Text["Msg"]["Not"])
		return
	end
	-- 打掩码
	Task_SetStatistic(nEvent,nType,1,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	-- 领取礼包
	RewardTemplate_UseItemAndMsg(tDogYearBeast_Get["DailyBag"][nNpcId])
	--广播
	local flat,tNum = Probabil_RandomAward(tDogYearBeast_BroadCast,1)  
	local nNum = tNum[1]["tAward"][1]["Num"]
	Sys_SystemBroadcast(tDogYearBeast_Text[21386]["Msg"]["BroadCast"][nNum])
		--直接弹出物品使用界面
	local nItem = Get_ItemLastAdd(nUserId)
	local nAddItemId = tDogYearBeast_Get["DailyBag"][21386]["RewardItem"][1]["Id"]
	Item_Dialog(nItem,tDogYearBeast_Text["Msg"]["Dialog"],"</F>DogYearBeast_UseBag</N>" .. nAddItemId,nil,nUserId)

end

-- 领取黑狗坐骑外套
function DogYearBeast_RewardBlack(nNpcId)
	-- 活动时间
	if not Sys_ChkFullTime(tDogYearBeast_Data["NowTime"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tDogYearBeast_Data["Level"],tDogYearBeast_Data["Metempsychosis"]) then
		return
	end
	-- 检测亲密值是否到1000 500
	local nEvent = tDogYearBeast_Stc["Point"][nNpcId]["EventType"]
	local nType = tDogYearBeast_Stc["Point"][nNpcId]["DataType"]
	local nUserId = Get_UserId()
	if Task_ChkStcValue(nEvent,nType,"<",tDogYearBeast_Stc["Point"][nNpcId]["Data"],nUserId) then
		Sys_MsgBox(tDogYearBeast_Text["Msg"][nNpcId])
		return
	end
	-- 已领取
	local nGetEvent = tDogYearBeast_Stc["Get"][nNpcId]["EventType"]
	local nGetType = tDogYearBeast_Stc["Get"][nNpcId]["DataType"]
	if Task_ChkStcValue(nGetEvent,nGetType,">=",1,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	-- 背包空间
	if not RewardTemplate_CheckSpace(tDogYearBeast_Get["Black"][nNpcId]) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	-- 成功获得
	-- 打掩码
	Task_SetStatistic(nGetEvent,nGetType,1,1,nUserId)
	Task_SetStcTimestamp(nGetEvent,nGetType,0,nUserId)
	-- 黑狗坐骑外套
	RewardTemplate_UseItemAndMsg(tDogYearBeast_Get["Black"][nNpcId])

	LinkNpcGossipFunc_New(nNpcId,"3-1")
end
-- 我带来了肉骨头
function DogYearBeast_HandIn(nNpcId,nHandInItem,nNum,nItemIdNum)

	-- 活动时间
	if not Sys_ChkFullTime(tDogYearBeast_Data["NowTime"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tDogYearBeast_Data["Level"],tDogYearBeast_Data["Metempsychosis"]) then
		return
	end

	--检测物品
	if not Item_ChkMulItem(nHandInItem,nHandInItem,nItemIdNum) then
		local sText = tDogYearBeast_Index[nHandInItem][nNum]
		LinkNpcGossipFunc_New(nNpcId,sText)
		return
	end

	--背包空间不足
	local nSpace = 0--tDogYearBeast_Index[nHandInItem]["Space"][nNum]
	for i = 1 ,nItemIdNum do 
		nSpace = RewardTemplate_GetRandomSpace(tDogYearBeast_Index[nHandInItem],2) + nSpace
	end
	if not User_CheckLeftSpace(nSpace) then
		local sText = tDogYearBeast_Text["Msg"]["Not"]
		if nSpace <= 5 then
			local sStr = tDogYearBeast_Text[nNpcId]["Msg"]["NoSpace"][nHandInItem]
			sText = string.format(sStr,nSpace)
		end
		Sys_DialogText(sText)
		Sys_DialogOption(tDogYearBeast_Text[21388]["Msg"]["NoSpace"]["Option"])
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end
			
	--加亲密值
	local nEvent = tDogYearBeast_Stc["Point"][nNpcId]["EventType"]
	local nType = tDogYearBeast_Stc["Point"][nNpcId]["DataType"]
	local nUserId = Get_UserId()

	local nPoint = tDogYearBeast_Index[nHandInItem]["Point"] * nItemIdNum
	Task_AddStatistic(nEvent,nType,nPoint,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	local sItem = ""
	local sMsgItem = ""
	if not Item_DelMulItem(nHandInItem,nHandInItem,nItemIdNum) then
		return
	end
	for i = 1 ,nItemIdNum do
		local tTabA,sItemName = RewardTemplate_NewRandomNoTip(tDogYearBeast_Index[nHandInItem],2)

		if nItemIdNum > 1 then
			sMsgItem = sMsgItem .. tDogYearBeast_Text["Msg"]["Flag"] .. sItemName
			sItem = sItem .. "\t\t\t\t\t\t\t\t\t\t".. sItemName .."\n"
		else
			sMsgItem = sItemName
			sItem = "\t\t\t\t\t\t\t\t\t\t".. sItemName
		end
	end
	
	local sIndex = tDogYearBeast_Index[nHandInItem]["Test"]
	-- LinkNpcGossipFunc_New(nNpcId,sIndex)
	local sGetItem = string.format(tDogYearBeast_Text[nNpcId]["Msg"]["Get"][nHandInItem][nNum],nItemIdNum,nPoint,sMsgItem)
	User_TalkChannel2005(sGetItem,nUserId)	
	if nNpcId == 21386 then
		local sText461 = string.format(tDogYearBeast_Text[21386]["Text461"][nHandInItem],nItemIdNum,nPoint)
		local sTextOther = string.format(tDogYearBeast_Text[21386]["Text461"]["other1"],sItem) .. "\n"
		if nItemIdNum > 1 then
			sText461 = string.format(tDogYearBeast_Text[21386]["Text461"][nHandInItem],nItemIdNum,nPoint) 
			sTextOther = string.format(tDogYearBeast_Text[21386]["Text461"]["other1"],sItem)
		end
		
		Sys_DialogText(sText461)
		Sys_DialogText(tDogYearBeast_Text[21386]["Text461"]["other"])
		Sys_DialogText(sTextOther)
		Sys_DialogText(tDogYearBeast_Text[21386]["Text424"])
		Sys_DialogOption(tDogYearBeast_Text[21386]["Option461"],"</F>LinkNpcGossipFunc_New</N>" .. nNpcId .. "</S>" .. sIndex)
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
	else
		LinkNpcGossipFunc_New(nNpcId,sIndex)
	end
	--好感度 邮件发奖
	DogYearBeast_HandInMail(nNpcId,nHandInItem,nNum,nItemIdNum)
end

function DogYearBeast_HandInMail(nNpcId,nHandInItem,nNum,nItemIdNum)
	local nGetEvent = tDogYearBeast_Stc["Get"][nNpcId]["EventType"]
	local nGetType = tDogYearBeast_Stc["Get"][nNpcId]["DataType"]
	local nUserId = Get_UserId()
	if Task_ChkStcValue(nGetEvent,nGetType,">=",1,nUserId) then
		return
	end
	-- 检测亲密值是否到1000 500
	local nEvent = tDogYearBeast_Stc["Point"][nNpcId]["EventType"]
	local nType = tDogYearBeast_Stc["Point"][nNpcId]["DataType"]

	if Task_ChkStcValue(nEvent,nType,"<",tDogYearBeast_Stc["Point"][nNpcId]["Data"],nUserId) then
		return
	end
	-- 成功获得
	-- 打掩码
	Task_SetStatistic(nGetEvent,nGetType,1,1,nUserId)
	Task_SetStcTimestamp(nGetEvent,nGetType,0,nUserId)
	
	local nExistDay = tDogYearBeast_Action["ExistDay"]
	local sSender = tDogYearBeast_Text["Mail"][nNpcId]["Sender"]
	local sTitle = tDogYearBeast_Text["Mail"][nNpcId]["Title"]
	local sContent = tDogYearBeast_Text["Mail"][nNpcId]["Content"]
	local nActionId = tDogYearBeast_Action[nNpcId]
	Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)

end

-- 花钱购买肉骨头
function DogYearBeast_HandInCost(nNpcId,nHandInItem,nNum,nItemIdNum)

	-- 活动时间
	if not Sys_ChkFullTime(tDogYearBeast_Data["NowTime"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tDogYearBeast_Data["Level"],tDogYearBeast_Data["Metempsychosis"]) then
		return
	end
	-- 天石不足

	local nNeedMoney = tDogYearBeast_Data["Money"][nHandInItem] * nNum
	local nUserMoney = Get_UserEMoney(nUserId)
	local sItemName = Get_ItemtypeName(nHandInItem)

	if nUserMoney < nNeedMoney then
		local sMoneyText = string.format(tDogYearBeast_Text[21386]["Text431"],nNeedMoney,nNum,sItemName)
		
		Sys_DialogText(sMoneyText)
		Sys_DialogOption(tDogYearBeast_Text[21386]["Option431"])
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end
	local nEvent = tDogYearBeast_Stc[8]["EventType"]
	local nType = tDogYearBeast_Stc[8]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	if DogYearBeast_ChkReCost(nHandInItem,nData) then
		DogYearBeast_Cost(nNpcId,nHandInItem,nNum,nItemIdNum)
		return
	end
	local sText = string.format(tDogYearBeast_Text[21386]["Text451"],nNeedMoney,nNum,sItemName)
	local sOption = string.format(tDogYearBeast_Text[21386]["Option451"],nNeedMoney)
	Sys_DialogText(sText)
	Sys_DialogOption(sOption,"</F>DogYearBeast_Cost</N>" .. nNpcId .. "</N>" .. nHandInItem .. "</N>" .. nNum .. "</N>" .. nItemIdNum)
	Sys_DialogOption(tDogYearBeast_Text[21386]["Option452"],"</F>DogYearBeast_ReCost</N>" .. nNpcId .. "</N>" .. nHandInItem .. "</N>" .. nNum .. "</N>" .. nItemIdNum)
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end
-- 判断今日是否已屏蔽
function DogYearBeast_ChkReCost(nHandInItem,nData)
	local nNum = nData%10
	
	if nHandInItem == 3307199 then
		nNum = (math.floor(nData/10))
	end
	
	if nNum >= 1 then
		return true
	else
		return false
	end
	
end

--二次确认屏蔽
function DogYearBeast_ReCost(nNpcId,nHandInItem,nNum,nItemIdNum)
	local nEvent = tDogYearBeast_Stc[8]["EventType"]
	local nType = tDogYearBeast_Stc[8]["DataType"]
	local nUserId = Get_UserId()
	-- 打掩码
	Task_AddStatistic(nEvent,nType,tDogYearBeast_Data["Index"][nHandInItem],1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	DogYearBeast_Cost(nNpcId,nHandInItem,nNum,nItemIdNum)
end

function DogYearBeast_Cost(nNpcId,nHandInItem,nNum,nItemIdNum)

	-- 活动时间
	if not Sys_ChkFullTime(tDogYearBeast_Data["NowTime"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tDogYearBeast_Data["Level"],tDogYearBeast_Data["Metempsychosis"]) then
		return
	end
	-- 天石不足
	local nUserId = Get_UserId()
	local nNeedMoney = tDogYearBeast_Data["Money"][nHandInItem] * nNum
	local nUserMoney = Get_UserEMoney(nUserId)
	local sItemName = Get_ItemtypeName(nHandInItem)
	if nUserMoney < nNeedMoney then
		local sMoneyText = string.format(tDogYearBeast_Text[21386]["Text431"],nNeedMoney,nNum,sItemName)
		Sys_DialogText(sMoneyText)
		Sys_DialogOption(tDogYearBeast_Text[21386]["Option431"])
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end
	-- 背包空间不足
	local nSpace = 0--tDogYearBeast_Index[nHandInItem]["Space"][nNum]
	for i = 1 ,nItemIdNum do 
		nSpace = RewardTemplate_GetRandomSpace(tDogYearBeast_Index[nHandInItem],2) + nSpace
	end
	if not User_CheckLeftSpace(nSpace) then
		local sText = tDogYearBeast_Text["Msg"]["Not"]
		if nSpace <= 5 then
			local sStr = tDogYearBeast_Text[nNpcId]["Msg"]["NoSpace"][nHandInItem]
			sText = string.format(sStr,nSpace)
		end
		Sys_DialogText(sText)
		Sys_DialogOption(tDogYearBeast_Text[21388]["Msg"]["NoSpace"]["Option"])
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end

	-- -扣天石
	if User_AddEMoney(-nNeedMoney) then
				
		-- 加亲密值
		local nEvent = tDogYearBeast_Stc["Point"][nNpcId]["EventType"]
		local nType = tDogYearBeast_Stc["Point"][nNpcId]["DataType"]
		local nUserId = Get_UserId()
		local nPoint = tDogYearBeast_Index[nHandInItem]["Point"] * nItemIdNum
		Task_AddStatistic(nEvent,nType,nPoint,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		local sItem = ""
		local sMsgItem = ""
		-- if not Item_DelMulItem(nHandInItem,nHandInItem,nItemIdNum) then
			-- return
		-- end
		for i = 1 ,nItemIdNum do
			local tTabA,sItemName = RewardTemplate_NewRandomNoTip(tDogYearBeast_Index[nHandInItem],2)

			if nItemIdNum > 1 then
				sMsgItem = sMsgItem .. tDogYearBeast_Text["Msg"]["Flag"] .. sItemName
				sItem = sItem .. "\t\t\t\t\t\t\t\t\t\t".. sItemName .."\n"
			else
				sMsgItem = sItemName
				sItem = "\t\t\t\t\t\t\t\t\t\t".. sItemName
			end
		end
		local sIndex = tDogYearBeast_Index[nHandInItem]["Test"]
		-- LinkNpcGossipFunc_New(nNpcId,sIndex)
		local sGetItem = string.format(tDogYearBeast_Text[nNpcId]["Msg"]["Get"][nHandInItem][nNum],nItemIdNum,nPoint,sMsgItem)
		User_TalkChannel2005(sGetItem,nUserId)	
		
		-- 打log
		local sLog = string.format(tDogYearBeast_Log["Buy"],nNeedMoney)
		Sys_SaveActionFestivalLog(sLog,nUserId)
	-- -emoneylog
		Sys_SaveEmoneyBuy(tDogYearBeast_Data["Emoneylog"][nHandInItem][nNum],nUserId)
		if nNpcId == 21386 then
			local sText461 = string.format(tDogYearBeast_Text[21386]["Text461"][nHandInItem],nItemIdNum,nPoint)
			local sTextOther = string.format(tDogYearBeast_Text[21386]["Text461"]["other1"],sItem) .. "\n"
			if nItemIdNum > 1 then
				sText461 = string.format(tDogYearBeast_Text[21386]["Text461"][nHandInItem],nItemIdNum,nPoint) 
				sTextOther = string.format(tDogYearBeast_Text[21386]["Text461"]["other1"],sItem)
			end
		
			Sys_DialogText(sText461)
			Sys_DialogText(tDogYearBeast_Text[21386]["Text461"]["other"])
			Sys_DialogText(sTextOther)
			Sys_DialogText(tDogYearBeast_Text[21386]["Text424"])
			Sys_DialogOption(tDogYearBeast_Text[21386]["Option461"],"</F>LinkNpcGossipFunc_New</N>" .. nNpcId .. "</S>" .. sIndex)
			Sys_DialogFace(nNpcId)
			Sys_DialogEnd()
		end
		--好感度 邮件发奖
		DogYearBeast_HandInMail(nNpcId,nHandInItem,nNum,nItemIdNum)

	end
end
-- 【上山打虎】哈士奇将军
function DogYearBeast_Goto(nNpcId)
	-- 活动时间
	if not Sys_ChkFullTime(tDogYearBeast_Data["NowTime"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tDogYearBeast_Data["Level"],tDogYearBeast_Data["Metempsychosis"]) then
		return
	end
	-- 今日是否已经进过副本
	local nEvent = tDogYearBeast_Stc[2]["EventType"]
	local nType = tDogYearBeast_Stc[2]["DataType"]
	local nUserId = Get_UserId()

	if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
		return
	end
	
	--组队不能进入
	if Get_UserTeamNumbers(nUserId) >= 2 then
		Sys_MsgBox(tDogYearBeast_Text[21387]["Msg"]["NoGoto"])
		return
	end
	
	User_EnterInstance(tDogYearBeast_Data["Instancetype"]) 

 --进副本
	
	local nMapId = Get_UserMapId()
	DogYearBeast_CallBoss(nMapId)
	User_TalkChannel2005(tDogYearBeast_Text[21387]["Msg"]["Goto"])
	Sys_SaveActionFestivalLog(tDogYearBeast_Log["Goto"],nUserId)
end

--招出怪
function DogYearBeast_CallBoss(nMapId)
	local nNowMapId = Get_UserMapId()

	if nNowMapId ~= nMapId then
		return
	end
	local nPosX = tDogYearBeast_Data["Tiger"]["PosX"]
	local nPosY = tDogYearBeast_Data["Tiger"]["PosY"]
	local nGenId = tDogYearBeast_Data["GenId"]
	local nMonsterId = tDogYearBeast_Data["MonsterId"]

	--动态刷出boss
	Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)

	--播放光效
	-- Map_Effect(nMapId,nPosX,nPosY,tBossHunderdTower_Data["BossEffect"]) --光效
	--打log
	Sys_SaveActionFestivalLog(tDogYearBeast_Log["CallBoss"])

end

-- 喵星宝藏 
function DogYearBeast_OpenBox(nNpcId)
	-- 活动时间
	if not Sys_ChkFullTime(tDogYearBeast_Data["NowTime"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tDogYearBeast_Data["Level"],tDogYearBeast_Data["Metempsychosis"]) then
		return
	end
	-- 今日是否已经打开过宝藏
	local nEvent = tDogYearBeast_Stc[3]["EventType"]
	local nType = tDogYearBeast_Stc[3]["DataType"]
	local nUserId = Get_UserId()
	if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
		Sys_MsgBox(tDogYearBeast_Text[21413]["Msg"]["Got"])
		return
	end
	-- 背包空间
	local bIndexA,nSpaceA = RewardTemplate_ChkRandomSpace(tDogYearBeast_OpenBox,1)
	local bIndexB,nSpaceB = RewardTemplate_ChkRandomSpace(tDogYearBeast_OpenBox,2)
	local nSpace = nSpaceA + nSpaceB
	if not User_CheckLeftSpace(nSpace) then
		local sMsg = string.format(tDogYearBeast_Text[21413]["Msg"]["Space"],nSpace)
		Sys_MsgBox(sMsg)
		return
	end
	Task_SetStatistic(nEvent,nType,1,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)

	RewardTemplate_NewRandom(tDogYearBeast_OpenBox,1)
	RewardTemplate_NewRandom(tDogYearBeast_OpenBox,2)
	-- Npc_MoveNpcPos(tDogYearBeast_Data["BoxNpcId"],5000,100,100)

end
-- 自动寻路前往钓鱼
function DogYearBeast_GotoFish(nNpcId)
	-- 活动时间
	if not Sys_ChkFullTime(tDogYearBeast_Data["NowTime"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tDogYearBeast_Data["Level"],tDogYearBeast_Data["Metempsychosis"]) then
		return
	end
	--判断今日是否已钓鱼10次
	local nEvent = tDogYearBeast_Stc[4]["EventType"]
	local nType = tDogYearBeast_Stc[4]["DataType"]
	local nUserId = Get_UserId()
	if Task_ChkStcValue(nEvent,nType,">=",tDogYearBeast_Stc[4]["Data"],nUserId) then
		Sys_MsgBox(tDogYearBeast_Text[21388]["Msg"]["Fure"])
		return
	end
	--寻路
	local nMapId = tDogYearBeast_Data["MapId"]
	local nPosX = tDogYearBeast_Data["PosX"]
	local nPosY = tDogYearBeast_Data["PosY"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId)
end

----捕鱼NPC
function DogYearBeast_GetFish(nNpcId)
	-- 活动时间
	if not Sys_ChkFullTime(tDogYearBeast_Data["NowTime"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tDogYearBeast_Data["Level"],tDogYearBeast_Data["Metempsychosis"]) then
		return
	end
	local nPosX = tDogYearBeast_Pos[nNpcId]["PosX"]
	local nPosY = tDogYearBeast_Pos[nNpcId]["PosY"]
	-- 7格外不让点
	local nUserX = Get_UserPositionX()
	local nUserY = Get_UserPositionY()

	-- 判断距离
	if not DogYearBeast_Distance(nUserX,nUserY,nPosX,nPosY,10) then
		Sys_MsgBox(tDogYearBeast_Text[21388]["Msg"]["Far"],nil,nil,nUserId)
		return
	end
	
	-- 今日捕鱼已经满10次
	local nUserId = Get_UserId()
	local nEvent = tDogYearBeast_Stc[4]["EventType"]
	local nType = tDogYearBeast_Stc[4]["DataType"]
	if Task_ChkStcValue(nEvent,nType,">=",tDogYearBeast_Stc[4]["Data"],nUserId) then
		Sys_MsgBox(tDogYearBeast_Text[21388]["Msg"]["Fure"],"NpcPosition_PathFind</N>21388",nil,nUserId)
		return
	end
	
	---判断背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tDogYearBeast_GetFish,1)
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tDogYearBeast_Text[21388]["Msg"]["NotSpace"])
		return
	end
	
	-- 读条
	User_SetExplore(3,tDogYearBeast_Text[21388]["Msg"]["Tip"],100,"DogYearBeast_Fishing")
end

--判断距离=>距离内true,距离外false
function DogYearBeast_Distance(nUserX,nUserY,nPosX,nPosY,nNum)

	local nX_Distance = math.abs(nUserX-nPosX)
	local nY_Distance = math.abs(nUserY-nPosY)
	--比较宝藏的坐标x,y与玩家的坐标差绝对值
	if nX_Distance < nNum and nY_Distance < nNum then
		return true
	else
		return false
	end
end

function DogYearBeast_Fishing(nUserId)
	-- 活动时间
	if not Sys_ChkFullTime(tDogYearBeast_Data["NowTime"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tDogYearBeast_Data["Level"],tDogYearBeast_Data["Metempsychosis"],nUserId) then
		return
	end
	---判断背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tDogYearBeast_GetFish,1,nUserId)
	if not User_CheckLeftSpace(nSpace,nUserId) then
		Sys_MsgBox(tDogYearBeast_Text[21388]["Msg"]["NotSpace"],nil,nil,nUserId)
		return
	end
	
	local nEvent = tDogYearBeast_Stc[4]["EventType"]
	local nType = tDogYearBeast_Stc[4]["DataType"]
	if Task_ChkStcValue(nEvent,nType,">=",tDogYearBeast_Stc[4]["Data"],nUserId) then
		return
	end
	-- 打掩码
	Task_AddStatistic(nEvent,nType,1,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	local tNewReward,sRewardStr = RewardTemplate_NewRandomNoTip(tDogYearBeast_GetFish,1,nUserId)
	local sStr = tNewReward[1]["tAward"][1]["Talk"]
	-- if sRewardStr == "" then
	Sys_MsgBox(sStr,nil,nil,nUserId)
	-- end
end

---隔天掩码清零
function DogYearBeast_SetStc()
	for a,b in ipairs(tDogYearBeast_Stc) do
		local nEvent = tDogYearBeast_Stc[a]["EventType"]
		local nType = tDogYearBeast_Stc[a]["DataType"]
		local nUserId = Get_UserId()
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1)
			Task_SetStcTimestamp(nEvent,nType,0)
		end
	end
end

--领取跟随从
function DogYearBeast_GetPet(nNpcId)
	-- 活动时间
	if not Sys_ChkFullTime(tDogYearBeast_Data["NowTime"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tDogYearBeast_Data["Level"],tDogYearBeast_Data["Metempsychosis"],nUserId) then
		return
	end
	local nEvent = tDogYearBeast_Stc["GetPet"]["EventType"]
	local nType = tDogYearBeast_Stc["GetPet"]["DataType"]
	local nUserId = Get_UserId()
	if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
		return
	end
	-- 打掩码
	Task_SetStatistic(nEvent,nType,1,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)

	RewardTemplate_UseItemAndMsg(tDogYearBeast_Get["GetPet"])
	Sys_MsgBox(tDogYearBeast_Text[21387]["Msg"]["GetMagic"])
end

function DogYearBeast_GetMagic(nNpcId)
	for a,b in pairs(tDogYearBeast_Data["Magic"]) do
		local nMagicLev = DogUpItem_GetLevByStc(b)
		local nMagicType = tDogYearBeast_Data["MagicLev"][b][nMagicLev]
		if nMagicLev > 0 and not Magic_ChkType(nMagicType) then
			if Magic_Learn(nMagicType,nUserId) then
				Sys_MsgBox(tDogYearBeast_Text["Msg"]["Magic"])
			end
		end
	end
end
----------------------------------怪物逻辑---------------------------------------------
-- 吊睛虎王
function DogYearBeast_Tiger(nMonsterId)
	-- 活动时间
	if not Sys_ChkFullTime(tDogYearBeast_Data["NowTime"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tDogYearBeast_Data["Level"],tDogYearBeast_Data["Metempsychosis"]) then
		return
	end
	local nEvent = tDogYearBeast_Stc[2]["EventType"]
	local nType = tDogYearBeast_Stc[2]["DataType"]
	local nUserId = Get_UserId()
	-- 置1
	Task_AddStatistic(nEvent,nType,1,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)

	--获得礼包
	RewardTemplate_UseItemAndMsg(tDogYearBeast_Get[nMonsterId])
	local nMapId = tDogYearBeast_Data["Break"]["MapId"]
	local nPosX = tDogYearBeast_Data["Break"]["PosX"]
	local nPosY = tDogYearBeast_Data["Break"]["PosY"]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5,1)
	Sys_MsgBox(tDogYearBeast_Text["Msg"]["Monster"])
end


-- 狮子王
function DogYearBeast_Lion(nMonsterId)
	-- 活动时间
	if not Sys_ChkFullTime(tDogYearBeast_Data["NowTime"]) then
		return
	end
	-- if not User_JudgeLevelAndMetempsychosis(tDogYearBeast_Data["Level"],tDogYearBeast_Data["Metempsychosis"]) then
		-- return
	-- end
--BOSS死亡位置刷出一个大宝箱，同时全服播报，
	
	local nBossPosX = Get_MonsterPosX()
	local nBossPosY = Get_MonsterPosY()
	local nMapId = tDogYearBeast_Data["Boss"]["MapId"]
	-- 移出npc
	Npc_MoveNpcPos(tDogYearBeast_Data["BoxNpcId"],nMapId,nBossPosX,nBossPosY)
	Sys_SetTempData(1,nMapId,nMonsterId,0)
	Sys_MsgBox(tDogYearBeast_Text["Msg"]["KillBoss"])
	
	---给对boss有伤害的发邮件
	-- 邮件发放奖品
	if #tDogYearBeast_BossDanger == 0 then
		return
	end
	for a,b in pairs(tDogYearBeast_BossDanger) do
		local nExistDay = tDogYearBeast_Action["ExistDay"]
		local sSender = tDogYearBeast_Text["Mail"][2]["Sender"]
		local sTitle = tDogYearBeast_Text["Mail"][2]["Title"]
		local sContent = tDogYearBeast_Text["Mail"][2]["Content"]
		local nActionId = tDogYearBeast_Action[11]
		Sys_SendMail(b,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
		-- local sLog = string.format(tDogYearBeast_Log["BossRank"],11)
		-- Sys_SaveActionFestivalLog(sLog,b)
	end
end

 -- 每日晚上21:00在双龙城外刷出BOSS：猫国外援-虎大王
function DogYearBeast_TimeChkMonster()
	-- 活动时间
	if not Sys_ChkFullTime(tDogYearBeast_Data["NowTime"]) then
		return
	end
	local nBossId = tDogYearBeast_Data["Boss"]["Id"]
	local nMapId = tDogYearBeast_Data["Boss"]["MapId"]
	local nMonsterNum = Get_SysTempData(1,nMapId,nBossId)
	if nMonsterNum >= 1 then
		return
	end
	local nGlobalId = tDogYearBeast_Get[2][2]["GlobalId"]
	local nIndex = Get_SysDynaGlobalData(nGlobalId,2)
	if nIndex >= 1 then
		return
	end
	local nPosX = tDogYearBeast_Data["Boss"]["PosX"]
	local nPosY = tDogYearBeast_Data["Boss"]["PosY"]
	local nGenId = tDogYearBeast_Data["Boss"]["GenId"]
	Monster_AddMonster(nMapId,nPosX,nPosY,nGenId,nBossId)
	Sys_SetTempData(1,nMapId,nBossId,nMonsterNum+1)
	--播放光效
	Map_Effect(nMapId,nPosX,nPosY,tDogYearBeast_Data["BossEffect"]) --光效

	--广播
	Sys_SystemBroadcast(tDogYearBeast_Text["Msg"]["Boss"])
	Sys_SetSynaGlobalData2(nGlobalId,1)
end

--伤害排行
function DogYearBeast_KillBoss(nServerId,nUserId,nRank,nDmg,nMonsterId)
	if nRank > 10 then
		return
	end
	
	-- 邮件发放奖品
	local nExistDay = tDogYearBeast_Action["ExistDay"]
	local sSender = tDogYearBeast_Text["Mail"][1]["Sender"]
	local sTitle = tDogYearBeast_Text["Mail"][1]["Title"]
	local nNum = tDogYearBeast_Data["Number"]
	if nRank == 1 then
		nNum = nNum + 1
	end
	local sContent = string.format(tDogYearBeast_Text["Mail"][1]["Content"],nNum)
	local nActionId = tDogYearBeast_Action[nRank]
	Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent,nServerId)
	-- local sLog = string.format(tDogYearBeast_Log["BossRank"],nRank)
	-- Sys_SaveActionFestivalLog(sLog,nUserId)
end


-- 对boss有伤害
function DogYearBeast_KillBossAward(nServerId,nUserId,nRank,nDmg,nMonsterId)
	for a,b in pairs(tDogYearBeast_BossDanger) do
		if b == nUserId then
			return
		end
	end
		
	table.insert(tDogYearBeast_BossDanger,nUserId)
end


---清boss
function DogYearBeast_ClearBoss()
	Sys_SetTempData(1,tDogYearBeast_Data["Boss"]["MapId"],tDogYearBeast_Data["Boss"]["Id"],0)
	Monster_DelMonster(tDogYearBeast_Data["Boss"]["MapId"],tDogYearBeast_Data["Boss"]["Id"])
	local nGlobalId = tDogYearBeast_Get[2][2]["GlobalId"]
	tDogYearBeast_BossDanger = {}
	Sys_SetSynaGlobalData2(nGlobalId,0)
	Npc_MoveNpcPos(tDogYearBeast_Data["BoxNpcId"],5000,100,100)
end

function DogYearBeast_ClearGlobalId()
	-- 活动时间
	if not Sys_ChkFullTime(tDogYearBeast_Data["NowTime"]) then
		return
	end
	local nGlobalId = tDogYearBeast_Get[2][2]["GlobalId"]

	Sys_SetSynaGlobalData1(nGlobalId,0)
end
-- 功勋礼包
function DogYearBeast_RewarItem(nNum)
	-- 活动时间
	if not Sys_ChkFullTime(tDogYearBeast_Data["NowTime"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tDogYearBeast_Data["Level"],tDogYearBeast_Data["Metempsychosis"]) then
		return
	end
	--获得礼包
	RewardTemplate_UseItemAndMsg(tDogYearBeast_Get[nNum])
end

-- 野外挂机
function DogYearBeast_KillMonster(nMosterId)
	-- 活动时间
	if not Sys_ChkFullTime(tDogYearBeast_Data["NowTime"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tDogYearBeast_Data["Level"],tDogYearBeast_Data["Metempsychosis"]) then
		return
	end
	-- 前5个掉落1%,后5个掉率0.1%，每日限量5个
	local nGlobalId = tDogYearBeast_Get[2][2]["GlobalId"]
	local nUserId  = Get_UserId()
	local nEvent = tDogYearBeast_Stc[7]["EventType"]
	local nType = tDogYearBeast_Stc[7]["DataType"]
	local nDataNum = Get_UserStatisticValue(nEvent,nType,nUserId)
	local tNewReward = {}
	local sRewardStr = ""
	if nDataNum >= 3 then
		tNewReward,sRewardStr = RewardTemplate_NewRandom(tDogYearBeast_Get,3)
	else
		tNewReward,sRewardStr = RewardTemplate_NewRandom(tDogYearBeast_Get,2)
	end


	if tNewReward[1]["tAward"][1]["Num"] ~= 0 then
		local nEventType = tNewReward[1]["tAward"][1]["EventType"]
		local DataType = tNewReward[1]["tAward"][1]["DataType"]
		local nData = Get_UserStatisticValue(nEventType,DataType,nUserId)
		if nData == tNewReward[1]["tAward"][1]["RewardData"] then
			Task_AddStatistic(nEventType,DataType,1,1,nUserId)
			Task_SetStcTimestamp(nEventType,DataType,0,nUserId)
			Sys_MsgBox(tNewReward[1]["tAward"][1]["Conent"])
		end
	end
end


---网址
function DogYearBeast_Web()
	User_SendWebDialog(tDogYearBeast_Data["Web"])
end

-- 兑换
function DogYearBeast_ExchageReward(nNpcId,nDelItem,nRewardNum)
	-- 二次确认
	local sItemName = Get_ItemtypeName(nDelItem)
	local sText = string.format(tDogYearBeast_Text[21390]["Text211"],sItemName,nRewardNum)
	Sys_DialogText(sText)
	Sys_DialogOption(tDogYearBeast_Text[21390]["Option211"],"</F>DogYearBeast_ExchageRewardItem</N>" .. nNpcId .. "</N>" .. nDelItem .. "</N>" .. nRewardNum)
	Sys_DialogOption(tDogYearBeast_Text[21390]["Option212"])
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

function DogYearBeast_ExchageRewardItem(nNpcId,nDelItem,nRewardNum)
	local nUserId = Get_UserId()
	local sItemName = Get_ItemtypeName(nDelItem)
	if not Item_ChkMulItem(nDelItem,nDelItem,1,1,0,nUserId,0) then
		local sText = string.format(tDogYearBeast_Text[21390]["Text311"],sItemName) 
		Sys_DialogText(sText)
		Sys_DialogOption(tDogYearBeast_Text[21390]["Option311"])
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end
	local tTab = CommonFunc_Copy(tDogYearBeast_Get["Exchange"])
	tTab["DeleteItem"][1]["Id"] = nDelItem
	tTab["RewardItem"][1]["Attr"] = string.format(tDogYearBeast_Get["Exchange"]["RewardItem"][1]["Attr"],nRewardNum)

	if Item_ChkMulItem(nDelItem,nDelItem,1,2,0,nUserId,1) then
		tTab["DeleteItem"][1]["Monopoly"] = 2
	end
	RewardTemplate_UseItemAndMsg(tTab)
end

----------------------------------物品逻辑部分---------------------------------------------
---过期删除物品
function DogYearBeast_OverTime(nItemId)
	local sOverTime = tDogYearBeast_Data["NowTime"]
	if not Sys_ChkFullTime(sOverTime) and Item_DelAllItemByType(nItemId) then
		local nItemIdNum = Get_CountItemType(nItemId,0)
		User_TalkChannel2005(tDogYearBeast_Text["Msg"]["OverTime"])
		local sLog = string.format(tDogYearBeast_Log["Over"],nItemId,nItemIdNum)
		Sys_SaveActionFestivalLog(sLog)
		return true
	end
	return false
end
-- 狗年祝福礼包
function DogYearBeast_UseBag(nItemId)
	if DogYearBeast_OverTime(nItemId) then
		return
	end
	if not Item_ChkItem(nItemId) or not Item_DelItem(nItemId) then
		return
	end
	local tTabA,sItemNameA = RewardTemplate_NewRandomNoTip(tDogYearBeast_Reward[nItemId],1)
	local tTabB,sItemNameB = RewardTemplate_NewRandomNoTip(tDogYearBeast_Reward[nItemId],2)
	local sStr = sItemNameA .. tDogYearBeast_Text["Msg"]["Flag"] .. sItemNameB
	local sMsg = string.format(tDogYearBeast_Text["Msg"]["GotItem"],sStr)
	User_TalkChannel2005(sMsg)
	---光效
	-- User_EffectAdd("self",tDogYearBeast_Data["Effect"])

end

function DogYearBeast_UseItem(nItemId,nNum)
	if DogYearBeast_OverTime(nItemId) then
		return
	end
	local nItemNum = tDogYearBeast_Reward[3307205][nNum]["DeleteItem"][1]["ItemNum"]
	local nNeedItem = tDogYearBeast_Reward[3307205][nNum]["DeleteItem"][2]["Id"]
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		local sContent = string.format(tDogYearBeast_Text[3307205]["Msg"]["NoItem"],nItemNum)
		Sys_MsgBox(sContent)
		return
	end
	local tTab = CommonFunc_Copy(tDogYearBeast_Reward[3307205][nNum])
	local nUserId = Get_UserId()
	local nFlag = 1
	-- 赠品
	if  Item_ChkMulItem(nNeedItem,nNeedItem,1,2,0,nUserId,0) then
		tTab["DeleteItem"][2]["Monopoly"] = 2
		nFlag = 2
	else
		if Item_ChkMulItem(nNeedItem,nNeedItem,1,0,0,nUserId,0) then
			tTab["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
		else
			Sys_MsgBox(tDogYearBeast_Text[3307205]["Msg"]["NoNeedItem"])
			return
		end
	end
	-- 【成功合成】
	RewardTemplate_UseItemAndMsg(tTab)
	local nAddItem = tDogYearBeast_Reward[3307205][nNum]["RewardItem"][1]["Id"]
	local sItemName = Get_ItemtypeName(nAddItem)
	if nFlag == 2 then
		sItemName = sItemName .. tDogYearBeast_Text["Msg"]["Index"]
	end
	local sStr = string.format(tDogYearBeast_Text[3307205]["Msg"]["Item"],sItemName)
	Sys_MsgBox(sStr)
	LinkItemGossipFunc_New(nItemId,"1-1")
end

function DogYearBeast_UsePicItem(nItemId,sAddItemName)
	if DogYearBeast_OverTime(nItemId) then
		return
	end
	local nItemNum = tDogYearBeast_Reward[nItemId]["DeleteItem"][1]["ItemNum"]
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		Sys_MsgBox(tDogYearBeast_Text[3307202]["NoPic"])
		return
	end
	-- 背包空间
	if not RewardTemplate_CheckSpace(tDogYearBeast_Reward[nItemId]) then
		Sys_MsgBox(tDogYearBeast_Text[3307202]["NoSpace"])
		return
	end
	-- 【成功合成】
	RewardTemplate_UseItemAndMsg(tDogYearBeast_Reward[nItemId])

	local sMsg = string.format(tDogYearBeast_Text[3307202]["Get"],sAddItemName)
	Sys_MsgBox(sMsg)
	
end

-- 碎片合成
function DogYearBeast_ChangeItem(nItemId)
	if DogYearBeast_OverTime(nItemId) then
		return
	end
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(tDogYearBeast_Text[3307202]["NoItem"])
		return
	end
	local tTab = CommonFunc_Copy(tDogYearBeast_Reward["Pic"])
	-- 背包空间
	if not RewardTemplate_CheckSpace(tTab) then
		Sys_MsgBox(tDogYearBeast_Text[3307202]["NoBag"])
		return
	end
	if Sys_Random(tDogYearBeast_Data["Random"],10000) then
		tTab["DeleteItem"][1]["Id"] = nItemId
		tTab["RewardItem"][1]["Id"] = nItemId 
		
		RewardTemplate_UseItemAndMsg(tTab)
		local sItemName = Get_ItemtypeName(nItemId)
		local sStr = string.format(tDogYearBeast_Text[3307202]["Success"],sItemName)
		Sys_MsgBox(sStr)
		LinkItemGossipFunc_New(nItemId,"1-1")
		return
	end
	local tTab_Del = CommonFunc_Copy(tDogYearBeast_Reward["DelPic"])
	tTab_Del["DeleteItem"][1]["Id"] = nItemId
	RewardTemplate_UseItemAndMsg(tTab_Del)
	User_TalkChannel2005(tDogYearBeast_Text[3307202]["Fail"])
	LinkItemGossipFunc_New(nItemId,"1-1")
end

----可选包
function DogYearBeast_ChoseItem(nItemId,nNum)
	if DogYearBeast_OverTime(nItemId) then
		return
	end
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItemAndMsg(tDogYearBeast_Reward[nItemId][nNum])
	if nItemId == 3307205 then
		Sys_MsgBox(tDogYearBeast_Text[3307205]["Msg"]["GetItem"])
	end
end


---全服邀请
function DogYearBeast_SendInMap()
	if not Sys_ChkFullTime(tDogYearBeast_Data["NowTime"]) then
		return
	end
	
	if Sys_InviteFilter(2,"metempsychosis >= 0 level >= 80") then
		Sys_InviteTrans(tDogYearBeast_Data["MapId"],tDogYearBeast_Data["Invite_Pos"],10567,10568,2,30)
	end
end

function DogYearBeast_Leave()
	local nMapId = tDogYearBeast_Data["Break"]["MapId"]
	local nPosX = tDogYearBeast_Data["Break"]["PosX"]
	local nPosY = tDogYearBeast_Data["Break"]["PosY"]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5,1)
end

----------------------------------NPC部分---------------------------------------------
-- 金毛大帅
tNpcFace[517] = 1308
tNpcGossip[21386]= tNpcGossip[21386] or DefaultNpc:new{}
tNpcGossip[21386]["OptionHidden"] = 1
-- 活动前
tNpcGossip[21386]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[21386]["Text111"] = tDogYearBeast_Text[21386]["Text111"]
tNpcGossip[21386]["Text112"] = tDogYearBeast_Text[21386]["Text112"]
tNpcGossip[21386]["Text113"] = tDogYearBeast_Text[21386]["Text113"]
tNpcGossip[21386]["Text114"] = tDogYearBeast_Text[21386]["Text114"]
tNpcGossip[21386]["Text115"] = tDogYearBeast_Text[21386]["Text115"]

tNpcGossip[21386]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tDogYearBeast_Data["BefTime"])
end
tNpcGossip[21386]["tOption1-1"] = {111}
tNpcGossip[21386]["Option111"] = tDogYearBeast_Text[21386]["Option111"]
-- 活动后
tNpcGossip[21386]["Text1-2"] = {111,121}
tNpcGossip[21386]["Text121"] = tDogYearBeast_Text[21386]["Text121"]
tNpcGossip[21386]["ChkFunc1-2"]= function()
	return not Sys_ChkFullTime(tDogYearBeast_Data["NowTime"])
end
tNpcGossip[21386]["tOption1-2"] = {121}
tNpcGossip[21386]["Option121"] = tDogYearBeast_Text[21386]["Option121"]
-- 活动中等级不足
tNpcGossip[21386]["Text1-3"] = {111,131,132,133,134,135,136,137,138,113,114,115}
tNpcGossip[21386]["Text131"] = tDogYearBeast_Text[21386]["Text131"]
tNpcGossip[21386]["Text132"] = tDogYearBeast_Text[21386]["Text132"]
tNpcGossip[21386]["Text133"] = tDogYearBeast_Text[21386]["Text133"]
tNpcGossip[21386]["Text134"] = tDogYearBeast_Text[21386]["Text134"]
tNpcGossip[21386]["Text135"] = tDogYearBeast_Text[21386]["Text135"]
tNpcGossip[21386]["Text136"] = tDogYearBeast_Text[21386]["Text136"]
tNpcGossip[21386]["Text137"] = tDogYearBeast_Text[21386]["Text137"]
tNpcGossip[21386]["Text138"] = tDogYearBeast_Text[21386]["Text138"]
tNpcGossip[21386]["ChkFunc1-3"]= function()
	return Sys_ChkFullTime(tDogYearBeast_Data["NowTime"]) and (not User_JudgeLevelAndMetempsychosis(tDogYearBeast_Data["Level"],tDogYearBeast_Data["Metempsychosis"]))
end
tNpcGossip[21386]["tOption1-3"] = {131}
tNpcGossip[21386]["Option131"] = tDogYearBeast_Text[21386]["Option131"]

-- 活动中等级达到
tNpcGossip[21386]["Text1-4"] = {111,131,132,133,134,135,136,137,138,141,113,115}
tNpcGossip[21386]["Text141"] = tDogYearBeast_Text[21386]["Text141"]
tNpcGossip[21386]["ChkFunc1-4"]= function()
	-- 隔天清零
	DogYearBeast_SetStc()

	local nEvent = tDogYearBeast_Stc["Point"][21386]["EventType"]
	local nType = tDogYearBeast_Stc["Point"][21386]["DataType"]
	local nUserId = Get_UserId()
	local nUserPoint = Get_UserStatisticValue(nEvent,nType,nUserId)
	tNpcGossip[21386]["Text141"] = string.format(tDogYearBeast_Text[21386]["Text141"],nUserPoint)
	
	local nRewardEvent = tDogYearBeast_Stc[1]["EventType"]
	local nRewardType =  tDogYearBeast_Stc[1]["DataType"]
	local nGetEvent = tDogYearBeast_Stc["Get"][21386]["EventType"]
	local nGetType = tDogYearBeast_Stc["Get"][21386]["DataType"]
	if Task_ChkStcValue(nRewardEvent,nRewardType,">=",1,nUserId) then
		tNpcGossip[21386]["Option141"] = tDogYearBeast_Text[21386]["Option145"]
	else
		tNpcGossip[21386]["Option141"] = tDogYearBeast_Text[21386]["Option141"]
	end
	
	if Task_ChkStcValue(nGetEvent,nGetType,">=",1,nUserId) then
		tNpcGossip[21386]["Option142"] = tDogYearBeast_Text[21386]["Option146"]
	end
	return true
end

tNpcGossip[21386]["tOption1-4"] = {141,147,143,144,142}
-- 领取每日祝福礼包
tNpcGossip[21386]["Option141"] = tDogYearBeast_Text[21386]["Option141"]
tNpcGossip[21386]["OptionFunc141"] = "DogYearBeast_DailyGetBag</N>21386"

-- 领取黑狗坐骑外套
tNpcGossip[21386]["Option142"] = tDogYearBeast_Text[21386]["Option142"]
tNpcGossip[21386]["OptionFunc142"] = "DogYearBeast_RewardBlack</N>21386"
tNpcGossip[21386]["OptionChkFunc142"]= function()
	local nEvent = tDogYearBeast_Stc["Point"][21386]["EventType"]
	local nType = tDogYearBeast_Stc["Point"][21386]["DataType"]
	local nUserId = Get_UserId()
	if Task_ChkStcValue(nEvent,nType,"<",tDogYearBeast_Stc["Point"][21386]["Data"],nUserId) then
		return false
	else 
		return true
	end
end
-- 我带来了肉骨头
tNpcGossip[21386]["Option143"] = tDogYearBeast_Text[21386]["Option143"]
tNpcGossip[21386]["OptionPoint143"] = "4-1"

-- 我带来了酱香肉骨头
tNpcGossip[21386]["Option144"] = tDogYearBeast_Text[21386]["Option144"]
tNpcGossip[21386]["OptionPoint144"] = "5-1"

tNpcGossip[21386]["Option147"] = tDogYearBeast_Text[21386]["Option147"]
tNpcGossip[21386]["OptionFunc147"] = "DogYearBeast_Web"


-- 【奖励已领】
tNpcGossip[21386]["Text2-1"] = {211}
tNpcGossip[21386]["Text211"] = tDogYearBeast_Text[21386]["Text211"]
tNpcGossip[21386]["tOption2-1"] = {211}
tNpcGossip[21386]["Option211"] = tDogYearBeast_Text[21386]["Option211"]

-- 【成功获得】
tNpcGossip[21386]["Text3-1"] = {311}
tNpcGossip[21386]["Text311"] = tDogYearBeast_Text[21386]["Text311"]
tNpcGossip[21386]["tOption3-1"] = {311}
tNpcGossip[21386]["Option311"] = tDogYearBeast_Text[21386]["Option311"]
-- 【已领】
tNpcGossip[21386]["Text3-2"] = {321}
tNpcGossip[21386]["Text321"] = tDogYearBeast_Text[21386]["Text321"]
tNpcGossip[21386]["tOption3-2"] = {321}
tNpcGossip[21386]["Option321"] = tDogYearBeast_Text[21386]["Option321"]

--【背包满】
tNpcGossip[21386]["Text3-3"] = {331}
tNpcGossip[21386]["Text331"] = tDogYearBeast_Text[21386]["Text331"]
tNpcGossip[21386]["tOption3-3"] = {331}
tNpcGossip[21386]["Option331"] = tDogYearBeast_Text[21386]["Option331"]

-- 接3、我带来了肉骨头
tNpcGossip[21386]["Text4-1"] = {411,412,413}
tNpcGossip[21386]["Text411"] = tDogYearBeast_Text[21386]["Text411"]
tNpcGossip[21386]["Text412"] = tDogYearBeast_Text[21386]["Text412"]
tNpcGossip[21386]["Text413"] = tDogYearBeast_Text[21386]["Text413"]
tNpcGossip[21386]["tOption4-1"] = {411,412}
tNpcGossip[21386]["Option411"] = tDogYearBeast_Text[21386]["Option411"]
tNpcGossip[21386]["OptionFunc411"] = "DogYearBeast_HandIn</N>21386</N>3307199</N>1</N>1"
tNpcGossip[21386]["Option412"] = tDogYearBeast_Text[21386]["Option412"]
tNpcGossip[21386]["OptionFunc412"] = "DogYearBeast_HandIn</N>21386</N>3307199</N>5</N>5"
-- 【接3-1、失败、没有肉骨头】
tNpcGossip[21386]["Text4-2"] = {421,422,423,424}
tNpcGossip[21386]["Text421"] = tDogYearBeast_Text[21386]["Text421"]
tNpcGossip[21386]["Text422"] = tDogYearBeast_Text[21386]["Text422"]
tNpcGossip[21386]["Text423"] = tDogYearBeast_Text[21386]["Text423"]
tNpcGossip[21386]["Text424"] = tDogYearBeast_Text[21386]["Text424"]
tNpcGossip[21386]["tOption4-2"] = {421}
tNpcGossip[21386]["Option421"] = tDogYearBeast_Text[21386]["Option421"]
tNpcGossip[21386]["OptionFunc421"] = "DogYearBeast_HandInCost</N>21386</N>3307199</N>1</N>1"

-- tNpcGossip[21386]["ChkFunc4-2"]= function()
	
-- end
-- 【接3-2、失败、肉骨头数量不足】
tNpcGossip[21386]["Text4-3"] = {431,432,433,434}
tNpcGossip[21386]["Text431"] = tDogYearBeast_Text[21386]["Text441"]
tNpcGossip[21386]["Text432"] = tDogYearBeast_Text[21386]["Text442"]
tNpcGossip[21386]["Text433"] = tDogYearBeast_Text[21386]["Text443"]
tNpcGossip[21386]["Text434"] = tDogYearBeast_Text[21386]["Text444"]
tNpcGossip[21386]["tOption4-3"] = {431}
tNpcGossip[21386]["Option431"] = tDogYearBeast_Text[21386]["Option441"]
tNpcGossip[21386]["OptionFunc431"] = "DogYearBeast_HandInCost</N>21386</N>3307199</N>5</N>5"

-- 【接上、失败、背包空间不足】
tNpcGossip[21386]["Text4-4"] = {441}
tNpcGossip[21386]["Text441"] = tDogYearBeast_Text[21386]["Text461"]
tNpcGossip[21386]["tOption4-4"] = {441}
tNpcGossip[21386]["Option441"] = tDogYearBeast_Text[21386]["Option461"]



-- 接4、我带来了酱香肉骨头
tNpcGossip[21386]["Text5-1"] = {511,512,513}
tNpcGossip[21386]["Text511"] = tDogYearBeast_Text[21386]["Text511"]
tNpcGossip[21386]["Text512"] = tDogYearBeast_Text[21386]["Text512"]
tNpcGossip[21386]["Text513"] = tDogYearBeast_Text[21386]["Text513"]
tNpcGossip[21386]["tOption5-1"] = {511,512}
tNpcGossip[21386]["Option511"] = tDogYearBeast_Text[21386]["Option511"]
tNpcGossip[21386]["OptionFunc511"] = "DogYearBeast_HandIn</N>21386</N>3307200</N>1</N>1"
tNpcGossip[21386]["Option512"] = tDogYearBeast_Text[21386]["Option512"]
tNpcGossip[21386]["OptionFunc512"] = "DogYearBeast_HandIn</N>21386</N>3307200</N>5</N>5"
-- tNpcGossip[21386]["ChkFunc5-1"]= function()
	-- local nItemNum = Get_CountItemType(3307200,0)
	-- tNpcGossip[21386]["OptionFunc512"] = "DogYearBeast_HandIn</N>21386</N>3307200</N>5" .. "</N>" .. nItemNum
	
	-- return true
-- end
-- -- 【接4-1、失败、没有酱香肉骨头】
tNpcGossip[21386]["Text5-2"] = {521,522,523,524}
tNpcGossip[21386]["Text521"] = tDogYearBeast_Text[21386]["Text521"]
tNpcGossip[21386]["Text522"] = tDogYearBeast_Text[21386]["Text522"]
tNpcGossip[21386]["Text523"] = tDogYearBeast_Text[21386]["Text523"]
tNpcGossip[21386]["Text524"] = tDogYearBeast_Text[21386]["Text524"]
tNpcGossip[21386]["tOption5-2"] = {521}
tNpcGossip[21386]["Option521"] = tDogYearBeast_Text[21386]["Option521"]
tNpcGossip[21386]["OptionFunc521"] = "DogYearBeast_HandInCost</N>21386</N>3307200</N>1</N>1"

-- 【接4-2、失败、酱香肉骨头数量不足】
tNpcGossip[21386]["Text5-3"] = {531,532,533,534}
tNpcGossip[21386]["Text531"] = tDogYearBeast_Text[21386]["Text541"]
tNpcGossip[21386]["Text532"] = tDogYearBeast_Text[21386]["Text542"]
tNpcGossip[21386]["Text533"] = tDogYearBeast_Text[21386]["Text543"]
tNpcGossip[21386]["Text534"] = tDogYearBeast_Text[21386]["Text544"]
tNpcGossip[21386]["tOption5-3"] = {531}
tNpcGossip[21386]["Option531"] = tDogYearBeast_Text[21386]["Option541"]
tNpcGossip[21386]["OptionFunc531"] = "DogYearBeast_HandInCost</N>21386</N>3307200</N>5</N>5"


-- 【上山打虎】哈士奇将军
tNpcFace[518] = 1309
tNpcGossip[21387]= tNpcGossip[21387] or DefaultNpc:new{}
tNpcGossip[21387]["OptionHidden"] = 1
-- 活动前
tNpcGossip[21387]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[21387]["Text111"] = tDogYearBeast_Text[21387]["Text111"]
tNpcGossip[21387]["Text112"] = tDogYearBeast_Text[21387]["Text112"]
tNpcGossip[21387]["Text113"] = tDogYearBeast_Text[21387]["Text113"]
tNpcGossip[21387]["Text114"] = tDogYearBeast_Text[21387]["Text114"]
tNpcGossip[21387]["Text115"] = tDogYearBeast_Text[21387]["Text115"]
tNpcGossip[21387]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tDogYearBeast_Data["BefTime"])
end
tNpcGossip[21387]["tOption1-1"] = {111}
tNpcGossip[21387]["Option111"] = tDogYearBeast_Text[21387]["Option111"]
-- 活动后
tNpcGossip[21387]["Text1-2"] = {111,121}
tNpcGossip[21387]["Text121"] = tDogYearBeast_Text[21387]["Text121"]
tNpcGossip[21387]["ChkFunc1-2"]= function()
	return not Sys_ChkFullTime(tDogYearBeast_Data["NowTime"])
end
tNpcGossip[21387]["tOption1-2"] = {121}
tNpcGossip[21387]["Option121"] = tDogYearBeast_Text[21387]["Option121"]

-- 活动中等级不足
tNpcGossip[21387]["Text1-3"] = {111,131,132,133,134,135}
tNpcGossip[21387]["Text131"] = tDogYearBeast_Text[21387]["Text131"]
tNpcGossip[21387]["Text132"] = tDogYearBeast_Text[21387]["Text132"]
tNpcGossip[21387]["Text133"] = tDogYearBeast_Text[21387]["Text133"]
tNpcGossip[21387]["Text134"] = tDogYearBeast_Text[21387]["Text134"]
tNpcGossip[21387]["Text135"] = tDogYearBeast_Text[21387]["Text135"]

tNpcGossip[21387]["ChkFunc1-3"]= function()
	return Sys_ChkFullTime(tDogYearBeast_Data["NowTime"]) and (not User_JudgeLevelAndMetempsychosis(tDogYearBeast_Data["Level"],tDogYearBeast_Data["Metempsychosis"]))
end
tNpcGossip[21387]["tOption1-3"] = {131}
tNpcGossip[21387]["Option131"] = tDogYearBeast_Text[21387]["Option131"]

-- 【等级达到】
tNpcGossip[21387]["Text1-4"] = {111,141,142,143,144}
tNpcGossip[21387]["Text141"] = tDogYearBeast_Text[21387]["Text141"]
tNpcGossip[21387]["Text142"] = tDogYearBeast_Text[21387]["Text142"]
tNpcGossip[21387]["Text143"] = tDogYearBeast_Text[21387]["Text143"]
tNpcGossip[21387]["Text144"] = tDogYearBeast_Text[21387]["Text144"]

tNpcGossip[21387]["ChkFunc1-4"]= function()
	-- 隔天清零
	DogYearBeast_SetStc()

	return true
end
tNpcGossip[21387]["tOption1-4"] = {143,145,141,142}
tNpcGossip[21387]["Option141"] = tDogYearBeast_Text[21387]["Option141"]
tNpcGossip[21387]["OptionFunc141"] = "DogYearBeast_Goto</N>21387"
tNpcGossip[21387]["OptionChkFunc141"]= function()
	local nEvent = tDogYearBeast_Stc[2]["EventType"]
	local nType = tDogYearBeast_Stc[2]["DataType"]
	local nUserId = Get_UserId()
	if Task_ChkStcValue(nEvent,nType,"<",1,nUserId) then
		return true
	else
		return false
	end
end
tNpcGossip[21387]["Option142"] = tDogYearBeast_Text[21387]["Option142"]
tNpcGossip[21387]["OptionChkFunc142"]= function()
	local nEvent = tDogYearBeast_Stc[2]["EventType"]
	local nType = tDogYearBeast_Stc[2]["DataType"]
	local nUserId = Get_UserId()
	if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
		return true
	else
		return false
	end
end
-- 领养哈士奇跟随宠
tNpcGossip[21387]["Option143"] = tDogYearBeast_Text[21387]["Option143"]
tNpcGossip[21387]["OptionFunc143"] = "DogYearBeast_GetPet</N>21387"
tNpcGossip[21387]["OptionChkFunc143"]= function()
	local nEvent = tDogYearBeast_Stc["GetPet"]["EventType"]
	local nType = tDogYearBeast_Stc["GetPet"]["DataType"]
	local nUserId = Get_UserId()
	if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
		return false
	else
		return true
	end
end

tNpcGossip[21387]["Option145"] = tDogYearBeast_Text[21387]["Option145"]
tNpcGossip[21387]["OptionPoint145"] = "2-1"
tNpcGossip[21387]["OptionChkFunc145"]= function()
	local nEvent = tDogYearBeast_Stc["GetPet"]["EventType"]
	local nType = tDogYearBeast_Stc["GetPet"]["DataType"]
	local nUserId = Get_UserId()
	if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
		return true
	else
		return false
	end
end

tNpcGossip[21387]["Option144"] = tDogYearBeast_Text[21387]["Option144"]
tNpcGossip[21387]["OptionFunc144"] = "DogYearBeast_GetMagic</N>21387"


tNpcGossip[21387]["Text2-1"] = {211,212,213}
tNpcGossip[21387]["Text211"] = tDogYearBeast_Text[21387]["Text211"]
tNpcGossip[21387]["Text212"] = tDogYearBeast_Text[21387]["Text212"]
tNpcGossip[21387]["Text213"] = tDogYearBeast_Text[21387]["Text213"]
tNpcGossip[21387]["tOption2-1"] = {211}
tNpcGossip[21387]["Option211"] = tDogYearBeast_Text[21387]["Option211"]


-- 喵星宝藏 
tNpcFace[520] = 384
tNpcGossip[21413]= tNpcGossip[21413] or DefaultNpc:new{}
tNpcGossip[21413]["OptionHidden"] = 1
-- 【等级不足】
tNpcGossip[21413]["Text1-1"] = {111,112,113}
tNpcGossip[21413]["Text111"] = tDogYearBeast_Text[21413]["Text111"]
tNpcGossip[21413]["Text112"] = tDogYearBeast_Text[21413]["Text112"]
tNpcGossip[21413]["Text113"] = tDogYearBeast_Text[21413]["Text113"]
tNpcGossip[21413]["ChkFunc1-1"]= function()
	return (not User_JudgeLevelAndMetempsychosis(tDogYearBeast_Data["Level"],tDogYearBeast_Data["Metempsychosis"]))
end
tNpcGossip[21413]["tOption1-1"] = {111}
tNpcGossip[21413]["Option111"] = tDogYearBeast_Text[21413]["Option111"]
-- 【等级满足】
tNpcGossip[21413]["Text1-2"] = {111,121,122}
tNpcGossip[21413]["Text121"] = tDogYearBeast_Text[21413]["Text121"]
tNpcGossip[21413]["Text122"] = tDogYearBeast_Text[21413]["Text122"]
tNpcGossip[21413]["tOption1-2"] = {121,122}
tNpcGossip[21413]["Option121"] = tDogYearBeast_Text[21413]["Option121"]
tNpcGossip[21413]["OptionFunc121"] = "DogYearBeast_OpenBox</N>21413"
tNpcGossip[21413]["OptionChkFunc121"]= function()
	-- 隔天清零
	DogYearBeast_SetStc()

	local nEvent = tDogYearBeast_Stc[3]["EventType"]
	local nType = tDogYearBeast_Stc[3]["DataType"]
	local nUserId = Get_UserId()
	if Task_ChkStcValue(nEvent,nType,"<",1,nUserId) then
		return true
	else
		return false
	end
end
tNpcGossip[21413]["Option122"] = tDogYearBeast_Text[21413]["Option122"]
tNpcGossip[21413]["OptionChkFunc122"]= function()
	local nEvent = tDogYearBeast_Stc[3]["EventType"]
	local nType = tDogYearBeast_Stc[3]["DataType"]
	local nUserId = Get_UserId()
	if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
		return true
	else
		return false
	end
end
-- 【猫狗大作战】喵呜将军
tNpcFace[589] = 1310
tNpcGossip[21388]= tNpcGossip[21388] or DefaultNpc:new{}
tNpcGossip[21388]["OptionHidden"] = 1
-- 活动前
tNpcGossip[21388]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[21388]["Text111"] = tDogYearBeast_Text[21388]["Text111"]
tNpcGossip[21388]["Text112"] = tDogYearBeast_Text[21388]["Text112"]
tNpcGossip[21388]["Text113"] = tDogYearBeast_Text[21388]["Text113"]
tNpcGossip[21388]["Text114"] = tDogYearBeast_Text[21388]["Text114"]
tNpcGossip[21388]["Text115"] = tDogYearBeast_Text[21388]["Text115"]

tNpcGossip[21388]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tDogYearBeast_Data["BefTime"])
end
tNpcGossip[21388]["tOption1-1"] = {111}
tNpcGossip[21388]["Option111"] = tDogYearBeast_Text[21388]["Option111"]
-- 活动后
tNpcGossip[21388]["Text1-2"] = {111,121}
tNpcGossip[21388]["Text121"] = tDogYearBeast_Text[21388]["Text121"]
tNpcGossip[21388]["ChkFunc1-2"]= function()
	return not Sys_ChkFullTime(tDogYearBeast_Data["NowTime"])
end
tNpcGossip[21388]["tOption1-2"] = {121}
tNpcGossip[21388]["Option121"] = tDogYearBeast_Text[21388]["Option121"]
-- 活动中等级不足
tNpcGossip[21388]["Text1-3"] = {111,131,132,133,134,135,136,137,113,114,115}
tNpcGossip[21388]["Text131"] = tDogYearBeast_Text[21388]["Text131"]
tNpcGossip[21388]["Text132"] = tDogYearBeast_Text[21388]["Text132"]
tNpcGossip[21388]["Text133"] = tDogYearBeast_Text[21388]["Text133"]
tNpcGossip[21388]["Text134"] = tDogYearBeast_Text[21388]["Text134"]
tNpcGossip[21388]["Text135"] = tDogYearBeast_Text[21388]["Text135"]
tNpcGossip[21388]["Text136"] = tDogYearBeast_Text[21388]["Text136"]
tNpcGossip[21388]["Text137"] = tDogYearBeast_Text[21388]["Text137"]
tNpcGossip[21388]["Text138"] = tDogYearBeast_Text[21388]["Text138"]
tNpcGossip[21388]["ChkFunc1-3"]= function()
	return Sys_ChkFullTime(tDogYearBeast_Data["NowTime"]) and (not User_JudgeLevelAndMetempsychosis(tDogYearBeast_Data["Level"],tDogYearBeast_Data["Metempsychosis"]))
end
tNpcGossip[21388]["tOption1-3"] = {131}
tNpcGossip[21388]["Option131"] = tDogYearBeast_Text[21388]["Option131"]

-- 活动中等级达到
tNpcGossip[21388]["Text1-4"] = {111,131,132,133,134,135,136,137,141,113,115}
tNpcGossip[21388]["Text141"] = tDogYearBeast_Text[21388]["Text141"]
tNpcGossip[21388]["ChkFunc1-4"]= function()
	-- 隔天清零
	DogYearBeast_SetStc()
	local nEvent = tDogYearBeast_Stc["Point"][21388]["EventType"]
	local nType = tDogYearBeast_Stc["Point"][21388]["DataType"]
	local nUserId = Get_UserId()
	local nUserGood = Get_UserStatisticValue(nEvent,nType,nUserId)
	tNpcGossip[21388]["Text141"] = string.format(tDogYearBeast_Text[21388]["Text141"],nUserGood)
	return true
end

tNpcGossip[21388]["tOption1-4"] = {142,148,143,144,145}
-- 领取喵呜将军坐骑外套
tNpcGossip[21388]["Option141"] = tDogYearBeast_Text[21388]["Option141"]
tNpcGossip[21388]["OptionFunc141"] = "DogYearBeast_RewardBlack</N>21388"
tNpcGossip[21388]["OptionChkFunc141"]= function()
	local nEvent = tDogYearBeast_Stc["Get"][21388]["EventType"]
	local nType = tDogYearBeast_Stc["Get"][21388]["DataType"]
	local nUserId = Get_UserId()
	if Task_ChkStcValue(nEvent,nType,"<",1,nUserId) then
		return true
	else
		return false
	end
end
-- 领取喵呜将军坐骑外套（已领）
tNpcGossip[21388]["Option146"] = tDogYearBeast_Text[21388]["Option146"]
tNpcGossip[21388]["OptionFunc146"] = "DogYearBeast_RewardBlack</N>21388"
tNpcGossip[21388]["OptionChkFunc146"]= function()
	local nEvent = tDogYearBeast_Stc["Get"][21388]["EventType"]
	local nType = tDogYearBeast_Stc["Get"][21388]["DataType"]
	local nUserId = Get_UserId()
	if Task_ChkStcValue(nEvent,nType,">=",1,nUserId) then
		return true
	else
		return false
	end
end

-- 前往钓鱼
tNpcGossip[21388]["Option142"] = tDogYearBeast_Text[21388]["Option142"]
tNpcGossip[21388]["OptionFunc142"] = "DogYearBeast_GotoFish</N>21388"
tNpcGossip[21388]["OptionChkFunc142"]= function()
	local nEvent = tDogYearBeast_Stc[4]["EventType"]
	local nType = tDogYearBeast_Stc[4]["DataType"]
	local nUserId = Get_UserId()
	if Task_ChkStcValue(nEvent,nType,">=",tDogYearBeast_Stc[4]["Data"],nUserId) then
		return false
	else
		return true
	end
end
tNpcGossip[21388]["Option148"] = tDogYearBeast_Text[21388]["Option148"]
-- tNpcGossip[21388]["OptionFunc148"] = "DogYearBeast_GotoFish</N>21388"
tNpcGossip[21388]["OptionChkFunc148"]= function()
	local nEvent = tDogYearBeast_Stc[4]["EventType"]
	local nType = tDogYearBeast_Stc[4]["DataType"]
	local nUserId = Get_UserId()
	if Task_ChkStcValue(nEvent,nType,">=",tDogYearBeast_Stc[4]["Data"],nUserId) then
		return true
	else
		return false
	end
end
-- 我带来了金枪鱼
tNpcGossip[21388]["Option143"] = tDogYearBeast_Text[21388]["Option143"]
tNpcGossip[21388]["OptionPoint143"] = "4-1"
tNpcGossip[21388]["OptionChkFunc143"]= function()
	local nItemNum = Get_CountItemType(3307197,0)
	if nItemNum <= 0 then
		return false
	else
		return true
	end
end
-- 我带来了皮皮虾
tNpcGossip[21388]["Option144"] = tDogYearBeast_Text[21388]["Option144"]
tNpcGossip[21388]["OptionPoint144"] = "5-1"
tNpcGossip[21388]["OptionChkFunc144"]= function()
	local nItemNum = Get_CountItemType(3307198,0)
	if nItemNum <= 0 then
		return false
	else
		return true
	end
end
-- 我带来了帝王蟹
tNpcGossip[21388]["Option145"] = tDogYearBeast_Text[21388]["Option145"]
tNpcGossip[21388]["OptionPoint145"] = "6-1"
tNpcGossip[21388]["OptionChkFunc145"]= function()
	local nItemNum = Get_CountItemType(3307196,0)
	if nItemNum <= 0 then
		return false
	else
		return true
	end
end
tNpcGossip[21388]["Option147"] = tDogYearBeast_Text[21388]["Option147"]
tNpcGossip[21388]["OptionFunc147"] = "DogYearBeast_Web"

-- 【奖励已领】
tNpcGossip[21388]["Text3-2"] = {321}
tNpcGossip[21388]["Text321"] = tDogYearBeast_Text[21388]["Text211"]
tNpcGossip[21388]["tOption3-2"] = {321}
tNpcGossip[21388]["Option321"] = tDogYearBeast_Text[21388]["Option211"]
-- 【成功获得】
tNpcGossip[21388]["Text3-1"] = {311}
tNpcGossip[21388]["Text311"] = tDogYearBeast_Text[21388]["Text221"]
tNpcGossip[21388]["tOption3-1"] = {311}
tNpcGossip[21388]["Option311"] = tDogYearBeast_Text[21388]["Option221"]
-- 【背包满】
tNpcGossip[21388]["Text3-3"] = {331}
tNpcGossip[21388]["Text331"] = tDogYearBeast_Text[21388]["Text231"]
tNpcGossip[21388]["tOption3-3"] = {331}
tNpcGossip[21388]["Option331"] = tDogYearBeast_Text[21388]["Option231"]
-- 接3、我带来了金枪鱼
tNpcGossip[21388]["Text4-1"] = {411}
tNpcGossip[21388]["Text411"] = tDogYearBeast_Text[21388]["Text411"]
tNpcGossip[21388]["tOption4-1"] = {411,412}
tNpcGossip[21388]["Option411"] = tDogYearBeast_Text[21388]["Option411"]
tNpcGossip[21388]["OptionFunc411"] = "DogYearBeast_HandIn</N>21388</N>3307197</N>1</N>1"

tNpcGossip[21388]["Option412"] = tDogYearBeast_Text[21388]["Option412"]
tNpcGossip[21388]["OptionFunc412"] = "DogYearBeast_HandIn</N>21388</N>3307197</N>5</N>5"

tNpcGossip[21388]["Option413"] = tDogYearBeast_Text[21388]["Option413"]
-- tNpcGossip[21388]["ChkFunc4-1"]= function()
	-- local nItemNum = Get_CountItemType(3307197,0)
	-- tNpcGossip[21388]["OptionFunc412"] = "DogYearBeast_HandIn</N>21388</N>3307197</N>5" .. "</N>" .. nItemNum
	
	-- return true
-- end

-- 【接3-1、失败、没有肉骨头】
tNpcGossip[21388]["Text4-2"] = {421,422,423,424}
tNpcGossip[21388]["Text421"] = tDogYearBeast_Text[21388]["Text421"]
tNpcGossip[21388]["Text422"] = tDogYearBeast_Text[21388]["Text422"]
tNpcGossip[21388]["Text423"] = tDogYearBeast_Text[21388]["Text423"]
tNpcGossip[21388]["Text424"] = tDogYearBeast_Text[21388]["Text424"]
tNpcGossip[21388]["tOption4-2"] = {421}
tNpcGossip[21388]["Option421"] = tDogYearBeast_Text[21388]["Option421"]
tNpcGossip[21388]["OptionPoint421"] = "1-4"
-- 【接3-2、失败、肉骨头数量不足】
tNpcGossip[21388]["Text4-3"] = {431,432,433,434}
tNpcGossip[21388]["Text431"] = tDogYearBeast_Text[21388]["Text441"]
tNpcGossip[21388]["Text432"] = tDogYearBeast_Text[21388]["Text442"]
tNpcGossip[21388]["Text433"] = tDogYearBeast_Text[21388]["Text443"]
tNpcGossip[21388]["Text434"] = tDogYearBeast_Text[21388]["Text444"]
tNpcGossip[21388]["tOption4-3"] = {431}
tNpcGossip[21388]["Option431"] = tDogYearBeast_Text[21388]["Option441"]
tNpcGossip[21388]["OptionPoint431"] = "1-4"
-- 【接上、失败、背包空间不足】
tNpcGossip[21388]["Text4-4"] = {441}
tNpcGossip[21388]["Text441"] = tDogYearBeast_Text[21388]["Text461"]
tNpcGossip[21388]["tOption4-4"] = {441}
tNpcGossip[21388]["Option441"] = tDogYearBeast_Text[21388]["Option461"]

-- 接4、我带来了皮皮虾
tNpcGossip[21388]["Text5-1"] = {511}
tNpcGossip[21388]["Text511"] = tDogYearBeast_Text[21388]["Text511"]
tNpcGossip[21388]["tOption5-1"] = {511,512}
tNpcGossip[21388]["Option511"] = tDogYearBeast_Text[21388]["Option511"]
tNpcGossip[21388]["OptionFunc511"] = "DogYearBeast_HandIn</N>21388</N>3307198</N>1</N>1"

tNpcGossip[21388]["Option512"] = tDogYearBeast_Text[21388]["Option512"]
tNpcGossip[21388]["OptionFunc512"] = "DogYearBeast_HandIn</N>21388</N>3307198</N>5</N>5"
-- tNpcGossip[21388]["ChkFunc5-1"]= function()
	-- local nItemNum = Get_CountItemType(3307198,0)
	-- tNpcGossip[21388]["OptionFunc512"] = "DogYearBeast_HandIn</N>21388</N>3307198</N>5" .. "</N>" .. nItemNum
	-- return true
-- end
tNpcGossip[21388]["Option513"] = tDogYearBeast_Text[21388]["Option413"]

--【接4-1、失败、没有皮皮虾】
tNpcGossip[21388]["Text5-2"] = {521,522,523,524}
tNpcGossip[21388]["Text521"] = tDogYearBeast_Text[21388]["Text521"]
tNpcGossip[21388]["Text522"] = tDogYearBeast_Text[21388]["Text522"]
tNpcGossip[21388]["Text523"] = tDogYearBeast_Text[21388]["Text523"]
tNpcGossip[21388]["Text524"] = tDogYearBeast_Text[21388]["Text524"]
tNpcGossip[21388]["tOption5-2"] = {521}
tNpcGossip[21388]["Option521"] = tDogYearBeast_Text[21388]["Option521"]
tNpcGossip[21388]["OptionPoint521"] = "1-4"
-- 【接4-2、失败、皮皮虾数量不足】
tNpcGossip[21388]["Text5-3"] = {531,532,533,534}
tNpcGossip[21388]["Text531"] = tDogYearBeast_Text[21388]["Text541"]
tNpcGossip[21388]["Text532"] = tDogYearBeast_Text[21388]["Text542"]
tNpcGossip[21388]["Text533"] = tDogYearBeast_Text[21388]["Text543"]
tNpcGossip[21388]["Text534"] = tDogYearBeast_Text[21388]["Text544"]
tNpcGossip[21388]["tOption5-3"] = {531}
tNpcGossip[21388]["Option531"] = tDogYearBeast_Text[21388]["Option541"]
tNpcGossip[21388]["OptionPoint531"] = "1-4"
-- 【接上、失败、背包空间不足】
-- tNpcGossip[21388]["Text5-4"] = {541}
-- tNpcGossip[21388]["Text541"] = tDogYearBeast_Text[21388]["Text561"]
-- tNpcGossip[21388]["tOption5-4"] = {541}
-- tNpcGossip[21388]["Option541"] = tDogYearBeast_Text[21388]["Option561"]

-- 接5、我带来了帝王蟹
tNpcGossip[21388]["Text6-1"] = {611}
tNpcGossip[21388]["Text611"] = tDogYearBeast_Text[21388]["Text611"]
tNpcGossip[21388]["tOption6-1"] = {611,612}
tNpcGossip[21388]["Option611"] = tDogYearBeast_Text[21388]["Option611"]
tNpcGossip[21388]["OptionFunc611"] = "DogYearBeast_HandIn</N>21388</N>3307196</N>1</N>1"

tNpcGossip[21388]["Option612"] = tDogYearBeast_Text[21388]["Option612"]
tNpcGossip[21388]["OptionFunc612"] = "DogYearBeast_HandIn</N>21388</N>3307196</N>5</N>5"
-- tNpcGossip[21388]["ChkFunc6-1"]= function()
	-- local nItemNum = Get_CountItemType(3307196,0)
	-- tNpcGossip[21388]["OptionFunc612"] = "DogYearBeast_HandIn</N>21388</N>3307196</N>5" .. "</N>" .. nItemNum
	-- return true
-- end
tNpcGossip[21388]["Option613"] = tDogYearBeast_Text[21388]["Option413"]

--【接4-1、失败、没有皮皮虾】
tNpcGossip[21388]["Text6-2"] = {621,622,623,624}
tNpcGossip[21388]["Text621"] = tDogYearBeast_Text[21388]["Text621"]
tNpcGossip[21388]["Text622"] = tDogYearBeast_Text[21388]["Text622"]
tNpcGossip[21388]["Text623"] = tDogYearBeast_Text[21388]["Text623"]
tNpcGossip[21388]["Text624"] = tDogYearBeast_Text[21388]["Text624"]
tNpcGossip[21388]["tOption6-2"] = {621}
tNpcGossip[21388]["Option621"] = tDogYearBeast_Text[21388]["Option621"]
tNpcGossip[21388]["OptionPoint621"] = "1-4"
-- 【接4-2、失败、皮皮虾数量不足】
tNpcGossip[21388]["Text6-3"] = {631,632,633,634}
tNpcGossip[21388]["Text631"] = tDogYearBeast_Text[21388]["Text641"]
tNpcGossip[21388]["Text632"] = tDogYearBeast_Text[21388]["Text642"]
tNpcGossip[21388]["Text633"] = tDogYearBeast_Text[21388]["Text643"]
tNpcGossip[21388]["Text634"] = tDogYearBeast_Text[21388]["Text644"]
tNpcGossip[21388]["tOption6-3"] = {631}
tNpcGossip[21388]["Option631"] = tDogYearBeast_Text[21388]["Option641"]
tNpcGossip[21388]["OptionPoint631"] = "1-4"


-- 【兑换商店】肉骨头供销商
tNpcFace[519] = 1330
tNpcGossip[21390]= tNpcGossip[21390] or DefaultNpc:new{}
tNpcGossip[21390]["OptionHidden"] = 1
tNpcGossip[21390]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[21390]["Text111"] = tDogYearBeast_Text[21390]["Text111"]
tNpcGossip[21390]["Text112"] = tDogYearBeast_Text[21390]["Text112"]
tNpcGossip[21390]["Text113"] = tDogYearBeast_Text[21390]["Text113"]
tNpcGossip[21390]["Text114"] = tDogYearBeast_Text[21390]["Text114"]
tNpcGossip[21390]["Text115"] = tDogYearBeast_Text[21390]["Text115"]
tNpcGossip[21390]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tDogYearBeast_Data["BefTime"])
end
tNpcGossip[21390]["tOption1-1"] = {111}
tNpcGossip[21390]["Option111"] = tDogYearBeast_Text[21390]["Option111"]
-- 活动后
tNpcGossip[21390]["Text1-2"] = {111,121}
tNpcGossip[21390]["Text121"] = tDogYearBeast_Text[21390]["Text121"]
tNpcGossip[21390]["ChkFunc1-2"]= function()
	return not Sys_ChkFullTime(tDogYearBeast_Data["NowTime"])
end
tNpcGossip[21390]["tOption1-2"] = {121}
tNpcGossip[21390]["Option121"] = tDogYearBeast_Text[21390]["Option121"]
-- 活动中等级不足
tNpcGossip[21390]["Text1-3"] = {111,131,132,133,134,135,136,137,113,114,115}
tNpcGossip[21390]["Text131"] = tDogYearBeast_Text[21390]["Text131"]
tNpcGossip[21390]["Text132"] = tDogYearBeast_Text[21390]["Text132"]
tNpcGossip[21390]["Text133"] = tDogYearBeast_Text[21390]["Text133"]
tNpcGossip[21390]["Text134"] = tDogYearBeast_Text[21390]["Text134"]
tNpcGossip[21390]["Text135"] = tDogYearBeast_Text[21390]["Text135"]
tNpcGossip[21390]["Text136"] = tDogYearBeast_Text[21390]["Text136"]
tNpcGossip[21390]["Text137"] = tDogYearBeast_Text[21390]["Text137"]
tNpcGossip[21390]["Text138"] = tDogYearBeast_Text[21390]["Text138"]
tNpcGossip[21390]["ChkFunc1-3"]= function()
	return Sys_ChkFullTime(tDogYearBeast_Data["NowTime"]) and (not User_JudgeLevelAndMetempsychosis(tDogYearBeast_Data["Level"],tDogYearBeast_Data["Metempsychosis"]))
end
tNpcGossip[21390]["tOption1-3"] = {131}
tNpcGossip[21390]["Option131"] = tDogYearBeast_Text[21390]["Option131"]

-- 活动中等级达到
tNpcGossip[21390]["Text1-4"] = {111,131,132,133,134,135,136,137,113,115}
tNpcGossip[21390]["Text141"] = tDogYearBeast_Text[21390]["Text141"]
tNpcGossip[21390]["ChkFunc1-4"]= function()
	-- 隔天清零
	DogYearBeast_SetStc()
	return true
end

tNpcGossip[21390]["tOption1-4"] = {141,142,143,144}
-- 领取喵呜将军坐骑外套
tNpcGossip[21390]["Option141"] = tDogYearBeast_Text[21390]["Option141"]
tNpcGossip[21390]["OptionFunc141"] = "DogYearBeast_ExchageReward</N>21390</N>200619</N>5"
tNpcGossip[21390]["OptionChkFunc141"]= function()
		local nItemNum = Get_CountItemType(200619,0)
	if nItemNum >= 1 then
		return true
	else
		return false
	end
end

tNpcGossip[21390]["Option142"] = tDogYearBeast_Text[21390]["Option142"]
tNpcGossip[21390]["OptionFunc142"] = "DogYearBeast_ExchageReward</N>21390</N>200618</N>10"
tNpcGossip[21390]["OptionChkFunc142"]= function()
		local nItemNum = Get_CountItemType(200618,0)
	if nItemNum >= 1 then
		return true
	else
		return false
	end
end
tNpcGossip[21390]["Option143"] = tDogYearBeast_Text[21390]["Option143"]
tNpcGossip[21390]["OptionFunc143"] = "DogYearBeast_ExchageReward</N>21390</N>200620</N>15"
tNpcGossip[21390]["OptionChkFunc143"]= function()
		local nItemNum = Get_CountItemType(200620,0)
	if nItemNum >= 1 then
		return true
	else
		return false
	end
end
tNpcGossip[21390]["Option144"] = tDogYearBeast_Text[21390]["Option144"]


---------------------------------物品部分---------------------------------------------

-- 狗年祝福礼包
tItem[3307193] = tItem[3307193] or {}
tItem[3307193]["Function"] = function(nItemId,sItemName)
	DogYearBeast_UseBag(nItemId)
end


-- 霹雳虎礼包
tItem[3307194] = tItem[3307193] or {}

tItem[3307195] = tItem[3307195] or {}
tItem[3307195]["Function"] = function(nItemId,sItemName)
	if DogYearBeast_OverTime(nItemId) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tDogYearBeast_Data["Level"],tDogYearBeast_Data["Metempsychosis"]) then
		Sys_MsgBox(tDogYearBeast_Text["Msg"][3307195])
		return
	end
	--背包空间
	local bIndex,nSpace = RewardTemplate_ChkRandomSpace(tDogYearBeast_Reward[nItemId],1)
	if not User_CheckLeftSpace(nSpace) then
		return
	end
	
	if not Item_ChkItem(nItemId) or not Item_DelItem(nItemId) then
		return
	end

	RewardTemplate_NewRandomNoTip(tDogYearBeast_Reward[nItemId],1)
end

-- 肉骨头
tItem[3307199] = tItem[3307199] or {}
tItem[3307199]["Function"] = function(nItemId,sItemName)
	if DogYearBeast_OverTime(nItemId) then
		return
	end
	NpcPosition_PathFind(tDogYearBeast_Reward["NpcId"][3307199])
end
tItem[3307200] = tItem[3307199] or {}

-- 帝王蟹 - 皮皮虾
for i=3307196,3307198 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemId,sItemName)
		if DogYearBeast_OverTime(nItemId) then
			return
		end
		NpcPosition_PathFind(tDogYearBeast_Reward["NpcId"][3307196])
	end
end

-- 秘制酱料
tItem[3307201] = tItem[3307201] or {}
tItem[3307201]["Function"] = function(nItemId,sItemName)
	if DogYearBeast_OverTime(nItemId) then
		return
	end
	--10份秘制酱料
	if not Item_ChkMulItem(nItemId,nItemId,10) then
		Sys_MsgBox(tDogYearBeast_Text["Item"][3307201]["NotHave1"])
		return
	end
	--肉骨头
	local nNeedItemId = tDogYearBeast_Reward[3307201]["DeleteItem"][2]["Id"]
	if not Item_ChkItem(nNeedItemId) then
		Sys_MsgBox(tDogYearBeast_Text["Item"][3307201]["NotHave2"])
		return
	end
	RewardTemplate_UseItemAndMsg(tDogYearBeast_Reward[nItemId])
end
-- 【白色狗年外套名】可选包
tItemFace[3306952] = 1292
tItem[3306952] = tItem[3306952] or {}
tItem[3306952]["Function"] = function(nItemId,sItemName)
	if DogYearBeast_OverTime(nItemId) then
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3306952]["DialogueText"] = tDogYearBeast_Text[3306952]
tItem[3306952]["Text1-1"] = {111}
tItem[3306952]["tOption1-1"] = {1,2}
tItem[3306952]["OptionFunc1"] = "DogYearBeast_ChoseItem</N>3306952</N>1"
tItem[3306952]["OptionFunc2"] = "DogYearBeast_ChoseItem</N>3306952</N>2"

-- 【金色狗年外套名】可选包
tItemFace[3306953] = 1293
tItem[3306953] = tItem[3306953] or {}
tItem[3306953]["Function"] = function(nItemId,sItemName)
	if DogYearBeast_OverTime(nItemId) then
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3306953]["DialogueText"] = tDogYearBeast_Text[3306953]
tItem[3306953]["Text1-1"] = {111}
tItem[3306953]["tOption1-1"] = {1,2}
tItem[3306953]["OptionFunc1"] = "DogYearBeast_ChoseItem</N>3306953</N>1"
tItem[3306953]["OptionFunc2"] = "DogYearBeast_ChoseItem</N>3306953</N>2"

-- 黑色狗年外套碎片
tItemFace[3307202] = 1294
tItemFace[3307203] = 1295
tItemFace[3307204] = 1296
tItem[3307202] = tItem[3307202] or {}
tItem[3307202]["Function"] = function(nItemId,sItemName)
	DogYearBeast_OverTime(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end

tItem[3307202]["DialogueText"] = tDogYearBeast_Text[3307202]
tItem[3307202]["Text1-1"] = {111}
tItem[3307202]["tOption1-1"] = {1,2}
tItem[3307202]["OptionFunc1"] = "DogYearBeast_UsePicItem</N>3307202"
tItem[3307202]["OptionFunc2"] = "DogYearBeast_ChangeItem</N>3307202"
tItem[3307202]["ChkFunc1-1"] = function()
	
	local sItemName = Get_ItemtypeName(3307202)
	local sAddItemName = Get_ItemtypeName(tDogYearBeast_Reward[3307202]["RewardItem"][1]["Id"])
	tItem[3307202]["Text111"] = string.format(tDogYearBeast_Text[3307202]["Text111"],sItemName,sAddItemName)
	tItem[3307202]["OptionFunc1"] = "DogYearBeast_UsePicItem</N>" .. 3307202 .. "</S>" .. sAddItemName
	tItem[3307202]["OptionFunc2"] = "DogYearBeast_ChangeItem</N>" .. 3307202
	return true
end

tItem[3307203] = tItem[3307203] or {}
tItem[3307203]["Function"] = function(nItemId,sItemName)
	DogYearBeast_OverTime(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end

tItem[3307203]["DialogueText"] = tDogYearBeast_Text[3307202]
tItem[3307203]["Text1-1"] = {111}
tItem[3307203]["tOption1-1"] = {1,2}
tItem[3307203]["OptionFunc1"] = "DogYearBeast_UsePicItem</N>3307202"
tItem[3307203]["OptionFunc2"] = "DogYearBeast_ChangeItem</N>3307202"
tItem[3307203]["ChkFunc1-1"] = function()
	local sItemName = Get_ItemtypeName(3307203)
	local sAddItemName = Get_ItemtypeName(tDogYearBeast_Reward[3307203]["RewardItem"][1]["Id"])
	tItem[3307203]["Text111"] = string.format(tDogYearBeast_Text[3307202]["Text111"],sItemName,sAddItemName)
	tItem[3307203]["OptionFunc1"] = "DogYearBeast_UsePicItem</N>" .. 3307203 .. "</S>" .. sAddItemName
	tItem[3307203]["OptionFunc2"] = "DogYearBeast_ChangeItem</N>" .. 3307203
	return true
end

tItem[3307204] = tItem[3307204] or {}
tItem[3307204]["Function"] = function(nItemId,sItemName)
	DogYearBeast_OverTime(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end

tItem[3307204]["DialogueText"] = tDogYearBeast_Text[3307202]
tItem[3307204]["Text1-1"] = {111}
tItem[3307204]["tOption1-1"] = {1,2}
tItem[3307204]["OptionFunc1"] = "DogYearBeast_UsePicItem</N>3307202"
tItem[3307204]["OptionFunc2"] = "DogYearBeast_ChangeItem</N>3307202"
tItem[3307204]["ChkFunc1-1"] = function()

	local sItemName = Get_ItemtypeName(3307204)
	local sAddItemName = Get_ItemtypeName(tDogYearBeast_Reward[3307204]["RewardItem"][1]["Id"])
	tItem[3307204]["Text111"] = string.format(tDogYearBeast_Text[3307202]["Text111"],sItemName,sAddItemName)
	tItem[3307204]["OptionFunc1"] = "DogYearBeast_UsePicItem</N>" .. 3307204 .. "</S>" .. sAddItemName
	tItem[3307204]["OptionFunc2"] = "DogYearBeast_ChangeItem</N>" .. 3307204
	return true
end

-- tItem[3307203] = tItem[3307202] or {}
-- tItem[3307204] = tItem[3307202] or {}

-- 时装光效碎片
tItemFace[3307205] = 1297
tItem[3307205] = tItem[3307205] or {}
tItem[3307205]["Function"] = function(nItemId,sItemName)
	if DogYearBeast_OverTime(nItemId) then
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3307205]["DialogueText"] = tDogYearBeast_Text[3307205]
tItem[3307205]["Text1-1"] = {111}
tItem[3307205]["tOption1-1"] = {1,2,3,5,4}
tItem[3307205]["OptionFunc1"] = "DogYearBeast_UseItem</N>3307205</N>1"
tItem[3307205]["OptionFunc2"] = "DogYearBeast_UseItem</N>3307205</N>2"
tItem[3307205]["OptionFunc3"] = "DogYearBeast_UseItem</N>3307205</N>3"
tItem[3307205]["OptionPoint5"] = "2-1"
tItem[3307205]["Text2-1"] = {211}
tItem[3307205]["tOption2-1"] = {6,7}
tItem[3307205]["OptionFunc6"] = "DogYearBeast_ChoseItem</N>3307205</N>4"

-- 天石商店售卖礼包
tItem[3307317] = tItem[3307317] or {}
tItem[3307317]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tDogYearBeast_Get[nItemId])
end
tItem[3307318] = tItem[3307317] or {}
tItem[3307319] = tItem[3307317] or {}
tItem[3307320] = tItem[3307317] or {}
tItem[3307473] = tItem[3307317] or {}
tItem[3307474] = tItem[3307317] or {}
tItem[3307456] = tItem[3307317] or {}

-- 酱香肉骨头
tItem[3307439] = tItem[3307439] or {}
tItem[3307439]["Function"] = function(nItemId,sItemName)
	if DogYearBeast_OverTime(nItemId) then
		return
	end
	RewardTemplate_UseItemAndMsg(tDogYearBeast_Get[nItemId])
end
tItem[3307440] = tItem[3307439] or {}
tItem[3307441] = tItem[3307439] or {}


---------------------------------怪物部分---------------------------------------------
-- tMonster[3993] = tMonster[3993] or {}  -- 吊睛虎王
-- tMonster[3993]["tFunction"] = tMonster[3993]["tFunction"] or {}
-- table.insert(tMonster[3993]["tFunction"],DogYearBeast_Tiger)

-- tMonster[3994] = tMonster[3994] or {}  -- 狮子王
-- tMonster[3994]["tFunction"] = tMonster[3994]["tFunction"] or {}
-- table.insert(tMonster[3994]["tFunction"],DogYearBeast_Lion)

--伤害排行榜
-- tBossDamageBonus[3994] = tBossDamageBonus[3994] or {}
-- tBossDamageBonus[3994]["tFunction"] = tBossDamageBonus[3994]["tFunction"] or {}
-- table.insert(tBossDamageBonus[3994]["tFunction"],DogYearBeast_KillBoss)

-- 对boss有伤害
-- tBossRewardEnd[3994] = tBossRewardEnd[3994] or {}
-- tBossRewardEnd[3994]["tFunction"] = tBossRewardEnd[3994]["tFunction"] or {}
-- table.insert(tBossRewardEnd[3994]["tFunction"],DogYearBeast_KillBossAward)

-- local tDogYearBeast_KillMonster = {}
-- tDogYearBeast_KillMonster["ActivityTime"] = tActivityTime["DogYear"]["NowTime"]
-- tDogYearBeast_KillMonster["Function"]= DogYearBeast_KillMonster
-- table.insert(tMonsterDrop_AreaLoad,tDogYearBeast_KillMonster)

---------------------------------陷进---------------------------------------------
-- tTrap[40] = tTrap[40] or {}
-- tTrap[40]["Function"] = function(nTrapId,nTrapType)
	-- Sys_MsgBox(tDogYearBeast_Text["Msg"]["Leave"],"DogYearBeast_Leave")
-- end


---------------------------------时间自检---------------------------------------------
-- 每日晚上21:00在双龙城外刷出BOSS：猫国外援-虎大王
-- local tDogYearBeast_TimeChk = {}
-- tDogYearBeast_TimeChk[1] = {}
-- tDogYearBeast_TimeChk[1]["TimeType"] = 4
-- tDogYearBeast_TimeChk[1]["Multiple"] = {}
-- tDogYearBeast_TimeChk[1]["Multiple"][1]  = "21:00 21:01"
-- tDogYearBeast_TimeChk[1]["Func"] = DogYearBeast_TimeChkMonster
-- table.insert(tSystemTime_InitialData,tDogYearBeast_TimeChk[1])
-- 清boss
-- tDogYearBeast_TimeChk[2] = {}
-- tDogYearBeast_TimeChk[2]["TimeType"] = 4
-- tDogYearBeast_TimeChk[2]["Multiple"] = {}
-- tDogYearBeast_TimeChk[2]["Multiple"][1]  = "22:30 22:31"
-- tDogYearBeast_TimeChk[2]["Func"] = DogYearBeast_ClearBoss
-- table.insert(tSystemTime_InitialData,tDogYearBeast_TimeChk[2])

-- 每小时全服限量10，活动出播报
-- tDogYearBeast_TimeChk[3] = {}
-- tDogYearBeast_TimeChk[3]["TimeType"] = 5  --每小时
-- tDogYearBeast_TimeChk[3]["Multiple"] = {}
-- tDogYearBeast_TimeChk[3]["Multiple"][1]  = "00 00"
-- tDogYearBeast_TimeChk[3]["Func"] = DogYearBeast_ClearGlobalId
-- table.insert(tSystemTime_InitialData,tDogYearBeast_TimeChk[3])

----全服邀请
-- tOntimerMin_HM[2100] = tOntimerMin_HM[2100] or {}
-- table.insert(tOntimerMin_HM[2100],DogYearBeast_SendInMap)

