------------------------------------------------------------------------------------
--Name：       191009[英文征服][任务脚本]11月VIP乐园（11.12-长期）
--Creator:      兰瑞妹
--Created:     2019-10-09
------------------------------------------------------------------------------------
--任务需求：
-- 更新时间： 
-- 2019年11月12日（周二）例行维护
-- 活动时间：
-- 11.12-长期
-- 任务概述：
-- 制作6个NPC，作用如下：
-- 1.CO资讯NPC：可跳转线下页面，链接后续提供
-- 2.CO教官NPC：点击进入Boss陪练场景并给予对应奖励。
-- 3.CO审判者NPC：进入一张VIP公共地图，里面每个小时刷新8只小BOSS。
-- 4.CO-兑换使NPC：跳转对应页面，，链接后续提供
-- 5.CO福利官NPC：与NPC对话，每周可以花费不同赠点或者金币换购该礼包
-- 具体需求详见附件。需要emoney_buy log记录玩家领取礼包和参与情况。

-- 命名前缀
-- VIP_Paradise_

-- #stc 掩码说明 
-- #stc(207,13) 背包信
-- #stc(207,14) 25173,'梦幻福利官' 是否购买每周礼包 ==1 已买 隔周清除
-- #stc(207,15) 25170,'战术教官' 对应挑战层数 简单模式 隔周清除 二进制掩码 含2^1 是第1层 含2^2 是第2层 类推 2^9 是第9层
-- #stc(208,51) 25170,'战术教官' 对应挑战层数 困难模式 隔周清除 二进制掩码 含2^1 是第1层 含2^2 是第2层 类推 2^9 是第9层
-- #stc(208,52) 25170,'战术教官' 对应挑战层数 地狱模式 隔周清除 二进制掩码 含2^1 是第1层 含2^2 是第2层 类推 2^9 是第9层
-- #stc(209,77) 25170,'战术教官' 对应挑战层数 简单模式 隔周清除 人生果上限次数5
-- #stc(209,78) 25170,'战术教官' 对应挑战层数 困难模式 隔周清除 人生果上限次数5
-- #stc(209,79) 25170,'战术教官' 对应挑战层数 地狱模式 隔周清除 人生果上限次数5

--------------------------------------数据配置部分--------------------------------------
-- 常量表
local tVIP_Paradise_Count = {}
	
	-- 初始选项索引
	tVIP_Paradise_Count["OptionStart"] = 211
	
	-- 层数对应战力
	tVIP_Paradise_Count["CombatForces"] = {}
	-- 简单模式
	tVIP_Paradise_Count["CombatForces"][1] = {}
	tVIP_Paradise_Count["CombatForces"][1][1] = 400
	tVIP_Paradise_Count["CombatForces"][1][2] = 410
	tVIP_Paradise_Count["CombatForces"][1][3] = 420
	tVIP_Paradise_Count["CombatForces"][1][4] = 430
	tVIP_Paradise_Count["CombatForces"][1][5] = 440
	tVIP_Paradise_Count["CombatForces"][1][6] = 450
	tVIP_Paradise_Count["CombatForces"][1][7] = 460
	tVIP_Paradise_Count["CombatForces"][1][8] = 470
	tVIP_Paradise_Count["CombatForces"][1][9] = 480
	-- 困难模式
	tVIP_Paradise_Count["CombatForces"][2] = {}
	tVIP_Paradise_Count["CombatForces"][2][1] = 490
	tVIP_Paradise_Count["CombatForces"][2][2] = 495
	tVIP_Paradise_Count["CombatForces"][2][3] = 500
	tVIP_Paradise_Count["CombatForces"][2][4] = 502
	tVIP_Paradise_Count["CombatForces"][2][5] = 504
	tVIP_Paradise_Count["CombatForces"][2][6] = 506
	tVIP_Paradise_Count["CombatForces"][2][7] = 508
	tVIP_Paradise_Count["CombatForces"][2][8] = 510
	tVIP_Paradise_Count["CombatForces"][2][9] = 515
	-- 地狱
	tVIP_Paradise_Count["CombatForces"][3] = {}
	tVIP_Paradise_Count["CombatForces"][3][1] = {490,490}
	-- tVIP_Paradise_Count["CombatForces"][3][1] = {100,100}
	tVIP_Paradise_Count["CombatForces"][3][2] = {490,490,490}
	tVIP_Paradise_Count["CombatForces"][3][3] = {490,490,490,490}
	tVIP_Paradise_Count["CombatForces"][3][4] = {490,490,490,490,490}
	tVIP_Paradise_Count["CombatForces"][3][5] = {495,495,495,495,495}
	tVIP_Paradise_Count["CombatForces"][3][6] = {500,500,500,500,500}
	tVIP_Paradise_Count["CombatForces"][3][7] = {505,505,505,505,505}
	tVIP_Paradise_Count["CombatForces"][3][8] = {510,510,510,510,510}
	tVIP_Paradise_Count["CombatForces"][3][9] = {515,515,515,515,515}
	
	-- 除魔试炼场
	tVIP_Paradise_Count["Challenge"] = {}
	-- 副本id
	tVIP_Paradise_Count["Challenge"]["Instance"] = 347
	-- 副本生成怪物id
	tVIP_Paradise_Count["Challenge"]["PatternGenerator"] = 30172
	tVIP_Paradise_Count["Challenge"]["PosX"] = 163
	tVIP_Paradise_Count["Challenge"]["PosY"] = 172
	tVIP_Paradise_Count["Challenge"]["PatternMonster"] = {}
	-- 难度层数对应怪物
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][1] = {}
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][1][1] = 5774
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][1][2] = 5775
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][1][3] = 5776
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][1][4] = 5777
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][1][5] = 5778
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][1][6] = 5779
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][1][7] = 5780
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][1][8] = 5781
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][1][9] = 5782
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][2] = {}
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][2][1] = 5783
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][2][2] = 5784
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][2][3] = 5785
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][2][4] = 5786
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][2][5] = 5787
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][2][6] = 5788
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][2][7] = 5789
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][2][8] = 5790
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][2][9] = 5791
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][3] = {}
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][3][1] = 5792
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][3][2] = 5793
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][3][3] = 5794
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][3][4] = 5795
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][3][5] = 5796
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][3][6] = 5797
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][3][7] = 5798
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][3][8] = 5799
	tVIP_Paradise_Count["Challenge"]["PatternMonster"][3][9] = 5800
	
	-- 梦幻城挑战地图
	tVIP_Paradise_Count["Trial"] = {}
	-- 生成怪物i小BOSS
	tVIP_Paradise_Count["Trial"][1] = {}
	tVIP_Paradise_Count["Trial"][1]["Generator"] = 30173
	tVIP_Paradise_Count["Trial"][1]["MapId"] = 10604
	tVIP_Paradise_Count["Trial"][1]["MonsterId"] = 5801
	tVIP_Paradise_Count["Trial"][1]["MapPosition"] = {}
	tVIP_Paradise_Count["Trial"][1]["MapPosition"][1] = {166,125}
	tVIP_Paradise_Count["Trial"][1]["MapPosition"][2] = {176,225}
	tVIP_Paradise_Count["Trial"][1]["MapPosition"][3] = {119,172}
	tVIP_Paradise_Count["Trial"][1]["MapPosition"][4] = {219,177}
	tVIP_Paradise_Count["Trial"][1]["MapPosition"][5] = {156,166}
	tVIP_Paradise_Count["Trial"][1]["MapPosition"][6] = {178,165}
	tVIP_Paradise_Count["Trial"][1]["MapPosition"][7] = {157,186}
	tVIP_Paradise_Count["Trial"][1]["MapPosition"][8] = {177,186}
	-- 生成怪物 大BOSS
	tVIP_Paradise_Count["Trial"][2] = {}
	tVIP_Paradise_Count["Trial"][2]["Generator"] = 30174
	tVIP_Paradise_Count["Trial"][2]["MapId"] = 10604
	tVIP_Paradise_Count["Trial"][2]["MonsterId"] = 5802
	-- 刷怪时间点
	tVIP_Paradise_Count["Trial"][2]["MapPosition"] = {}
	tVIP_Paradise_Count["Trial"][2]["MapPosition"][1] = {157,166}
	tVIP_Paradise_Count["Trial"][2]["MapPosition"][2] = {177,165}
	tVIP_Paradise_Count["Trial"][2]["MapPosition"][3] = {178,186}
	tVIP_Paradise_Count["Trial"][2]["MapPosition"][4] = {157,187}
	
	-- VIP每周超值包
	tVIP_Paradise_Count["VIPExchange"] = {}
	-- 索引对应VIP等级
	-- EMoneyMono：兑换需要天石（赠）
	-- Money：兑换需要金币
	-- 兑换获得物品
	tVIP_Paradise_Count["VIPExchange"][1] = {}
	tVIP_Paradise_Count["VIPExchange"][1]["EMoneyMono"] = 150
	tVIP_Paradise_Count["VIPExchange"][1]["Money"] = 1800000
	tVIP_Paradise_Count["VIPExchange"][1]["ItemId"] = 3314140
	tVIP_Paradise_Count["VIPExchange"][2] = {}
	tVIP_Paradise_Count["VIPExchange"][2]["EMoneyMono"] = 330
	tVIP_Paradise_Count["VIPExchange"][2]["Money"] = 3900000
	tVIP_Paradise_Count["VIPExchange"][2]["ItemId"] = 3314141
	tVIP_Paradise_Count["VIPExchange"][3] = {}
	tVIP_Paradise_Count["VIPExchange"][3]["EMoneyMono"] = 400
	tVIP_Paradise_Count["VIPExchange"][3]["Money"] = 4800000
	tVIP_Paradise_Count["VIPExchange"][3]["ItemId"] = 3314142
	tVIP_Paradise_Count["VIPExchange"][4] = {}
	tVIP_Paradise_Count["VIPExchange"][4]["EMoneyMono"] = 500
	tVIP_Paradise_Count["VIPExchange"][4]["Money"] = 6000000
	tVIP_Paradise_Count["VIPExchange"][4]["ItemId"] = 3314143
	tVIP_Paradise_Count["VIPExchange"][5] = {}
	tVIP_Paradise_Count["VIPExchange"][5]["EMoneyMono"] = 900
	tVIP_Paradise_Count["VIPExchange"][5]["Money"] = 9000000
	tVIP_Paradise_Count["VIPExchange"][5]["ItemId"] = 3314144
	tVIP_Paradise_Count["VIPExchange"][6] = {}
	tVIP_Paradise_Count["VIPExchange"][6]["EMoneyMono"] = 1000
	tVIP_Paradise_Count["VIPExchange"][6]["Money"] = 12000000
	tVIP_Paradise_Count["VIPExchange"][6]["ItemId"] = 3314145
	tVIP_Paradise_Count["VIPExchange"][7] = {}
	tVIP_Paradise_Count["VIPExchange"][7]["EMoneyMono"] = 1000
	tVIP_Paradise_Count["VIPExchange"][7]["Money"] = 12000000
	tVIP_Paradise_Count["VIPExchange"][7]["ItemId"] = 3314146
	
	-- 怪物存活时间
	tVIP_Paradise_Count["Time"] = 3540
	tVIP_Paradise_Count["NewTime"] = 21540
	
-- Log表
local tVIP_Paradise_Log = {}
	-- 消耗赠点
	tVIP_Paradise_Log["MonoVIPExchange"] = "0,%d,0,0,12000751,2,%d,1"
	tVIP_Paradise_Log["MonoVIPEMonyBuyTime"] = "350	22768	0	0	1	"
	tVIP_Paradise_Log["MonoVIPEmonyBuy"] = "350	22769	0	0	%d	"
	-- 消耗金币
	tVIP_Paradise_Log["MoneyVIPExchange"] = "0,0,1,%d,12000751,2,%d,1"
	tVIP_Paradise_Log["MoneyVIPEMonyBuyTime"] = "350	22770	0	0	1	"
	tVIP_Paradise_Log["MoneyVIPEmonyBuy"] = "350	22771	0	0	%d	"
	-- Boss挑战人数
	tVIP_Paradise_Log["EmonyBuyEnter"] = {}
	tVIP_Paradise_Log["EmonyBuyEnter"][1] ="350	22745	0	0	1	"
	tVIP_Paradise_Log["EmonyBuyEnter"][2] ="350	22746	0	0	1	"
	tVIP_Paradise_Log["EmonyBuyEnter"][3] ="350	22747	0	0	1	"
	tVIP_Paradise_Log["EmonyBuyEnter"][4] ="350	22748	0	0	1	"
	tVIP_Paradise_Log["EmonyBuyEnter"][5] ="350	22749	0	0	1	"
	tVIP_Paradise_Log["EmonyBuyEnter"][6] ="350	22750	0	0	1	"
	tVIP_Paradise_Log["EmonyBuyEnter"][7] ="350	22751	0	0	1	"
	tVIP_Paradise_Log["EmonyBuyEnter"][8] ="350	22752	0	0	1	"
	tVIP_Paradise_Log["EmonyBuyEnter"][9] ="350	22753	0	0	1	"
	-- 挑战Boss成功人数
	tVIP_Paradise_Log["EmonyBuyFinish"] = {}
	tVIP_Paradise_Log["EmonyBuyFinish"][1] ="350	22754	0	0	1	"
	tVIP_Paradise_Log["EmonyBuyFinish"][2] ="350	22755	0	0	1	"
	tVIP_Paradise_Log["EmonyBuyFinish"][3] ="350	22756	0	0	1	"
	tVIP_Paradise_Log["EmonyBuyFinish"][4] ="350	22757	0	0	1	"
	tVIP_Paradise_Log["EmonyBuyFinish"][5] ="350	22758	0	0	1	"
	tVIP_Paradise_Log["EmonyBuyFinish"][6] ="350	22759	0	0	1	"
	tVIP_Paradise_Log["EmonyBuyFinish"][7] ="350	22760	0	0	1	"
	tVIP_Paradise_Log["EmonyBuyFinish"][8] ="350	22761	0	0	1	"
	tVIP_Paradise_Log["EmonyBuyFinish"][9] ="350	22762	0	0	1	"

-- stc掩码
local tVIP_Paradise_Stc = {}
	-- 25170,'战术教官' 对应挑战层数 简单模式 隔周清除 二进制掩码 含2^1 是第1层 含2^2 是第2层 类推 2^9 是第9层
	tVIP_Paradise_Stc[1] = {}
	tVIP_Paradise_Stc[1]["EventType"] = 207
	tVIP_Paradise_Stc[1]["DataType"] = 15
	tVIP_Paradise_Stc[1]["Limit"] = 1022
	-- 25170,'战术教官' 对应挑战层数 困难模式 隔周清除 二进制掩码 含2^1 是第1层 含2^2 是第2层 类推 2^9 是第9层
	tVIP_Paradise_Stc[2] = {}
	tVIP_Paradise_Stc[2]["EventType"] = 208
	tVIP_Paradise_Stc[2]["DataType"] = 51
	tVIP_Paradise_Stc[2]["Limit"] = 1022
	-- 25170,'战术教官' 对应挑战层数 地狱模式 隔周清除 二进制掩码 含2^1 是第1层 含2^2 是第2层 类推 2^9 是第9层
	tVIP_Paradise_Stc[3] = {}
	tVIP_Paradise_Stc[3]["EventType"] = 208
	tVIP_Paradise_Stc[3]["DataType"] = 52
	tVIP_Paradise_Stc[3]["Limit"] = 1022
	-- 25173,'梦幻福利官' 是否购买每周礼包 ==1 已买 隔周清除
	tVIP_Paradise_Stc[4] = {}
	tVIP_Paradise_Stc[4]["EventType"] = 207
	tVIP_Paradise_Stc[4]["DataType"] = 14
	--  25170,'战术教官' 对应挑战层数 简单模式 隔周清除 人生果上限次数5
	--  25170,'战术教官' 对应挑战层数 困难模式 隔周清除 人生果上限次数5
	--  25170,'战术教官' 对应挑战层数 地狱模式 隔周清除 人生果上限次数5
	tVIP_Paradise_Stc[5] = {}
	tVIP_Paradise_Stc[5]["EventType"] = 209
	tVIP_Paradise_Stc[5]["DataType"] = 77
	tVIP_Paradise_Stc[5]["Limits"] = 5
	tVIP_Paradise_Stc[6] = {}
	tVIP_Paradise_Stc[6]["EventType"] = 209
	tVIP_Paradise_Stc[6]["DataType"] = 78
	tVIP_Paradise_Stc[6]["Limits"] = 5
	tVIP_Paradise_Stc[7] = {}
	tVIP_Paradise_Stc[7]["EventType"] = 209
	tVIP_Paradise_Stc[7]["DataType"] = 79
	tVIP_Paradise_Stc[7]["Limits"] = 5
	
