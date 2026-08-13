------------------------------------------------------------------------------------
--Name：            191216[简体征服][活动脚本]2020全球中国年活动
--Creator:      王贤
--Created:     2019-12-16
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
-- 前缀
-- SpringFestival2020Other_
-- logid： 12001796
-- 变量前缀: Spring2020Other_

------------------------------------------------------------------------------------
-- 掩码说明：
-- stc(212,00)	记录四个数值，前两个代表第一个外套的折扣编码和外套编码，后两个代表第二个外套的折扣编码和外套编码  （如：1122表示9.5折第一件外套，90折第二件外套）
-- stc(212,01)	记录当天是否领取过奖励
-- stc(212,02)	记录是否首次领取春节财神宝盒奖励
-- stc(212,03)	记录每日拜年获得的次数
-- stc(212,59)	记录玩家是否上限领取过金鼠报喜大礼包
-- stc(212,60)	记录背包信
-- stc(214,54)	记录玩家领取的福袋  总共7个按照1111111记录，已领取对应位置标记1
-- stc(215,44)	记录玩家一小时内拿到的100赠点包
-- stc(215,45)	记录玩家一小时内拿到的300赠点包
-- stc(215,46)	记录玩家额外增加的服务器福气值

----------------------------------表配置部分--------------------------------------------
local tSpringFestival2020Other_Data = {}

-- 额外福气值礼包
tSpringFestival2020Other_Data["AdditionalFuQi"] = {}
tSpringFestival2020Other_Data["AdditionalFuQi"][3315249] = 100000
tSpringFestival2020Other_Data["AdditionalFuQi"][3315251] = 350000
tSpringFestival2020Other_Data["AdditionalFuQi"][3327308] = 100000
tSpringFestival2020Other_Data["AdditionalFuQi"][3327312] = 3000
tSpringFestival2020Other_Data["AdditionalFuQi"][3327307] = 100000
tSpringFestival2020Other_Data["AdditionalFuQi"][3327544] = 200000
tSpringFestival2020Other_Data["AdditionalFuQi"][3315252] = 100000
tSpringFestival2020Other_Data["AdditionalFuQi"][3327304] = 100000
tSpringFestival2020Other_Data["AdditionalFuQi"][27] = 270

-- 新年福气全服总值
tSpringFestival2020Other_Data["AdditionalFuQi"]["Global"] = 54089


--寻找NPC
tSpringFestival2020Other_Data["FindNpc"] = {}
tSpringFestival2020Other_Data["FindNpc"][1] = 25792
tSpringFestival2020Other_Data["FindNpc"][2] = 25825

tSpringFestival2020Other_Data["Monster"] = {}
-- 怪物生成
tSpringFestival2020Other_Data["Monster"][1] = {}
tSpringFestival2020Other_Data["Monster"][1]["PosX"] = 50
tSpringFestival2020Other_Data["Monster"][1]["PosY"] = 165
tSpringFestival2020Other_Data["Monster"][1]["GenId"] = 30475
tSpringFestival2020Other_Data["Monster"][1]["MonId"] = 5899
tSpringFestival2020Other_Data["Monster"][2] = {}
tSpringFestival2020Other_Data["Monster"][2]["PosX"] = 181
tSpringFestival2020Other_Data["Monster"][2]["PosY"] = 292
tSpringFestival2020Other_Data["Monster"][2]["GenId"] = 30476
tSpringFestival2020Other_Data["Monster"][2]["MonId"] = 5900
tSpringFestival2020Other_Data["Monster"][3] = {}
tSpringFestival2020Other_Data["Monster"][3]["PosX"] = 268
tSpringFestival2020Other_Data["Monster"][3]["PosY"] = 290
tSpringFestival2020Other_Data["Monster"][3]["GenId"] = 30477
tSpringFestival2020Other_Data["Monster"][3]["MonId"] = 5901
tSpringFestival2020Other_Data["Monster"][4] = {}
tSpringFestival2020Other_Data["Monster"][4]["PosX"] = 341
tSpringFestival2020Other_Data["Monster"][4]["PosY"] = 240
tSpringFestival2020Other_Data["Monster"][4]["GenId"] = 30478
tSpringFestival2020Other_Data["Monster"][4]["MonId"] = 5902


--跨服配置
tSpringFestival2020Other_Data["Cross"] = {}
tSpringFestival2020Other_Data["Cross"]["ServerId"] = 998
tSpringFestival2020Other_Data["Cross"]["MapFlag"] = 116
tSpringFestival2020Other_Data["Cross"]["MapFlag2"] = 159
tSpringFestival2020Other_Data["Cross"]["ServerType"] = 12
tSpringFestival2020Other_Data["Cross"]["GlobalId"] = 54089

-- 怪物掉落
tSpringFestival2020Other_Data["MonsterDrop"] = {}
tSpringFestival2020Other_Data["MonsterDrop"][5886] = {}
tSpringFestival2020Other_Data["MonsterDrop"][5886][1] = 3600237
tSpringFestival2020Other_Data["MonsterDrop"][5886][2] = 3600238
tSpringFestival2020Other_Data["MonsterDrop"][5887] = {}
tSpringFestival2020Other_Data["MonsterDrop"][5887][1] = 3600237
tSpringFestival2020Other_Data["MonsterDrop"][5887][2] = 3600239
tSpringFestival2020Other_Data["MonsterDrop"][5887]["Space"] = 2
tSpringFestival2020Other_Data["MonsterDrop"][5888] = {}
tSpringFestival2020Other_Data["MonsterDrop"][5888][1] = 3600237
tSpringFestival2020Other_Data["MonsterDrop"][5888][2] = 3600240
tSpringFestival2020Other_Data["MonsterDrop"][5888][3] = 3600239
tSpringFestival2020Other_Data["MonsterDrop"][5888]["Space"] = 3
tSpringFestival2020Other_Data["MonsterDrop"][5899] = {}
tSpringFestival2020Other_Data["MonsterDrop"][5899][1] = 3600237
tSpringFestival2020Other_Data["MonsterDrop"][5899][2] = 3600240
tSpringFestival2020Other_Data["MonsterDrop"][5899][3] = 3600239
tSpringFestival2020Other_Data["MonsterDrop"][5899]["Space"] = 3
tSpringFestival2020Other_Data["MonsterDrop"][5900] = {}
tSpringFestival2020Other_Data["MonsterDrop"][5900][1] = 3600237
tSpringFestival2020Other_Data["MonsterDrop"][5900][2] = 3600240
tSpringFestival2020Other_Data["MonsterDrop"][5900][3] = 3600239
tSpringFestival2020Other_Data["MonsterDrop"][5900]["Space"] = 3
tSpringFestival2020Other_Data["MonsterDrop"][5901] = {}
tSpringFestival2020Other_Data["MonsterDrop"][5901][1] = 3600237
tSpringFestival2020Other_Data["MonsterDrop"][5901][2] = 3600240
tSpringFestival2020Other_Data["MonsterDrop"][5901][3] = 3600239
tSpringFestival2020Other_Data["MonsterDrop"][5901]["Space"] = 3
tSpringFestival2020Other_Data["MonsterDrop"][5902] = {}
tSpringFestival2020Other_Data["MonsterDrop"][5902][1] = 3600237
tSpringFestival2020Other_Data["MonsterDrop"][5902][2] = 3600240
tSpringFestival2020Other_Data["MonsterDrop"][5902][3] = 3600239
tSpringFestival2020Other_Data["MonsterDrop"][5902]["Space"] = 3

-- 等级限制
tSpringFestival2020Other_Data["Level"] = 80
tSpringFestival2020Other_Data["Meto"] = 0

-- 福袋相关
tSpringFestival2020Other_Data["FortuneBag"] = {}
tSpringFestival2020Other_Data["FortuneBag"]["ActionId"] = 220
tSpringFestival2020Other_Data["FortuneBag"]["Secs"] = 1
tSpringFestival2020Other_Data["FortuneBag"]["RewardIndex"] = {}
tSpringFestival2020Other_Data["FortuneBag"]["RewardIndex"][1] = 1
tSpringFestival2020Other_Data["FortuneBag"]["RewardIndex"][2] = 2
tSpringFestival2020Other_Data["FortuneBag"]["RewardIndex"][3] = 4
tSpringFestival2020Other_Data["FortuneBag"]["RewardIndex"][4] = 8
tSpringFestival2020Other_Data["FortuneBag"]["RewardIndex"][5] = 16
tSpringFestival2020Other_Data["FortuneBag"]["RewardIndex"][6] = 32
tSpringFestival2020Other_Data["FortuneBag"]["RewardIndex"][7] = 64

-- 地图
tSpringFestival2020Other_Data["ChkMap"] = {}
tSpringFestival2020Other_Data["ChkMap"][1] = 1002
tSpringFestival2020Other_Data["ChkMap"][2] = 10364
tSpringFestival2020Other_Data["ChkMap"][3] = 1036
tSpringFestival2020Other_Data["ChkMap"][4] = 10601
tSpringFestival2020Other_Data["ChkMap"][5] = 10746
tSpringFestival2020Other_Data["ChkMap"]["ChgWay"] = {}
tSpringFestival2020Other_Data["ChkMap"]["ChgWay"]["Server"] = {}
tSpringFestival2020Other_Data["ChkMap"]["ChgWay"]["Server"]["PosX"] = 377
tSpringFestival2020Other_Data["ChkMap"]["ChgWay"]["Server"]["PosY"] = 441
tSpringFestival2020Other_Data["ChkMap"]["ChgWay"]["NoGift"] = {}
tSpringFestival2020Other_Data["ChkMap"]["ChgWay"]["NoGift"]["PosX"] = 184
tSpringFestival2020Other_Data["ChkMap"]["ChgWay"]["NoGift"]["PosY"] = 166
tSpringFestival2020Other_Data["ChkMap"]["ChgWay"]["Cross"] = {}
tSpringFestival2020Other_Data["ChkMap"]["ChgWay"]["Cross"]["PosX"] = 170
tSpringFestival2020Other_Data["ChkMap"]["ChgWay"]["Cross"]["PosY"] = 120



-- web  线下消费网址
tSpringFestival2020Other_Data["WebPage"] = "https://hd.zf.99.com/nhcx"

-- 记录数据用taskid
tSpringFestival2020Other_Data["TaskId"] = 35068
tSpringFestival2020Other_Data["OldTaskId"] = 35034
tSpringFestival2020Other_Data["TreaTaskId"] = 4372
tSpringFestival2020Other_Data["AwardRedPack"] = 10

-- 星云藏宝图任务ID
tSpringFestival2020Other_Data["MonthTaskId"] = {}
tSpringFestival2020Other_Data["MonthTaskId"][1]  = 4376
tSpringFestival2020Other_Data["MonthTaskId"][2]  = 4377
tSpringFestival2020Other_Data["MonthTaskId"][3]  = 4378
tSpringFestival2020Other_Data["MonthTaskId"][4]  = 4379
tSpringFestival2020Other_Data["MonthTaskId"][5]  = 4380
tSpringFestival2020Other_Data["MonthTaskId"][6]  = 4381
tSpringFestival2020Other_Data["MonthTaskId"][7]  = 4382
tSpringFestival2020Other_Data["MonthTaskId"][8]  = 4383
tSpringFestival2020Other_Data["MonthTaskId"][9]  = 4384
tSpringFestival2020Other_Data["MonthTaskId"][10] = 4385
tSpringFestival2020Other_Data["MonthTaskId"][11] = 4372
tSpringFestival2020Other_Data["MonthTaskId"][12] = 4386
-- 对白选项
tSpringFestival2020Other_Data["DialogText"] = {}
tSpringFestival2020Other_Data["DialogText"][1]  = 4
tSpringFestival2020Other_Data["DialogText"][2]  = 5
tSpringFestival2020Other_Data["DialogText"][3]  = 6
tSpringFestival2020Other_Data["DialogText"][4]  = 7
tSpringFestival2020Other_Data["DialogText"][5]  = 10
tSpringFestival2020Other_Data["DialogText"][6]  = 11
tSpringFestival2020Other_Data["DialogText"][7]  = 12
tSpringFestival2020Other_Data["DialogText"][8]  = 13
tSpringFestival2020Other_Data["DialogText"][9]  = 16
tSpringFestival2020Other_Data["DialogText"][10] = 17
tSpringFestival2020Other_Data["DialogText"][11] = 18
tSpringFestival2020Other_Data["DialogText"][12] = 19

-- 藏宝图Id
tSpringFestival2020Other_Data["TreasureMap"] = 3327305

-- 春节财神宝盒
tSpringFestival2020Other_Data[3327373] = {}
tSpringFestival2020Other_Data[3327373]["NeedKey"] = 3327374


-- 3327310	100天石（赠）鼠年红包
tSpringFestival2020Other_Data[3327310] = {}
tSpringFestival2020Other_Data[3327310]["RedType"] = 4		--  世界
tSpringFestival2020Other_Data[3327310]["nType"] = 0
tSpringFestival2020Other_Data[3327310]["nMoneyType"] = 3	--赠点
tSpringFestival2020Other_Data[3327310]["nMoneyNum"] = 100	-- 金钱总额
tSpringFestival2020Other_Data[3327310]["nManyNum"] = 10		-- 分成多少份
tSpringFestival2020Other_Data[3327310]["AddFuQi"] = 10
-- 3327311	300天石（赠）鼠年红包
tSpringFestival2020Other_Data[3327311] = {}
tSpringFestival2020Other_Data[3327311]["RedType"] = 4 		--  世界
tSpringFestival2020Other_Data[3327311]["nType"] = 0
tSpringFestival2020Other_Data[3327311]["nMoneyType"] = 3	--赠点
tSpringFestival2020Other_Data[3327311]["nMoneyNum"] = 300	-- 金钱总额
tSpringFestival2020Other_Data[3327311]["nManyNum"] = 15		-- 分成多少份
tSpringFestival2020Other_Data[3327311]["AddFuQi"] = 30
-- 3327312	1000天石（赠）鼠年红包
tSpringFestival2020Other_Data[3327312] = {}
tSpringFestival2020Other_Data[3327312]["RedType"] = 4		--  世界
tSpringFestival2020Other_Data[3327312]["nType"] = 0
tSpringFestival2020Other_Data[3327312]["nMoneyType"] = 3	--赠点
tSpringFestival2020Other_Data[3327312]["nMoneyNum"] = 1000	-- 金钱总额
tSpringFestival2020Other_Data[3327312]["nManyNum"] = 20		-- 分成多少份
tSpringFestival2020Other_Data[3327312]["AddFuQi"] = 100

-- 碎片合成所需数量
tSpringFestival2020Other_Data["NeedNum"] = {}
tSpringFestival2020Other_Data["NeedNum"][3327313] = 25
tSpringFestival2020Other_Data["NeedNum"][3327314] = 50

-- 金鼠报喜大礼包信息
tSpringFestival2020Other_Data[3327306] = {}
-- 新春积分
tSpringFestival2020Other_Data[3327306][1] = {}
tSpringFestival2020Other_Data[3327306][1][1] = 50
tSpringFestival2020Other_Data[3327306][1][2] = 100
tSpringFestival2020Other_Data[3327306][2] = {}
tSpringFestival2020Other_Data[3327306][2][1] = 100
tSpringFestival2020Other_Data[3327306][2][2] = 300
tSpringFestival2020Other_Data[3327306][2][3] = 1000


-- 时装礼包信息
tSpringFestival2020Other_Data[3327304] = {}
-- 折扣
tSpringFestival2020Other_Data[3327304]["Discount"] = {}
tSpringFestival2020Other_Data[3327304]["Discount"][1] = 9.5
tSpringFestival2020Other_Data[3327304]["Discount"][2] = 9.0
tSpringFestival2020Other_Data[3327304]["Discount"][3] = 8.5
tSpringFestival2020Other_Data[3327304]["Discount"][4] = 8.0
-- 外套原价
tSpringFestival2020Other_Data[3327304]["Original"] = 16888
-- 折后价
tSpringFestival2020Other_Data[3327304]["DiscountPrice"] = {}
tSpringFestival2020Other_Data[3327304]["DiscountPrice"][1] = 16044
tSpringFestival2020Other_Data[3327304]["DiscountPrice"][2] = 15199
tSpringFestival2020Other_Data[3327304]["DiscountPrice"][3] = 14355
tSpringFestival2020Other_Data[3327304]["DiscountPrice"][4] = 13510




-- Stc
tSpringFestival2020Other_Data["Stc"] = {}
tSpringFestival2020Other_Data["Stc"]["Event"] = {}
tSpringFestival2020Other_Data["Stc"]["Data"] = {}
-- stc(212,00)	记录四个数值，前两个代表第一个外套的折扣编码和外套编码，后两个代表第二个外套的折扣编码和外套编码  （如：1122表示9.5折第一件外套，90折第二件外套）
tSpringFestival2020Other_Data["Stc"]["Event"][1] = 212
tSpringFestival2020Other_Data["Stc"]["Data"][1] = 00
-- stc(212,01)	记录当天是否领取过奖励
tSpringFestival2020Other_Data["Stc"]["Event"][2] = 212
tSpringFestival2020Other_Data["Stc"]["Data"][2] = 01
-- stc(212,02)	记录是否首次领取春节财神宝盒奖励
tSpringFestival2020Other_Data["Stc"]["Event"][3] = 212
tSpringFestival2020Other_Data["Stc"]["Data"][3] = 02
-- stc(212,59)	记录玩家是否上限领取过金鼠报喜大礼包
tSpringFestival2020Other_Data["Stc"]["Event"][4] = 212
tSpringFestival2020Other_Data["Stc"]["Data"][4] = 59
-- stc(214,54)	记录玩家领取的福袋  总共7个按照1111111记录，已领取对应位置标记1
tSpringFestival2020Other_Data["Stc"]["Event"][5] = 214
tSpringFestival2020Other_Data["Stc"]["Data"][5] = 54
-- stc(215,46)	记录玩家额外增加的服务器福气值
tSpringFestival2020Other_Data["Stc"]["Event"][6] = 215
tSpringFestival2020Other_Data["Stc"]["Data"][6] = 46



-- Log
tSpringFestival2020Other_Data["Log"] = {}
-- 过期删除
tSpringFestival2020Other_Data["Log"][1] = "0,0,%d,%d,12001796,2,0,0"
-- 跨服获得道具
tSpringFestival2020Other_Data["Log"][5886] = "0,0,%d,1,12001796,7[1],0,0"
tSpringFestival2020Other_Data["Log"][5887] = "0,0,%d,1,12001796,7[2],0,0"
tSpringFestival2020Other_Data["Log"][5888] = "0,0,%d,1,12001796,7[3],0,0"
tSpringFestival2020Other_Data["Log"][5899] = "0,0,%d,1,12001796,7[4],0,0"
tSpringFestival2020Other_Data["Log"][5900] = "0,0,%d,1,12001796,7[5],0,0"
tSpringFestival2020Other_Data["Log"][5901] = "0,0,%d,1,12001796,7[6],0,0"
tSpringFestival2020Other_Data["Log"][5902] = "0,0,%d,1,12001796,7[7],0,0"

-- EmoneyLog
tSpringFestival2020Other_Data["EmoneyLog"] = {}
-- 时装礼包扣除天石
tSpringFestival2020Other_Data["EmoneyLog"][3327304] = "1000	01400	%d	%d	1	"

-- 计时器记录
local tSpringFestival2020Other_UserData = {}
-- tSpringFestival2020Other_UserData[nUserId] = nNum


-- 怪物击杀计数
local tSpringFestival2020Other_MonsterKillNum = {}
-- tSpringFestival2020Other_MonsterKillNum[nUserId] = nNum



local tSpringFestival2020Other_Reward = {}
	-- ===鼠年幸运礼包
	-- ===索引: tSpringFestival2020Other_Reward[3327303]
	-- ===删除:3327303
	tSpringFestival2020Other_Reward[3327303] = {}
	tSpringFestival2020Other_Reward[3327303]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tSpringFestival2020Other_Reward[3327303]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327303]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327303]["DeleteItem"][1]["Id"] = 3327303 -- 【库】鼠年幸运礼包[属性:9]
	tSpringFestival2020Other_Reward[3327303]["LogId"] = 12001796
	-- 100新年赠点红包 - 5%
	tSpringFestival2020Other_Reward[3327303][1] = {}
	tSpringFestival2020Other_Reward[3327303][1]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327303][1]["ItemChance"] = 500
	tSpringFestival2020Other_Reward[3327303][1]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327303][1]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327303][1]["RewardItem"][1]["Id"] = 3327310 -- 100天石（赠）鼠年红包[3327310][属性:9][叠加:10000][金币:0], 【表格】100新年赠点红包
	tSpringFestival2020Other_Reward[3327303][1]["RewardItem"][1]["Attr"] = "0 1" -- 100天石（赠）鼠年红包*1
	tSpringFestival2020Other_Reward[3327303][1]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327303][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327303][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 【stc（215,44）】1小时（零点重置）10个
	tSpringFestival2020Other_Reward[3327303][1]["EventType"] = 215
	tSpringFestival2020Other_Reward[3327303][1]["DataType"] = 44
	tSpringFestival2020Other_Reward[3327303][1]["RewardDelay"] = 1
	tSpringFestival2020Other_Reward[3327303][1]["RewardTimeType"] = 2
	tSpringFestival2020Other_Reward[3327303][1]["RewardData"] = 10
	tSpringFestival2020Other_Reward[3327303][1]["FullIndex"] = 4
	-- 赤炼石+1 - 5%
	tSpringFestival2020Other_Reward[3327303][2] = {}
	tSpringFestival2020Other_Reward[3327303][2]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327303][2]["ItemChance"] = 500
	tSpringFestival2020Other_Reward[3327303][2]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327303][2]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327303][2]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤炼石+1
	tSpringFestival2020Other_Reward[3327303][2]["RewardItem"][1]["Attr"] = "0 2 3 7200 1" -- 5天时效(激活)的+1赤炼石（赠）*2
	tSpringFestival2020Other_Reward[3327303][2]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327303][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327303][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 5%
	tSpringFestival2020Other_Reward[3327303][3] = {}
	tSpringFestival2020Other_Reward[3327303][3]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327303][3]["ItemChance"] = 500
	tSpringFestival2020Other_Reward[3327303][3]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327303][3]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327303][3]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石
	tSpringFestival2020Other_Reward[3327303][3]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的微光星陨石*3
	tSpringFestival2020Other_Reward[3327303][3]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327303][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327303][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 100气力值 - 5%
	tSpringFestival2020Other_Reward[3327303][4] = {}
	tSpringFestival2020Other_Reward[3327303][4]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327303][4]["ItemChance"] = 500
	tSpringFestival2020Other_Reward[3327303][4]["RewardStrengthValue"] = {}
	tSpringFestival2020Other_Reward[3327303][4]["RewardStrengthValue"]["Value"] = 100 -- 气力值, 【需求】100气力值
	tSpringFestival2020Other_Reward[3327303][4]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327303][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327303][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 10%
	tSpringFestival2020Other_Reward[3327303][5] = {}
	tSpringFestival2020Other_Reward[3327303][5]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327303][5]["ItemChance"] = 1000
	tSpringFestival2020Other_Reward[3327303][5]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327303][5]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327303][5]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tSpringFestival2020Other_Reward[3327303][5]["RewardItem"][1]["Attr"] = "0 1" -- 人参果*1
	tSpringFestival2020Other_Reward[3327303][5]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327303][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327303][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 10%
	tSpringFestival2020Other_Reward[3327303][6] = {}
	tSpringFestival2020Other_Reward[3327303][6]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327303][6]["ItemChance"] = 1000
	tSpringFestival2020Other_Reward[3327303][6]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327303][6]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327303][6]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tSpringFestival2020Other_Reward[3327303][6]["RewardItem"][1]["Attr"] = "0 3 3" -- 万能神纹精粹*3
	tSpringFestival2020Other_Reward[3327303][6]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327303][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327303][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 未鉴定1级年兽蛋 - 20%
	tSpringFestival2020Other_Reward[3327303][7] = {}
	tSpringFestival2020Other_Reward[3327303][7]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327303][7]["ItemChance"] = 2000
	tSpringFestival2020Other_Reward[3327303][7]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327303][7]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327303][7]["RewardItem"][1]["Id"] = 3600237 -- 年兽蛋（一阶）[3600237][属性:8][叠加:0][金币:0], 【表格】未鉴定1级年兽蛋
	tSpringFestival2020Other_Reward[3327303][7]["RewardItem"][1]["Attr"] = "0 1 3" -- 年兽蛋（一阶）*1
	tSpringFestival2020Other_Reward[3327303][7]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327303][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327303][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 年兽蛋加速道具 - 20%
	tSpringFestival2020Other_Reward[3327303][8] = {}
	tSpringFestival2020Other_Reward[3327303][8]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327303][8]["ItemChance"] = 2000
	tSpringFestival2020Other_Reward[3327303][8]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327303][8]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327303][8]["RewardItem"][1]["Id"] = 3600238 -- 星纹石[3600238][属性:8][叠加:0][金币:0], 【表格】年兽蛋加速道具
	tSpringFestival2020Other_Reward[3327303][8]["RewardItem"][1]["Attr"] = "0 10 3" -- 星纹石*10
	tSpringFestival2020Other_Reward[3327303][8]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327303][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327303][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 年兽孵化池开启道具 - 20%
	tSpringFestival2020Other_Reward[3327303][9] = {}
	tSpringFestival2020Other_Reward[3327303][9]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327303][9]["ItemChance"] = 2000
	tSpringFestival2020Other_Reward[3327303][9]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327303][9]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327303][9]["RewardItem"][1]["Id"] = 3600239 -- 赤炎结晶[3600239][属性:9][叠加:0][金币:0], 【表格】年兽孵化池开启道具
	tSpringFestival2020Other_Reward[3327303][9]["RewardItem"][1]["Attr"] = "0 1" -- 赤炎结晶*1
	tSpringFestival2020Other_Reward[3327303][9]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327303][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327303][9]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327304] = {}
	-- ===新年时装福禄包
	-- ===索引: tSpringFestival2020Other_Reward[3327304][1]
	-- ===删除:3327304
	-- ===LogStep:2[1] 
	tSpringFestival2020Other_Reward[3327304][1] = {}
	tSpringFestival2020Other_Reward[3327304][1]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327304][1]["LogStep"] = "2[1]"
	tSpringFestival2020Other_Reward[3327304][1]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327304][1]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327304][1]["DeleteItem"][1]["Id"] = 3327304 -- 【库】新年时装福禄包[属性:9]
	tSpringFestival2020Other_Reward[3327304][1]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327304][1]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327304][1]["RewardItem"][1]["Id"] = 195075 -- 福星天降【华彩版】[195075][属性:0][叠加:0][金币:0], 【表格】福兴天降【华彩版】
	tSpringFestival2020Other_Reward[3327304][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑福星天降【华彩版】*1
	tSpringFestival2020Other_Reward[3327304][1]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327304][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327304][1]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327304][2] = {}
	-- ===新年时装福禄包
	-- ===索引: tSpringFestival2020Other_Reward[3327304][2]
	-- ===删除:3327304
	-- ===LogStep:2[2] 
	tSpringFestival2020Other_Reward[3327304][2]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327304][2]["LogStep"] = "2[2]"
	tSpringFestival2020Other_Reward[3327304][2]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327304][2]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327304][2]["DeleteItem"][1]["Id"] = 3327304 -- 【库】新年时装福禄包[属性:9]
	tSpringFestival2020Other_Reward[3327304][2]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327304][2]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327304][2]["RewardItem"][1]["Id"] = 195575 -- 天蓬朱衣【鸿福】时装外套[195575][属性:8][叠加:0][金币:0], 【表格】天蓬朱衣【鸿福】
	tSpringFestival2020Other_Reward[3327304][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑天蓬朱衣时装外套*1
	tSpringFestival2020Other_Reward[3327304][2]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327304][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327304][2]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327304][3] = {}
	-- ===新年时装福禄包
	-- ===索引: tSpringFestival2020Other_Reward[3327304][3]
	-- ===删除:3327304
	-- ===LogStep:2[3] 
	tSpringFestival2020Other_Reward[3327304][3]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327304][3]["LogStep"] = "2[3]"
	tSpringFestival2020Other_Reward[3327304][3]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327304][3]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327304][3]["DeleteItem"][1]["Id"] = 3327304 -- 【库】新年时装福禄包[属性:9]
	tSpringFestival2020Other_Reward[3327304][3]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327304][3]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327304][3]["RewardItem"][1]["Id"] = 195885 -- 四海升平【锦绣版】[195885][属性:0][叠加:0][金币:0], 【表格】四海升平【锦绣版】
	tSpringFestival2020Other_Reward[3327304][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑四海升平【锦绣版】*1
	tSpringFestival2020Other_Reward[3327304][3]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327304][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327304][3]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327304][4] = {}
	-- ===新年时装福禄包
	-- ===索引: tSpringFestival2020Other_Reward[3327304][4]
	-- ===删除:3327304
	-- ===LogStep:2[4]
	tSpringFestival2020Other_Reward[3327304][4]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327304][4]["LogStep"] = "2[4]"
	tSpringFestival2020Other_Reward[3327304][4]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327304][4]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327304][4]["DeleteItem"][1]["Id"] = 3327304 -- 【库】新年时装福禄包[属性:9]
	tSpringFestival2020Other_Reward[3327304][4]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327304][4]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327304][4]["RewardItem"][1]["Id"] = 188915 -- 辉耀之刺【荣耀版】[188915][属性:8][叠加:0][金币:0], 【表格】辉耀之刺【荣耀版】
	tSpringFestival2020Other_Reward[3327304][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑辉耀之刺【荣耀版】*1
	tSpringFestival2020Other_Reward[3327304][4]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327304][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327304][4]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327304][5] = {}
	-- ===新年时装福禄包
	-- ===索引: tSpringFestival2020Other_Reward[3327304][5]
	-- ===删除:3327304
	-- ===LogStep:2[5]
	tSpringFestival2020Other_Reward[3327304][5]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327304][5]["LogStep"] = "2[5]"
	tSpringFestival2020Other_Reward[3327304][5]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327304][5]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327304][5]["DeleteItem"][1]["Id"] = 3327304 -- 【库】新年时装福禄包[属性:9]
	tSpringFestival2020Other_Reward[3327304][5]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327304][5]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327304][5]["RewardItem"][1]["Id"] = 189065 -- 暗黑魔龙战衣【炼狱版】[189065][属性:8][叠加:0][金币:0], 【表格】暗黑魔龙战衣【炼狱版】
	tSpringFestival2020Other_Reward[3327304][5]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑暗黑魔龙战衣【炼狱版】*1
	tSpringFestival2020Other_Reward[3327304][5]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327304][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327304][5]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327304][6] = {}
	-- ===新年时装福禄包
	-- ===索引: tSpringFestival2020Other_Reward[3327304][6]
	-- ===删除:3327304
	-- ===LogStep:2[6]
	tSpringFestival2020Other_Reward[3327304][6]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327304][6]["LogStep"] = "2[6]"
	tSpringFestival2020Other_Reward[3327304][6]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327304][6]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327304][6]["DeleteItem"][1]["Id"] = 3327304 -- 【库】新年时装福禄包[属性:9]
	tSpringFestival2020Other_Reward[3327304][6]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327304][6]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327304][6]["RewardItem"][1]["Id"] = 195225 -- 卡牌大师【传奇版】[195225][属性:0][叠加:0][金币:0], 【表格】卡牌大师【传奇版】
	tSpringFestival2020Other_Reward[3327304][6]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑卡牌大师【传奇版】*1
	tSpringFestival2020Other_Reward[3327304][6]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327304][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327304][6]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3600213] = {}
	-- ===压岁钱红包
	-- ===索引: tSpringFestival2020Other_Reward[3600213][1]
	-- ===删除:3600213
	tSpringFestival2020Other_Reward[3600213][1] = {}
	tSpringFestival2020Other_Reward[3600213][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tSpringFestival2020Other_Reward[3600213][1]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3600213][1]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3600213][1]["DeleteItem"][1]["Id"] = 3600213 -- 【库】压岁钱红包[属性:9]
	tSpringFestival2020Other_Reward[3600213][1]["LogId"] = 12001796
	-- 10点新年积分 - 0%
	tSpringFestival2020Other_Reward[3600213][1][1] = {}
	tSpringFestival2020Other_Reward[3600213][1][1]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3600213][1][1]["ItemChance"] = 0
	tSpringFestival2020Other_Reward[3600213][1][1]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3600213][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3600213][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 100新年赠点红包 - 2%
	tSpringFestival2020Other_Reward[3600213][1][2] = {}
	tSpringFestival2020Other_Reward[3600213][1][2]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3600213][1][2]["ItemChance"] = 200
	tSpringFestival2020Other_Reward[3600213][1][2]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3600213][1][2]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3600213][1][2]["RewardItem"][1]["Id"] = 3327310 -- 100天石（赠）鼠年红包[3327310][属性:9][叠加:10000][金币:0], 【表格】100新年赠点红包
	tSpringFestival2020Other_Reward[3600213][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 100天石（赠）鼠年红包*1
	tSpringFestival2020Other_Reward[3600213][1][2]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3600213][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3600213][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 【stc（215,44）】1小时（零点重置）10个
	tSpringFestival2020Other_Reward[3600213][1][2]["EventType"] = 215
	tSpringFestival2020Other_Reward[3600213][1][2]["DataType"] = 44
	tSpringFestival2020Other_Reward[3600213][1][2]["RewardDelay"] = 1
	tSpringFestival2020Other_Reward[3600213][1][2]["RewardTimeType"] = 2
	tSpringFestival2020Other_Reward[3600213][1][2]["RewardData"] = 10
	tSpringFestival2020Other_Reward[3600213][1][2]["FullIndex"] = 5
	-- 赤炼石+2 - 15%
	tSpringFestival2020Other_Reward[3600213][1][3] = {}
	tSpringFestival2020Other_Reward[3600213][1][3]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3600213][1][3]["ItemChance"] = 1500
	tSpringFestival2020Other_Reward[3600213][1][3]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3600213][1][3]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3600213][1][3]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2
	tSpringFestival2020Other_Reward[3600213][1][3]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+2赤炼石（赠）*1
	tSpringFestival2020Other_Reward[3600213][1][3]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3600213][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3600213][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 13%
	tSpringFestival2020Other_Reward[3600213][1][4] = {}
	tSpringFestival2020Other_Reward[3600213][1][4]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3600213][1][4]["ItemChance"] = 1300
	tSpringFestival2020Other_Reward[3600213][1][4]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3600213][1][4]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3600213][1][4]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tSpringFestival2020Other_Reward[3600213][1][4]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tSpringFestival2020Other_Reward[3600213][1][4]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3600213][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3600213][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 300气力值 - 15%
	tSpringFestival2020Other_Reward[3600213][1][5] = {}
	tSpringFestival2020Other_Reward[3600213][1][5]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3600213][1][5]["ItemChance"] = 1500
	tSpringFestival2020Other_Reward[3600213][1][5]["RewardStrengthValue"] = {}
	tSpringFestival2020Other_Reward[3600213][1][5]["RewardStrengthValue"]["Value"] = 300 -- 气力值, 【需求】300气力值
	tSpringFestival2020Other_Reward[3600213][1][5]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3600213][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3600213][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 20%
	tSpringFestival2020Other_Reward[3600213][1][6] = {}
	tSpringFestival2020Other_Reward[3600213][1][6]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3600213][1][6]["ItemChance"] = 2000
	tSpringFestival2020Other_Reward[3600213][1][6]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3600213][1][6]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3600213][1][6]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tSpringFestival2020Other_Reward[3600213][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 人参果*1
	tSpringFestival2020Other_Reward[3600213][1][6]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3600213][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3600213][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 15%
	tSpringFestival2020Other_Reward[3600213][1][7] = {}
	tSpringFestival2020Other_Reward[3600213][1][7]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3600213][1][7]["ItemChance"] = 1500
	tSpringFestival2020Other_Reward[3600213][1][7]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3600213][1][7]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3600213][1][7]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tSpringFestival2020Other_Reward[3600213][1][7]["RewardItem"][1]["Attr"] = "0 5 3" -- 万能神纹精粹*5
	tSpringFestival2020Other_Reward[3600213][1][7]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3600213][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3600213][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 年兽孵化池开启道具 - 10%
	tSpringFestival2020Other_Reward[3600213][1][8] = {}
	tSpringFestival2020Other_Reward[3600213][1][8]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3600213][1][8]["ItemChance"] = 1000
	tSpringFestival2020Other_Reward[3600213][1][8]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3600213][1][8]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3600213][1][8]["RewardItem"][1]["Id"] = 3600239 -- 赤炎结晶[3600239][属性:9][叠加:0][金币:0], 【表格】年兽孵化池开启道具
	tSpringFestival2020Other_Reward[3600213][1][8]["RewardItem"][1]["Attr"] = "0 1" -- 赤炎结晶*1
	tSpringFestival2020Other_Reward[3600213][1][8]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3600213][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3600213][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 年兽孵化加速道具 - 10%
	tSpringFestival2020Other_Reward[3600213][1][9] = {}
	tSpringFestival2020Other_Reward[3600213][1][9]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3600213][1][9]["ItemChance"] = 1000
	tSpringFestival2020Other_Reward[3600213][1][9]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3600213][1][9]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3600213][1][9]["RewardItem"][1]["Id"] = 3600238 -- 星纹石[3600238][属性:8][叠加:0][金币:0], 【表格】年兽孵化加速道具
	tSpringFestival2020Other_Reward[3600213][1][9]["RewardItem"][1]["Attr"] = "0 10 3" -- 星纹石*10
	tSpringFestival2020Other_Reward[3600213][1][9]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3600213][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3600213][1][9]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3600213][2] = {}
	-- ===压岁钱红包
	-- ===索引: tSpringFestival2020Other_Reward[3600213][2]
	tSpringFestival2020Other_Reward[3600213][2]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3600213][2]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3600213][2]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3600213][2]["RewardItem"][1]["Id"] = 3600213 -- 压岁钱红包[3600213][属性:9][叠加:10000][金币:0], 【表格】压岁钱红包
	tSpringFestival2020Other_Reward[3600213][2]["RewardItem"][1]["Attr"] = "0 1" -- 压岁钱红包*1
	tSpringFestival2020Other_Reward[3600213][2]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3600213][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3600213][2]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327306] = {}
	-- ===金鼠报喜大礼包（1月17日至2月2日）
	-- ===索引: tSpringFestival2020Other_Reward[3327306][1]
	tSpringFestival2020Other_Reward[3327306][1] = {}
	tSpringFestival2020Other_Reward[3327306][1]["ItemChanceSum"] = 10000
	tSpringFestival2020Other_Reward[3327306][1]["LogId"] = 12001796
	-- 50新春积分 - 0%
	tSpringFestival2020Other_Reward[3327306][1][1] = {}
	tSpringFestival2020Other_Reward[3327306][1][1]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327306][1][1]["ItemChance"] = 0
	tSpringFestival2020Other_Reward[3327306][1][1]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327306][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327306][1][1]["RewardEffect"]["Effect"] = "task041"
	-- 100新春积分 - 0%
	tSpringFestival2020Other_Reward[3327306][1][2] = {}
	tSpringFestival2020Other_Reward[3327306][1][2]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327306][1][2]["ItemChance"] = 0
	tSpringFestival2020Other_Reward[3327306][1][2]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327306][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327306][1][2]["RewardEffect"]["Effect"] = "task041"
