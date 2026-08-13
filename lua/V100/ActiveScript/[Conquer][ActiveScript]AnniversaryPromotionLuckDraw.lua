------------------------------------------------------------------------------------
--Name：            180410[简体征服][活动脚本]周年庆促销活动-赠点奖池抽奖
--Creator:      兰瑞妹
--Created:     2019/10/12
------------------------------------------------------------------------------------
--任务需求：
-- 191009[英文征服][活动脚本]11月龙之咆哮类新活动（11.19-12.9）
-- 复用简体消耗赠点活动，链接为：http://forum.nderp.99.com/Forum/TopicList-342237.aspx
-- 将消耗赠点、抽奖券改为消耗灵珠，奖励由赠点改为天石、外套，详见附件


-- 1、福袋
-- 2、黑市
-- 3、赠点抽奖
-- 4、砍价促销

-- 先按目前的数据把内容做出来，具体价格配表后续会优化，评估一下1-3能否在4.19更新
-- ===========
-- 注意奋斗服也上，奖励中不能有龙珠、宝石、开洞
------------------------------------------------------------------------------------
-- 掩码记录：
-- stc(175,91)  记录玩家是否屏蔽二次确认
-- stc(176,10)  记录玩家是否获得背包信
-- stc(176,11)  记录玩家今日掉落增点券数量
-- stc(176,12)  记录玩家今日是否中一等奖
-- stc(176,13)  记录玩家抽中的奖励
-- stc(201,55)  记录玩家是否屏蔽二次确认10抽
-- stc(201,56)  记录玩家今日是否中一等奖10抽

-- #GlobalId		52616
-- #0 奖池赠点数（初始值10000）
-- #1-5 最近五名中奖者数据 data最后一位记录获奖名次，前面记录赠点数量  datastr记录玩家名  time记录玩家获得奖励的时间
-- #GlobalId		52629
-- #6-10 最近五名中奖者数据 data最后一位记录获奖名次，前面记录赠点数量  datastr记录玩家名  time记录玩家获得奖励的时间
-- #GlobalId		53529
-- #0 奖池赠点数（初始值100000）
-- #1-5 最近五名中奖者数据 data最后一位记录获奖名次，前面记录赠点数量  datastr记录玩家名  time记录玩家获得奖励的时间
-- #GlobalId		53530
-- #6-10 最近五名中奖者数据 data最后一位记录获奖名次，前面记录赠点数量  datastr记录玩家名  time记录玩家获得奖励的时间

------------------------------------------------------------------------------------
-- 前缀
-- AnniversaryPromotionLuckDraw_
-- logid： 12001051
----------------------------------表配置部分--------------------------------------------
local tAnniversaryPromotionLuckDraw_Data = {}
-- 活动时间
tAnniversaryPromotionLuckDraw_Data["BeforeTime"] = tActivityTime["AnniversaryPromotionLuckDraw"]["BeforeTime"]
tAnniversaryPromotionLuckDraw_Data["ActivityTime"] = tActivityTime["AnniversaryPromotionLuckDraw"]["AtivityTime"]
-- 掩码记录
tAnniversaryPromotionLuckDraw_Data["Stc"] = {}
tAnniversaryPromotionLuckDraw_Data["Stc"]["Event"] = {}
tAnniversaryPromotionLuckDraw_Data["Stc"]["Data"] = {}
-- stc(175,91)  记录玩家是否屏蔽二次确认
tAnniversaryPromotionLuckDraw_Data["Stc"]["Event"][1] = 175
tAnniversaryPromotionLuckDraw_Data["Stc"]["Data"][1] = 91
-- stc(176,11)  记录玩家今日掉落增点券数量
tAnniversaryPromotionLuckDraw_Data["Stc"]["Event"][2] = 176
tAnniversaryPromotionLuckDraw_Data["Stc"]["Data"][2] = 11
-- stc(176,12)  记录玩家今日是否中一等奖
tAnniversaryPromotionLuckDraw_Data["Stc"]["Event"][3] = 176
tAnniversaryPromotionLuckDraw_Data["Stc"]["Data"][3] = 12
-- stc(176,13)  记录玩家抽中的奖励
tAnniversaryPromotionLuckDraw_Data["Stc"]["Event"][4] = 176
tAnniversaryPromotionLuckDraw_Data["Stc"]["Data"][4] = 13
-- stc(201,55)  记录玩家是否屏蔽二次确认10抽
tAnniversaryPromotionLuckDraw_Data["Stc"]["Event"][5] = 201
tAnniversaryPromotionLuckDraw_Data["Stc"]["Data"][5] = 55
-- stc(201,56)  记录玩家今日是否中一等奖10抽
tAnniversaryPromotionLuckDraw_Data["Stc"]["Event"][6] = 201
tAnniversaryPromotionLuckDraw_Data["Stc"]["Data"][6] = 56
-- stc(209,88)  记录玩家抽中的奖励--十连抽
tAnniversaryPromotionLuckDraw_Data["Stc"]["Event"][7] = 209
tAnniversaryPromotionLuckDraw_Data["Stc"]["Data"][7] = 88
-- 高级赤龙掩码  记录获得那个奖励
tAnniversaryPromotionLuckDraw_Data["Stc"][3300634] = {}
tAnniversaryPromotionLuckDraw_Data["Stc"][3300634]["EventType"] = 148
tAnniversaryPromotionLuckDraw_Data["Stc"][3300634]["DataType"] = 87
-- 普通赤龙掩码  记录获得那个奖励
tAnniversaryPromotionLuckDraw_Data["Stc"][3008992] = {}
tAnniversaryPromotionLuckDraw_Data["Stc"][3008992]["EventType"] = 148
tAnniversaryPromotionLuckDraw_Data["Stc"][3008992]["DataType"] = 88
-- 光效
tAnniversaryPromotionLuckDraw_Data["EffectSelf"] = "self"
tAnniversaryPromotionLuckDraw_Data["NotReward"] = "BodyDisapear"
tAnniversaryPromotionLuckDraw_Data["EffectLight"] = {}
tAnniversaryPromotionLuckDraw_Data["EffectLight"][1] = "task104"
tAnniversaryPromotionLuckDraw_Data["EffectLight"][2] = "task105"
tAnniversaryPromotionLuckDraw_Data["EffectLight"][3] = "task106"
tAnniversaryPromotionLuckDraw_Data["EffectLight"][4] = "task107"
tAnniversaryPromotionLuckDraw_Data["EffectLight"][5] = "task108"
tAnniversaryPromotionLuckDraw_Data["EffectLight"][6] = "task109"
tAnniversaryPromotionLuckDraw_Data["EffectLight"][7] = "task110"
tAnniversaryPromotionLuckDraw_Data["EffectLight"][8] = "task111"
tAnniversaryPromotionLuckDraw_Data["EffectLight"][9] = "task112"
-- GlobalId
-- GlobalId1  0 奖池赠点数（初始值10000）
-- GlobalId2  0 单服掉落增点券数量
-- 1-5 最近五名中奖者数据 data最后一位记录获奖名次，前面记录赠点数量  datastr记录玩家名  time记录玩家获得奖励的时间
tAnniversaryPromotionLuckDraw_Data["GlobalId"] = {}
tAnniversaryPromotionLuckDraw_Data["GlobalId"][1] = 52616
tAnniversaryPromotionLuckDraw_Data["GlobalId"][2] = 52629
-- #0 奖池赠点数（初始值100000）
-- #1-5 最近五名中奖者数据 data最后一位记录获奖名次，前面记录赠点数量  datastr记录玩家名  time记录玩家获得奖励的时间
tAnniversaryPromotionLuckDraw_Data["GlobalId"][3] = 53529
tAnniversaryPromotionLuckDraw_Data["GlobalId"][4] = 53530
-- 周年庆礼券
-- tAnniversaryPromotionLuckDraw_Data["ItemId"] = 3308416
-- 灵珠
tAnniversaryPromotionLuckDraw_Data["ItemId"] = {}
tAnniversaryPromotionLuckDraw_Data["ItemId"][1] = 4200003
tAnniversaryPromotionLuckDraw_Data["ItemId"][10] = 4200006
-- 物品id对应索引
tAnniversaryPromotionLuckDraw_Data["ItemToText"] = {}
tAnniversaryPromotionLuckDraw_Data["ItemToText"][1] = 195875
tAnniversaryPromotionLuckDraw_Data["ItemToText"][10] = 195885
tAnniversaryPromotionLuckDraw_Data[3008992] = 1
tAnniversaryPromotionLuckDraw_Data[3300634] = 2
-- 郝运
tAnniversaryPromotionLuckDraw_Data["NpcId"] = 22744
tAnniversaryPromotionLuckDraw_Data["NpcMapId"] = 1002
tAnniversaryPromotionLuckDraw_Data["NpcPosX"] = 374
tAnniversaryPromotionLuckDraw_Data["NpcPosY"] = 435
-- 需要的赠点
tAnniversaryPromotionLuckDraw_Data["NeedEmoney"] = 20
-- 天石倍数
tAnniversaryPromotionLuckDraw_Data["EmoneyAdd"] = {}
-- 单抽
tAnniversaryPromotionLuckDraw_Data["EmoneyAdd"][1] = 1
-- 十连抽
tAnniversaryPromotionLuckDraw_Data["EmoneyAdd"][10] = 8
-- 播报奖池
tAnniversaryPromotionLuckDraw_Data["JackpotBroadCast"] = 15000
tAnniversaryPromotionLuckDraw_Data["JackpotBroadCastNew"] = 150000
-- 被抽中一等奖重置奖池
tAnniversaryPromotionLuckDraw_Data["RestJackpot"] = 5000
tAnniversaryPromotionLuckDraw_Data["RestJackpotNew"] = 50000
-- 奖池概率
tAnniversaryPromotionLuckDraw_Data["Probability"] = {}
-- 总概率
tAnniversaryPromotionLuckDraw_Data["Probability"]["Sum"] = 1000000
-- 1-6名概率：X/奖池
tAnniversaryPromotionLuckDraw_Data["Probability"][1] = 200000
tAnniversaryPromotionLuckDraw_Data["Probability"][2] = 3000000
tAnniversaryPromotionLuckDraw_Data["Probability"][3] = 15000000
tAnniversaryPromotionLuckDraw_Data["Probability"][4] = 40000000
tAnniversaryPromotionLuckDraw_Data["Probability"][5] = 150000000
tAnniversaryPromotionLuckDraw_Data["Probability"][6] = 1000000000
-- 7-8名概率百万分比
tAnniversaryPromotionLuckDraw_Data["Probability"][7] = 100000
tAnniversaryPromotionLuckDraw_Data["Probability"][8] = 150000
-- 奖池概率（十连抽）
tAnniversaryPromotionLuckDraw_Data["TenProbability"] = {}
-- 总概率
tAnniversaryPromotionLuckDraw_Data["TenProbability"]["Sum"] = 1000000
-- 1-6名概率：X/奖池
tAnniversaryPromotionLuckDraw_Data["TenProbability"][1] = 2000000
tAnniversaryPromotionLuckDraw_Data["TenProbability"][2] = 30000000
tAnniversaryPromotionLuckDraw_Data["TenProbability"][3] = 150000000
tAnniversaryPromotionLuckDraw_Data["TenProbability"][4] = 400000000
tAnniversaryPromotionLuckDraw_Data["TenProbability"][5] = 1500000000
tAnniversaryPromotionLuckDraw_Data["TenProbability"][6] = 10000000000
-- 7-8名概率百万分比
tAnniversaryPromotionLuckDraw_Data["TenProbability"][7] = 100000
tAnniversaryPromotionLuckDraw_Data["TenProbability"][8] = 150000
-- 1-6名概率上下限（百万分）
tAnniversaryPromotionLuckDraw_Data["Limits"] = {}
tAnniversaryPromotionLuckDraw_Data["Limits"]["Upper"] = {}
tAnniversaryPromotionLuckDraw_Data["Limits"]["Lower"] = {}
-- 第一名
tAnniversaryPromotionLuckDraw_Data["Limits"]["Upper"][1] = 25
tAnniversaryPromotionLuckDraw_Data["Limits"]["Lower"][1] = 13
-- 第二名
tAnniversaryPromotionLuckDraw_Data["Limits"]["Upper"][2] = 333
tAnniversaryPromotionLuckDraw_Data["Limits"]["Lower"][2] = 167
-- 第三名
tAnniversaryPromotionLuckDraw_Data["Limits"]["Upper"][3] = 1500
tAnniversaryPromotionLuckDraw_Data["Limits"]["Lower"][3] = 750
-- 第四名
tAnniversaryPromotionLuckDraw_Data["Limits"]["Upper"][4] = 4000
tAnniversaryPromotionLuckDraw_Data["Limits"]["Lower"][4] = 2000
-- 第五名
tAnniversaryPromotionLuckDraw_Data["Limits"]["Upper"][5] = 15000
tAnniversaryPromotionLuckDraw_Data["Limits"]["Lower"][5] = 7500
-- 第六名
tAnniversaryPromotionLuckDraw_Data["Limits"]["Upper"][6] = 100000
tAnniversaryPromotionLuckDraw_Data["Limits"]["Lower"][6] = 50000
-- 1-6名概率上下限（百万分）(十连抽)
tAnniversaryPromotionLuckDraw_Data["TenLimits"] = {}
tAnniversaryPromotionLuckDraw_Data["TenLimits"]["Upper"] = {}
tAnniversaryPromotionLuckDraw_Data["TenLimits"]["Lower"] = {}
-- 第一名
tAnniversaryPromotionLuckDraw_Data["TenLimits"]["Upper"][1] = 25
tAnniversaryPromotionLuckDraw_Data["TenLimits"]["Lower"][1] = 17
-- 第二名
tAnniversaryPromotionLuckDraw_Data["TenLimits"]["Upper"][2] = 333
tAnniversaryPromotionLuckDraw_Data["TenLimits"]["Lower"][2] = 222
-- 第三名
tAnniversaryPromotionLuckDraw_Data["TenLimits"]["Upper"][3] = 1500
tAnniversaryPromotionLuckDraw_Data["TenLimits"]["Lower"][3] = 1000
-- 第四名
tAnniversaryPromotionLuckDraw_Data["TenLimits"]["Upper"][4] = 4000
tAnniversaryPromotionLuckDraw_Data["TenLimits"]["Lower"][4] = 2667
-- 第五名
tAnniversaryPromotionLuckDraw_Data["TenLimits"]["Upper"][5] = 15000
tAnniversaryPromotionLuckDraw_Data["TenLimits"]["Lower"][5] = 10000
-- 第六名
tAnniversaryPromotionLuckDraw_Data["TenLimits"]["Upper"][6] = 100000
tAnniversaryPromotionLuckDraw_Data["TenLimits"]["Lower"][6] = 66667
-- 获奖比例
tAnniversaryPromotionLuckDraw_Data["RankRewardEmoney"] = {}
tAnniversaryPromotionLuckDraw_Data["RankRewardEmoney"][1] = 1
tAnniversaryPromotionLuckDraw_Data["RankRewardEmoney"][2] = 0.3
tAnniversaryPromotionLuckDraw_Data["RankRewardEmoney"][3] = 0.1
tAnniversaryPromotionLuckDraw_Data["RankRewardEmoney"][4] = 0.05
tAnniversaryPromotionLuckDraw_Data["RankRewardEmoney"][5] = 0.03
tAnniversaryPromotionLuckDraw_Data["RankRewardEmoney"][6] = 0.01
-- 过期log
tAnniversaryPromotionLuckDraw_Data["OutTimeDelLog"] = "0,0,3308416,1,12001051,0,0,0"
-- 抽奖LOG  天石
tAnniversaryPromotionLuckDraw_Data["UseEmoneyLog"] = "%d,0,0,0,12001051,2[1],0,0"
-- 抽奖LOG  赠点券
tAnniversaryPromotionLuckDraw_Data["UseItemyLog"] = "0,0,%d,%d,12001051,2[1],0,0"
-- 无奖励
tAnniversaryPromotionLuckDraw_Data["NoRewardLog"] = "0,0,0,0,12001051,2[9],0,0"
tAnniversaryPromotionLuckDraw_Data["NoRewardLogNew"] = "0,0,0,0,12001051,3[9],0,0"
-- 灵珠天石emoneylog
-- 3阶灵珠抽奖 350 22738
 -- 6阶灵珠抽奖 350 22739