-- 全局表
local tVIP_Paradise_LearderJudgy = {}
local tVIP_Paradise_UserNumJudgy = {}
local tVIP_Paradise_LearderNum = {}
local tVIP_Paradise_LearderIDUserId = {}

-- 地图位置
local tVIP_Paradise_MapPosition = {}
	-- 进入地图 10602,'梦幻城'
	tVIP_Paradise_MapPosition[1] = {}
	tVIP_Paradise_MapPosition[1]["MapId"] = 10602
	tVIP_Paradise_MapPosition[1]["PosX"] = 51
	tVIP_Paradise_MapPosition[1]["PosY"] = 66
	tVIP_Paradise_MapPosition[1]["Range"] = 3
	-- 出来地图
	tVIP_Paradise_MapPosition[2] = {}
	tVIP_Paradise_MapPosition[2]["MapId"] = 1002
	tVIP_Paradise_MapPosition[2]["PosX"] = 327
	tVIP_Paradise_MapPosition[2]["PosY"] = 497
	tVIP_Paradise_MapPosition[2]["Range"] = 5
	-- 进入试炼场
	tVIP_Paradise_MapPosition[3] = {}
	tVIP_Paradise_MapPosition[3]["MapId"] = 10604
	tVIP_Paradise_MapPosition[3]["PosX"] = 170
	tVIP_Paradise_MapPosition[3]["PosY"] = 209
	tVIP_Paradise_MapPosition[3]["Range"] = 5
	
-- 邮件发奖信息
local tVIP_Paradise_MailInfo = {}
	-- 邮件天数 
	tVIP_Paradise_MailInfo["ExistDay"] = 3
	tVIP_Paradise_MailInfo["ActionId"] = {}
	tVIP_Paradise_MailInfo["ActionId"][1] = {}
	tVIP_Paradise_MailInfo["ActionId"][1][1] =97307691
	tVIP_Paradise_MailInfo["ActionId"][1][2] =97307692
	tVIP_Paradise_MailInfo["ActionId"][1][3] =97307693
	tVIP_Paradise_MailInfo["ActionId"][1][4] =97307694
	tVIP_Paradise_MailInfo["ActionId"][1][5] =97307695
	tVIP_Paradise_MailInfo["ActionId"][1][6] =97307696
	tVIP_Paradise_MailInfo["ActionId"][1][7] =97307697
	tVIP_Paradise_MailInfo["ActionId"][1][8] =97307698
	tVIP_Paradise_MailInfo["ActionId"][1][9] =97307699
	tVIP_Paradise_MailInfo["ActionId"][2] = {}
	tVIP_Paradise_MailInfo["ActionId"][2][1] = 97307700
	tVIP_Paradise_MailInfo["ActionId"][2][2] =97307701
	tVIP_Paradise_MailInfo["ActionId"][2][3] =97307702
	tVIP_Paradise_MailInfo["ActionId"][2][4] =97307703
	tVIP_Paradise_MailInfo["ActionId"][2][5] =97307704
	tVIP_Paradise_MailInfo["ActionId"][2][6] =97307705
	tVIP_Paradise_MailInfo["ActionId"][2][7] =97307706
	tVIP_Paradise_MailInfo["ActionId"][2][8] =97307707
	tVIP_Paradise_MailInfo["ActionId"][2][9] =97307708
	tVIP_Paradise_MailInfo["ActionId"][3] = {}
	tVIP_Paradise_MailInfo["ActionId"][3][1] =97307709
	tVIP_Paradise_MailInfo["ActionId"][3][2] =97307710
	tVIP_Paradise_MailInfo["ActionId"][3][3] =97307711
	tVIP_Paradise_MailInfo["ActionId"][3][4] =97307712
	tVIP_Paradise_MailInfo["ActionId"][3][5] =97307713
	tVIP_Paradise_MailInfo["ActionId"][3][6] =97307714
	tVIP_Paradise_MailInfo["ActionId"][3][7] =97307715
	tVIP_Paradise_MailInfo["ActionId"][3][8] =97307716
	tVIP_Paradise_MailInfo["ActionId"][3][9] =97307717
	tVIP_Paradise_MailInfo["ActionId"][4] = {}
	tVIP_Paradise_MailInfo["ActionId"][4][1] = 97307718
	tVIP_Paradise_MailInfo["ActionId"][4][2] =97307719
	tVIP_Paradise_MailInfo["ActionId"][4][3] =97307720
	tVIP_Paradise_MailInfo["ActionId"][4][4] =97307721
	tVIP_Paradise_MailInfo["ActionId"][4][5] =97307722
	tVIP_Paradise_MailInfo["ActionId"][4][6] =97307723
	tVIP_Paradise_MailInfo["ActionId"][4][7] =97307724
	tVIP_Paradise_MailInfo["ActionId"][4][8] =97307725
	tVIP_Paradise_MailInfo["ActionId"][4][9] =97307726
	tVIP_Paradise_MailInfo["ActionId"][5] = {}
	tVIP_Paradise_MailInfo["ActionId"][5][1] = 97307727
	tVIP_Paradise_MailInfo["ActionId"][6] = {}
	tVIP_Paradise_MailInfo["ActionId"][6][1] = 97307728
	