-- 	tSpringFestival2020Other_Reward[3327306][1][2]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tSpringFestival2020Other_Reward[3327306][1][2]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 赤炼石+2 - 20%
	tSpringFestival2020Other_Reward[3327306][1][3] = {}
	tSpringFestival2020Other_Reward[3327306][1][3]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327306][1][3]["ItemChance"] = 2000
	tSpringFestival2020Other_Reward[3327306][1][3]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327306][1][3]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327306][1][3]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2
	tSpringFestival2020Other_Reward[3327306][1][3]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+2赤炼石（赠）*1
	tSpringFestival2020Other_Reward[3327306][1][3]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327306][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327306][1][3]["RewardEffect"]["Effect"] = "task041"
	-- 明亮星陨石 - 15%
	tSpringFestival2020Other_Reward[3327306][1][4] = {}
	tSpringFestival2020Other_Reward[3327306][1][4]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327306][1][4]["ItemChance"] = 1500
	tSpringFestival2020Other_Reward[3327306][1][4]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327306][1][4]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327306][1][4]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tSpringFestival2020Other_Reward[3327306][1][4]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tSpringFestival2020Other_Reward[3327306][1][4]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327306][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327306][1][4]["RewardEffect"]["Effect"] = "task041"
	-- 300气力值 - 20%
	tSpringFestival2020Other_Reward[3327306][1][5] = {}
	tSpringFestival2020Other_Reward[3327306][1][5]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327306][1][5]["ItemChance"] = 2000
	tSpringFestival2020Other_Reward[3327306][1][5]["RewardStrengthValue"] = {}
	tSpringFestival2020Other_Reward[3327306][1][5]["RewardStrengthValue"]["Value"] = 300 -- 气力值, 【需求】300气力值
	tSpringFestival2020Other_Reward[3327306][1][5]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327306][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327306][1][5]["RewardEffect"]["Effect"] = "task041"
	-- 人参果 - 25%
	tSpringFestival2020Other_Reward[3327306][1][6] = {}
	tSpringFestival2020Other_Reward[3327306][1][6]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327306][1][6]["ItemChance"] = 2500
	tSpringFestival2020Other_Reward[3327306][1][6]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327306][1][6]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327306][1][6]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tSpringFestival2020Other_Reward[3327306][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 人参果*1
	tSpringFestival2020Other_Reward[3327306][1][6]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327306][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327306][1][6]["RewardEffect"]["Effect"] = "task041"
	-- 万能神纹精粹 - 20%
	tSpringFestival2020Other_Reward[3327306][1][7] = {}
	tSpringFestival2020Other_Reward[3327306][1][7]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327306][1][7]["ItemChance"] = 2000
	tSpringFestival2020Other_Reward[3327306][1][7]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327306][1][7]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327306][1][7]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tSpringFestival2020Other_Reward[3327306][1][7]["RewardItem"][1]["Attr"] = "0 5 3" -- 万能神纹精粹*5
	tSpringFestival2020Other_Reward[3327306][1][7]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327306][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327306][1][7]["RewardEffect"]["Effect"] = "task041"


	tSpringFestival2020Other_Reward[3327306][2] = {}
	-- ===金鼠报喜大礼包（1月24日至2月2日）
	-- ===索引: tSpringFestival2020Other_Reward[3327306][2]
	tSpringFestival2020Other_Reward[3327306][2]["ItemChanceSum"] = 10000
	tSpringFestival2020Other_Reward[3327306][2]["LogId"] = 12001796
	-- 赤炼石+3 - 25%
	tSpringFestival2020Other_Reward[3327306][2][1] = {}
	tSpringFestival2020Other_Reward[3327306][2][1]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327306][2][1]["ItemChance"] = 2500
	tSpringFestival2020Other_Reward[3327306][2][1]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327306][2][1]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327306][2][1]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tSpringFestival2020Other_Reward[3327306][2][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tSpringFestival2020Other_Reward[3327306][2][1]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327306][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327306][2][1]["RewardEffect"]["Effect"] = "task041"
	-- 明亮星陨石 - 20%
	tSpringFestival2020Other_Reward[3327306][2][2] = {}
	tSpringFestival2020Other_Reward[3327306][2][2]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327306][2][2]["ItemChance"] = 2000
	tSpringFestival2020Other_Reward[3327306][2][2]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327306][2][2]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327306][2][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tSpringFestival2020Other_Reward[3327306][2][2]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的明亮星陨石*2
	tSpringFestival2020Other_Reward[3327306][2][2]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327306][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327306][2][2]["RewardEffect"]["Effect"] = "task041"
	-- 600气力值 - 20%
	tSpringFestival2020Other_Reward[3327306][2][3] = {}
	tSpringFestival2020Other_Reward[3327306][2][3]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327306][2][3]["ItemChance"] = 2000
	tSpringFestival2020Other_Reward[3327306][2][3]["RewardStrengthValue"] = {}
	tSpringFestival2020Other_Reward[3327306][2][3]["RewardStrengthValue"]["Value"] = 600 -- 气力值, 【需求】600气力值
	tSpringFestival2020Other_Reward[3327306][2][3]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327306][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327306][2][3]["RewardEffect"]["Effect"] = "task041"
	-- 人参果 - 20%
	tSpringFestival2020Other_Reward[3327306][2][4] = {}
	tSpringFestival2020Other_Reward[3327306][2][4]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327306][2][4]["ItemChance"] = 2000
	tSpringFestival2020Other_Reward[3327306][2][4]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327306][2][4]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327306][2][4]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tSpringFestival2020Other_Reward[3327306][2][4]["RewardItem"][1]["Attr"] = "0 4" -- 人参果*4
	tSpringFestival2020Other_Reward[3327306][2][4]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327306][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327306][2][4]["RewardEffect"]["Effect"] = "task041"
	-- 万能神纹精粹 - 15%
	tSpringFestival2020Other_Reward[3327306][2][5] = {}
	tSpringFestival2020Other_Reward[3327306][2][5]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327306][2][5]["ItemChance"] = 1500
	tSpringFestival2020Other_Reward[3327306][2][5]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327306][2][5]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327306][2][5]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tSpringFestival2020Other_Reward[3327306][2][5]["RewardItem"][1]["Attr"] = "0 15 3" -- 万能神纹精粹*15
	tSpringFestival2020Other_Reward[3327306][2][5]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327306][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327306][2][5]["RewardEffect"]["Effect"] = "task041"


	tSpringFestival2020Other_Reward[3327306][3] = {}
	-- ===金鼠报喜大礼包（2月3日至2月9日）
	-- ===索引: tSpringFestival2020Other_Reward[3327306][3]
	-- ===删除:3327306
	tSpringFestival2020Other_Reward[3327306][3]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tSpringFestival2020Other_Reward[3327306][3]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327306][3]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327306][3]["DeleteItem"][1]["Id"] = 3327306 -- 【库】金鼠报喜大礼包[属性:9]
	tSpringFestival2020Other_Reward[3327306][3]["LogId"] = 12001796
	-- 赤炼石+5 - 16%
	tSpringFestival2020Other_Reward[3327306][3][1] = {}
	tSpringFestival2020Other_Reward[3327306][3][1]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327306][3][1]["ItemChance"] = 1600
	tSpringFestival2020Other_Reward[3327306][3][1]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327306][3][1]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327306][3][1]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tSpringFestival2020Other_Reward[3327306][3][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
	tSpringFestival2020Other_Reward[3327306][3][1]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327306][3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327306][3][1]["RewardEffect"]["Effect"] = "task041"
-- 	tSpringFestival2020Other_Reward[3327306][3][1]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tSpringFestival2020Other_Reward[3327306][3][1]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 晶莹星陨石 - 24%
	tSpringFestival2020Other_Reward[3327306][3][2] = {}
	tSpringFestival2020Other_Reward[3327306][3][2]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327306][3][2]["ItemChance"] = 2400
	tSpringFestival2020Other_Reward[3327306][3][2]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327306][3][2]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327306][3][2]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tSpringFestival2020Other_Reward[3327306][3][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tSpringFestival2020Other_Reward[3327306][3][2]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327306][3][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327306][3][2]["RewardEffect"]["Effect"] = "task041"
-- 	tSpringFestival2020Other_Reward[3327306][3][2]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tSpringFestival2020Other_Reward[3327306][3][2]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 5000气力值 - 20%
	tSpringFestival2020Other_Reward[3327306][3][3] = {}
	tSpringFestival2020Other_Reward[3327306][3][3]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327306][3][3]["ItemChance"] = 2000
	tSpringFestival2020Other_Reward[3327306][3][3]["RewardStrengthValue"] = {}
	tSpringFestival2020Other_Reward[3327306][3][3]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】5000气力值
	tSpringFestival2020Other_Reward[3327306][3][3]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327306][3][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327306][3][3]["RewardEffect"]["Effect"] = "task041"
-- 	tSpringFestival2020Other_Reward[3327306][3][3]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tSpringFestival2020Other_Reward[3327306][3][3]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 5000修为值 - 24%
	tSpringFestival2020Other_Reward[3327306][3][4] = {}
	tSpringFestival2020Other_Reward[3327306][3][4]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327306][3][4]["ItemChance"] = 2400
	tSpringFestival2020Other_Reward[3327306][3][4]["RewardRepairValue"] = {}
	tSpringFestival2020Other_Reward[3327306][3][4]["RewardRepairValue"]["Value"] = 5000 -- 修为值, 【需求】5000修为值
	tSpringFestival2020Other_Reward[3327306][3][4]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327306][3][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327306][3][4]["RewardEffect"]["Effect"] = "task041"
-- 	tSpringFestival2020Other_Reward[3327306][3][4]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tSpringFestival2020Other_Reward[3327306][3][4]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 万能神纹精粹 - 16%
	tSpringFestival2020Other_Reward[3327306][3][5] = {}
	tSpringFestival2020Other_Reward[3327306][3][5]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327306][3][5]["ItemChance"] = 1600
	tSpringFestival2020Other_Reward[3327306][3][5]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327306][3][5]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327306][3][5]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tSpringFestival2020Other_Reward[3327306][3][5]["RewardItem"][1]["Attr"] = "0 100 3" -- 万能神纹精粹*100
	tSpringFestival2020Other_Reward[3327306][3][5]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327306][3][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327306][3][5]["RewardEffect"]["Effect"] = "task041"