tAnniversaryPromotionLuckDraw_Data["UseEmoneyBuyLog"] = {}
tAnniversaryPromotionLuckDraw_Data["UseEmoneyBuyLog"][2]= "350	22738	20	20	1	"
tAnniversaryPromotionLuckDraw_Data["UseEmoneyBuyLog"][11] = "350	22739	160	160	1	"
tAnniversaryPromotionLuckDraw_Data["UseItemEmoneyBuyLog"] = {}
tAnniversaryPromotionLuckDraw_Data["UseItemEmoneyBuyLog"][1] = "350	22738	0	0	1	"
tAnniversaryPromotionLuckDraw_Data["UseItemEmoneyBuyLog"][10] = "350	22739	0	0	1	"
-- 灵珠消耗特殊log
tAnniversaryPromotionLuckDraw_Data["PreciousType"] = 369 
-- 十连抽npc
tAnniversaryPromotionLuckDraw_Data["TenDrawNpc"] = 24701
-- 等级限制
tAnniversaryPromotionLuckDraw_Data["Level"] = 80
tAnniversaryPromotionLuckDraw_Data["Mete"] = 0

-- 赠点抽奖概率
local tAnniversaryPromotionLuckDraw_JackpotReward = {}
tAnniversaryPromotionLuckDraw_JackpotReward[1] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[1]["ItemChanceSum"] = 1000000
-- 一等奖
tAnniversaryPromotionLuckDraw_JackpotReward[1][1] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[1][1]["RandomItemChanceType"] = 2
tAnniversaryPromotionLuckDraw_JackpotReward[1][1]["ItemChance"] = 0
tAnniversaryPromotionLuckDraw_JackpotReward[1][1]["Rank"] = 1
-- 二等奖
tAnniversaryPromotionLuckDraw_JackpotReward[1][2] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[1][2]["RandomItemChanceType"] = 2
tAnniversaryPromotionLuckDraw_JackpotReward[1][2]["ItemChance"] = 0
tAnniversaryPromotionLuckDraw_JackpotReward[1][2]["Rank"] = 2
-- 三等奖
tAnniversaryPromotionLuckDraw_JackpotReward[1][3] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[1][3]["RandomItemChanceType"] = 2
tAnniversaryPromotionLuckDraw_JackpotReward[1][3]["ItemChance"] = 0
tAnniversaryPromotionLuckDraw_JackpotReward[1][3]["Rank"] = 3
-- 四等奖
tAnniversaryPromotionLuckDraw_JackpotReward[1][4] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[1][4]["RandomItemChanceType"] = 2
tAnniversaryPromotionLuckDraw_JackpotReward[1][4]["ItemChance"] = 0
tAnniversaryPromotionLuckDraw_JackpotReward[1][4]["Rank"] = 4
-- 五等奖
tAnniversaryPromotionLuckDraw_JackpotReward[1][5] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[1][5]["RandomItemChanceType"] = 2
tAnniversaryPromotionLuckDraw_JackpotReward[1][5]["ItemChance"] = 0
tAnniversaryPromotionLuckDraw_JackpotReward[1][5]["Rank"] = 5
-- 六等奖
tAnniversaryPromotionLuckDraw_JackpotReward[1][6] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[1][6]["RandomItemChanceType"] = 2
tAnniversaryPromotionLuckDraw_JackpotReward[1][6]["ItemChance"] = 0
tAnniversaryPromotionLuckDraw_JackpotReward[1][6]["Rank"] = 6
-- 七等奖
tAnniversaryPromotionLuckDraw_JackpotReward[1][7] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[1][7]["RandomItemChanceType"] = 2
tAnniversaryPromotionLuckDraw_JackpotReward[1][7]["ItemChance"] = 100000
tAnniversaryPromotionLuckDraw_JackpotReward[1][7]["Rank"] = 7
-- 八等奖
tAnniversaryPromotionLuckDraw_JackpotReward[1][8] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[1][8]["RandomItemChanceType"] = 2
tAnniversaryPromotionLuckDraw_JackpotReward[1][8]["ItemChance"] = 150000
tAnniversaryPromotionLuckDraw_JackpotReward[1][8]["Rank"] = 8
-- 未中奖
tAnniversaryPromotionLuckDraw_JackpotReward[1][9] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[1][9]["RandomItemChanceType"] = 2
tAnniversaryPromotionLuckDraw_JackpotReward[1][9]["ItemChance"] = 800000
tAnniversaryPromotionLuckDraw_JackpotReward[1][9]["RewardItem"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[1][9]["Rank"] = 9

-- 抽奖获得奖励
tAnniversaryPromotionLuckDraw_JackpotReward[2] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[2][1] = {}
-- 1等奖
-- tAnniversaryPromotionLuckDraw_JackpotReward[2][1]["RewardEMoney"] = {}
-- tAnniversaryPromotionLuckDraw_JackpotReward[2][1]["RewardEMoney"]["Value"] = 0
tAnniversaryPromotionLuckDraw_JackpotReward[2][1]["RewardItem"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[2][1]["RewardItem"][1] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[2][1]["RewardItem"][1]["Id"] = 195875
tAnniversaryPromotionLuckDraw_JackpotReward[2][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tAnniversaryPromotionLuckDraw_JackpotReward[2][1]["RewardEffect"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[2][1]["RewardEffect"]["Effect"] = "FF07"
tAnniversaryPromotionLuckDraw_JackpotReward[2][1]["LogId"] = 12001051
tAnniversaryPromotionLuckDraw_JackpotReward[2][1]["LogStep"] = "1[1]"
-- 2等奖
tAnniversaryPromotionLuckDraw_JackpotReward[2][2] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[2][2]["RewardEMoney"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[2][2]["RewardEMoney"]["Value"] = 0
tAnniversaryPromotionLuckDraw_JackpotReward[2][2]["RewardEMoney"]["NewEmoneyLog"] = "1000	1199"
tAnniversaryPromotionLuckDraw_JackpotReward[2][2]["RewardEffect"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[2][2]["RewardEffect"]["Effect"] = "FF07"
tAnniversaryPromotionLuckDraw_JackpotReward[2][2]["LogId"] = 12001051
tAnniversaryPromotionLuckDraw_JackpotReward[2][2]["LogStep"] = "1[2]"
-- 3等奖
tAnniversaryPromotionLuckDraw_JackpotReward[2][3] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[2][3]["RewardEMoney"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[2][3]["RewardEMoney"]["Value"] = 0
tAnniversaryPromotionLuckDraw_JackpotReward[2][3]["RewardEMoney"]["NewEmoneyLog"] = "1000	1199"
tAnniversaryPromotionLuckDraw_JackpotReward[2][3]["RewardEffect"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[2][3]["RewardEffect"]["Effect"] = "FF07"
tAnniversaryPromotionLuckDraw_JackpotReward[2][3]["LogId"] = 12001051
tAnniversaryPromotionLuckDraw_JackpotReward[2][3]["LogStep"] = "1[3]"
-- 4等奖
tAnniversaryPromotionLuckDraw_JackpotReward[2][4] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[2][4]["RewardEMoney"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[2][4]["RewardEMoney"]["Value"] = 0
tAnniversaryPromotionLuckDraw_JackpotReward[2][4]["RewardEMoney"]["NewEmoneyLog"] = "1000	1199"
tAnniversaryPromotionLuckDraw_JackpotReward[2][4]["RewardEffect"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[2][4]["RewardEffect"]["Effect"] = "FF17"
tAnniversaryPromotionLuckDraw_JackpotReward[2][4]["LogId"] = 12001051
tAnniversaryPromotionLuckDraw_JackpotReward[2][4]["LogStep"] = "1[4]"
-- 5等奖
tAnniversaryPromotionLuckDraw_JackpotReward[2][5] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[2][5]["RewardEMoney"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[2][5]["RewardEMoney"]["Value"] = 0
tAnniversaryPromotionLuckDraw_JackpotReward[2][5]["RewardEMoney"]["NewEmoneyLog"] = "1000	1199"
tAnniversaryPromotionLuckDraw_JackpotReward[2][5]["RewardEffect"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[2][5]["RewardEffect"]["Effect"] = "FF17"
tAnniversaryPromotionLuckDraw_JackpotReward[2][5]["LogId"] = 12001051
tAnniversaryPromotionLuckDraw_JackpotReward[2][5]["LogStep"] = "1[5]"
-- 6等奖
tAnniversaryPromotionLuckDraw_JackpotReward[2][6] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[2][6]["RewardEMoney"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[2][6]["RewardEMoney"]["Value"] = 0
tAnniversaryPromotionLuckDraw_JackpotReward[2][6]["RewardEMoney"]["NewEmoneyLog"] = "1000	1199"
tAnniversaryPromotionLuckDraw_JackpotReward[2][6]["RewardEffect"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[2][6]["RewardEffect"]["Effect"] = "FF17"
tAnniversaryPromotionLuckDraw_JackpotReward[2][6]["LogId"] = 12001051
tAnniversaryPromotionLuckDraw_JackpotReward[2][6]["LogStep"] = "1[6]"
-- 7等奖
tAnniversaryPromotionLuckDraw_JackpotReward[2][7] = {}
-- tAnniversaryPromotionLuckDraw_JackpotReward[2][7]["RewardStrengthValue"] = {}
-- tAnniversaryPromotionLuckDraw_JackpotReward[2][7]["RewardStrengthValue"]["Value"] = 50
tAnniversaryPromotionLuckDraw_JackpotReward[2][7]["RewardItem"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[2][7]["RewardItem"][1] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[2][7]["RewardItem"][1]["Id"] = 3008222
tAnniversaryPromotionLuckDraw_JackpotReward[2][7]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotionLuckDraw_JackpotReward[2][7]["RewardEffect"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[2][7]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotionLuckDraw_JackpotReward[2][7]["LogId"] = 12001051
tAnniversaryPromotionLuckDraw_JackpotReward[2][7]["LogStep"] = "1[7]"
-- 8等奖
tAnniversaryPromotionLuckDraw_JackpotReward[2][8] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[2][8]["RewardStrengthValue"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[2][8]["RewardStrengthValue"]["Value"] = 50
tAnniversaryPromotionLuckDraw_JackpotReward[2][8]["RewardEffect"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[2][8]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotionLuckDraw_JackpotReward[2][8]["LogId"] = 12001051
tAnniversaryPromotionLuckDraw_JackpotReward[2][8]["LogStep"] = "1[8]"
-- 未中奖
tAnniversaryPromotionLuckDraw_JackpotReward[2][9] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[2][9]["RewardItem"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[2][9]["LogId"] = 12001051
tAnniversaryPromotionLuckDraw_JackpotReward[2][9]["LogStep"] = "1[9]"
-- 抽奖获得奖励
tAnniversaryPromotionLuckDraw_JackpotReward[3] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[3][1] = {}
-- 1等奖
-- tAnniversaryPromotionLuckDraw_JackpotReward[3][1]["RewardEMoney"] = {}
-- tAnniversaryPromotionLuckDraw_JackpotReward[3][1]["RewardEMoney"]["Value"] = 0
tAnniversaryPromotionLuckDraw_JackpotReward[3][1]["RewardItem"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[3][1]["RewardItem"][1] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[3][1]["RewardItem"][1]["Id"] = 195885
tAnniversaryPromotionLuckDraw_JackpotReward[3][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tAnniversaryPromotionLuckDraw_JackpotReward[3][1]["RewardEffect"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[3][1]["RewardEffect"]["Effect"] = "FF07"
tAnniversaryPromotionLuckDraw_JackpotReward[3][1]["LogId"] = 12001051
tAnniversaryPromotionLuckDraw_JackpotReward[3][1]["LogStep"] = "3[1]"
-- 2等奖
tAnniversaryPromotionLuckDraw_JackpotReward[3][2] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[3][2]["RewardEMoney"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[3][2]["RewardEMoney"]["Value"] = 0
tAnniversaryPromotionLuckDraw_JackpotReward[3][2]["RewardEMoney"]["NewEmoneyLog"] = "1000	1199"
tAnniversaryPromotionLuckDraw_JackpotReward[3][2]["RewardEffect"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[3][2]["RewardEffect"]["Effect"] = "FF07"
tAnniversaryPromotionLuckDraw_JackpotReward[3][2]["LogId"] = 12001051
tAnniversaryPromotionLuckDraw_JackpotReward[3][2]["LogStep"] = "3[2]"
-- 3等奖
tAnniversaryPromotionLuckDraw_JackpotReward[3][3] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[3][3]["RewardEMoney"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[3][3]["RewardEMoney"]["Value"] = 0
tAnniversaryPromotionLuckDraw_JackpotReward[3][3]["RewardEMoney"]["NewEmoneyLog"] = "1000	1199"
tAnniversaryPromotionLuckDraw_JackpotReward[3][3]["RewardEffect"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[3][3]["RewardEffect"]["Effect"] = "FF07"
tAnniversaryPromotionLuckDraw_JackpotReward[3][3]["LogId"] = 12001051
tAnniversaryPromotionLuckDraw_JackpotReward[3][3]["LogStep"] = "3[3]"
-- 4等奖
tAnniversaryPromotionLuckDraw_JackpotReward[3][4] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[3][4]["RewardEMoney"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[3][4]["RewardEMoney"]["Value"] = 0
tAnniversaryPromotionLuckDraw_JackpotReward[3][4]["RewardEMoney"]["NewEmoneyLog"] = "1000	1199"
tAnniversaryPromotionLuckDraw_JackpotReward[3][4]["RewardEffect"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[3][4]["RewardEffect"]["Effect"] = "FF17"
tAnniversaryPromotionLuckDraw_JackpotReward[3][4]["LogId"] = 12001051
tAnniversaryPromotionLuckDraw_JackpotReward[3][4]["LogStep"] = "3[4]"
-- 5等奖
tAnniversaryPromotionLuckDraw_JackpotReward[3][5] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[3][5]["RewardEMoney"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[3][5]["RewardEMoney"]["Value"] = 0
tAnniversaryPromotionLuckDraw_JackpotReward[3][5]["RewardEMoney"]["NewEmoneyLog"] = "1000	1199"
tAnniversaryPromotionLuckDraw_JackpotReward[3][5]["RewardEffect"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[3][5]["RewardEffect"]["Effect"] = "FF17"
tAnniversaryPromotionLuckDraw_JackpotReward[3][5]["LogId"] = 12001051
tAnniversaryPromotionLuckDraw_JackpotReward[3][5]["LogStep"] = "3[5]"
-- 6等奖
tAnniversaryPromotionLuckDraw_JackpotReward[3][6] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[3][6]["RewardEMoney"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[3][6]["RewardEMoney"]["Value"] = 0
tAnniversaryPromotionLuckDraw_JackpotReward[3][6]["RewardEMoney"]["NewEmoneyLog"] = "1000	1199"
tAnniversaryPromotionLuckDraw_JackpotReward[3][6]["RewardEffect"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[3][6]["RewardEffect"]["Effect"] = "FF17"
tAnniversaryPromotionLuckDraw_JackpotReward[3][6]["LogId"] = 12001051
tAnniversaryPromotionLuckDraw_JackpotReward[3][6]["LogStep"] = "3[6]"
-- 7等奖
tAnniversaryPromotionLuckDraw_JackpotReward[3][7] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[3][7]["RewardItem"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[3][7]["RewardItem"][1] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[3][7]["RewardItem"][1]["Id"] = 3008221
tAnniversaryPromotionLuckDraw_JackpotReward[3][7]["RewardItem"][1]["Attr"] = "0 1"
tAnniversaryPromotionLuckDraw_JackpotReward[3][7]["RewardEffect"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[3][7]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotionLuckDraw_JackpotReward[3][7]["LogId"] = 12001051
tAnniversaryPromotionLuckDraw_JackpotReward[3][7]["LogStep"] = "3[7]"
-- 8等奖
tAnniversaryPromotionLuckDraw_JackpotReward[3][8] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[3][8]["RewardStrengthValue"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[3][8]["RewardStrengthValue"]["Value"] = 500
tAnniversaryPromotionLuckDraw_JackpotReward[3][8]["RewardEffect"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[3][8]["RewardEffect"]["Effect"] = "zf2-e128"
tAnniversaryPromotionLuckDraw_JackpotReward[3][8]["LogId"] = 12001051
tAnniversaryPromotionLuckDraw_JackpotReward[3][8]["LogStep"] = "3[8]"
-- 未中奖
tAnniversaryPromotionLuckDraw_JackpotReward[3][9] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[3][9]["RewardItem"] = {}
tAnniversaryPromotionLuckDraw_JackpotReward[3][9]["LogId"] = 12001051
tAnniversaryPromotionLuckDraw_JackpotReward[3][9]["LogStep"] = "3[9]"

local tAnniversaryPromotionLuckDraw_MonsterDrop = {}
tAnniversaryPromotionLuckDraw_MonsterDrop[1] = {}
tAnniversaryPromotionLuckDraw_MonsterDrop[1]["ItemChanceSum"] = 10000
-- 掉落赠点券
tAnniversaryPromotionLuckDraw_MonsterDrop[1][1] = {}
tAnniversaryPromotionLuckDraw_MonsterDrop[1][1]["RandomItemChanceType"] = 2
tAnniversaryPromotionLuckDraw_MonsterDrop[1][1]["ItemChance"] = 100
tAnniversaryPromotionLuckDraw_MonsterDrop[1][1]["RewardItem"] = {}
tAnniversaryPromotionLuckDraw_MonsterDrop[1][1]["RewardItem"][1] = {}
tAnniversaryPromotionLuckDraw_MonsterDrop[1][1]["RewardItem"][1]["Id"] = 3308416
tAnniversaryPromotionLuckDraw_MonsterDrop[1][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tAnniversaryPromotionLuckDraw_MonsterDrop[1][1]["EventType"] = tAnniversaryPromotionLuckDraw_Data["Stc"]["Event"][2]
tAnniversaryPromotionLuckDraw_MonsterDrop[1][1]["DataType"] = tAnniversaryPromotionLuckDraw_Data["Stc"]["Data"][2]
tAnniversaryPromotionLuckDraw_MonsterDrop[1][1]["RewardData"] = 3
tAnniversaryPromotionLuckDraw_MonsterDrop[1][1]["RewardDelay"] = 1
tAnniversaryPromotionLuckDraw_MonsterDrop[1][1]["RewardTimeType"] = 4
tAnniversaryPromotionLuckDraw_MonsterDrop[1][1]["Sign"] = 1
tAnniversaryPromotionLuckDraw_MonsterDrop[1][1]["LogId"] = 12001051
-- 不掉落
tAnniversaryPromotionLuckDraw_MonsterDrop[1][2] = {}
tAnniversaryPromotionLuckDraw_MonsterDrop[1][2]["RandomItemChanceType"] = 2
tAnniversaryPromotionLuckDraw_MonsterDrop[1][2]["ItemChance"] = 9900
tAnniversaryPromotionLuckDraw_MonsterDrop[1][2]["Sign"] = 2
tAnniversaryPromotionLuckDraw_MonsterDrop[1][2]["LogId"] = 12001051

local tAnniversaryPromotionLuckDraw_WebPage = "https://hd.zf.99.com/wgjb/"
local tAnniversaryPromotionLuckDraw_WebPage2 = "https://wx.99.com/static/acts/zf/2018/05/zcbs/index.html"
----------------------------------逻辑部分---------------------------------------------
-- 180521[简体征服][活动脚本]招财宝树活动页面
function AnniversaryPromotionLuckDraw_OpenTheWebPage()
	User_SendWebDialog(tAnniversaryPromotionLuckDraw_WebPage2)
end

-- 180509[简体征服][活动脚本]内嵌举报外挂活动页面NPC制作
function AnniversaryPromotionLuckDraw_SendWebPage()
	User_SendWebDialog(tAnniversaryPromotionLuckDraw_WebPage)
end

-- 链接寻路
function AnniversaryPromotionLuckDraw_JoinTheActivity(nIndex)
	if not Sys_ChkFullTime(tAnniversaryPromotionLuckDraw_Data["ActivityTime"]) then
		return
	end
	-- local nPosX = tAnniversaryPromotionLuckDraw_Data["NpcPosX"]
	-- local nPosY = tAnniversaryPromotionLuckDraw_Data["NpcPosY"]
	local nMapId = tAnniversaryPromotionLuckDraw_Data["NpcMapId"]
	local nUserMapId = Get_UserMapId()
	if nUserMapId == nMapId or nUserMapId == 1036 then
		-- Sys_GotoSomeWhere(nPosX, nPosY, nMapId, 0)
		local nNpcId = tAnniversaryPromotionLuckDraw_Data["NpcId"]
		NpcPosition_PathFind(nNpcId)
	else
		Sys_MsgBox(tAnniversaryPromotionLuckDraw_Text["SysMsg"]["GotoPos"])
	end
end

-- 古神灵境接口
function AnniversaryPromotionLuckDraw_MonsterDrop(nMonsterId)
	if not Sys_ChkFullTime(tAnniversaryPromotionLuckDraw_Data["ActivityTime"]) then
		return
	end
	-- local tMonsterDrop = CommonFunc_Copy(tAnniversaryPromotionLuckDraw_MonsterDrop)
	local sName = Get_UserName()
	local sMonsterName = tTreasureArea_Text["BossName"][nMonsterId]
	
	local nEvent = tAnniversaryPromotionLuckDraw_Data["Stc"]["Event"][2]
	local nData = tAnniversaryPromotionLuckDraw_Data["Stc"]["Data"][2]
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent,nData, 0, 1)
		Task_SetStcTimestamp(nEvent,nData, 0)
	end
	if Task_ChkStcValue(nEvent, nData, ">=", 3) then
		if Task_ChkStcValue(nEvent, nData, "==", 3) then
			Task_AddStatistic(nEvent, nData, 1, 1)
			Task_SetStcTimestamp(nEvent, nData,0)
			Sys_MsgBox(tAnniversaryPromotionLuckDraw_Text["SysMsg"]["ThreeTimes"])
		end
		return
	end
	-- tMonsterDrop[1][1]["RewardBroadCast"] = string.format(tAnniversaryPromotionLuckDraw_Text["BroadCast"]["MonsterDrop"], sName, sMonsterName)
	-- 概率掉落增点券
	if not RewardTemplate_ChkRandomSpace(tAnniversaryPromotionLuckDraw_MonsterDrop, 1) then
		return
	end
	local tReward = RewardTemplate_NewRandom(tAnniversaryPromotionLuckDraw_MonsterDrop, 1)
	local nSign = tReward[1]["tAward"][1]["Sign"]
	if nSign == 1  then
		Sys_SystemBroadcast(string.format(tAnniversaryPromotionLuckDraw_Text["BroadCast"]["MonsterDrop"], sName, sMonsterName))
	end
end

-- 赤龙异宝接口
function AnniversaryPromotionLuckDraw_DoubleDayReward(nItemId)
	local nEvent = tAnniversaryPromotionLuckDraw_Data["Stc"][nItemId]["EventType"]
	local nType = tAnniversaryPromotionLuckDraw_Data["Stc"][nItemId]["DataType"]
	local nEmoneyMonoCardId = tAnniversaryPromotionLuckDraw_Data["ItemId"]
	local nFlag = tAnniversaryPromotionLuckDraw_Data[nItemId]
	local nItemReward = Get_UserStatisticValue(nEvent,nType)
	-- 判断时间
	if not Sys_ChkFullTime(tAnniversaryPromotionLuckDraw_Data["ActivityTime"]) then
		-- 过期，奖励为赠点券，重置奖励
		if math.floor(nItemReward / 10) == nEmoneyMonoCardId then
			Task_SetStatistic(nEvent,nType,0,1)
			Task_SetStcTimestamp(nEvent, nType, 0)
		end
		return
	end
	-- 判断是否已有奖励
	if nItemReward > 0 then
		return
	end
	-- 在活动时间内,20%几率抽出赠点券
	local nRandom = math.random(1, 100)
	if nRandom >= 1 and nRandom <= 20 then
		Task_SetStatistic(nEvent, nType, nEmoneyMonoCardId * 10 + nFlag, 1)
		Task_SetStcTimestamp(nEvent, nType, 0)
	else
		return
	end
	
end

-- 赠点开奖选项判断 nIndex:1是单抽 10是十连抽
function AnniversaryPromotionLuckDraw_OptionChk(nIndex)
	local nNpcId = Get_NpcId()
	if nNpcId ~= tAnniversaryPromotionLuckDraw_Data["NpcId"] and nNpcId ~= tAnniversaryPromotionLuckDraw_Data["TenDrawNpc"] then
		return
	end
	-- 判断时间
	if CommonFunc_GetAfterActivityTime(tAnniversaryPromotionLuckDraw_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-3")
		return
	end
	
	local nStcIndex = 0
	if nIndex >= 10 then
		nStcIndex = 4
	end
	local nLastStcIndex = nStcIndex + 1
	local nEvent = tAnniversaryPromotionLuckDraw_Data["Stc"]["Event"][nLastStcIndex]
	local nData = tAnniversaryPromotionLuckDraw_Data["Stc"]["Data"][nLastStcIndex]
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	
	local nItemId = tAnniversaryPromotionLuckDraw_Data["ItemId"][nIndex]
	if nIndex == 1 then
	-- 判断是否拥有增点券
	if Item_ChkItem(nItemId) then
		AnniversaryPromotionLuckDraw_Lottery(1)
		return
	end
	
	if Task_ChkStcValue(nEvent, nData, ">", 0) then
		AnniversaryPromotionLuckDraw_Lottery(2)
		return
	else
		LinkNpcGossipFunc_New(nNpcId, "2-2")
		end
	else
		-- 判断是否拥有增点券
		if Item_ChkMulItem(nItemId,nItemId,1) then
			AnniversaryPromotionLuckDraw_Lottery(nIndex)
			return
		end
		if Task_ChkStcValue(nEvent, nData, ">", 0) then
			AnniversaryPromotionLuckDraw_Lottery(nIndex+1)
			return
		else
			LinkNpcGossipFunc_New(nNpcId, "2-3")
		end
	end
end

-- 屏蔽二次确认
function AnniversaryPromotionLuckDraw_ShieldingConfirmation()
	local nNpcId = tAnniversaryPromotionLuckDraw_Data["NpcId"]
	-- 判断时间
	if CommonFunc_GetAfterActivityTime(tAnniversaryPromotionLuckDraw_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-3")
		return
	end
	-- 设置二次屏蔽掩码
	local nEvent = tAnniversaryPromotionLuckDraw_Data["Stc"]["Event"][1]
	local nData = tAnniversaryPromotionLuckDraw_Data["Stc"]["Data"][1]
	Task_SetStatistic(nEvent, nData, 1, 1)
	Task_SetStcTimestamp(nEvent, nData, 0)
	LinkNpcGossipFunc_New(nNpcId, "1-2")
end

-- 屏蔽二次确认10抽
function AnniversaryPromotionLuckDraw_NewConfirmation()
	local nNpcId = tAnniversaryPromotionLuckDraw_Data["TenDrawNpc"]
	-- 判断时间
	if CommonFunc_GetAfterActivityTime(tAnniversaryPromotionLuckDraw_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-3")
		return
	end
	-- 设置二次屏蔽掩码
	local nEvent = tAnniversaryPromotionLuckDraw_Data["Stc"]["Event"][5]
	local nData = tAnniversaryPromotionLuckDraw_Data["Stc"]["Data"][5]
	Task_SetStatistic(nEvent, nData, 1, 1)
	Task_SetStcTimestamp(nEvent, nData, 0)
	LinkNpcGossipFunc_New(nNpcId, "1-2")
end
-- 开奖  nChoose 1 表示用周年庆礼券开奖， 2表示用赠点开奖， 10表示十连抽， 11表示赠点10连抽
function AnniversaryPromotionLuckDraw_Lottery(nChoose)
	local nNpcId = Get_NpcId()
	-- 判断时间
	if CommonFunc_GetAfterActivityTime(tAnniversaryPromotionLuckDraw_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-3")
		return
	end
	local nTime = nChoose
	-- 判断开奖方式
	local nItemId = tAnniversaryPromotionLuckDraw_Data["ItemId"][nChoose]
	local nGlobalId = tAnniversaryPromotionLuckDraw_Data["GlobalId"][1]
	if nChoose >= 10 then
		nGlobalId = tAnniversaryPromotionLuckDraw_Data["GlobalId"][3]
	end
	local nJackpotEmoneyFirst = Get_SysDynaGlobalData0(nGlobalId)
	if nChoose == 1 or nChoose == 10 then
		-- 背包不足
		if not User_CheckLeftSpace(1,nUserId) then
			Sys_MsgBox(tAnniversaryPromotionLuckDraw_Text["SysMsg"]["BackFull"])
			return
		end
		
		-- 满天石
		local nEmoneyNow = Get_UserEMoney(nUserId)
		local nMaxEMoney = nEmoneyNow + nJackpotEmoneyFirst * 0.3
		if nMaxEMoney > G_User_MaxEmoney then
			Sys_MsgBox(tAnniversaryPromotionLuckDraw_Text["SysMsg"]["EmoneyFull"], nil, nil, nUserId)
			return
		end
		if Item_ChkMulItem(nItemId,nItemId,1) then
			
		else
			if nChoose == 1 then
				tNpcGossip[nNpcId]["Text211"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text211"]
			else
				tNpcGossip[nNpcId]["Text211"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text2110"]
			end
			LinkNpcGossipFunc_New(nNpcId, "2-1")
			return
		end
	else
		local nEmoneyIndex = nChoose - 1
		local nEmoneyAdd = tAnniversaryPromotionLuckDraw_Data["EmoneyAdd"][nEmoneyIndex]
		local nNeedEMoneyMono = tAnniversaryPromotionLuckDraw_Data["NeedEmoney"]*nEmoneyAdd
		-- 赠点不足
		local nEmoneyNow = Get_UserEMoney()
		if nEmoneyNow < nNeedEMoneyMono then
			Sys_MsgBox(tAnniversaryPromotionLuckDraw_Text["SysMsg"]["EmoneyNotEnough"])
			return
		end
		-- 背包不足
		if not User_CheckLeftSpace(1,nUserId) then
			Sys_MsgBox(tAnniversaryPromotionLuckDraw_Text["SysMsg"]["BackFull"])
			return
		end
		-- 满天石
		local nMaxEMoneyMono = nEmoneyNow + nJackpotEmoneyFirst * 0.3 
		if nMaxEMoneyMono > G_User_MaxEmoney then
			Sys_MsgBox(tAnniversaryPromotionLuckDraw_Text["SysMsg"]["EmoneyFull"])
			return
		end
		nTime = nChoose - 1 
	end
	local nRandomReward = CommonFunc_Copy(tAnniversaryPromotionLuckDraw_JackpotReward)
	-- 判断单抽或者十连抽 概率不一样
	local tProbability = tAnniversaryPromotionLuckDraw_Data["Probability"]
	if  nChoose >= 10 then
		tProbability = tAnniversaryPromotionLuckDraw_Data["TenProbability"]
	end
	
	local nItemChanceSum = tProbability["Sum"]
	-- 去掉第七，八等奖
	nItemChanceSum = nItemChanceSum - tProbability[7] - tProbability[8]
	-- 一等奖
	local nRandomFirst = AnniversaryPromotionLuckDraw_RandomChance(1,nChoose)
	nRandomReward[1][1]["ItemChance"] = nRandomFirst
	nItemChanceSum = nItemChanceSum - nRandomFirst
	-- 二等奖
	local nRandomSecond = AnniversaryPromotionLuckDraw_RandomChance(2,nChoose)
	nRandomReward[1][2]["ItemChance"] = nRandomSecond
	nItemChanceSum = nItemChanceSum - nRandomSecond
	-- 三等奖
	local nRandomThird = AnniversaryPromotionLuckDraw_RandomChance(3,nChoose)
	nRandomReward[1][3]["ItemChance"] = nRandomThird
	nItemChanceSum = nItemChanceSum - nRandomThird
	-- 四等奖
	local nRandomFourth = AnniversaryPromotionLuckDraw_RandomChance(4,nChoose)
	nRandomReward[1][4]["ItemChance"] = nRandomFourth
	nItemChanceSum = nItemChanceSum - nRandomFourth
	-- 五等奖
	local nRandomFifth = AnniversaryPromotionLuckDraw_RandomChance(5,nChoose)
	nRandomReward[1][5]["ItemChance"] = nRandomFifth
	nItemChanceSum = nItemChanceSum - nRandomFifth
	-- 六等奖
	local nRandomSixth = AnniversaryPromotionLuckDraw_RandomChance(6,nChoose)
	nRandomReward[1][6]["ItemChance"] = nRandomSixth
	nItemChanceSum = nItemChanceSum - nRandomSixth
	-- 未中奖
	nRandomReward[1][9]["ItemChance"] = nItemChanceSum
	local flat,tReward = Probabil_RandomAward(nRandomReward, 1)
	local nRank = tReward[1]["tAward"][1]["Rank"]
	nRank = AnniversaryPromotionLuckDraw_ChkRankChange(nRank,nChoose)
	-- 光效+延时
	User_EffectAdd(tAnniversaryPromotionLuckDraw_Data["EffectSelf"], tAnniversaryPromotionLuckDraw_Data["EffectLight"][nRank])
	User_SetTimer(3, "AnniversaryPromotionLuckDraw_RunTheLottery</N>" .. nChoose .. "</N>" .. nRank .. "</N>" .. nNpcId, 0)
	
	-- AnniversaryPromotionLuckDraw_RunTheLottery()
	-- LinkNpcGossipFunc_New(nNpcId, "1-2")
end

-- 判断奖励是否需要修改
function AnniversaryPromotionLuckDraw_ChkRankChange(nRank,nChoose)
	local nIndex = 4
	if nChoose >= 10 then
		 nIndex = 7
	end
	local nRankEvent = tAnniversaryPromotionLuckDraw_Data["Stc"]["Event"][nIndex]
	local nRankData = tAnniversaryPromotionLuckDraw_Data["Stc"]["Data"][nIndex]
	-- 奖励已结算
	if Task_ChkStcValue(nRankEvent, nRankData, "==", 0) then
		Task_SetStatistic(nRankEvent,nRankData, nRank, 1)
		Task_SetStcTimestamp(nRankEvent,nRankData, 0)
		return nRank
	-- 奖励未结算
	else
		local nRankBefore = Get_UserStatisticValue(nRankEvent,nRankData)
		return nRankBefore
	end
end

-- 开奖
function AnniversaryPromotionLuckDraw_RunTheLottery(nChoose, nRank, nNpcId, nUserId)
	-- local nNpcId = tAnniversaryPromotionLuckDraw_Data["NpcId"]
	-- 判断时间
	if CommonFunc_GetAfterActivityTime(tAnniversaryPromotionLuckDraw_Data["ActivityTime"]) then
		return
	end
	-- 奖池奖金
	local nGlobalId = tAnniversaryPromotionLuckDraw_Data["GlobalId"][1]
	local nStcIndex = 0
	if nChoose >= 10 then
		nGlobalId = tAnniversaryPromotionLuckDraw_Data["GlobalId"][3]
		nStcIndex = 3
	end
	local nJackpotEmoneyFirst = Get_SysDynaGlobalData0(nGlobalId)
	local nEmoneyIndex = nChoose
	local nTime = nChoose
	-- 判断开奖方式
	if nChoose == 1 or nChoose == 10 then
		-- 背包不足
		if not User_CheckLeftSpace(1,nUserId) then
			Sys_MsgBox(tAnniversaryPromotionLuckDraw_Text["SysMsg"]["BackFull"])
			return
		end
		
		-- 满天石
		local nEmoneyNow = Get_UserEMoney(nUserId)
		local nMaxEMoney = nEmoneyNow + nJackpotEmoneyFirst * 0.3
		if nMaxEMoney > G_User_MaxEmoney then
			Sys_MsgBox(tAnniversaryPromotionLuckDraw_Text["SysMsg"]["EmoneyFull"], nil, nil, nUserId)
			return
		end
		local nItemId = tAnniversaryPromotionLuckDraw_Data["ItemId"][nChoose]
		if Item_ChkMulItem(nItemId,nItemId,1,nMonopoly,nSash,nUserId) and Item_DelMulItem(nItemId,nItemId,1,nMonopoly,nSash,nUserId) then
			local sUseItemyLog = tAnniversaryPromotionLuckDraw_Data["UseItemyLog"]
			Sys_SaveActionFestivalLog(string.format(sUseItemyLog,nItemId,1), nUserId)
			Sys_SaveEmoneyBuy(tAnniversaryPromotionLuckDraw_Data["UseItemEmoneyBuyLog"][nChoose],nUserId)
			Sys_DecNosuchStatisticCount(tAnniversaryPromotionLuckDraw_Data["PreciousType"],nItemId,1,nUserId)
		else
			-- LinkNpcGossipFunc_New(nNpcId, "2-1")
			return
		end
	else
		nEmoneyIndex = nChoose - 1
		local nEmoneyAdd = tAnniversaryPromotionLuckDraw_Data["EmoneyAdd"][nEmoneyIndex]
		local nNeedEMoneyMono = tAnniversaryPromotionLuckDraw_Data["NeedEmoney"]*nEmoneyAdd
		-- 赠点不足
		local nEmoneyNow = Get_UserEMoney(nUserId)
		if nEmoneyNow < nNeedEMoneyMono then
			Sys_MsgBox(tAnniversaryPromotionLuckDraw_Text["SysMsg"]["EmoneyNotEnough"], nil, nil, nUserId)
			return
		end
		-- 背包不足
		if not User_CheckLeftSpace(1,nUserId) then
			Sys_MsgBox(tAnniversaryPromotionLuckDraw_Text["SysMsg"]["BackFull"])
			return
		end
		-- 满赠点
		local nMaxEMoneyMono = nEmoneyNow + nJackpotEmoneyFirst * 0.3
		if nMaxEMoneyMono > G_User_MaxEmoney then
			Sys_MsgBox(tAnniversaryPromotionLuckDraw_Text["SysMsg"]["EmoneyFull"], nil, nil, nUserId)
			return
		end
		-- 赠点扣除失败，返回
		if not User_AddEMoney(-nNeedEMoneyMono, nUserId) then
			return
		else
			local sUseEmoneyLog = tAnniversaryPromotionLuckDraw_Data["UseEmoneyLog"]
			Sys_SaveActionFestivalLog(string.format(sUseEmoneyLog,nNeedEMoneyMono), nUserId)
			Sys_SaveEmoneyBuy(tAnniversaryPromotionLuckDraw_Data["UseEmoneyBuyLog"][nChoose],nUserId)
		end
		nTime = nTime - 1
	end
	local nGetReward
	if nChoose >= 10 then
		nGetReward = CommonFunc_Copy(tAnniversaryPromotionLuckDraw_JackpotReward[3])
	else
		nGetReward = CommonFunc_Copy(tAnniversaryPromotionLuckDraw_JackpotReward[2])
	end
	local nUserName = Get_UserName(nUserId)
	local tMsgBox = {}
	-- -- 一等奖
	local tRewardBroadCastText = {}
	local  sRankAward = tAnniversaryPromotionLuckDraw_Text["Dialog"]["RankAward"][nTime]
	tRewardBroadCastText[1] = string.format(tAnniversaryPromotionLuckDraw_Text["BroadCast"]["OneToThreeNew"], nUserName, tAnniversaryPromotionLuckDraw_Text["BroadCast"][1], sRankAward)
	nGetReward[1]["RewardBroadCast"] = tRewardBroadCastText[1]
	-- nGetReward[1]["RewardEMoney"]["Value"] = nGetReward[1]["RewardItem"][1]["Id"]
	-- local sRewardFirst = string.format(tAnniversaryPromotionLuckDraw_Text["Dialog"]["RewardGift"]["Emoney"], nJackpotEmoneyFirst)
	tMsgBox[1] = string.format(tAnniversaryPromotionLuckDraw_Text["SysMsg"]["LotterySucc"], sRankAward)
	-- 二等奖
	local nJackpotEmoneySecond = math.ceil(nJackpotEmoneyFirst * 0.3)
	tRewardBroadCastText[2] = string.format(tAnniversaryPromotionLuckDraw_Text["BroadCast"]["OneToThree"], nUserName, tAnniversaryPromotionLuckDraw_Text["BroadCast"][2], nJackpotEmoneySecond)
	nGetReward[2]["RewardBroadCast"] = tRewardBroadCastText[2]
	nGetReward[2]["RewardEMoney"]["Value"] = nJackpotEmoneySecond
	local sRewardSecond = string.format(tAnniversaryPromotionLuckDraw_Text["Dialog"]["RewardGift"]["Emoney"], nJackpotEmoneySecond)
	tMsgBox[2] = string.format(tAnniversaryPromotionLuckDraw_Text["SysMsg"]["LotterySucc"], sRewardSecond)
	-- 三等奖
	local nJackpotEmoneyThird = math.ceil(nJackpotEmoneyFirst * 0.1)
	tRewardBroadCastText[3] = string.format(tAnniversaryPromotionLuckDraw_Text["BroadCast"]["OneToThree"], nUserName, tAnniversaryPromotionLuckDraw_Text["BroadCast"][3], nJackpotEmoneyThird)
	nGetReward[3]["RewardBroadCast"] = tRewardBroadCastText[3]
	nGetReward[3]["RewardEMoney"]["Value"] = nJackpotEmoneyThird
	local sRewardThird = string.format(tAnniversaryPromotionLuckDraw_Text["Dialog"]["RewardGift"]["Emoney"], nJackpotEmoneyThird)
	tMsgBox[3] = string.format(tAnniversaryPromotionLuckDraw_Text["SysMsg"]["LotterySucc"], sRewardThird)
	-- 四等奖
	local nJackpotEmoneyFourth = math.ceil(nJackpotEmoneyFirst * 0.05)
	tRewardBroadCastText[4] = string.format(tAnniversaryPromotionLuckDraw_Text["BroadCast"]["FourToSix"], nUserName, tAnniversaryPromotionLuckDraw_Text["BroadCast"][4], nJackpotEmoneyFourth)
	nGetReward[4]["RewardBroadCast"] = tRewardBroadCastText[4]
	nGetReward[4]["RewardEMoney"]["Value"] = nJackpotEmoneyFourth
	local sRewardFourth = string.format(tAnniversaryPromotionLuckDraw_Text["Dialog"]["RewardGift"]["Emoney"], nJackpotEmoneyFourth)
	tMsgBox[4] = string.format(tAnniversaryPromotionLuckDraw_Text["SysMsg"]["LotterySucc"], sRewardFourth)
	-- 五等奖
	local nJackpotEmoneyFifth = math.ceil(nJackpotEmoneyFirst * 0.03)
	tRewardBroadCastText[5] = string.format(tAnniversaryPromotionLuckDraw_Text["BroadCast"]["FourToSix"], nUserName, tAnniversaryPromotionLuckDraw_Text["BroadCast"][5], nJackpotEmoneyFifth)
	nGetReward[5]["RewardBroadCast"] = tRewardBroadCastText[5]
	nGetReward[5]["RewardEMoney"]["Value"] = nJackpotEmoneyFifth
	local sRewardFifth = string.format(tAnniversaryPromotionLuckDraw_Text["Dialog"]["RewardGift"]["Emoney"], nJackpotEmoneyFifth)
	tMsgBox[5] = string.format(tAnniversaryPromotionLuckDraw_Text["SysMsg"]["LotterySucc"], sRewardFifth)
	-- 六等奖
	local nJackpotEmoneySixth = math.ceil(nJackpotEmoneyFirst * 0.01)
	tRewardBroadCastText[6] = string.format(tAnniversaryPromotionLuckDraw_Text["BroadCast"]["FourToSix"], nUserName, tAnniversaryPromotionLuckDraw_Text["BroadCast"][6], nJackpotEmoneySixth)
	nGetReward[6]["RewardBroadCast"] = tRewardBroadCastText[6]
	nGetReward[6]["RewardEMoney"]["Value"] = nJackpotEmoneySixth
	local sRewardSixth = string.format(tAnniversaryPromotionLuckDraw_Text["Dialog"]["RewardGift"]["Emoney"], nJackpotEmoneySixth)
	tMsgBox[6] = string.format(tAnniversaryPromotionLuckDraw_Text["SysMsg"]["LotterySucc"], sRewardSixth)
	tMsgBox[7] = tAnniversaryPromotionLuckDraw_Text["SysMsg"]["LotterySucc4"]
	tMsgBox[8] = tAnniversaryPromotionLuckDraw_Text["SysMsg"]["LotterySucc1"]
	tMsgBox[9] = tAnniversaryPromotionLuckDraw_Text["SysMsg"]["LotteryFail"]
	local nJackpotBroadCast = tAnniversaryPromotionLuckDraw_Data["JackpotBroadCast"]
	local sNowLog = tAnniversaryPromotionLuckDraw_Data["NoRewardLog"]
	if nChoose >= 10 then
		tMsgBox[9] = tAnniversaryPromotionLuckDraw_Text["SysMsg"]["LotteryFailTen"]
		tMsgBox[7] = tAnniversaryPromotionLuckDraw_Text["SysMsg"]["LotterySucc5"]
		tMsgBox[8] = tAnniversaryPromotionLuckDraw_Text["SysMsg"]["LotterySucc6"]
		nJackpotBroadCast = tAnniversaryPromotionLuckDraw_Data["JackpotBroadCastNew"]
		sNowLog = tAnniversaryPromotionLuckDraw_Data["NoRewardLogNew"]
	end
	
	-- 奖池奖励领取
	if nRank == 1 then
		RewardTemplate_UseItem(nGetReward[nRank], nUserId)
		if nRank <= 3 then
			Sys_TalkBroadcast(tRewardBroadCastText[nRank])
		end
		AnniversaryPromotionLuckDraw_RankRecord(nRank, nUserName, nGetReward[nRank]["RewardItem"][1]["Id"],nChoose)
	elseif nRank > 1 and nRank <= 6 then
		local nRewardEmoney = nGetReward[nRank]["RewardEMoney"]["Value"]
		RewardTemplate_UseItem(nGetReward[nRank], nUserId)
		if nRank <= 3 then
			Sys_TalkBroadcast(tRewardBroadCastText[nRank])
		end
		AnniversaryPromotionLuckDraw_RankRecord(nRank, nUserName, nRewardEmoney,nChoose)
	elseif nRank >= 7 and nRank <= 8 then
		RewardTemplate_UseItem(nGetReward[nRank], nUserId)
	elseif nRank == 9 then
		-- 播放光效
		User_EffectAdd(tAnniversaryPromotionLuckDraw_Data["EffectSelf"], tAnniversaryPromotionLuckDraw_Data["NotReward"], nUserId)
		local nJackpotEmoney = Get_SysDynaGlobalData0(nGlobalId)
		-- 奖池大于15000播报
		local nEmoneyAdd = tAnniversaryPromotionLuckDraw_Data["EmoneyAdd"][nEmoneyIndex]
		local nLastHaveAdd = nJackpotEmoney + tAnniversaryPromotionLuckDraw_Data["NeedEmoney"]*nEmoneyAdd
		if nJackpotEmoney > nJackpotBroadCast then
			local nBeforeAdd = math.floor(nJackpotEmoney / 1000)
			local nAfterAdd = math.floor(nLastHaveAdd / 1000)
			if nAfterAdd > nBeforeAdd then
				Sys_SystemBroadcast(string.format(tAnniversaryPromotionLuckDraw_Text["BroadCast"]["LotteryFull"], nLastHaveAdd))
			end
		end
		Sys_SetSynaGlobalData0(nGlobalId, nLastHaveAdd)
		-- RewardTemplate_UseItem(nGetReward[nRank], nUserId)
		Sys_SaveActionRewardLog(sNowLog,nUserId)
	end
	-- 中一等奖设置掩码
	if nRank == 1 then
		local nLastStcIndex = nStcIndex + 3
		local nTopOneEvent = tAnniversaryPromotionLuckDraw_Data["Stc"]["Event"][nLastStcIndex]
		local nTopOneData = tAnniversaryPromotionLuckDraw_Data["Stc"]["Data"][nLastStcIndex]
		Task_SetStatistic(nTopOneEvent,nTopOneData, 1, 1, nUserId)
		Task_SetStcTimestamp(nTopOneEvent,nTopOneData, 0, nUserId)
	end
	-- 奖励掩码清零
	local nSetStcIndex = nStcIndex + 4
	local nRankEvent = tAnniversaryPromotionLuckDraw_Data["Stc"]["Event"][nSetStcIndex]
	local nRankData = tAnniversaryPromotionLuckDraw_Data["Stc"]["Data"][nSetStcIndex]
	Task_SetStatistic(nRankEvent,nRankData, 0, 1, nUserId)
	Task_SetStcTimestamp(nRankEvent,nRankData, 0, nUserId)
	-- 跳转到对白
	Sys_MsgBox(tMsgBox[nRank], string.format("AnniversaryPromotionLuckDraw_OptionChk</N>%d", nTime),  string.format("AnniversaryPromotionLuckDraw_RewardTip</N>%d", nNpcId), nUserId)
end

-- 抽奖跳转到对白
function AnniversaryPromotionLuckDraw_RewardTip(nNpcId)
	local nNowNpcId = Get_NpcId()
	if nNpcId ~= nNowNpcId then
		return
	end
	if CommonFunc_GetAfterActivityTime(tAnniversaryPromotionLuckDraw_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-3")
		return
	end
	LinkNpcGossipFunc_New(nNpcId, "1-2")
end

-- 获奖记录，重置奖池
function AnniversaryPromotionLuckDraw_RankRecord(nRank, nUserName, nRewardEmoney,nChoose)
	local nGlobalId1 = tAnniversaryPromotionLuckDraw_Data["GlobalId"][1]
	local nGlobalId2 = tAnniversaryPromotionLuckDraw_Data["GlobalId"][2]
	local nRestJackpot = tAnniversaryPromotionLuckDraw_Data["RestJackpot"]
	if nChoose >= 10 then
		nGlobalId1 = tAnniversaryPromotionLuckDraw_Data["GlobalId"][3]
		nGlobalId2 = tAnniversaryPromotionLuckDraw_Data["GlobalId"][4]
		nRestJackpot = tAnniversaryPromotionLuckDraw_Data["RestJackpotNew"]
	end
	local tRankData = {}
	-- 获取当前获奖记录   1-5
	for i = 1, 5 do
		tRankData[i] = {}
		tRankData[i]["Name"] = Get_SysDynaGlobalDataStr(nGlobalId1, i)
		tRankData[i]["Time"] = Get_SysDynaGlobalTime(nGlobalId1, i)
		local nUserEmoney = Get_SysDynaGlobalData(nGlobalId1, i)
		if nUserEmoney > 0 then
			tRankData[i]["Rank"] = nUserEmoney % 10
			tRankData[i]["Emoney"] = math.floor(nUserEmoney / 10)
		else
			tRankData[i]["Rank"] = 0
			tRankData[i]["Emoney"] = 0
		end
	end
	-- 获取当前获奖记录   6-10
	for i = 6, 10 do
		tRankData[i] = {}
		tRankData[i]["Name"] = Get_SysDynaGlobalDataStr(nGlobalId2, i - 5)
		tRankData[i]["Time"] = Get_SysDynaGlobalTime(nGlobalId2, i - 5)
		local nUserEmoney = Get_SysDynaGlobalData(nGlobalId2, i - 5)
		if nUserEmoney > 0 then
			tRankData[i]["Rank"] = nUserEmoney % 10
			tRankData[i]["Emoney"] = math.floor(nUserEmoney / 10)
		else
			tRankData[i]["Rank"] = 0
			tRankData[i]["Emoney"] = 0
		end
	end
	-- 刷新获奖记录
	for i = 10, 2, -1 do
		tRankData[i]["Name"] = tRankData[i - 1]["Name"]
		tRankData[i]["Time"] = tRankData[i - 1]["Time"]
		tRankData[i]["Rank"] = tRankData[i - 1]["Rank"]
		tRankData[i]["Emoney"] = tRankData[i - 1]["Emoney"]
	end
	tRankData[1]["Name"] = nUserName
	tRankData[1]["Time"] = os.time()
	tRankData[1]["Rank"] = nRank
	tRankData[1]["Emoney"] = nRewardEmoney
	-- 写入数据
	for i = 1, 5 do
		-- 1-5名
		Sys_SetSynaGlobalDataStr(nGlobalId1, i, tRankData[i]["Name"])
		Sys_SetSynaGlobalTime(nGlobalId1, i, tRankData[i]["Time"])
		Sys_SetSynaGlobalData(nGlobalId1, i, tRankData[i]["Emoney"] * 10 + tRankData[i]["Rank"])
		-- 6-10名
		Sys_SetSynaGlobalDataStr(nGlobalId2, i, tRankData[i + 5]["Name"])
		Sys_SetSynaGlobalTime(nGlobalId2, i, tRankData[i + 5]["Time"])
		Sys_SetSynaGlobalData(nGlobalId2, i, tRankData[i + 5]["Emoney"] * 10 + tRankData[i + 5]["Rank"])
	end
	-- 奖池奖励计算
	if nRank == 1 then
		-- 不重置
		-- Sys_SetSynaGlobalData0(nGlobalId1, nRestJackpot)
	else
		local nJackpotEmoney = Get_SysDynaGlobalData0(nGlobalId1)
		Sys_SetSynaGlobalData0(nGlobalId1, nJackpotEmoney - nRewardEmoney)
	end
end

-- 赠点抽奖概率计算
function AnniversaryPromotionLuckDraw_RandomChance(nIndex,nChoose)
	local nGlobalId = tAnniversaryPromotionLuckDraw_Data["GlobalId"][1]
	local nStcIndex = 0
	
	-- 判断单抽或者十连抽 概率不一样
	local tProbability = tAnniversaryPromotionLuckDraw_Data["Probability"]
	local tLimits = tAnniversaryPromotionLuckDraw_Data["Limits"]
	if nChoose >= 10 then
		nGlobalId = tAnniversaryPromotionLuckDraw_Data["GlobalId"][3]
		nStcIndex = 2
		tProbability = tAnniversaryPromotionLuckDraw_Data["TenProbability"]
		tLimits = tAnniversaryPromotionLuckDraw_Data["TenLimits"]
	end
	local nMaxRandom = tLimits["Upper"][nIndex]
	local nMinRandom = tLimits["Lower"][nIndex]
	
	local nJackpotEmoney = Get_SysDynaGlobalData0(nGlobalId)
	local nRandom = math.floor(tProbability[nIndex] / nJackpotEmoney)
	if nRandom > nMaxRandom then
		nRandom = nMaxRandom
	elseif nRandom < nMinRandom then
		nRandom = nMinRandom
	end
	-- 判断今日是否中过一等奖
	if nIndex == 1 then
		local nLastStcIndex = nStcIndex + 3
		local nTopOneEvent = tAnniversaryPromotionLuckDraw_Data["Stc"]["Event"][nLastStcIndex]
		local nTopOneData = tAnniversaryPromotionLuckDraw_Data["Stc"]["Data"][nLastStcIndex]
		if Task_StcInterval(nTopOneEvent, nTopOneData, 1, 4) then
			Task_SetStatistic(nTopOneEvent,nTopOneData, 0, 1)
			Task_SetStcTimestamp(nTopOneEvent,nTopOneData, 0)
		end
		if Task_ChkStcValue(nTopOneEvent, nTopOneData, ">", 0) then
			nRandom = 0
		end
	end
	return nRandom
end

----------------------------------NPC部分---------------------------------------------
tNpcFace[6007] = 28
tNpcGossip[22744]= tNpcGossip[22744] or DefaultNpc:new{}
tNpcGossip[22744]["OptionHidden"] = 1
tNpcGossip[22744]["DialogueText"] = tAnniversaryPromotionLuckDraw_Text[22744] 
-- 活动前
tNpcGossip[22744]["Text1-1"] = {111, 112, 113, 114, 115}
tNpcGossip[22744]["Text111"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text111"]
tNpcGossip[22744]["Text112"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text112"]
tNpcGossip[22744]["Text113"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text113"]
tNpcGossip[22744]["Text114"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text114"]
tNpcGossip[22744]["Text115"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text115"]
tNpcGossip[22744]["ChkFunc1-1"]= function()
	local nNpcId = Get_NpcId()
	tNpcGossip[nNpcId]["Text111"] = tAnniversaryPromotionLuckDraw_Text[nNpcId]["Text111"]
	tNpcGossip[nNpcId]["Text112"] = tAnniversaryPromotionLuckDraw_Text[nNpcId]["Text112"]
	tNpcGossip[nNpcId]["Text115"] = tAnniversaryPromotionLuckDraw_Text[nNpcId]["Text115"]
	tNpcGossip[nNpcId]["Option111"] = tAnniversaryPromotionLuckDraw_Text[nNpcId]["Option111"]
	if Sys_ChkFullTime(tAnniversaryPromotionLuckDraw_Data["BeforeTime"]) then
		return true
	end
	local nLevel = tAnniversaryPromotionLuckDraw_Data["Level"] 
	local nMete = tAnniversaryPromotionLuckDraw_Data["Mete"] 
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return true
	end
	return false
end
tNpcGossip[22744]["tOption1-1"] = {111}
tNpcGossip[22744]["Option111"] = tAnniversaryPromotionLuckDraw_Text[22744]["Option111"]
-- 活动中
tNpcGossip[22744]["Text1-2"] = {121, 122, 123, 1240,124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138}
tNpcGossip[22744]["Text121"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text121"]
tNpcGossip[22744]["Text122"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text122"]
tNpcGossip[22744]["Text123"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text123"]
tNpcGossip[22744]["Text124"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text124"]
tNpcGossip[22744]["Text125"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text125"]
tNpcGossip[22744]["Text126"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text126"]
tNpcGossip[22744]["Text127"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text127"]
tNpcGossip[22744]["Text128"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text128"]
tNpcGossip[22744]["Text129"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text129"]
tNpcGossip[22744]["Text130"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text130"]
tNpcGossip[22744]["Text131"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text131"]
tNpcGossip[22744]["Text132"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text132"]
tNpcGossip[22744]["Text133"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text133"]
tNpcGossip[22744]["Text134"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text134"]
tNpcGossip[22744]["Text135"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text135"]
tNpcGossip[22744]["Text136"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text136"]
tNpcGossip[22744]["Text137"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text137"]
tNpcGossip[22744]["Text138"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text138"]
tNpcGossip[22744]["ChkFunc1-2"]= function()
	local nNpcId = Get_NpcId()
	tNpcGossip[nNpcId]["Text121"] = tAnniversaryPromotionLuckDraw_Text[nNpcId]["Text121"]
	tNpcGossip[nNpcId]["Text1240"] = tAnniversaryPromotionLuckDraw_Text[nNpcId]["Text1240"]
	-- 获取奖池奖金并赋值
	local nGlobalId = tAnniversaryPromotionLuckDraw_Data["GlobalId"][1]
	if nNpcId == tAnniversaryPromotionLuckDraw_Data["TenDrawNpc"] then
		nGlobalId = tAnniversaryPromotionLuckDraw_Data["GlobalId"][3]
		tNpcGossip[nNpcId]["Text128"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text1280"]
		tNpcGossip[nNpcId]["Text134"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text1340"]
		tNpcGossip[nNpcId]["Text136"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text1360"]
	else
		tNpcGossip[nNpcId]["Text128"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text128"]
		tNpcGossip[nNpcId]["Text134"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text134"]
		tNpcGossip[nNpcId]["Text136"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text136"]
	end
	tNpcGossip[nNpcId]["Text135"] = tAnniversaryPromotionLuckDraw_Text[nNpcId]["Text135"]
	tNpcGossip[nNpcId]["Text138"] = tAnniversaryPromotionLuckDraw_Text[nNpcId]["Text138"]
	local nJackpotEmoney = Get_SysDynaGlobalData0(nGlobalId)
	local nLen = Get_StringLenUtf8(tostring(nJackpotEmoney))
	local nNeedSpace = 14 - nLen
	local sStr = ""
	for i = 1, nNeedSpace do
		sStr = " " .. sStr
	end
	local sJackpotEmoney = string.format(tAnniversaryPromotionLuckDraw_Text[22744]["Text124"], sStr .. nJackpotEmoney)
	tNpcGossip[22744]["Text124"] = sJackpotEmoney
	
	if Sys_ChkFullTime(tAnniversaryPromotionLuckDraw_Data["ActivityTime"]) then
		return true
	end
	return false
end
tNpcGossip[22744]["tOption1-2"] = {121,124,123}
tNpcGossip[22744]["Option121"] = tAnniversaryPromotionLuckDraw_Text[22744]["Option121"]
tNpcGossip[22744]["OptionFunc121"] = "AnniversaryPromotionLuckDraw_Lottery</N>1"
tNpcGossip[22744]["OptionChkFunc121"] = function ()
	-- local nItemId = tAnniversaryPromotionLuckDraw_Data["ItemId"]
	-- if Item_ChkItem(nItemId) then
		-- return true
	-- end
	-- return false
	local nNowNpcId = Get_NpcId()
	if nNowNpcId == tAnniversaryPromotionLuckDraw_Data["TenDrawNpc"] then
		return false
	end
	return true
end
-- tNpcGossip[22744]["Option122"] = tAnniversaryPromotionLuckDraw_Text[22744]["Option122"]
-- tNpcGossip[22744]["OptionFunc122"] = "AnniversaryPromotionLuckDraw_OptionChk"
tNpcGossip[22744]["Option123"] = tAnniversaryPromotionLuckDraw_Text[22744]["Option123"]
tNpcGossip[22744]["OptionPoint123"] = "3-1"
-- 十连抽
tNpcGossip[22744]["Option124"] = tAnniversaryPromotionLuckDraw_Text[22744]["Option124"]
tNpcGossip[22744]["OptionFunc124"] = "AnniversaryPromotionLuckDraw_Lottery</N>10"
tNpcGossip[22744]["OptionChkFunc124"] = function ()
	local nNowNpcId = Get_NpcId()
	if nNowNpcId == tAnniversaryPromotionLuckDraw_Data["TenDrawNpc"] then
		return true
	end
	return false
end
-- 活动后
tNpcGossip[22744]["Text1-3"] = {141, 142}
tNpcGossip[22744]["Text141"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text141"]
tNpcGossip[22744]["Text142"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text142"]
tNpcGossip[22744]["ChkFunc1-3"]= function()
	local nNpcId = Get_NpcId()
	tNpcGossip[nNpcId]["Text141"] = tAnniversaryPromotionLuckDraw_Text[nNpcId]["Text141"]
	tNpcGossip[nNpcId]["Option131"] = tAnniversaryPromotionLuckDraw_Text[nNpcId]["Option131"]
	if CommonFunc_GetAfterActivityTime(tAnniversaryPromotionLuckDraw_Data["ActivityTime"]) then
		return true
	end
	return false
end
tNpcGossip[22744]["tOption1-3"] = {131}
tNpcGossip[22744]["Option131"] = tAnniversaryPromotionLuckDraw_Text[22744]["Option131"]
-- 周年庆礼券开奖   【开奖失败，背包中无礼券】
tNpcGossip[22744]["Text2-1"] = {211}
tNpcGossip[22744]["Text211"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text211"]
tNpcGossip[22744]["Text212"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text212"]
tNpcGossip[22744]["Text213"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text213"]
tNpcGossip[22744]["Text214"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text214"]
tNpcGossip[22744]["tOption2-1"] = {211,212}
tNpcGossip[22744]["Option211"] = tAnniversaryPromotionLuckDraw_Text[22744]["Option211"]
tNpcGossip[22744]["OptionFunc211"] = "AnniversaryPromotionLuckDraw_OptionChk</N>1"
tNpcGossip[22744]["OptionChkFunc211"] = function()
	local nNowNpcId = Get_NpcId()
	if nNowNpcId == tAnniversaryPromotionLuckDraw_Data["TenDrawNpc"] then
		return false
	end
	return true
end
tNpcGossip[22744]["Option212"] = tAnniversaryPromotionLuckDraw_Text[22744]["Option212"]
tNpcGossip[22744]["OptionFunc212"] = "AnniversaryPromotionLuckDraw_OptionChk</N>10"
tNpcGossip[22744]["OptionChkFunc212"] = function()
	local nNowNpcId = Get_NpcId()
	if nNowNpcId == tAnniversaryPromotionLuckDraw_Data["TenDrawNpc"] then
		return true
	end
	return false
end
-- 【开奖成功，二次确认】
tNpcGossip[22744]["Text2-2"] = {221}
tNpcGossip[22744]["Text221"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text221"]
tNpcGossip[22744]["tOption2-2"] = {221, 222}
tNpcGossip[22744]["Option221"] = tAnniversaryPromotionLuckDraw_Text[22744]["Option221"]
tNpcGossip[22744]["OptionFunc221"] = "AnniversaryPromotionLuckDraw_Lottery</N>2"
tNpcGossip[22744]["Option222"] = tAnniversaryPromotionLuckDraw_Text[22744]["Option222"]
tNpcGossip[22744]["OptionFunc222"] = "AnniversaryPromotionLuckDraw_ShieldingConfirmation"
-- 【十连抽，二次确认】
tNpcGossip[22744]["Text2-3"] = {231}
tNpcGossip[22744]["Text231"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text231"]
tNpcGossip[22744]["tOption2-3"] = {231, 232}
tNpcGossip[22744]["Option231"] = tAnniversaryPromotionLuckDraw_Text[22744]["Option231"]
tNpcGossip[22744]["OptionFunc231"] = "AnniversaryPromotionLuckDraw_Lottery</N>11"
tNpcGossip[22744]["OptionFunc232"] = "AnniversaryPromotionLuckDraw_NewConfirmation"
-- 开奖详情
tNpcGossip[22744]["Text3-1"] = {311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326}
tNpcGossip[22744]["Text311"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text311"]
tNpcGossip[22744]["Text312"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text312"]
tNpcGossip[22744]["Text313"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text313"]
tNpcGossip[22744]["Text314"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text314"]
tNpcGossip[22744]["Text315"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text315"]
tNpcGossip[22744]["Text316"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text316"]
tNpcGossip[22744]["Text317"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text317"]
tNpcGossip[22744]["Text318"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text318"]
tNpcGossip[22744]["Text319"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text319"]
tNpcGossip[22744]["Text320"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text320"]
tNpcGossip[22744]["Text321"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text321"]
tNpcGossip[22744]["Text322"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text322"]
tNpcGossip[22744]["Text323"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text323"]
tNpcGossip[22744]["Text324"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text324"]
tNpcGossip[22744]["Text325"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text325"]
tNpcGossip[22744]["Text326"] = tAnniversaryPromotionLuckDraw_Text[22744]["Text326"]
tNpcGossip[22744]["ChkFunc3-1"]= function()
	local nNpcId = Get_NpcId()
	tNpcGossip[nNpcId]["Text311"] = tAnniversaryPromotionLuckDraw_Text[nNpcId]["Text311"]
	local nText = 314
	local nGlobalId1 = tAnniversaryPromotionLuckDraw_Data["GlobalId"][1]
	local nGlobalId2 = tAnniversaryPromotionLuckDraw_Data["GlobalId"][2]
	if nNpcId == tAnniversaryPromotionLuckDraw_Data["TenDrawNpc"] then
		nGlobalId1 = tAnniversaryPromotionLuckDraw_Data["GlobalId"][3]
		nGlobalId2 = tAnniversaryPromotionLuckDraw_Data["GlobalId"][4]
	end
	local nGlobalId = 0
	local i = 0
	for j = 1, 10 do
		if j <= 5 then
			nGlobalId = nGlobalId1
			i = j
		else
			nGlobalId = nGlobalId2
			i = j - 5
		end
		
		-- 获奖者
		local sUserName = Get_SysDynaGlobalDataStr(nGlobalId, i)
		-- 获奖时间
		local sUserTime = Get_SysDynaGlobalTime(nGlobalId, i)
		local sGetRewardTime = ""
		local nTimeLen = 0
		if sUserTime == 0 then
			sGetRewardTime = tAnniversaryPromotionLuckDraw_Text["Dialog"]["LotteryTime"]["NotTime"]
			nTimeLen = 36
		else
			local nNowTime = os.time()
			local nPastTime = nNowTime - sUserTime
			if nPastTime < 60 then
				sGetRewardTime = tAnniversaryPromotionLuckDraw_Text["Dialog"]["LotteryTime"]["JustNow"]
				nTimeLen = 24
			elseif nPastTime < 60 * 60 then
				local sMinute = math.floor(nPastTime / 60)
				sGetRewardTime = string.format(tAnniversaryPromotionLuckDraw_Text["Dialog"]["LotteryTime"]["MinuteAgo"], sMinute)
				nTimeLen = 22
			elseif nPastTime < 60 * 60 * 24 then
				local sHour = math.floor(nPastTime / 60 / 60)
				sGetRewardTime = string.format(tAnniversaryPromotionLuckDraw_Text["Dialog"]["LotteryTime"]["HoursAgo"], sHour)
				nTimeLen = 22
			else
				local sDay = math.floor(nPastTime / 60 / 60 / 24)
				sGetRewardTime = string.format(tAnniversaryPromotionLuckDraw_Text["Dialog"]["LotteryTime"]["DayAgo"], sDay)
				nTimeLen = 23
			end
		end
		-- 开奖好礼
		local nUserEmoney = Get_SysDynaGlobalData(nGlobalId, i)
		local sRankReward = ""
		if nUserEmoney == 0 then
			sRankReward = tAnniversaryPromotionLuckDraw_Text["Dialog"]["RewardGift"]["NotGift"]
		else
			local nRank = nUserEmoney % 10
			local nUserRewardEmoney = math.floor(nUserEmoney / 10)
			if nUserEmoney == tAnniversaryPromotionLuckDraw_Data["ItemToText"][1] then
				sRankReward = tAnniversaryPromotionLuckDraw_Text["Dialog"]["RankAward"][1]
			elseif nUserEmoney == tAnniversaryPromotionLuckDraw_Data["ItemToText"][10] then
				sRankReward = tAnniversaryPromotionLuckDraw_Text["Dialog"]["RankAward"][10]
			else
				sRankReward = string.format(tAnniversaryPromotionLuckDraw_Text["Dialog"]["RankAward"][nRank], nUserRewardEmoney)
			end
		end
		-- 详情赋值
		--名字处理
		sUserName = Sys_StringGSubTip(sUserName)
		if sUserTime == 0 then
			tNpcGossip[nNpcId]["Text" .. nText + j] = Sys_Alignment(sUserName, 5, sGetRewardTime, nTimeLen, sRankReward, 66) .. "\n"
		else
			tNpcGossip[nNpcId]["Text" .. nText + j] = Sys_Alignment(sUserName, 2, sGetRewardTime, nTimeLen, sRankReward, 47) .. "\n"
		end
	end
	return true
end
tNpcGossip[22744]["tOption3-1"] = {311}
tNpcGossip[22744]["Option311"] = tAnniversaryPromotionLuckDraw_Text[22744]["Option311"]
tNpcGossip[22744]["OptionPoint311"] = "1-2"
-- 24701,'常威' -- 十倍抽奖
tNpcFace[5457] = 64
tNpcGossip[24701] = tNpcGossip[22744]

--[[
-- 180509[简体征服][活动脚本]内嵌举报外挂活动页面NPC制作
tNpcFace[6072] = 74
tNpcGossip[22928]= tNpcGossip[22928] or DefaultNpc:new{}
tNpcGossip[22928]["OptionHidden"] = 1
tNpcGossip[22928]["Text1-1"] = {111, 112}
tNpcGossip[22928]["Text111"] = tAnniversaryPromotionLuckDraw_Text[22928]["Text111"]
tNpcGossip[22928]["Text112"] = tAnniversaryPromotionLuckDraw_Text[22928]["Text112"]
tNpcGossip[22928]["tOption1-1"] = {111, 112}
tNpcGossip[22928]["Option111"] = tAnniversaryPromotionLuckDraw_Text[22928]["Option111"]
tNpcGossip[22928]["OptionFunc111"] = "AnniversaryPromotionLuckDraw_SendWebPage"
tNpcGossip[22928]["Option112"] = tAnniversaryPromotionLuckDraw_Text[22928]["Option112"]

-- 180521[简体征服][活动脚本]招财宝树活动页面
tNpcFace[3586] = 6
tNpcGossip[22970]= tNpcGossip[22970] or DefaultNpc:new{}
tNpcGossip[22970]["OptionHidden"] = 1
-- 活动前
tNpcGossip[22970]["Text1-1"] = {111, 112, 113}
tNpcGossip[22970]["Text111"] = tAnniversaryPromotionLuckDraw_Text[22970]["Text111"]
tNpcGossip[22970]["Text112"] = tAnniversaryPromotionLuckDraw_Text[22970]["Text112"]
tNpcGossip[22970]["Text113"] = tAnniversaryPromotionLuckDraw_Text[22970]["Text113"]
tNpcGossip[22970]["ChkFunc1-1"] = function()
	if Sys_ChkFullTime(tActivityTime["AnniversaryPromotionLuckDraw"]["TreasureTree"]) then
		return true
	end
	return false
end
tNpcGossip[22970]["tOption1-1"] = {111}
tNpcGossip[22970]["Option111"] = tAnniversaryPromotionLuckDraw_Text[22970]["Option111"]
-- 活动中
tNpcGossip[22970]["Text1-2"] = {121, 122, 123}
tNpcGossip[22970]["Text121"] = tAnniversaryPromotionLuckDraw_Text[22970]["Text121"]
tNpcGossip[22970]["Text122"] = tAnniversaryPromotionLuckDraw_Text[22970]["Text122"]
tNpcGossip[22970]["Text123"] = tAnniversaryPromotionLuckDraw_Text[22970]["Text123"]
tNpcGossip[22970]["tOption1-2"] = {121, 122}
tNpcGossip[22970]["Option121"] = tAnniversaryPromotionLuckDraw_Text[22970]["Option121"]
tNpcGossip[22970]["OptionFunc121"] = "AnniversaryPromotionLuckDraw_OpenTheWebPage"
tNpcGossip[22970]["Option122"] = tAnniversaryPromotionLuckDraw_Text[22970]["Option122"]



---------------------------------物品部分---------------------------------------------
-- 周年庆礼券
tItem[3308416] = tItem[3308416] or {}
tItem[3308416]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 活动后提示下次用
	if CommonFunc_GetAfterActivityTime(tAnniversaryPromotionLuckDraw_Data["ActivityTime"]) then
		Sys_MsgBox(tAnniversaryPromotionLuckDraw_Text["SysMsg"]["NewOverTime"])
		-- if Item_DelAllItemByType(nItemId) then
			-- User_TalkChannel2005(tAnniversaryPromotionLuckDraw_Text["SysMsg"]["OverTime"])
			-- 打log
			-- Sys_SaveActionFestivalLog(tAnniversaryPromotionLuckDraw_Data["OutTimeDelLog"])
		-- end
		return
	end
	
	-- local nPosX = tAnniversaryPromotionLuckDraw_Data["NpcPosX"]
	-- local nPosY = tAnniversaryPromotionLuckDraw_Data["NpcPosY"]
	-- local nMapId = tAnniversaryPromotionLuckDraw_Data["NpcMapId"]
	local nNpcId = tAnniversaryPromotionLuckDraw_Data["NpcId"]
	-- Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
	NpcPosition_PathFind(nNpcId)
end
--]]