-- 奖励表
local tVIP_Paradise_Reward = {}
	-- npc兑换
	tVIP_Paradise_Reward[1] = {}
	tVIP_Paradise_Reward[1]["RewardItem"] = {}
	tVIP_Paradise_Reward[1]["RewardItem"][1] = {}
	tVIP_Paradise_Reward[1]["RewardItem"][1]["Id"] = 3314140
	tVIP_Paradise_Reward[1]["RewardItem"][1]["Attr"] = "0 1"
	tVIP_Paradise_Reward[1]["RewardEffect"] = {}
	tVIP_Paradise_Reward[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_Reward[1]["RewardEffect"]["Effect"] = "angelwing"
	
	
	-- ===VIP1每周超值包
	-- ===索引:tVIP_Paradise_Reward[3314140]
	-- ===删除: 3314140,1
	-- ===
	tVIP_Paradise_Reward[3314140] = {}
	tVIP_Paradise_Reward[3314140]["LogId"] = 12001689
	tVIP_Paradise_Reward[3314140]["DeleteItem"] = {}
	tVIP_Paradise_Reward[3314140]["DeleteItem"][1] = {}
	tVIP_Paradise_Reward[3314140]["DeleteItem"][1]["Id"] = 3314140 -- 【库】VIP1每周超值包[属性:11]
	tVIP_Paradise_Reward[3314140]["RewardItem"] = {}
	tVIP_Paradise_Reward[3314140]["RewardItem"][1] = {}
	tVIP_Paradise_Reward[3314140]["RewardItem"][1]["Id"] = 1088000 -- DragonBall[1088000][属性:0][叠加:0][金币:10000], 【表格】赠龙珠*1
	tVIP_Paradise_Reward[3314140]["RewardItem"][1]["Attr"] = "0 1 3" -- DragonBall（赠）*1
	tVIP_Paradise_Reward[3314140]["RewardItem"][2] = {}
	tVIP_Paradise_Reward[3314140]["RewardItem"][2]["Id"] = 730001 -- +1Stone[730001][属性:0][叠加:0][金币:0], 【表格】+1赤练石赠*3
	tVIP_Paradise_Reward[3314140]["RewardItem"][2]["Attr"] = "0 3 3" -- +1Stone（赠）*3
	tVIP_Paradise_Reward[3314140]["RewardItem"][3] = {}
	tVIP_Paradise_Reward[3314140]["RewardItem"][3]["Id"] = 720027 -- MeteorScroll[720027][属性:0][叠加:0][金币:0], 【表格】流星卷赠*2
	tVIP_Paradise_Reward[3314140]["RewardItem"][3]["Attr"] = "0 2 3" -- MeteorScroll（赠）*2
	tVIP_Paradise_Reward[3314140]["RewardItem"][4] = {}
	tVIP_Paradise_Reward[3314140]["RewardItem"][4]["Id"] = 3003878 -- NormalGemBag[3003878][属性:9][叠加:0][金币:0], 【表格】赠随机普通宝石袋*3
	tVIP_Paradise_Reward[3314140]["RewardItem"][4]["Attr"] = "0 3" -- NormalGemBag*3
	tVIP_Paradise_Reward[3314140]["RewardEffect"] = {}
	tVIP_Paradise_Reward[3314140]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_Reward[3314140]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_Reward[3314141] = {}
	-- ===VIP2每周超值包
	-- ===索引:tVIP_Paradise_Reward[3314141]
	-- ===删除: 3314141,1
	-- ===
	tVIP_Paradise_Reward[3314141]["LogId"] = 12001689
	tVIP_Paradise_Reward[3314141]["DeleteItem"] = {}
	tVIP_Paradise_Reward[3314141]["DeleteItem"][1] = {}
	tVIP_Paradise_Reward[3314141]["DeleteItem"][1]["Id"] = 3314141 -- 【库】VIP2每周超值包[属性:11]
	tVIP_Paradise_Reward[3314141]["RewardItem"] = {}
	tVIP_Paradise_Reward[3314141]["RewardItem"][1] = {}
	tVIP_Paradise_Reward[3314141]["RewardItem"][1]["Id"] = 1088000 -- DragonBall[1088000][属性:0][叠加:0][金币:10000], 【表格】赠龙珠*1
	tVIP_Paradise_Reward[3314141]["RewardItem"][1]["Attr"] = "0 1 3" -- DragonBall（赠）*1
	tVIP_Paradise_Reward[3314141]["RewardItem"][2] = {}
	tVIP_Paradise_Reward[3314141]["RewardItem"][2]["Id"] = 730002 -- +2Stone[730002][属性:0][叠加:0][金币:0], 【表格】+2赤练石赠*5
	tVIP_Paradise_Reward[3314141]["RewardItem"][2]["Attr"] = "0 5 3" -- +2Stone（赠）*5
	tVIP_Paradise_Reward[3314141]["RewardCultivation"] = {}
	tVIP_Paradise_Reward[3314141]["RewardCultivation"]["Value"] = 1000 -- 修行值, 【需求】赠1000点修行值
	tVIP_Paradise_Reward[3314141]["RewardItem"][3] = {}
	tVIP_Paradise_Reward[3314141]["RewardItem"][3]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】赠强练丹*5
	tVIP_Paradise_Reward[3314141]["RewardItem"][3]["Attr"] = "0 5 3" -- FavoredTrainingPill（赠）*5
	tVIP_Paradise_Reward[3314141]["RewardEffect"] = {}
	tVIP_Paradise_Reward[3314141]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_Reward[3314141]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_Reward[3314142] = {}
	-- ===VIP3每周超值包
	-- ===索引:tVIP_Paradise_Reward[3314142]
	-- ===删除: 3314142,1
	-- ===
	tVIP_Paradise_Reward[3314142]["LogId"] = 12001689
	tVIP_Paradise_Reward[3314142]["DeleteItem"] = {}
	tVIP_Paradise_Reward[3314142]["DeleteItem"][1] = {}
	tVIP_Paradise_Reward[3314142]["DeleteItem"][1]["Id"] = 3314142 -- 【库】VIP3每周超值包[属性:11]
	tVIP_Paradise_Reward[3314142]["RewardItem"] = {}
	tVIP_Paradise_Reward[3314142]["RewardItem"][1] = {}
	tVIP_Paradise_Reward[3314142]["RewardItem"][1]["Id"] = 1088000 -- DragonBall[1088000][属性:0][叠加:0][金币:10000], 【表格】赠龙珠*2
	tVIP_Paradise_Reward[3314142]["RewardItem"][1]["Attr"] = "0 2 3" -- DragonBall（赠）*2
	tVIP_Paradise_Reward[3314142]["RewardItem"][2] = {}
	tVIP_Paradise_Reward[3314142]["RewardItem"][2]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】‘+3赤练石赠*1
	tVIP_Paradise_Reward[3314142]["RewardItem"][2]["Attr"] = "0 1 3" -- +3Stone（赠）*1
	tVIP_Paradise_Reward[3314142]["RewardCultivation"] = {}
	tVIP_Paradise_Reward[3314142]["RewardCultivation"]["Value"] = 1500 -- 修行值, 【需求】赠1500点修行值
	tVIP_Paradise_Reward[3314142]["RewardItem"][3] = {}
	tVIP_Paradise_Reward[3314142]["RewardItem"][3]["Id"] = 3002926 -- FreeTrainingPill[3002926][属性:11][叠加:10000][金币:0], 【表格】赠免费强练丹*5
	tVIP_Paradise_Reward[3314142]["RewardItem"][3]["Attr"] = "0 5" -- FreeTrainingPill*5
	tVIP_Paradise_Reward[3314142]["RewardEffect"] = {}
	tVIP_Paradise_Reward[3314142]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_Reward[3314142]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_Reward[3314143] = {}
	-- ===VIP4每周超值包
	-- ===索引:tVIP_Paradise_Reward[3314143]
	-- ===删除: 3314143,1
	-- ===
	tVIP_Paradise_Reward[3314143]["LogId"] = 12001689
	tVIP_Paradise_Reward[3314143]["DeleteItem"] = {}
	tVIP_Paradise_Reward[3314143]["DeleteItem"][1] = {}
	tVIP_Paradise_Reward[3314143]["DeleteItem"][1]["Id"] = 3314143 -- 【库】VIP4每周超值包[属性:11]
	tVIP_Paradise_Reward[3314143]["RewardItem"] = {}
	tVIP_Paradise_Reward[3314143]["RewardItem"][1] = {}
	tVIP_Paradise_Reward[3314143]["RewardItem"][1]["Id"] = 1088000 -- DragonBall[1088000][属性:0][叠加:0][金币:10000], 【表格】赠龙珠*2
	tVIP_Paradise_Reward[3314143]["RewardItem"][1]["Attr"] = "0 2 3" -- DragonBall（赠）*2
	tVIP_Paradise_Reward[3314143]["RewardItem"][2] = {}
	tVIP_Paradise_Reward[3314143]["RewardItem"][2]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】+3赤练石赠*2
	tVIP_Paradise_Reward[3314143]["RewardItem"][2]["Attr"] = "0 2 3" -- +3Stone（赠）*2
	tVIP_Paradise_Reward[3314143]["RewardItem"][3] = {}
	tVIP_Paradise_Reward[3314143]["RewardItem"][3]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】赠黄色神纹精粹*15
	tVIP_Paradise_Reward[3314143]["RewardItem"][3]["Attr"] = "0 15 3" -- YellowRuneEssence（赠）*15
	tVIP_Paradise_Reward[3314143]["RewardCultivation"] = {}
	tVIP_Paradise_Reward[3314143]["RewardCultivation"]["Value"] = 2000 -- 修行值, 【需求】赠2000点修行值
	tVIP_Paradise_Reward[3314143]["RewardEffect"] = {}
	tVIP_Paradise_Reward[3314143]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_Reward[3314143]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_Reward[3314144] = {}
	-- ===VIP5每周超值包
	-- ===索引:tVIP_Paradise_Reward[3314144]
	-- ===删除: 3314144,1
	-- ===
	tVIP_Paradise_Reward[3314144]["LogId"] = 12001689
	tVIP_Paradise_Reward[3314144]["DeleteItem"] = {}
	tVIP_Paradise_Reward[3314144]["DeleteItem"][1] = {}
	tVIP_Paradise_Reward[3314144]["DeleteItem"][1]["Id"] = 3314144 -- 【库】VIP5每周超值包[属性:11]
	tVIP_Paradise_Reward[3314144]["RewardItem"] = {}
	tVIP_Paradise_Reward[3314144]["RewardItem"][1] = {}
	tVIP_Paradise_Reward[3314144]["RewardItem"][1]["Id"] = 730004 -- +4Stone[730004][属性:0][叠加:0][金币:0], 【表格】+4赤练石赠*1
	tVIP_Paradise_Reward[3314144]["RewardItem"][1]["Attr"] = "0 1 3" -- +4Stone（赠）*1
	tVIP_Paradise_Reward[3314144]["RewardItem"][2] = {}
	tVIP_Paradise_Reward[3314144]["RewardItem"][2]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】赠黄色神纹精粹*30
	tVIP_Paradise_Reward[3314144]["RewardItem"][2]["Attr"] = "0 30 3" -- YellowRuneEssence（赠）*30
	tVIP_Paradise_Reward[3314144]["RewardStrengthValue"] = {}
	tVIP_Paradise_Reward[3314144]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】赠气力值3000
	tVIP_Paradise_Reward[3314144]["RewardItem"][3] = {}
	tVIP_Paradise_Reward[3314144]["RewardItem"][3]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】赠品神纹源晶*2
	tVIP_Paradise_Reward[3314144]["RewardItem"][3]["Attr"] = "0 2 3" -- RuneCrystal（赠）*2
	tVIP_Paradise_Reward[3314144]["RewardEffect"] = {}
	tVIP_Paradise_Reward[3314144]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_Reward[3314144]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_Reward[3314145] = {}
	-- ===VIP6每周超值包
	-- ===索引:tVIP_Paradise_Reward[3314145]
	-- ===删除: 3314145,1
	-- ===
	tVIP_Paradise_Reward[3314145]["LogId"] = 12001689
	tVIP_Paradise_Reward[3314145]["DeleteItem"] = {}
	tVIP_Paradise_Reward[3314145]["DeleteItem"][1] = {}
	tVIP_Paradise_Reward[3314145]["DeleteItem"][1]["Id"] = 3314145 -- 【库】VIP6每周超值包[属性:11]
	tVIP_Paradise_Reward[3314145]["RewardItem"] = {}
	tVIP_Paradise_Reward[3314145]["RewardItem"][1] = {}
	tVIP_Paradise_Reward[3314145]["RewardItem"][1]["Id"] = 730004 -- +4Stone[730004][属性:0][叠加:0][金币:0], 【表格】+4赤练石赠*2
	tVIP_Paradise_Reward[3314145]["RewardItem"][1]["Attr"] = "0 2 3" -- +4Stone（赠）*2
	tVIP_Paradise_Reward[3314145]["RewardItem"][2] = {}
	tVIP_Paradise_Reward[3314145]["RewardItem"][2]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】赠黄色神纹精粹*50
	tVIP_Paradise_Reward[3314145]["RewardItem"][2]["Attr"] = "0 50 3" -- YellowRuneEssence（赠）*50
	tVIP_Paradise_Reward[3314145]["RewardItem"][3] = {}
	tVIP_Paradise_Reward[3314145]["RewardItem"][3]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*2
	tVIP_Paradise_Reward[3314145]["RewardItem"][3]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tVIP_Paradise_Reward[3314145]["RewardItem"][4] = {}
	tVIP_Paradise_Reward[3314145]["RewardItem"][4]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】赠品神纹源晶*3
	tVIP_Paradise_Reward[3314145]["RewardItem"][4]["Attr"] = "0 3 3" -- RuneCrystal（赠）*3
	tVIP_Paradise_Reward[3314145]["RewardEffect"] = {}
	tVIP_Paradise_Reward[3314145]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_Reward[3314145]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_Reward[3314146] = {}
	-- ===VIP7每周超值包
	-- ===索引:tVIP_Paradise_Reward[3314146]
	-- ===删除: 3314146,1
	-- ===
	tVIP_Paradise_Reward[3314146]["LogId"] = 12001689
	tVIP_Paradise_Reward[3314146]["DeleteItem"] = {}
	tVIP_Paradise_Reward[3314146]["DeleteItem"][1] = {}
	tVIP_Paradise_Reward[3314146]["DeleteItem"][1]["Id"] = 3314146 -- 【库】VIP7每周超值包[属性:11]
	tVIP_Paradise_Reward[3314146]["RewardItem"] = {}
	tVIP_Paradise_Reward[3314146]["RewardItem"][1] = {}
	tVIP_Paradise_Reward[3314146]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】赠黄色神纹精粹*50
	tVIP_Paradise_Reward[3314146]["RewardItem"][1]["Attr"] = "0 50 3" -- YellowRuneEssence（赠）*50
	tVIP_Paradise_Reward[3314146]["RewardItem"][2] = {}
	tVIP_Paradise_Reward[3314146]["RewardItem"][2]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*3
	tVIP_Paradise_Reward[3314146]["RewardItem"][2]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的BrightStarStone*3
	tVIP_Paradise_Reward[3314146]["RewardItem"][3] = {}
	tVIP_Paradise_Reward[3314146]["RewardItem"][3]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】赠品神纹源晶*5
	tVIP_Paradise_Reward[3314146]["RewardItem"][3]["Attr"] = "0 5 3" -- RuneCrystal（赠）*5
	tVIP_Paradise_Reward[3314146]["RewardItem"][4] = {}
	tVIP_Paradise_Reward[3314146]["RewardItem"][4]["Id"] = 3001044 -- MysteryFruit[3001044][属性:9][叠加:99][金币:0], 【表格】天机果*20
	tVIP_Paradise_Reward[3314146]["RewardItem"][4]["Attr"] = "0 20" -- MysteryFruit*20（[错误]物品数量超10个）
	tVIP_Paradise_Reward[3314146]["RewardEffect"] = {}
	tVIP_Paradise_Reward[3314146]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_Reward[3314146]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tVIP_Paradise_Reward[3314262] = {}
	-- ===宠物蛋可选包
	-- ===索引:tVIP_Paradise_Reward[3314262][3008529]
	-- ===删除: 3314262,1
	tVIP_Paradise_Reward[3314262][3008529] = {}
	tVIP_Paradise_Reward[3314262][3008529]["LogId"] = 12001689
	tVIP_Paradise_Reward[3314262][3008529]["DeleteItem"] = {}
	tVIP_Paradise_Reward[3314262][3008529]["DeleteItem"][1] = {}
	tVIP_Paradise_Reward[3314262][3008529]["DeleteItem"][1]["Id"] = 3314262 -- 【库】EggSelectionPack[属性:11]
	tVIP_Paradise_Reward[3314262][3008529]["RewardItem"] = {}
	tVIP_Paradise_Reward[3314262][3008529]["RewardItem"][1] = {}
	tVIP_Paradise_Reward[3314262][3008529]["RewardItem"][1]["Id"] = 3008529 -- CraneEgg[3008529][属性:9][叠加:100][金币:0], 【表格】精卫宠物蛋
	tVIP_Paradise_Reward[3314262][3008529]["RewardItem"][1]["Attr"] = "0 1" -- CraneEgg*1
	tVIP_Paradise_Reward[3314262][3008529]["RewardEffect"] = {}
	tVIP_Paradise_Reward[3314262][3008529]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_Reward[3314262][3008529]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_Reward[3314262][3008530] = {}
	-- ===宠物蛋可选包
	-- ===索引:tVIP_Paradise_Reward[3314262][3008530]
	-- ===删除: 3314262,1
	tVIP_Paradise_Reward[3314262][3008530]["LogId"] = 12001689
	tVIP_Paradise_Reward[3314262][3008530]["DeleteItem"] = {}
	tVIP_Paradise_Reward[3314262][3008530]["DeleteItem"][1] = {}
	tVIP_Paradise_Reward[3314262][3008530]["DeleteItem"][1]["Id"] = 3314262 -- 【库】EggSelectionPack[属性:11]
	tVIP_Paradise_Reward[3314262][3008530]["RewardItem"] = {}
	tVIP_Paradise_Reward[3314262][3008530]["RewardItem"][1] = {}
	tVIP_Paradise_Reward[3314262][3008530]["RewardItem"][1]["Id"] = 3008530 -- PandaEgg[3008530][属性:9][叠加:100][金币:0], 【表格】熊猫宠物蛋
	tVIP_Paradise_Reward[3314262][3008530]["RewardItem"][1]["Attr"] = "0 1" -- PandaEgg*1
	tVIP_Paradise_Reward[3314262][3008530]["RewardEffect"] = {}
	tVIP_Paradise_Reward[3314262][3008530]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_Reward[3314262][3008530]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_Reward[3314262][3008679] = {}
	-- ===宠物蛋可选包
	-- ===索引:tVIP_Paradise_Reward[3314262][3008679]
	-- ===删除: 3314262,1
	tVIP_Paradise_Reward[3314262][3008679]["LogId"] = 12001689
	tVIP_Paradise_Reward[3314262][3008679]["DeleteItem"] = {}
	tVIP_Paradise_Reward[3314262][3008679]["DeleteItem"][1] = {}
	tVIP_Paradise_Reward[3314262][3008679]["DeleteItem"][1]["Id"] = 3314262 -- 【库】EggSelectionPack[属性:11]
	tVIP_Paradise_Reward[3314262][3008679]["RewardItem"] = {}
	tVIP_Paradise_Reward[3314262][3008679]["RewardItem"][1] = {}
	tVIP_Paradise_Reward[3314262][3008679]["RewardItem"][1]["Id"] = 3008679 -- FoxEgg[3008679][属性:9][叠加:100][金币:0], 【表格】秘色狐宠物蛋
	tVIP_Paradise_Reward[3314262][3008679]["RewardItem"][1]["Attr"] = "0 1" -- FoxEgg*1
	tVIP_Paradise_Reward[3314262][3008679]["RewardEffect"] = {}
	tVIP_Paradise_Reward[3314262][3008679]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_Reward[3314262][3008679]["RewardEffect"]["Effect"] = "angelwing"

local tVIP_Paradise_MonsterReward = {}
	-- ===通关简单第1层
	-- ===索引:tVIP_Paradise_MonsterReward[1][1]
	-- ===LogStep:1[1]
	tVIP_Paradise_MonsterReward[1] = {}
	tVIP_Paradise_MonsterReward[1][1] = {}
	tVIP_Paradise_MonsterReward[1][1]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[1][1]["LogStep"] = "1[1]"
	tVIP_Paradise_MonsterReward[1][1]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[1][1]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[1][1]["RewardItem"][1]["Id"] = 3003878 -- NormalGemBag[3003878][属性:9][叠加:0][金币:0], 【表格】赠品普通随机宝石袋*1
	tVIP_Paradise_MonsterReward[1][1]["RewardItem"][1]["Attr"] = "0 1" -- NormalGemBag*1
	tVIP_Paradise_MonsterReward[1][1]["RewardItem"][2] = {}
	tVIP_Paradise_MonsterReward[1][1]["RewardItem"][2]["Id"] = 730001 -- +1Stone[730001][属性:0][叠加:0][金币:0], 【表格】赠品赤炼石+1
	tVIP_Paradise_MonsterReward[1][1]["RewardItem"][2]["Attr"] = "0 1 3" -- +1Stone（赠）*1
	tVIP_Paradise_MonsterReward[1][1]["RewardItem"][3] = {}
	tVIP_Paradise_MonsterReward[1][1]["RewardItem"][3]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】赠品微光星陨石*2
	tVIP_Paradise_MonsterReward[1][1]["RewardItem"][3]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的TwilightStarStone*2
	tVIP_Paradise_MonsterReward[1][1]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[1][1]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[1][2] = {}
	-- ===通关简单第2层
	-- ===索引:tVIP_Paradise_MonsterReward[1][2]
	-- ===LogStep:1[2]
	tVIP_Paradise_MonsterReward[1][2]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[1][2]["LogStep"] = "1[2]"
	tVIP_Paradise_MonsterReward[1][2]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[1][2]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[1][2]["RewardItem"][1]["Id"] = 3003878 -- NormalGemBag[3003878][属性:9][叠加:0][金币:0], 【表格】赠品普通随机宝石袋*1
	tVIP_Paradise_MonsterReward[1][2]["RewardItem"][1]["Attr"] = "0 1" -- NormalGemBag*1
	tVIP_Paradise_MonsterReward[1][2]["RewardItem"][2] = {}
	tVIP_Paradise_MonsterReward[1][2]["RewardItem"][2]["Id"] = 730001 -- +1Stone[730001][属性:0][叠加:0][金币:0], 【表格】赠品赤炼石+1
	tVIP_Paradise_MonsterReward[1][2]["RewardItem"][2]["Attr"] = "0 1 3" -- +1Stone（赠）*1
	tVIP_Paradise_MonsterReward[1][2]["RewardItem"][3] = {}
	tVIP_Paradise_MonsterReward[1][2]["RewardItem"][3]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】赠品微光星陨石*2
	tVIP_Paradise_MonsterReward[1][2]["RewardItem"][3]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的TwilightStarStone*2
	tVIP_Paradise_MonsterReward[1][2]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[1][2]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[1][3] = {}
	-- ===通关简单第3层
	-- ===索引:tVIP_Paradise_MonsterReward[1][3]
	-- ===LogStep:1[3]
	tVIP_Paradise_MonsterReward[1][3]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[1][3]["LogStep"] = "1[3]"
	tVIP_Paradise_MonsterReward[1][3]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[1][3]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[1][3]["RewardItem"][1]["Id"] = 3003878 -- NormalGemBag[3003878][属性:9][叠加:0][金币:0], 【表格】赠品普通随机宝石袋*1
	tVIP_Paradise_MonsterReward[1][3]["RewardItem"][1]["Attr"] = "0 1" -- NormalGemBag*1
	tVIP_Paradise_MonsterReward[1][3]["RewardItem"][2] = {}
	tVIP_Paradise_MonsterReward[1][3]["RewardItem"][2]["Id"] = 730001 -- +1Stone[730001][属性:0][叠加:0][金币:0], 【表格】赠品赤炼石+1
	tVIP_Paradise_MonsterReward[1][3]["RewardItem"][2]["Attr"] = "0 1 3" -- +1Stone（赠）*1
	tVIP_Paradise_MonsterReward[1][3]["RewardItem"][3] = {}
	tVIP_Paradise_MonsterReward[1][3]["RewardItem"][3]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】赠品微光星陨石*2
	tVIP_Paradise_MonsterReward[1][3]["RewardItem"][3]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的TwilightStarStone*2
	tVIP_Paradise_MonsterReward[1][3]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[1][3]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[1][4] = {}
	-- ===通关简单第4层
	-- ===索引:tVIP_Paradise_MonsterReward[1][4]
	-- ===LogStep:1[4]
	tVIP_Paradise_MonsterReward[1][4]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[1][4]["LogStep"] = "1[4]"
	tVIP_Paradise_MonsterReward[1][4]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[1][4]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[1][4]["RewardItem"][1]["Id"] = 3003878 -- NormalGemBag[3003878][属性:9][叠加:0][金币:0], 【表格】赠品普通随机宝石袋*1
	tVIP_Paradise_MonsterReward[1][4]["RewardItem"][1]["Attr"] = "0 1" -- NormalGemBag*1
	tVIP_Paradise_MonsterReward[1][4]["RewardItem"][2] = {}
	tVIP_Paradise_MonsterReward[1][4]["RewardItem"][2]["Id"] = 730001 -- +1Stone[730001][属性:0][叠加:0][金币:0], 【表格】赠品赤炼石+1*2
	tVIP_Paradise_MonsterReward[1][4]["RewardItem"][2]["Attr"] = "0 2 3" -- +1Stone（赠）*2
	tVIP_Paradise_MonsterReward[1][4]["RewardItem"][3] = {}
	tVIP_Paradise_MonsterReward[1][4]["RewardItem"][3]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】赠品微光星陨石*3
	tVIP_Paradise_MonsterReward[1][4]["RewardItem"][3]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的TwilightStarStone*3
	tVIP_Paradise_MonsterReward[1][4]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[1][4]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[1][5] = {}
	-- ===通关简单第5层
	-- ===索引:tVIP_Paradise_MonsterReward[1][5]
	-- ===LogStep:1[5]
	tVIP_Paradise_MonsterReward[1][5]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[1][5]["LogStep"] = "1[5]"
	tVIP_Paradise_MonsterReward[1][5]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[1][5]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[1][5]["RewardItem"][1]["Id"] = 3003878 -- NormalGemBag[3003878][属性:9][叠加:0][金币:0], 【表格】赠品普通随机宝石袋*1
	tVIP_Paradise_MonsterReward[1][5]["RewardItem"][1]["Attr"] = "0 1" -- NormalGemBag*1
	tVIP_Paradise_MonsterReward[1][5]["RewardItem"][2] = {}
	tVIP_Paradise_MonsterReward[1][5]["RewardItem"][2]["Id"] = 730001 -- +1Stone[730001][属性:0][叠加:0][金币:0], 【表格】赠品赤炼石+1*2
	tVIP_Paradise_MonsterReward[1][5]["RewardItem"][2]["Attr"] = "0 2 3" -- +1Stone（赠）*2
	tVIP_Paradise_MonsterReward[1][5]["RewardItem"][3] = {}
	tVIP_Paradise_MonsterReward[1][5]["RewardItem"][3]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】赠品微光星陨石*3
	tVIP_Paradise_MonsterReward[1][5]["RewardItem"][3]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的TwilightStarStone*3
	tVIP_Paradise_MonsterReward[1][5]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[1][5]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[1][6] = {}
	-- ===通关简单第6层
	-- ===索引:tVIP_Paradise_MonsterReward[1][6]
	-- ===LogStep:1[6]
	tVIP_Paradise_MonsterReward[1][6]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[1][6]["LogStep"] = "1[6]"
	tVIP_Paradise_MonsterReward[1][6]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[1][6]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[1][6]["RewardItem"][1]["Id"] = 3003878 -- NormalGemBag[3003878][属性:9][叠加:0][金币:0], 【表格】赠品普通随机宝石袋*1
	tVIP_Paradise_MonsterReward[1][6]["RewardItem"][1]["Attr"] = "0 1" -- NormalGemBag*1
	tVIP_Paradise_MonsterReward[1][6]["RewardItem"][2] = {}
	tVIP_Paradise_MonsterReward[1][6]["RewardItem"][2]["Id"] = 730001 -- +1Stone[730001][属性:0][叠加:0][金币:0], 【表格】赠品赤炼石+1*2
	tVIP_Paradise_MonsterReward[1][6]["RewardItem"][2]["Attr"] = "0 2 3" -- +1Stone（赠）*2
	tVIP_Paradise_MonsterReward[1][6]["RewardItem"][3] = {}
	tVIP_Paradise_MonsterReward[1][6]["RewardItem"][3]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】赠品微光星陨石*3
	tVIP_Paradise_MonsterReward[1][6]["RewardItem"][3]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的TwilightStarStone*3
	tVIP_Paradise_MonsterReward[1][6]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[1][6]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[1][7] = {}
	-- ===通关简单第7层
	-- ===索引:tVIP_Paradise_MonsterReward[1][7]
	-- ===LogStep:1[7]
	tVIP_Paradise_MonsterReward[1][7]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[1][7]["LogStep"] = "1[7]"
	tVIP_Paradise_MonsterReward[1][7]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[1][7]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[1][7]["RewardItem"][1]["Id"] = 3003878 -- NormalGemBag[3003878][属性:9][叠加:0][金币:0], 【表格】赠品普通随机宝石袋*1
	tVIP_Paradise_MonsterReward[1][7]["RewardItem"][1]["Attr"] = "0 1" -- NormalGemBag*1
	tVIP_Paradise_MonsterReward[1][7]["RewardItem"][2] = {}
	tVIP_Paradise_MonsterReward[1][7]["RewardItem"][2]["Id"] = 730002 -- +2Stone[730002][属性:0][叠加:0][金币:0], 【表格】赠品赤炼石+2*1
	tVIP_Paradise_MonsterReward[1][7]["RewardItem"][2]["Attr"] = "0 1 3" -- +2Stone（赠）*1
	tVIP_Paradise_MonsterReward[1][7]["RewardItem"][3] = {}
	tVIP_Paradise_MonsterReward[1][7]["RewardItem"][3]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】赠品微光星陨石*3
	tVIP_Paradise_MonsterReward[1][7]["RewardItem"][3]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的TwilightStarStone*3
	tVIP_Paradise_MonsterReward[1][7]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[1][7]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[1][8] = {}
	-- ===通关简单第8层
	-- ===索引:tVIP_Paradise_MonsterReward[1][8]
	-- ===LogStep:1[8]
	tVIP_Paradise_MonsterReward[1][8]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[1][8]["LogStep"] = "1[8]"
	tVIP_Paradise_MonsterReward[1][8]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[1][8]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[1][8]["RewardItem"][1]["Id"] = 3003878 -- NormalGemBag[3003878][属性:9][叠加:0][金币:0], 【表格】赠品普通随机宝石袋*1
	tVIP_Paradise_MonsterReward[1][8]["RewardItem"][1]["Attr"] = "0 1" -- NormalGemBag*1
	tVIP_Paradise_MonsterReward[1][8]["RewardItem"][2] = {}
	tVIP_Paradise_MonsterReward[1][8]["RewardItem"][2]["Id"] = 730002 -- +2Stone[730002][属性:0][叠加:0][金币:0], 【表格】赠品赤炼石+2*1
	tVIP_Paradise_MonsterReward[1][8]["RewardItem"][2]["Attr"] = "0 1 3" -- +2Stone（赠）*1
	tVIP_Paradise_MonsterReward[1][8]["RewardItem"][3] = {}
	tVIP_Paradise_MonsterReward[1][8]["RewardItem"][3]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】赠品微光星陨石*3
	tVIP_Paradise_MonsterReward[1][8]["RewardItem"][3]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的TwilightStarStone*3
	tVIP_Paradise_MonsterReward[1][8]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[1][8]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[1][9] = {}
	-- ===通关简单第9层
	-- ===索引:tVIP_Paradise_MonsterReward[1][9]
	-- ===LogStep:1[9]
	tVIP_Paradise_MonsterReward[1][9]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[1][9]["LogStep"] = "1[9]"
	tVIP_Paradise_MonsterReward[1][9]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[1][9]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[1][9]["RewardItem"][1]["Id"] = 3003878 -- NormalGemBag[3003878][属性:9][叠加:0][金币:0], 【表格】赠品普通随机宝石袋*1
	tVIP_Paradise_MonsterReward[1][9]["RewardItem"][1]["Attr"] = "0 1" -- NormalGemBag*1
	tVIP_Paradise_MonsterReward[1][9]["RewardItem"][2] = {}
	tVIP_Paradise_MonsterReward[1][9]["RewardItem"][2]["Id"] = 730002 -- +2Stone[730002][属性:0][叠加:0][金币:0], 【表格】赠品赤炼石+2*1
	tVIP_Paradise_MonsterReward[1][9]["RewardItem"][2]["Attr"] = "0 1 3" -- +2Stone（赠）*1
	tVIP_Paradise_MonsterReward[1][9]["RewardItem"][3] = {}
	tVIP_Paradise_MonsterReward[1][9]["RewardItem"][3]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】赠品微光星陨石*3
	tVIP_Paradise_MonsterReward[1][9]["RewardItem"][3]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的TwilightStarStone*3
	tVIP_Paradise_MonsterReward[1][9]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[1][9]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[2] = {}
	-- ===通关困难第1层
	-- ===索引:tVIP_Paradise_MonsterReward[2][1]
	-- ===LogStep:2[1]
	tVIP_Paradise_MonsterReward[2][1] = {}
	tVIP_Paradise_MonsterReward[2][1]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[2][1]["LogStep"] = "2[1]"
	tVIP_Paradise_MonsterReward[2][1]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[2][1]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[2][1]["RewardItem"][1]["Id"] = 3003878 -- NormalGemBag[3003878][属性:9][叠加:0][金币:0], 【表格】赠品普通随机宝石袋*1
	tVIP_Paradise_MonsterReward[2][1]["RewardItem"][1]["Attr"] = "0 1" -- NormalGemBag*1
	tVIP_Paradise_MonsterReward[2][1]["RewardItem"][2] = {}
	tVIP_Paradise_MonsterReward[2][1]["RewardItem"][2]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人生果*1
	tVIP_Paradise_MonsterReward[2][1]["RewardItem"][2]["Attr"] = "0 1" -- GinsengFruit*1
	tVIP_Paradise_MonsterReward[2][1]["RewardStrengthValue"] = {}
	tVIP_Paradise_MonsterReward[2][1]["RewardStrengthValue"]["Value"] = 100 -- 气力值, 【需求】赠品气力值100
	tVIP_Paradise_MonsterReward[2][1]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[2][1]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[2][2] = {}
	-- ===通关困难第2层
	-- ===索引:tVIP_Paradise_MonsterReward[2][2]
	-- ===LogStep:2[2]
	tVIP_Paradise_MonsterReward[2][2]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[2][2]["LogStep"] = "2[2]"
	tVIP_Paradise_MonsterReward[2][2]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[2][2]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[2][2]["RewardItem"][1]["Id"] = 3003878 -- NormalGemBag[3003878][属性:9][叠加:0][金币:0], 【表格】赠品普通随机宝石袋*1
	tVIP_Paradise_MonsterReward[2][2]["RewardItem"][1]["Attr"] = "0 1" -- NormalGemBag*1
	tVIP_Paradise_MonsterReward[2][2]["RewardItem"][2] = {}
	tVIP_Paradise_MonsterReward[2][2]["RewardItem"][2]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人生果*1
	tVIP_Paradise_MonsterReward[2][2]["RewardItem"][2]["Attr"] = "0 1" -- GinsengFruit*1
	tVIP_Paradise_MonsterReward[2][2]["RewardStrengthValue"] = {}
	tVIP_Paradise_MonsterReward[2][2]["RewardStrengthValue"]["Value"] = 100 -- 气力值, 【需求】赠品气力值100
	tVIP_Paradise_MonsterReward[2][2]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[2][2]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[2][3] = {}
	-- ===通关困难第3层
	-- ===索引:tVIP_Paradise_MonsterReward[2][3]
	-- ===LogStep:2[3]
	tVIP_Paradise_MonsterReward[2][3]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[2][3]["LogStep"] = "2[3]"
	tVIP_Paradise_MonsterReward[2][3]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[2][3]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[2][3]["RewardItem"][1]["Id"] = 3003878 -- NormalGemBag[3003878][属性:9][叠加:0][金币:0], 【表格】赠品普通随机宝石袋*1
	tVIP_Paradise_MonsterReward[2][3]["RewardItem"][1]["Attr"] = "0 1" -- NormalGemBag*1
	tVIP_Paradise_MonsterReward[2][3]["RewardItem"][2] = {}
	tVIP_Paradise_MonsterReward[2][3]["RewardItem"][2]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人生果*1
	tVIP_Paradise_MonsterReward[2][3]["RewardItem"][2]["Attr"] = "0 1" -- GinsengFruit*1
	tVIP_Paradise_MonsterReward[2][3]["RewardStrengthValue"] = {}
	tVIP_Paradise_MonsterReward[2][3]["RewardStrengthValue"]["Value"] = 100 -- 气力值, 【需求】赠品气力值100
	tVIP_Paradise_MonsterReward[2][3]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[2][3]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[2][4] = {}
	-- ===通关困难第4层
	-- ===索引:tVIP_Paradise_MonsterReward[2][4]
	-- ===LogStep:2[4]
	tVIP_Paradise_MonsterReward[2][4]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[2][4]["LogStep"] = "2[4]"
	tVIP_Paradise_MonsterReward[2][4]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[2][4]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[2][4]["RewardItem"][1]["Id"] = 3003878 -- NormalGemBag[3003878][属性:9][叠加:0][金币:0], 【表格】赠品普通随机宝石袋*1
	tVIP_Paradise_MonsterReward[2][4]["RewardItem"][1]["Attr"] = "0 1" -- NormalGemBag*1
	tVIP_Paradise_MonsterReward[2][4]["RewardItem"][2] = {}
	tVIP_Paradise_MonsterReward[2][4]["RewardItem"][2]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人生果*2
	tVIP_Paradise_MonsterReward[2][4]["RewardItem"][2]["Attr"] = "0 2" -- GinsengFruit*2
	tVIP_Paradise_MonsterReward[2][4]["RewardStrengthValue"] = {}
	tVIP_Paradise_MonsterReward[2][4]["RewardStrengthValue"]["Value"] = 300 -- 气力值, 【需求】赠品气力值300
	tVIP_Paradise_MonsterReward[2][4]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[2][4]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[2][5] = {}
	-- ===通关困难第5层
	-- ===索引:tVIP_Paradise_MonsterReward[2][5]
	-- ===LogStep:2[5]
	tVIP_Paradise_MonsterReward[2][5]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[2][5]["LogStep"] = "2[5]"
	tVIP_Paradise_MonsterReward[2][5]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[2][5]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[2][5]["RewardItem"][1]["Id"] = 3003878 -- NormalGemBag[3003878][属性:9][叠加:0][金币:0], 【表格】赠品普通随机宝石袋*1
	tVIP_Paradise_MonsterReward[2][5]["RewardItem"][1]["Attr"] = "0 1" -- NormalGemBag*1
	tVIP_Paradise_MonsterReward[2][5]["RewardItem"][2] = {}
	tVIP_Paradise_MonsterReward[2][5]["RewardItem"][2]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人生果*2
	tVIP_Paradise_MonsterReward[2][5]["RewardItem"][2]["Attr"] = "0 2" -- GinsengFruit*2
	tVIP_Paradise_MonsterReward[2][5]["RewardStrengthValue"] = {}
	tVIP_Paradise_MonsterReward[2][5]["RewardStrengthValue"]["Value"] = 300 -- 气力值, 【需求】赠品气力值300
	tVIP_Paradise_MonsterReward[2][5]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[2][5]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[2][6] = {}
	-- ===通关困难第6层
	-- ===索引:tVIP_Paradise_MonsterReward[2][6]
	-- ===LogStep:2[6]
	tVIP_Paradise_MonsterReward[2][6]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[2][6]["LogStep"] = "2[6]"
	tVIP_Paradise_MonsterReward[2][6]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[2][6]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[2][6]["RewardItem"][1]["Id"] = 3003878 -- NormalGemBag[3003878][属性:9][叠加:0][金币:0], 【表格】赠品普通随机宝石袋*1
	tVIP_Paradise_MonsterReward[2][6]["RewardItem"][1]["Attr"] = "0 1" -- NormalGemBag*1
	tVIP_Paradise_MonsterReward[2][6]["RewardItem"][2] = {}
	tVIP_Paradise_MonsterReward[2][6]["RewardItem"][2]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人生果*2
	tVIP_Paradise_MonsterReward[2][6]["RewardItem"][2]["Attr"] = "0 2" -- GinsengFruit*2
	tVIP_Paradise_MonsterReward[2][6]["RewardStrengthValue"] = {}
	tVIP_Paradise_MonsterReward[2][6]["RewardStrengthValue"]["Value"] = 300 -- 气力值, 【需求】赠品气力值300
	tVIP_Paradise_MonsterReward[2][6]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[2][6]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[2][7] = {}
	-- ===通关困难第7层
	-- ===索引:tVIP_Paradise_MonsterReward[2][7]
	-- ===LogStep:2[7]
	tVIP_Paradise_MonsterReward[2][7]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[2][7]["LogStep"] = "2[7]"
	tVIP_Paradise_MonsterReward[2][7]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[2][7]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[2][7]["RewardItem"][1]["Id"] = 3003878 -- NormalGemBag[3003878][属性:9][叠加:0][金币:0], 【表格】赠品普通随机宝石袋*2
	tVIP_Paradise_MonsterReward[2][7]["RewardItem"][1]["Attr"] = "0 2" -- NormalGemBag*2
	tVIP_Paradise_MonsterReward[2][7]["RewardItem"][2] = {}
	tVIP_Paradise_MonsterReward[2][7]["RewardItem"][2]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人生果*2
	tVIP_Paradise_MonsterReward[2][7]["RewardItem"][2]["Attr"] = "0 2" -- GinsengFruit*2
	tVIP_Paradise_MonsterReward[2][7]["RewardStrengthValue"] = {}
	tVIP_Paradise_MonsterReward[2][7]["RewardStrengthValue"]["Value"] = 500 -- 气力值, 【需求】赠品气力值500
	tVIP_Paradise_MonsterReward[2][7]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[2][7]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[2][8] = {}
	-- ===通关困难第8层
	-- ===索引:tVIP_Paradise_MonsterReward[2][8]
	-- ===LogStep:2[8]
	tVIP_Paradise_MonsterReward[2][8]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[2][8]["LogStep"] = "2[8]"
	tVIP_Paradise_MonsterReward[2][8]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[2][8]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[2][8]["RewardItem"][1]["Id"] = 3003878 -- NormalGemBag[3003878][属性:9][叠加:0][金币:0], 【表格】赠品普通随机宝石袋*2
	tVIP_Paradise_MonsterReward[2][8]["RewardItem"][1]["Attr"] = "0 2" -- NormalGemBag*2
	tVIP_Paradise_MonsterReward[2][8]["RewardItem"][2] = {}
	tVIP_Paradise_MonsterReward[2][8]["RewardItem"][2]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人生果*2
	tVIP_Paradise_MonsterReward[2][8]["RewardItem"][2]["Attr"] = "0 2" -- GinsengFruit*2
	tVIP_Paradise_MonsterReward[2][8]["RewardStrengthValue"] = {}
	tVIP_Paradise_MonsterReward[2][8]["RewardStrengthValue"]["Value"] = 500 -- 气力值, 【需求】赠品气力值500
	tVIP_Paradise_MonsterReward[2][8]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[2][8]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[2][9] = {}
	-- ===通关困难第9层
	-- ===索引:tVIP_Paradise_MonsterReward[2][9]
	-- ===LogStep:2[9]
	tVIP_Paradise_MonsterReward[2][9]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[2][9]["LogStep"] = "2[9]"
	tVIP_Paradise_MonsterReward[2][9]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[2][9]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[2][9]["RewardItem"][1]["Id"] = 3003878 -- NormalGemBag[3003878][属性:9][叠加:0][金币:0], 【表格】赠品普通随机宝石袋*2
	tVIP_Paradise_MonsterReward[2][9]["RewardItem"][1]["Attr"] = "0 2" -- NormalGemBag*2
	tVIP_Paradise_MonsterReward[2][9]["RewardItem"][2] = {}
	tVIP_Paradise_MonsterReward[2][9]["RewardItem"][2]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人生果*2
	tVIP_Paradise_MonsterReward[2][9]["RewardItem"][2]["Attr"] = "0 2" -- GinsengFruit*2
	tVIP_Paradise_MonsterReward[2][9]["RewardStrengthValue"] = {}
	tVIP_Paradise_MonsterReward[2][9]["RewardStrengthValue"]["Value"] = 500 -- 气力值, 【需求】赠品气力值500
	tVIP_Paradise_MonsterReward[2][9]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[2][9]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[3] = {}
	-- ===通关地狱第1层
	-- ===索引:tVIP_Paradise_MonsterReward[3][1]
	-- ===LogStep:3[1]
	tVIP_Paradise_MonsterReward[3][1] = {}
	tVIP_Paradise_MonsterReward[3][1]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[3][1]["LogStep"] = "3[1]"
	tVIP_Paradise_MonsterReward[3][1]["RewardRepairValue"] = {}
	tVIP_Paradise_MonsterReward[3][1]["RewardRepairValue"]["Value"] = 100 -- 修为值, 【需求】赠修为值100
	tVIP_Paradise_MonsterReward[3][1]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[3][1]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[3][1]["RewardItem"][1]["Id"] = 3008136 -- LifeFruitSeed[3008136][属性:11][叠加:100][金币:0], 【表格】赠王母蟠桃种子*10
	tVIP_Paradise_MonsterReward[3][1]["RewardItem"][1]["Attr"] = "0 10" -- LifeFruitSeed*10
	tVIP_Paradise_MonsterReward[3][1]["RewardItem"][2] = {}
	tVIP_Paradise_MonsterReward[3][1]["RewardItem"][2]["Id"] = 3302732 -- 1-dayMewAccessoryPack[3302732][属性:9][叠加:1][金币:0], 【表格】赠喵基尼武器外套（1天）礼包*2
	tVIP_Paradise_MonsterReward[3][1]["RewardItem"][2]["Attr"] = "0 2" -- 1-dayMewAccessoryPack*2
	tVIP_Paradise_MonsterReward[3][1]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[3][1]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[3][2] = {}
	-- ===通关地狱第2层
	-- ===索引:tVIP_Paradise_MonsterReward[3][2]
	-- ===LogStep:3[2]
	tVIP_Paradise_MonsterReward[3][2]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[3][2]["LogStep"] = "3[2]"
	tVIP_Paradise_MonsterReward[3][2]["RewardRepairValue"] = {}
	tVIP_Paradise_MonsterReward[3][2]["RewardRepairValue"]["Value"] = 100 -- 修为值, 【需求】赠修为值100
	tVIP_Paradise_MonsterReward[3][2]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[3][2]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[3][2]["RewardItem"][1]["Id"] = 3008136 -- LifeFruitSeed[3008136][属性:11][叠加:100][金币:0], 【表格】赠王母蟠桃种子*10
	tVIP_Paradise_MonsterReward[3][2]["RewardItem"][1]["Attr"] = "0 10" -- LifeFruitSeed*10
	tVIP_Paradise_MonsterReward[3][2]["RewardItem"][2] = {}
	tVIP_Paradise_MonsterReward[3][2]["RewardItem"][2]["Id"] = 3302732 -- 1-dayMewAccessoryPack[3302732][属性:9][叠加:1][金币:0], 【表格】赠喵基尼武器外套（1天）礼包*2
	tVIP_Paradise_MonsterReward[3][2]["RewardItem"][2]["Attr"] = "0 2" -- 1-dayMewAccessoryPack*2
	tVIP_Paradise_MonsterReward[3][2]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[3][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[3][2]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[3][3] = {}
	-- ===通关地狱第3层
	-- ===索引:tVIP_Paradise_MonsterReward[3][3]
	-- ===LogStep:3[3]
	tVIP_Paradise_MonsterReward[3][3]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[3][3]["LogStep"] = "3[3]"
	tVIP_Paradise_MonsterReward[3][3]["RewardRepairValue"] = {}
	tVIP_Paradise_MonsterReward[3][3]["RewardRepairValue"]["Value"] = 100 -- 修为值, 【需求】赠修为值100
	tVIP_Paradise_MonsterReward[3][3]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[3][3]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[3][3]["RewardItem"][1]["Id"] = 3008136 -- LifeFruitSeed[3008136][属性:11][叠加:100][金币:0], 【表格】赠王母蟠桃种子*10
	tVIP_Paradise_MonsterReward[3][3]["RewardItem"][1]["Attr"] = "0 10" -- LifeFruitSeed*10
	tVIP_Paradise_MonsterReward[3][3]["RewardItem"][2] = {}
	tVIP_Paradise_MonsterReward[3][3]["RewardItem"][2]["Id"] = 3302732 -- 1-dayMewAccessoryPack[3302732][属性:9][叠加:1][金币:0], 【表格】赠喵基尼武器外套（1天）礼包*2
	tVIP_Paradise_MonsterReward[3][3]["RewardItem"][2]["Attr"] = "0 2" -- 1-dayMewAccessoryPack*2
	tVIP_Paradise_MonsterReward[3][3]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[3][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[3][3]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[3][4] = {}
	-- ===通关地狱第4层
	-- ===索引:tVIP_Paradise_MonsterReward[3][4]
	-- ===LogStep:3[4]
	tVIP_Paradise_MonsterReward[3][4]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[3][4]["LogStep"] = "3[4]"
	tVIP_Paradise_MonsterReward[3][4]["RewardRepairValue"] = {}
	tVIP_Paradise_MonsterReward[3][4]["RewardRepairValue"]["Value"] = 200 -- 修为值, 【需求】赠修为值200
	tVIP_Paradise_MonsterReward[3][4]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[3][4]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[3][4]["RewardItem"][1]["Id"] = 3008137 -- EXPFruitSeed[3008137][属性:11][叠加:100][金币:0], 【表格】赠凝神香果种子*10
	tVIP_Paradise_MonsterReward[3][4]["RewardItem"][1]["Attr"] = "0 10" -- EXPFruitSeed*10
	tVIP_Paradise_MonsterReward[3][4]["RewardItem"][2] = {}
	tVIP_Paradise_MonsterReward[3][4]["RewardItem"][2]["Id"] = 3302734 -- 1-dayDragonAccessoryPack[3302734][属性:9][叠加:1][金币:0], 【表格】赠屠龙刀武器外套（1天）礼包
	tVIP_Paradise_MonsterReward[3][4]["RewardItem"][2]["Attr"] = "0 1" -- 1-dayDragonAccessoryPack*1
	tVIP_Paradise_MonsterReward[3][4]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[3][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[3][4]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[3][5] = {}
	-- ===通关地狱第5层
	-- ===索引:tVIP_Paradise_MonsterReward[3][5]
	-- ===LogStep:3[5]
	tVIP_Paradise_MonsterReward[3][5]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[3][5]["LogStep"] = "3[5]"
	tVIP_Paradise_MonsterReward[3][5]["RewardRepairValue"] = {}
	tVIP_Paradise_MonsterReward[3][5]["RewardRepairValue"]["Value"] = 200 -- 修为值, 【需求】赠修为值200
	tVIP_Paradise_MonsterReward[3][5]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[3][5]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[3][5]["RewardItem"][1]["Id"] = 3008137 -- EXPFruitSeed[3008137][属性:11][叠加:100][金币:0], 【表格】赠凝神香果种子*10
	tVIP_Paradise_MonsterReward[3][5]["RewardItem"][1]["Attr"] = "0 10" -- EXPFruitSeed*10
	tVIP_Paradise_MonsterReward[3][5]["RewardItem"][2] = {}
	tVIP_Paradise_MonsterReward[3][5]["RewardItem"][2]["Id"] = 3302734 -- 1-dayDragonAccessoryPack[3302734][属性:9][叠加:1][金币:0], 【表格】赠屠龙刀武器外套（1天）礼包
	tVIP_Paradise_MonsterReward[3][5]["RewardItem"][2]["Attr"] = "0 1" -- 1-dayDragonAccessoryPack*1
	tVIP_Paradise_MonsterReward[3][5]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[3][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[3][5]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[3][6] = {}
	-- ===通关地狱第6层
	-- ===索引:tVIP_Paradise_MonsterReward[3][6]
	-- ===LogStep:3[6]
	tVIP_Paradise_MonsterReward[3][6]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[3][6]["LogStep"] = "3[6]"
	tVIP_Paradise_MonsterReward[3][6]["RewardRepairValue"] = {}
	tVIP_Paradise_MonsterReward[3][6]["RewardRepairValue"]["Value"] = 200 -- 修为值, 【需求】赠修为值200
	tVIP_Paradise_MonsterReward[3][6]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[3][6]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[3][6]["RewardItem"][1]["Id"] = 3008137 -- EXPFruitSeed[3008137][属性:11][叠加:100][金币:0], 【表格】赠凝神香果种子*10
	tVIP_Paradise_MonsterReward[3][6]["RewardItem"][1]["Attr"] = "0 10" -- EXPFruitSeed*10
	tVIP_Paradise_MonsterReward[3][6]["RewardItem"][2] = {}
	tVIP_Paradise_MonsterReward[3][6]["RewardItem"][2]["Id"] = 3302734 -- 1-dayDragonAccessoryPack[3302734][属性:9][叠加:1][金币:0], 【表格】赠屠龙刀武器外套（1天）礼包
	tVIP_Paradise_MonsterReward[3][6]["RewardItem"][2]["Attr"] = "0 1" -- 1-dayDragonAccessoryPack*1
	tVIP_Paradise_MonsterReward[3][6]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[3][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[3][6]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[3][7] = {}
	-- ===通关地狱第7层
	-- ===索引:tVIP_Paradise_MonsterReward[3][7]
	-- ===LogStep:3[7]
	tVIP_Paradise_MonsterReward[3][7]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[3][7]["LogStep"] = "3[7]"
	tVIP_Paradise_MonsterReward[3][7]["RewardRepairValue"] = {}
	tVIP_Paradise_MonsterReward[3][7]["RewardRepairValue"]["Value"] = 300 -- 修为值, 【需求】赠修为值300
	tVIP_Paradise_MonsterReward[3][7]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[3][7]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[3][7]["RewardItem"][1]["Id"] = 3314262 -- 宠物蛋可选包[3314262][属性:11][叠加:10000][金币:0], 【表格】赠普通宠物蛋*10
	tVIP_Paradise_MonsterReward[3][7]["RewardItem"][1]["Attr"] = "0 10" -- 宠物蛋可选包*10
	tVIP_Paradise_MonsterReward[3][7]["RewardItem"][2] = {}
	tVIP_Paradise_MonsterReward[3][7]["RewardItem"][2]["Id"] = 3302339 -- 7天偶像光效武器外套包[3302339][属性:9][叠加:0][金币:0], 【表格】赠7天偶像光效武器外套包 *1
	tVIP_Paradise_MonsterReward[3][7]["RewardItem"][2]["Attr"] = "0 1" -- 7天偶像光效武器外套包*1
	tVIP_Paradise_MonsterReward[3][7]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[3][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[3][7]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[3][8] = {}
	-- ===通关地狱第8层
	-- ===索引:tVIP_Paradise_MonsterReward[3][8]
	-- ===LogStep:3[8]
	tVIP_Paradise_MonsterReward[3][8]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[3][8]["LogStep"] = "3[8]"
	tVIP_Paradise_MonsterReward[3][8]["RewardRepairValue"] = {}
	tVIP_Paradise_MonsterReward[3][8]["RewardRepairValue"]["Value"] = 300 -- 修为值, 【需求】赠修为值300
	tVIP_Paradise_MonsterReward[3][8]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[3][8]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[3][8]["RewardItem"][1]["Id"] = 3314262 -- 宠物蛋可选包[3314262][属性:11][叠加:10000][金币:0], 【表格】赠普通宠物蛋*10
	tVIP_Paradise_MonsterReward[3][8]["RewardItem"][1]["Attr"] = "0 10" -- 宠物蛋可选包*10
	tVIP_Paradise_MonsterReward[3][8]["RewardItem"][2] = {}
	tVIP_Paradise_MonsterReward[3][8]["RewardItem"][2]["Id"] = 3302339 -- 7天偶像光效武器外套包[3302339][属性:9][叠加:0][金币:0], 【表格】赠7天偶像光效武器外套包 *1
	tVIP_Paradise_MonsterReward[3][8]["RewardItem"][2]["Attr"] = "0 1" -- 7天偶像光效武器外套包*1
	tVIP_Paradise_MonsterReward[3][8]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[3][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[3][8]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[3][9] = {}
	-- ===通关地狱第9层
	-- ===索引:tVIP_Paradise_MonsterReward[3][9]
	-- ===LogStep:3[9]
	tVIP_Paradise_MonsterReward[3][9]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[3][9]["LogStep"] = "3[9]"
	tVIP_Paradise_MonsterReward[3][9]["RewardRepairValue"] = {}
	tVIP_Paradise_MonsterReward[3][9]["RewardRepairValue"]["Value"] = 300 -- 修为值, 【需求】赠修为值300
	tVIP_Paradise_MonsterReward[3][9]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[3][9]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[3][9]["RewardItem"][1]["Id"] = 3314262 -- 宠物蛋可选包[3314262][属性:11][叠加:10000][金币:0], 【表格】赠普通宠物蛋*10
	tVIP_Paradise_MonsterReward[3][9]["RewardItem"][1]["Attr"] = "0 10" -- 宠物蛋可选包*10
	tVIP_Paradise_MonsterReward[3][9]["RewardItem"][2] = {}
	tVIP_Paradise_MonsterReward[3][9]["RewardItem"][2]["Id"] = 3302339 -- 7天偶像光效武器外套包[3302339][属性:9][叠加:0][金币:0], 【表格】赠7天偶像光效武器外套包 *1
	tVIP_Paradise_MonsterReward[3][9]["RewardItem"][2]["Attr"] = "0 1" -- 7天偶像光效武器外套包*1
	tVIP_Paradise_MonsterReward[3][9]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[3][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[3][9]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[4] = {}
	-- ===非首次通关第1层
	-- ===索引:tVIP_Paradise_MonsterReward[4][1]
	-- ===LogStep:4[1]
	tVIP_Paradise_MonsterReward[4][1] = {}
	tVIP_Paradise_MonsterReward[4][1]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[4][1]["LogStep"] = "4[1]"
	tVIP_Paradise_MonsterReward[4][1]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[4][1]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[4][1]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人生果*1
	tVIP_Paradise_MonsterReward[4][1]["RewardItem"][1]["Attr"] = "0 1" -- GinsengFruit*1
	tVIP_Paradise_MonsterReward[4][1]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[4][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[4][1]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[4][2] = {}
	-- ===非首次通关第2层
	-- ===索引:tVIP_Paradise_MonsterReward[4][2]
	-- ===LogStep:4[2]
	tVIP_Paradise_MonsterReward[4][2]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[4][2]["LogStep"] = "4[2]"
	tVIP_Paradise_MonsterReward[4][2]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[4][2]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[4][2]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人生果*1
	tVIP_Paradise_MonsterReward[4][2]["RewardItem"][1]["Attr"] = "0 1" -- GinsengFruit*1
	tVIP_Paradise_MonsterReward[4][2]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[4][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[4][2]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[4][3] = {}
	-- ===非首次通关第3层
	-- ===索引:tVIP_Paradise_MonsterReward[4][3]
	-- ===LogStep:4[3]
	tVIP_Paradise_MonsterReward[4][3]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[4][3]["LogStep"] = "4[3]"
	tVIP_Paradise_MonsterReward[4][3]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[4][3]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[4][3]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人生果*1
	tVIP_Paradise_MonsterReward[4][3]["RewardItem"][1]["Attr"] = "0 1" -- GinsengFruit*1
	tVIP_Paradise_MonsterReward[4][3]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[4][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[4][3]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[4][4] = {}
	-- ===非首次通关第4层
	-- ===索引:tVIP_Paradise_MonsterReward[4][4]
	-- ===LogStep:4[4]
	tVIP_Paradise_MonsterReward[4][4]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[4][4]["LogStep"] = "4[4]"
	tVIP_Paradise_MonsterReward[4][4]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[4][4]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[4][4]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人生果*2
	tVIP_Paradise_MonsterReward[4][4]["RewardItem"][1]["Attr"] = "0 2" -- GinsengFruit*2
	tVIP_Paradise_MonsterReward[4][4]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[4][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[4][4]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[4][5] = {}
	-- ===非首次通关第5层
	-- ===索引:tVIP_Paradise_MonsterReward[4][5]
	-- ===LogStep:4[5]
	tVIP_Paradise_MonsterReward[4][5]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[4][5]["LogStep"] = "4[5]"
	tVIP_Paradise_MonsterReward[4][5]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[4][5]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[4][5]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人生果*2
	tVIP_Paradise_MonsterReward[4][5]["RewardItem"][1]["Attr"] = "0 2" -- GinsengFruit*2
	tVIP_Paradise_MonsterReward[4][5]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[4][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[4][5]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[4][6] = {}
	-- ===非首次通关第6层
	-- ===索引:tVIP_Paradise_MonsterReward[4][6]
	-- ===LogStep:4[6]
	tVIP_Paradise_MonsterReward[4][6]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[4][6]["LogStep"] = "4[6]"
	tVIP_Paradise_MonsterReward[4][6]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[4][6]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[4][6]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人生果*2
	tVIP_Paradise_MonsterReward[4][6]["RewardItem"][1]["Attr"] = "0 2" -- GinsengFruit*2
	tVIP_Paradise_MonsterReward[4][6]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[4][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[4][6]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[4][7] = {}
	-- ===非首次通关第7层
	-- ===索引:tVIP_Paradise_MonsterReward[4][7]
	-- ===LogStep:4[7]
	tVIP_Paradise_MonsterReward[4][7]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[4][7]["LogStep"] = "4[7]"
	tVIP_Paradise_MonsterReward[4][7]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[4][7]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[4][7]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人生果*3
	tVIP_Paradise_MonsterReward[4][7]["RewardItem"][1]["Attr"] = "0 3" -- GinsengFruit*3
	tVIP_Paradise_MonsterReward[4][7]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[4][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[4][7]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[4][8] = {}
	-- ===非首次通关第8层
	-- ===索引:tVIP_Paradise_MonsterReward[4][8]
	-- ===LogStep:4[8]
	tVIP_Paradise_MonsterReward[4][8]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[4][8]["LogStep"] = "4[8]"
	tVIP_Paradise_MonsterReward[4][8]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[4][8]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[4][8]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人生果*3
	tVIP_Paradise_MonsterReward[4][8]["RewardItem"][1]["Attr"] = "0 3" -- GinsengFruit*3
	tVIP_Paradise_MonsterReward[4][8]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[4][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[4][8]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[4][9] = {}
	-- ===非首次通关第9层
	-- ===索引:tVIP_Paradise_MonsterReward[4][9]
	-- ===LogStep:4[9]
	tVIP_Paradise_MonsterReward[4][9]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[4][9]["LogStep"] = "4[9]"
	tVIP_Paradise_MonsterReward[4][9]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[4][9]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[4][9]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人生果*3
	tVIP_Paradise_MonsterReward[4][9]["RewardItem"][1]["Attr"] = "0 3" -- GinsengFruit*3
	tVIP_Paradise_MonsterReward[4][9]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[4][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[4][9]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[5] = {}
	-- ===小BOSS奖励
	-- ===索引:tVIP_Paradise_MonsterReward[5][1]
	-- ===LogStep:5[1]
	tVIP_Paradise_MonsterReward[5][1] = {}
	tVIP_Paradise_MonsterReward[5][1]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[5][1]["LogStep"] = "5[1]"
	tVIP_Paradise_MonsterReward[5][1]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[5][1]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[5][1]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】赠黄色神纹精粹*2
	tVIP_Paradise_MonsterReward[5][1]["RewardItem"][1]["Attr"] = "0 2 3" -- YellowRuneEssence（赠）*2
	tVIP_Paradise_MonsterReward[5][1]["RewardItem"][2] = {}
	tVIP_Paradise_MonsterReward[5][1]["RewardItem"][2]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石*2
	tVIP_Paradise_MonsterReward[5][1]["RewardItem"][2]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的TwilightStarStone*2
	tVIP_Paradise_MonsterReward[5][1]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[5][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[5][1]["RewardEffect"]["Effect"] = "angelwing"


	tVIP_Paradise_MonsterReward[6] = {}
	-- ===大BOSS奖励
	-- ===索引:tVIP_Paradise_MonsterReward[6][1]
	-- ===LogStep:6[1]
	tVIP_Paradise_MonsterReward[6][1] = {}
	tVIP_Paradise_MonsterReward[6][1]["LogId"] = 12001689
	tVIP_Paradise_MonsterReward[6][1]["LogStep"] = "6[1]"
	tVIP_Paradise_MonsterReward[6][1]["RewardItem"] = {}
	tVIP_Paradise_MonsterReward[6][1]["RewardItem"][1] = {}
	tVIP_Paradise_MonsterReward[6][1]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*3
	tVIP_Paradise_MonsterReward[6][1]["RewardItem"][1]["Attr"] = "0 3 3" -- UniversalRuneEssence（赠）*3
	tVIP_Paradise_MonsterReward[6][1]["RewardItem"][2] = {}
	tVIP_Paradise_MonsterReward[6][1]["RewardItem"][2]["Id"] = 3314914 -- ClassicRelicBox[3314914][属性:8][叠加:1][金币:0], 【表格】神器典藏礼盒*1
	tVIP_Paradise_MonsterReward[6][1]["RewardItem"][2]["Attr"] = "0 1" -- ClassicRelicBox*1
	tVIP_Paradise_MonsterReward[6][1]["RewardEffect"] = {}
	tVIP_Paradise_MonsterReward[6][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tVIP_Paradise_MonsterReward[6][1]["RewardEffect"]["Effect"] = "angelwing"

--------------------------------------逻辑配置部分--------------------------------------
-- 获取掩码值
function VIP_Paradise_GetStcValue(nIndex,nUserId)
	local nEvent = tVIP_Paradise_Stc[nIndex]["EventType"]
	local nType = tVIP_Paradise_Stc[nIndex]["DataType"]
	
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	return nData
end

--设置掩码值
function VIP_Paradise_SetStcValue(nIndex,nData,nUserId)
	local nEvent = tVIP_Paradise_Stc[nIndex]["EventType"]
	local nType = tVIP_Paradise_Stc[nIndex]["DataType"]
	
	Task_SetStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 增加掩码值
function VIP_Paradise_AddStcValue(nIndex,nData,nUserId)
	local nEvent = tVIP_Paradise_Stc[nIndex]["EventType"]
	local nType = tVIP_Paradise_Stc[nIndex]["DataType"]
	
	Task_AddStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 隔周重置
function VIP_Paradise_ClearStcInterval(nIndex,nUserId)
	local nEvent = tVIP_Paradise_Stc[nIndex]["EventType"]
	local nType = tVIP_Paradise_Stc[nIndex]["DataType"]
	
	if Task_StcInterval(nEvent,nType,1,5,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
end

-- 检测是否有二进制
function VIP_Paradise_ChkHaveStcInterval(nIndex,nData,nUserId)
	local nEvent = tVIP_Paradise_Stc[nIndex]["EventType"]
	local nType = tVIP_Paradise_Stc[nIndex]["DataType"]
	local nTotalData = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	if Sys_ParseNumbersContain(2^nData,nTotalData) then
		return true
	end
	
	return false
end

-- 传送进地图
function VIP_Paradise_TransPos(nSendIndex,nUserId)
	local nMapId = tVIP_Paradise_MapPosition[nSendIndex]["MapId"]
	local nPosX = tVIP_Paradise_MapPosition[nSendIndex]["PosX"]
	local nPosY = tVIP_Paradise_MapPosition[nSendIndex]["PosY"]
	local nRange = tVIP_Paradise_MapPosition[nSendIndex]["Range"]
	
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,nRange,nRange,nCheck,nUserId)
end

--------------------------------------npc使用
-- 跳转线下页面
function VIP_Paradise_SendWebPag(nNpcId,nIndex)
	local sPage = tVIP_Paradise_Text["WebPage"][nIndex]
	User_SendWebPage(sPage,nUserId)
end

-- 25168,'梦幻城管家'
-- 送我进入梦幻城
function VIP_Paradise_EnterVIPParadise(nNpcId)
	-- 判断VIP
	local nUserVip = Get_UserVip(nUserId)
	if nUserVip < 1 then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 进入地图
	VIP_Paradise_TransPos(1)
end

-- 25170,'战术教官'
-- 挑战
function VIP_Paradise_ChallengePattern(nNpcId,nPatternType)
	-- 判断VIP
	local nUserVip = Get_UserVip(nUserId)
	if nUserVip < 1 then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-- 隔周清理掩码
	VIP_Paradise_ClearStcInterval(nPatternType)
	local nRepeatData = nPatternType+4
	VIP_Paradise_ClearStcInterval(nRepeatData)
	local nPatternData = VIP_Paradise_GetStcValue(nPatternType)
	local nNewPattern = nPatternType-1
	
	-- 判断最底第9层是否通过
	if nPatternType >= 2 then
		local nNewPatternData = VIP_Paradise_GetStcValue(nNewPattern)
		if nNewPatternData < tVIP_Paradise_Stc[1]["Limit"] then
			local sBasicText = tVIP_Paradise_Text[nNpcId]["Text241"]
			local tPattern = tVIP_Paradise_Text[nNpcId]["Pattern"]
			tNpcGossip[nNpcId]["Text241"] = string.format(sBasicText,tPattern[nNewPattern],tPattern[nPatternType])
			LinkNpcGossipFunc_New(nNpcId,"2-4")
			return
		end
	end
	
	-- 初始化选项个数
	local nOptionStart = tVIP_Paradise_Count["OptionStart"]
	local tOption = {}
	local nAllOption = nOptionStart
	for i = 1,9 do
		if Sys_ParseNumbersContain(2^i,nPatternData) then
			local nOptionIndex = nOptionStart + i - 1
			table.insert(tOption,nOptionIndex)
			nAllOption = nAllOption + 1
		else
			break
		end
	end 
	if nAllOption < nOptionStart + 9 then
		-- 开启下一层
		table.insert(tOption,nAllOption)
	end
	-- 初始化选项文字，函数
	for a,b in pairs(tOption) do
		local sOptionIndex = "Option"..b
		local sStartText = tVIP_Paradise_Text[nNpcId][sOptionIndex]
		local sPatternBasicText = tVIP_Paradise_Text[nNpcId]["OptionLayerUse"][nPatternType]
		local sPatternText = ""
		local sNowPattern = tVIP_Paradise_Text[nNpcId]["Pattern"][nPatternType]
		local nCombatForces = tVIP_Paradise_Count["CombatForces"][nPatternType][a]
		if nPatternType == 3 then
			-- local nNeedNum = #nCombatForces
			-- sPatternText = string.format(sPatternBasicText,sNowPattern,nNeedNum,nCombatForces[1])
			-- sPatternText = sNowPattern
		else
			sPatternText = string.format(sPatternBasicText,sNowPattern,nCombatForces)
		end
		tNpcGossip[nNpcId][sOptionIndex] = sStartText .. sPatternText
		local sFunc = "VIP_Paradise_ChallengeChoooseLayer</N>%d</N>%d</N>%d"
		tNpcGossip[nNpcId]["OptionFunc"..b] = string.format(sFunc,nNpcId,nPatternType,a)
	end
	-- 重新选择难度
	table.insert(tOption,220)
	tNpcGossip[nNpcId]["tOption2-1"] = tOption
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

-- 选定层数挑战
function VIP_Paradise_ChallengeChoooseLayer(nNpcId,nPatternType,nLayer)
	-- 判断VIP
	local nUserVip = Get_UserVip(nUserId)
	if nUserVip < 1 then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-- 隔周清理掩码
	VIP_Paradise_ClearStcInterval(nPatternType)
	local nPatternData = VIP_Paradise_GetStcValue(nPatternType)
	local nNewPatternType = nPatternType-1
	local nRepeatData = nPatternType+4
	VIP_Paradise_ClearStcInterval(nRepeatData)
	local nRewardData = VIP_Paradise_GetStcValue(nRepeatData)
	
	-- 判断最底第9层是否通过
	if nPatternType >= 2 then
		local nNewPatternData = VIP_Paradise_GetStcValue(nNewPatternType)
		if nNewPatternData < tVIP_Paradise_Stc[1]["Limit"] then
			local sBasicText = tVIP_Paradise_Text[nNpcId]["Text241"]
			local tPattern = tVIP_Paradise_Text[nNpcId]["Pattern"]
			tNpcGossip[nNpcId]["Text241"] = string.format(sBasicText,tPattern[nNewPatternType],tPattern[nPatternType])
			LinkNpcGossipFunc_New(nNpcId,"2-4")
			return
		end
	end
	
	-- 每周五次
	if Sys_ParseNumbersContain(2^nLayer,nPatternData) and nRewardData >= 5 then
		Sys_MsgBox(tVIP_Paradise_Text["LimitTime"])
		return
	end
	
	-- 战力不够
	local nCombatForces = 0
	local tCombatForces = tVIP_Paradise_Count["CombatForces"][nPatternType][nLayer]
	local nUserCombat = Get_UserBattleLevel(nUserId)
	local nNeedUserNum = 1
	-- 组队
	local nLeaderUserId = Get_UserId()
	local nUserTeamNum = Get_UserTeamNumbers(nUserId) 
	local bIsTeam = false
	if nPatternType == 3 then
		nCombatForces = tCombatForces[1]
		nNeedUserNum = #tCombatForces
		
		local nTeamNum = Get_UserTeamNumbers()
		if nTeamNum ~= 0 then
			bIsTeam = true
			-- 判断 队长
			if not User_IsTeamLeader(nUserId) then
				Sys_MsgBox(tVIP_Paradise_Text["NotTeamLeader"])
				return
			end
		
			tVIP_Paradise_LearderJudgy[nLeaderUserId] = true
			tVIP_Paradise_UserNumJudgy[nLeaderUserId] = 0
			tVIP_Paradise_LearderNum[nLeaderUserId] = {}
			local sNewFunc = "VIP_Paradise_JudgyCombat</N>%d</N>%d</N>%d"
			User_TeamExeFuncByLeader(2,string.format(sNewFunc,nLeaderUserId,nPatternType,nLayer),nUserId)
			local nUserTeamID = Get_UserTeamId(nUserId)
			tVIP_Paradise_LearderIDUserId[nUserTeamID] = nLeaderUserId
		end
		
	else
		-- 组队不能进入
		if nUserTeamNum >= 1 then
			Sys_MsgBox(tVIP_Paradise_Text["TeamStatus"])
			return
		end
		-- 战斗力不足
		if nUserCombat < tCombatForces then
			local sNewBasicText = tVIP_Paradise_Text[nNpcId]["Text251"]
			tNpcGossip[nNpcId]["Text251"] = string.format(sNewBasicText,tCombatForces)
			LinkNpcGossipFunc_New(nNpcId,"2-5")
			return
		end
	end
	
	local tChallengeData = tVIP_Paradise_Count["Challenge"]
	-- 进入副本地图
	local nInstanceType = tChallengeData["Instance"]
	if nPatternType == 3 then 
		-- local sFunc = "VIP_Paradise_TeamTrans</N>%d</N>%d</N>%d"
		-- User_TeamExeFuncByLeader(2,string.format(sFunc,nLeaderUserId,nPatternType,nLayer),nLeaderUserId)
		if bIsTeam then
			for i,v in pairs(tVIP_Paradise_LearderNum[nLeaderUserId]) do
				if not User_EnterInstance(nInstanceType, 0, 0, nTimeLimit, v, 0) then
					return
				end
			end
		else
			if not User_EnterInstance(nInstanceType, 0, 0, nTimeLimit, nUserId, 0) then
				return
			end
		end
	else
		if not User_EnterInstance(nInstanceType, 0, 0, nTimeLimit, nUserId, 0) then
			return
		end
	end
	
	-- 生成怪物
	local nMonsterId = tChallengeData["PatternMonster"][nPatternType][nLayer]
	local nGenId = tChallengeData["PatternGenerator"]
	local nMapId = Get_UserMapId()
	if nPatternType == 3 then
		-- 组队进入副本删除残留怪物
		for a,b in pairs(tChallengeData["PatternMonster"][nPatternType]) do
			local nMonsterNum = Get_SysTempData(1,nMapId,b)
			if nMonsterNum >= 1 then
				Monster_DelMonster(nMapId,b)
			end
		end
	end
	local nPosX = tChallengeData["PosX"]
	local nPosY = tChallengeData["PosY"]
	Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)
	Sys_SaveEmoneyBuy(tVIP_Paradise_Log["EmonyBuyEnter"][nLayer])
end

-- 判断战斗力
function VIP_Paradise_JudgyCombat(nLeaderUserId,nPatternType,nLayer,nNowUserId)
	local tCombatForces = tVIP_Paradise_Count["CombatForces"][nPatternType][nLayer]
	local nCombatForces = tCombatForces[1]
	local nUserCombat = Get_UserBattleLevel(nNowUserId)
	local nUserVip = Get_UserVip(nNowUserId)
	local nNewPatternData = VIP_Paradise_GetStcValue(nPatternType-1,nNowUserId)
	if nNewPatternData < tVIP_Paradise_Stc[1]["Limit"] then
		tVIP_Paradise_LearderJudgy[nLeaderUserId] = false
	end
	if nUserVip < 1 then
		tVIP_Paradise_LearderJudgy[nLeaderUserId] = false
	else
		local nUserMapId = Get_UserMapId(nNowUserId)
		if nUserMapId == tVIP_Paradise_MapPosition[1]["MapId"] then
			local nTeamNum = tVIP_Paradise_UserNumJudgy[nLeaderUserId] or 0
			tVIP_Paradise_UserNumJudgy[nLeaderUserId] = nTeamNum + 1
			table.insert(tVIP_Paradise_LearderNum[nLeaderUserId],nNowUserId)
		end
	end
	-- if nUserCombat < nCombatForces then
		-- tVIP_Paradise_LearderJudgy[nLeaderUserId] = false
	-- end
end

-- 组队传送
function VIP_Paradise_TeamTrans(nLeaderUserId,nPatternType,nLayer,nNowUserId)
	local tChallengeData = tVIP_Paradise_Count["Challenge"]
	local nInstanceType = tChallengeData["Instance"]
	User_EnterInstance(nInstanceType, 0, 0, nTimeLimit, nNowUserId, 0) 
end

-- 查看通关奖励
function VIP_Paradise_CheckModeReward(nNpcId,nMode)
	-- 判断VIP
	local nUserVip = Get_UserVip(nUserId)
	if nUserVip < 1 then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	local sDialogText = ""
	local sSpace = ""
	local nModeText = nMode
	if nMode == 1 then
		sDialogText = "3-1"
		sSpace = "          "
	elseif nMode == 2 then
		sDialogText = "3-3"
		sSpace = "          "
	elseif nMode == 3 then
		sDialogText = "3-4"
		nModeText = 5
		sSpace = "                    "
	else
		sDialogText = "3-5"
		sSpace = "                                              "
	end
	for i=321,329 do
		local sBasicText = tVIP_Paradise_Text[nNpcId]["Text"..i]
		local nLayer = i-320
		local sRewardText = sSpace .. tVIP_Paradise_Text["ChallengeReward"][nModeText][nLayer]
		tNpcGossip[nNpcId]["Text"..i] = string.format(sBasicText,sRewardText)
	end
	LinkNpcGossipFunc_New(nNpcId,sDialogText)
end

-- 25171,'梦幻审判者'
-- 送我去除魔试炼场
function VIP_Paradise_EnterTrialQuest(nNpcId)
	-- 判断VIP
	local nUserVip = Get_UserVip(nUserId)
	if nUserVip <= 1 then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 进入试炼场
	VIP_Paradise_TransPos(3,nUserId)
end

-- 25173,'梦幻福利官'
-- 兑换超值包
function VIP_Paradise_ExchangeItem(nNpcId,nType)
	local nUserVip = Get_UserVip(nUserId)
	if nUserVip < 1 then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- 隔周清理掩码
	VIP_Paradise_ClearStcInterval(4)
	-- 本周已经换过
	local nData = VIP_Paradise_GetStcValue(4)
	if nData >= 1 then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 二次确认
	if nType == 1 then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
	else
		LinkNpcGossipFunc_New(nNpcId,"2-3")
	end
end

-- 兑换超值包
function VIP_Paradise_SureExchangeItem(nNpcId,nType)
	local nUserVip = Get_UserVip(nUserId)
	if nUserVip < 1 then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- 隔周清理掩码
	VIP_Paradise_ClearStcInterval(4)
	-- 本周已经换过
	local nData = VIP_Paradise_GetStcValue(4)
	if nData >= 1 then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	local tReward = CommonFunc_Copy(tVIP_Paradise_Reward[1])
	local nSpaceNum = RewardTemplate_GetRewardSpace(tReward,nNowUserId)
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum,nUserId) then
		Sys_MsgBox(tVIP_Paradise_Text["NoSpace"])
		return
	end
	
	local bGive = false
	local sLog = ""
	local sEMonyBuyTime = ""
	local sEMonyBuy = ""
	-- 判断对应限制
	local tVIPExchangeData = tVIP_Paradise_Count["VIPExchange"][nUserVip]
	local nNeedData = 0
	if nType == 1 then
		local nUserEmoney = Get_UserMonoEMoney(nUserId)
		local nNeedMono = tVIPExchangeData["EMoneyMono"]
		nNeedData = nNeedMono
		if nUserEmoney  < nNeedMono then
			Sys_MsgBox(tVIP_Paradise_Text["NoEMoneyMono"])
			return
		end
		
		-- 扣除
		if User_AddEMoneyMono(-nNeedMono,nUserId,sEmoneyBuyLog) then
			bGive = true
			sLog = tVIP_Paradise_Log["MonoVIPExchange"]
			sEMonyBuyTime = tVIP_Paradise_Log["MonoVIPEMonyBuyTime"]
			sEMonyBuy = string.format(tVIP_Paradise_Log["MonoVIPEmonyBuy"],nNeedMono)
		end
		
	else
		local nNeedMoney = tVIPExchangeData["Money"]
		nNeedData = nNeedMoney
		if not User_CanPutMoney2Bag(-nNeedMoney,nUserId) then
			Sys_MsgBox(tVIP_Paradise_Text["NoMoney"])
			return
		end
		
		-- 扣除
		if User_AddMoney(-nNeedMoney,nUserId,sEmoneyBuyLog) then
			bGive = true
			sLog = tVIP_Paradise_Log["MoneyVIPExchange"]
			sEMonyBuyTime = tVIP_Paradise_Log["MoneyVIPEMonyBuyTime"]
			sEMonyBuy = string.format(tVIP_Paradise_Log["MoneyVIPEmonyBuy"],nNeedMoney)
		end
	end
	if bGive then
		VIP_Paradise_AddStcValue(4,1)
		Sys_SaveEmoneyBuy(sEMonyBuyTime,nNowUserId)
		Sys_SaveEmoneyBuy(sEMonyBuy,nNowUserId)
		tReward["RewardItem"][1]["Id"] = tVIPExchangeData["ItemId"]
		tReward["Log"] = string.format(sLog,nNeedData,tVIPExchangeData["ItemId"])
		RewardTemplate_UseItem(tReward)
	end
end
--------------------------------------物品使用
-- 3314262,'宠物蛋可选包'
function VIP_Paradise_ChooseItem(nItemId,nChooseItemId)
	RewardTemplate_UseItemAndMsg(tVIP_Paradise_Reward[nItemId][nChooseItemId])
end
--------------------------------------怪物掉落
-- 除魔试炼场怪物
function VIP_Paradise_ChallengeKillMonster(nMonsterId)
	-- 不是VIP
	local nUserVip = Get_UserVip(nUserId)
	if nUserVip < 1 then
		return
	end
	
	local nUserMapId = Get_UserMapId()
	-- Monster_DelMonster(nUserMapId,nMonsterId)
	Monster_Death(nMonsterId,nUserMapId)
	
	-- 设置玩家过关
	local nPatternType = 0
	local nLayer = 0
	for i,v in pairs (tVIP_Paradise_Count["Challenge"]["PatternMonster"]) do
		for a,b in pairs(v) do
			if b == nMonsterId then
				nPatternType = i
				nLayer = a
				break
			end
		end
	end
	
	local nNowUserId = Get_UserId()
	-- 地狱模式队长获得奖励
	local nLeaderUserId = 0
	local nTeamNum = Get_UserTeamNumbers()
	if nTeamNum == 0 then
		nLeaderUserId = nNowUserId
	else
		local nUserTeamID = Get_UserTeamId(nUserId)
		nLeaderUserId = tVIP_Paradise_LearderIDUserId[nUserTeamID]
	end
		
	local nAddData = 2^nLayer
	local nTotalData = VIP_Paradise_GetStcValue(nPatternType)
	local nRwardIndex = nPatternType
	local sRewardTip = tVIP_Paradise_Text["FirstReward"]
	-- 提示不在线
	local sFunc = "VIP_Paradise_TeamTip</S>%s</N>%d"
	if nTeamNum ~= 0 and not User_IsUserOnline(nLeaderUserId) then
		local sTip = tVIP_Paradise_Text["NoOnLine"]
		User_TeamExeFuncByTeamer(2,string.format(sFunc,sTip,nLeaderUserId),nNowUserId)
		return
	end
	if nLeaderUserId == nil then
		nLeaderUserId = nNowUserId
	end
	local bMail = false
	if nNowUserId ~= nLeaderUserId then
		bMail = true
	end
	-- 判断首次通过
	if VIP_Paradise_ChkHaveStcInterval(nPatternType,nLayer,nLeaderUserId) then
		nRwardIndex = 4
		sRewardTip = tVIP_Paradise_Text["NoFirstReward"]
		VIP_Paradise_AddStcValue(nPatternType+4,1,nLeaderUserId)
	else
		VIP_Paradise_AddStcValue(nPatternType,nAddData,nLeaderUserId)
		Sys_SaveEmoneyBuy(tVIP_Paradise_Log["EmonyBuyFinish"][nLayer],nLeaderUserId)
	end
	
	local nExistDay = tVIP_Paradise_MailInfo["ExistDay"]
	local sSender = tVIP_Paradise_Text["Sender"]
	local sTitle = tVIP_Paradise_Text["Title"]
	local sContent = tVIP_Paradise_Text["Content"]
	local sLastContent = string.format(sContent,sPatternText,nLayer)
	local sPatternText = tVIP_Paradise_Text[25170]["Pattern"][nPatternType] 
	-- 发邮件
	local nActionId = tVIP_Paradise_MailInfo["ActionId"][nRwardIndex][nLayer]
	if bMail == true then
		Sys_SendMail(nLeaderUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sLastContent)
		-- 发邮件
		User_TalkChannel2005(tVIP_Paradise_Text["NotOnTeam"],nLeaderUserId)
		local sNewTip = tVIP_Paradise_Text["TeamLeader"]
		User_TeamExeFuncByTeamer(2,string.format(sFunc,sNewTip,nLeaderUserId),nNowUserId)
		VIP_Paradise_TeamTransPos(nPatternType,nNowUserId)
		return
	end
	
	-- 发奖励，背包满发邮件
	local tReward = tVIP_Paradise_MonsterReward[nRwardIndex][nLayer]
	local nSpaceNum = RewardTemplate_GetRewardSpace(tReward)
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum,nNowUserId) then
		Sys_SendMail(nNowUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sLastContent)
		-- 发邮件
		User_TalkChannel2005(tVIP_Paradise_Text["RewardMail"],nNowUserId)
		local sNowTip = tVIP_Paradise_Text["NotTeamLeaderGive"]
		User_TeamExeFuncByTeamer(2,string.format(sFunc,sNowTip,nNowUserId),nNowUserId)
		VIP_Paradise_TeamTransPos(nPatternType,nNowUserId)
		return
	end
	
	local sLastTip = string.format(sRewardTip,sPatternText,nLayer,tVIP_Paradise_Text["ChallengeReward"][nRwardIndex][nLayer])
	tReward["Talk"] = sLastTip
	-- 直接给奖励
	RewardTemplate_UseItem(tReward)
	Sys_MsgBox(sLastTip)
	local sNowTip = tVIP_Paradise_Text["NotTeamLeaderGive"]
	User_TeamExeFuncByTeamer(2,string.format(sFunc,sNowTip,nNowUserId),nNowUserId)
	
	-- 传出地图
	-- if nPatternType <= 2 then
		-- VIP_Paradise_TransPos(2,nUserId)
	VIP_Paradise_TeamTransPos(nPatternType,nNowUserId)
	
end

function VIP_Paradise_TeamTip(sTip,nLeardernUserId,nUserId)
	if nUserId ~= nLeardernUserId then
		User_TalkChannel2005(sTip,nUserId)
	end
end

-- 组队传送
function VIP_Paradise_TeamTransPos(nPatternType,nUserId)
	-- VIP_Paradise_TransPos(2,nUserId)
	if nPatternType == 3 then
		-- 组队执行传出地图
		-- local sFunc = "VIP_Paradise_TeamTransPos"
		-- local nMapId = tVIP_Paradise_MapPosition[1]["MapId"]
		-- local nPosX = tVIP_Paradise_MapPosition[1]["PosX"]
		-- local nPosY = tVIP_Paradise_MapPosition[1]["PosY"]
		-- User_TeamChgMap(nMapId,nPosX,nPosY,nUserId)
		local nMapId = tVIP_Paradise_MapPosition[1]["MapId"]
		local nPosX = tVIP_Paradise_MapPosition[1]["PosX"]
		local nPosY = tVIP_Paradise_MapPosition[1]["PosY"]
		local nUserMapId = Get_UserMapId(nNowUserId)
		Map_ChgUserPos(nUserMapId, nMapId, nPosX, nPosY)
	end
end

-- 梦幻城挑战地图怪物
function VIP_Paradise_TrialKillMonster(nMonsterId)
	-- 不是VIP
	local nUserVip = Get_UserVip(nUserId)
	if nUserVip < 2 then
		return
	end
	
	local nUserMapId = Get_UserMapId()
	-- Monster_DelMonster(nUserMapId,nMonsterId)
	Monster_Death(nMonsterId,nUserMapId)
	
	-- 背包满提示
	local sRewardTip = tVIP_Paradise_Text["TrialQuestReward"]
	local nRwardIndex = 5
	if nMonsterId == tVIP_Paradise_Count["Trial"][2]["MonsterId"] then
		nRwardIndex = 6
		sRewardTip = tVIP_Paradise_Text["BigTrialQuestReward"]
	end
	local tReward = tVIP_Paradise_MonsterReward[nRwardIndex][1]
	local nSpaceNum = RewardTemplate_GetRewardSpace(tReward)
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum,nUserId) then
		-- 发邮件
		-- local sTip = tRewardTemplate_Text["NoSpace"]
		-- User_TalkChannel2005(string.format(sTip,nSpaceNum))
		local nExistDay = tVIP_Paradise_MailInfo["ExistDay"]
		local sSender = tVIP_Paradise_Text["Sender"]
		local sTitle = tVIP_Paradise_Text["Title"]
		local sContent = tVIP_Paradise_Text["ContentNew"]
		-- 发邮件
		local nActionId = tVIP_Paradise_MailInfo["ActionId"][nRwardIndex][1]
		local nNowUserId = Get_UserId()
		Sys_SendMail(nNowUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
		-- 发邮件
		User_TalkChannel2005(tVIP_Paradise_Text["RewardMail"])
		return
	end
	
	tReward["Talk"] = sRewardTip
	-- 直接给奖励
	RewardTemplate_UseItem(tReward)
	Sys_MsgBox(sRewardTip)
end

--------------------------------------时间自检
-- 每个小时刷新8只小BOSS
function VIP_Paradise_LittleBossRefresh()
	local tTrialData = tVIP_Paradise_Count["Trial"][1]
	-- 生成怪物
	local nMonsterId = tTrialData["MonsterId"]
	local nGenId = tTrialData["Generator"]
	local nMapId = tTrialData["MapId"]
	
	for i,v in pairs(tTrialData["MapPosition"]) do
		-- Monster_AddAndCount(nMapId,v[1],v[2],nGenId,nMonsterId)
	local sName = tVIP_Paradise_Text["MonsterName"][nMonsterId]
	Monster_CreateMonsterRange(0,0,nMapId,v[1],v[2],nGenId,nMonsterId,0,sName,0,1,1,1,tVIP_Paradise_Count["Time"])
	end
end

-- 时间段内刷新答BOSS
function VIP_Paradise_BigBossRefresh()
	local tTrialData = tVIP_Paradise_Count["Trial"][2]
	-- 生成怪物
	local nMonsterId = tTrialData["MonsterId"]
	local nGenId = tTrialData["Generator"]
	local nMapId = tTrialData["MapId"]
	
	local nRandom = math.random(1,4)
	local tPos = tTrialData["MapPosition"][nRandom]
	-- Monster_AddAndCount(nMapId,tPos[1],tPos[2],nGenId,nMonsterId)
	local sName = tVIP_Paradise_Text["MonsterName"][nMonsterId]
	Monster_CreateMonsterRange(0,0,nMapId,tPos[1],tPos[2],nGenId,nMonsterId,0,sName,0,1,1,1,tVIP_Paradise_Count["NewTime"])
end

-- 怪物删除刷新公告提示
function VIP_Paradise_BossBroadcast()
	-- 给提示
	Sys_TalkBroadcast(tVIP_Paradise_Text["BroadCast"]["LittleBoss"])
end

-- 链接寻路
function VIP_Paradise_JoinTheActivity(nIndex)
	local nUserMapId = Get_UserMapId()
	if nUserMapId == tVIP_Paradise_MapPosition[2]["MapId"] then
		NpcPosition_PathFind(25168)
	else
		Sys_MsgBox(tVIP_Paradise_Text["GotoPos"])
	end
end
--------------------------------------邮件领奖
function VIP_Paradise_MailReward(nPatternType,nLayer)
	local nUserId = Get_UserId()
	RewardTemplate_UseItem(tVIP_Paradise_MonsterReward[nPatternType][nLayer],nUserId,true)
end
----------------------------------NPC部分---------------------------------------------
-- 25168,'梦幻城管家'
tNpcFace[2132] = 87
tNpcGossip[25168]= tNpcGossip[25168] or DefaultNpc:new{}
tNpcGossip[25168]["OptionHidden"] = 1
tNpcGossip[25168]["DialogueText"] = tVIP_Paradise_Text[25168] 
-- 不满足条件
tNpcGossip[25168]["Text1-1"] = {111,112}
tNpcGossip[25168]["tOption1-1"] = {111}
tNpcGossip[25168]["ChkFunc1-1"]= function()
	local nUserVip = Get_UserVip(nUserId)
	if nUserVip > 0 then
		return false
	end
	return true
end
-- 满足条件
tNpcGossip[25168]["Text1-2"] = {121,122}
tNpcGossip[25168]["tOption1-2"] = {121,122}
-- 送我进入梦幻城
tNpcGossip[25168]["OptionFunc121"] = "VIP_Paradise_EnterVIPParadise</N>25168"

-- 25169,'CO资讯官'
tNpcFace[2133] = 73
tNpcGossip[25169]= tNpcGossip[25169] or DefaultNpc:new{}
tNpcGossip[25169]["OptionHidden"] = 1
tNpcGossip[25169]["DialogueText"] = tVIP_Paradise_Text[25169] 
tNpcGossip[25169]["Text1-1"] = {111}
tNpcGossip[25169]["tOption1-1"] = {111,112,113}
-- 1、CO CIA。  ===跳转线下页面
tNpcGossip[25169]["OptionFunc111"] = "VIP_Paradise_SendWebPag</N>25168</N>1"
-- 2、CO Stars。  ===跳转线下页面
tNpcGossip[25169]["OptionFunc112"] = "VIP_Paradise_SendWebPag</N>25168</N>2"
-- 3、CO Comedy。  ===跳转线下页面
tNpcGossip[25169]["OptionFunc113"] = "VIP_Paradise_SendWebPag</N>25168</N>3"

-- 25170,'战术教官'
tNpcFace[2134] = 87
tNpcGossip[25170]= tNpcGossip[25170] or DefaultNpc:new{}
tNpcGossip[25170]["OptionHidden"] = 1
tNpcGossip[25170]["DialogueText"] = tVIP_Paradise_Text[25170] 
tNpcGossip[25170]["Text1-1"] = {111,112,113,114}
tNpcGossip[25170]["tOption1-1"] = {111,112,113,115,114}
-- 挑战简单模式（单人）
tNpcGossip[25170]["OptionFunc111"] = "VIP_Paradise_ChallengePattern</N>25170</N>1"
-- 挑战困难模式（单人）
tNpcGossip[25170]["OptionFunc112"] = "VIP_Paradise_ChallengePattern</N>25170</N>2"
-- 挑战地狱模式（组队）
tNpcGossip[25170]["OptionFunc113"] = "VIP_Paradise_ChallengePattern</N>25170</N>3"
-- 跳转线下页面。   ===跳转线下页面
tNpcGossip[25170]["OptionFunc114"] = "VIP_Paradise_SendWebPag</N>25170</N>4"
-- 查看通关奖励
tNpcGossip[25170]["OptionFunc115"] = "VIP_Paradise_CheckModeReward</N>25170</N>1"

-- 请阁下选择挑战的层数
tNpcGossip[25170]["Text2-1"] = {211}
tNpcGossip[25170]["tOption2-1"] = {211,212,213,214,215,216,217,218,219,220}
-- 1、第1层（简单/困难/地狱）。
-- 2、第2层（简单/困难/地狱）。
-- 3、第3层（简单/困难/地狱）。
-- 4、第4层（简单/困难/地狱）。
-- 5、第5层（简单/困难/地狱）。
-- 6、第6层（简单/困难/地狱）。
-- 7、第7层（简单/困难/地狱）。
-- 8、第8层（简单/困难/地狱）。
-- 9、第9层（简单/困难/地狱）。
-- 10、重新选择难度。   ===跳转回主对白
tNpcGossip[25170]["OptionPoint220"] = 1

-- 不是VIP
tNpcGossip[25170]["Text2-3"] = {231}
tNpcGossip[25170]["tOption2-3"] = {231}

-- 难度没开启
tNpcGossip[25170]["Text2-4"] = {241}
tNpcGossip[25170]["tOption2-4"] = {241}
tNpcGossip[25170]["OptionPoint241"] = 1

-- 战力不够
tNpcGossip[25170]["Text2-5"] = {251}
tNpcGossip[25170]["tOption2-5"] = {251}
tNpcGossip[25170]["OptionPoint251"] = 1

-- 组队人数不足规定人数，或有人战力不达标
tNpcGossip[25170]["Text2-6"] = {261}
tNpcGossip[25170]["tOption2-6"] = {261}
tNpcGossip[25170]["OptionPoint261"] = 1

-- 查看简单通关奖励
tNpcGossip[25170]["Text3-1"] = {311,312,313,321,322,323,324,325,326,327,328,329,312}
tNpcGossip[25170]["tOption3-1"] = {312,313,314,315}
-- "查看简单模式通关奖励."
--  "查看困难模式通关奖励."
--  "查看地狱模式通关奖励."
--  "查看所有模式非首次通关奖励."
 -- "查看困难模式通关奖励."
tNpcGossip[25170]["Text3-3"] = {331,312,313,321,322,323,324,325,326,327,328,329,312}
tNpcGossip[25170]["tOption3-3"] = {311,313,314,315}
 -- "查看地狱模式通关奖励."
tNpcGossip[25170]["Text3-4"] = {341,312,313,321,322,323,324,325,326,327,328,329,312}
tNpcGossip[25170]["tOption3-4"] = {311,312,314,315}
 -- "查看所有模式非首次通关奖励."
tNpcGossip[25170]["Text3-5"] = {351,312,352,321,322,323,324,325,326,327,328,329,312}
tNpcGossip[25170]["tOption3-5"] = {311,312,313,315}
tNpcGossip[25170]["OptionFunc311"] = "VIP_Paradise_CheckModeReward</N>25170</N>1"
tNpcGossip[25170]["OptionFunc312"] = "VIP_Paradise_CheckModeReward</N>25170</N>2"
tNpcGossip[25170]["OptionFunc313"] = "VIP_Paradise_CheckModeReward</N>25170</N>3"
tNpcGossip[25170]["OptionFunc314"] = "VIP_Paradise_CheckModeReward</N>25170</N>4"
tNpcGossip[25170]["OptionPoint315"] = 1

-- 25171,'梦幻审判者'
tNpcFace[2135] = 24
tNpcGossip[25171]= tNpcGossip[25171] or DefaultNpc:new{}
tNpcGossip[25171]["OptionHidden"] = 1
tNpcGossip[25171]["DialogueText"] = tVIP_Paradise_Text[25171] 
-- 不满足条件
tNpcGossip[25171]["Text1-1"] = {111,112}
tNpcGossip[25171]["tOption1-1"] = {111}
tNpcGossip[25171]["ChkFunc1-1"]= function()
	local nUserVip = Get_UserVip(nUserId)
	if nUserVip > 1 then
		return false
	end
	return true
end
-- 满足条件
tNpcGossip[25171]["Text1-2"] = {121,122}
tNpcGossip[25171]["tOption1-2"] = {121,122}
-- 送我去除魔试炼场
tNpcGossip[25171]["OptionFunc121"] = "VIP_Paradise_EnterTrialQuest</N>25171"

-- 25172,'梦幻兑奖官'
tNpcFace[2136] = 203
tNpcGossip[25172]= tNpcGossip[25172] or DefaultNpc:new{}
tNpcGossip[25172]["OptionHidden"] = 1
tNpcGossip[25172]["DialogueText"] = tVIP_Paradise_Text[25172] 
tNpcGossip[25172]["Text1-1"] = {111}
tNpcGossip[25172]["tOption1-1"] = {111}
-- 了解保级称号领取规则。  ===跳转线下页面
tNpcGossip[25172]["OptionFunc111"] = "VIP_Paradise_SendWebPag</N>25172</N>5"

-- 25173,'梦幻福利官'
tNpcFace[2137] = 205
tNpcGossip[25173]= tNpcGossip[25173] or DefaultNpc:new{}
tNpcGossip[25173]["OptionHidden"] = 1
tNpcGossip[25173]["DialogueText"] = tVIP_Paradise_Text[25173] 
-- 本周已经换过
tNpcGossip[25173]["Text1-1"] = {111,112,113}
tNpcGossip[25173]["tOption1-1"] = {111}
tNpcGossip[25173]["ChkFunc1-1"]= function()
	-- 隔周清理掩码
	VIP_Paradise_ClearStcInterval(4)
	-- 本周已经换过
	local nData = VIP_Paradise_GetStcValue(4)
	if nData >= 1 then
		return true
	end
	return false
end
-- 本周还没换过
tNpcGossip[25173]["Text1-2"] = {111,112,121,122}
tNpcGossip[25173]["tOption1-2"] = {121,122}
tNpcGossip[25173]["ChkFunc1-2"]= function()
	local nUserVip = Get_UserVip(nUserId)
	if nUserVip < 1 then
		return false
	end
	-- 奖励说明
	local sBasicText = tVIP_Paradise_Text[25173]["Text121"]
	local nUseMono = tVIP_Paradise_Count["VIPExchange"][nUserVip]["EMoneyMono"]
	local nUseMoney = tVIP_Paradise_Count["VIPExchange"][nUserVip]["Money"]
	local sVIPExchange = tVIP_Paradise_Text["VIPExchange"][nUserVip]
	tNpcGossip[25173]["Text121"] = string.format(sBasicText,nUserVip,nUseMono,nUseMoney,nUserVip,sVIPExchange)
	
	-- 初始化选项
	local sOptionMono = tVIP_Paradise_Text[25173]["Option121"]
	local sOptionMoney = tVIP_Paradise_Text[25173]["Option122"]
	tNpcGossip[25173]["Option121"] = string.format(sOptionMono,nUseMono)
	tNpcGossip[25173]["Option122"] = string.format(sOptionMoney,nUseMoney)
	return true
end
-- 1、花费XX天石（赠）兑换超值包。
tNpcGossip[25173]["OptionFunc121"] = "VIP_Paradise_ExchangeItem</N>25173</N>1"
-- 2、花费XX万金币兑换超值包。
tNpcGossip[25173]["OptionFunc122"] = "VIP_Paradise_ExchangeItem</N>25173</N>2"

-- 花费XX天石（赠）兑换超值包。
-- 二次确认
tNpcGossip[25173]["Text2-1"] = {211}
tNpcGossip[25173]["tOption2-1"] = {211,212}
tNpcGossip[25173]["ChkFunc2-1"]= function()
	local nUserVip = Get_UserVip(nUserId)
	if nUserVip < 1 then
		return false
	end
	-- 奖励说明
	local sBasicText = tVIP_Paradise_Text[25173]["Text211"]
	local nUseMono = tVIP_Paradise_Count["VIPExchange"][nUserVip]["EMoneyMono"]
	tNpcGossip[25173]["Text211"] = string.format(sBasicText,nUseMono,nUserVip)
	return true
end
-- 1-1、确定兑换。
tNpcGossip[25173]["OptionFunc211"] = "VIP_Paradise_SureExchangeItem</N>25173</N>1"
-- 1-2、我再想想。

-- 不是VIP
tNpcGossip[25173]["Text2-2"] = {221}
tNpcGossip[25173]["tOption2-2"] = {221}



-- 花费XX金币兑换超值包。
-- 二次确认
tNpcGossip[25173]["Text2-3"] = {231}
tNpcGossip[25173]["tOption2-3"] = {231,212}
tNpcGossip[25173]["ChkFunc2-3"]= function()
	local nUserVip = Get_UserVip(nUserId)
	if nUserVip < 1 then
		return false
	end
	-- 奖励说明
	local sBasicText = tVIP_Paradise_Text[25173]["Text231"]
	local nUseMoney = tVIP_Paradise_Count["VIPExchange"][nUserVip]["Money"]
	tNpcGossip[25173]["Text231"] = string.format(sBasicText,nUseMoney,nUserVip)
	return true
end
-- 1-1、确定兑换。
tNpcGossip[25173]["OptionFunc231"] = "VIP_Paradise_SureExchangeItem</N>25173</N>2"
---------------------------------物品部分---------------------------------------------
-- 3314140,'VIP1每周超值包'
tItem[3314140] = tItem[3314140] or {}
tItem[3314140]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tVIP_Paradise_Reward[nItemId])
end
-- 3314141,'VIP2每周超值包'
-- 3314142,'VIP3每周超值包'
-- 3314143,'VIP4每周超值包'
-- 3314144,'VIP5每周超值包'
-- 3314145,'VIP6每周超值包'
-- 3314146,'VIP7每周超值包'
tItem[3314141] = tItem[3314140]
tItem[3314142] = tItem[3314140]
tItem[3314143] = tItem[3314140]
tItem[3314144] = tItem[3314140]
tItem[3314145] = tItem[3314140]
tItem[3314146] = tItem[3314140]
-- 3314262,'宠物蛋可选包'
tItemFace[3314262] = 1547
tItem[3314262] = tItem[3314262] or {}
tItem[3314262]["DialogueText"] = tVIP_Paradise_Text[3314262]
tItem[3314262]["Text1-1"] = {111}
tItem[3314262]["tOption1-1"] = {111,112,113}
tItem[3314262]["OptionFunc111"] = "VIP_Paradise_ChooseItem</N>3314262</N>3008529"
tItem[3314262]["OptionFunc112"] = "VIP_Paradise_ChooseItem</N>3314262</N>3008530"
tItem[3314262]["OptionFunc113"] = "VIP_Paradise_ChooseItem</N>3314262</N>3008679"

---------------------------------陷阱部分---------------------------------------------
-- 点击陷阱离开地图
tTrap[2501] = tTrap[2501] or {}
tTrap[2501]["Function"] = function(nTrapId,nTrapType)
	VIP_Paradise_TransPos(2)
end
tTrap[2502] = tTrap[2502] or {}
tTrap[2502]["Function"] = function(nTrapId,nTrapType)
	VIP_Paradise_TransPos(1)
end
tTrap[2503] = tTrap[2502] 
---------------------------------怪物部分---------------------------------------------
local tVIP_Paradise_KillMonster = {}
-- 除魔试炼场
tVIP_Paradise_KillMonster[1] = {}
tVIP_Paradise_KillMonster[1]["Function"]= VIP_Paradise_ChallengeKillMonster
tVIP_Paradise_KillMonster[1]["MonsterId"] = {5774,5775,5776,5777,5778,5779,5780,5781,5782,5783,5784,5785,5786,5787,5788,5789,5790,5791,5792,5793,5794,5795,5796,5797,5798,5799,5800}
-- 梦幻城挑战地图
tVIP_Paradise_KillMonster[2] = {}
tVIP_Paradise_KillMonster[2]["Function"]= VIP_Paradise_TrialKillMonster
tVIP_Paradise_KillMonster[2]["MonsterId"] = {5801,5802}
table.insert(tMonsterDrop_AreaLoad,tVIP_Paradise_KillMonster[1])
table.insert(tMonsterDrop_AreaLoad,tVIP_Paradise_KillMonster[2])
---------------------------------时间自检---------------------------------------------
-- 刷新怪物
local tVIP_Paradise_OnTime = {}
	-- 每小时刷新小boss
	tVIP_Paradise_OnTime[1] = {}
	tVIP_Paradise_OnTime[1]["Type"] = 3
	tVIP_Paradise_OnTime[1]["TimeType"] = 5
	tVIP_Paradise_OnTime[1]["Time"] = "00 00"
	tVIP_Paradise_OnTime[1]["Func"] = VIP_Paradise_LittleBossRefresh
	-- 时间段内刷新答BOSS
	tVIP_Paradise_OnTime[2] = {}
	tVIP_Paradise_OnTime[2]["Type"] = 3
	tVIP_Paradise_OnTime[2]["TimeType"] = 4
	tVIP_Paradise_OnTime[2]["Multiple"] = {}
	tVIP_Paradise_OnTime[2]["Multiple"][1] = "04:00 04:00"
	tVIP_Paradise_OnTime[2]["Multiple"][2] = "10:00 10:00"
	tVIP_Paradise_OnTime[2]["Multiple"][3] = "13:00 13:00"
	tVIP_Paradise_OnTime[2]["Multiple"][4] = "18:00 18:00"
	tVIP_Paradise_OnTime[2]["Func"] = VIP_Paradise_BigBossRefresh
	-- 怪物删除刷新公告提示
	tVIP_Paradise_OnTime[3] = {}
	tVIP_Paradise_OnTime[3]["Type"] = 6
	tVIP_Paradise_OnTime[3]["TimeType"] = 5
	tVIP_Paradise_OnTime[3]["Time"] = "58 58"
	tVIP_Paradise_OnTime[3]["Func"] = VIP_Paradise_BossBroadcast
table.insert(tSystemTime_InitialData,tVIP_Paradise_OnTime[1])
table.insert(tSystemTime_InitialData,tVIP_Paradise_OnTime[2])
table.insert(tSystemTime_InitialData,tVIP_Paradise_OnTime[3])