-- 	tSpringFestival2020Other_Reward[3327306][3][5]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tSpringFestival2020Other_Reward[3327306][3][5]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】


	tSpringFestival2020Other_Reward[3327306][4] = {}
	-- ===金鼠报喜大礼包（上线领取）
	-- ===索引: tSpringFestival2020Other_Reward[3327306][4]
	tSpringFestival2020Other_Reward[3327306][4]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327306][4]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327306][4]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327306][4]["RewardItem"][1]["Id"] = 3327306 -- 金鼠报喜大礼包[3327306][属性:9][叠加:10000][金币:0], 【表格】金鼠报喜大礼包
	tSpringFestival2020Other_Reward[3327306][4]["RewardItem"][1]["Attr"] = "0 1" -- 金鼠报喜大礼包*1
	tSpringFestival2020Other_Reward[3327306][4]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327306][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327306][4]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327307] = {}
	-- ===春节新衣回归礼盒
	-- ===索引: tSpringFestival2020Other_Reward[3327307][1]
	-- ===删除:3327307
	-- ===LogStep:3[1] 
	tSpringFestival2020Other_Reward[3327307][1] = {}
	tSpringFestival2020Other_Reward[3327307][1]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327307][1]["LogStep"] = "3[1]"
	tSpringFestival2020Other_Reward[3327307][1]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327307][1]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327307][1]["DeleteItem"][1]["Id"] = 3327307 -- 【库】春节新衣回归礼盒[属性:9]
	tSpringFestival2020Other_Reward[3327307][1]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327307][1]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327307][1]["RewardItem"][1]["Id"] = 195075 -- 福星天降【华彩版】[195075][属性:0][叠加:0][金币:0], 【表格】福兴天降【华彩版】
	tSpringFestival2020Other_Reward[3327307][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑福星天降【华彩版】*1
	tSpringFestival2020Other_Reward[3327307][1]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327307][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327307][1]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327307][2] = {}
	-- ===春节新衣回归礼盒
	-- ===索引: tSpringFestival2020Other_Reward[3327307][2]
	-- ===删除:3327307
	-- ===LogStep:3[2] 
	tSpringFestival2020Other_Reward[3327307][2]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327307][2]["LogStep"] = "3[2]"
	tSpringFestival2020Other_Reward[3327307][2]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327307][2]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327307][2]["DeleteItem"][1]["Id"] = 3327307 -- 【库】春节新衣回归礼盒[属性:9]
	tSpringFestival2020Other_Reward[3327307][2]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327307][2]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327307][2]["RewardItem"][1]["Id"] = 195575 -- 天蓬朱衣【鸿福】时装外套[195575][属性:8][叠加:0][金币:0], 【表格】天蓬朱衣【鸿福】
	tSpringFestival2020Other_Reward[3327307][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑天蓬朱衣时装外套*1
	tSpringFestival2020Other_Reward[3327307][2]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327307][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327307][2]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327307][3] = {}
	-- ===春节新衣回归礼盒
	-- ===索引: tSpringFestival2020Other_Reward[3327307][3]
	-- ===删除:3327307
	-- ===LogStep:3[3] 
	tSpringFestival2020Other_Reward[3327307][3]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327307][3]["LogStep"] = "3[3]"
	tSpringFestival2020Other_Reward[3327307][3]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327307][3]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327307][3]["DeleteItem"][1]["Id"] = 3327307 -- 【库】春节新衣回归礼盒[属性:9]
	tSpringFestival2020Other_Reward[3327307][3]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327307][3]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327307][3]["RewardItem"][1]["Id"] = 195885 -- 四海升平【锦绣版】[195885][属性:0][叠加:0][金币:0], 【表格】四海升平【锦绣版】
	tSpringFestival2020Other_Reward[3327307][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑四海升平【锦绣版】*1
	tSpringFestival2020Other_Reward[3327307][3]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327307][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327307][3]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327307][4] = {}
	-- ===春节新衣回归礼盒
	-- ===索引: tSpringFestival2020Other_Reward[3327307][4]
	-- ===删除:3327307
	-- ===LogStep:3[4] 
	tSpringFestival2020Other_Reward[3327307][4]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327307][4]["LogStep"] = "3[4]"
	tSpringFestival2020Other_Reward[3327307][4]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327307][4]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327307][4]["DeleteItem"][1]["Id"] = 3327307 -- 【库】春节新衣回归礼盒[属性:9]
	tSpringFestival2020Other_Reward[3327307][4]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327307][4]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327307][4]["RewardItem"][1]["Id"] = 188915 -- 辉耀之刺【荣耀版】[188915][属性:8][叠加:0][金币:0], 【表格】辉耀之刺【荣耀版】
	tSpringFestival2020Other_Reward[3327307][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑辉耀之刺【荣耀版】*1
	tSpringFestival2020Other_Reward[3327307][4]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327307][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327307][4]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327307][5] = {}
	-- ===春节新衣回归礼盒
	-- ===索引: tSpringFestival2020Other_Reward[3327307][5]
	-- ===删除:3327307
	-- ===LogStep:3[5] 
	tSpringFestival2020Other_Reward[3327307][5]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327307][5]["LogStep"] = "3[5]"
	tSpringFestival2020Other_Reward[3327307][5]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327307][5]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327307][5]["DeleteItem"][1]["Id"] = 3327307 -- 【库】春节新衣回归礼盒[属性:9]
	tSpringFestival2020Other_Reward[3327307][5]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327307][5]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327307][5]["RewardItem"][1]["Id"] = 189065 -- 暗黑魔龙战衣【炼狱版】[189065][属性:8][叠加:0][金币:0], 【表格】暗黑魔龙战衣【炼狱版】
	tSpringFestival2020Other_Reward[3327307][5]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑暗黑魔龙战衣【炼狱版】*1
	tSpringFestival2020Other_Reward[3327307][5]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327307][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327307][5]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327307][6] = {}
	-- ===春节新衣回归礼盒
	-- ===索引: tSpringFestival2020Other_Reward[3327307][6]
	-- ===删除:3327307
	-- ===LogStep:3[6] 
	tSpringFestival2020Other_Reward[3327307][6]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327307][6]["LogStep"] = "3[6]"
	tSpringFestival2020Other_Reward[3327307][6]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327307][6]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327307][6]["DeleteItem"][1]["Id"] = 3327307 -- 【库】春节新衣回归礼盒[属性:9]
	tSpringFestival2020Other_Reward[3327307][6]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327307][6]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327307][6]["RewardItem"][1]["Id"] = 195225 -- 卡牌大师【传奇版】[195225][属性:0][叠加:0][金币:0], 【表格】卡牌大师【传奇版】
	tSpringFestival2020Other_Reward[3327307][6]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑卡牌大师【传奇版】*1
	tSpringFestival2020Other_Reward[3327307][6]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327307][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327307][6]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327308] = {}
	-- ===春节萌宠回归礼盒
	-- ===索引: tSpringFestival2020Other_Reward[3327308][1]
	-- ===删除:3327308
	-- ===LogStep:4[1] 
	tSpringFestival2020Other_Reward[3327308][1] = {}
	tSpringFestival2020Other_Reward[3327308][1]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327308][1]["LogStep"] = "4[1]"
	tSpringFestival2020Other_Reward[3327308][1]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327308][1]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327308][1]["DeleteItem"][1]["Id"] = 3327308 -- 【库】春节萌宠回归礼盒[属性:9]
	tSpringFestival2020Other_Reward[3327308][1]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327308][1]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327308][1]["RewardItem"][1]["Id"] = 200494 -- 马上有人民币【马年绝版】[200494][属性:0][叠加:0][金币:100], 【表格】马上有人民币【马年绝版】
	tSpringFestival2020Other_Reward[3327308][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑马上有人民币【马年绝版】*1
	tSpringFestival2020Other_Reward[3327308][1]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327308][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327308][1]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327308][2] = {}
	-- ===春节萌宠回归礼盒
	-- ===索引: tSpringFestival2020Other_Reward[3327308][2]
	-- ===删除:3327308
	-- ===LogStep:4[2] 
	tSpringFestival2020Other_Reward[3327308][2]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327308][2]["LogStep"] = "4[2]"
	tSpringFestival2020Other_Reward[3327308][2]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327308][2]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327308][2]["DeleteItem"][1]["Id"] = 3327308 -- 【库】春节萌宠回归礼盒[属性:9]
	tSpringFestival2020Other_Reward[3327308][2]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327308][2]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327308][2]["RewardItem"][1]["Id"] = 200524 -- 至善神羚【羊年绝版】[200524][属性:0][叠加:0][金币:0], 【表格】至善神羚【羊年绝版】
	tSpringFestival2020Other_Reward[3327308][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑至善神羚【羊年绝版】*1
	tSpringFestival2020Other_Reward[3327308][2]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327308][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327308][2]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327308][3] = {}
	-- ===春节萌宠回归礼盒
	-- ===索引: tSpringFestival2020Other_Reward[3327308][3]
	-- ===删除:3327308
	-- ===LogStep:4[3] 
	tSpringFestival2020Other_Reward[3327308][3]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327308][3]["LogStep"] = "4[3]"
	tSpringFestival2020Other_Reward[3327308][3]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327308][3]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327308][3]["DeleteItem"][1]["Id"] = 3327308 -- 【库】春节萌宠回归礼盒[属性:9]
	tSpringFestival2020Other_Reward[3327308][3]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327308][3]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327308][3]["RewardItem"][1]["Id"] = 200560 -- 猴王西西[200560][属性:0][叠加:0][金币:0], 【表格】猴王西西
	tSpringFestival2020Other_Reward[3327308][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑猴王西西*1
	tSpringFestival2020Other_Reward[3327308][3]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327308][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327308][3]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327308][4] = {}
	-- ===春节萌宠回归礼盒
	-- ===索引: tSpringFestival2020Other_Reward[3327308][4]
	-- ===删除:3327308
	-- ===LogStep:4[4] 
	tSpringFestival2020Other_Reward[3327308][4]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327308][4]["LogStep"] = "4[4]"
	tSpringFestival2020Other_Reward[3327308][4]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327308][4]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327308][4]["DeleteItem"][1]["Id"] = 3327308 -- 【库】春节萌宠回归礼盒[属性:9]
	tSpringFestival2020Other_Reward[3327308][4]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327308][4]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327308][4]["RewardItem"][1]["Id"] = 200559 -- 猴王天天[200559][属性:0][叠加:0][金币:0], 【表格】猴王天天
	tSpringFestival2020Other_Reward[3327308][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑猴王天天*1
	tSpringFestival2020Other_Reward[3327308][4]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327308][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327308][4]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327308][5] = {}
	-- ===春节萌宠回归礼盒
	-- ===索引: tSpringFestival2020Other_Reward[3327308][5]
	-- ===删除:3327308
	-- ===LogStep:4[5] 
	tSpringFestival2020Other_Reward[3327308][5]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327308][5]["LogStep"] = "4[5]"
	tSpringFestival2020Other_Reward[3327308][5]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327308][5]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327308][5]["DeleteItem"][1]["Id"] = 3327308 -- 【库】春节萌宠回归礼盒[属性:9]
	tSpringFestival2020Other_Reward[3327308][5]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327308][5]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327308][5]["RewardItem"][1]["Id"] = 200592 -- 星际战鸡·终极挑战号[200592][属性:8][叠加:0][金币:0], 【表格】星际战鸡·终极挑战号
	tSpringFestival2020Other_Reward[3327308][5]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑星际战鸡·终极挑战号*1
	tSpringFestival2020Other_Reward[3327308][5]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327308][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327308][5]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327308][6] = {}
	-- ===春节萌宠回归礼盒
	-- ===索引: tSpringFestival2020Other_Reward[3327308][6]
	-- ===删除:3327308
	-- ===LogStep:4[6] 
	tSpringFestival2020Other_Reward[3327308][6]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327308][6]["LogStep"] = "4[6]"
	tSpringFestival2020Other_Reward[3327308][6]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327308][6]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327308][6]["DeleteItem"][1]["Id"] = 3327308 -- 【库】春节萌宠回归礼盒[属性:9]
	tSpringFestival2020Other_Reward[3327308][6]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327308][6]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327308][6]["RewardItem"][1]["Id"] = 200601 -- 星际战鸡·辉煌勇气号[200601][属性:0][叠加:0][金币:0], 【表格】星际战鸡·辉煌勇气号
	tSpringFestival2020Other_Reward[3327308][6]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑星际战鸡·辉煌勇气号*1
	tSpringFestival2020Other_Reward[3327308][6]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327308][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327308][6]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327308][7] = {}
	-- ===春节萌宠回归礼盒
	-- ===索引: tSpringFestival2020Other_Reward[3327308][7]
	-- ===删除:3327308
	-- ===LogStep:4[7] 
	tSpringFestival2020Other_Reward[3327308][7]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327308][7]["LogStep"] = "4[7]"
	tSpringFestival2020Other_Reward[3327308][7]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327308][7]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327308][7]["DeleteItem"][1]["Id"] = 3327308 -- 【库】春节萌宠回归礼盒[属性:9]
	tSpringFestival2020Other_Reward[3327308][7]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327308][7]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327308][7]["RewardItem"][1]["Id"] = 200621 -- 萨摩王子【炫彩版】[200621][属性:0][叠加:0][金币:0], 【表格】萨摩王子【炫彩】
	tSpringFestival2020Other_Reward[3327308][7]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑萨摩王子【炫彩版】*1
	tSpringFestival2020Other_Reward[3327308][7]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327308][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327308][7]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327308][8] = {}
	-- ===春节萌宠回归礼盒
	-- ===索引: tSpringFestival2020Other_Reward[3327308][8]
	-- ===删除:3327308
	-- ===LogStep:4[8] 
	tSpringFestival2020Other_Reward[3327308][8]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327308][8]["LogStep"] = "4[8]"
	tSpringFestival2020Other_Reward[3327308][8]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327308][8]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327308][8]["DeleteItem"][1]["Id"] = 3327308 -- 【库】春节萌宠回归礼盒[属性:9]
	tSpringFestival2020Other_Reward[3327308][8]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327308][8]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327308][8]["RewardItem"][1]["Id"] = 200623 -- 金毛大帅【炫彩版】[200623][属性:0][叠加:0][金币:0], 【表格】金毛大帅【炫彩】
	tSpringFestival2020Other_Reward[3327308][8]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑金毛大帅【炫彩版】*1
	tSpringFestival2020Other_Reward[3327308][8]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327308][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327308][8]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327309] = {}
	-- ===新春有礼大福袋
	-- ===索引: tSpringFestival2020Other_Reward[3327309]
	-- ===删除:3327309
	tSpringFestival2020Other_Reward[3327309]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tSpringFestival2020Other_Reward[3327309]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327309]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327309]["DeleteItem"][1]["Id"] = 3327309 -- 【库】新春有礼大福袋[属性:9]
	tSpringFestival2020Other_Reward[3327309]["LogId"] = 12001796
	-- 未鉴定3级年兽蛋-- 【必给】
	tSpringFestival2020Other_Reward[3327309][1] = {}
	tSpringFestival2020Other_Reward[3327309][1]["RandomItemChanceType"] = 1
	tSpringFestival2020Other_Reward[3327309][1]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327309][1]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327309][1]["RewardItem"][1]["Id"] = 3327298 -- 年兽蛋（三阶）[3327298][属性:8][叠加:0][金币:0], 【表格】未鉴定3级年兽蛋
	tSpringFestival2020Other_Reward[3327309][1]["RewardItem"][1]["Attr"] = "0 1" -- 年兽蛋（三阶）*1
	tSpringFestival2020Other_Reward[3327309][1]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327309][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327309][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000赠点红包-- 【必给】
	tSpringFestival2020Other_Reward[3327309][2] = {}
	tSpringFestival2020Other_Reward[3327309][2]["RandomItemChanceType"] = 1
	tSpringFestival2020Other_Reward[3327309][2]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327309][2]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327309][2]["RewardItem"][1]["Id"] = 3327312 -- 1000天石（赠）鼠年红包[3327312][属性:9][叠加:10000][金币:0], 【表格】1000赠点红包
	tSpringFestival2020Other_Reward[3327309][2]["RewardItem"][1]["Attr"] = "0 1" -- 1000天石（赠）鼠年红包*1
	tSpringFestival2020Other_Reward[3327309][2]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327309][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327309][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 晶莹星陨石 - 8%
	tSpringFestival2020Other_Reward[3327309][3] = {}
	tSpringFestival2020Other_Reward[3327309][3]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327309][3]["ItemChance"] = 800
	tSpringFestival2020Other_Reward[3327309][3]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327309][3]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327309][3]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tSpringFestival2020Other_Reward[3327309][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tSpringFestival2020Other_Reward[3327309][3]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327309][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327309][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 璀璨星陨石 - 5%
	tSpringFestival2020Other_Reward[3327309][4] = {}
	tSpringFestival2020Other_Reward[3327309][4]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327309][4]["ItemChance"] = 500
	tSpringFestival2020Other_Reward[3327309][4]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327309][4]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327309][4]["RewardItem"][1]["Id"] = 3009003 -- 璀璨星陨石[3009003][属性:9][叠加:0][金币:0], 【表格】璀璨星陨石
	tSpringFestival2020Other_Reward[3327309][4]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的璀璨星陨石*1
	tSpringFestival2020Other_Reward[3327309][4]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327309][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327309][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+5 - 8%
	tSpringFestival2020Other_Reward[3327309][5] = {}
	tSpringFestival2020Other_Reward[3327309][5]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327309][5]["ItemChance"] = 800
	tSpringFestival2020Other_Reward[3327309][5]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327309][5]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327309][5]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tSpringFestival2020Other_Reward[3327309][5]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的+5赤炼石*1
	tSpringFestival2020Other_Reward[3327309][5]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327309][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327309][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+6 - 12%
	tSpringFestival2020Other_Reward[3327309][6] = {}
	tSpringFestival2020Other_Reward[3327309][6]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327309][6]["ItemChance"] = 1200
	tSpringFestival2020Other_Reward[3327309][6]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327309][6]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327309][6]["RewardItem"][1]["Id"] = 730006 -- +6赤炼石[730006][属性:0][叠加:0][金币:0], 【表格】赤炼石+6
	tSpringFestival2020Other_Reward[3327309][6]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的+6赤炼石*1
	tSpringFestival2020Other_Reward[3327309][6]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327309][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327309][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+7 - 2%
	tSpringFestival2020Other_Reward[3327309][7] = {}
	tSpringFestival2020Other_Reward[3327309][7]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327309][7]["ItemChance"] = 200
	tSpringFestival2020Other_Reward[3327309][7]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327309][7]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327309][7]["RewardItem"][1]["Id"] = 730007 -- +7赤炼石[730007][属性:0][叠加:0][金币:0], 【表格】赤炼石+7
	tSpringFestival2020Other_Reward[3327309][7]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的+7赤炼石*1
	tSpringFestival2020Other_Reward[3327309][7]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327309][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327309][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 10000气力值 - 4%
	tSpringFestival2020Other_Reward[3327309][8] = {}
	tSpringFestival2020Other_Reward[3327309][8]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327309][8]["ItemChance"] = 400
	tSpringFestival2020Other_Reward[3327309][8]["RewardStrengthValue"] = {}
	tSpringFestival2020Other_Reward[3327309][8]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力值
	tSpringFestival2020Other_Reward[3327309][8]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327309][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327309][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 30000气力值 - 5.7%
	tSpringFestival2020Other_Reward[3327309][9] = {}
	tSpringFestival2020Other_Reward[3327309][9]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327309][9]["ItemChance"] = 570
	tSpringFestival2020Other_Reward[3327309][9]["RewardStrengthValue"] = {}
	tSpringFestival2020Other_Reward[3327309][9]["RewardStrengthValue"]["Value"] = 30000 -- 气力值, 【需求】30000气力值
	tSpringFestival2020Other_Reward[3327309][9]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327309][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327309][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 固化石 - 5%
	tSpringFestival2020Other_Reward[3327309][10] = {}
	tSpringFestival2020Other_Reward[3327309][10]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327309][10]["ItemChance"] = 500
	tSpringFestival2020Other_Reward[3327309][10]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327309][10]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327309][10]["RewardItem"][1]["Id"] = 723694 -- 固化石[723694][属性:0][叠加:0][金币:0], 【表格】固化石
	tSpringFestival2020Other_Reward[3327309][10]["RewardItem"][1]["Attr"] = "0 1" -- 固化石*1
	tSpringFestival2020Other_Reward[3327309][10]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327309][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327309][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 超大固化石 - 0.3%
	tSpringFestival2020Other_Reward[3327309][11] = {}
	tSpringFestival2020Other_Reward[3327309][11]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327309][11]["ItemChance"] = 30
	tSpringFestival2020Other_Reward[3327309][11]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327309][11]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327309][11]["RewardItem"][1]["Id"] = 723695 -- 超大固化石[723695][属性:0][叠加:0][金币:0], 【表格】超大固化石
	tSpringFestival2020Other_Reward[3327309][11]["RewardItem"][1]["Attr"] = "0 1" -- 超大固化石*1
	tSpringFestival2020Other_Reward[3327309][11]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327309][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327309][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 999朵红玫瑰 - 1%
	tSpringFestival2020Other_Reward[3327309][12] = {}
	tSpringFestival2020Other_Reward[3327309][12]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327309][12]["ItemChance"] = 100
	tSpringFestival2020Other_Reward[3327309][12]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327309][12]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327309][12]["RewardItem"][1]["Id"] = 751999 -- 999朵红玫瑰[751999][属性:8][叠加:0][金币:0], 【表格】999朵红玫瑰
	tSpringFestival2020Other_Reward[3327309][12]["RewardItem"][1]["Attr"] = "0 1" -- 999朵红玫瑰*1
	tSpringFestival2020Other_Reward[3327309][12]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327309][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327309][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 999朵百合花 - 0.5%
	tSpringFestival2020Other_Reward[3327309][13] = {}
	tSpringFestival2020Other_Reward[3327309][13]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327309][13]["ItemChance"] = 50
	tSpringFestival2020Other_Reward[3327309][13]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327309][13]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327309][13]["RewardItem"][1]["Id"] = 752999 -- 999朵百合花[752999][属性:8][叠加:0][金币:0], 【表格】999朵百合花
	tSpringFestival2020Other_Reward[3327309][13]["RewardItem"][1]["Attr"] = "0 1" -- 999朵百合花*1
	tSpringFestival2020Other_Reward[3327309][13]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327309][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327309][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 999朵兰花 - 1.5%
	tSpringFestival2020Other_Reward[3327309][14] = {}
	tSpringFestival2020Other_Reward[3327309][14]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327309][14]["ItemChance"] = 150
	tSpringFestival2020Other_Reward[3327309][14]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327309][14]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327309][14]["RewardItem"][1]["Id"] = 753999 -- 999朵兰花[753999][属性:8][叠加:0][金币:0], 【表格】999朵兰花
	tSpringFestival2020Other_Reward[3327309][14]["RewardItem"][1]["Attr"] = "0 1" -- 999朵兰花*1
	tSpringFestival2020Other_Reward[3327309][14]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327309][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327309][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 999个飞吻 - 0.5%
	tSpringFestival2020Other_Reward[3327309][15] = {}
	tSpringFestival2020Other_Reward[3327309][15]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327309][15]["ItemChance"] = 50
	tSpringFestival2020Other_Reward[3327309][15]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327309][15]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327309][15]["RewardItem"][1]["Id"] = 755999 -- 999个飞吻[755999][属性:8][叠加:0][金币:0], 【表格】999个飞吻
	tSpringFestival2020Other_Reward[3327309][15]["RewardItem"][1]["Attr"] = "0 1" -- 999个飞吻*1
	tSpringFestival2020Other_Reward[3327309][15]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327309][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327309][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 999封情书 - 0.5%
	tSpringFestival2020Other_Reward[3327309][16] = {}
	tSpringFestival2020Other_Reward[3327309][16]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327309][16]["ItemChance"] = 50
	tSpringFestival2020Other_Reward[3327309][16]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327309][16]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327309][16]["RewardItem"][1]["Id"] = 756999 -- 999封情书[756999][属性:8][叠加:0][金币:0], 【表格】999封情书
	tSpringFestival2020Other_Reward[3327309][16]["RewardItem"][1]["Attr"] = "0 1" -- 999封情书*1
	tSpringFestival2020Other_Reward[3327309][16]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327309][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327309][16]["RewardEffect"]["Effect"] = "angelwing"
	-- 5000修为值 - 8%
	tSpringFestival2020Other_Reward[3327309][17] = {}
	tSpringFestival2020Other_Reward[3327309][17]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327309][17]["ItemChance"] = 800
	tSpringFestival2020Other_Reward[3327309][17]["RewardRepairValue"] = {}
	tSpringFestival2020Other_Reward[3327309][17]["RewardRepairValue"]["Value"] = 5000 -- 修为值, 【需求】5000修为值
	tSpringFestival2020Other_Reward[3327309][17]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327309][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327309][17]["RewardEffect"]["Effect"] = "angelwing"
	-- 10000修为值 - 15%
	tSpringFestival2020Other_Reward[3327309][18] = {}
	tSpringFestival2020Other_Reward[3327309][18]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327309][18]["ItemChance"] = 1500
	tSpringFestival2020Other_Reward[3327309][18]["RewardRepairValue"] = {}
	tSpringFestival2020Other_Reward[3327309][18]["RewardRepairValue"]["Value"] = 10000 -- 修为值, 【需求】10000修为值
	tSpringFestival2020Other_Reward[3327309][18]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327309][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327309][18]["RewardEffect"]["Effect"] = "angelwing"
	-- 30000修为值 - 6%
	tSpringFestival2020Other_Reward[3327309][19] = {}
	tSpringFestival2020Other_Reward[3327309][19]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327309][19]["ItemChance"] = 600
	tSpringFestival2020Other_Reward[3327309][19]["RewardRepairValue"] = {}
	tSpringFestival2020Other_Reward[3327309][19]["RewardRepairValue"]["Value"] = 30000 -- 修为值, 【需求】30000修为值
	tSpringFestival2020Other_Reward[3327309][19]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327309][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327309][19]["RewardEffect"]["Effect"] = "angelwing"
	-- 天灵果 - 7.5%
	tSpringFestival2020Other_Reward[3327309][20] = {}
	tSpringFestival2020Other_Reward[3327309][20]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327309][20]["ItemChance"] = 750
	tSpringFestival2020Other_Reward[3327309][20]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327309][20]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327309][20]["RewardItem"][1]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:10000][金币:0], 【表格】天灵果
	tSpringFestival2020Other_Reward[3327309][20]["RewardItem"][1]["Attr"] = "0 1" -- 天灵果*1
	tSpringFestival2020Other_Reward[3327309][20]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327309][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327309][20]["RewardEffect"]["Effect"] = "angelwing"
	-- 血菩提 - 8%
	tSpringFestival2020Other_Reward[3327309][21] = {}
	tSpringFestival2020Other_Reward[3327309][21]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327309][21]["ItemChance"] = 800
	tSpringFestival2020Other_Reward[3327309][21]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327309][21]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327309][21]["RewardItem"][1]["Id"] = 3009104 -- 血菩提[3009104][属性:9][叠加:10000][金币:0], 【表格】血菩提
	tSpringFestival2020Other_Reward[3327309][21]["RewardItem"][1]["Attr"] = "0 1" -- 血菩提*1
	tSpringFestival2020Other_Reward[3327309][21]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327309][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327309][21]["RewardEffect"]["Effect"] = "angelwing"
	-- 光效版角色外套 - 0.5%
	tSpringFestival2020Other_Reward[3327309][22] = {}
	tSpringFestival2020Other_Reward[3327309][22]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327309][22]["ItemChance"] = 50
	tSpringFestival2020Other_Reward[3327309][22]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327309][22]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327309][22]["RewardItem"][1]["Id"] = 196005 -- 新年光效时装外套 [196005][属性:0][叠加:0][金币:0], 【表格】光效版角色外套
	tSpringFestival2020Other_Reward[3327309][22]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑新年光效时装外套 *1
	tSpringFestival2020Other_Reward[3327309][22]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327309][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327309][22]["RewardEffect"]["Effect"] = "angelwing"
	-- 光效版坐骑碎片 - 1%
	tSpringFestival2020Other_Reward[3327309][23] = {}
	tSpringFestival2020Other_Reward[3327309][23]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327309][23]["ItemChance"] = 100
	tSpringFestival2020Other_Reward[3327309][23]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327309][23]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327309][23]["RewardItem"][1]["Id"] = 3327314 -- 【新年光效坐骑外套名】碎片[3327314][属性:9][叠加:10000][金币:0], 【表格】【新年光效坐骑外套名】碎片*5
	tSpringFestival2020Other_Reward[3327309][23]["RewardItem"][1]["Attr"] = "0 5" -- 【新年光效坐骑外套名】碎片*5
	tSpringFestival2020Other_Reward[3327309][23]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327309][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327309][23]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327313] = {}
	-- ===【新年光效时装外套名】碎片
	-- ===索引: tSpringFestival2020Other_Reward[3327313]
	-- ===删除:3327313,25
	-- ===LogStep:5[1] 
	tSpringFestival2020Other_Reward[3327313]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327313]["LogStep"] = "5[1]"
	tSpringFestival2020Other_Reward[3327313]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327313]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327313]["DeleteItem"][1]["Id"] = 3327313 -- 【库】【新年光效时装外套名】碎片[属性:9]
	tSpringFestival2020Other_Reward[3327313]["DeleteItem"][1]["ItemNum"] = 25
	tSpringFestival2020Other_Reward[3327313]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327313]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327313]["RewardItem"][1]["Id"] = 196005 -- 新年光效时装外套 [196005][属性:0][叠加:0][金币:0], 【表格】新年光效时装外套
	tSpringFestival2020Other_Reward[3327313]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑新年光效时装外套 *1
	tSpringFestival2020Other_Reward[3327313]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327313]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327313]["RewardEffect"]["Effect"] = "angelwing"


	-- ===【新年光效坐骑外套名】碎片直接合成
	-- ===索引: tSpringFestival2020Other_Reward[3327314][1]
	-- ===删除:3327314,50
	-- ===LogStep:5[2] 
	tSpringFestival2020Other_Reward[3327314] = {}
	tSpringFestival2020Other_Reward[3327314][1] = {}
	tSpringFestival2020Other_Reward[3327314][1]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327314][1]["LogStep"] = "5[2]"
	tSpringFestival2020Other_Reward[3327314][1]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327314][1]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327314][1]["DeleteItem"][1]["Id"] = 3327314 -- 【库】【新年光效坐骑外套名】碎片[属性:9]
	tSpringFestival2020Other_Reward[3327314][1]["DeleteItem"][1]["ItemNum"] = 50
	tSpringFestival2020Other_Reward[3327314][1]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327314][1]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327314][1]["RewardItem"][1]["Id"] = 200663 -- 新年光效坐骑外套1[200663][属性:0][叠加:0][金币:0], 【表格】新年光效坐骑外套1
	tSpringFestival2020Other_Reward[3327314][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑新年光效坐骑外套1*1
	tSpringFestival2020Other_Reward[3327314][1]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327314][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327314][1]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327314][2] = {}
	-- ===【新年光效坐骑外套名】碎片和无光效外套合成
	-- ===索引: tSpringFestival2020Other_Reward[3327314][2]
	-- ===删除:3327314,30
	-- ===删除:200665,1
	-- ===LogStep:5[3] 
	tSpringFestival2020Other_Reward[3327314][2]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327314][2]["LogStep"] = "5[3]"
	tSpringFestival2020Other_Reward[3327314][2]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327314][2]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327314][2]["DeleteItem"][1]["Id"] = 3327314 -- 【库】【新年光效坐骑外套名】碎片[属性:9]
	tSpringFestival2020Other_Reward[3327314][2]["DeleteItem"][1]["ItemNum"] = 30
	tSpringFestival2020Other_Reward[3327314][2]["DeleteItem"][2] = {}
	tSpringFestival2020Other_Reward[3327314][2]["DeleteItem"][2]["Id"] = 200665 -- 【库】新年无光效坐骑外套[属性:0]
	tSpringFestival2020Other_Reward[3327314][2]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327314][2]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327314][2]["RewardItem"][1]["Id"] = 200669 -- 新年光效坐骑外套1[200663][属性:0][叠加:0][金币:0], 【表格】金麟舞狮·辉煌
	tSpringFestival2020Other_Reward[3327314][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑金麟舞狮·辉煌(赠)*1
	tSpringFestival2020Other_Reward[3327314][2]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327314][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327314][2]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327373] = {}
	-- ===春节财神宝盒灵珠暗格
	-- ===索引: tSpringFestival2020Other_Reward[3327373][1][1]
	-- ===删除:3327373,1
	-- ===3327374,1
	-- ===LogStep:6[1][1]
	tSpringFestival2020Other_Reward[3327373][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tSpringFestival2020Other_Reward[3327373][1][1]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][1]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][1]["DeleteItem"][1]["Id"] = 3327373 -- 【库】春节财神宝盒[属性:9]
	tSpringFestival2020Other_Reward[3327373][1][1]["DeleteItem"][2] = {}
	tSpringFestival2020Other_Reward[3327373][1][1]["DeleteItem"][2]["Id"] = 3327374 -- 【库】新春秘钥[属性:9]
	tSpringFestival2020Other_Reward[3327373][1][1]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327373][1][1]["LogStep"] = "6[1][1]"
	-- 12阶灵珠 - 0.1%
	tSpringFestival2020Other_Reward[3327373][1][1][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][1][1]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][1][1][1]["ItemChance"] = 10
	tSpringFestival2020Other_Reward[3327373][1][1][1]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][1][1]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][1][1]["RewardItem"][1]["Id"] = 4200012 -- 12阶灵珠[4200012][属性:72][叠加:99][金币:0], 【表格】12阶灵珠
	tSpringFestival2020Other_Reward[3327373][1][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 12阶灵珠*1
	tSpringFestival2020Other_Reward[3327373][1][1][1]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tSpringFestival2020Other_Reward[3327373][1][1][1]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][1][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][1][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 10阶灵珠 - 1%
	tSpringFestival2020Other_Reward[3327373][1][1][2] = {}
	tSpringFestival2020Other_Reward[3327373][1][1][2]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][1][1][2]["ItemChance"] = 100
	tSpringFestival2020Other_Reward[3327373][1][1][2]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][1][2]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][1][2]["RewardItem"][1]["Id"] = 4200010 -- 10阶灵珠[4200010][属性:72][叠加:99][金币:0], 【表格】10阶灵珠
	tSpringFestival2020Other_Reward[3327373][1][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 10阶灵珠*1
	tSpringFestival2020Other_Reward[3327373][1][1][2]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tSpringFestival2020Other_Reward[3327373][1][1][2]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][1][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][1][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 8阶灵珠 - 11%
	tSpringFestival2020Other_Reward[3327373][1][1][3] = {}
	tSpringFestival2020Other_Reward[3327373][1][1][3]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][1][1][3]["ItemChance"] = 1100
	tSpringFestival2020Other_Reward[3327373][1][1][3]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][1][3]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][1][3]["RewardItem"][1]["Id"] = 4200008 -- 8阶灵珠[4200008][属性:72][叠加:99][金币:0], 【表格】8阶灵珠
	tSpringFestival2020Other_Reward[3327373][1][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 8阶灵珠*1
	tSpringFestival2020Other_Reward[3327373][1][1][3]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tSpringFestival2020Other_Reward[3327373][1][1][3]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][1][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][1][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 7阶灵珠 - 24%
	tSpringFestival2020Other_Reward[3327373][1][1][4] = {}
	tSpringFestival2020Other_Reward[3327373][1][1][4]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][1][1][4]["ItemChance"] = 2400
	tSpringFestival2020Other_Reward[3327373][1][1][4]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][1][4]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][1][4]["RewardItem"][1]["Id"] = 4200007 -- 7阶灵珠[4200007][属性:72][叠加:99][金币:0], 【表格】7阶灵珠
	tSpringFestival2020Other_Reward[3327373][1][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 7阶灵珠*1
	tSpringFestival2020Other_Reward[3327373][1][1][4]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tSpringFestival2020Other_Reward[3327373][1][1][4]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][1][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][1][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 6阶灵珠 - 45%
	tSpringFestival2020Other_Reward[3327373][1][1][5] = {}
	tSpringFestival2020Other_Reward[3327373][1][1][5]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][1][1][5]["ItemChance"] = 4500
	tSpringFestival2020Other_Reward[3327373][1][1][5]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][1][5]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][1][5]["RewardItem"][1]["Id"] = 4200006 -- 6阶灵珠[4200006][属性:72][叠加:99][金币:0], 【表格】6阶灵珠
	tSpringFestival2020Other_Reward[3327373][1][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 6阶灵珠*1
	tSpringFestival2020Other_Reward[3327373][1][1][5]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tSpringFestival2020Other_Reward[3327373][1][1][5]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][1][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][1][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 5阶灵珠 - 18.9%
	tSpringFestival2020Other_Reward[3327373][1][1][6] = {}
	tSpringFestival2020Other_Reward[3327373][1][1][6]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][1][1][6]["ItemChance"] = 1890
	tSpringFestival2020Other_Reward[3327373][1][1][6]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][1][6]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][1][6]["RewardItem"][1]["Id"] = 4200005 -- 5阶灵珠[4200005][属性:72][叠加:99][金币:0], 【表格】5阶灵珠
	tSpringFestival2020Other_Reward[3327373][1][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 5阶灵珠*1
	tSpringFestival2020Other_Reward[3327373][1][1][6]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tSpringFestival2020Other_Reward[3327373][1][1][6]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][1][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][1][1][6]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327373][1][2] = {}
	-- ===春节财神宝盒珍宝暗格
	-- ===索引: tSpringFestival2020Other_Reward[3327373][1][2]
	-- ===删除:3327373,1
	-- ===3327374,1
	-- ===LogStep:6[1][2]
	tSpringFestival2020Other_Reward[3327373][1][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tSpringFestival2020Other_Reward[3327373][1][2]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][2]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][2]["DeleteItem"][1]["Id"] = 3327373 -- 【库】春节财神宝盒[属性:9]
	tSpringFestival2020Other_Reward[3327373][1][2]["DeleteItem"][2] = {}
	tSpringFestival2020Other_Reward[3327373][1][2]["DeleteItem"][2]["Id"] = 3327374 -- 【库】新春秘钥[属性:9]
	tSpringFestival2020Other_Reward[3327373][1][2]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327373][1][2]["LogStep"] = "6[1][2]"
	-- 人参果 - 10%
	tSpringFestival2020Other_Reward[3327373][1][2][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][1]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][1][2][1]["ItemChance"] = 1000
	tSpringFestival2020Other_Reward[3327373][1][2][1]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][1]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][1]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tSpringFestival2020Other_Reward[3327373][1][2][1]["RewardItem"][1]["Attr"] = "0 30" -- 人参果*30（[错误]物品数量超10个）
	tSpringFestival2020Other_Reward[3327373][1][2][1]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][1][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 47%
	tSpringFestival2020Other_Reward[3327373][1][2][2] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][2]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][1][2][2]["ItemChance"] = 4700
	tSpringFestival2020Other_Reward[3327373][1][2][2]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][2]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][2]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tSpringFestival2020Other_Reward[3327373][1][2][2]["RewardItem"][1]["Attr"] = "0 100 3" -- 万能神纹精粹*100
	tSpringFestival2020Other_Reward[3327373][1][2][2]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][1][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+4 - 10%
	tSpringFestival2020Other_Reward[3327373][1][2][3] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][3]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][1][2][3]["ItemChance"] = 1000
	tSpringFestival2020Other_Reward[3327373][1][2][3]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][3]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][3]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tSpringFestival2020Other_Reward[3327373][1][2][3]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的+4赤炼石*1
	tSpringFestival2020Other_Reward[3327373][1][2][3]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][1][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+5 - 20%
	tSpringFestival2020Other_Reward[3327373][1][2][4] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][4]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][1][2][4]["ItemChance"] = 2000
	tSpringFestival2020Other_Reward[3327373][1][2][4]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][4]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][4]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tSpringFestival2020Other_Reward[3327373][1][2][4]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的+5赤炼石*1
	tSpringFestival2020Other_Reward[3327373][1][2][4]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][1][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 小固化石 - 5%
	tSpringFestival2020Other_Reward[3327373][1][2][5] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][5]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][1][2][5]["ItemChance"] = 500
	tSpringFestival2020Other_Reward[3327373][1][2][5]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][5]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][5]["RewardItem"][1]["Id"] = 723694 -- 固化石[723694][属性:0][叠加:0][金币:0], 【表格】小固化石
	tSpringFestival2020Other_Reward[3327373][1][2][5]["RewardItem"][1]["Attr"] = "0 1" -- 固化石*1
	tSpringFestival2020Other_Reward[3327373][1][2][5]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][1][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 黄色神纹随机包 - 5%
	tSpringFestival2020Other_Reward[3327373][1][2][6] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][6]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][1][2][6]["ItemChance"] = 500
	tSpringFestival2020Other_Reward[3327373][1][2][6]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][6]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][6]["RewardItem"][1]["Id"] = 3306507 -- 黄色神纹随机包[3306507][属性:0][叠加:10000][金币:0], 【表格】黄色神纹随机包
	tSpringFestival2020Other_Reward[3327373][1][2][6]["RewardItem"][1]["Attr"] = "0 1" -- 黄色神纹随机包*1
	tSpringFestival2020Other_Reward[3327373][1][2][6]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][1][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+6 - 1%
	tSpringFestival2020Other_Reward[3327373][1][2][7] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][7]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][1][2][7]["ItemChance"] = 100
	tSpringFestival2020Other_Reward[3327373][1][2][7]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][7]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][7]["RewardItem"][1]["Id"] = 730006 -- +6赤炼石[730006][属性:0][叠加:0][金币:0], 【表格】赤炼石+6
	tSpringFestival2020Other_Reward[3327373][1][2][7]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的+6赤炼石*1
	tSpringFestival2020Other_Reward[3327373][1][2][7]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][1][2][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 变幻骑宠礼包+6 - 1%
	tSpringFestival2020Other_Reward[3327373][1][2][8] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][8]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][1][2][8]["ItemChance"] = 100
	tSpringFestival2020Other_Reward[3327373][1][2][8]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][8]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][8]["RewardItem"][1]["Id"] = 720049 -- +6变幻骑宠礼包[720049][属性:9][叠加:0][金币:0], 【表格】变幻骑宠礼包+6
	tSpringFestival2020Other_Reward[3327373][1][2][8]["RewardItem"][1]["Attr"] = "0 1" -- +6变幻骑宠礼包*1
	tSpringFestival2020Other_Reward[3327373][1][2][8]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][1][2][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 金钢坚钻 - 0.7%
	tSpringFestival2020Other_Reward[3327373][1][2][9] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][9]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][1][2][9]["ItemChance"] = 70
	tSpringFestival2020Other_Reward[3327373][1][2][9]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][9]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][9]["RewardItem"][1]["Id"] = 1200005 -- 金钢坚钻[1200005][属性:0][叠加:0][金币:0], 【表格】金钢坚钻
	tSpringFestival2020Other_Reward[3327373][1][2][9]["RewardItem"][1]["Attr"] = "0 1" -- 金钢坚钻*1
	tSpringFestival2020Other_Reward[3327373][1][2][9]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][1][2][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 超大固化石 - 0.2%
	tSpringFestival2020Other_Reward[3327373][1][2][10] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][10]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][1][2][10]["ItemChance"] = 20
	tSpringFestival2020Other_Reward[3327373][1][2][10]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][10]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][10]["RewardItem"][1]["Id"] = 723695 -- 超大固化石[723695][属性:0][叠加:0][金币:0], 【表格】超大固化石
	tSpringFestival2020Other_Reward[3327373][1][2][10]["RewardItem"][1]["Attr"] = "0 1 3" -- 超大固化石（赠）*1
	tSpringFestival2020Other_Reward[3327373][1][2][10]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][1][2][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 稀有黄色神纹随机包 - 0.1%
	tSpringFestival2020Other_Reward[3327373][1][2][11] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][11]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][1][2][11]["ItemChance"] = 10
	tSpringFestival2020Other_Reward[3327373][1][2][11]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][11]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][11]["RewardItem"][1]["Id"] = 3319013 -- (+1)稀有黄色神纹随机包(赠)[3319013][属性:9][叠加:0][金币:0], 【表格】稀有黄色神纹随机包
	tSpringFestival2020Other_Reward[3327373][1][2][11]["RewardItem"][1]["Attr"] = "0 1" -- (+1)稀有黄色神纹随机包(赠)*1
	tSpringFestival2020Other_Reward[3327373][1][2][11]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][1][2][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][1][2][11]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327373][1][3] = {}
	-- ===春节财神宝盒外套暗格
	-- ===索引: tSpringFestival2020Other_Reward[3327373][1][3]
	-- ===删除:3327373,1
	-- ===3327374,1
	-- ===LogStep:6[1][3]
	tSpringFestival2020Other_Reward[3327373][1][3]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tSpringFestival2020Other_Reward[3327373][1][3]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][3]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][3]["DeleteItem"][1]["Id"] = 3327373 -- 【库】春节财神宝盒[属性:9]
	tSpringFestival2020Other_Reward[3327373][1][3]["DeleteItem"][2] = {}
	tSpringFestival2020Other_Reward[3327373][1][3]["DeleteItem"][2]["Id"] = 3327374 -- 【库】新春秘钥[属性:9]
	tSpringFestival2020Other_Reward[3327373][1][3]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327373][1][3]["LogStep"] = "6[1][3]"
	-- 新年300赠点红包 - 24%
	tSpringFestival2020Other_Reward[3327373][1][3][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][1]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][1][3][1]["ItemChance"] = 2400
	tSpringFestival2020Other_Reward[3327373][1][3][1]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][1]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][1]["RewardItem"][1]["Id"] = 3327311 -- 300天石（赠）鼠年红包[3327311][属性:9][叠加:10000][金币:0], 【表格】新年300赠点红包
	tSpringFestival2020Other_Reward[3327373][1][3][1]["RewardItem"][1]["Attr"] = "0 1" -- 300天石（赠）鼠年红包*1
	tSpringFestival2020Other_Reward[3327373][1][3][1]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][1][3][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 新年300赠点红包 - 45%
	tSpringFestival2020Other_Reward[3327373][1][3][2] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][2]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][1][3][2]["ItemChance"] = 4500
	tSpringFestival2020Other_Reward[3327373][1][3][2]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][2]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][2]["RewardItem"][1]["Id"] = 3327311 -- 300天石（赠）鼠年红包[3327311][属性:9][叠加:10000][金币:0], 【表格】新年300赠点红包
	tSpringFestival2020Other_Reward[3327373][1][3][2]["RewardItem"][1]["Attr"] = "0 2" -- 300天石（赠）鼠年红包*2
	tSpringFestival2020Other_Reward[3327373][1][3][2]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][1][3][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 新年1000赠点红包 - 23%
	tSpringFestival2020Other_Reward[3327373][1][3][3] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][3]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][1][3][3]["ItemChance"] = 2300
	tSpringFestival2020Other_Reward[3327373][1][3][3]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][3]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][3]["RewardItem"][1]["Id"] = 3327312 -- 1000天石（赠）鼠年红包[3327312][属性:9][叠加:10000][金币:0], 【表格】新年1000赠点红包
	tSpringFestival2020Other_Reward[3327373][1][3][3]["RewardItem"][1]["Attr"] = "0 1" -- 1000天石（赠）鼠年红包*1
	tSpringFestival2020Other_Reward[3327373][1][3][3]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][1][3][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 春节光效人物外套碎片 - 2%
	tSpringFestival2020Other_Reward[3327373][1][3][4] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][4]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][1][3][4]["ItemChance"] = 200
	tSpringFestival2020Other_Reward[3327373][1][3][4]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][4]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][4]["RewardItem"][1]["Id"] = 3327313 -- 【新年光效时装外套名】碎片[3327313][属性:9][叠加:10000][金币:0], 【表格】春节光效人物外套碎片
	tSpringFestival2020Other_Reward[3327373][1][3][4]["RewardItem"][1]["Attr"] = "0 1" -- 【新年光效时装外套名】碎片*1
	tSpringFestival2020Other_Reward[3327373][1][3][4]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][1][3][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 春节光效坐骑外套碎片 - 2%
	tSpringFestival2020Other_Reward[3327373][1][3][5] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][5]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][1][3][5]["ItemChance"] = 200
	tSpringFestival2020Other_Reward[3327373][1][3][5]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][5]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][5]["RewardItem"][1]["Id"] = 3327314 -- 【新年光效坐骑外套名】碎片[3327314][属性:9][叠加:10000][金币:0], 【表格】春节光效坐骑外套碎片
	tSpringFestival2020Other_Reward[3327373][1][3][5]["RewardItem"][1]["Attr"] = "0 1" -- 【新年光效坐骑外套名】碎片*1
	tSpringFestival2020Other_Reward[3327373][1][3][5]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][1][3][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 春节光效人物外套碎片 - 0.5%
	tSpringFestival2020Other_Reward[3327373][1][3][6] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][6]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][1][3][6]["ItemChance"] = 50
	tSpringFestival2020Other_Reward[3327373][1][3][6]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][6]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][6]["RewardItem"][1]["Id"] = 3327313 -- 【新年光效时装外套名】碎片[3327313][属性:9][叠加:10000][金币:0], 【表格】春节光效人物外套碎片
	tSpringFestival2020Other_Reward[3327373][1][3][6]["RewardItem"][1]["Attr"] = "0 3" -- 【新年光效时装外套名】碎片*3
	tSpringFestival2020Other_Reward[3327373][1][3][6]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][1][3][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 春节光效坐骑外套碎片 - 0.5%
	tSpringFestival2020Other_Reward[3327373][1][3][7] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][7]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][1][3][7]["ItemChance"] = 50
	tSpringFestival2020Other_Reward[3327373][1][3][7]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][7]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][7]["RewardItem"][1]["Id"] = 3327314 -- 【新年光效坐骑外套名】碎片[3327314][属性:9][叠加:10000][金币:0], 【表格】春节光效坐骑外套碎片
	tSpringFestival2020Other_Reward[3327373][1][3][7]["RewardItem"][1]["Attr"] = "0 3" -- 【新年光效坐骑外套名】碎片*3
	tSpringFestival2020Other_Reward[3327373][1][3][7]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][1][3][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 春节福袋 - 2.98%
	tSpringFestival2020Other_Reward[3327373][1][3][8] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][8]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][1][3][8]["ItemChance"] = 298
	tSpringFestival2020Other_Reward[3327373][1][3][8]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][8]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][8]["RewardItem"][1]["Id"] = 3327309 -- 新春有礼大福袋[3327309][属性:9][叠加:10000][金币:0], 【表格】春节福袋
	tSpringFestival2020Other_Reward[3327373][1][3][8]["RewardItem"][1]["Attr"] = "0 1" -- 新春有礼大福袋*1
	tSpringFestival2020Other_Reward[3327373][1][3][8]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][1][3][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 新年外套人物礼包（可选） - 0.01%
	tSpringFestival2020Other_Reward[3327373][1][3][9] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][9]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][1][3][9]["ItemChance"] = 1
	tSpringFestival2020Other_Reward[3327373][1][3][9]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][9]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][9]["RewardItem"][1]["Id"] = 3327307 -- 春节新衣回归礼盒[3327307][属性:9][叠加:10000][金币:0], 【表格】新年外套人物礼包（可选）
	tSpringFestival2020Other_Reward[3327373][1][3][9]["RewardItem"][1]["Attr"] = "0 1" -- 春节新衣回归礼盒*1
	tSpringFestival2020Other_Reward[3327373][1][3][9]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][1][3][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 新年外套坐骑礼包（可选） - 0.01%
	tSpringFestival2020Other_Reward[3327373][1][3][10] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][10]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][1][3][10]["ItemChance"] = 1
	tSpringFestival2020Other_Reward[3327373][1][3][10]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][10]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][10]["RewardItem"][1]["Id"] = 3327308 -- 春节萌宠回归礼盒[3327308][属性:9][叠加:10000][金币:0], 【表格】新年外套坐骑礼包（可选）
	tSpringFestival2020Other_Reward[3327373][1][3][10]["RewardItem"][1]["Attr"] = "0 1" -- 春节萌宠回归礼盒*1
	tSpringFestival2020Other_Reward[3327373][1][3][10]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][1][3][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][1][3][10]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327373][1][4] = {}
	-- ===春节财神宝盒外套暗格
	-- ===索引: tSpringFestival2020Other_Reward[3327373][1][4]
	-- ===删除:3327373,1
	-- ===LogStep:6[1][4]
	tSpringFestival2020Other_Reward[3327373][1][4]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327373][1][4]["LogStep"] = "6[1][4]"
	tSpringFestival2020Other_Reward[3327373][1][4]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327373][1][4]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][1][4]["DeleteItem"][1]["Id"] = 3327373 -- 【库】春节财神宝盒[属性:9]
	tSpringFestival2020Other_Reward[3327373][1][4]["RewardStrengthValue"] = {}
	tSpringFestival2020Other_Reward[3327373][1][4]["RewardStrengthValue"]["Value"] = 500 -- 气力值, 【需求】500气力值
	tSpringFestival2020Other_Reward[3327373][1][4]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][1][4]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327373][2] = {}
	-- ===春节财神宝盒灵珠暗格
	-- ===索引: tSpringFestival2020Other_Reward[3327373][2][1]
	-- ===删除:3327373,1,3327374,1
	-- ===LogStep:6[2][1] 
	tSpringFestival2020Other_Reward[3327373][2][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tSpringFestival2020Other_Reward[3327373][2][1]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][1]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][1]["DeleteItem"][1]["Id"] = 3327373 -- 【库】春节财神宝盒[属性:9]
	tSpringFestival2020Other_Reward[3327373][2][1]["DeleteItem"][2] = {}
	tSpringFestival2020Other_Reward[3327373][2][1]["DeleteItem"][2]["Id"] = 3327374 -- 【库】新春秘钥[属性:9]
	tSpringFestival2020Other_Reward[3327373][2][1]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327373][2][1]["LogStep"] = "6[2][1] "
	-- 12阶灵珠 - 0.1%
	tSpringFestival2020Other_Reward[3327373][2][1][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][1][1]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][2][1][1]["ItemChance"] = 10
	tSpringFestival2020Other_Reward[3327373][2][1][1]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][1][1]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][1][1]["RewardItem"][1]["Id"] = 4200012 -- 12阶灵珠[4200012][属性:72][叠加:99][金币:0], 【表格】12阶灵珠
	tSpringFestival2020Other_Reward[3327373][2][1][1]["RewardItem"][1]["Attr"] = "0 2" -- 12阶灵珠*2
	tSpringFestival2020Other_Reward[3327373][2][1][1]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tSpringFestival2020Other_Reward[3327373][2][1][1]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][2][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][2][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 10阶灵珠 - 1%
	tSpringFestival2020Other_Reward[3327373][2][1][2] = {}
	tSpringFestival2020Other_Reward[3327373][2][1][2]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][2][1][2]["ItemChance"] = 100
	tSpringFestival2020Other_Reward[3327373][2][1][2]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][1][2]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][1][2]["RewardItem"][1]["Id"] = 4200010 -- 10阶灵珠[4200010][属性:72][叠加:99][金币:0], 【表格】10阶灵珠
	tSpringFestival2020Other_Reward[3327373][2][1][2]["RewardItem"][1]["Attr"] = "0 2" -- 10阶灵珠*2
	tSpringFestival2020Other_Reward[3327373][2][1][2]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tSpringFestival2020Other_Reward[3327373][2][1][2]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][2][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][2][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 8阶灵珠 - 11%
	tSpringFestival2020Other_Reward[3327373][2][1][3] = {}
	tSpringFestival2020Other_Reward[3327373][2][1][3]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][2][1][3]["ItemChance"] = 1100
	tSpringFestival2020Other_Reward[3327373][2][1][3]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][1][3]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][1][3]["RewardItem"][1]["Id"] = 4200008 -- 8阶灵珠[4200008][属性:72][叠加:99][金币:0], 【表格】8阶灵珠
	tSpringFestival2020Other_Reward[3327373][2][1][3]["RewardItem"][1]["Attr"] = "0 2" -- 8阶灵珠*2
	tSpringFestival2020Other_Reward[3327373][2][1][3]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tSpringFestival2020Other_Reward[3327373][2][1][3]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][2][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][2][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 7阶灵珠 - 24%
	tSpringFestival2020Other_Reward[3327373][2][1][4] = {}
	tSpringFestival2020Other_Reward[3327373][2][1][4]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][2][1][4]["ItemChance"] = 2400
	tSpringFestival2020Other_Reward[3327373][2][1][4]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][1][4]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][1][4]["RewardItem"][1]["Id"] = 4200007 -- 7阶灵珠[4200007][属性:72][叠加:99][金币:0], 【表格】7阶灵珠
	tSpringFestival2020Other_Reward[3327373][2][1][4]["RewardItem"][1]["Attr"] = "0 2" -- 7阶灵珠*2
	tSpringFestival2020Other_Reward[3327373][2][1][4]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tSpringFestival2020Other_Reward[3327373][2][1][4]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][2][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][2][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 6阶灵珠 - 45%
	tSpringFestival2020Other_Reward[3327373][2][1][5] = {}
	tSpringFestival2020Other_Reward[3327373][2][1][5]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][2][1][5]["ItemChance"] = 4500
	tSpringFestival2020Other_Reward[3327373][2][1][5]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][1][5]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][1][5]["RewardItem"][1]["Id"] = 4200006 -- 6阶灵珠[4200006][属性:72][叠加:99][金币:0], 【表格】6阶灵珠
	tSpringFestival2020Other_Reward[3327373][2][1][5]["RewardItem"][1]["Attr"] = "0 2" -- 6阶灵珠*2
	tSpringFestival2020Other_Reward[3327373][2][1][5]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tSpringFestival2020Other_Reward[3327373][2][1][5]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][2][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][2][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 5阶灵珠 - 18.9%
	tSpringFestival2020Other_Reward[3327373][2][1][6] = {}
	tSpringFestival2020Other_Reward[3327373][2][1][6]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][2][1][6]["ItemChance"] = 1890
	tSpringFestival2020Other_Reward[3327373][2][1][6]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][1][6]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][1][6]["RewardItem"][1]["Id"] = 4200005 -- 5阶灵珠[4200005][属性:72][叠加:99][金币:0], 【表格】5阶灵珠
	tSpringFestival2020Other_Reward[3327373][2][1][6]["RewardItem"][1]["Attr"] = "0 2" -- 5阶灵珠*2
	tSpringFestival2020Other_Reward[3327373][2][1][6]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tSpringFestival2020Other_Reward[3327373][2][1][6]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][2][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][2][1][6]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327373][2][2] = {}
	-- ===春节财神宝盒珍宝暗格
	-- ===索引: tSpringFestival2020Other_Reward[3327373][2][2]
	-- ===删除:3327373,1
	-- ===3327374,1
	-- ===LogStep:6[2][2]
	tSpringFestival2020Other_Reward[3327373][2][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tSpringFestival2020Other_Reward[3327373][2][2]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][2]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][2]["DeleteItem"][1]["Id"] = 3327373 -- 【库】春节财神宝盒[属性:9]
	tSpringFestival2020Other_Reward[3327373][2][2]["DeleteItem"][2] = {}
	tSpringFestival2020Other_Reward[3327373][2][2]["DeleteItem"][2]["Id"] = 3327374 -- 【库】新春秘钥[属性:9]
	tSpringFestival2020Other_Reward[3327373][2][2]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327373][2][2]["LogStep"] = "6[2][2]"
	-- 人参果 - 10%
	tSpringFestival2020Other_Reward[3327373][2][2][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][1]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][2][2][1]["ItemChance"] = 1000
	tSpringFestival2020Other_Reward[3327373][2][2][1]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][1]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][1]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tSpringFestival2020Other_Reward[3327373][2][2][1]["RewardItem"][1]["Attr"] = "0 60" -- 人参果*60（[错误]物品数量超10个）
	tSpringFestival2020Other_Reward[3327373][2][2][1]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][2][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 47%
	tSpringFestival2020Other_Reward[3327373][2][2][2] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][2]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][2][2][2]["ItemChance"] = 4700
	tSpringFestival2020Other_Reward[3327373][2][2][2]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][2]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][2]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tSpringFestival2020Other_Reward[3327373][2][2][2]["RewardItem"][1]["Attr"] = "0 200 3" -- 万能神纹精粹*200（[错误]物品数量超100个）
	tSpringFestival2020Other_Reward[3327373][2][2][2]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][2][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+4 - 10%
	tSpringFestival2020Other_Reward[3327373][2][2][3] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][3]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][2][2][3]["ItemChance"] = 1000
	tSpringFestival2020Other_Reward[3327373][2][2][3]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][3]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][3]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tSpringFestival2020Other_Reward[3327373][2][2][3]["RewardItem"][1]["Attr"] = "0 2 0 7200 1" -- 5天时效(激活)的+4赤炼石*2
	tSpringFestival2020Other_Reward[3327373][2][2][3]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][2][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+5 - 20%
	tSpringFestival2020Other_Reward[3327373][2][2][4] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][4]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][2][2][4]["ItemChance"] = 2000
	tSpringFestival2020Other_Reward[3327373][2][2][4]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][4]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][4]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tSpringFestival2020Other_Reward[3327373][2][2][4]["RewardItem"][1]["Attr"] = "0 2 0 7200 1" -- 5天时效(激活)的+5赤炼石*2
	tSpringFestival2020Other_Reward[3327373][2][2][4]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][2][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 小固化石 - 5%
	tSpringFestival2020Other_Reward[3327373][2][2][5] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][5]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][2][2][5]["ItemChance"] = 500
	tSpringFestival2020Other_Reward[3327373][2][2][5]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][5]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][5]["RewardItem"][1]["Id"] = 723694 -- 固化石[723694][属性:0][叠加:0][金币:0], 【表格】小固化石
	tSpringFestival2020Other_Reward[3327373][2][2][5]["RewardItem"][1]["Attr"] = "0 2" -- 固化石*2
	tSpringFestival2020Other_Reward[3327373][2][2][5]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][2][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 黄色神纹随机包 - 5%
	tSpringFestival2020Other_Reward[3327373][2][2][6] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][6]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][2][2][6]["ItemChance"] = 500
	tSpringFestival2020Other_Reward[3327373][2][2][6]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][6]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][6]["RewardItem"][1]["Id"] = 3306507 -- 黄色神纹随机包[3306507][属性:0][叠加:10000][金币:0], 【表格】黄色神纹随机包
	tSpringFestival2020Other_Reward[3327373][2][2][6]["RewardItem"][1]["Attr"] = "0 2" -- 黄色神纹随机包*2
	tSpringFestival2020Other_Reward[3327373][2][2][6]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][2][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+6 - 1%
	tSpringFestival2020Other_Reward[3327373][2][2][7] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][7]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][2][2][7]["ItemChance"] = 100
	tSpringFestival2020Other_Reward[3327373][2][2][7]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][7]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][7]["RewardItem"][1]["Id"] = 730006 -- +6赤炼石[730006][属性:0][叠加:0][金币:0], 【表格】赤炼石+6
	tSpringFestival2020Other_Reward[3327373][2][2][7]["RewardItem"][1]["Attr"] = "0 2 0 7200 1" -- 5天时效(激活)的+6赤炼石*2
	tSpringFestival2020Other_Reward[3327373][2][2][7]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][2][2][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 变幻骑宠礼包+6 - 1%
	tSpringFestival2020Other_Reward[3327373][2][2][8] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][8]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][2][2][8]["ItemChance"] = 100
	tSpringFestival2020Other_Reward[3327373][2][2][8]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][8]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][8]["RewardItem"][1]["Id"] = 720049 -- +6变幻骑宠礼包[720049][属性:9][叠加:0][金币:0], 【表格】变幻骑宠礼包+6
	tSpringFestival2020Other_Reward[3327373][2][2][8]["RewardItem"][1]["Attr"] = "0 2" -- +6变幻骑宠礼包*2
	tSpringFestival2020Other_Reward[3327373][2][2][8]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][2][2][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 金钢坚钻 - 0.7%
	tSpringFestival2020Other_Reward[3327373][2][2][9] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][9]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][2][2][9]["ItemChance"] = 70
	tSpringFestival2020Other_Reward[3327373][2][2][9]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][9]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][9]["RewardItem"][1]["Id"] = 1200005 -- 金钢坚钻[1200005][属性:0][叠加:0][金币:0], 【表格】金钢坚钻
	tSpringFestival2020Other_Reward[3327373][2][2][9]["RewardItem"][1]["Attr"] = "0 2" -- 金钢坚钻*2
	tSpringFestival2020Other_Reward[3327373][2][2][9]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][2][2][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 超大固化石 - 0.2%
	tSpringFestival2020Other_Reward[3327373][2][2][10] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][10]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][2][2][10]["ItemChance"] = 20
	tSpringFestival2020Other_Reward[3327373][2][2][10]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][10]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][10]["RewardItem"][1]["Id"] = 723695 -- 超大固化石[723695][属性:0][叠加:0][金币:0], 【表格】超大固化石
	tSpringFestival2020Other_Reward[3327373][2][2][10]["RewardItem"][1]["Attr"] = "0 2 3" -- 超大固化石（赠）*2
	tSpringFestival2020Other_Reward[3327373][2][2][10]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][2][2][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 稀有黄色神纹随机包 - 0.1%
	tSpringFestival2020Other_Reward[3327373][2][2][11] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][11]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][2][2][11]["ItemChance"] = 10
	tSpringFestival2020Other_Reward[3327373][2][2][11]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][11]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][11]["RewardItem"][1]["Id"] = 3319013 -- (+1)稀有黄色神纹随机包(赠)[3319013][属性:9][叠加:0][金币:0], 【表格】稀有黄色神纹随机包
	tSpringFestival2020Other_Reward[3327373][2][2][11]["RewardItem"][1]["Attr"] = "0 2" -- (+1)稀有黄色神纹随机包(赠)*2
	tSpringFestival2020Other_Reward[3327373][2][2][11]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][2][2][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][2][2][11]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327373][2][3] = {}
	-- ===春节财神宝盒外套暗格
	-- ===索引: tSpringFestival2020Other_Reward[3327373][2][3]
	-- ===删除:3327373,1
	-- ===3327374,1
	-- ===LogStep:6[2][3]
	tSpringFestival2020Other_Reward[3327373][2][3]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tSpringFestival2020Other_Reward[3327373][2][3]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][3]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][3]["DeleteItem"][1]["Id"] = 3327373 -- 【库】春节财神宝盒[属性:9]
	tSpringFestival2020Other_Reward[3327373][2][3]["DeleteItem"][2] = {}
	tSpringFestival2020Other_Reward[3327373][2][3]["DeleteItem"][2]["Id"] = 3327374 -- 【库】新春秘钥[属性:9]
	tSpringFestival2020Other_Reward[3327373][2][3]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327373][2][3]["LogStep"] = "6[2][3]"
	-- 新年300赠点红包 - 24%
	tSpringFestival2020Other_Reward[3327373][2][3][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][1]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][2][3][1]["ItemChance"] = 2400
	tSpringFestival2020Other_Reward[3327373][2][3][1]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][1]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][1]["RewardItem"][1]["Id"] = 3327311 -- 300天石（赠）鼠年红包[3327311][属性:9][叠加:10000][金币:0], 【表格】新年300赠点红包
	tSpringFestival2020Other_Reward[3327373][2][3][1]["RewardItem"][1]["Attr"] = "0 2" -- 300天石（赠）鼠年红包*2
	tSpringFestival2020Other_Reward[3327373][2][3][1]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][2][3][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 新年300赠点红包 - 45%
	tSpringFestival2020Other_Reward[3327373][2][3][2] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][2]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][2][3][2]["ItemChance"] = 4500
	tSpringFestival2020Other_Reward[3327373][2][3][2]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][2]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][2]["RewardItem"][1]["Id"] = 3327311 -- 300天石（赠）鼠年红包[3327311][属性:9][叠加:10000][金币:0], 【表格】新年300赠点红包
	tSpringFestival2020Other_Reward[3327373][2][3][2]["RewardItem"][1]["Attr"] = "0 4" -- 300天石（赠）鼠年红包*4
	tSpringFestival2020Other_Reward[3327373][2][3][2]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][2][3][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 新年1000赠点红包 - 23%
	tSpringFestival2020Other_Reward[3327373][2][3][3] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][3]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][2][3][3]["ItemChance"] = 2300
	tSpringFestival2020Other_Reward[3327373][2][3][3]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][3]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][3]["RewardItem"][1]["Id"] = 3327312 -- 1000天石（赠）鼠年红包[3327312][属性:9][叠加:10000][金币:0], 【表格】新年1000赠点红包
	tSpringFestival2020Other_Reward[3327373][2][3][3]["RewardItem"][1]["Attr"] = "0 2" -- 1000天石（赠）鼠年红包*2
	tSpringFestival2020Other_Reward[3327373][2][3][3]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][2][3][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 春节光效人物外套碎片 - 2%
	tSpringFestival2020Other_Reward[3327373][2][3][4] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][4]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][2][3][4]["ItemChance"] = 200
	tSpringFestival2020Other_Reward[3327373][2][3][4]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][4]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][4]["RewardItem"][1]["Id"] = 3327313 -- 【新年光效时装外套名】碎片[3327313][属性:9][叠加:10000][金币:0], 【表格】春节光效人物外套碎片
	tSpringFestival2020Other_Reward[3327373][2][3][4]["RewardItem"][1]["Attr"] = "0 2" -- 【新年光效时装外套名】碎片*2
	tSpringFestival2020Other_Reward[3327373][2][3][4]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][2][3][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 春节光效坐骑外套碎片 - 2%
	tSpringFestival2020Other_Reward[3327373][2][3][5] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][5]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][2][3][5]["ItemChance"] = 200
	tSpringFestival2020Other_Reward[3327373][2][3][5]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][5]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][5]["RewardItem"][1]["Id"] = 3327314 -- 【新年光效坐骑外套名】碎片[3327314][属性:9][叠加:10000][金币:0], 【表格】春节光效坐骑外套碎片
	tSpringFestival2020Other_Reward[3327373][2][3][5]["RewardItem"][1]["Attr"] = "0 2" -- 【新年光效坐骑外套名】碎片*2
	tSpringFestival2020Other_Reward[3327373][2][3][5]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][2][3][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 春节光效人物外套碎片 - 0.5%
	tSpringFestival2020Other_Reward[3327373][2][3][6] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][6]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][2][3][6]["ItemChance"] = 50
	tSpringFestival2020Other_Reward[3327373][2][3][6]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][6]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][6]["RewardItem"][1]["Id"] = 3327313 -- 【新年光效时装外套名】碎片[3327313][属性:9][叠加:10000][金币:0], 【表格】春节光效人物外套碎片
	tSpringFestival2020Other_Reward[3327373][2][3][6]["RewardItem"][1]["Attr"] = "0 6" -- 【新年光效时装外套名】碎片*6
	tSpringFestival2020Other_Reward[3327373][2][3][6]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][2][3][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 春节光效坐骑外套碎片 - 0.5%
	tSpringFestival2020Other_Reward[3327373][2][3][7] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][7]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][2][3][7]["ItemChance"] = 50
	tSpringFestival2020Other_Reward[3327373][2][3][7]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][7]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][7]["RewardItem"][1]["Id"] = 3327314 -- 【新年光效坐骑外套名】碎片[3327314][属性:9][叠加:10000][金币:0], 【表格】春节光效坐骑外套碎片
	tSpringFestival2020Other_Reward[3327373][2][3][7]["RewardItem"][1]["Attr"] = "0 6" -- 【新年光效坐骑外套名】碎片*6
	tSpringFestival2020Other_Reward[3327373][2][3][7]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][2][3][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 春节福袋 - 2.98%
	tSpringFestival2020Other_Reward[3327373][2][3][8] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][8]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][2][3][8]["ItemChance"] = 298
	tSpringFestival2020Other_Reward[3327373][2][3][8]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][8]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][8]["RewardItem"][1]["Id"] = 3327309 -- 新春有礼大福袋[3327309][属性:9][叠加:10000][金币:0], 【表格】春节福袋
	tSpringFestival2020Other_Reward[3327373][2][3][8]["RewardItem"][1]["Attr"] = "0 2" -- 新春有礼大福袋*2
	tSpringFestival2020Other_Reward[3327373][2][3][8]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][2][3][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 新年外套人物礼包（可选） - 0.01%
	tSpringFestival2020Other_Reward[3327373][2][3][9] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][9]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][2][3][9]["ItemChance"] = 1
	tSpringFestival2020Other_Reward[3327373][2][3][9]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][9]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][9]["RewardItem"][1]["Id"] = 3327307 -- 春节新衣回归礼盒[3327307][属性:9][叠加:10000][金币:0], 【表格】新年外套人物礼包（可选）
	tSpringFestival2020Other_Reward[3327373][2][3][9]["RewardItem"][1]["Attr"] = "0 2" -- 春节新衣回归礼盒*2
	tSpringFestival2020Other_Reward[3327373][2][3][9]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][2][3][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 新年外套坐骑礼包（可选） - 0.01%
	tSpringFestival2020Other_Reward[3327373][2][3][10] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][10]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[3327373][2][3][10]["ItemChance"] = 1
	tSpringFestival2020Other_Reward[3327373][2][3][10]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][10]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][10]["RewardItem"][1]["Id"] = 3327308 -- 春节萌宠回归礼盒[3327308][属性:9][叠加:10000][金币:0], 【表格】新年外套坐骑礼包（可选）
	tSpringFestival2020Other_Reward[3327373][2][3][10]["RewardItem"][1]["Attr"] = "0 2" -- 春节萌宠回归礼盒*2
	tSpringFestival2020Other_Reward[3327373][2][3][10]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][2][3][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][2][3][10]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327373][2][4] = {}
	-- ===春节财神宝盒外套暗格
	-- ===索引: tSpringFestival2020Other_Reward[3327373][2][4]
	-- ===删除:3327373,1
	-- ===LogStep:6[2][4]
	tSpringFestival2020Other_Reward[3327373][2][4]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327373][2][4]["LogStep"] = "6[2][4]"
	tSpringFestival2020Other_Reward[3327373][2][4]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327373][2][4]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327373][2][4]["DeleteItem"][1]["Id"] = 3327373 -- 【库】春节财神宝盒[属性:9]
	tSpringFestival2020Other_Reward[3327373][2][4]["RewardStrengthValue"] = {}
	tSpringFestival2020Other_Reward[3327373][2][4]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000气力值
	tSpringFestival2020Other_Reward[3327373][2][4]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327373][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327373][2][4]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3315249] = {}
	-- ===新年光效时装外套
	-- ===索引: tSpringFestival2020Other_Reward[3315249]
	-- ===删除:3315249
	tSpringFestival2020Other_Reward[3315249]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3315249]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3315249]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3315249]["DeleteItem"][1]["Id"] = 3315249 -- 【库】新年光效时装外套[属性:9]
	tSpringFestival2020Other_Reward[3315249]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3315249]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3315249]["RewardItem"][1]["Id"] = 196005 -- 新年光效时装外套 [196005][属性:0][叠加:0][金币:0], 【表格】新年光效时装外套
	tSpringFestival2020Other_Reward[3315249]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑新年光效时装外套 *1
	tSpringFestival2020Other_Reward[3315249]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3315249]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3315249]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3315250] = {}
	-- ===新年无光效时装外套
	-- ===索引: tSpringFestival2020Other_Reward[3315250]
	-- ===删除:3315250
	tSpringFestival2020Other_Reward[3315250]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3315250]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3315250]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3315250]["DeleteItem"][1]["Id"] = 3315250 -- 【库】新年无光效时装外套[属性:9]
	tSpringFestival2020Other_Reward[3315250]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3315250]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3315250]["RewardItem"][1]["Id"] = 196015 -- 新年无光效时装外套[196015][属性:0][叠加:0][金币:0], 【表格】新年无光效时装外套
	tSpringFestival2020Other_Reward[3315250]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑新年无光效时装外套*1
	tSpringFestival2020Other_Reward[3315250]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3315250]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3315250]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3315251] = {}
	-- ===新年光效坐骑外套可选包
	-- ===索引: tSpringFestival2020Other_Reward[3315251]
	-- ===删除:3315251
	tSpringFestival2020Other_Reward[3315251]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3315251]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3315251]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3315251]["DeleteItem"][1]["Id"] = 3315251 -- 【库】新年光效坐骑外套可选包[属性:9]
	tSpringFestival2020Other_Reward[3315251]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3315251]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3315251]["RewardItem"][1]["Id"] = 200663 -- 新年光效坐骑外套1[200663][属性:0][叠加:0][金币:0], 【表格】新年光效坐骑外套1
	tSpringFestival2020Other_Reward[3315251]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑新年光效坐骑外套1*1
	tSpringFestival2020Other_Reward[3315251]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3315251]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3315251]["RewardEffect"]["Effect"] = "angelwing"



	tSpringFestival2020Other_Reward[3315252] = {}
	-- ===新年光效时装外套
	-- ===索引: tSpringFestival2020Other_Reward[3315252]
	-- ===删除:3315252
	tSpringFestival2020Other_Reward[3315252]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3315252]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3315252]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3315252]["DeleteItem"][1]["Id"] = 3315252 -- 【库】新年无光效坐骑外套[属性:9]
	tSpringFestival2020Other_Reward[3315252]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3315252]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3315252]["RewardItem"][1]["Id"] = 200665 -- 新年无光效坐骑外套[200665][属性:0][叠加:0][金币:0], 【表格】新年无光效坐骑外套
	tSpringFestival2020Other_Reward[3315252]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑新年无光效坐骑外套*1
	tSpringFestival2020Other_Reward[3315252]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3315252]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3315252]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[3327544] = {}
	-- ===金麟舞狮.辉煌
	-- ===索引: tSpringFestival2020Other_Reward[3327544]
	-- ===删除:3327544
	tSpringFestival2020Other_Reward[3327544]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327544]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327544]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327544]["DeleteItem"][1]["Id"] = 3327544 -- 【库】金麟舞狮.辉煌[属性:9]
	tSpringFestival2020Other_Reward[3327544]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[3327544]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[3327544]["RewardItem"][1]["Id"] = 200669 -- 金麟舞狮·辉煌[200669][属性:0][叠加:0][金币:0], 【表格】金麟舞狮·辉煌
	tSpringFestival2020Other_Reward[3327544]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑金麟舞狮·辉煌*1
	tSpringFestival2020Other_Reward[3327544]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327544]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327544]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[5886] = {}
	-- ===跨服小怪掉落
	-- ===索引: tSpringFestival2020Other_Reward[5886]
	-- ===LogStep:7[1]
	tSpringFestival2020Other_Reward[5886]["ItemChanceSum"] = 10000
	tSpringFestival2020Other_Reward[5886]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[5886]["LogStep"] = "7[1]"
	-- 年兽蛋（一阶） - 1%
	tSpringFestival2020Other_Reward[5886][1] = {}
	tSpringFestival2020Other_Reward[5886][1]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[5886][1]["ItemChance"] = 100
	tSpringFestival2020Other_Reward[5886][1]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[5886][1]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[5886][1]["RewardItem"][1]["Id"] = 3600237 -- 年兽蛋（一阶）[3600237][属性:8][叠加:0][金币:0], 【表格】年兽蛋（一阶）
	tSpringFestival2020Other_Reward[5886][1]["RewardItem"][1]["Attr"] = "0 1" -- 年兽蛋（一阶）*1
	tSpringFestival2020Other_Reward[5886][1]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[5886][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[5886][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 星纹石 - 2%
	tSpringFestival2020Other_Reward[5886][2] = {}
	tSpringFestival2020Other_Reward[5886][2]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[5886][2]["ItemChance"] = 200
	tSpringFestival2020Other_Reward[5886][2]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[5886][2]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[5886][2]["RewardItem"][1]["Id"] = 3600238 -- 星纹石[3600238][属性:8][叠加:0][金币:0], 【表格】星纹石
	tSpringFestival2020Other_Reward[5886][2]["RewardItem"][1]["Attr"] = "0 1" -- 星纹石*1
	tSpringFestival2020Other_Reward[5886][2]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[5886][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[5886][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 不掉落 - 97%
	tSpringFestival2020Other_Reward[5886][3] = {}
	tSpringFestival2020Other_Reward[5886][3]["RandomItemChanceType"] = 2
	tSpringFestival2020Other_Reward[5886][3]["ItemChance"] = 9700
	tSpringFestival2020Other_Reward[5886][3]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[5886][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[5886][3]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[5887] = {}
	-- ===跨服精英掉落
	-- ===索引: tSpringFestival2020Other_Reward[5887]
	-- ===LogStep:7[2]
	tSpringFestival2020Other_Reward[5887]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[5887]["LogStep"] = "7[2]"
	tSpringFestival2020Other_Reward[5887]["RewardItem"] = {}
	-- tSpringFestival2020Other_Reward[5887]["RewardItem"][1] = {}
	-- tSpringFestival2020Other_Reward[5887]["RewardItem"][1]["Id"] = 3600237 -- 年兽蛋（一阶）[3600237][属性:8][叠加:0][金币:0], 【表格】年兽蛋（一阶）
	-- tSpringFestival2020Other_Reward[5887]["RewardItem"][1]["Attr"] = "0 1" -- 年兽蛋（一阶）*1
	tSpringFestival2020Other_Reward[5887]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[5887]["RewardItem"][1]["Id"] = 3600239 -- 赤炎结晶[3600239][属性:9][叠加:0][金币:0], 【表格】赤炎结晶
	tSpringFestival2020Other_Reward[5887]["RewardItem"][1]["Attr"] = "0 1" -- 赤炎结晶*1
	tSpringFestival2020Other_Reward[5887]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[5887]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[5887]["RewardEffect"]["Effect"] = "angelwing"


	tSpringFestival2020Other_Reward[5888] = {}
	-- ===跨服BOSS掉落
	-- ===索引: tSpringFestival2020Other_Reward[5888]
	-- ===LogStep:7[3]
	tSpringFestival2020Other_Reward[5888]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[5888]["LogStep"] = "7[3]"
	tSpringFestival2020Other_Reward[5888]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[5888]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[5888]["RewardItem"][1]["Id"] = 3600237 -- 年兽蛋（一阶）[3600237][属性:8][叠加:0][金币:0], 【表格】年兽蛋（一阶）
	tSpringFestival2020Other_Reward[5888]["RewardItem"][1]["Attr"] = "0 5" -- 年兽蛋（一阶）*5
	tSpringFestival2020Other_Reward[5888]["RewardItem"][2] = {}
	tSpringFestival2020Other_Reward[5888]["RewardItem"][2]["Id"] = 3600240 -- 年兽蛋（二阶）[3600240][属性:8][叠加:0][金币:0], 【表格】年兽蛋（二阶）
	tSpringFestival2020Other_Reward[5888]["RewardItem"][2]["Attr"] = "0 1" -- 年兽蛋（二阶）*1
	tSpringFestival2020Other_Reward[5888]["RewardItem"][3] = {}
	tSpringFestival2020Other_Reward[5888]["RewardItem"][3]["Id"] = 3600239 -- 赤炎结晶[3600239][属性:9][叠加:0][金币:0], 【表格】赤炎结晶
	tSpringFestival2020Other_Reward[5888]["RewardItem"][3]["Attr"] = "0 10" -- 赤炎结晶*10
	tSpringFestival2020Other_Reward[5888]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[5888]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[5888]["RewardEffect"]["Effect"] = "angelwing"

	tSpringFestival2020Other_Reward[5899] = {}
	-- ===重明鸟
	-- ===索引: tSpringFestival2020Other_Reward[5899]
	-- ===LogStep:7[3]
	tSpringFestival2020Other_Reward[5899]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[5899]["LogStep"] = "7[4]"
	tSpringFestival2020Other_Reward[5899]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[5899]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[5899]["RewardItem"][1]["Id"] = 3600237 -- 年兽蛋（一阶）[3600237][属性:8][叠加:0][金币:0], 【表格】年兽蛋（一阶）
	tSpringFestival2020Other_Reward[5899]["RewardItem"][1]["Attr"] = "0 5" -- 年兽蛋（一阶）*5
	tSpringFestival2020Other_Reward[5899]["RewardItem"][2] = {}
	tSpringFestival2020Other_Reward[5899]["RewardItem"][2]["Id"] = 3600240 -- 年兽蛋（二阶）[3600240][属性:8][叠加:0][金币:0], 【表格】年兽蛋（二阶）
	tSpringFestival2020Other_Reward[5899]["RewardItem"][2]["Attr"] = "0 1" -- 年兽蛋（二阶）*1
	tSpringFestival2020Other_Reward[5899]["RewardItem"][3] = {}
	tSpringFestival2020Other_Reward[5899]["RewardItem"][3]["Id"] = 3600239 -- 赤炎结晶[3600239][属性:9][叠加:0][金币:0], 【表格】赤炎结晶
	tSpringFestival2020Other_Reward[5899]["RewardItem"][3]["Attr"] = "0 10" -- 赤炎结晶*10
	tSpringFestival2020Other_Reward[5899]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[5899]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[5899]["RewardEffect"]["Effect"] = "angelwing"

	tSpringFestival2020Other_Reward[5900] = {}
	-- ===美杜莎
	-- ===索引: tSpringFestival2020Other_Reward[5900]
	-- ===LogStep:7[3]
	tSpringFestival2020Other_Reward[5900]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[5900]["LogStep"] = "7[5]"
	tSpringFestival2020Other_Reward[5900]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[5900]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[5900]["RewardItem"][1]["Id"] = 3600237 -- 年兽蛋（一阶）[3600237][属性:8][叠加:0][金币:0], 【表格】年兽蛋（一阶）
	tSpringFestival2020Other_Reward[5900]["RewardItem"][1]["Attr"] = "0 5" -- 年兽蛋（一阶）*5
	tSpringFestival2020Other_Reward[5900]["RewardItem"][2] = {}
	tSpringFestival2020Other_Reward[5900]["RewardItem"][2]["Id"] = 3600240 -- 年兽蛋（二阶）[3600240][属性:8][叠加:0][金币:0], 【表格】年兽蛋（二阶）
	tSpringFestival2020Other_Reward[5900]["RewardItem"][2]["Attr"] = "0 1" -- 年兽蛋（二阶）*1
	tSpringFestival2020Other_Reward[5900]["RewardItem"][3] = {}
	tSpringFestival2020Other_Reward[5900]["RewardItem"][3]["Id"] = 3600239 -- 赤炎结晶[3600239][属性:9][叠加:0][金币:0], 【表格】赤炎结晶
	tSpringFestival2020Other_Reward[5900]["RewardItem"][3]["Attr"] = "0 10" -- 赤炎结晶*10
	tSpringFestival2020Other_Reward[5900]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[5900]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[5900]["RewardEffect"]["Effect"] = "angelwing"

	tSpringFestival2020Other_Reward[5901] = {}
	-- ===曼提柯尔
	-- ===索引: tSpringFestival2020Other_Reward[5901]
	-- ===LogStep:7[3]
	tSpringFestival2020Other_Reward[5901]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[5901]["LogStep"] = "7[6]"
	tSpringFestival2020Other_Reward[5901]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[5901]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[5901]["RewardItem"][1]["Id"] = 3600237 -- 年兽蛋（一阶）[3600237][属性:8][叠加:0][金币:0], 【表格】年兽蛋（一阶）
	tSpringFestival2020Other_Reward[5901]["RewardItem"][1]["Attr"] = "0 5" -- 年兽蛋（一阶）*5
	tSpringFestival2020Other_Reward[5901]["RewardItem"][2] = {}
	tSpringFestival2020Other_Reward[5901]["RewardItem"][2]["Id"] = 3600240 -- 年兽蛋（二阶）[3600240][属性:8][叠加:0][金币:0], 【表格】年兽蛋（二阶）
	tSpringFestival2020Other_Reward[5901]["RewardItem"][2]["Attr"] = "0 1" -- 年兽蛋（二阶）*1
	tSpringFestival2020Other_Reward[5901]["RewardItem"][3] = {}
	tSpringFestival2020Other_Reward[5901]["RewardItem"][3]["Id"] = 3600239 -- 赤炎结晶[3600239][属性:9][叠加:0][金币:0], 【表格】赤炎结晶
	tSpringFestival2020Other_Reward[5901]["RewardItem"][3]["Attr"] = "0 10" -- 赤炎结晶*10
	tSpringFestival2020Other_Reward[5901]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[5901]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[5901]["RewardEffect"]["Effect"] = "angelwing"

	tSpringFestival2020Other_Reward[5902] = {}
	-- ===卡邦克鲁
	-- ===索引: tSpringFestival2020Other_Reward[5902]
	-- ===LogStep:7[3]
	tSpringFestival2020Other_Reward[5902]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[5902]["LogStep"] = "7[7]"
	tSpringFestival2020Other_Reward[5902]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[5902]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[5902]["RewardItem"][1]["Id"] = 3600237 -- 年兽蛋（一阶）[3600237][属性:8][叠加:0][金币:0], 【表格】年兽蛋（一阶）
	tSpringFestival2020Other_Reward[5902]["RewardItem"][1]["Attr"] = "0 5" -- 年兽蛋（一阶）*5
	tSpringFestival2020Other_Reward[5902]["RewardItem"][2] = {}
	tSpringFestival2020Other_Reward[5902]["RewardItem"][2]["Id"] = 3600240 -- 年兽蛋（二阶）[3600240][属性:8][叠加:0][金币:0], 【表格】年兽蛋（二阶）
	tSpringFestival2020Other_Reward[5902]["RewardItem"][2]["Attr"] = "0 1" -- 年兽蛋（二阶）*1
	tSpringFestival2020Other_Reward[5902]["RewardItem"][3] = {}
	tSpringFestival2020Other_Reward[5902]["RewardItem"][3]["Id"] = 3600239 -- 赤炎结晶[3600239][属性:9][叠加:0][金币:0], 【表格】赤炎结晶
	tSpringFestival2020Other_Reward[5902]["RewardItem"][3]["Attr"] = "0 10" -- 赤炎结晶*10
	tSpringFestival2020Other_Reward[5902]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[5902]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[5902]["RewardEffect"]["Effect"] = "angelwing"

	tSpringFestival2020Other_Reward[25825] = {}
	-- ===星云藏宝图
	-- ===索引: tSpringFestival2020Other_Reward[25825]
	-- ===LogStep:8[1]
	tSpringFestival2020Other_Reward[25825]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[25825]["LogStep"] = "8[1]"
	tSpringFestival2020Other_Reward[25825]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[25825]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[25825]["RewardItem"][1]["Id"] = 3327305 -- 星云藏宝图[3327305][属性:9][叠加:0][金币:0], 【表格】星云藏宝图
	tSpringFestival2020Other_Reward[25825]["RewardItem"][1]["Attr"] = "0 1" -- 星云藏宝图*1
	tSpringFestival2020Other_Reward[25825]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[25825]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[25825]["RewardEffect"]["Effect"] = "angelwing"

	
	tSpringFestival2020Other_Reward[25916] = {}
	-- ===幸运福袋读条
	-- ===索引: tSpringFestival2020Other_Reward[25916]
	-- ===LogStep:8[2]
	tSpringFestival2020Other_Reward[25916]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[25916]["LogStep"] = "8[2]"
	tSpringFestival2020Other_Reward[25916]["RewardItem"] = {}
	tSpringFestival2020Other_Reward[25916]["RewardItem"][1] = {}
	tSpringFestival2020Other_Reward[25916]["RewardItem"][1]["Id"] = 3600213 -- 压岁钱红包[3600213][属性:137][叠加:1000][金币:0], 【表格】压岁钱红包
	tSpringFestival2020Other_Reward[25916]["RewardItem"][1]["Attr"] = "0 1" -- 压岁钱红包*1
	tSpringFestival2020Other_Reward[25916]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[25916]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[25916]["RewardEffect"]["Effect"] = "angelwing"

	tSpringFestival2020Other_Reward[3327310] = {}
	-- ===100赠点红包
	-- ===索引: tSpringFestival2020Other_Reward[3327310]
	-- ===删除: 3327310,1
	tSpringFestival2020Other_Reward[3327310]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327310]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327310]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327310]["DeleteItem"][1]["Id"] = 3327310 -- 【库】100赠点红包[属性:9]
	tSpringFestival2020Other_Reward[3327310]["RewardEMoneyMono"] = {}
	tSpringFestival2020Other_Reward[3327310]["RewardEMoneyMono"]["Value"] = 100 -- 天石, 【需求】100点赠天石
	tSpringFestival2020Other_Reward[3327310]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1458"
	tSpringFestival2020Other_Reward[3327310]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327310]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327310]["RewardEffect"]["Effect"] = "angelwing"

	tSpringFestival2020Other_Reward[3327311] = {}
	-- ===300赠点红包
	-- ===索引: tSpringFestival2020Other_Reward[3327311]
	-- ===删除: 3327311,1
	tSpringFestival2020Other_Reward[3327311]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327311]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327311]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327311]["DeleteItem"][1]["Id"] = 3327311 -- 【库】300赠点红包[属性:9]
	tSpringFestival2020Other_Reward[3327311]["RewardEMoneyMono"] = {}
	tSpringFestival2020Other_Reward[3327311]["RewardEMoneyMono"]["Value"] = 300 -- 天石, 【需求】300点赠天石
	tSpringFestival2020Other_Reward[3327311]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1459"
	tSpringFestival2020Other_Reward[3327311]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327311]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327311]["RewardEffect"]["Effect"] = "angelwing"

	tSpringFestival2020Other_Reward[3327312] = {}
	-- ===1000赠点红包
	-- ===索引: tSpringFestival2020Other_Reward[3327312]
	-- ===删除: 3327312,1
	tSpringFestival2020Other_Reward[3327312]["LogId"] = 12001796
	tSpringFestival2020Other_Reward[3327312]["DeleteItem"] = {}
	tSpringFestival2020Other_Reward[3327312]["DeleteItem"][1] = {}
	tSpringFestival2020Other_Reward[3327312]["DeleteItem"][1]["Id"] = 3327312 -- 【库】1000赠点红包[属性:9]
	tSpringFestival2020Other_Reward[3327312]["RewardEMoneyMono"] = {}
	tSpringFestival2020Other_Reward[3327312]["RewardEMoneyMono"]["Value"] = 1000 -- 天石, 【需求】1000点赠天石
	tSpringFestival2020Other_Reward[3327312]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1460"
	tSpringFestival2020Other_Reward[3327312]["RewardEffect"] = {}
	tSpringFestival2020Other_Reward[3327312]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringFestival2020Other_Reward[3327312]["RewardEffect"]["Effect"] = "angelwing"

----------------------------------逻辑部分---------------------------------------------
-- 打开天石商店
function SpringFestival2020Other_OpenEmoneyShop(nSpring2020Other_NpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["Spring2020Other"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nSpring2020Other_NpcId, "1-2")
		return
	end
	User_OpenDialog()
end

-- 打开连接
function SpringFestival2020Other_OpenWebPage()
	
	local sSpring2020Other_WebAddress = tSpringFestival2020Other_Data["WebPage"]
	User_SendWebDialog(sSpring2020Other_WebAddress)
end


-- 过期删除
function SpringFestival2020Other_OutTimeDelItem(nSpring2020Other_ItemId)
	local nSpring2020Other_ItemNum = Get_CountItemType(nSpring2020Other_ItemId,0)
	if Item_ChkAccItem(nSpring2020Other_ItemId) and Item_DelAllItemByType(nSpring2020Other_ItemId) then
		local sSpring2020Other_Log = string.format(tSpringFestival2020Other_Data["Log"][1], nSpring2020Other_ItemId, nSpring2020Other_ItemNum)
		Sys_SaveActionFestivalLog(sSpring2020Other_Log)
	end
end

-- 礼包使用
function SpringFestival2020Other_PackageUse(nSpring2020Other_ItemId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["Spring2020Other"]["ActivityTime"]) then
		SpringFestival2020Other_OutTimeDelItem(nSpring2020Other_ItemId)
		User_TalkChannel2005(tSpringFestival2020Other_Texy["Sys_Msg"]["OutTimeDel"])
		return
	end
	
	-- 判断背包空间
	local fSpring2020Other_Chk, nSpring2020Other_Space = RewardTemplate_ChkRandomSpace(tSpringFestival2020Other_Reward, nSpring2020Other_ItemId)
	if not fSpring2020Other_Chk then
		User_TalkChannel2005(string.format(tSpringFestival2020Other_Texy["Sys_Msg"]["NotSpace"], nSpring2020Other_Space))
		return
	end
	
	RewardTemplate_RandomReward(tSpringFestival2020Other_Reward, nSpring2020Other_ItemId)
end

-- 压岁钱红包使用
function SpringFestival2020Other_LuckyMoneyPackUse(nSpring2020Other_ItemId, nSpring2020Other_AddFuQi)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["Spring2020Other"]["ActivityTime"]) then
		SpringFestival2020Other_OutTimeDelItem(nSpring2020Other_ItemId)
		User_TalkChannel2005(tSpringFestival2020Other_Texy["Sys_Msg"]["OutTimeDel"])
		return
	end
	
	-- 判断背包空间
	local fSpring2020Other_Chk, nSpring2020Other_Space = RewardTemplate_ChkRandomSpace(tSpringFestival2020Other_Reward[nSpring2020Other_ItemId], 1)
	if not fSpring2020Other_Chk then
		User_TalkChannel2005(string.format(tSpringFestival2020Other_Texy["Sys_Msg"]["NotSpace"], nSpring2020Other_Space))
		return
	end
	
	-- 增加新年福气
	if RewardTemplate_RandomReward(tSpringFestival2020Other_Reward[nSpring2020Other_ItemId], 1) then
		SpringFestival2020Nian_AddFuQi(nSpring2020Other_AddFuQi)
	end
end


-- 金鼠报喜大礼包判断使用时间
function SpringFestival2020Other_AnnunciationPackageChkTime(nSpring2020Other_ItemId)
	-- 判断时间
	if CommonFunc_GetBeforeActivityTime(tActivityTime["Spring2020Other"]["PackageTime"][1]) then
		User_TalkChannel2005(tSpringFestival2020Other_Texy["Sys_Msg"]["BeforeTime"])
		return
	end
	if CommonFunc_GetAfterActivityTime(tActivityTime["Spring2020Other"]["PackageTime"][3]) then
		SpringFestival2020Other_OutTimeDelItem(nSpring2020Other_ItemId)
		User_TalkChannel2005(tSpringFestival2020Other_Texy["Sys_Msg"]["OutTimeDel"])
		return
	end
	-- 判断时间显示对白
	-- 1.17~1.23
	if Sys_ChkFullTime(tActivityTime["Spring2020Other"]["PackageTime"][1]) then
		-- 判断背包空间
		local fSpring2020Other_Chk, nSpring2020Other_Space = RewardTemplate_ChkRandomSpace(tSpringFestival2020Other_Reward[3327306], 1)
		if not fSpring2020Other_Chk then
			User_TalkChannel2005(string.format(tSpringFestival2020Other_Texy["Sys_Msg"]["NotSpace"], nSpring2020Other_Space))
			return
		end
		LinkItemGossipFunc_New(nSpring2020Other_ItemId, "1-1")
		return
	-- 1.24~2.2
	elseif Sys_ChkFullTime(tActivityTime["Spring2020Other"]["PackageTime"][2]) then
		-- 判断背包空间
		local fSpring2020Other_Chk, nSpring2020Other_Space = RewardTemplate_ChkRandomSpace(tSpringFestival2020Other_Reward[3327306], 2)
		if not fSpring2020Other_Chk then
			User_TalkChannel2005(string.format(tSpringFestival2020Other_Texy["Sys_Msg"]["NotSpace"], nSpring2020Other_Space))
			return
		end
		LinkItemGossipFunc_New(nSpring2020Other_ItemId, "2-1")
		return
	-- 2.3~2.9最后一波直接使用礼包
	else
		-- 判断背包空间
		local fSpring2020Other_Chk, nSpring2020Other_Space = RewardTemplate_ChkRandomSpace(tSpringFestival2020Other_Reward[3327306], 3)
		if not fSpring2020Other_Chk then
			User_TalkChannel2005(string.format(tSpringFestival2020Other_Texy["Sys_Msg"]["NotSpace"], nSpring2020Other_Space))
			return
		end
		-- 判断掩码是否隔天
		local nSpring2020Other_DayEvent = tSpringFestival2020Other_Data["Stc"]["Event"][2]
		local nSpring2020Other_DayData = tSpringFestival2020Other_Data["Stc"]["Data"][2]
		if Task_StcInterval(nSpring2020Other_DayEvent, nSpring2020Other_DayData, 1, 4) then
			Task_SetStatistic(nSpring2020Other_DayEvent, nSpring2020Other_DayData, 0, 1)
			Task_SetStcTimestamp(nSpring2020Other_DayEvent, nSpring2020Other_DayData, 0)
		end
		
		-- 判断今天是否领取过奖励
		if Task_ChkStcValue(nSpring2020Other_DayEvent, nSpring2020Other_DayData, ">", 0) then
			Sys_MsgBox(tSpringFestival2020Other_Texy["Sys_Msg"][3327306]["DayOpen"])
			return
		end
		if Task_SetStatistic(nSpring2020Other_DayEvent, nSpring2020Other_DayData, 1, 1) then
			Task_SetStcTimestamp(nSpring2020Other_DayEvent, nSpring2020Other_DayData, 0)
			local sSpring2020Other_UserName = Get_UserName()
			local tSpring2020Other_NewReward, sSpring2020Other_RewardStr = RewardTemplate_RandomReward(tSpringFestival2020Other_Reward[3327306], 3)
			local sSpring2020Other_BroadCastText = string.format(tSpringFestival2020Other_Texy["Sys_Msg"][3327306]["Broadast3"], sSpring2020Other_UserName, sSpring2020Other_RewardStr)
			Sys_SystemBroadcast(sSpring2020Other_BroadCastText)
		end
	end
end




-- 金鼠报喜大礼包使用
function SpringFestival2020Other_AnnunciationPackageUse(nSpring2020Other_ItemId, nSpring2020Other_Index)
	-- 判断时间
	if CommonFunc_GetBeforeActivityTime(tActivityTime["Spring2020Other"]["PackageTime"][1]) then
		User_TalkChannel2005(tSpringFestival2020Other_Texy["Sys_Msg"]["BeforeTime"])
		return
	end
	if CommonFunc_GetAfterActivityTime(tActivityTime["Spring2020Other"]["PackageTime"][3]) then
		SpringFestival2020Other_OutTimeDelItem(nSpring2020Other_ItemId)
		User_TalkChannel2005(tSpringFestival2020Other_Texy["Sys_Msg"]["OutTimeDel"])
		return
	end
	if not Sys_ChkFullTime(tActivityTime["Spring2020Other"]["PackageTime"][nSpring2020Other_Index]) then
		Sys_MsgBox(tSpringFestival2020Other_Texy["Sys_Msg"][3327306]["NotThisTime"])
		return
	end
	-- 判断掩码是否隔天
	local nSpring2020Other_DayEvent = tSpringFestival2020Other_Data["Stc"]["Event"][2]
	local nSpring2020Other_DayData = tSpringFestival2020Other_Data["Stc"]["Data"][2]
	if Task_StcInterval(nSpring2020Other_DayEvent, nSpring2020Other_DayData, 1, 4) then
		Task_SetStatistic(nSpring2020Other_DayEvent, nSpring2020Other_DayData, 0, 1)
		Task_SetStcTimestamp(nSpring2020Other_DayEvent, nSpring2020Other_DayData, 0)
	end
	
	-- 判断今天是否领取过奖励
	if Task_ChkStcValue(nSpring2020Other_DayEvent, nSpring2020Other_DayData, ">", 0) then
		Sys_MsgBox(tSpringFestival2020Other_Texy["Sys_Msg"][3327306]["DayOpen"])
		return
	end
	
	
	-- 判断背包空间
	local fSpring2020Other_Chk, nSpring2020Other_Space = RewardTemplate_ChkRandomSpace(tSpringFestival2020Other_Reward[3327306], nSpring2020Other_Index)
	if not fSpring2020Other_Chk then
		User_TalkChannel2005(string.format(tSpringFestival2020Other_Texy["Sys_Msg"]["NotSpace"], nSpring2020Other_Space))
		return
	end
	
	-- 设置掩码获取奖励
	if Task_SetStatistic(nSpring2020Other_DayEvent, nSpring2020Other_DayData, 1, 1) then
		Task_SetStcTimestamp(nSpring2020Other_DayEvent, nSpring2020Other_DayData, 0)
		if RewardTemplate_RandomReward(tSpringFestival2020Other_Reward[3327306], nSpring2020Other_Index) then
			local nSpring2020Other_AddFuQi = 0
			-- 随机得到的新年福气
			if nSpring2020Other_Index == 1 then
				local nSpring2020Other_RandomNum = math.random(1, 10)
				if nSpring2020Other_RandomNum <= 7 then
					nSpring2020Other_AddFuQi = tSpringFestival2020Other_Data[3327306][1][1]
				else
					nSpring2020Other_AddFuQi = tSpringFestival2020Other_Data[3327306][1][2]
					-- 出公告
					local sSpring2020Other_WinnerMsg = string.format(tSpringFestival2020Other_Texy["Sys_Msg"][3327306]["Broadast1"], Get_UserName(), nSpring2020Other_AddFuQi)
					Sys_SystemBroadcast(sSpring2020Other_WinnerMsg)
				end
				
			else
				local nSpring2020Other_UserFuQi = SpringFestival2020Nian_GetFuQi()
				-- local nSpring2020Other_UserFuQi = 999
				if nSpring2020Other_UserFuQi >= 1000 then
					local nSpring2020Other_RandomNum = math.random(1, 5)
					if nSpring2020Other_RandomNum <= 4 then
						nSpring2020Other_AddFuQi = tSpringFestival2020Other_Data[3327306][2][1]
					else
						nSpring2020Other_AddFuQi = tSpringFestival2020Other_Data[3327306][2][2]
						-- 出公告
						local sSpring2020Other_WinnerMsg = string.format(tSpringFestival2020Other_Texy["Sys_Msg"][3327306]["Broadast1"], Get_UserName(), nSpring2020Other_AddFuQi)
						Sys_SystemBroadcast(sSpring2020Other_WinnerMsg)
					end
				else
					local nSpring2020Other_RandomNum = math.random(1, 10)
					if nSpring2020Other_RandomNum <= 4 then
						nSpring2020Other_AddFuQi = tSpringFestival2020Other_Data[3327306][2][1]
					elseif nSpring2020Other_RandomNum <= 5 then
						nSpring2020Other_AddFuQi = tSpringFestival2020Other_Data[3327306][2][2]
						-- 出公告
						local sSpring2020Other_WinnerMsg = string.format(tSpringFestival2020Other_Texy["Sys_Msg"][3327306]["Broadast1"], Get_UserName(), nSpring2020Other_AddFuQi)
						Sys_SystemBroadcast(sSpring2020Other_WinnerMsg)
					else
						nSpring2020Other_AddFuQi = tSpringFestival2020Other_Data[3327306][2][3]
						-- 出公告
						local sSpring2020Other_WinnerMsg = string.format(tSpringFestival2020Other_Texy["Sys_Msg"][3327306]["Broadast1"], Get_UserName(), nSpring2020Other_AddFuQi)
						Sys_SystemBroadcast(sSpring2020Other_WinnerMsg)
					end
				end
			end
			-- 增加福气值
			SpringFestival2020Nian_AddFuQi(nSpring2020Other_AddFuQi)
		end
	end
end

-- 判断随机的数值
-- 概率30.00%     95%	折扣
-- 概率50.00%     90%	折扣
-- 概率15.00%     85%	折扣
-- 概率5.00%      80%	折扣
function SpringFestival2020Other_GetRandomCount(nSpring2020Other_RandomNum)
	if nSpring2020Other_RandomNum <= 30 then
		return 1
	elseif nSpring2020Other_RandomNum <= 80 then
		return 2
	elseif nSpring2020Other_RandomNum <= 95 then
		return 3
	else
		return 4
	end
end

-- 随机折扣与外套
function SpringFestival2020Other_RandomDiscountAndCloth()
	local nSpring2020Other_Discount1 = 1
	local nSpring2020Other_Cloth1 = 1
	local nSpring2020Other_Discount2 = 2
	local nSpring2020Other_Cloth2 = 2
	-- 随机折扣
	local nSpring2020Other_RandomNum1  = math.random(1, 100)
	nSpring2020Other_Discount1 = SpringFestival2020Other_GetRandomCount(nSpring2020Other_RandomNum1)
	local nSpring2020Other_RandomNum2  = math.random(1, 100)
	nSpring2020Other_Discount2 = SpringFestival2020Other_GetRandomCount(nSpring2020Other_RandomNum2)
	
	-- 随机外套
	local tSpring2020Other_Cloth = {1, 2, 3, 4, 5, 6}
	local nSpring2020Other_RandomNum1 = math.random(1, 6)
	nSpring2020Other_Cloth1 = tSpring2020Other_Cloth[nSpring2020Other_RandomNum1]
	tSpring2020Other_Cloth[nSpring2020Other_Cloth1] = tSpring2020Other_Cloth[6]
	local nSpring2020Other_RandomNum2 = math.random(1, 5)
	nSpring2020Other_Cloth2 = tSpring2020Other_Cloth[nSpring2020Other_RandomNum2]
	
	return nSpring2020Other_Discount1, nSpring2020Other_Cloth1, nSpring2020Other_Discount2, nSpring2020Other_Cloth2
end

-- 设置新年时装福禄包折扣掩码
function SpringFestival2020Other_SetClothWarePackageStc()
	local nSpring2020Other_ClothEvent = tSpringFestival2020Other_Data["Stc"]["Event"][1]
	local nSpring2020Other_ClothData = tSpringFestival2020Other_Data["Stc"]["Data"][1]
	-- 随机获取折扣值和外套
	local nSpring2020Other_Discount1, nSpring2020Other_Cloth1, nSpring2020Other_Discount2, nSpring2020Other_Cloth2 = SpringFestival2020Other_RandomDiscountAndCloth()
	-- User_TalkChannel2005("nSpring2020Other_Discount1=" .. nSpring2020Other_Discount1)
	-- User_TalkChannel2005("nSpring2020Other_Cloth1=" .. nSpring2020Other_Cloth1)
	-- User_TalkChannel2005("nSpring2020Other_Discount2=" .. nSpring2020Other_Discount2)
	-- User_TalkChannel2005("nSpring2020Other_Cloth2=" .. nSpring2020Other_Cloth2)
	
	local nSpring2020Other_SaveNum = nSpring2020Other_Discount1 * 1000 + nSpring2020Other_Cloth1 * 100 + nSpring2020Other_Discount2 * 10 + nSpring2020Other_Cloth2
	if Task_SetStatistic(nSpring2020Other_ClothEvent, nSpring2020Other_ClothData, nSpring2020Other_SaveNum, 1) then
		Task_SetStcTimestamp(nSpring2020Other_ClothEvent, nSpring2020Other_ClothData, 0)
		return true
	end
	return false
end

-- 时装礼包使用
function SpringFestival2020Other_ClothWarePackageUse(nSpring2020Other_ItemId)
	-- 判断活动时间
	-- if not Sys_ChkFullTime(tActivityTime["Spring2020Other"]["ActivityTime"]) then
		-- SpringFestival2020Other_OutTimeDelItem(nSpring2020Other_ItemId)
		-- User_TalkChannel2005(tSpringFestival2020Other_Texy["Sys_Msg"]["OutTimeDel"])
		-- return
	-- end
	-- 判断掩码是否隔天
	local nSpring2020Other_ClothEvent = tSpringFestival2020Other_Data["Stc"]["Event"][1]
	local nSpring2020Other_ClothData = tSpringFestival2020Other_Data["Stc"]["Data"][1]
	if Task_StcInterval(nSpring2020Other_ClothEvent, nSpring2020Other_ClothData, 1, 4) then
		Task_SetStatistic(nSpring2020Other_ClothEvent, nSpring2020Other_ClothData, 0, 1)
		Task_SetStcTimestamp(nSpring2020Other_ClothEvent, nSpring2020Other_ClothData, 0)
	end
	-- 判断如果掩码为0则设置折扣掩码
	if Task_ChkStcValue(nSpring2020Other_ClothEvent, nSpring2020Other_ClothData, "==", 0) then
		-- User_TalkChannel2005("11")
		if not SpringFestival2020Other_SetClothWarePackageStc() then
			return
		end
	end
	-- User_TalkChannel2005("22")
	LinkItemGossipFunc_New(nSpring2020Other_ItemId, "1-1")
end

-- 时装礼包使用二次确认
function SpringFestival2020Other_ClothWarePackageSecondChk(nSpring2020Other_ItemId, nSpring2020Other_Cloth, nSpring2020Other_Discount)
	-- 判断是否拥有物品
	if not Item_ChkAccItem(nSpring2020Other_ItemId) then
		return
	end
	
	-- 判断天石是否充足
	local nSpring2020Other_Pirce = tSpringFestival2020Other_Data[3327304]["DiscountPrice"][nSpring2020Other_Discount]
	local nSpring2020Other_UserEMoney = Get_UserEMoney()
	if nSpring2020Other_UserEMoney < nSpring2020Other_Pirce then
		LinkItemGossipFunc_New(nSpring2020Other_ItemId, "2-1")
		return
	end
	
	local sSpring2020Other_ClothName = tSpringFestival2020Other_Texy["DialogOption"][3327304][nSpring2020Other_Cloth]
	local sSpring2020Other_DisCount = tSpringFestival2020Other_Data[3327304]["Discount"][nSpring2020Other_Discount]
	
	tItem[3327304]["Text311"] = string.format(tSpringFestival2020Other_Texy[3327304]["Text311"], nSpring2020Other_Pirce, tostring(sSpring2020Other_DisCount), tostring(sSpring2020Other_ClothName))
	
	tItem[3327304]["Option311"] = string.format(tSpringFestival2020Other_Texy[3327304]["Option311"], nSpring2020Other_Pirce)
	
	tItem[3327304]["OptionFunc311"] = "SpringFestival2020Other_ClothWarePackageBuyCoat</N>" .. nSpring2020Other_ItemId .. "</N>" .. nSpring2020Other_Cloth .. "</N>" .. nSpring2020Other_Pirce
	
	LinkItemGossipFunc_New(nSpring2020Other_ItemId, "3-1")
end

-- 时装礼包确认购买
function SpringFestival2020Other_ClothWarePackageBuyCoat(nSpring2020Other_ItemId, nSpring2020Other_Cloth, nSpring2020Other_Pirce)
	-- 判断是否拥有物品
	if not Item_ChkAccItem(nSpring2020Other_ItemId) then
		return
	end
	
	-- 判断天石是否充足
	local nSpring2020Other_UserEMoney = Get_UserEMoney()
	if nSpring2020Other_UserEMoney < nSpring2020Other_Pirce then
		LinkItemGossipFunc_New(nSpring2020Other_ItemId, "2-1")
		return
	end
	-- 判断条件
	local nSpring2020Other_UserId = Get_UserId()
	local bSpring2020Other_Judge = TermsOfUse_Main(nSpring2020Other_ItemId, tSpringFestival2020Other_Reward[nSpring2020Other_ItemId][nSpring2020Other_Cloth])
	if not bSpring2020Other_Judge then
		return
	end
	-- 扣除天石
	if not User_AddEMoney(-nSpring2020Other_Pirce) then
		return
	end
	Sys_SaveEmoneyBuy(string.format(tSpringFestival2020Other_Data["EmoneyLog"][3327304], nSpring2020Other_Pirce, nSpring2020Other_Pirce))
	
	if RewardTemplate_UseItemAndMsg(tSpringFestival2020Other_Reward[nSpring2020Other_ItemId][nSpring2020Other_Cloth], nSpring2020Other_UserId, bSpring2020Other_Judge) then
		local nSpring2020Other_ClothEvent = tSpringFestival2020Other_Data["Stc"]["Event"][1]
		local nSpring2020Other_ClothData = tSpringFestival2020Other_Data["Stc"]["Data"][1]
		Task_SetStatistic(nSpring2020Other_ClothEvent, nSpring2020Other_ClothData, 0, 1)
		Task_SetStcTimestamp(nSpring2020Other_ClothEvent, nSpring2020Other_ClothData, 0)
		SpringFestival2020Other_AddAdditionalFuQi(nSpring2020Other_ItemId, nSpring2020Other_UserId)
	end
end


-- 春节新衣回归礼盒， 春节萌宠回归礼盒， 新年光效坐骑外套可选包
function SpringFestival2020Other_TheNewWarePackage(nSpring2020Other_ItemId, nSpring2020Other_Choose)
	-- 判断是否拥有物品
	if not Item_ChkAccItem(nSpring2020Other_ItemId) then
		return
	end
	-- 判断条件
	local nSpring2020Other_UserId = Get_UserId()
	local bSpring2020Other_Judge = TermsOfUse_Main(nSpring2020Other_ItemId, tSpringFestival2020Other_Reward[nSpring2020Other_ItemId][nSpring2020Other_Choose])
	if not bSpring2020Other_Judge then
		return
	end
	
	if RewardTemplate_UseItemAndMsg(tSpringFestival2020Other_Reward[nSpring2020Other_ItemId][nSpring2020Other_Choose], nSpring2020Other_UserId, bSpring2020Other_Judge) then
		SpringFestival2020Other_AddAdditionalFuQi(nSpring2020Other_ItemId, nSpring2020Other_UserId)
	end
end


-- 【新年光效坐骑外套名】碎片
function SpringFestival2020Other_MountsChipUse(nSpring2020Other_ItemId, nSpring2020Other_Choose)
	-- 判断是否拥有足够的物品
	local nSpring2020Other_NeedNum = tSpringFestival2020Other_Data["NeedNum"][nSpring2020Other_ItemId]
	if not Item_ChkMulItem(nSpring2020Other_ItemId, nSpring2020Other_ItemId, nSpring2020Other_NeedNum) then
		Sys_MsgBox(tSpringFestival2020Other_Texy["Sys_Msg"][3327314]["NotEnoughNum"])
		return
	end
	-- 判断条件
	local nSpring2020Other_UserId = Get_UserId()
	local bSpring2020Other_Judge = TermsOfUse_Main(nSpring2020Other_ItemId, tSpringFestival2020Other_Reward[nSpring2020Other_ItemId][nSpring2020Other_Choose])
	if not bSpring2020Other_Judge then
		return
	end
	
	if RewardTemplate_UseItemAndMsg(tSpringFestival2020Other_Reward[nSpring2020Other_ItemId][nSpring2020Other_Choose], nSpring2020Other_UserId, bSpring2020Other_Judge) then
		User_TalkChannel2005(tSpringFestival2020Other_Texy["Sys_Msg"][3327314][nSpring2020Other_Choose])
	end
end

-- 鼠年红包使用
function SpringFestival2020Other_MouseRedEnvelopes(nSpring2020Other_ItemId)
	-- 判断活动时间
	-- if not Sys_ChkFullTime(tActivityTime["Spring2020Other"]["ActivityTime"]) then
		-- SpringFestival2020Other_OutTimeDelItem(nSpring2020Other_ItemId)
		-- User_TalkChannel2005(tSpringFestival2020Other_Texy["Sys_Msg"]["OutTimeDel"])
		-- return
	-- end
	
	local nSpring2020Other_Index  =math.random(1,8)
	local sSpring2020Other_Word = tSpringFestival2020Other_Texy["Pwd"][nSpring2020Other_Index]
	local nSpring2020Other_UserId = Get_UserId()
	local sSpring2020Other_UserName = Get_UserName(nSpring2020Other_UserId)
	local nSpring2020Other_RedType = tSpringFestival2020Other_Data[nSpring2020Other_ItemId]["RedType"]
	local nSpring2020Other_Type = tSpringFestival2020Other_Data[nSpring2020Other_ItemId]["nType"]
	local nSpring2020Other_MoneyType = tSpringFestival2020Other_Data[nSpring2020Other_ItemId]["nMoneyType"]
	local nSpring2020Other_MoneyNum = tSpringFestival2020Other_Data[nSpring2020Other_ItemId]["nMoneyNum"]
	local nSpring2020Other_ManyNum = tSpringFestival2020Other_Data[nSpring2020Other_ItemId]["nManyNum"]
	
	-- 判断条件
	local nSpring2020Other_UserId = Get_UserId()
	local bSpring2020Other_Judge = TermsOfUse_Main(nSpring2020Other_ItemId, tSpringFestival2020Other_Reward[nSpring2020Other_ItemId])
	if not bSpring2020Other_Judge then
		return
	end
	
	if RewardTemplate_UseItemAndMsg(tSpringFestival2020Other_Reward[nSpring2020Other_ItemId], nSpring2020Other_UserId, bSpring2020Other_Judge) then
		if Sys_ChkFullTime(tActivityTime["Spring2020Other"]["ActivityTime"]) then
			local nSpring2020Other_AddFuQi = tSpringFestival2020Other_Data[nSpring2020Other_ItemId]["AddFuQi"]
			SpringFestival2020Nian_AddFuQi(nSpring2020Other_AddFuQi)
			User_TalkChannel2005(tSpringFestival2020Other_Texy["Sys_Msg"][nSpring2020Other_ItemId]["MsgTalk"])
		end
		-- Sys_SystemBroadcast(string.format(tSpringFestival2020Other_Texy["Sys_Msg"][nSpring2020Other_ItemId]["BroadCast"], sSpring2020Other_UserName))
	end
	
end



-- 春节财神宝盒使用
function SpringFestival2020Other_MammonPackageUseChk(nSpring2020Other_ItemId, sSpring2020Other_Choose)
	-- 判断是否拥有物品
	if not Item_ChkAccItem(nSpring2020Other_ItemId) then
		return
	end
	-- 判断是否拥有新春密钥
	local nSpring2020Other_Key = tSpringFestival2020Other_Data[3327373]["NeedKey"]
	if not Item_ChkAccItem(nSpring2020Other_Key) then
		LinkItemGossipFunc_New(nSpring2020Other_ItemId, "5-1")
		return
	end
	-- 跳转二次确认
	LinkItemGossipFunc_New(nSpring2020Other_ItemId, sSpring2020Other_Choose)
end


-- 确认打开礼盒
function SpringFestival2020Other_MammonPackageConfirmUse(nSpring2020Other_ItemId, nSpring2020Other_Choose)
	-- 判断是否拥有物品
	if not Item_ChkAccItem(nSpring2020Other_ItemId) then
		return
	end
	-- 判断是否拥有新春密钥
	local nSpring2020Other_Key = tSpringFestival2020Other_Data[3327373]["NeedKey"]
	if not Item_ChkAccItem(nSpring2020Other_Key) then
		LinkItemGossipFunc_New(nSpring2020Other_ItemId, "5-1")
		return
	end
	-- 判断是否第一次打开礼盒
	local nSpring2020Other_UseEvent = tSpringFestival2020Other_Data["Stc"]["Event"][3]
	local nSpring2020Other_UseData = tSpringFestival2020Other_Data["Stc"]["Data"][3]
	local nSpring2020Other_Index = 1
	if Task_ChkStcValue(nSpring2020Other_UseEvent, nSpring2020Other_UseData, "==", 0) then
		nSpring2020Other_Index = 2
	end
	
	-- 判断背包空间
	local fSpring2020Other_Chk, nSpring2020Other_Space = RewardTemplate_ChkRandomSpace(tSpringFestival2020Other_Reward[3327373][nSpring2020Other_Index], nSpring2020Other_Choose)
	if not fSpring2020Other_Chk then
		User_TalkChannel2005(string.format(tSpringFestival2020Other_Texy["Sys_Msg"]["NotSpace"], nSpring2020Other_Space))
		return
	end
	
	-- 设置掩码打开礼盒
	if Task_SetStatistic(nSpring2020Other_UseEvent, nSpring2020Other_UseData, 1, 1) then
		Task_SetStcTimestamp(nSpring2020Other_UseEvent, nSpring2020Other_UseData, 0)
		-- if not Item_DelItem(nSpring2020Other_Key) then
			-- return
		-- end
		local tSpring2020Other_NewReward, sSpring2020Other_RewardStr = RewardTemplate_RandomReward(tSpringFestival2020Other_Reward[3327373][nSpring2020Other_Index], nSpring2020Other_Choose)
		if not tSpring2020Other_NewReward then
			return
		end
		if nSpring2020Other_Index == 2 then
			Sys_MsgBox(string.format(tSpringFestival2020Other_Texy["Sys_Msg"][3327373]["FirstReward"], tostring(sSpring2020Other_RewardStr)))
		else
			Sys_MsgBox(string.format(tSpringFestival2020Other_Texy["Sys_Msg"][3327373]["Reward"], tostring(sSpring2020Other_RewardStr)))
		end
	end
end

-- 直接打开礼盒
function SpringFestival2020Other_MammonPackageDirectUse(nSpring2020Other_ItemId, nSpring2020Other_Choose)
	-- 判断是否拥有物品
	if not Item_ChkAccItem(nSpring2020Other_ItemId) then
		return
	end
	-- 判断是否第一次打开礼盒
	local nSpring2020Other_UseEvent = tSpringFestival2020Other_Data["Stc"]["Event"][3]
	local nSpring2020Other_UseData = tSpringFestival2020Other_Data["Stc"]["Data"][3]
	local nSpring2020Other_Index = 1
	if Task_ChkStcValue(nSpring2020Other_UseEvent, nSpring2020Other_UseData, "==", 0) then
		nSpring2020Other_Index = 2
	end
	-- 判断条件
	local nSpring2020Other_UserId = Get_UserId()
	local bSpring2020Other_Judge = TermsOfUse_Main(nSpring2020Other_ItemId, tSpringFestival2020Other_Reward[nSpring2020Other_ItemId][nSpring2020Other_Index][nSpring2020Other_Choose])
	if not bSpring2020Other_Judge then
		return
	end
	-- 设置掩码打开礼盒
	if Task_SetStatistic(nSpring2020Other_UseEvent, nSpring2020Other_UseData, 1, 1) then
		Task_SetStcTimestamp(nSpring2020Other_UseEvent, nSpring2020Other_UseData, 0)
		local bSpring2020Other_Flag,sSpring2020Other_RewardStr = RewardTemplate_UseItemAndMsg(tSpringFestival2020Other_Reward[nSpring2020Other_ItemId][nSpring2020Other_Index][nSpring2020Other_Choose])
		if not bSpring2020Other_Flag then
			return
		end
		if nSpring2020Other_Index == 2 then
			Sys_MsgBox(string.format(tSpringFestival2020Other_Texy["Sys_Msg"][3327373]["FirstReward"], sSpring2020Other_RewardStr))
		else
			Sys_MsgBox(string.format(tSpringFestival2020Other_Texy["Sys_Msg"][3327373]["Reward"], sSpring2020Other_RewardStr))
		end
	end
end

-- 判断地图
function SpringFestival2020Other_ChkUserMap(nSpring2020Other_UserId)
	local nSpring2020Other_UserMap = Get_UserMapId(nSpring2020Other_UserId)
	for i = 1, 4 do
		local nSpring2020Other_ChgMap =  tSpringFestival2020Other_Data["ChkMap"][i]
		if nSpring2020Other_UserMap == nSpring2020Other_ChgMap then
			return true
		end
	end
	return false
end

-- 互动选项  拜年
function SpringFestival2020Other_InteractionChoose(nSpring2020Other_SelfUserId, nSpring2020Other_TargetUserId, nSpring2020Other_MainType, nSpring2020Other_SubType)
	-- User_TalkChannel2005("11", nSpring2020Other_SelfUserId)
	-- User_TalkChannel2005("11", nSpring2020Other_TargetUserId)
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tSpringFestival2020Other_Data["Level"], tSpringFestival2020Other_Data["Meto"], nSpring2020Other_SelfUserId) then
		Sys_MsgBox(tSpringFestival2020Other_Texy["Sys_Msg"]["NewYearFalseLev"][1], nil, nil, nSpring2020Other_SelfUserId)
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tSpringFestival2020Other_Data["Level"], tSpringFestival2020Other_Data["Meto"], nSpring2020Other_TargetUserId) then
		Sys_MsgBox(tSpringFestival2020Other_Texy["Sys_Msg"]["NewYearFalseLev"][1], nil, nil, nSpring2020Other_TargetUserId)
		return
	end
	
	-- 判断玩家地图
	if not SpringFestival2020Other_ChkUserMap(nSpring2020Other_SelfUserId) then
		return
	end
	if not SpringFestival2020Other_ChkUserMap(nSpring2020Other_TargetUserId) then
		return
	end
	
	-- 选择给
	if nSpring2020Other_SubType == 2 then
		SpringFestival2020Other_RefuseChoose(nSpring2020Other_SelfUserId, nSpring2020Other_TargetUserId)
	end
	
	-- 选择不给
	if nSpring2020Other_SubType == 1 then
		SpringFestival2020Other_HappyNewYear(nSpring2020Other_SelfUserId, nSpring2020Other_TargetUserId)
	end
end

-- 拒绝拜年
function SpringFestival2020Other_RefuseChoose(nSpring2020Other_SelfUserId, nSpring2020Other_TargetUserId)
	User_TalkChannel2005(tSpringFestival2020Other_Texy["Sys_Msg"]["Refuse"], nSpring2020Other_TargetUserId)
end

-- 选择拜年
function SpringFestival2020Other_HappyNewYear(nSpring2020Other_SelfUserId, nSpring2020Other_TargetUserId)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["Spring2020Other"]["ActivityTime"]) then
		return
	end
	-- User_TalkChannel2005("00", nSpring2020Other_SelfUserId)
	-- User_TalkChannel2005("00", nSpring2020Other_TargetUserId)
	-- 发起方背包空间不足
	local nSpring2020Other_RedPacketSpace = RewardTemplate_GetRewardSpace(tSpringFestival2020Other_Reward[3600213][2], nSpring2020Other_SelfUserId)
	if not User_CheckLeftSpace(nSpring2020Other_RedPacketSpace, nSpring2020Other_SelfUserId) then
		User_TalkChannel2005(tSpringFestival2020Other_Texy["Sys_Msg"]["SelfPack"], nSpring2020Other_SelfUserId)
		User_TalkChannel2005(tSpringFestival2020Other_Texy["Sys_Msg"]["OtherPack"], nSpring2020Other_TargetUserId)
		return
	end
	
	-- 选择方背包空间不足
	if not User_CheckLeftSpace(nSpring2020Other_RedPacketSpace, nSpring2020Other_TargetUserId) then
		User_TalkChannel2005(tSpringFestival2020Other_Texy["Sys_Msg"]["SelfPack"], nSpring2020Other_TargetUserId)
		User_TalkChannel2005(tSpringFestival2020Other_Texy["Sys_Msg"]["OtherPack"], nSpring2020Other_SelfUserId)
		return
	end
	
	local nSpring2020Other_TaskId = tSpringFestival2020Other_Data["OldTaskId"]
	-- 设置掩码给红包
	if not Task_ChkTaskDetail(nSpring2020Other_TaskId, nSpring2020Other_SelfUserId) then
		if Task_AddTaskDetail(nSpring2020Other_TaskId,0,nSpring2020Other_SelfUserId) then
			local nSpring2020Other_DropNum2 = Get_TaskDetailData6(nSpring2020Other_TaskId, nSpring2020Other_SelfUserId)
			-- 使用data6判断隔天，如果为0则修改为1  为0表示隔天，并把之前的需要隔天重置的数值修改
			if nSpring2020Other_DropNum2 == 0 then
				Task_SetTaskDetailData4(nSpring2020Other_TaskId, 0, nSpring2020Other_SelfUserId)
				Task_SetTaskDetailData5(nSpring2020Other_TaskId, 0, nSpring2020Other_SelfUserId)
				Task_SetTaskDetailData6(nSpring2020Other_TaskId, 1, nSpring2020Other_SelfUserId)
			end
			local nSpring2020Other_DataCake1 = Get_TaskDetailData4(nSpring2020Other_TaskId, nSpring2020Other_SelfUserId)
			if nSpring2020Other_DataCake1 < tSpringFestival2020Other_Data["AwardRedPack"] and Task_SetTaskDetailData4(nSpring2020Other_TaskId, nSpring2020Other_DataCake1 + 1, nSpring2020Other_SelfUserId) then
				RewardTemplate_UseItemAndMsg(tSpringFestival2020Other_Reward[3600213][2], nSpring2020Other_SelfUserId)
			else
				User_TalkChannel2005(tSpringFestival2020Other_Texy["Sys_Msg"]["FullTime"], nSpring2020Other_SelfUserId)
			end
		end
	else
		local nSpring2020Other_DropNum2 = Get_TaskDetailData6(nSpring2020Other_TaskId, nSpring2020Other_SelfUserId)
		-- 使用data6判断隔天，如果为0则修改为1  为0表示隔天，并把之前的需要隔天重置的数值修改
		if nSpring2020Other_DropNum2 == 0 then
			Task_SetTaskDetailData4(nSpring2020Other_TaskId, 0, nSpring2020Other_SelfUserId)
			Task_SetTaskDetailData5(nSpring2020Other_TaskId, 0, nSpring2020Other_SelfUserId)
			Task_SetTaskDetailData6(nSpring2020Other_TaskId, 1, nSpring2020Other_SelfUserId)
		end
		local nSpring2020Other_DataCake1 = Get_TaskDetailData4(nSpring2020Other_TaskId, nSpring2020Other_SelfUserId)
		if nSpring2020Other_DataCake1 < tSpringFestival2020Other_Data["AwardRedPack"] and Task_SetTaskDetailData4(nSpring2020Other_TaskId, nSpring2020Other_DataCake1 + 1, nSpring2020Other_SelfUserId) then
			RewardTemplate_UseItemAndMsg(tSpringFestival2020Other_Reward[3600213][2], nSpring2020Other_SelfUserId)
		else
			User_TalkChannel2005(tSpringFestival2020Other_Texy["Sys_Msg"]["FullTime"], nSpring2020Other_SelfUserId)
		end
	end
	
	-- 设置掩码给红包
	if not Task_ChkTaskDetail(nSpring2020Other_TaskId, nSpring2020Other_TargetUserId) then
		if Task_AddTaskDetail(nSpring2020Other_TaskId,0, nSpring2020Other_TargetUserId) then
			local nSpring2020Other_DropNum2 = Get_TaskDetailData6(nSpring2020Other_TaskId, nSpring2020Other_TargetUserId)
			-- 使用data6判断隔天，如果为0则修改为1  为0表示隔天，并把之前的需要隔天重置的数值修改
			if nSpring2020Other_DropNum2 == 0 then
				Task_SetTaskDetailData4(nSpring2020Other_TaskId, 0, nSpring2020Other_TargetUserId)
				Task_SetTaskDetailData5(nSpring2020Other_TaskId, 0, nSpring2020Other_TargetUserId)
				Task_SetTaskDetailData6(nSpring2020Other_TaskId, 1, nSpring2020Other_TargetUserId)
			end
			local nSpring2020Other_DataCake1 = Get_TaskDetailData4(nSpring2020Other_TaskId, nSpring2020Other_TargetUserId)
			if nSpring2020Other_DataCake1 < tSpringFestival2020Other_Data["AwardRedPack"] and Task_SetTaskDetailData4(nSpring2020Other_TaskId, nSpring2020Other_DataCake1 + 1, nSpring2020Other_TargetUserId) then
				RewardTemplate_UseItemAndMsg(tSpringFestival2020Other_Reward[3600213][2], nSpring2020Other_TargetUserId)
			else
				User_TalkChannel2005(tSpringFestival2020Other_Texy["Sys_Msg"]["FullTime"], nSpring2020Other_TargetUserId)
			end
		end
	else
		local nSpring2020Other_DropNum2 = Get_TaskDetailData6(nSpring2020Other_TaskId, nSpring2020Other_TargetUserId)
		-- 使用data6判断隔天，如果为0则修改为1  为0表示隔天，并把之前的需要隔天重置的数值修改
		if nSpring2020Other_DropNum2 == 0 then
			Task_SetTaskDetailData4(nSpring2020Other_TaskId, 0, nSpring2020Other_TargetUserId)
			Task_SetTaskDetailData5(nSpring2020Other_TaskId, 0, nSpring2020Other_TargetUserId)
			Task_SetTaskDetailData6(nSpring2020Other_TaskId, 1, nSpring2020Other_TargetUserId)
		end
		local nSpring2020Other_DataCake1 = Get_TaskDetailData4(nSpring2020Other_TaskId, nSpring2020Other_TargetUserId)
		if nSpring2020Other_DataCake1 < tSpringFestival2020Other_Data["AwardRedPack"] and Task_SetTaskDetailData4(nSpring2020Other_TaskId, nSpring2020Other_DataCake1 + 1, nSpring2020Other_TargetUserId) then
			RewardTemplate_UseItemAndMsg(tSpringFestival2020Other_Reward[3600213][2], nSpring2020Other_TargetUserId)
		else
			User_TalkChannel2005(tSpringFestival2020Other_Texy["Sys_Msg"]["FullTime"], nSpring2020Other_TargetUserId)
		end
	end
end


-- 上线获得奖励
function SpringFestival2020Other_UserLogin()
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["Spring2020Other"]["ActivityTime"]) then
		return
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tSpringFestival2020Other_Data["Level"], tSpringFestival2020Other_Data["Meto"], nSpring2020Other_SelfUserId) then
		return
	end
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		return
	end
	-- 判断是否领取过奖励
	local nSpring2020Other_LoginEvent = tSpringFestival2020Other_Data["Stc"]["Event"][4]
	local nSpring2020Other_LoginData = tSpringFestival2020Other_Data["Stc"]["Data"][4]
	if Task_ChkStcValue(nSpring2020Other_LoginEvent, nSpring2020Other_LoginData, ">", 0) then
		return
	end
	-- 打掩码给奖励
	if Task_SetStatistic(nSpring2020Other_LoginEvent, nSpring2020Other_LoginData, 1, 1) then
		Task_SetStcTimestamp(nSpring2020Other_LoginEvent, nSpring2020Other_LoginData, 0)
		RewardTemplate_UseItemAndMsg(tSpringFestival2020Other_Reward[3327306][4])
	end
	
end

-- 击杀跨服怪物
function SpringFestival2020Other_CrossKillMonster(nSpring2020Other_MonsterId)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["Spring2020Other"]["ActivityTime"]) then
		return
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tSpringFestival2020Other_Data["Level"], tSpringFestival2020Other_Data["Meto"], nSpring2020Other_UserId) then
		return
	end
	
	local nSpring2020Other_UserId = Get_UserId()
	local nSpring2020Other_TaskId = tSpringFestival2020Other_Data["OldTaskId"]
	-- 判断有没有taskid
	if not Task_ChkTaskDetail(nSpring2020Other_TaskId, nSpring2020Other_UserId) then
		Task_AddTaskDetail(nSpring2020Other_TaskId,0,nSpring2020Other_UserId)
	else
		-- 判断是否隔天
		local nSpring2020Other_DropNumChk = Get_TaskDetailData6(nSpring2020Other_TaskId, nSpring2020Other_UserId)
		-- 使用data6判断隔天，如果为0则修改为1  为0表示隔天，并把之前的掉落限量改掉
		if nSpring2020Other_DropNumChk == 0 then
			Task_SetTaskDetailData4(nSpring2020Other_TaskId, 0, nSpring2020Other_UserId)
			Task_SetTaskDetailData5(nSpring2020Other_TaskId, 0, nSpring2020Other_UserId)
			Task_SetTaskDetailData6(nSpring2020Other_TaskId, 1, nSpring2020Other_UserId)
		end	
	end
	
	-- 判断是否在跨服
	local nSpring2020Other_UserId = Get_UserId()
	local nSpring2020Other_ServerId = Get_UserServerId(nSpring2020Other_UserId)
	-- 不在跨服走奖励模板
	if not User_IsCross(nSpring2020Other_UserId) then
		-- 不在跨服则设置task记录杀怪数量
		local nSpring2020Other_KillTaskId = tSpringFestival2020Other_Data["MonthTaskId"][11]
		-- 拥有任务并且任务未完成
		if Task_ChkTaskDetail(nSpring2020Other_KillTaskId) then
			if Task_ChkTaskDetailValue(nSpring2020Other_KillTaskId, "CompleteFlag", "==", 0) then
				local nSpring2020Other_KillNum = Get_TaskDetailData1(nSpring2020Other_KillTaskId)
				-- 判断数量是否满足
				if nSpring2020Other_KillNum < 100 then
					if tSpringFestival2020Other_MonsterKillNum[nSpring2020Other_UserId] == nil then
						tSpringFestival2020Other_MonsterKillNum[nSpring2020Other_UserId] = 0
					end
					-- 先用临时表计数，在累加
					if tSpringFestival2020Other_MonsterKillNum[nSpring2020Other_UserId] >= 10 then
						tSpringFestival2020Other_MonsterKillNum[nSpring2020Other_UserId] = 0
						Task_SetTaskDetailData1(nSpring2020Other_KillTaskId, nSpring2020Other_KillNum + 10)
					else
						tSpringFestival2020Other_MonsterKillNum[nSpring2020Other_UserId] = tSpringFestival2020Other_MonsterKillNum[nSpring2020Other_UserId]  + 1
					end
				elseif nSpring2020Other_KillNum == 100 then
					if Task_SetTaskDetailData1(nSpring2020Other_KillTaskId, nSpring2020Other_KillNum + 1) then
						Sys_MsgBox(tSpringFestival2020Other_Texy["Sys_Msg"]["KillSucc"], "SpringFestival2020Other_FindTheNpc", nil)
					end
				end
			end
		end
		
		-- 击杀获得奖励  普通怪物随机奖励
		if nSpring2020Other_MonsterId == 5886 then
			-- 判断背包空间
			if not User_CheckLeftSpace(1, nSpring2020Other_UserId) then
				return
			end
			local nSpring2020Other_TaskId = tSpringFestival2020Other_Data["OldTaskId"]
			local fSpring2020Other_Chk,tSpring2020Other_Award = Probabil_RandomAward(tSpringFestival2020Other_Reward, nSpring2020Other_MonsterId)
			if tSpring2020Other_Award[1]["tAward"][1]["RewardItem"] == nil then
				return
			end
			local nSpring2020Other_ItemId = tSpring2020Other_Award[1]["tAward"][1]["RewardItem"][1]["Id"]
			local nSpring2020Other_DropNum2 = Get_TaskDetailData6(nSpring2020Other_TaskId, nSpring2020Other_UserId)
			-- 使用data6判断隔天，如果为0则修改为1  为0表示隔天，并把之前的掉落限量改掉
			if nSpring2020Other_DropNum2 == 0 then
				Task_SetTaskDetailData4(nSpring2020Other_TaskId, 0, nSpring2020Other_UserId)
				Task_SetTaskDetailData5(nSpring2020Other_TaskId, 0, nSpring2020Other_UserId)
				Task_SetTaskDetailData6(nSpring2020Other_TaskId, 1, nSpring2020Other_UserId)
				nSpring2020Other_DropNum2 = 1
			end
			local nSpring2020Other_DropNum1 = Get_TaskDetailData5(nSpring2020Other_TaskId, nSpring2020Other_UserId)
			-- 判断是否达到限量
			if nSpring2020Other_ItemId == tSpringFestival2020Other_Data["MonsterDrop"][5886][1] then
				if nSpring2020Other_DropNum1 ==  15 then
					Task_SetTaskDetailData5(nSpring2020Other_TaskId, nSpring2020Other_DropNum1 + 1, nSpring2020Other_UserId)
					Sys_MsgBox(tSpringFestival2020Other_Texy["Sys_Msg"]["DropFullNum"], nil, nil, nSpring2020Other_UserId)
					return
				elseif nSpring2020Other_DropNum1 > 15 then
					return
				end
			elseif nSpring2020Other_ItemId == tSpringFestival2020Other_Data["MonsterDrop"][5886][2] then
				if nSpring2020Other_DropNum2 >=  151 then
					return
				end
			else
				return
			end
			
			if nSpring2020Other_ItemId == tSpringFestival2020Other_Data["MonsterDrop"][5886][1] then
				if Item_AddItem(nSpring2020Other_ItemId) then
					Task_SetTaskDetailData5(nSpring2020Other_TaskId, nSpring2020Other_DropNum1 + 1, nSpring2020Other_UserId)
					local sSpring2020Other_Log = string.format(tSpringFestival2020Other_Data["Log"][nSpring2020Other_MonsterId], nSpring2020Other_ItemId)
					Sys_SaveActionFestivalLog(sSpring2020Other_Log)
				end
			else
				if Item_AddItem(nSpring2020Other_ItemId) then
					Task_SetTaskDetailData6(nSpring2020Other_TaskId, nSpring2020Other_DropNum2 + 1, nSpring2020Other_UserId)
					local sSpring2020Other_Log = string.format(tSpringFestival2020Other_Data["Log"][nSpring2020Other_MonsterId], nSpring2020Other_ItemId)
					Sys_SaveActionFestivalLog(sSpring2020Other_Log)
				end
			end
			
		else
			-- 判断背包空间
			local nNeedSpace = tSpringFestival2020Other_Data["MonsterDrop"][nSpring2020Other_MonsterId]["Space"]
			if not User_CheckLeftSpace(nNeedSpace, nSpring2020Other_UserId) then
				return
			end
			-- local fSpring2020Other_Chk, nSpring2020Other_Space = RewardTemplate_ChkRandomSpace(tSpringFestival2020Other_Reward, nSpring2020Other_ItemId)
			-- if not fSpring2020Other_Chk then
				-- return
			-- end
			-- local nSpring2020Other_TaskId = tSpringFestival2020Other_Data["OldTaskId"]
			RewardTemplate_UseItemAndMsg(tSpringFestival2020Other_Reward[nSpring2020Other_MonsterId])
			-- 如果是精英怪，看年兽蛋一阶掉落限量
			if nSpring2020Other_MonsterId == 5887 then
				if not Task_ChkTaskDetail(nSpring2020Other_TaskId, nSpring2020Other_UserId) then
					return
				end
				-- 判断背包空间
				if not User_CheckLeftSpace(1, nSpring2020Other_UserId) then
					return
				end
				local nSpring2020Other_DropNum1 = Get_TaskDetailData5(nSpring2020Other_TaskId, nSpring2020Other_UserId)
				-- 判断是否达到限量
				local nSpring2020Other_ItemId = tSpringFestival2020Other_Data["MonsterDrop"][5887][1]
				if nSpring2020Other_DropNum1 ==  15 then
					Task_SetTaskDetailData5(nSpring2020Other_TaskId, nSpring2020Other_DropNum1 + 1, nSpring2020Other_UserId)
					Sys_MsgBox(tSpringFestival2020Other_Texy["Sys_Msg"]["DropFullNum"], nil, nil, nSpring2020Other_UserId)
					return
				elseif nSpring2020Other_DropNum1 > 15 then
					return
				end
				if Task_SetTaskDetailData5(nSpring2020Other_TaskId, nSpring2020Other_DropNum1 + 1, nSpring2020Other_UserId) then
					Item_AddItem(nSpring2020Other_ItemId)
					local sSpring2020Other_Log = string.format(tSpringFestival2020Other_Data["Log"][nSpring2020Other_MonsterId], nSpring2020Other_ItemId)
					Sys_SaveActionFestivalLog(sSpring2020Other_Log)
				end
			end
		end
		
		
	else
		-- User_TalkChannel2005("11")
		-- 击杀获得奖励  普通怪物随机奖励
		if nSpring2020Other_MonsterId == 5886 then
			-- 判断背包空间
			if not User_CheckLeftSpace(1, nSpring2020Other_UserId) then
				return
			end
			-- local fSpring2020Other_Chk, nSpring2020Other_Space = RewardTemplate_ChkRandomSpace(tSpringFestival2020Other_Reward, nSpring2020Other_ItemId)
			-- if not fSpring2020Other_Chk then
				-- return
			-- end
			local nSpring2020Other_TaskId = tSpringFestival2020Other_Data["OldTaskId"]
			local nSpring2020Other_UserOldId = Get_TaskDetailData2(nSpring2020Other_TaskId, nSpring2020Other_UserId)
			local fSpring2020Other_Chk,tSpring2020Other_Award = Probabil_RandomAward(tSpringFestival2020Other_Reward, nSpring2020Other_MonsterId)
			if tSpring2020Other_Award[1]["tAward"][1]["RewardItem"] == nil then
				return
			end
			local nSpring2020Other_ItemId = tSpring2020Other_Award[1]["tAward"][1]["RewardItem"][1]["Id"]
			local nSpring2020Other_DropNum2 = Get_TaskDetailData6(nSpring2020Other_TaskId, nSpring2020Other_UserId)
			-- 使用data6判断隔天，如果为0则修改为1  为0表示隔天，并把之前的掉落限量改掉
			if nSpring2020Other_DropNum2 == 0 then
				Task_SetTaskDetailData4(nSpring2020Other_TaskId, 0, nSpring2020Other_UserId)
				Task_SetTaskDetailData5(nSpring2020Other_TaskId, 0, nSpring2020Other_UserId)
				Task_SetTaskDetailData6(nSpring2020Other_TaskId, 1, nSpring2020Other_UserId)
				nSpring2020Other_DropNum2 = 1
			end
			local nSpring2020Other_DropNum1 = Get_TaskDetailData5(nSpring2020Other_TaskId, nSpring2020Other_UserId)
			-- 判断是否达到限量
			if nSpring2020Other_ItemId == tSpringFestival2020Other_Data["MonsterDrop"][5886][1] then
				if nSpring2020Other_DropNum1 >=  15 then
					return
				end
			elseif nSpring2020Other_ItemId == tSpringFestival2020Other_Data["MonsterDrop"][5886][2] then
				if nSpring2020Other_DropNum2 >=  151 then
					return
				end
			else
				return
			end
			
			if Item_AddAsynOSItem(nSpring2020Other_ItemId, 0, 1, 10000, 0, nSpring2020Other_UserOldId, nSpring2020Other_ServerId) then
				if nSpring2020Other_ItemId == tSpringFestival2020Other_Data["MonsterDrop"][5886][1] then
					Task_SetTaskDetailData5(nSpring2020Other_TaskId, nSpring2020Other_DropNum1 + 1, nSpring2020Other_UserId)
				else
					Task_SetTaskDetailData6(nSpring2020Other_TaskId, nSpring2020Other_DropNum2 + 1, nSpring2020Other_UserId)
				end
				local sSpring2020Other_Log = string.format(tSpringFestival2020Other_Data["Log"][nSpring2020Other_MonsterId], nSpring2020Other_ItemId)
				Sys_SaveActionFestivalLog(sSpring2020Other_Log)
			end
			
		else
			-- User_TalkChannel2005("22")
			-- 判断背包空间
			local nNeedSpace = tSpringFestival2020Other_Data["MonsterDrop"][nSpring2020Other_MonsterId]["Space"]
			if not User_CheckLeftSpace(nNeedSpace, nSpring2020Other_UserId) then
				return
			end
			-- local fSpring2020Other_Chk, nSpring2020Other_Space = RewardTemplate_ChkRandomSpace(tSpringFestival2020Other_Reward, nSpring2020Other_ItemId)
			-- if not fSpring2020Other_Chk then
				-- return
			-- end
			-- User_TalkChannel2005(tostring(nSpring2020Other_UserOldId))
			-- for _, nSpring2020Other_ItemId in pairs(tSpringFestival2020Other_Data["MonsterDrop"][nSpring2020Other_MonsterId]) do
				-- -- User_TalkChannel2005("33")
				-- if Item_AddAsynOSItem(nSpring2020Other_ItemId, 0, 1, 10000, 0, nSpring2020Other_UserOldId, nSpring2020Other_ServerId) then
					-- -- User_TalkChannel2005("44")
					-- local sSpring2020Other_Log = string.format(tSpringFestival2020Other_Data["Log"][nSpring2020Other_MonsterId], nSpring2020Other_ItemId)
					-- Sys_SaveActionFestivalLog(sSpring2020Other_Log)
				-- end
			-- end
			RewardTemplate_UseItemAndMsg(tSpringFestival2020Other_Reward[nSpring2020Other_MonsterId])
			
			local nSpring2020Other_TaskId = tSpringFestival2020Other_Data["OldTaskId"]
			local nSpring2020Other_UserOldId = Get_TaskDetailData2(nSpring2020Other_TaskId, nSpring2020Other_UserId)
			-- 如果是精英怪，看年兽蛋一阶掉落限量
			if nSpring2020Other_MonsterId == 5887 then
				-- 判断背包空间
				if not User_CheckLeftSpace(1, nSpring2020Other_UserId) then
					return
				end
				if not Task_ChkTaskDetail(nSpring2020Other_TaskId, nSpring2020Other_UserId) then
					return
				end
				local nSpring2020Other_DropNum1 = Get_TaskDetailData5(nSpring2020Other_TaskId, nSpring2020Other_UserId)
				-- 判断是否达到限量
				local nSpring2020Other_ItemId = tSpringFestival2020Other_Data["MonsterDrop"][5887][1]
				if nSpring2020Other_DropNum1 ==  15 then
					Task_SetTaskDetailData5(nSpring2020Other_TaskId, nSpring2020Other_DropNum1 + 1, nSpring2020Other_UserId)
					Sys_MsgBox(tSpringFestival2020Other_Texy["Sys_Msg"]["DropFullNum"], nil, nil, nSpring2020Other_UserId)
					return
				elseif nSpring2020Other_DropNum1 > 15 then
					return
				end
				local nSpring2020Other_UserOldId = Get_TaskDetailData2(nSpring2020Other_TaskId, nSpring2020Other_UserId)
				if Item_AddAsynOSItem(nSpring2020Other_ItemId, 0, 1, 10000, 0, nSpring2020Other_UserOldId, nSpring2020Other_ServerId) then
					Item_AddItem(nSpring2020Other_ItemId)
					local sSpring2020Other_Log = string.format(tSpringFestival2020Other_Data["Log"][nSpring2020Other_MonsterId], nSpring2020Other_ItemId)
					Sys_SaveActionFestivalLog(sSpring2020Other_Log)
				end
			end
			
		end
		
	end
	
end


-- 进入跨服
function SpringFestival2020Other_EnterCrossMap()
	--活动时间判断
	if not Sys_ChkFullTime(tActivityTime["Spring2020Other"]["ActivityTime"]) then
		return
	end
	
	local nSpring2020Other_UserId = Get_UserId()
	
	--判断是否在双龙城
	if Get_UserMapId(nSpring2020Other_UserId) ~= tSpringFestival2020Other_Data["ChkMap"][4] then
		return
	end
	
	local nSpring2020Other_ServerId = tSpringFestival2020Other_Data["Cross"]["ServerId"]
	local nSpring2020Other_ConfigMapFlag = tSpringFestival2020Other_Data["Cross"]["MapFlag"]
	local nSpring2020Other_Type = tSpringFestival2020Other_Data["Cross"]["ServerType"]
	
	if Sys_EnterServer(nSpring2020Other_ServerId, nSpring2020Other_Type, nSpring2020Other_UserId, nSpring2020Other_ConfigMapFlag) then
		User_TalkChannel2005(tSpringFestival2020Other_Texy["Sys_Msg"]["IntoCross"])
	end
end

-- 返回双龙城
function SpringFestival2020Other_ReturnCity()
	-- 活动时间判断
	-- if not Sys_ChkFullTime(tActivityTime["Spring2020Other"]["ActivityTime"]) then
		-- return
	-- end
	
	--判断是否在仙城
	if Get_UserMapId() ~= tSpringFestival2020Other_Data["ChkMap"][4] and Get_UserMapId() ~= tSpringFestival2020Other_Data["ChkMap"][5] then
		return
	end
	
	-- 判断是否在跨服
	if User_IsCross() then
		local nSpring2020Other_ChgMap = tSpringFestival2020Other_Data["ChkMap"][1]
		local nSpring2020Other_PosX = tSpringFestival2020Other_Data["ChkMap"]["ChgWay"]["Server"]["PosX"]
		local nSpring2020Other_PosY = tSpringFestival2020Other_Data["ChkMap"]["ChgWay"]["Server"]["PosY"]
		-- User_RecordPoint(nSpring2020Other_ChgMap, nSpring2020Other_PosX, nSpring2020Other_PosY)
		
		if Sys_ExitOS() then
			User_UserRandBoundTrans(nSpring2020Other_ChgMap, nSpring2020Other_PosX, nSpring2020Other_PosY, 5, 5, 0)
		end
	else
		local nSpring2020Other_ChgMap = tSpringFestival2020Other_Data["ChkMap"][1]
		local nSpring2020Other_PosX = tSpringFestival2020Other_Data["ChkMap"]["ChgWay"]["Server"]["PosX"]
		local nSpring2020Other_PosY = tSpringFestival2020Other_Data["ChkMap"]["ChgWay"]["Server"]["PosY"]
		if SpecialServer_ChkNoGiftServer() then
			nSpring2020Other_ChgMap = tSpringFestival2020Other_Data["ChkMap"][3]
			nSpring2020Other_PosX = tSpringFestival2020Other_Data["ChkMap"]["ChgWay"]["NoGift"]["PosX"]
			nSpring2020Other_PosY = tSpringFestival2020Other_Data["ChkMap"]["ChgWay"]["NoGift"]["PosY"]
		end
		
		if User_UserRandBoundTrans(nSpring2020Other_ChgMap, nSpring2020Other_PosX, nSpring2020Other_PosY, 5, 5, 0) then
			User_TalkChannel2005(tSpringFestival2020Other_Texy["Sys_Msg"]["LeaveCross"])
		end
		
	end
	-- User_SetTimer(1, "", 1)
end

-- 传送到其他仙城
function SpringFestival2020Other_ChangeOtherMap(nSpring2020Other_Index)
	-- 活动时间判断
	if not Sys_ChkFullTime(tActivityTime["Spring2020Other"]["ActivityTime"]) then
		return
	end
	--判断是否在仙城
	local nSpring2020Other_UserMap = Get_UserMapId()
	if nSpring2020Other_UserMap ~= tSpringFestival2020Other_Data["ChkMap"][4] and nSpring2020Other_UserMap ~= tSpringFestival2020Other_Data["ChkMap"][5] and nSpring2020Other_UserMap ~= tSpringFestival2020Other_Data["ChkMap"][1] then
		return
	end
	local nSpring2020Other_UserId = Get_UserId()
	
	-- 判断task是否存在值
	local nSpring2020Other_TaskId = tSpringFestival2020Other_Data["OldTaskId"]
	if not Task_ChkTaskDetail(nSpring2020Other_TaskId, nSpring2020Other_UserId) then
		if not Task_AddTaskDetail(nSpring2020Other_TaskId,0, nSpring2020Other_UserId) then
			return
		end
	end
	-- 如果在本服没有存值就赋值
	if not User_IsCross(nSpring2020Other_UserId) then
		local nSpring2020Other_UserOldId = Get_TaskDetailData2(nSpring2020Other_TaskId, nSpring2020Other_UserId)
		-- User_TalkChannel2005(tostring(nSpring2020Other_UserOldId))
		if nSpring2020Other_UserOldId <= 0 then
			if not Task_SetTaskDetailData2(nSpring2020Other_TaskId, nSpring2020Other_UserId, nSpring2020Other_UserId) then
				return
			end
		end
	end
	-- User_TalkChannel2005("11")
	
	-- 从跨服传送到1层
	if nSpring2020Other_Index == 1 then
		-- 传送到仙城1 记录记录点
		-- User_TalkChannel2005("00")
		-- local nSpring2020Other_ChgMap = tSpringFestival2020Other_Data["ChkMap"][4]
		-- local nSpring2020Other_PosX = tSpringFestival2020Other_Data["ChkMap"]["ChgWay"]["Cross"]["PosX"]
		-- local nSpring2020Other_PosY = tSpringFestival2020Other_Data["ChkMap"]["ChgWay"]["Cross"]["PosY"]
		-- User_RecordPoint(nSpring2020Other_ChgMap, nSpring2020Other_PosX, nSpring2020Other_PosY)
		Sys_ExitOS()
		-- if Sys_ExitOS() then
			-- User_UserRandBoundTrans(nSpring2020Other_ChgMap, nSpring2020Other_PosX, nSpring2020Other_PosY, 5, 5, 0, nSpring2020Other_UserId)
			-- User_ChgMap(nSpring2020Other_ChgMap,nSpring2020Other_PosX,nSpring2020Other_PosY,0) 
			-- User_TalkChannel2005("01")
			-- return
		-- end
		-- User_TalkChannel2005("11")
	-- 传送到2层
	elseif nSpring2020Other_Index == 2 then
		-- 判断玩家是否在跨服
		if User_IsCross(nSpring2020Other_UserId) then
			local nSpring2020Other_ChgMap = tSpringFestival2020Other_Data["ChkMap"][4]
			local nSpring2020Other_PosX = tSpringFestival2020Other_Data["ChkMap"]["ChgWay"]["Cross"]["PosX"]
			local nSpring2020Other_PosY = tSpringFestival2020Other_Data["ChkMap"]["ChgWay"]["Cross"]["PosY"]
			User_UserRandBoundTrans(nSpring2020Other_ChgMap, nSpring2020Other_PosX, nSpring2020Other_PosY, 5, 5, 0)
		else
			local nSpring2020Other_ServerId = tSpringFestival2020Other_Data["Cross"]["ServerId"]
			-- local nSpring2020Other_ServerId = 20
			local nSpring2020Other_ConfigMapFlag = tSpringFestival2020Other_Data["Cross"]["MapFlag"]
			local nSpring2020Other_Type = tSpringFestival2020Other_Data["Cross"]["ServerType"]
			if Sys_EnterServer(nSpring2020Other_ServerId, nSpring2020Other_Type, nSpring2020Other_UserId, nSpring2020Other_ConfigMapFlag) then
				-- local nSpring2020Other_CrossUserId = Get_UserId()
				-- if tSpringFestival2020Other_UserData[nSpring2020Other_CrossUserId] == nil then
					-- tSpringFestival2020Other_UserData[nSpring2020Other_CrossUserId] = 0
				-- end
				-- tSpringFestival2020Other_UserData[nSpring2020Other_CrossUserId] = tSpringFestival2020Other_UserData[nSpring2020Other_CrossUserId] + 1
				-- local nSpring2020Other_Sign = tSpringFestival2020Other_UserData[nSpring2020Other_CrossUserId]
				-- User_SetTimer(10, string.format("SpringFestival2020Other_ChkTimeEnd</N>%d", nSpring2020Other_Sign), 1, nSpring2020Other_CrossUserId)
			end
		end
	-- 传送到3层
	else
		-- 判断玩家是否在跨服
		if User_IsCross(nSpring2020Other_UserId) then
			local nSpring2020Other_ChgMap = tSpringFestival2020Other_Data["ChkMap"][5]
			local nSpring2020Other_PosX = tSpringFestival2020Other_Data["ChkMap"]["ChgWay"]["Cross"]["PosX"]
			local nSpring2020Other_PosY = tSpringFestival2020Other_Data["ChkMap"]["ChgWay"]["Cross"]["PosY"]
			User_UserRandBoundTrans(nSpring2020Other_ChgMap, nSpring2020Other_PosX, nSpring2020Other_PosY, 5, 5, 0)
		else
			local nSpring2020Other_ServerId = tSpringFestival2020Other_Data["Cross"]["ServerId"]
			-- local nSpring2020Other_ServerId = 20
			local nSpring2020Other_ConfigMapFlag = tSpringFestival2020Other_Data["Cross"]["MapFlag2"]
			local nSpring2020Other_Type = tSpringFestival2020Other_Data["Cross"]["ServerType"]
			if Sys_EnterServer(nSpring2020Other_ServerId, nSpring2020Other_Type, nSpring2020Other_UserId, nSpring2020Other_ConfigMapFlag) then
				-- local nSpring2020Other_CrossUserId = Get_UserId()
				-- if tSpringFestival2020Other_UserData[nSpring2020Other_CrossUserId] == nil then
					-- tSpringFestival2020Other_UserData[nSpring2020Other_CrossUserId] = 0
				-- end
				-- tSpringFestival2020Other_UserData[nSpring2020Other_CrossUserId] = tSpringFestival2020Other_UserData[nSpring2020Other_CrossUserId] + 1
				-- local nSpring2020Other_Sign = tSpringFestival2020Other_UserData[nSpring2020Other_CrossUserId]
				-- User_SetTimer(10, string.format("SpringFestival2020Other_ChkTimeEnd</N>%d", nSpring2020Other_Sign), 1, nSpring2020Other_CrossUserId)
			end
		end
		
	end
end

-- 倒计时结束
function SpringFestival2020Other_ChkTimeEnd(nSpring2020Other_nIndex, nSpring2020Other_UserId)
	-- User_TalkChannel2005(tostring(nSpring2020Other_nIndex), nSpring2020Other_UserId)
	-- local nSpring2020Other_UserId = nSpring2020Other_SaveUserId or Get_UserId()
	if tSpringFestival2020Other_UserData[nSpring2020Other_UserId] == nil then
		tSpringFestival2020Other_UserData[nSpring2020Other_UserId] = 1
	end
	-- User_TalkChannel2005(tostring(nSpring2020Other_nIndex), nSpring2020Other_UserId)
	-- 判断是否在跨服跟在地图内
	if not User_IsCross(nSpring2020Other_UserId) then
		return
	end
	local nSpring2020Other_UserMap = Get_UserMapId(nSpring2020Other_UserId)
	if nSpring2020Other_UserMap ~= tSpringFestival2020Other_Data["ChkMap"][4] and nSpring2020Other_UserMap ~= tSpringFestival2020Other_Data["ChkMap"][5] then
		return
	end
	-- User_TalkChannel2005(tostring(tSpringFestival2020Other_UserData[nSpring2020Other_UserId]), nSpring2020Other_UserId)
	local nSpring2020Other_NowSign = tSpringFestival2020Other_UserData[nSpring2020Other_UserId]
	-- 判断标志位是否一样
	if nSpring2020Other_nIndex ~= nSpring2020Other_NowSign then
		return
	else
		Sys_ExitOS(nSpring2020Other_UserId)
	end
end




-- 时间自检提示公告
function SpringFestival2020Other_MonsterBroadcast()
	-- 活动时间判断
	if not Sys_ChkFullTime(tActivityTime["Spring2020Other"]["ActivityTime"]) then
		return
	end
	-- 判断是否跨服地图
	local nSpring2020Other_GlobalId = tSpringFestival2020Other_Data["Cross"]["GlobalId"]
	local nSpring2020Other_GlobalData = Get_SysDynaGlobalData1(nSpring2020Other_GlobalId)
	if nSpring2020Other_GlobalData == 0 then
		return
	end
	local nSpring2020Other_Country = User_ChkLanguage()
	-- 随机一个语种
	local tSpring2020Other_RandomTable = {1, 2, 3, 4}
	table.remove(tSpring2020Other_RandomTable, nSpring2020Other_Country)
	
	local nSpring2020Other_RandomNum = math.random(1, 3)
	local nSpring2020Other_ChooseNum = tSpring2020Other_RandomTable[nSpring2020Other_RandomNum]
	local nSpring2020Other_MonsterId = tSpringFestival2020Other_Data["Monster"][nSpring2020Other_ChooseNum]["MonId"]
	local nSpring2020Other_PosX = tSpringFestival2020Other_Data["Monster"][nSpring2020Other_ChooseNum]["PosX"]
	local nSpring2020Other_PosY = tSpringFestival2020Other_Data["Monster"][nSpring2020Other_ChooseNum]["PosY"]
	local nSpring2020Other_GenId = tSpringFestival2020Other_Data["Monster"][nSpring2020Other_ChooseNum]["GenId"]
	local sSpring2020Other_MonsterName = tSpringFestival2020Other_Texy["Sys_Msg"]["MonsterName"][nSpring2020Other_ChooseNum]
	if Monster_CreateMonsterRange(0,0,tSpringFestival2020Other_Data["ChkMap"][4],nSpring2020Other_PosX,nSpring2020Other_PosY,nSpring2020Other_GenId,nSpring2020Other_MonsterId,0,sSpring2020Other_MonsterName,0,5,5,1,1800) then
		-- 出地图公告
		-- Map_SendBroadcastMsg(tSpringFestival2020Other_Data["ChkMap"][4], string.format(tSpringFestival2020Other_Texy["Sys_Msg"]["MonsterBroad"], tSpringFestival2020Other_Texy["Sys_Msg"]["Country"][nSpring2020Other_RandomNum]))
		Sys_SystemBroadcast(tSpringFestival2020Other_Texy["Sys_Msg"]["MonsterBroad"][nSpring2020Other_ChooseNum])
	end
end



-- 领取星云藏宝图
function SpringFestival2020Other_GetTreasureMap()
	-- 判断是否拥有藏宝图
	if Item_ChkItem(tSpringFestival2020Other_Data["TreasureMap"]) then
		Sys_MsgBox(tSpringFestival2020Other_Texy["Sys_Msg"][25825]["HaveItem"])
		return
	end
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tSpringFestival2020Other_Texy["Sys_Msg"][25825]["FullSpace"])
		return
	end
	
	RewardTemplate_UseItemAndMsg(tSpringFestival2020Other_Reward[25825])
end

-- 消灭妖匪
function SpringFestival2020Other_GoAndFindTheMonster()
	-- 判断任务是否拥有
	local nSpring2020Other_TaskId = tSpringFestival2020Other_Data["MonthTaskId"][11]
	if not Task_ChkTaskDetail(nSpring2020Other_TaskId) then
		if not Task_AddTaskDetail(nSpring2020Other_TaskId) then
			return
		end
	end
	-- 判断地图
	if Get_UserMapId() ~= tSpringFestival2020Other_Data["ChkMap"][4] then
		return
	end
	local nSpring2020Other_PosX = tSpringFestival2020Other_Data["Monster"][1]["PosX"]
	local nSpring2020Other_PosY = tSpringFestival2020Other_Data["Monster"][1]["PosY"]
	local nSpring2020Other_MapId = tSpringFestival2020Other_Data["ChkMap"][4]
	User_UserRandBoundTrans(nSpring2020Other_MapId, nSpring2020Other_PosX, nSpring2020Other_PosY, 5, 5, 0)
end

-- 完成任务
function SpringFestival2020Other_FinishTask()
	-- 判断任务是否拥有
	local nSpring2020Other_TaskId = tSpringFestival2020Other_Data["MonthTaskId"][11]
	if not Task_ChkTaskDetail(nSpring2020Other_TaskId) then
		return
	end
	-- 判断任务是否完成
	local nSpring2020Other_KillNum = Get_TaskDetailData1(nSpring2020Other_TaskId)
	if Task_ChkTaskDetailValue(nSpring2020Other_TaskId, "CompleteFlag", "==", 0) and nSpring2020Other_KillNum >= 100 then
		-- 设置任务完成
		Task_SetTaskDetailCompleteFlag(nSpring2020Other_TaskId, 1)
	end
end

-- 寻找怪物
function SpringFestival2020Other_FindTheNpc()
	-- 判断地图
	if Get_UserMapId() ~= tSpringFestival2020Other_Data["ChkMap"][4] then
		NpcPosition_PathFind(tSpringFestival2020Other_Data["FindNpc"][1])
	else
		NpcPosition_PathFind(tSpringFestival2020Other_Data["FindNpc"][2])
	end
	
end


-- 计算福袋是否领取  返回true已领取  false未领取
function SpringFestival2020Other_ChkFuDaiReward(nSpring2020Other_Index, nSpring2020Other_RewardNum)
	-- 判断是否领取过
	local nSpring2020Other_ChkNum = tSpringFestival2020Other_Data["FortuneBag"]["RewardIndex"][nSpring2020Other_Index]
	if Sys_ParseNumbersContain(nSpring2020Other_ChkNum, nSpring2020Other_RewardNum) then
		return true
	else
		return false
	end
end


-- 点击福袋
function SpringFestival2020Other_ClickFuDai(nSpring2020Other_Index)
	-- User_TalkChannel2005("00")
	-- 活动时间判断
	if not Sys_ChkFullTime(tActivityTime["Spring2020Other"]["ActivityTime"]) then
		return
	end
	-- User_TalkChannel2005("11")
	local nSpring2020Other_Event = tSpringFestival2020Other_Data["Stc"]["Event"][5]
	local nSpring2020Other_Data = tSpringFestival2020Other_Data["Stc"]["Data"][5]
	local nSpring2020Other_RewardNum = Get_UserStatisticValue(nSpring2020Other_Event, nSpring2020Other_Data)
	-- 判断是否领取过
	if SpringFestival2020Other_ChkFuDaiReward(nSpring2020Other_Index, nSpring2020Other_RewardNum) then
		Sys_MsgBox(tSpringFestival2020Other_Texy["Sys_Msg"]["HaveReward"])
		return
	end
	-- User_TalkChannel2005("22")
	-- 判断背包空间
	if not User_CheckLeftSpace(1, nSpring2020Other_UserId) then
		User_TalkChannel2005(string.format(tSpringFestival2020Other_Texy["Sys_Msg"]["NotSpace"], 1))
		return
	end
	
	--读条
	local nSpring2020Other_Secs = tSpringFestival2020Other_Data["FortuneBag"]["Secs"]
	local nSpring2020Other_ActionId = tSpringFestival2020Other_Data["FortuneBag"]["ActionId"]
	local sSpring2020Other_Content = tSpringFestival2020Other_Texy["Sys_Msg"]["Explore"]
	local sSpring2020Other_Func = "SpringFestival2020Other_ExploreSucc</N>" .. nSpring2020Other_Index
	
	User_SetExplore(nSpring2020Other_Secs, sSpring2020Other_Content, nSpring2020Other_ActionId, sSpring2020Other_Func, nil)
	
end

-- 福袋读条后触发
function SpringFestival2020Other_ExploreSucc(nSpring2020Other_Index, nSpring2020Other_UserId)
	-- 活动时间判断
	if not Sys_ChkFullTime(tActivityTime["Spring2020Other"]["ActivityTime"]) then
		return
	end
	local nSpring2020Other_Event = tSpringFestival2020Other_Data["Stc"]["Event"][5]
	local nSpring2020Other_Data = tSpringFestival2020Other_Data["Stc"]["Data"][5]
	local nSpring2020Other_RewardNum = Get_UserStatisticValue(nSpring2020Other_Event, nSpring2020Other_Data, nSpring2020Other_UserId)
	-- 判断是否领取过
	if SpringFestival2020Other_ChkFuDaiReward(nSpring2020Other_Index, nSpring2020Other_RewardNum) then
		Sys_MsgBox(tSpringFestival2020Other_Texy["Sys_Msg"]["HaveReward"], nil, nil, nSpring2020Other_UserId)
		return
	end
	-- 判断背包空间
	if not User_CheckLeftSpace(1, nSpring2020Other_UserId) then
		User_TalkChannel2005(string.format(tSpringFestival2020Other_Texy["Sys_Msg"]["NotSpace"], 1), nSpring2020Other_UserId)
		return
	end
	-- 设置掩码领奖
	local nSpring2020Other_AddNum = tSpringFestival2020Other_Data["FortuneBag"]["RewardIndex"][nSpring2020Other_Index]
	if Task_AddStatistic(nSpring2020Other_Event, nSpring2020Other_Data, nSpring2020Other_AddNum, 1, nSpring2020Other_UserId) then
		Task_SetStcTimestamp(nSpring2020Other_Event, nSpring2020Other_Data, 0, nSpring2020Other_UserId)
		RewardTemplate_UseItemAndMsg(tSpringFestival2020Other_Reward[25916], nSpring2020Other_UserId)
	end
end

-- 3327314碎片合成外套
function SpringFestival2020Other_UseFragment(nSpring2020Other_ItemId, nSpring2020Other_Index, nSpring2020Other_UserId)
	local nSpring2020Other_UserId = nSpring2020Other_UserId or Get_UserId()
	-- 判断条件
	local bSpring2020Other_Judge = TermsOfUse_Main(nSpring2020Other_ItemId, tSpringFestival2020Other_Reward[nSpring2020Other_ItemId][nSpring2020Other_Index])
	if not bSpring2020Other_Judge then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tSpringFestival2020Other_Reward[nSpring2020Other_ItemId][nSpring2020Other_Index], nSpring2020Other_UserId, bSpring2020Other_Judge)
end


-- 增加天石商店礼包使用获得额外服务器福气值
function SpringFestival2020Other_AddAdditionalFuQi(nSpring2020Other_ItemId, nSpring2020Other_UserId)
	local nSpring2020Other_NowUserId = nSpring2020Other_UserId or Get_UserId()
	-- 活动时间判断
	if not Sys_ChkFullTime(tActivityTime["Spring2020Other"]["ActivityTime"]) then
		return
	end
	
	-- 判断是否可以增加福气值
	local nSpring2020Other_AddNum = tSpringFestival2020Other_Data["AdditionalFuQi"][nSpring2020Other_ItemId]
	if nSpring2020Other_AddNum == nil then
		return
	end
	-- 增加额外服务器福气值
	local nSpring2020Other_Event = tSpringFestival2020Other_Data["Stc"]["Event"][6]
	local nSpring2020Other_Data = tSpringFestival2020Other_Data["Stc"]["Data"][6]
	if Task_AddStatistic(nSpring2020Other_Event, nSpring2020Other_Data, nSpring2020Other_AddNum, 1, nSpring2020Other_NowUserId) then
		Task_SetStcTimestamp(nSpring2020Other_Event, nSpring2020Other_Data, 0, nSpring2020Other_NowUserId)
		--全服福气值增加
		local nSpring2020Other_GlobalId = tSpringFestival2020Other_Data["AdditionalFuQi"]["Global"]
		Sys_SetSynaGlobalData0(nSpring2020Other_GlobalId, Get_SysDynaGlobalData0(nSpring2020Other_GlobalId) + nSpring2020Other_AddNum)
		
		User_TalkChannel2005(string.format(tSpringFestival2020Other_Texy["Sys_Msg"]["AdditionalFuQi"], tostring(nSpring2020Other_AddNum)))
	end
end


----------------------------------NPC部分---------------------------------------------
-- 灶王爷
tNpcFace[4844] = 245
tNpcGossip[25813] = tNpcGossip[25813] or DefaultNpc:new{}
tNpcGossip[25813]["OptionHidden"] = 1
tNpcGossip[25813]["DialogueText"] = tSpringFestival2020Other_Texy[25813]
-- 跨服对白
tNpcGossip[25813]["Text1-1"] = {111,112,113,114,115,116,117}
-- tNpcGossip[25813]["ChkFunc1-1"]= function()
	-- -- 判断是否在跨服
	-- local nSpring2020Other_UserId = Get_UserId()
	-- if User_IsCross(nSpring2020Other_UserId) then
		-- return true
	-- end
	-- return false
-- end
tNpcGossip[25813]["tOption1-1"] = {111}
-- tNpcGossip[25813]["OptionFunc111"] = "Sys_ExitOS"
-- -- 本服对白
-- tNpcGossip[25813]["Text1-2"] = {121,122,123,124,125,126,127}
-- tNpcGossip[25813]["ChkFunc1-2"]= function()
	-- -- 判断是否在跨服
	-- local nSpring2020Other_UserId = Get_UserId()
	-- if not User_IsCross(nSpring2020Other_UserId) then
		-- return true
	-- end
	-- return false
-- end
-- tNpcGossip[25813]["tOption1-2"] = {121,122}
-- tNpcGossip[25813]["OptionFunc121"] = "SpringFestival2020Other_ReturnCity"

tNpcGossip[25834] = tNpcGossip[25813] 


-- 仙城小精灵
-- tNpcFace[4845] = 245
tNpcGossip[25824] = tNpcGossip[25824] or DefaultNpc:new{}
tNpcGossip[25824]["OptionHidden"] = 1
tNpcGossip[25824]["DialogueText"] = tSpringFestival2020Other_Texy[25824]
tNpcGossip[25824]["Text1-1"] = {111,112}
tNpcGossip[25824]["tOption1-1"] = {111,112,113,114}
-- 1层
tNpcGossip[25824]["OptionFunc111"] = "SpringFestival2020Other_ChangeOtherMap</N>1"
-- tNpcGossip[25824]["OptionFunc111"] = "Sys_ExitOS"
tNpcGossip[25824]["OptionChkFunc111"] = function ()
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["Spring2020Other"]["EnterCross"]) then
		return false
	end
	-- 判断是否在跨服
	local nSpring2020Other_UserId = Get_UserId()
	if User_IsCross(nSpring2020Other_UserId) then
		return true
	end
	return false
end
-- 2层
tNpcGossip[25824]["OptionFunc112"] = "SpringFestival2020Other_ChangeOtherMap</N>2"
tNpcGossip[25824]["OptionChkFunc112"] = function ()
	-- -- 判断时间
	-- if not Sys_ChkFullTime(tActivityTime["Spring2020Other"]["EnterCross"]) then
		-- return false
	-- end
	-- -- 判断是否在跨服
	-- local nSpring2020Other_UserId = Get_UserId()
	-- if not User_IsCross(nSpring2020Other_UserId) then
		-- return true
	-- end
	-- -- 判断是否在2层
	-- local nSpring2020Other_MapId = Get_UserMapId(nSpring2020Other_UserId)
	-- if nSpring2020Other_MapId ~= tSpringFestival2020Other_Data["ChkMap"][4] then
		-- return true
	-- end
	
	return false
end
-- 3层
tNpcGossip[25824]["OptionFunc113"] = "SpringFestival2020Other_ChangeOtherMap</N>3"
tNpcGossip[25824]["OptionChkFunc113"] = function ()
	-- -- 判断时间
	-- if not Sys_ChkFullTime(tActivityTime["Spring2020Other"]["EnterCross"]) then
		-- return false
	-- end
	-- -- 判断是否在跨服
	-- local nSpring2020Other_UserId = Get_UserId()
	-- if not User_IsCross(nSpring2020Other_UserId) then
		-- return true
	-- end
	-- -- 判断是否在3层
	-- local nSpring2020Other_MapId = Get_UserMapId(nSpring2020Other_UserId)
	-- if nSpring2020Other_MapId ~= tSpringFestival2020Other_Data["ChkMap"][5] then
		-- return true
	-- end
	
	return false
end
-- 返回双龙城
tNpcGossip[25824]["OptionFunc114"] = "SpringFestival2020Other_ReturnCity"
tNpcGossip[25824]["OptionChkFunc114"]= function()
	-- 判断是否在跨服
	local nSpring2020Other_UserId = Get_UserId()
	if not User_IsCross(nSpring2020Other_UserId) then
		return true
	end
	return false
end

tNpcGossip[25835] = tNpcGossip[25824]


-- 福牛
tNpcFace[4843] = 2771
tNpcGossip[25812] = tNpcGossip[25812] or DefaultNpc:new{}
tNpcGossip[25812]["OptionHidden"] = 1
tNpcGossip[25812]["DialogueText"] = tSpringFestival2020Other_Texy[25812]
-- 活动前
tNpcGossip[25812]["Text1-1"] = {111,112,113,114}
tNpcGossip[25812]["tOption1-1"] = {111}
tNpcGossip[25812]["ChkFunc1-1"]= function()
	if CommonFunc_GetBeforeActivityTime(tActivityTime["Spring2020Other"]["ActivityTime"]) then
		return true
	end
	return false
end
-- 活动后
tNpcGossip[25812]["Text1-2"] = {121,122}
tNpcGossip[25812]["tOption1-2"] = {121}
tNpcGossip[25812]["ChkFunc1-2"]= function()
	if CommonFunc_GetAfterActivityTime(tActivityTime["Spring2020Other"]["ActivityTime"]) then
		return true
	end
	return false
end
-- 活动中
tNpcGossip[25812]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[25812]["tOption1-3"] = {131,132}
tNpcGossip[25812]["ChkFunc1-3"]= function()
	if Sys_ChkFullTime(tActivityTime["Spring2020Other"]["ActivityTime"]) then
		return true
	end
	return false
end
tNpcGossip[25812]["OptionFunc131"] = "SpringFestival2020Other_OpenEmoneyShop</N>25812"
tNpcGossip[25812]["OptionPoint132"] = "2-1"
-- 查看福袋奖励详情
tNpcGossip[25812]["Text2-1"] = {211,212,213,214,215,216,217,218,219,220,221,222,223}
tNpcGossip[25812]["tOption2-1"] = {211}


-- 水瓶座卡妙
tNpcFace[6177] = 21
tNpcGossip[25825] = tNpcGossip[25825] or DefaultNpc:new{}
tNpcGossip[25825]["OptionHidden"] = 1
tNpcGossip[25825]["DialogueText"] = tSpringFestival2020Other_Texy[25825]
-- 【玩家尚未获得星云藏宝图】
tNpcGossip[25825]["Text1-1"] = {111,112,113,114}
tNpcGossip[25825]["tOption1-1"] = {111}
tNpcGossip[25825]["ChkFunc1-1"]= function()
	-- 判断物品
	if not Item_ChkItem(tSpringFestival2020Other_Data["TreasureMap"]) then
		return true
	end
	return false
end
tNpcGossip[25825]["OptionFunc111"] = "SpringFestival2020Other_GetTreasureMap"
-- 【玩家获得星云藏宝图，未完成消灭妖匪任务时】
tNpcGossip[25825]["Text1-2"] = {121,122,123,124}
tNpcGossip[25825]["tOption1-2"] = {121}
tNpcGossip[25825]["ChkFunc1-2"]= function()
	-- 判断物品
	if not Item_ChkItem(tSpringFestival2020Other_Data["TreasureMap"]) then
		return false
	end
	-- 判断任务是否完成
	local nSpring2020Other_TaskId = tSpringFestival2020Other_Data["MonthTaskId"][11]
	if not Task_ChkTaskDetail(nSpring2020Other_TaskId)  then
		return true
	end
	local nSpring2020Other_KillNum = Get_TaskDetailData1(nSpring2020Other_TaskId)
	if Task_ChkTaskDetailValue(nSpring2020Other_TaskId, "CompleteFlag", "==", 0) and nSpring2020Other_KillNum < 100 then
		return true
	end
	
	return false
end
tNpcGossip[25825]["OptionFunc121"] = "SpringFestival2020Other_GoAndFindTheMonster"
-- 【玩家获得星云藏宝图，已消灭妖匪时】
tNpcGossip[25825]["Text1-3"] = {131,132,133}
tNpcGossip[25825]["tOption1-3"] = {131}
tNpcGossip[25825]["ChkFunc1-3"]= function()
	-- 判断物品
	if not Item_ChkItem(tSpringFestival2020Other_Data["TreasureMap"]) then
		return false
	end
	-- 判断任务是否完成
	local nSpring2020Other_TaskId = tSpringFestival2020Other_Data["MonthTaskId"][11]
	if not Task_ChkTaskDetail(nSpring2020Other_TaskId) then
		return false
	end
	local nSpring2020Other_KillNum = Get_TaskDetailData1(nSpring2020Other_TaskId)
	if Task_ChkTaskDetailValue(nSpring2020Other_TaskId, "CompleteFlag", "==", 0) and nSpring2020Other_KillNum >= 100 then
		return true
	end
	
	return false
end
tNpcGossip[25825]["OptionFunc131"] = "SpringFestival2020Other_FinishTask"
-- 【玩家已解封第1层】
tNpcGossip[25825]["Text1-4"] = {141,142}
tNpcGossip[25825]["tOption1-4"] = {141}
tNpcGossip[25825]["ChkFunc1-4"]= function()
	-- 判断物品
	if not Item_ChkItem(tSpringFestival2020Other_Data["TreasureMap"]) then
		return false
	end
	-- 判断任务是否完成
	local nSpring2020Other_TaskId = tSpringFestival2020Other_Data["MonthTaskId"][11]
	if not Task_ChkTaskDetail(nSpring2020Other_TaskId) then
		return false
	end
	if Task_ChkTaskDetailValue(nSpring2020Other_TaskId, "CompleteFlag", ">=", 1) then
		return true
	end
	
	return false
end




---------------------------------物品部分---------------------------------------------
-- 鼠年幸运礼包
tItem[3327303] = tItem[3327303] or {}
tItem[3327303]["Function"] = function(nSpring2020Other_ItemId,sSpring2020Other_ItemName)
	SpringFestival2020Other_PackageUse(nSpring2020Other_ItemId)
end

-- 压岁钱红包
tItem[3600213] = tItem[3600213] or {}
tItem[3600213]["Function"] = function(nSpring2020Other_ItemId,sSpring2020Other_ItemName)
	-- 增加10点福气值
	SpringFestival2020Other_LuckyMoneyPackUse(nSpring2020Other_ItemId, 10)
end


-- 新年时装福禄包
tItemFace[3327304] = 2716
tItem[3327304] = tItem[3327304] or {}
tItem[3327304]["Function"] = function(nSpring2020Other_ItemId,sSpring2020Other_ItemName)
	SpringFestival2020Other_ClothWarePackageUse(nSpring2020Other_ItemId)
end
tItem[3327304]["DialogueText"] = tSpringFestival2020Other_Texy[3327304]
tItem[3327304]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tItem[3327304]["ChkFunc1-1"] = function()
	local nSpring2020Other_ClothEvent = tSpringFestival2020Other_Data["Stc"]["Event"][1]
	local nSpring2020Other_ClothData = tSpringFestival2020Other_Data["Stc"]["Data"][1]
	local nSpring2020Other_ClothNum = Get_UserStatisticValue(nSpring2020Other_ClothEvent, nSpring2020Other_ClothData)
	-- 获取折扣和外套
	local nSpring2020Other_Discount1 = math.floor(nSpring2020Other_ClothNum / 1000)
	local nSpring2020Other_Cloth1 = math.floor((nSpring2020Other_ClothNum % 1000) / 100)
	local nSpring2020Other_Discount2 = math.floor((nSpring2020Other_ClothNum % 100) / 10)
	local nSpring2020Other_Cloth2 = math.floor(nSpring2020Other_ClothNum % 10)
	-- User_TalkChannel2005("nSpring2020Other_ClothNum=" .. nSpring2020Other_ClothNum)
	-- User_TalkChannel2005("nSpring2020Other_Discount1=" .. nSpring2020Other_Discount1)
	-- User_TalkChannel2005("nSpring2020Other_Cloth1=" .. nSpring2020Other_Cloth1)
	-- User_TalkChannel2005("nSpring2020Other_Discount2=" .. nSpring2020Other_Discount2)
	-- User_TalkChannel2005("nSpring2020Other_Cloth2=" .. nSpring2020Other_Cloth2)
	
	local sSpring2020Other_ClothName1 = tSpringFestival2020Other_Texy["DialogAdd"][3327304][nSpring2020Other_Cloth1]
	local sSpring2020Other_ClothName2 = tSpringFestival2020Other_Texy["DialogAdd"][3327304][nSpring2020Other_Cloth2]
	local sSpring2020Other_DisCount1 = tSpringFestival2020Other_Data[3327304]["Discount"][nSpring2020Other_Discount1]
	local sSpring2020Other_DisCount2 = tSpringFestival2020Other_Data[3327304]["Discount"][nSpring2020Other_Discount2]
	local nSpring2020Other_Pirce1 = tSpringFestival2020Other_Data[3327304]["DiscountPrice"][nSpring2020Other_Discount1]
	local nSpring2020Other_Pirce2 = tSpringFestival2020Other_Data[3327304]["DiscountPrice"][nSpring2020Other_Discount2]
	-- User_TalkChannel2005("sSpring2020Other_ClothName1=" .. sSpring2020Other_ClothName1)
	-- User_TalkChannel2005("sSpring2020Other_DisCount1=" .. sSpring2020Other_DisCount1)
	-- User_TalkChannel2005("nSpring2020Other_Pirce1=" .. nSpring2020Other_Pirce1)
	-- User_TalkChannel2005("sSpring2020Other_ClothName2=" .. sSpring2020Other_ClothName2)
	-- User_TalkChannel2005("sSpring2020Other_DisCount2=" .. sSpring2020Other_DisCount2)
	-- User_TalkChannel2005("nSpring2020Other_Pirce2=" .. nSpring2020Other_Pirce2)
	-- 对白赋值
	tItem[3327304]["Text115"] = string.format(tSpringFestival2020Other_Texy[3327304]["Text115"], tostring(sSpring2020Other_ClothName1), tostring(sSpring2020Other_DisCount1), nSpring2020Other_Pirce1)
	tItem[3327304]["Text116"] = string.format(tSpringFestival2020Other_Texy[3327304]["Text116"], tostring(sSpring2020Other_ClothName2), tostring(sSpring2020Other_DisCount2), nSpring2020Other_Pirce2)
	
	local sSpring2020Other_ClothName1 = tSpringFestival2020Other_Texy["DialogOption"][3327304][nSpring2020Other_Cloth1]
	local sSpring2020Other_ClothName2 = tSpringFestival2020Other_Texy["DialogOption"][3327304][nSpring2020Other_Cloth2]
	tItem[3327304]["Option111"] = string.format(tSpringFestival2020Other_Texy[3327304]["Option111"], tostring(sSpring2020Other_ClothName1), nSpring2020Other_Pirce1)
	tItem[3327304]["Option112"] = string.format(tSpringFestival2020Other_Texy[3327304]["Option112"], tostring(sSpring2020Other_ClothName2), nSpring2020Other_Pirce2)
	
	tItem[3327304]["OptionFunc111"] = "SpringFestival2020Other_ClothWarePackageSecondChk</N>" .. 3327304 .. "</N>" .. nSpring2020Other_Cloth1 .. "</N>" .. nSpring2020Other_Discount1
	tItem[3327304]["OptionFunc112"] = "SpringFestival2020Other_ClothWarePackageSecondChk</N>" .. 3327304 .. "</N>" .. nSpring2020Other_Cloth2 .. "</N>" .. nSpring2020Other_Discount2
	
	return true
end
tItem[3327304]["tOption1-1"] = {111, 112, 113}
tItem[3327304]["OptionFunc111"] = ""
tItem[3327304]["OptionFunc112"] = ""
-- 【天石不足】
tItem[3327304]["Text2-1"] = {211}
tItem[3327304]["tOption2-1"] = {211}
-- 【天石足够、二次确认】
tItem[3327304]["Text3-1"] = {311}
tItem[3327304]["tOption3-1"] = {311, 312}
tItem[3327304]["OptionFunc311"] = ""


-- 金鼠报喜大礼包
tItemFace[3327306] = 2509
tItem[3327306] = tItem[3327306] or {}
tItem[3327306]["Function"] = function(nSpring2020Other_ItemId,sSpring2020Other_ItemName)
	SpringFestival2020Other_AnnunciationPackageChkTime(nSpring2020Other_ItemId)
end
tItem[3327306]["DialogueText"] = tSpringFestival2020Other_Texy[3327306]
-- （1月17日至1月23日）
tItem[3327306]["Text1-1"] = {111, 112, 113, 114, 115}
tItem[3327306]["tOption1-1"] = {111}
tItem[3327306]["OptionFunc111"] = "SpringFestival2020Other_AnnunciationPackageUse</N>3327306</N>1"
-- （1月24日至2月2日）
tItem[3327306]["Text2-1"] = {211, 212, 213, 214, 215}
tItem[3327306]["tOption2-1"] = {211}
tItem[3327306]["OptionFunc211"] = "SpringFestival2020Other_AnnunciationPackageUse</N>3327306</N>2"


-- 春节新衣回归礼盒
tItemFace[3327307] = 2717
tItem[3327307] = tItem[3327307] or {}
tItem[3327307]["DialogueText"] = tSpringFestival2020Other_Texy[3327307]
tItem[3327307]["Text1-1"] = {111}
tItem[3327307]["tOption1-1"] = {111, 112, 113, 114, 115, 116}
tItem[3327307]["OptionFunc111"] = "SpringFestival2020Other_TheNewWarePackage</N>3327307</N>1"
tItem[3327307]["OptionFunc112"] = "SpringFestival2020Other_TheNewWarePackage</N>3327307</N>2"
tItem[3327307]["OptionFunc113"] = "SpringFestival2020Other_TheNewWarePackage</N>3327307</N>3"
tItem[3327307]["OptionFunc114"] = "SpringFestival2020Other_TheNewWarePackage</N>3327307</N>4"
tItem[3327307]["OptionFunc115"] = "SpringFestival2020Other_TheNewWarePackage</N>3327307</N>5"
tItem[3327307]["OptionFunc116"] = "SpringFestival2020Other_TheNewWarePackage</N>3327307</N>6"


-- 春节萌宠回归礼盒
tItemFace[3327308] = 2718
tItem[3327308] = tItem[3327308] or {}
tItem[3327308]["DialogueText"] = tSpringFestival2020Other_Texy[3327308]
tItem[3327308]["Text1-1"] = {111}
tItem[3327308]["tOption1-1"] = {111, 112, 113, 114, 115, 116, 117, 118}
tItem[3327308]["OptionFunc111"] = "SpringFestival2020Other_TheNewWarePackage</N>3327308</N>1"
tItem[3327308]["OptionFunc112"] = "SpringFestival2020Other_TheNewWarePackage</N>3327308</N>2"
tItem[3327308]["OptionFunc113"] = "SpringFestival2020Other_TheNewWarePackage</N>3327308</N>3"
tItem[3327308]["OptionFunc114"] = "SpringFestival2020Other_TheNewWarePackage</N>3327308</N>4"
tItem[3327308]["OptionFunc115"] = "SpringFestival2020Other_TheNewWarePackage</N>3327308</N>5"
tItem[3327308]["OptionFunc116"] = "SpringFestival2020Other_TheNewWarePackage</N>3327308</N>6"
tItem[3327308]["OptionFunc117"] = "SpringFestival2020Other_TheNewWarePackage</N>3327308</N>7"
tItem[3327308]["OptionFunc118"] = "SpringFestival2020Other_TheNewWarePackage</N>3327308</N>8"


-- 新春有礼大福袋
tItem[3327309] = tItem[3327309] or {}
tItem[3327309]["Function"] = function(nSpring2020Other_ItemId,sSpring2020Other_ItemName)
	-- 判断背包空间
	local fSpring2020Other_Chk, nSpring2020Other_Space = RewardTemplate_ChkRandomSpace(tSpringFestival2020Other_Reward, nSpring2020Other_ItemId)
	if not fSpring2020Other_Chk then
		User_TalkChannel2005(string.format(tSpringFestival2020Other_Texy["Sys_Msg"]["NotSpace"], nSpring2020Other_Space))
		return
	end
	
	local tSpring2020Other_NewReward, sSpring2020Other_RewardStr = RewardTemplate_RandomReward(tSpringFestival2020Other_Reward, nSpring2020Other_ItemId)
	local sSpring2020Other_UserName = Get_UserName()
	local sSpring2020Other_BroadCastText = string.format(tSpringFestival2020Other_Texy["Sys_Msg"][3327309]["Broadast1"], sSpring2020Other_UserName, sSpring2020Other_RewardStr)
	Sys_SystemBroadcast(sSpring2020Other_BroadCastText)
	
end


-- 100天石（赠）鼠年红包
tItem[3327310] = tItem[3327310] or {}
tItem[3327310]["Function"] = function(nSpring2020Other_ItemId,sSpring2020Other_ItemName)
	SpringFestival2020Other_MouseRedEnvelopes(nSpring2020Other_ItemId)
end
-- 300天石（赠）鼠年红包
tItem[3327311] = tItem[3327310]
-- 1000天石（赠）鼠年红包
tItem[3327312] = tItem[3327310]



-- 【新年光效时装外套名】碎片
tItem[3327313] = tItem[3327313] or {}
tItem[3327313]["Function"] = function(nSpring2020Other_ItemId,sSpring2020Other_ItemName)
	local nSpring2020Other_NeedNum = tSpringFestival2020Other_Data["NeedNum"][nSpring2020Other_ItemId]
	if not Item_ChkMulItem(nSpring2020Other_ItemId, nSpring2020Other_ItemId, nSpring2020Other_NeedNum) then
		Sys_MsgBox(tSpringFestival2020Other_Texy["Sys_Msg"][nSpring2020Other_ItemId]["NotEnoughNum"])
		return
	end
	
	-- 判断条件
	local nSpring2020Other_UserId = Get_UserId()
	local bSpring2020Other_Judge = TermsOfUse_Main(nSpring2020Other_ItemId, tSpringFestival2020Other_Reward[nSpring2020Other_ItemId])
	if not bSpring2020Other_Judge then
		return
	end
	
	if RewardTemplate_UseItemAndMsg(tSpringFestival2020Other_Reward[nSpring2020Other_ItemId], nSpring2020Other_UserId, bSpring2020Other_Judge) then
		User_TalkChannel2005(tSpringFestival2020Other_Texy["Sys_Msg"][nSpring2020Other_ItemId]["Success"])
	end
end
-- 【新年光效坐骑外套名】碎片
tItemFace[3327314] = 2786
tItem[3327314] = tItem[3327314] or {}
tItem[3327314]["DialogueText"] = tSpringFestival2020Other_Texy[3327314]
tItem[3327314]["Text1-1"] = {111}
tItem[3327314]["tOption1-1"] = {111, 112}
tItem[3327314]["OptionFunc111"] = "SpringFestival2020Other_UseFragment</N>3327314</N>1"
tItem[3327314]["OptionFunc112"] = "SpringFestival2020Other_UseFragment</N>3327314</N>2"


-- 春节财神宝盒
tItemFace[3327373] = 2719
tItem[3327373] = tItem[3327373] or {}
tItem[3327373]["DialogueText"] = tSpringFestival2020Other_Texy[3327373]
tItem[3327373]["Text1-1"] = {111, 112, 113, 114}
tItem[3327373]["tOption1-1"] = {111, 112, 113, 114}
tItem[3327373]["OptionPoint111"] = "2-1"
tItem[3327373]["OptionPoint112"] = "3-1"
tItem[3327373]["OptionPoint113"] = "4-1"
tItem[3327373]["OptionPoint114"] = "6-1"
-- 开启灵珠暗格
tItem[3327373]["Text2-1"] = {211, 212, 213, 214, 215, 216,217,218, 219, 2110, 2111}
tItem[3327373]["tOption2-1"] = {211, 212}
tItem[3327373]["OptionFunc211"] = "SpringFestival2020Other_MammonPackageUseChk</N>3327373</S>2-2"
tItem[3327373]["OptionPoint212"] = "1-1"
-- 【有新春秘钥】
tItem[3327373]["Text2-2"] = {221}
tItem[3327373]["tOption2-2"] = {221, 222}
tItem[3327373]["OptionFunc221"] = "SpringFestival2020Other_MammonPackageConfirmUse</N>3327373</N>1"
tItem[3327373]["OptionPoint222"] = "1-1"
-- 开启珍宝暗格
tItem[3327373]["Text3-1"] = {311, 312, 313, 314, 315, 316,317,318, 319, 3110, 3111, 3112, 3113, 3114, 3115}
tItem[3327373]["tOption3-1"] = {311, 312}
tItem[3327373]["OptionFunc311"] = "SpringFestival2020Other_MammonPackageUseChk</N>3327373</S>3-2"
tItem[3327373]["OptionPoint312"] = "1-1"
-- 【有新春秘钥】
tItem[3327373]["Text3-2"] = {321}
tItem[3327373]["tOption3-2"] = {321, 322}
tItem[3327373]["OptionFunc321"] = "SpringFestival2020Other_MammonPackageConfirmUse</N>3327373</N>2"
tItem[3327373]["OptionPoint322"] = "1-1"
-- 开启外套暗格
tItem[3327373]["Text4-1"] = {411, 412, 413, 414, 415, 416,417,418, 419, 4110, 4111, 4112, 4113, 4114}
tItem[3327373]["tOption4-1"] = {411, 412}
tItem[3327373]["OptionFunc411"] = "SpringFestival2020Other_MammonPackageUseChk</N>3327373</S>4-2"
tItem[3327373]["OptionPoint412"] = "1-1"
-- 【有新春秘钥】
tItem[3327373]["Text4-2"] = {421}
tItem[3327373]["tOption4-2"] = {421, 422}
tItem[3327373]["OptionFunc421"] = "SpringFestival2020Other_MammonPackageConfirmUse</N>3327373</N>3"
tItem[3327373]["OptionPoint422"] = "1-1"
-- 【没有秘钥】
tItem[3327373]["Text5-1"] = {511}
tItem[3327373]["tOption5-1"] = {511, 512}
tItem[3327373]["OptionFunc511"] = "SpringFestival2020Other_OpenWebPage"
-- 直接开启
tItem[3327373]["Text6-1"] = {611}
tItem[3327373]["tOption6-1"] = {611, 612}
tItem[3327373]["OptionFunc611"] = "SpringFestival2020Other_MammonPackageDirectUse</N>3327373</N>4"


-- 新年光效时装外套
tItem[3315249] = tItem[3315249] or {}
tItem[3315249]["Function"] = function(nSpring2020Other_ItemId,sSpring2020Other_ItemName)
	-- 判断条件
	local nSpring2020Other_UserId = Get_UserId()
	local bSpring2020Other_Judge = TermsOfUse_Main(nSpring2020Other_ItemId, tSpringFestival2020Other_Reward[nSpring2020Other_ItemId])
	if not bSpring2020Other_Judge then
		return
	end
	
	if RewardTemplate_UseItemAndMsg(tSpringFestival2020Other_Reward[nSpring2020Other_ItemId], nSpring2020Other_UserId, bSpring2020Other_Judge) then
		SpringFestival2020Other_AddAdditionalFuQi(nSpring2020Other_ItemId, nSpring2020Other_UserId)
	end
end
-- 新年光效坐骑外套可选包
tItem[3315250] = tItem[3315249]
-- 新年光效坐骑外套可选包
tItem[3315251] = tItem[3315249]
-- 新年光效时装外套
tItem[3315252] = tItem[3315249]
-- 金麟舞狮·辉煌
tItem[3327544] = tItem[3315249]


-- 星云藏宝图
tItemFace[3327305] = 2773
tItem[3327305] = tItem[3327305] or {}
tItem[3327305]["DialogueText"] = tSpringFestival2020Other_Texy[3327305]
-- 【右键点击，活动时间外或已经解封】
tItem[3327305]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121}
tItem[3327305]["tOption1-1"] = {111}
tItem[3327305]["OptionFunc111"] = "SpringFestival2020Other_FindTheNpc"
tItem[3327305]["ChkFunc1-1"]= function()
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["Spring2020Other"]["ActivityTime"]) then
		return false
	end
	-- 判断任务是否完成
	local nSpring2020Other_ChkTaskId = tSpringFestival2020Other_Data["MonthTaskId"][11]
	if Task_ChkTaskDetailValue(nSpring2020Other_ChkTaskId, "CompleteFlag", ">=", 1) then
		return false
	end
	-- 赋值
	for i = 1, 12 do
		local nSpring2020Other_TaskId = tSpringFestival2020Other_Data["MonthTaskId"][i]
		local nSpring2020Other_DialogText = tSpringFestival2020Other_Data["DialogText"][i]
		if not Task_ChkTaskDetail(nSpring2020Other_TaskId) or Task_ChkTaskDetailValue(nSpring2020Other_TaskId, "CompleteFlag", "==", 0) then
			tItem[3327305]["Text11" .. nSpring2020Other_DialogText] = string.format(tSpringFestival2020Other_Texy[3327305]["Text11" .. nSpring2020Other_DialogText], tSpringFestival2020Other_Texy["DialogAdd"]["Gray"])
		else
			tItem[3327305]["Text11" .. nSpring2020Other_DialogText] = string.format(tSpringFestival2020Other_Texy[3327305]["Text11" .. nSpring2020Other_DialogText], tSpringFestival2020Other_Texy["DialogAdd"]["Yellow"])
		end
	end
	return true
end
-- 【右键点击，活动时间外或已经解封】
tItem[3327305]["Text1-2"] = {121,122,123,124,125,126,127,128,129,1210,1211,1212,1213,1214,1215,1216,1217,1218,1219,1220,1221,1222}
tItem[3327305]["tOption1-2"] = {121}
tItem[3327305]["ChkFunc1-2"]= function()
	-- 判断任务是否完成
	for i = 1, 12 do
		local nSpring2020Other_TaskId = tSpringFestival2020Other_Data["MonthTaskId"][i]
		local nSpring2020Other_DialogText = tSpringFestival2020Other_Data["DialogText"][i]
		if not Task_ChkTaskDetail(nSpring2020Other_TaskId) or Task_ChkTaskDetailValue(nSpring2020Other_TaskId, "CompleteFlag", "==", 0) then
			tItem[3327305]["Text12" .. nSpring2020Other_DialogText] = string.format(tSpringFestival2020Other_Texy[3327305]["Text12" .. nSpring2020Other_DialogText], tSpringFestival2020Other_Texy["DialogAdd"]["Gray"])
		else
			tItem[3327305]["Text12" .. nSpring2020Other_DialogText] = string.format(tSpringFestival2020Other_Texy[3327305]["Text12" .. nSpring2020Other_DialogText], tSpringFestival2020Other_Texy["DialogAdd"]["Yellow"])
		end
		
	end
	return true
end


---------------------------------------上线触发--------------------------------
-- 工具下架 tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- 工具下架 table.insert(tSystem_PlayLogin_Func, SpringFestival2020Other_UserLogin)



-- 互动接口  拜年
-- 工具下架 tProcessInteract["tFunction"] = tProcessInteract["tFunction"] or {}
-- 工具下架 table.insert(tProcessInteract["tFunction"], SpringFestival2020Other_InteractionChoose)


---------------------------------怪物部分---------------------------------------------
local tSpringFestival2020Other_KillMonster = {}
tSpringFestival2020Other_KillMonster["ActivityTime"] = tActivityTime["Spring2020Other"]["ActivityTime"]
tSpringFestival2020Other_KillMonster["Function"] = SpringFestival2020Other_CrossKillMonster
tSpringFestival2020Other_KillMonster["MonsterId"] = {5886, 5887, 5888, 5899, 5900, 5901, 5902}
-- 工具下架 table.insert(tMonsterDrop_AreaLoad,tSpringFestival2020Other_KillMonster)

---------------------------------时间自检--------------------------------------------- 
local tSpringFestival2020Other_OnTime = {}
	-- 出公告
	tSpringFestival2020Other_OnTime[1] = {}
	tSpringFestival2020Other_OnTime[1]["ActivityTime"] = tActivityTime["Spring2020Other"]["ActivityTime"]
	tSpringFestival2020Other_OnTime[1]["Type"] = 2
	tSpringFestival2020Other_OnTime[1]["TimeType"] = 5  -- 小时时间
	tSpringFestival2020Other_OnTime[1]["Multiple"] = {}
	tSpringFestival2020Other_OnTime[1]["Multiple"][1] = "00 00"
	tSpringFestival2020Other_OnTime[1]["Multiple"][2] = "30 30"
	tSpringFestival2020Other_OnTime[1]["Func"] = SpringFestival2020Other_MonsterBroadcast
-- 工具下架 table.insert(tSystemTime_InitialData,tSpringFestival2020Other_OnTime[1])
