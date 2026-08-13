------------------------------------------------------------------------------------
--Name：            190130[简体征服][活动脚本]情人节时尚比拼
--Creator:      王贤

--Created:     2019-01-30
------------------------------------------------------------------------------------
--任务需求：
-- 190115【简体征服】3月情人节时尚比拼活动制作
--  
-- 制作3月情人节时尚比拼活动
--  
-- 线上活动暂定时间3.1-3.15
-- 线下活动时间暂定3.16-3.20
------------------------------------------------------------------------------------
-- stc(190, 40)  1 、玩家当天最高分
-- stc(190, 41)  2 、玩家活动期间S个数
-- stc(190, 42)  3 、玩家时尚得分
-- stc(190, 43)  4 、今日参加评选二次确认
-- stc(190, 44)  5 、已领取的奖励
-- stc(190, 45)  6 、是否领取领礼物
-- stc(190, 46)  7 、8-14  时装外套套是否租借
-- stc(190, 47)  8 、1-7   坐骑外套是否租借
-- stc(190, 48)  9 、8-13  坐骑外套套是否租借
-- stc(190, 49)  10 、每日怪物掉落限量
-- stc(190, 50)  11 、显著功勋礼包限量
-- stc(190, 51)  12 、正气令限量
-- stc(190, 52)  13 、签到礼包限量
-- stc(190, 53)  14 、每日参与的次数
-- stc(190, 54)  15 、背包信

------------------------------------------------------------------------------------
-- 前缀
-- ValentineCompetition_

-- LogId： 12001284
----------------------------------表配置部分--------------------------------------------
local tValentineCompetition_Data = {}
-- 每日时尚榜
tValentineCompetition_Data["RankDataDay"] = 237321
-- 活动排行榜
tValentineCompetition_Data["RankDataActivity"] = 237322
-- data0 1  蜜恋主题日 2  暖冬主题日 3  战斗主题日 4  运动主题日
-- time0 记录修改数据的日期
tValentineCompetition_Data["GlobalId"] = 53234
-- 条件
tValentineCompetition_Data["Level"] = 80
tValentineCompetition_Data["Metempsychosis"] = 0
-- 所需物品ID
tValentineCompetition_Data["NeedItem"] = {}
-- 纪凡希口红
tValentineCompetition_Data["NeedItem"][1] = 3320096

-- 所需天石
tValentineCompetition_Data["NeedEMoney"] = {}
-- 口红价格  银两
tValentineCompetition_Data["NeedEMoney"]["Lipstick"] = 500000
tValentineCompetition_Data["NeedEMoney"]["BagMoneyBig"] = 10000000
-- 租借外套
tValentineCompetition_Data["NeedEMoney"]["SellCoat"] = 109

-- web弹窗
tValentineCompetition_Data["WebAddress"] = "https://zf.99.com/activity/2019/ssbbhd/index.shtml"

-- Log
tValentineCompetition_Data["Log"] = {}
tValentineCompetition_Data["Log"]["OutTimeLog"] = "0,0,%d,%d,12001284,2,0,0"
-- 评分log   1：1 道具 2 金币  2：分数
tValentineCompetition_Data["Log"]["ScoreLog"] = "0,0,%d,%d,12001284,5[2],0,0"

-- Emoneylog
tValentineCompetition_Data["Emoneylog"] = {}
tValentineCompetition_Data["Emoneylog"][1] = "350	22488	0	0	1	"
tValentineCompetition_Data["Emoneylog"][2] = "350	22489	0	0	1	"

-- 评分等级
tValentineCompetition_Data["Score"] = {}
-- SS
tValentineCompetition_Data["Score"][1] = 15000
-- S
tValentineCompetition_Data["Score"][2] = 10000
-- A
tValentineCompetition_Data["Score"][3] = 8000
-- B+
tValentineCompetition_Data["Score"][4] = 6000
-- B
tValentineCompetition_Data["Score"][5] = 3000

-- 掩码位
tValentineCompetition_Data["StcSign"] = {1, 10, 100, 1000, 10000}

-- 时尚得分奖励分值
tValentineCompetition_Data["FactionRewardNeed"] = {}
tValentineCompetition_Data["FactionRewardNeed"][1] = 10000
tValentineCompetition_Data["FactionRewardNeed"][2] = 20000
tValentineCompetition_Data["FactionRewardNeed"][3] = 30000
tValentineCompetition_Data["FactionRewardNeed"][4] = 50000
tValentineCompetition_Data["FactionRewardNeed"][5] = 100000
tValentineCompetition_Data["FactionRewardNeed"][6] = 150000
tValentineCompetition_Data["FactionRewardNeed"][7] = 200000

-- 主题加成
tValentineCompetition_Data["Subject"] = {}
-- 蝶恋花·玫语、天仙子·月华、浪漫进行时【梦幻版】、花之吻·绯恋
tValentineCompetition_Data["Subject"][1] = {193625,194395,195605,195405}
-- 圣诞恋歌·永爱、海天之恋·绝恋、冰雪奇缘【闪耀版】、冰雪奇缘【辉煌版】
tValentineCompetition_Data["Subject"][2] = {195015,195845,193445,193525}
-- 紫音青衫【霞光】、暗黑魔龙战衣【炼狱版】、辉耀之刺【荣耀版】、大圣魔铠【齐天】
tValentineCompetition_Data["Subject"][3] = {194875,189065,188915,189695}
-- 勇士传奇【联盟王者】、轻舞飞扬·盈波、夏威夷阳光【泡泡版】、卡牌大师【传奇版】
tValentineCompetition_Data["Subject"][4] = {195365,195045,194825,189735,195225}

-- 时装短租
tValentineCompetition_Data["CoatLease"] = {}
tValentineCompetition_Data["CoatLease"]["SaveNum"] = {}
-- 外套
-- 勇士传奇【联盟王者】
-- 东方不败·至尊
-- 卡牌大师【传奇版】
-- 圣诞恋歌·永爱
-- 轻舞飞扬·盈波
-- 花之吻·绯恋
-- 喵基尼【璀璨版】
-- 天仙子·月华
-- 水晶之恋·星梦
-- 蝶恋花·玫语
-- 夏威夷阳光【泡泡版】
-- 大圣魔铠【齐天】
-- 紫音青衫【霞光】
-- 福星天降【华彩版】
tValentineCompetition_Data["CoatLease"][1] = {195365,195485,195225,195015,195045,195405,193565,194395,195545,193625,194825,189695,194875,195075}
tValentineCompetition_Data["CoatLease"]["SaveNum"][1] = {1, 10, 100, 1000, 10000, 100000, 1000000}
tValentineCompetition_Data["CoatLease"]["SaveNum"][2] = {1, 10, 100, 1000, 10000, 100000, 1000000}
-- 骑宠
-- 喵呜将军【璀璨版】
-- 萨摩王子【炫彩版】
-- 二哈将军【炫彩版】
-- 金毛大帅【炫彩版】
-- 逗哥王
-- 大鱼海棠·凌波
-- 大鱼海棠·金麟
-- 流金祥云
-- 猴王天天
-- 猴王西西
-- 超级羊驼维克多
-- 星际战鸡·终极挑战号
-- 星际战鸡·辉煌勇气号
tValentineCompetition_Data["CoatLease"][2] = {200544,200621,200622,200623,200624,200626,200632,200629,200559,200560,200564,200592,200601}
tValentineCompetition_Data["CoatLease"]["SaveNum"][3] = {1, 10, 100, 1000, 10000, 100000, 1000000}
tValentineCompetition_Data["CoatLease"]["SaveNum"][4] = {1, 10, 100, 1000, 10000, 100000}

-- 星级分值
tValentineCompetition_Data["StarValue"] = {}
-- 【1】表示玩家时装外套数据
tValentineCompetition_Data["StarValue"][1] = {}
tValentineCompetition_Data["StarValue"][1][1] = 1000
tValentineCompetition_Data["StarValue"][1][2] = 1500
tValentineCompetition_Data["StarValue"][1][3] = 1900
tValentineCompetition_Data["StarValue"][1][4] = 2400
tValentineCompetition_Data["StarValue"][1][5] = 3000
-- 【2】表示玩家骑宠外套数据
tValentineCompetition_Data["StarValue"][2] = {}
tValentineCompetition_Data["StarValue"][2][1] = 1000
tValentineCompetition_Data["StarValue"][2][2] = 1500
tValentineCompetition_Data["StarValue"][2][3] = 1900
tValentineCompetition_Data["StarValue"][2][4] = 2400
tValentineCompetition_Data["StarValue"][2][5] = 3000
-- 【3】表示玩家武器外套数据   右手
tValentineCompetition_Data["StarValue"][3] = {}
tValentineCompetition_Data["StarValue"][3][1] = 1000
tValentineCompetition_Data["StarValue"][3][2] = 500
-- 【4】表示玩家发型数据
tValentineCompetition_Data["StarValue"][4] = {}
tValentineCompetition_Data["StarValue"][4][1] = 1000
tValentineCompetition_Data["StarValue"][4][2] = 500
-- 【5】表示玩家翅膀数据
tValentineCompetition_Data["StarValue"][5] = {}
tValentineCompetition_Data["StarValue"][5][1] = 1500
tValentineCompetition_Data["StarValue"][5][2] = 1000
tValentineCompetition_Data["StarValue"][5][3] = 500
-- 【6】表示玩家称号数据
tValentineCompetition_Data["StarValue"][6] = {}
tValentineCompetition_Data["StarValue"][6][1] = 1500
tValentineCompetition_Data["StarValue"][6][2] = 1000
tValentineCompetition_Data["StarValue"][6][3] = 500
-- 【7】表示玩家光效数据
tValentineCompetition_Data["StarValue"][7] = {}
tValentineCompetition_Data["StarValue"][7][1] = 500


-- 外套星级
tValentineCompetition_Data["CoatStar"] = {}
tValentineCompetition_Data["CoatStar"][181345] = 1
tValentineCompetition_Data["CoatStar"][181445] = 1
tValentineCompetition_Data["CoatStar"][181545] = 1
tValentineCompetition_Data["CoatStar"][181645] = 1
tValentineCompetition_Data["CoatStar"][181745] = 1
tValentineCompetition_Data["CoatStar"][181845] = 1
tValentineCompetition_Data["CoatStar"][181945] = 1
tValentineCompetition_Data["CoatStar"][185345] = 1
tValentineCompetition_Data["CoatStar"][185365] = 1
tValentineCompetition_Data["CoatStar"][181365] = 1
tValentineCompetition_Data["CoatStar"][181465] = 1
tValentineCompetition_Data["CoatStar"][181565] = 1
tValentineCompetition_Data["CoatStar"][181665] = 1
tValentineCompetition_Data["CoatStar"][181765] = 1
tValentineCompetition_Data["CoatStar"][181865] = 1
tValentineCompetition_Data["CoatStar"][181965] = 1
tValentineCompetition_Data["CoatStar"][185375] = 1
tValentineCompetition_Data["CoatStar"][181375] = 1
tValentineCompetition_Data["CoatStar"][181475] = 1
tValentineCompetition_Data["CoatStar"][181575] = 1
tValentineCompetition_Data["CoatStar"][181675] = 1
tValentineCompetition_Data["CoatStar"][181775] = 1
tValentineCompetition_Data["CoatStar"][181875] = 1
tValentineCompetition_Data["CoatStar"][181975] = 1
tValentineCompetition_Data["CoatStar"][185385] = 1
tValentineCompetition_Data["CoatStar"][181385] = 1
tValentineCompetition_Data["CoatStar"][181485] = 1
tValentineCompetition_Data["CoatStar"][181585] = 1
tValentineCompetition_Data["CoatStar"][181685] = 1
tValentineCompetition_Data["CoatStar"][181785] = 1
tValentineCompetition_Data["CoatStar"][181885] = 1
tValentineCompetition_Data["CoatStar"][181985] = 1
tValentineCompetition_Data["CoatStar"][185395] = 1
tValentineCompetition_Data["CoatStar"][181395] = 1
tValentineCompetition_Data["CoatStar"][186305] = 1
tValentineCompetition_Data["CoatStar"][182305] = 1
tValentineCompetition_Data["CoatStar"][182405] = 1
tValentineCompetition_Data["CoatStar"][182505] = 1
tValentineCompetition_Data["CoatStar"][182605] = 1
tValentineCompetition_Data["CoatStar"][182705] = 1
tValentineCompetition_Data["CoatStar"][182805] = 1
tValentineCompetition_Data["CoatStar"][182905] = 1
tValentineCompetition_Data["CoatStar"][186315] = 1
tValentineCompetition_Data["CoatStar"][182315] = 1
tValentineCompetition_Data["CoatStar"][182415] = 1
tValentineCompetition_Data["CoatStar"][182515] = 1
tValentineCompetition_Data["CoatStar"][182615] = 1
tValentineCompetition_Data["CoatStar"][182715] = 1
tValentineCompetition_Data["CoatStar"][182815] = 1
tValentineCompetition_Data["CoatStar"][182915] = 1
tValentineCompetition_Data["CoatStar"][186325] = 1
tValentineCompetition_Data["CoatStar"][182325] = 1
tValentineCompetition_Data["CoatStar"][182425] = 1
tValentineCompetition_Data["CoatStar"][182525] = 1
tValentineCompetition_Data["CoatStar"][182625] = 1
tValentineCompetition_Data["CoatStar"][182725] = 1
tValentineCompetition_Data["CoatStar"][182825] = 1
tValentineCompetition_Data["CoatStar"][182925] = 1
tValentineCompetition_Data["CoatStar"][183305] = 1
tValentineCompetition_Data["CoatStar"][188465] = 1
tValentineCompetition_Data["CoatStar"][186385] = 1
tValentineCompetition_Data["CoatStar"][182385] = 1
tValentineCompetition_Data["CoatStar"][182485] = 1
tValentineCompetition_Data["CoatStar"][182585] = 1
tValentineCompetition_Data["CoatStar"][182685] = 1
tValentineCompetition_Data["CoatStar"][182785] = 1
tValentineCompetition_Data["CoatStar"][182885] = 1
tValentineCompetition_Data["CoatStar"][182985] = 1
tValentineCompetition_Data["CoatStar"][186375] = 1
tValentineCompetition_Data["CoatStar"][182375] = 1
tValentineCompetition_Data["CoatStar"][186365] = 1
tValentineCompetition_Data["CoatStar"][182365] = 1
tValentineCompetition_Data["CoatStar"][182465] = 1
tValentineCompetition_Data["CoatStar"][182565] = 1
tValentineCompetition_Data["CoatStar"][182665] = 1
tValentineCompetition_Data["CoatStar"][182765] = 1
tValentineCompetition_Data["CoatStar"][182865] = 1
tValentineCompetition_Data["CoatStar"][182965] = 1
tValentineCompetition_Data["CoatStar"][182355] = 1
tValentineCompetition_Data["CoatStar"][186355] = 1
tValentineCompetition_Data["CoatStar"][187995] = 1
tValentineCompetition_Data["CoatStar"][186345] = 1
tValentineCompetition_Data["CoatStar"][182345] = 1
tValentineCompetition_Data["CoatStar"][182445] = 1
tValentineCompetition_Data["CoatStar"][182545] = 1
tValentineCompetition_Data["CoatStar"][182645] = 1
tValentineCompetition_Data["CoatStar"][182745] = 1
tValentineCompetition_Data["CoatStar"][182845] = 1
tValentineCompetition_Data["CoatStar"][182945] = 1
tValentineCompetition_Data["CoatStar"][186335] = 1
tValentineCompetition_Data["CoatStar"][182335] = 1
tValentineCompetition_Data["CoatStar"][182435] = 1
tValentineCompetition_Data["CoatStar"][182535] = 1
tValentineCompetition_Data["CoatStar"][182635] = 1
tValentineCompetition_Data["CoatStar"][182735] = 1
tValentineCompetition_Data["CoatStar"][182835] = 1
tValentineCompetition_Data["CoatStar"][182935] = 1
tValentineCompetition_Data["CoatStar"][185925] = 1
tValentineCompetition_Data["CoatStar"][181925] = 1
tValentineCompetition_Data["CoatStar"][185825] = 1
tValentineCompetition_Data["CoatStar"][181825] = 1
tValentineCompetition_Data["CoatStar"][181325] = 1
tValentineCompetition_Data["CoatStar"][185325] = 1
tValentineCompetition_Data["CoatStar"][181425] = 1
tValentineCompetition_Data["CoatStar"][185425] = 1
tValentineCompetition_Data["CoatStar"][181525] = 1
tValentineCompetition_Data["CoatStar"][185525] = 1
tValentineCompetition_Data["CoatStar"][181625] = 1
tValentineCompetition_Data["CoatStar"][185625] = 1
tValentineCompetition_Data["CoatStar"][181725] = 1
tValentineCompetition_Data["CoatStar"][185725] = 1
tValentineCompetition_Data["CoatStar"][181915] = 1
tValentineCompetition_Data["CoatStar"][185915] = 1
tValentineCompetition_Data["CoatStar"][181615] = 1
tValentineCompetition_Data["CoatStar"][185615] = 1
tValentineCompetition_Data["CoatStar"][181315] = 1
tValentineCompetition_Data["CoatStar"][185315] = 1
tValentineCompetition_Data["CoatStar"][181415] = 1
tValentineCompetition_Data["CoatStar"][181515] = 1
tValentineCompetition_Data["CoatStar"][181715] = 1
tValentineCompetition_Data["CoatStar"][185715] = 1
tValentineCompetition_Data["CoatStar"][181815] = 1
tValentineCompetition_Data["CoatStar"][181905] = 1
tValentineCompetition_Data["CoatStar"][185905] = 1
tValentineCompetition_Data["CoatStar"][181305] = 1
tValentineCompetition_Data["CoatStar"][185305] = 1
tValentineCompetition_Data["CoatStar"][181405] = 1
tValentineCompetition_Data["CoatStar"][181505] = 1
tValentineCompetition_Data["CoatStar"][181605] = 1
tValentineCompetition_Data["CoatStar"][185605] = 1
tValentineCompetition_Data["CoatStar"][181705] = 1
tValentineCompetition_Data["CoatStar"][185705] = 1
tValentineCompetition_Data["CoatStar"][181805] = 1
tValentineCompetition_Data["CoatStar"][200000] = 1
tValentineCompetition_Data["CoatStar"][200206] = 1
tValentineCompetition_Data["CoatStar"][200001] = 1
tValentineCompetition_Data["CoatStar"][200207] = 1
tValentineCompetition_Data["CoatStar"][200004] = 1
tValentineCompetition_Data["CoatStar"][200210] = 1
tValentineCompetition_Data["CoatStar"][200006] = 1
tValentineCompetition_Data["CoatStar"][200211] = 1
tValentineCompetition_Data["CoatStar"][200018] = 1
tValentineCompetition_Data["CoatStar"][200200] = 1
tValentineCompetition_Data["CoatStar"][200019] = 1
tValentineCompetition_Data["CoatStar"][200201] = 1
tValentineCompetition_Data["CoatStar"][200020] = 1
tValentineCompetition_Data["CoatStar"][200202] = 1
tValentineCompetition_Data["CoatStar"][200203] = 1
tValentineCompetition_Data["CoatStar"][200015] = 1
tValentineCompetition_Data["CoatStar"][200204] = 1
tValentineCompetition_Data["CoatStar"][200016] = 1
tValentineCompetition_Data["CoatStar"][200547] = 1
tValentineCompetition_Data["CoatStar"][200205] = 1
tValentineCompetition_Data["CoatStar"][200017] = 1
tValentineCompetition_Data["CoatStar"][200101] = 1
tValentineCompetition_Data["CoatStar"][200309] = 1
tValentineCompetition_Data["CoatStar"][200102] = 1
tValentineCompetition_Data["CoatStar"][200310] = 1
tValentineCompetition_Data["CoatStar"][200120] = 1
tValentineCompetition_Data["CoatStar"][200300] = 1
tValentineCompetition_Data["CoatStar"][200121] = 1
tValentineCompetition_Data["CoatStar"][200301] = 1
tValentineCompetition_Data["CoatStar"][200122] = 1
tValentineCompetition_Data["CoatStar"][200302] = 1
tValentineCompetition_Data["CoatStar"][200123] = 1
tValentineCompetition_Data["CoatStar"][200303] = 1
tValentineCompetition_Data["CoatStar"][200124] = 1
tValentineCompetition_Data["CoatStar"][200304] = 1
tValentineCompetition_Data["CoatStar"][200125] = 1
tValentineCompetition_Data["CoatStar"][200305] = 1
tValentineCompetition_Data["CoatStar"][200126] = 1
tValentineCompetition_Data["CoatStar"][200306] = 1
tValentineCompetition_Data["CoatStar"][183475] = 2
tValentineCompetition_Data["CoatStar"][183425] = 2
tValentineCompetition_Data["CoatStar"][191405] = 2
tValentineCompetition_Data["CoatStar"][191305] = 2
tValentineCompetition_Data["CoatStar"][191505] = 2
tValentineCompetition_Data["CoatStar"][191605] = 2
tValentineCompetition_Data["CoatStar"][191705] = 2
tValentineCompetition_Data["CoatStar"][191805] = 2
tValentineCompetition_Data["CoatStar"][191905] = 2
tValentineCompetition_Data["CoatStar"][188445] = 2
tValentineCompetition_Data["CoatStar"][192185] = 2
tValentineCompetition_Data["CoatStar"][181335] = 2
tValentineCompetition_Data["CoatStar"][181435] = 2
tValentineCompetition_Data["CoatStar"][181535] = 2
tValentineCompetition_Data["CoatStar"][181635] = 2
tValentineCompetition_Data["CoatStar"][181735] = 2
tValentineCompetition_Data["CoatStar"][181835] = 2
tValentineCompetition_Data["CoatStar"][181935] = 2
tValentineCompetition_Data["CoatStar"][185335] = 2
tValentineCompetition_Data["CoatStar"][188125] = 2
tValentineCompetition_Data["CoatStar"][184335] = 2
tValentineCompetition_Data["CoatStar"][188025] = 2
tValentineCompetition_Data["CoatStar"][188485] = 2
tValentineCompetition_Data["CoatStar"][187365] = 2
tValentineCompetition_Data["CoatStar"][188365] = 2
tValentineCompetition_Data["CoatStar"][181355] = 2
tValentineCompetition_Data["CoatStar"][181455] = 2
tValentineCompetition_Data["CoatStar"][181555] = 2
tValentineCompetition_Data["CoatStar"][181655] = 2
tValentineCompetition_Data["CoatStar"][181755] = 2
tValentineCompetition_Data["CoatStar"][181855] = 2
tValentineCompetition_Data["CoatStar"][181955] = 2
tValentineCompetition_Data["CoatStar"][188435] = 2
tValentineCompetition_Data["CoatStar"][185355] = 2
tValentineCompetition_Data["CoatStar"][184375] = 2
tValentineCompetition_Data["CoatStar"][184395] = 2
tValentineCompetition_Data["CoatStar"][188055] = 2
tValentineCompetition_Data["CoatStar"][184305] = 2
tValentineCompetition_Data["CoatStar"][183365] = 2
tValentineCompetition_Data["CoatStar"][187935] = 2
tValentineCompetition_Data["CoatStar"][188015] = 2
tValentineCompetition_Data["CoatStar"][188345] = 2
tValentineCompetition_Data["CoatStar"][183405] = 2
tValentineCompetition_Data["CoatStar"][183375] = 2
tValentineCompetition_Data["CoatStar"][183495] = 2
tValentineCompetition_Data["CoatStar"][183335] = 2
tValentineCompetition_Data["CoatStar"][187805] = 2
tValentineCompetition_Data["CoatStar"][183325] = 2
tValentineCompetition_Data["CoatStar"][188475] = 2
tValentineCompetition_Data["CoatStar"][183315] = 2
tValentineCompetition_Data["CoatStar"][187455] = 2
tValentineCompetition_Data["CoatStar"][187465] = 2
tValentineCompetition_Data["CoatStar"][188335] = 2
tValentineCompetition_Data["CoatStar"][187345] = 2
tValentineCompetition_Data["CoatStar"][187305] = 2
tValentineCompetition_Data["CoatStar"][188455] = 2
tValentineCompetition_Data["CoatStar"][188045] = 2
tValentineCompetition_Data["CoatStar"][187315] = 2
tValentineCompetition_Data["CoatStar"][188005] = 2
tValentineCompetition_Data["CoatStar"][187335] = 2
tValentineCompetition_Data["CoatStar"][184325] = 2
tValentineCompetition_Data["CoatStar"][189215] = 2
tValentineCompetition_Data["CoatStar"][193300] = 2
tValentineCompetition_Data["CoatStar"][192230] = 2
tValentineCompetition_Data["CoatStar"][192260] = 2
tValentineCompetition_Data["CoatStar"][187505] = 2
tValentineCompetition_Data["CoatStar"][193085] = 2
tValentineCompetition_Data["CoatStar"][193075] = 2
tValentineCompetition_Data["CoatStar"][193055] = 2
tValentineCompetition_Data["CoatStar"][193105] = 2
tValentineCompetition_Data["CoatStar"][193095] = 2
tValentineCompetition_Data["CoatStar"][193065] = 2
tValentineCompetition_Data["CoatStar"][193045] = 2
tValentineCompetition_Data["CoatStar"][193185] = 2
tValentineCompetition_Data["CoatStar"][188665] = 2
tValentineCompetition_Data["CoatStar"][187665] = 2
tValentineCompetition_Data["CoatStar"][188155] = 2
tValentineCompetition_Data["CoatStar"][188165] = 2
tValentineCompetition_Data["CoatStar"][188175] = 2
tValentineCompetition_Data["CoatStar"][189075] = 2
tValentineCompetition_Data["CoatStar"][189225] = 2
tValentineCompetition_Data["CoatStar"][188255] = 2
tValentineCompetition_Data["CoatStar"][188295] = 2
tValentineCompetition_Data["CoatStar"][188545] = 2
tValentineCompetition_Data["CoatStar"][193015] = 2
tValentineCompetition_Data["CoatStar"][200002] = 2
tValentineCompetition_Data["CoatStar"][200208] = 2
tValentineCompetition_Data["CoatStar"][200217] = 2
tValentineCompetition_Data["CoatStar"][200003] = 2
tValentineCompetition_Data["CoatStar"][200209] = 2
tValentineCompetition_Data["CoatStar"][200218] = 2
tValentineCompetition_Data["CoatStar"][200005] = 2
tValentineCompetition_Data["CoatStar"][200219] = 2
tValentineCompetition_Data["CoatStar"][200007] = 2
tValentineCompetition_Data["CoatStar"][200008] = 2
tValentineCompetition_Data["CoatStar"][200100] = 2
tValentineCompetition_Data["CoatStar"][200308] = 2
tValentineCompetition_Data["CoatStar"][200319] = 2
tValentineCompetition_Data["CoatStar"][200103] = 2
tValentineCompetition_Data["CoatStar"][200312] = 2
tValentineCompetition_Data["CoatStar"][200320] = 2
tValentineCompetition_Data["CoatStar"][200104] = 2
tValentineCompetition_Data["CoatStar"][200311] = 2
tValentineCompetition_Data["CoatStar"][200321] = 2
tValentineCompetition_Data["CoatStar"][200307] = 2
tValentineCompetition_Data["CoatStar"][200105] = 2
tValentineCompetition_Data["CoatStar"][200322] = 2
tValentineCompetition_Data["CoatStar"][200106] = 2
tValentineCompetition_Data["CoatStar"][200109] = 2
tValentineCompetition_Data["CoatStar"][200538] = 2
tValentineCompetition_Data["CoatStar"][200431] = 2
tValentineCompetition_Data["CoatStar"][200467] = 2
tValentineCompetition_Data["CoatStar"][200012] = 2
tValentineCompetition_Data["CoatStar"][200110] = 2
tValentineCompetition_Data["CoatStar"][200323] = 2
tValentineCompetition_Data["CoatStar"][200111] = 2
tValentineCompetition_Data["CoatStar"][200011] = 2
tValentineCompetition_Data["CoatStar"][193235] = 2
tValentineCompetition_Data["CoatStar"][193605] = 2
tValentineCompetition_Data["CoatStar"][194300] = 3
tValentineCompetition_Data["CoatStar"][192240] = 3
tValentineCompetition_Data["CoatStar"][192270] = 3
tValentineCompetition_Data["CoatStar"][192200] = 3
tValentineCompetition_Data["CoatStar"][193515] = 3
tValentineCompetition_Data["CoatStar"][193505] = 3
tValentineCompetition_Data["CoatStar"][193305] = 3
tValentineCompetition_Data["CoatStar"][193495] = 3
tValentineCompetition_Data["CoatStar"][192555] = 3
tValentineCompetition_Data["CoatStar"][193655] = 3
tValentineCompetition_Data["CoatStar"][192355] = 3
tValentineCompetition_Data["CoatStar"][192345] = 3
tValentineCompetition_Data["CoatStar"][189095] = 3
tValentineCompetition_Data["CoatStar"][189055] = 3
tValentineCompetition_Data["CoatStar"][189045] = 3
tValentineCompetition_Data["CoatStar"][189035] = 3
tValentineCompetition_Data["CoatStar"][188905] = 3
tValentineCompetition_Data["CoatStar"][188895] = 3
tValentineCompetition_Data["CoatStar"][188885] = 3
tValentineCompetition_Data["CoatStar"][184355] = 3
tValentineCompetition_Data["CoatStar"][187925] = 3
tValentineCompetition_Data["CoatStar"][187985] = 3
tValentineCompetition_Data["CoatStar"][184365] = 3
tValentineCompetition_Data["CoatStar"][187475] = 3
tValentineCompetition_Data["CoatStar"][187855] = 3
tValentineCompetition_Data["CoatStar"][187865] = 3
tValentineCompetition_Data["CoatStar"][187875] = 3
tValentineCompetition_Data["CoatStar"][187885] = 3
tValentineCompetition_Data["CoatStar"][184405] = 3
tValentineCompetition_Data["CoatStar"][184385] = 3
tValentineCompetition_Data["CoatStar"][188355] = 3
tValentineCompetition_Data["CoatStar"][187675] = 3
tValentineCompetition_Data["CoatStar"][183485] = 3
tValentineCompetition_Data["CoatStar"][188245] = 3
tValentineCompetition_Data["CoatStar"][188925] = 3
tValentineCompetition_Data["CoatStar"][188935] = 3
tValentineCompetition_Data["CoatStar"][188945] = 3
tValentineCompetition_Data["CoatStar"][188955] = 3
tValentineCompetition_Data["CoatStar"][188575] = 3
tValentineCompetition_Data["CoatStar"][189245] = 3
tValentineCompetition_Data["CoatStar"][192685] = 3
tValentineCompetition_Data["CoatStar"][192675] = 3
tValentineCompetition_Data["CoatStar"][192665] = 3
tValentineCompetition_Data["CoatStar"][192655] = 3
tValentineCompetition_Data["CoatStar"][192300] = 3
tValentineCompetition_Data["CoatStar"][187735] = 3
tValentineCompetition_Data["CoatStar"][192250] = 3
tValentineCompetition_Data["CoatStar"][192280] = 3
tValentineCompetition_Data["CoatStar"][189105] = 3
tValentineCompetition_Data["CoatStar"][188655] = 3
tValentineCompetition_Data["CoatStar"][188285] = 3
tValentineCompetition_Data["CoatStar"][189235] = 3
tValentineCompetition_Data["CoatStar"][183385] = 3
tValentineCompetition_Data["CoatStar"][187915] = 3
tValentineCompetition_Data["CoatStar"][187975] = 3
tValentineCompetition_Data["CoatStar"][183395] = 3
tValentineCompetition_Data["CoatStar"][187905] = 3
tValentineCompetition_Data["CoatStar"][187965] = 3
tValentineCompetition_Data["CoatStar"][183345] = 3
tValentineCompetition_Data["CoatStar"][187945] = 3
tValentineCompetition_Data["CoatStar"][188035] = 3
tValentineCompetition_Data["CoatStar"][187355] = 3
tValentineCompetition_Data["CoatStar"][184345] = 3
tValentineCompetition_Data["CoatStar"][187685] = 3
tValentineCompetition_Data["CoatStar"][187765] = 3
tValentineCompetition_Data["CoatStar"][188115] = 3
tValentineCompetition_Data["CoatStar"][187955] = 3
tValentineCompetition_Data["CoatStar"][188065] = 3
tValentineCompetition_Data["CoatStar"][184315] = 3
tValentineCompetition_Data["CoatStar"][188205] = 3
tValentineCompetition_Data["CoatStar"][188225] = 3
tValentineCompetition_Data["CoatStar"][187515] = 3
tValentineCompetition_Data["CoatStar"][183465] = 3
tValentineCompetition_Data["CoatStar"][188405] = 3
tValentineCompetition_Data["CoatStar"][192375] = 3
tValentineCompetition_Data["CoatStar"][192310] = 3
tValentineCompetition_Data["CoatStar"][192395] = 3
tValentineCompetition_Data["CoatStar"][187605] = 3
tValentineCompetition_Data["CoatStar"][189155] = 3
tValentineCompetition_Data["CoatStar"][187425] = 3
tValentineCompetition_Data["CoatStar"][188105] = 3
tValentineCompetition_Data["CoatStar"][188725] = 3
tValentineCompetition_Data["CoatStar"][192575] = 3
tValentineCompetition_Data["CoatStar"][192805] = 3
tValentineCompetition_Data["CoatStar"][192815] = 3
tValentineCompetition_Data["CoatStar"][192825] = 3
tValentineCompetition_Data["CoatStar"][192565] = 3
tValentineCompetition_Data["CoatStar"][189255] = 3
tValentineCompetition_Data["CoatStar"][188085] = 3
tValentineCompetition_Data["CoatStar"][188705] = 3
tValentineCompetition_Data["CoatStar"][193025] = 3
tValentineCompetition_Data["CoatStar"][193035] = 3
tValentineCompetition_Data["CoatStar"][200010] = 3
tValentineCompetition_Data["CoatStar"][200108] = 3
tValentineCompetition_Data["CoatStar"][200009] = 3
tValentineCompetition_Data["CoatStar"][200107] = 3
tValentineCompetition_Data["CoatStar"][200409] = 3
tValentineCompetition_Data["CoatStar"][200425] = 3
tValentineCompetition_Data["CoatStar"][200407] = 3
tValentineCompetition_Data["CoatStar"][200413] = 3
tValentineCompetition_Data["CoatStar"][200420] = 3
tValentineCompetition_Data["CoatStar"][200466] = 3
tValentineCompetition_Data["CoatStar"][200403] = 3
tValentineCompetition_Data["CoatStar"][200411] = 3
tValentineCompetition_Data["CoatStar"][200414] = 3
tValentineCompetition_Data["CoatStar"][200415] = 3
tValentineCompetition_Data["CoatStar"][200465] = 3
tValentineCompetition_Data["CoatStar"][200418] = 3
tValentineCompetition_Data["CoatStar"][200562] = 3
tValentineCompetition_Data["CoatStar"][200419] = 3
tValentineCompetition_Data["CoatStar"][200437] = 3
tValentineCompetition_Data["CoatStar"][200438] = 3
tValentineCompetition_Data["CoatStar"][200456] = 3
tValentineCompetition_Data["CoatStar"][200444] = 3
tValentineCompetition_Data["CoatStar"][200439] = 3
tValentineCompetition_Data["CoatStar"][200441] = 3
tValentineCompetition_Data["CoatStar"][200427] = 3
tValentineCompetition_Data["CoatStar"][200447] = 3
tValentineCompetition_Data["CoatStar"][200443] = 3
tValentineCompetition_Data["CoatStar"][200476] = 3
tValentineCompetition_Data["CoatStar"][200491] = 3
tValentineCompetition_Data["CoatStar"][200492] = 3
tValentineCompetition_Data["CoatStar"][200503] = 3
tValentineCompetition_Data["CoatStar"][200514] = 3
tValentineCompetition_Data["CoatStar"][200515] = 3
tValentineCompetition_Data["CoatStar"][200516] = 3
tValentineCompetition_Data["CoatStar"][200528] = 3
tValentineCompetition_Data["CoatStar"][200529] = 3
tValentineCompetition_Data["CoatStar"][200530] = 3
tValentineCompetition_Data["CoatStar"][200421] = 3
tValentineCompetition_Data["CoatStar"][200446] = 3
tValentineCompetition_Data["CoatStar"][200499] = 3
tValentineCompetition_Data["CoatStar"][200481] = 3
tValentineCompetition_Data["CoatStar"][200417] = 3
tValentineCompetition_Data["CoatStar"][200490] = 3
tValentineCompetition_Data["CoatStar"][200426] = 3
tValentineCompetition_Data["CoatStar"][200416] = 3
tValentineCompetition_Data["CoatStar"][200474] = 3
tValentineCompetition_Data["CoatStar"][200487] = 3
tValentineCompetition_Data["CoatStar"][200488] = 3
tValentineCompetition_Data["CoatStar"][200433] = 3
tValentineCompetition_Data["CoatStar"][200454] = 3
tValentineCompetition_Data["CoatStar"][200442] = 3
tValentineCompetition_Data["CoatStar"][200445] = 3
tValentineCompetition_Data["CoatStar"][200440] = 3
tValentineCompetition_Data["CoatStar"][200461] = 3
tValentineCompetition_Data["CoatStar"][200455] = 3
tValentineCompetition_Data["CoatStar"][200459] = 3
tValentineCompetition_Data["CoatStar"][200458] = 3
tValentineCompetition_Data["CoatStar"][200463] = 3
tValentineCompetition_Data["CoatStar"][200412] = 3
tValentineCompetition_Data["CoatStar"][200464] = 3
tValentineCompetition_Data["CoatStar"][200493] = 3
tValentineCompetition_Data["CoatStar"][193635] = 3
tValentineCompetition_Data["CoatStar"][193715] = 3
tValentineCompetition_Data["CoatStar"][193535] = 3
tValentineCompetition_Data["CoatStar"][193545] = 3
tValentineCompetition_Data["CoatStar"][200541] = 3
tValentineCompetition_Data["CoatStar"][200542] = 3
tValentineCompetition_Data["CoatStar"][200527] = 3
tValentineCompetition_Data["CoatStar"][193735] = 3
tValentineCompetition_Data["CoatStar"][193745] = 3
tValentineCompetition_Data["CoatStar"][193755] = 3
tValentineCompetition_Data["CoatStar"][193765] = 3
tValentineCompetition_Data["CoatStar"][200553] = 3
tValentineCompetition_Data["CoatStar"][200554] = 3
tValentineCompetition_Data["CoatStar"][200555] = 3
tValentineCompetition_Data["CoatStar"][200556] = 3
tValentineCompetition_Data["CoatStar"][200557] = 3
tValentineCompetition_Data["CoatStar"][200558] = 3
tValentineCompetition_Data["CoatStar"][200570] = 3
tValentineCompetition_Data["CoatStar"][200571] = 3
tValentineCompetition_Data["CoatStar"][194375] = 3
tValentineCompetition_Data["CoatStar"][200584] = 3
tValentineCompetition_Data["CoatStar"][200585] = 3
tValentineCompetition_Data["CoatStar"][200586] = 3
tValentineCompetition_Data["CoatStar"][200587] = 3
tValentineCompetition_Data["CoatStar"][200588] = 3
tValentineCompetition_Data["CoatStar"][194655] = 3
tValentineCompetition_Data["CoatStar"][194665] = 3
tValentineCompetition_Data["CoatStar"][194675] = 3
tValentineCompetition_Data["CoatStar"][194685] = 3
tValentineCompetition_Data["CoatStar"][189665] = 3
tValentineCompetition_Data["CoatStar"][194865] = 3
tValentineCompetition_Data["CoatStar"][194965] = 3
tValentineCompetition_Data["CoatStar"][189685] = 3
tValentineCompetition_Data["CoatStar"][200618] = 3
tValentineCompetition_Data["CoatStar"][200619] = 3
tValentineCompetition_Data["CoatStar"][200620] = 3
tValentineCompetition_Data["CoatStar"][195055] = 3
tValentineCompetition_Data["CoatStar"][195085] = 3
tValentineCompetition_Data["CoatStar"][195095] = 3
tValentineCompetition_Data["CoatStar"][195105] = 3
tValentineCompetition_Data["CoatStar"][195115] = 3
tValentineCompetition_Data["CoatStar"][195235] = 3
tValentineCompetition_Data["CoatStar"][193725] = 3
tValentineCompetition_Data["CoatStar"][195245] = 3
tValentineCompetition_Data["CoatStar"][195255] = 3
tValentineCompetition_Data["CoatStar"][195265] = 3
tValentineCompetition_Data["CoatStar"][195275] = 3
tValentineCompetition_Data["CoatStar"][195285] = 3
tValentineCompetition_Data["CoatStar"][195215] = 3
tValentineCompetition_Data["CoatStar"][200625] = 3
tValentineCompetition_Data["CoatStar"][195415] = 3
tValentineCompetition_Data["CoatStar"][195025] = 3
tValentineCompetition_Data["CoatStar"][188975] = 3
tValentineCompetition_Data["CoatStar"][195505] = 3
tValentineCompetition_Data["CoatStar"][195595] = 3
tValentineCompetition_Data["CoatStar"][189785] = 3
tValentineCompetition_Data["CoatStar"][195495] = 3
tValentineCompetition_Data["CoatStar"][195615] = 3
tValentineCompetition_Data["CoatStar"][195635] = 3
tValentineCompetition_Data["CoatStar"][200645] = 3
tValentineCompetition_Data["CoatStar"][200641] = 3
tValentineCompetition_Data["CoatStar"][200642] = 3
tValentineCompetition_Data["CoatStar"][200643] = 3
tValentineCompetition_Data["CoatStar"][195065] = 3
tValentineCompetition_Data["CoatStar"][195785] = 3
tValentineCompetition_Data["CoatStar"][200651] = 3
tValentineCompetition_Data["CoatStar"][193225] = 4
tValentineCompetition_Data["CoatStar"][192465] = 4
tValentineCompetition_Data["CoatStar"][189085] = 4
tValentineCompetition_Data["CoatStar"][188395] = 4
tValentineCompetition_Data["CoatStar"][187775] = 4
tValentineCompetition_Data["CoatStar"][187785] = 4
tValentineCompetition_Data["CoatStar"][187795] = 4
tValentineCompetition_Data["CoatStar"][188515] = 4
tValentineCompetition_Data["CoatStar"][189145] = 4
tValentineCompetition_Data["CoatStar"][187415] = 4
tValentineCompetition_Data["CoatStar"][188095] = 4
tValentineCompetition_Data["CoatStar"][188715] = 4
tValentineCompetition_Data["CoatStar"][187575] = 4
tValentineCompetition_Data["CoatStar"][187635] = 4
tValentineCompetition_Data["CoatStar"][192195] = 4
tValentineCompetition_Data["CoatStar"][192165] = 4
tValentineCompetition_Data["CoatStar"][193115] = 4
tValentineCompetition_Data["CoatStar"][192495] = 4
tValentineCompetition_Data["CoatStar"][192425] = 4
tValentineCompetition_Data["CoatStar"][192745] = 4
tValentineCompetition_Data["CoatStar"][192755] = 4
tValentineCompetition_Data["CoatStar"][192765] = 4
tValentineCompetition_Data["CoatStar"][192775] = 4
tValentineCompetition_Data["CoatStar"][193195] = 4
tValentineCompetition_Data["CoatStar"][192125] = 4
tValentineCompetition_Data["CoatStar"][192135] = 4
tValentineCompetition_Data["CoatStar"][192615] = 4
tValentineCompetition_Data["CoatStar"][192635] = 4
tValentineCompetition_Data["CoatStar"][192695] = 4
tValentineCompetition_Data["CoatStar"][192925] = 4
tValentineCompetition_Data["CoatStar"][192935] = 4
tValentineCompetition_Data["CoatStar"][187325] = 4
tValentineCompetition_Data["CoatStar"][192785] = 4
tValentineCompetition_Data["CoatStar"][192625] = 4
tValentineCompetition_Data["CoatStar"][188675] = 4
tValentineCompetition_Data["CoatStar"][192525] = 4
tValentineCompetition_Data["CoatStar"][192435] = 4
tValentineCompetition_Data["CoatStar"][192645] = 4
tValentineCompetition_Data["CoatStar"][192311] = 4
tValentineCompetition_Data["CoatStar"][192335] = 4
tValentineCompetition_Data["CoatStar"][188625] = 4
tValentineCompetition_Data["CoatStar"][192325] = 4
tValentineCompetition_Data["CoatStar"][192365] = 4
tValentineCompetition_Data["CoatStar"][189265] = 4
tValentineCompetition_Data["CoatStar"][188755] = 4
tValentineCompetition_Data["CoatStar"][188845] = 4
tValentineCompetition_Data["CoatStar"][188495] = 4
tValentineCompetition_Data["CoatStar"][193295] = 4
tValentineCompetition_Data["CoatStar"][193685] = 4
tValentineCompetition_Data["CoatStar"][192895] = 4
tValentineCompetition_Data["CoatStar"][192605] = 4
tValentineCompetition_Data["CoatStar"][188265] = 4
tValentineCompetition_Data["CoatStar"][200549] = 4
tValentineCompetition_Data["CoatStar"][200453] = 4
tValentineCompetition_Data["CoatStar"][200475] = 4
tValentineCompetition_Data["CoatStar"][200477] = 4
tValentineCompetition_Data["CoatStar"][200478] = 4
tValentineCompetition_Data["CoatStar"][200479] = 4
tValentineCompetition_Data["CoatStar"][200480] = 4
tValentineCompetition_Data["CoatStar"][200485] = 4
tValentineCompetition_Data["CoatStar"][200486] = 4
tValentineCompetition_Data["CoatStar"][200539] = 4
tValentineCompetition_Data["CoatStar"][200495] = 4
tValentineCompetition_Data["CoatStar"][200500] = 4
tValentineCompetition_Data["CoatStar"][193555] = 4
tValentineCompetition_Data["CoatStar"][200543] = 4
tValentineCompetition_Data["CoatStar"][193695] = 4
tValentineCompetition_Data["CoatStar"][193325] = 4
tValentineCompetition_Data["CoatStar"][193205] = 4
tValentineCompetition_Data["CoatStar"][200563] = 4
tValentineCompetition_Data["CoatStar"][193775] = 4
tValentineCompetition_Data["CoatStar"][193785] = 4
tValentineCompetition_Data["CoatStar"][193795] = 4
tValentineCompetition_Data["CoatStar"][193805] = 4
tValentineCompetition_Data["CoatStar"][193815] = 4
tValentineCompetition_Data["CoatStar"][193825] = 4
tValentineCompetition_Data["CoatStar"][200574] = 4
tValentineCompetition_Data["CoatStar"][188185] = 4
tValentineCompetition_Data["CoatStar"][194385] = 4
tValentineCompetition_Data["CoatStar"][200589] = 4
tValentineCompetition_Data["CoatStar"][200590] = 4
tValentineCompetition_Data["CoatStar"][200591] = 4
tValentineCompetition_Data["CoatStar"][200593] = 4
tValentineCompetition_Data["CoatStar"][194405] = 4
tValentineCompetition_Data["CoatStar"][200595] = 4
tValentineCompetition_Data["CoatStar"][189645] = 4
tValentineCompetition_Data["CoatStar"][194695] = 4
tValentineCompetition_Data["CoatStar"][194705] = 4
tValentineCompetition_Data["CoatStar"][194715] = 4
tValentineCompetition_Data["CoatStar"][194725] = 4
tValentineCompetition_Data["CoatStar"][200525] = 4
tValentineCompetition_Data["CoatStar"][200471] = 4
tValentineCompetition_Data["CoatStar"][200621] = 4
tValentineCompetition_Data["CoatStar"][200622] = 4
tValentineCompetition_Data["CoatStar"][194885] = 4
tValentineCompetition_Data["CoatStar"][194895] = 4
tValentineCompetition_Data["CoatStar"][194905] = 4
tValentineCompetition_Data["CoatStar"][194915] = 4
tValentineCompetition_Data["CoatStar"][194925] = 4
tValentineCompetition_Data["CoatStar"][194935] = 4
tValentineCompetition_Data["CoatStar"][194945] = 4
tValentineCompetition_Data["CoatStar"][195175] = 4
tValentineCompetition_Data["CoatStar"][195185] = 4
tValentineCompetition_Data["CoatStar"][195195] = 4
tValentineCompetition_Data["CoatStar"][195205] = 4
tValentineCompetition_Data["CoatStar"][195295] = 4
tValentineCompetition_Data["CoatStar"][195305] = 4
tValentineCompetition_Data["CoatStar"][195315] = 4
tValentineCompetition_Data["CoatStar"][195325] = 4
tValentineCompetition_Data["CoatStar"][195335] = 4
tValentineCompetition_Data["CoatStar"][195345] = 4
tValentineCompetition_Data["CoatStar"][195375] = 4
tValentineCompetition_Data["CoatStar"][195515] = 4
tValentineCompetition_Data["CoatStar"][200579] = 4
tValentineCompetition_Data["CoatStar"][192145] = 4
tValentineCompetition_Data["CoatStar"][189135] = 5
tValentineCompetition_Data["CoatStar"][187405] = 5
tValentineCompetition_Data["CoatStar"][189065] = 5
tValentineCompetition_Data["CoatStar"][193275] = 5
tValentineCompetition_Data["CoatStar"][188915] = 5
tValentineCompetition_Data["CoatStar"][193445] = 5
tValentineCompetition_Data["CoatStar"][193525] = 5
tValentineCompetition_Data["CoatStar"][200494] = 5
tValentineCompetition_Data["CoatStar"][200517] = 5
tValentineCompetition_Data["CoatStar"][200531] = 5
tValentineCompetition_Data["CoatStar"][200540] = 5
tValentineCompetition_Data["CoatStar"][200482] = 5
tValentineCompetition_Data["CoatStar"][200021] = 5
tValentineCompetition_Data["CoatStar"][200022] = 5
tValentineCompetition_Data["CoatStar"][200220] = 5
tValentineCompetition_Data["CoatStar"][200221] = 5
tValentineCompetition_Data["CoatStar"][200449] = 5
tValentineCompetition_Data["CoatStar"][200410] = 5
tValentineCompetition_Data["CoatStar"][200428] = 5
tValentineCompetition_Data["CoatStar"][193565] = 5
tValentineCompetition_Data["CoatStar"][200544] = 5
tValentineCompetition_Data["CoatStar"][193625] = 5
tValentineCompetition_Data["CoatStar"][200559] = 5
tValentineCompetition_Data["CoatStar"][200560] = 5
tValentineCompetition_Data["CoatStar"][200564] = 5
tValentineCompetition_Data["CoatStar"][200537] = 5
tValentineCompetition_Data["CoatStar"][200575] = 5
tValentineCompetition_Data["CoatStar"][200572] = 5
tValentineCompetition_Data["CoatStar"][200573] = 5
tValentineCompetition_Data["CoatStar"][200524] = 5
tValentineCompetition_Data["CoatStar"][194395] = 5
tValentineCompetition_Data["CoatStar"][200592] = 5
tValentineCompetition_Data["CoatStar"][200596] = 5
tValentineCompetition_Data["CoatStar"][189675] = 5
tValentineCompetition_Data["CoatStar"][200580] = 5
tValentineCompetition_Data["CoatStar"][194875] = 5
tValentineCompetition_Data["CoatStar"][200613] = 5
tValentineCompetition_Data["CoatStar"][200614] = 5
tValentineCompetition_Data["CoatStar"][189695] = 5
tValentineCompetition_Data["CoatStar"][200623] = 5
tValentineCompetition_Data["CoatStar"][200624] = 5
tValentineCompetition_Data["CoatStar"][195045] = 5
tValentineCompetition_Data["CoatStar"][200533] = 5
tValentineCompetition_Data["CoatStar"][195365] = 5
tValentineCompetition_Data["CoatStar"][200601] = 5
tValentineCompetition_Data["CoatStar"][195225] = 5
tValentineCompetition_Data["CoatStar"][200626] = 5
tValentineCompetition_Data["CoatStar"][195405] = 5
tValentineCompetition_Data["CoatStar"][200629] = 5
tValentineCompetition_Data["CoatStar"][195015] = 5
tValentineCompetition_Data["CoatStar"][200532] = 5
tValentineCompetition_Data["CoatStar"][195485] = 5
tValentineCompetition_Data["CoatStar"][195605] = 5
tValentineCompetition_Data["CoatStar"][195425] = 5
tValentineCompetition_Data["CoatStar"][200606] = 5
tValentineCompetition_Data["CoatStar"][195625] = 5
tValentineCompetition_Data["CoatStar"][200644] = 5
tValentineCompetition_Data["CoatStar"][195645] = 5
tValentineCompetition_Data["CoatStar"][200646] = 5
tValentineCompetition_Data["CoatStar"][200637] = 5
tValentineCompetition_Data["CoatStar"][200638] = 5
tValentineCompetition_Data["CoatStar"][200639] = 5
tValentineCompetition_Data["CoatStar"][200640] = 5
tValentineCompetition_Data["CoatStar"][195575] = 5
tValentineCompetition_Data["CoatStar"][200647] = 5
tValentineCompetition_Data["CoatStar"][205000] = 5
tValentineCompetition_Data["CoatStar"][195795] = 5
tValentineCompetition_Data["CoatStar"][200652] = 5


-- 武器外套光效版
tValentineCompetition_Data["WeaponEffect"] = {}
tValentineCompetition_Data["WeaponEffect"][350030] = 1
tValentineCompetition_Data["WeaponEffect"][350090] = 1
tValentineCompetition_Data["WeaponEffect"][350095] = 1
tValentineCompetition_Data["WeaponEffect"][350103] = 1
tValentineCompetition_Data["WeaponEffect"][350104] = 1
tValentineCompetition_Data["WeaponEffect"][350105] = 1
tValentineCompetition_Data["WeaponEffect"][350108] = 1
tValentineCompetition_Data["WeaponEffect"][360176] = 1
tValentineCompetition_Data["WeaponEffect"][360186] = 1
tValentineCompetition_Data["WeaponEffect"][360201] = 1
tValentineCompetition_Data["WeaponEffect"][360202] = 1
tValentineCompetition_Data["WeaponEffect"][360203] = 1
tValentineCompetition_Data["WeaponEffect"][360208] = 1
tValentineCompetition_Data["WeaponEffect"][360291] = 1
tValentineCompetition_Data["WeaponEffect"][370040] = 1
tValentineCompetition_Data["WeaponEffect"][370048] = 1
tValentineCompetition_Data["WeaponEffect"][380046] = 1
tValentineCompetition_Data["WeaponEffect"][380054] = 1


-- 稀有发型
tValentineCompetition_Data["RareHair"] = {}
tValentineCompetition_Data["RareHair"][28] = 1
tValentineCompetition_Data["RareHair"][29] = 1
tValentineCompetition_Data["RareHair"][30] = 1
tValentineCompetition_Data["RareHair"][31] = 1
tValentineCompetition_Data["RareHair"][32] = 1
tValentineCompetition_Data["RareHair"][33] = 1
tValentineCompetition_Data["RareHair"][34] = 1
tValentineCompetition_Data["RareHair"][35] = 1
tValentineCompetition_Data["RareHair"][36] = 1
tValentineCompetition_Data["RareHair"][37] = 1
tValentineCompetition_Data["RareHair"][38] = 1
tValentineCompetition_Data["RareHair"][63] = 1
tValentineCompetition_Data["RareHair"][65] = 1
tValentineCompetition_Data["RareHair"][66] = 1
tValentineCompetition_Data["RareHair"][67] = 1
tValentineCompetition_Data["RareHair"][68] = 1
tValentineCompetition_Data["RareHair"][69] = 1
tValentineCompetition_Data["RareHair"][70] = 1
tValentineCompetition_Data["RareHair"][71] = 1
tValentineCompetition_Data["RareHair"][72] = 1
tValentineCompetition_Data["RareHair"][73] = 1
tValentineCompetition_Data["RareHair"][74] = 1
tValentineCompetition_Data["RareHair"][75] = 1

-- 稀有翅膀
tValentineCompetition_Data["RareWing"] = {}
tValentineCompetition_Data["RareWing"][6001] = 1
tValentineCompetition_Data["RareWing"][6002] = 1
tValentineCompetition_Data["RareWing"][6005] = 1
tValentineCompetition_Data["RareWing"][6007] = 1
tValentineCompetition_Data["RareWing"][6009] = 1
tValentineCompetition_Data["RareWing"][6011] = 1
tValentineCompetition_Data["RareWing"][6012] = 1
tValentineCompetition_Data["RareWing"][6017] = 1
tValentineCompetition_Data["RareWing"][6020] = 1
tValentineCompetition_Data["RareWing"][6022] = 1
tValentineCompetition_Data["RareWing"][6021] = 1
tValentineCompetition_Data["RareWing"][6023] = 1
tValentineCompetition_Data["RareWing"][6025] = 1

-- 高级称号
tValentineCompetition_Data["SeniorTitle"] = {}
tValentineCompetition_Data["SeniorTitle"][9]    = 1
tValentineCompetition_Data["SeniorTitle"][2018] = 1
tValentineCompetition_Data["SeniorTitle"][2026] = 1
tValentineCompetition_Data["SeniorTitle"][2034] = 1
tValentineCompetition_Data["SeniorTitle"][2035] = 1
tValentineCompetition_Data["SeniorTitle"][2036] = 1
tValentineCompetition_Data["SeniorTitle"][2037] = 1
tValentineCompetition_Data["SeniorTitle"][2046] = 1
tValentineCompetition_Data["SeniorTitle"][2047] = 1
tValentineCompetition_Data["SeniorTitle"][2048] = 1
tValentineCompetition_Data["SeniorTitle"][2059] = 1
tValentineCompetition_Data["SeniorTitle"][2060] = 1
tValentineCompetition_Data["SeniorTitle"][2061] = 1
tValentineCompetition_Data["SeniorTitle"][2077] = 1
tValentineCompetition_Data["SeniorTitle"][2078] = 1
tValentineCompetition_Data["SeniorTitle"][2079] = 1
tValentineCompetition_Data["SeniorTitle"][2080] = 1
tValentineCompetition_Data["SeniorTitle"][2081] = 1
tValentineCompetition_Data["SeniorTitle"][2088] = 1
tValentineCompetition_Data["SeniorTitle"][2090] = 1
tValentineCompetition_Data["SeniorTitle"][2123] = 1
tValentineCompetition_Data["SeniorTitle"][2142] = 1
tValentineCompetition_Data["SeniorTitle"][2143] = 1

tValentineCompetition_Data["SeniorTitle"][1]    = 2
tValentineCompetition_Data["SeniorTitle"][2001] = 2
tValentineCompetition_Data["SeniorTitle"][2002] = 2
tValentineCompetition_Data["SeniorTitle"][2003] = 2
tValentineCompetition_Data["SeniorTitle"][2004] = 2
tValentineCompetition_Data["SeniorTitle"][2005] = 2
tValentineCompetition_Data["SeniorTitle"][2006] = 2
tValentineCompetition_Data["SeniorTitle"][2013] = 2
tValentineCompetition_Data["SeniorTitle"][2014] = 2
tValentineCompetition_Data["SeniorTitle"][2015] = 2
tValentineCompetition_Data["SeniorTitle"][2016] = 2
tValentineCompetition_Data["SeniorTitle"][2020] = 2
tValentineCompetition_Data["SeniorTitle"][2021] = 2
tValentineCompetition_Data["SeniorTitle"][2022] = 2
tValentineCompetition_Data["SeniorTitle"][2023] = 2
tValentineCompetition_Data["SeniorTitle"][2024] = 2
tValentineCompetition_Data["SeniorTitle"][2025] = 2
tValentineCompetition_Data["SeniorTitle"][2027] = 2
tValentineCompetition_Data["SeniorTitle"][2028] = 2
tValentineCompetition_Data["SeniorTitle"][2029] = 2
tValentineCompetition_Data["SeniorTitle"][2030] = 2
tValentineCompetition_Data["SeniorTitle"][2031] = 2
tValentineCompetition_Data["SeniorTitle"][2032] = 2
tValentineCompetition_Data["SeniorTitle"][2033] = 2
tValentineCompetition_Data["SeniorTitle"][2038] = 2
tValentineCompetition_Data["SeniorTitle"][2040] = 2
tValentineCompetition_Data["SeniorTitle"][2041] = 2
tValentineCompetition_Data["SeniorTitle"][2044] = 2
tValentineCompetition_Data["SeniorTitle"][2045] = 2
tValentineCompetition_Data["SeniorTitle"][2049] = 2
tValentineCompetition_Data["SeniorTitle"][2050] = 2
tValentineCompetition_Data["SeniorTitle"][2051] = 2
tValentineCompetition_Data["SeniorTitle"][2052] = 2
tValentineCompetition_Data["SeniorTitle"][2053] = 2
tValentineCompetition_Data["SeniorTitle"][2054] = 2
tValentineCompetition_Data["SeniorTitle"][2056] = 2
tValentineCompetition_Data["SeniorTitle"][2057] = 2
tValentineCompetition_Data["SeniorTitle"][2062] = 2
tValentineCompetition_Data["SeniorTitle"][2063] = 2
tValentineCompetition_Data["SeniorTitle"][2064] = 2
tValentineCompetition_Data["SeniorTitle"][2065] = 2
tValentineCompetition_Data["SeniorTitle"][2082] = 2
tValentineCompetition_Data["SeniorTitle"][2083] = 2
tValentineCompetition_Data["SeniorTitle"][2084] = 2
tValentineCompetition_Data["SeniorTitle"][2085] = 2
tValentineCompetition_Data["SeniorTitle"][2086] = 2
tValentineCompetition_Data["SeniorTitle"][2087] = 2
tValentineCompetition_Data["SeniorTitle"][2089] = 2
tValentineCompetition_Data["SeniorTitle"][2091] = 2
tValentineCompetition_Data["SeniorTitle"][2092] = 2
tValentineCompetition_Data["SeniorTitle"][2100] = 2
tValentineCompetition_Data["SeniorTitle"][2101] = 2
tValentineCompetition_Data["SeniorTitle"][2102] = 2
tValentineCompetition_Data["SeniorTitle"][2103] = 2
tValentineCompetition_Data["SeniorTitle"][2124] = 2
tValentineCompetition_Data["SeniorTitle"][2125] = 2
tValentineCompetition_Data["SeniorTitle"][2126] = 2
tValentineCompetition_Data["SeniorTitle"][2127] = 2
tValentineCompetition_Data["SeniorTitle"][2128] = 2
tValentineCompetition_Data["SeniorTitle"][2129] = 2
tValentineCompetition_Data["SeniorTitle"][2130] = 2
tValentineCompetition_Data["SeniorTitle"][2131] = 2
tValentineCompetition_Data["SeniorTitle"][2132] = 2
tValentineCompetition_Data["SeniorTitle"][2133] = 2
tValentineCompetition_Data["SeniorTitle"][2134] = 2
tValentineCompetition_Data["SeniorTitle"][2135] = 2
tValentineCompetition_Data["SeniorTitle"][2136] = 2
tValentineCompetition_Data["SeniorTitle"][2216] = 2
tValentineCompetition_Data["SeniorTitle"][2138] = 2
tValentineCompetition_Data["SeniorTitle"][2139] = 2
tValentineCompetition_Data["SeniorTitle"][2140] = 2
tValentineCompetition_Data["SeniorTitle"][2141] = 2



-- 玩家掩码记录
local tValentineCompetition_Stc = {}
tValentineCompetition_Stc["EventType"] = {}
tValentineCompetition_Stc["DataType"] = {}
-- stc(190, 40)  1 、玩家当天最高分
tValentineCompetition_Stc["EventType"][1] = 190
tValentineCompetition_Stc["DataType"][1] = 40
-- stc(190, 41)  2 、玩家活动期间S个数
tValentineCompetition_Stc["EventType"][2] = 190
tValentineCompetition_Stc["DataType"][2] = 41
-- stc(190, 42)  3 、玩家时尚得分
tValentineCompetition_Stc["EventType"][3] = 190
tValentineCompetition_Stc["DataType"][3] = 42
-- stc(190, 43)  4 、今日参加评选二次确认
tValentineCompetition_Stc["EventType"][4] = 190
tValentineCompetition_Stc["DataType"][4] = 43
-- stc(190, 44)  5 、已领取的奖励
tValentineCompetition_Stc["EventType"][5] = 190
tValentineCompetition_Stc["DataType"][5] = 44
-- stc(190, 45)  6 、是否领取领礼物
tValentineCompetition_Stc["EventType"][6] = 190
tValentineCompetition_Stc["DataType"][6] = 45
-- stc(190, 46)  7 、8-14  时装外套套是否租借
tValentineCompetition_Stc["EventType"][7] = 190
tValentineCompetition_Stc["DataType"][7] = 46
-- stc(190, 47)  8 、1-7   坐骑外套是否租借
tValentineCompetition_Stc["EventType"][8] = 190
tValentineCompetition_Stc["DataType"][8] = 47
-- stc(190, 48)  9 、8-13  坐骑外套套是否租借
tValentineCompetition_Stc["EventType"][9] = 190
tValentineCompetition_Stc["DataType"][9] = 48
-- stc(190, 49)  10 、每日怪物掉落限量
tValentineCompetition_Stc["EventType"][10] = 190
tValentineCompetition_Stc["DataType"][10] = 49
-- stc(190, 50)  11 、显著功勋礼包限量
tValentineCompetition_Stc["EventType"][11] = 190
tValentineCompetition_Stc["DataType"][11] = 50
-- stc(190, 51)  12 、正气令限量
tValentineCompetition_Stc["EventType"][12] = 190
tValentineCompetition_Stc["DataType"][12] = 51
-- stc(190, 52)  13 、签到礼包限量
tValentineCompetition_Stc["EventType"][13] = 190
tValentineCompetition_Stc["DataType"][13] = 52
-- stc(190, 53)  14 、每日参与的次数
tValentineCompetition_Stc["EventType"][14] = 190
tValentineCompetition_Stc["DataType"][14] = 53




local tValentineCompetition_Reward = {}
-- 评分评级奖励
tValentineCompetition_Reward["GradingReward"] = {}
-- SS  熔炼道具*1   200气力值
tValentineCompetition_Reward["GradingReward"][1] = {}
tValentineCompetition_Reward["GradingReward"][1]["RewardItem"] = {}
tValentineCompetition_Reward["GradingReward"][1]["RewardItem"][1] = {}
tValentineCompetition_Reward["GradingReward"][1]["RewardItem"][1]["Id"] = 3320097
tValentineCompetition_Reward["GradingReward"][1]["RewardItem"][1]["Attr"] = "0 1"
tValentineCompetition_Reward["GradingReward"][1]["RewardItem"][2] = {}
tValentineCompetition_Reward["GradingReward"][1]["RewardItem"][2]["Id"] = 3200660
tValentineCompetition_Reward["GradingReward"][1]["RewardItem"][2]["Attr"] = "0 1"
tValentineCompetition_Reward["GradingReward"][1]["RewardEffect"] = {}
tValentineCompetition_Reward["GradingReward"][1]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["GradingReward"][1]["LogId"] = 12001284
tValentineCompetition_Reward["GradingReward"][1]["LogStep"] = "1[1]"
-- S  熔炼道具*1   100气力值
tValentineCompetition_Reward["GradingReward"][2] = {}
tValentineCompetition_Reward["GradingReward"][2]["RewardItem"] = {}
tValentineCompetition_Reward["GradingReward"][2]["RewardItem"][1] = {}
tValentineCompetition_Reward["GradingReward"][2]["RewardItem"][1]["Id"] = 3320097
tValentineCompetition_Reward["GradingReward"][2]["RewardItem"][1]["Attr"] = "0 1"
tValentineCompetition_Reward["GradingReward"][2]["RewardItem"][2] = {}
tValentineCompetition_Reward["GradingReward"][2]["RewardItem"][2]["Id"] = 3002027
tValentineCompetition_Reward["GradingReward"][2]["RewardItem"][2]["Attr"] = "0 1"
tValentineCompetition_Reward["GradingReward"][2]["RewardEffect"] = {}
tValentineCompetition_Reward["GradingReward"][2]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["GradingReward"][2]["LogId"] = 12001284
tValentineCompetition_Reward["GradingReward"][2]["LogStep"] = "1[2]"
-- A  熔炼道具*1
tValentineCompetition_Reward["GradingReward"][3] = {}
tValentineCompetition_Reward["GradingReward"][3]["RewardItem"] = {}
tValentineCompetition_Reward["GradingReward"][3]["RewardItem"][1] = {}
tValentineCompetition_Reward["GradingReward"][3]["RewardItem"][1]["Id"] = 3320097
tValentineCompetition_Reward["GradingReward"][3]["RewardItem"][1]["Attr"] = "0 1"
tValentineCompetition_Reward["GradingReward"][3]["RewardEffect"] = {}
tValentineCompetition_Reward["GradingReward"][3]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["GradingReward"][3]["LogId"] = 12001284
tValentineCompetition_Reward["GradingReward"][3]["LogStep"] = "1[3]"
-- B+  100点气力
tValentineCompetition_Reward["GradingReward"][4] = {}
tValentineCompetition_Reward["GradingReward"][4]["RewardItem"] = {}
tValentineCompetition_Reward["GradingReward"][4]["RewardItem"][1] = {}
tValentineCompetition_Reward["GradingReward"][4]["RewardItem"][1]["Id"] = 3002027
tValentineCompetition_Reward["GradingReward"][4]["RewardItem"][1]["Attr"] = "0 1"
tValentineCompetition_Reward["GradingReward"][4]["RewardEffect"] = {}
tValentineCompetition_Reward["GradingReward"][4]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["GradingReward"][4]["LogId"] = 12001284
tValentineCompetition_Reward["GradingReward"][4]["LogStep"] = "1[4]"
-- B  50点气力
tValentineCompetition_Reward["GradingReward"][5] = {}
tValentineCompetition_Reward["GradingReward"][5]["RewardItem"] = {}
tValentineCompetition_Reward["GradingReward"][5]["RewardItem"][1] = {}
tValentineCompetition_Reward["GradingReward"][5]["RewardItem"][1]["Id"] = 3304321
tValentineCompetition_Reward["GradingReward"][5]["RewardItem"][1]["Attr"] = "0 1"
tValentineCompetition_Reward["GradingReward"][5]["RewardEffect"] = {}
tValentineCompetition_Reward["GradingReward"][5]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["GradingReward"][5]["LogId"] = 12001284
tValentineCompetition_Reward["GradingReward"][5]["LogStep"] = "1[5]"

-- 时尚得分奖励
tValentineCompetition_Reward["PullulateReward"] = {}
-- 15000气力值
tValentineCompetition_Reward["PullulateReward"][7] = {}
tValentineCompetition_Reward["PullulateReward"][7]["RewardStrengthValue"] = {}
tValentineCompetition_Reward["PullulateReward"][7]["RewardStrengthValue"]["Value"] = 15000
tValentineCompetition_Reward["PullulateReward"][7]["RewardEffect"] = {}
tValentineCompetition_Reward["PullulateReward"][7]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["PullulateReward"][7]["LogId"] = 12001284
tValentineCompetition_Reward["PullulateReward"][7]["LogStep"] = "2[1]"
-- 12000气力值
tValentineCompetition_Reward["PullulateReward"][6] = {}
tValentineCompetition_Reward["PullulateReward"][6]["RewardStrengthValue"] = {}
tValentineCompetition_Reward["PullulateReward"][6]["RewardStrengthValue"]["Value"] = 12000
tValentineCompetition_Reward["PullulateReward"][6]["RewardEffect"] = {}
tValentineCompetition_Reward["PullulateReward"][6]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["PullulateReward"][6]["LogId"] = 12001284
tValentineCompetition_Reward["PullulateReward"][6]["LogStep"] = "2[2]"
-- 8000气力值
tValentineCompetition_Reward["PullulateReward"][5] = {}
tValentineCompetition_Reward["PullulateReward"][5]["RewardStrengthValue"] = {}
tValentineCompetition_Reward["PullulateReward"][5]["RewardStrengthValue"]["Value"] = 8000
tValentineCompetition_Reward["PullulateReward"][5]["RewardEffect"] = {}
tValentineCompetition_Reward["PullulateReward"][5]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["PullulateReward"][5]["LogId"] = 12001284
tValentineCompetition_Reward["PullulateReward"][5]["LogStep"] = "2[3]"
-- 5000气力值
tValentineCompetition_Reward["PullulateReward"][4] = {}
tValentineCompetition_Reward["PullulateReward"][4]["RewardStrengthValue"] = {}
tValentineCompetition_Reward["PullulateReward"][4]["RewardStrengthValue"]["Value"] = 5000
tValentineCompetition_Reward["PullulateReward"][4]["RewardEffect"] = {}
tValentineCompetition_Reward["PullulateReward"][4]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["PullulateReward"][4]["LogId"] = 12001284
tValentineCompetition_Reward["PullulateReward"][4]["LogStep"] = "2[4]"
-- 3000气力值
tValentineCompetition_Reward["PullulateReward"][3] = {}
tValentineCompetition_Reward["PullulateReward"][3]["RewardStrengthValue"] = {}
tValentineCompetition_Reward["PullulateReward"][3]["RewardStrengthValue"]["Value"] = 3000
tValentineCompetition_Reward["PullulateReward"][3]["RewardEffect"] = {}
tValentineCompetition_Reward["PullulateReward"][3]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["PullulateReward"][3]["LogId"] = 12001284
tValentineCompetition_Reward["PullulateReward"][3]["LogStep"] = "2[5]"
-- 1500气力值
tValentineCompetition_Reward["PullulateReward"][2] = {}
tValentineCompetition_Reward["PullulateReward"][2]["RewardStrengthValue"] = {}
tValentineCompetition_Reward["PullulateReward"][2]["RewardStrengthValue"]["Value"] = 1500
tValentineCompetition_Reward["PullulateReward"][2]["RewardEffect"] = {}
tValentineCompetition_Reward["PullulateReward"][2]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["PullulateReward"][2]["LogId"] = 12001284
tValentineCompetition_Reward["PullulateReward"][2]["LogStep"] = "2[6]"
-- 1000气力值
tValentineCompetition_Reward["PullulateReward"][1] = {}
tValentineCompetition_Reward["PullulateReward"][1]["RewardStrengthValue"] = {}
tValentineCompetition_Reward["PullulateReward"][1]["RewardStrengthValue"]["Value"] = 1000
tValentineCompetition_Reward["PullulateReward"][1]["RewardEffect"] = {}
tValentineCompetition_Reward["PullulateReward"][1]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["PullulateReward"][1]["LogId"] = 12001284
tValentineCompetition_Reward["PullulateReward"][1]["LogStep"] = "2[7]"


-- 一心龙珠碎片
tValentineCompetition_Reward[3320092] = {}
tValentineCompetition_Reward[3320092]["DeleteItem"] = {}
tValentineCompetition_Reward[3320092]["DeleteItem"][1] = {}
tValentineCompetition_Reward[3320092]["DeleteItem"][1]["Id"] = 3320092
tValentineCompetition_Reward[3320092]["DeleteItem"][1]["ItemNum"] = 30
tValentineCompetition_Reward[3320092]["RewardItem"] = {}
tValentineCompetition_Reward[3320092]["RewardItem"][1] = {}
tValentineCompetition_Reward[3320092]["RewardItem"][1]["Id"] = 3320085
tValentineCompetition_Reward[3320092]["RewardItem"][1]["Attr"] = "0 1"
tValentineCompetition_Reward[3320092]["RewardEffect"] = {}
tValentineCompetition_Reward[3320092]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward[3320092]["LogId"] = 12001284
-- 二心龙珠碎片
tValentineCompetition_Reward[3320093] = {}
tValentineCompetition_Reward[3320093]["DeleteItem"] = {}
tValentineCompetition_Reward[3320093]["DeleteItem"][1] = {}
tValentineCompetition_Reward[3320093]["DeleteItem"][1]["Id"] = 3320093
tValentineCompetition_Reward[3320093]["DeleteItem"][1]["ItemNum"] = 30
tValentineCompetition_Reward[3320093]["RewardItem"] = {}
tValentineCompetition_Reward[3320093]["RewardItem"][1] = {}
tValentineCompetition_Reward[3320093]["RewardItem"][1]["Id"] = 3320086
tValentineCompetition_Reward[3320093]["RewardItem"][1]["Attr"] = "0 1"
tValentineCompetition_Reward[3320093]["RewardEffect"] = {}
tValentineCompetition_Reward[3320093]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward[3320093]["LogId"] = 12001284

-- 龙息结晶
tValentineCompetition_Reward[3320099] = {}
tValentineCompetition_Reward[3320099]["DeleteItem"] = {}
tValentineCompetition_Reward[3320099]["DeleteItem"][1] = {}
tValentineCompetition_Reward[3320099]["DeleteItem"][1]["Id"] = 3320099
tValentineCompetition_Reward[3320099]["DeleteItem"][1]["ItemNum"] = 5
tValentineCompetition_Reward[3320099]["RewardItem"] = {}
tValentineCompetition_Reward[3320099]["RewardItem"][1] = {}
tValentineCompetition_Reward[3320099]["RewardItem"][1]["Id"] = 3320097
tValentineCompetition_Reward[3320099]["RewardItem"][1]["Attr"] = "0 1"
tValentineCompetition_Reward[3320099]["RewardEffect"] = {}
tValentineCompetition_Reward[3320099]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward[3320099]["LogId"] = 12001284
tValentineCompetition_Reward[3320099]["LogStep"] = "4[4]"

-- 15分钟傲天神龙·环宇霸主
tValentineCompetition_Reward[3320094] = {}
tValentineCompetition_Reward[3320094]["DeleteItem"] = {}
tValentineCompetition_Reward[3320094]["DeleteItem"][1] = {}
tValentineCompetition_Reward[3320094]["DeleteItem"][1]["Id"] = 3320094
tValentineCompetition_Reward[3320094]["RewardItem"] = {}
tValentineCompetition_Reward[3320094]["RewardItem"][1] = {}
tValentineCompetition_Reward[3320094]["RewardItem"][1]["Id"] = 205000
tValentineCompetition_Reward[3320094]["RewardItem"][1]["Attr"] = "0 1 3 15 1 0 0 1"
tValentineCompetition_Reward[3320094]["RewardEffect"] = {}
tValentineCompetition_Reward[3320094]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward[3320094]["LogId"] = 12001284

-- 心花怒放
tValentineCompetition_Reward[3320098] = {}
tValentineCompetition_Reward[3320098]["DeleteItem"] = {}
tValentineCompetition_Reward[3320098]["DeleteItem"][1] = {}
tValentineCompetition_Reward[3320098]["DeleteItem"][1]["Id"] = 3320098
tValentineCompetition_Reward[3320098]["RewardItem"] = {}
tValentineCompetition_Reward[3320098]["RewardEffect"] = {}
tValentineCompetition_Reward[3320098]["RewardEffect"]["Effect"] = "red-flower-charm1-1"
tValentineCompetition_Reward[3320098]["LogId"] = 12001284


-- 排行榜礼包
-- 每日时尚榜第1名礼包
tValentineCompetition_Reward[3320174] = {}
tValentineCompetition_Reward[3320174]["DeleteItem"] = {}
tValentineCompetition_Reward[3320174]["DeleteItem"][1] = {}
tValentineCompetition_Reward[3320174]["DeleteItem"][1]["Id"] = 3320174
tValentineCompetition_Reward[3320174]["RewardItem"] = {}
tValentineCompetition_Reward[3320174]["RewardItem"][1] = {}
tValentineCompetition_Reward[3320174]["RewardItem"][1]["Id"] = 3320097
tValentineCompetition_Reward[3320174]["RewardItem"][1]["Attr"] = "0 1"
tValentineCompetition_Reward[3320174]["RewardStrengthValue"] = {}
tValentineCompetition_Reward[3320174]["RewardStrengthValue"]["Value"] = 3000
tValentineCompetition_Reward[3320174]["RewardEffect"] = {}
tValentineCompetition_Reward[3320174]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward[3320174]["LogId"] = 12001284
-- 每日时尚榜第2名礼包
tValentineCompetition_Reward[3320175] = {}
tValentineCompetition_Reward[3320175]["DeleteItem"] = {}
tValentineCompetition_Reward[3320175]["DeleteItem"][1] = {}
tValentineCompetition_Reward[3320175]["DeleteItem"][1]["Id"] = 3320175
tValentineCompetition_Reward[3320175]["RewardItem"] = {}
tValentineCompetition_Reward[3320175]["RewardItem"][1] = {}
tValentineCompetition_Reward[3320175]["RewardItem"][1]["Id"] = 3320097
tValentineCompetition_Reward[3320175]["RewardItem"][1]["Attr"] = "0 1"
tValentineCompetition_Reward[3320175]["RewardStrengthValue"] = {}
tValentineCompetition_Reward[3320175]["RewardStrengthValue"]["Value"] = 2500
tValentineCompetition_Reward[3320175]["RewardEffect"] = {}
tValentineCompetition_Reward[3320175]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward[3320175]["LogId"] = 12001284
-- 每日时尚榜第3名礼包
tValentineCompetition_Reward[3320176] = {}
tValentineCompetition_Reward[3320176]["DeleteItem"] = {}
tValentineCompetition_Reward[3320176]["DeleteItem"][1] = {}
tValentineCompetition_Reward[3320176]["DeleteItem"][1]["Id"] = 3320176
tValentineCompetition_Reward[3320176]["RewardItem"] = {}
tValentineCompetition_Reward[3320176]["RewardItem"][1] = {}
tValentineCompetition_Reward[3320176]["RewardItem"][1]["Id"] = 3320097
tValentineCompetition_Reward[3320176]["RewardItem"][1]["Attr"] = "0 1"
tValentineCompetition_Reward[3320176]["RewardStrengthValue"] = {}
tValentineCompetition_Reward[3320176]["RewardStrengthValue"]["Value"] = 2000
tValentineCompetition_Reward[3320176]["RewardEffect"] = {}
tValentineCompetition_Reward[3320176]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward[3320176]["LogId"] = 12001284
-- 每日时尚榜第4名礼包
tValentineCompetition_Reward[3320177] = {}
tValentineCompetition_Reward[3320177]["DeleteItem"] = {}
tValentineCompetition_Reward[3320177]["DeleteItem"][1] = {}
tValentineCompetition_Reward[3320177]["DeleteItem"][1]["Id"] = 3320177
tValentineCompetition_Reward[3320177]["RewardStrengthValue"] = {}
tValentineCompetition_Reward[3320177]["RewardStrengthValue"]["Value"] = 1500
tValentineCompetition_Reward[3320177]["RewardEffect"] = {}
tValentineCompetition_Reward[3320177]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward[3320177]["LogId"] = 12001284
-- 每日时尚榜第5名礼包
tValentineCompetition_Reward[3320178] = {}
tValentineCompetition_Reward[3320178]["DeleteItem"] = {}
tValentineCompetition_Reward[3320178]["DeleteItem"][1] = {}
tValentineCompetition_Reward[3320178]["DeleteItem"][1]["Id"] = 3320178
tValentineCompetition_Reward[3320178]["RewardStrengthValue"] = {}
tValentineCompetition_Reward[3320178]["RewardStrengthValue"]["Value"] = 1000
tValentineCompetition_Reward[3320178]["RewardEffect"] = {}
tValentineCompetition_Reward[3320178]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward[3320178]["LogId"] = 12001284
-- 每日时尚榜第6-10名礼包
tValentineCompetition_Reward[3320179] = {}
tValentineCompetition_Reward[3320179]["DeleteItem"] = {}
tValentineCompetition_Reward[3320179]["DeleteItem"][1] = {}
tValentineCompetition_Reward[3320179]["DeleteItem"][1]["Id"] = 3320179
tValentineCompetition_Reward[3320179]["RewardStrengthValue"] = {}
tValentineCompetition_Reward[3320179]["RewardStrengthValue"]["Value"] = 500
tValentineCompetition_Reward[3320179]["RewardEffect"] = {}
tValentineCompetition_Reward[3320179]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward[3320179]["LogId"] = 12001284


-- 时尚达人榜第1名礼包
tValentineCompetition_Reward[3320180] = {}
tValentineCompetition_Reward[3320180]["DeleteItem"] = {}
tValentineCompetition_Reward[3320180]["DeleteItem"][1] = {}
tValentineCompetition_Reward[3320180]["DeleteItem"][1]["Id"] = 3320180
tValentineCompetition_Reward[3320180]["RewardItem"] = {}
tValentineCompetition_Reward[3320180]["RewardItem"][1] = {}
tValentineCompetition_Reward[3320180]["RewardItem"][1]["Id"] = 3320097
tValentineCompetition_Reward[3320180]["RewardItem"][1]["Attr"] = "0 6"
tValentineCompetition_Reward[3320180]["RewardStrengthValue"] = {}
tValentineCompetition_Reward[3320180]["RewardStrengthValue"]["Value"] = 15000
tValentineCompetition_Reward[3320180]["RewardEffect"] = {}
tValentineCompetition_Reward[3320180]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward[3320180]["LogId"] = 12001284
-- 时尚达人榜第2名礼包
tValentineCompetition_Reward[3320181] = {}
tValentineCompetition_Reward[3320181]["DeleteItem"] = {}
tValentineCompetition_Reward[3320181]["DeleteItem"][1] = {}
tValentineCompetition_Reward[3320181]["DeleteItem"][1]["Id"] = 3320181
tValentineCompetition_Reward[3320181]["RewardItem"] = {}
tValentineCompetition_Reward[3320181]["RewardItem"][1] = {}
tValentineCompetition_Reward[3320181]["RewardItem"][1]["Id"] = 3320097
tValentineCompetition_Reward[3320181]["RewardItem"][1]["Attr"] = "0 5"
tValentineCompetition_Reward[3320181]["RewardStrengthValue"] = {}
tValentineCompetition_Reward[3320181]["RewardStrengthValue"]["Value"] = 10000
tValentineCompetition_Reward[3320181]["RewardEffect"] = {}
tValentineCompetition_Reward[3320181]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward[3320181]["LogId"] = 12001284
-- 时尚达人榜第3名礼包
tValentineCompetition_Reward[3320182] = {}
tValentineCompetition_Reward[3320182]["DeleteItem"] = {}
tValentineCompetition_Reward[3320182]["DeleteItem"][1] = {}
tValentineCompetition_Reward[3320182]["DeleteItem"][1]["Id"] = 3320182
tValentineCompetition_Reward[3320182]["RewardItem"] = {}
tValentineCompetition_Reward[3320182]["RewardItem"][1] = {}
tValentineCompetition_Reward[3320182]["RewardItem"][1]["Id"] = 3320097
tValentineCompetition_Reward[3320182]["RewardItem"][1]["Attr"] = "0 4"
tValentineCompetition_Reward[3320182]["RewardStrengthValue"] = {}
tValentineCompetition_Reward[3320182]["RewardStrengthValue"]["Value"] = 8000
tValentineCompetition_Reward[3320182]["RewardEffect"] = {}
tValentineCompetition_Reward[3320182]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward[3320182]["LogId"] = 12001284
-- 时尚达人榜第4名礼包
tValentineCompetition_Reward[3320183] = {}
tValentineCompetition_Reward[3320183]["DeleteItem"] = {}
tValentineCompetition_Reward[3320183]["DeleteItem"][1] = {}
tValentineCompetition_Reward[3320183]["DeleteItem"][1]["Id"] = 3320183
tValentineCompetition_Reward[3320183]["RewardItem"] = {}
tValentineCompetition_Reward[3320183]["RewardItem"][1] = {}
tValentineCompetition_Reward[3320183]["RewardItem"][1]["Id"] = 3320097
tValentineCompetition_Reward[3320183]["RewardItem"][1]["Attr"] = "0 3"
tValentineCompetition_Reward[3320183]["RewardStrengthValue"] = {}
tValentineCompetition_Reward[3320183]["RewardStrengthValue"]["Value"] = 6000
tValentineCompetition_Reward[3320183]["RewardEffect"] = {}
tValentineCompetition_Reward[3320183]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward[3320183]["LogId"] = 12001284
-- 时尚达人榜第5名礼包
tValentineCompetition_Reward[3320184] = {}
tValentineCompetition_Reward[3320184]["DeleteItem"] = {}
tValentineCompetition_Reward[3320184]["DeleteItem"][1] = {}
tValentineCompetition_Reward[3320184]["DeleteItem"][1]["Id"] = 3320184
tValentineCompetition_Reward[3320184]["RewardItem"] = {}
tValentineCompetition_Reward[3320184]["RewardItem"][1] = {}
tValentineCompetition_Reward[3320184]["RewardItem"][1]["Id"] = 3320097
tValentineCompetition_Reward[3320184]["RewardItem"][1]["Attr"] = "0 2"
tValentineCompetition_Reward[3320184]["RewardStrengthValue"] = {}
tValentineCompetition_Reward[3320184]["RewardStrengthValue"]["Value"] = 5000
tValentineCompetition_Reward[3320184]["RewardEffect"] = {}
tValentineCompetition_Reward[3320184]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward[3320184]["LogId"] = 12001284
-- 时尚达人榜第6-10名礼包
tValentineCompetition_Reward[3320185] = {}
tValentineCompetition_Reward[3320185]["DeleteItem"] = {}
tValentineCompetition_Reward[3320185]["DeleteItem"][1] = {}
tValentineCompetition_Reward[3320185]["DeleteItem"][1]["Id"] = 3320185
tValentineCompetition_Reward[3320185]["RewardItem"] = {}
tValentineCompetition_Reward[3320185]["RewardItem"][1] = {}
tValentineCompetition_Reward[3320185]["RewardItem"][1]["Id"] = 3320097
tValentineCompetition_Reward[3320185]["RewardItem"][1]["Attr"] = "0 1"
tValentineCompetition_Reward[3320185]["RewardStrengthValue"] = {}
tValentineCompetition_Reward[3320185]["RewardStrengthValue"]["Value"] = 4000
tValentineCompetition_Reward[3320185]["RewardEffect"] = {}
tValentineCompetition_Reward[3320185]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward[3320185]["LogId"] = 12001284

-- 龙珠合成御天神龙
tValentineCompetition_Reward["DragonBall"] = {}
tValentineCompetition_Reward["DragonBall"]["DeleteItem"] = {}
tValentineCompetition_Reward["DragonBall"]["DeleteItem"][1] = {}
tValentineCompetition_Reward["DragonBall"]["DeleteItem"][1]["Id"] = 3320085
tValentineCompetition_Reward["DragonBall"]["DeleteItem"][2] = {}
tValentineCompetition_Reward["DragonBall"]["DeleteItem"][2]["Id"] = 3320086
tValentineCompetition_Reward["DragonBall"]["DeleteItem"][3] = {}
tValentineCompetition_Reward["DragonBall"]["DeleteItem"][3]["Id"] = 3320087
tValentineCompetition_Reward["DragonBall"]["DeleteItem"][4] = {}
tValentineCompetition_Reward["DragonBall"]["DeleteItem"][4]["Id"] = 3320088
tValentineCompetition_Reward["DragonBall"]["DeleteItem"][5] = {}
tValentineCompetition_Reward["DragonBall"]["DeleteItem"][5]["Id"] = 3320089
tValentineCompetition_Reward["DragonBall"]["DeleteItem"][6] = {}
tValentineCompetition_Reward["DragonBall"]["DeleteItem"][6]["Id"] = 3320090
tValentineCompetition_Reward["DragonBall"]["DeleteItem"][7] = {}
tValentineCompetition_Reward["DragonBall"]["DeleteItem"][7]["Id"] = 3320091
tValentineCompetition_Reward["DragonBall"]["RewardItem"] = {}
tValentineCompetition_Reward["DragonBall"]["RewardItem"][1] = {}
tValentineCompetition_Reward["DragonBall"]["RewardItem"][1]["Id"] = 205000
tValentineCompetition_Reward["DragonBall"]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
tValentineCompetition_Reward["DragonBall"]["RewardEffect"] = {}
tValentineCompetition_Reward["DragonBall"]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["DragonBall"]["LogId"] = 12001284



-- 租借外套
tValentineCompetition_Reward["RentCoat"] = {}
-- 时装外套
-- tValentineCompetition_Reward["RentCoat"][1] = {}
-- 勇士传奇【联盟王者】    195365
tValentineCompetition_Reward["RentCoat"][3320277] = {}
tValentineCompetition_Reward["RentCoat"][3320277]["DeleteItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320277]["DeleteItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320277]["DeleteItem"][1]["Id"] = 3320277
tValentineCompetition_Reward["RentCoat"][3320277]["RewardItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320277]["RewardItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320277]["RewardItem"][1]["Id"] = 195365
tValentineCompetition_Reward["RentCoat"][3320277]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
tValentineCompetition_Reward["RentCoat"][3320277]["RewardEffect"] = {}
tValentineCompetition_Reward["RentCoat"][3320277]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["RentCoat"][3320277]["LogId"] = 12001284
tValentineCompetition_Reward["RentCoat"][3320277]["LogStep"] = "3[1][1]"
-- 东方不败·至尊           195485
tValentineCompetition_Reward["RentCoat"][3320278] = {}
tValentineCompetition_Reward["RentCoat"][3320278]["DeleteItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320278]["DeleteItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320278]["DeleteItem"][1]["Id"] = 3320278
tValentineCompetition_Reward["RentCoat"][3320278]["RewardItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320278]["RewardItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320278]["RewardItem"][1]["Id"] = 195485
tValentineCompetition_Reward["RentCoat"][3320278]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
tValentineCompetition_Reward["RentCoat"][3320278]["RewardEffect"] = {}
tValentineCompetition_Reward["RentCoat"][3320278]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["RentCoat"][3320278]["LogId"] = 12001284
tValentineCompetition_Reward["RentCoat"][3320278]["LogStep"] = "3[1][2]"
-- 卡牌大师【传奇版】      195225
tValentineCompetition_Reward["RentCoat"][3320279] = {}
tValentineCompetition_Reward["RentCoat"][3320279]["DeleteItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320279]["DeleteItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320279]["DeleteItem"][1]["Id"] = 3320279
tValentineCompetition_Reward["RentCoat"][3320279]["RewardItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320279]["RewardItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320279]["RewardItem"][1]["Id"] = 195225
tValentineCompetition_Reward["RentCoat"][3320279]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
tValentineCompetition_Reward["RentCoat"][3320279]["RewardEffect"] = {}
tValentineCompetition_Reward["RentCoat"][3320279]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["RentCoat"][3320279]["LogId"] = 12001284
tValentineCompetition_Reward["RentCoat"][3320279]["LogStep"] = "3[1][3]"
-- 圣诞恋歌·永爱           195015
tValentineCompetition_Reward["RentCoat"][3320280] = {}
tValentineCompetition_Reward["RentCoat"][3320280]["DeleteItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320280]["DeleteItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320280]["DeleteItem"][1]["Id"] = 3320280
tValentineCompetition_Reward["RentCoat"][3320280]["RewardItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320280]["RewardItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320280]["RewardItem"][1]["Id"] = 195015
tValentineCompetition_Reward["RentCoat"][3320280]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
tValentineCompetition_Reward["RentCoat"][3320280]["RewardEffect"] = {}
tValentineCompetition_Reward["RentCoat"][3320280]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["RentCoat"][3320280]["LogId"] = 12001284
tValentineCompetition_Reward["RentCoat"][3320280]["LogStep"] = "3[1][4]"
-- 轻舞飞扬·盈波           195045
tValentineCompetition_Reward["RentCoat"][3320281] = {}
tValentineCompetition_Reward["RentCoat"][3320281]["DeleteItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320281]["DeleteItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320281]["DeleteItem"][1]["Id"] = 3320281
tValentineCompetition_Reward["RentCoat"][3320281]["RewardItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320281]["RewardItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320281]["RewardItem"][1]["Id"] = 195045
tValentineCompetition_Reward["RentCoat"][3320281]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
tValentineCompetition_Reward["RentCoat"][3320281]["RewardEffect"] = {}
tValentineCompetition_Reward["RentCoat"][3320281]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["RentCoat"][3320281]["LogId"] = 12001284
tValentineCompetition_Reward["RentCoat"][3320281]["LogStep"] = "3[1][5]"
-- 花之吻·绯恋             195405
tValentineCompetition_Reward["RentCoat"][3320282] = {}
tValentineCompetition_Reward["RentCoat"][3320282]["DeleteItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320282]["DeleteItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320282]["DeleteItem"][1]["Id"] = 3320282
tValentineCompetition_Reward["RentCoat"][3320282]["RewardItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320282]["RewardItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320282]["RewardItem"][1]["Id"] = 195405
tValentineCompetition_Reward["RentCoat"][3320282]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
tValentineCompetition_Reward["RentCoat"][3320282]["RewardEffect"] = {}
tValentineCompetition_Reward["RentCoat"][3320282]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["RentCoat"][3320282]["LogId"] = 12001284
tValentineCompetition_Reward["RentCoat"][3320282]["LogStep"] = "3[1][6]"
-- 喵基尼【璀璨版】        193565
tValentineCompetition_Reward["RentCoat"][3320283] = {}
tValentineCompetition_Reward["RentCoat"][3320283]["DeleteItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320283]["DeleteItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320283]["DeleteItem"][1]["Id"] = 3320283
tValentineCompetition_Reward["RentCoat"][3320283]["RewardItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320283]["RewardItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320283]["RewardItem"][1]["Id"] = 193565
tValentineCompetition_Reward["RentCoat"][3320283]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
tValentineCompetition_Reward["RentCoat"][3320283]["RewardEffect"] = {}
tValentineCompetition_Reward["RentCoat"][3320283]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["RentCoat"][3320283]["LogId"] = 12001284
tValentineCompetition_Reward["RentCoat"][3320283]["LogStep"] = "3[1][7]"
-- 天仙子·月华             194395
tValentineCompetition_Reward["RentCoat"][3320284] = {}
tValentineCompetition_Reward["RentCoat"][3320284]["DeleteItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320284]["DeleteItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320284]["DeleteItem"][1]["Id"] = 3320284
tValentineCompetition_Reward["RentCoat"][3320284]["RewardItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320284]["RewardItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320284]["RewardItem"][1]["Id"] = 194395
tValentineCompetition_Reward["RentCoat"][3320284]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
tValentineCompetition_Reward["RentCoat"][3320284]["RewardEffect"] = {}
tValentineCompetition_Reward["RentCoat"][3320284]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["RentCoat"][3320284]["LogId"] = 12001284
tValentineCompetition_Reward["RentCoat"][3320284]["LogStep"] = "3[1][8]"
-- 水晶之恋·星梦           195545
tValentineCompetition_Reward["RentCoat"][3320285] = {}
tValentineCompetition_Reward["RentCoat"][3320285]["DeleteItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320285]["DeleteItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320285]["DeleteItem"][1]["Id"] = 3320285
tValentineCompetition_Reward["RentCoat"][3320285]["RewardItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320285]["RewardItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320285]["RewardItem"][1]["Id"] = 195545
tValentineCompetition_Reward["RentCoat"][3320285]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
tValentineCompetition_Reward["RentCoat"][3320285]["RewardEffect"] = {}
tValentineCompetition_Reward["RentCoat"][3320285]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["RentCoat"][3320285]["LogId"] = 12001284
tValentineCompetition_Reward["RentCoat"][3320285]["LogStep"] = "3[1][9]"
-- 蝶恋花·玫语             193625
tValentineCompetition_Reward["RentCoat"][3320286] = {}
tValentineCompetition_Reward["RentCoat"][3320286]["DeleteItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320286]["DeleteItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320286]["DeleteItem"][1]["Id"] = 3320286
tValentineCompetition_Reward["RentCoat"][3320286]["RewardItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320286]["RewardItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320286]["RewardItem"][1]["Id"] = 193625
tValentineCompetition_Reward["RentCoat"][3320286]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
tValentineCompetition_Reward["RentCoat"][3320286]["RewardEffect"] = {}
tValentineCompetition_Reward["RentCoat"][3320286]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["RentCoat"][3320286]["LogId"] = 12001284
tValentineCompetition_Reward["RentCoat"][3320286]["LogStep"] = "3[1][10]"
-- 夏威夷阳光【泡泡版】    194825
tValentineCompetition_Reward["RentCoat"][3320287] = {}
tValentineCompetition_Reward["RentCoat"][3320287]["DeleteItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320287]["DeleteItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320287]["DeleteItem"][1]["Id"] = 3320287
tValentineCompetition_Reward["RentCoat"][3320287]["RewardItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320287]["RewardItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320287]["RewardItem"][1]["Id"] = 194825
tValentineCompetition_Reward["RentCoat"][3320287]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
tValentineCompetition_Reward["RentCoat"][3320287]["RewardEffect"] = {}
tValentineCompetition_Reward["RentCoat"][3320287]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["RentCoat"][3320287]["LogId"] = 12001284
tValentineCompetition_Reward["RentCoat"][3320287]["LogStep"] = "3[1][11]"
-- 大圣魔铠【齐天】        189695
tValentineCompetition_Reward["RentCoat"][3320288] = {}
tValentineCompetition_Reward["RentCoat"][3320288]["DeleteItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320288]["DeleteItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320288]["DeleteItem"][1]["Id"] = 3320288
tValentineCompetition_Reward["RentCoat"][3320288]["RewardItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320288]["RewardItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320288]["RewardItem"][1]["Id"] = 189695
tValentineCompetition_Reward["RentCoat"][3320288]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
tValentineCompetition_Reward["RentCoat"][3320288]["RewardEffect"] = {}
tValentineCompetition_Reward["RentCoat"][3320288]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["RentCoat"][3320288]["LogId"] = 12001284
tValentineCompetition_Reward["RentCoat"][3320288]["LogStep"] = "3[1][12]"
-- 紫音青衫【霞光】        194875
tValentineCompetition_Reward["RentCoat"][3320289] = {}
tValentineCompetition_Reward["RentCoat"][3320289]["DeleteItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320289]["DeleteItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320289]["DeleteItem"][1]["Id"] = 3320289
tValentineCompetition_Reward["RentCoat"][3320289]["RewardItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320289]["RewardItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320289]["RewardItem"][1]["Id"] = 194875
tValentineCompetition_Reward["RentCoat"][3320289]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
tValentineCompetition_Reward["RentCoat"][3320289]["RewardEffect"] = {}
tValentineCompetition_Reward["RentCoat"][3320289]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["RentCoat"][3320289]["LogId"] = 12001284
tValentineCompetition_Reward["RentCoat"][3320289]["LogStep"] = "3[1][13]"
-- 福星天降【华彩版】      195075
tValentineCompetition_Reward["RentCoat"][3320290] = {}
tValentineCompetition_Reward["RentCoat"][3320290]["DeleteItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320290]["DeleteItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320290]["DeleteItem"][1]["Id"] = 3320290
tValentineCompetition_Reward["RentCoat"][3320290]["RewardItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320290]["RewardItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320290]["RewardItem"][1]["Id"] = 195075
tValentineCompetition_Reward["RentCoat"][3320290]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
tValentineCompetition_Reward["RentCoat"][3320290]["RewardEffect"] = {}
tValentineCompetition_Reward["RentCoat"][3320290]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["RentCoat"][3320290]["LogId"] = 12001284
tValentineCompetition_Reward["RentCoat"][3320290]["LogStep"] = "3[1][14]"

-- 时装外套
-- tValentineCompetition_Reward["RentCoat"][2] = {}
-- 喵呜将军【璀璨版】      200544
tValentineCompetition_Reward["RentCoat"][3320291] = {}
tValentineCompetition_Reward["RentCoat"][3320291]["DeleteItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320291]["DeleteItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320291]["DeleteItem"][1]["Id"] = 3320291
tValentineCompetition_Reward["RentCoat"][3320291]["RewardItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320291]["RewardItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320291]["RewardItem"][1]["Id"] = 200544
tValentineCompetition_Reward["RentCoat"][3320291]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
tValentineCompetition_Reward["RentCoat"][3320291]["RewardEffect"] = {}
tValentineCompetition_Reward["RentCoat"][3320291]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["RentCoat"][3320291]["LogId"] = 12001284
tValentineCompetition_Reward["RentCoat"][3320291]["LogStep"] = "3[2][1]"
-- 萨摩王子【炫彩版】      200621
tValentineCompetition_Reward["RentCoat"][3320292] = {}
tValentineCompetition_Reward["RentCoat"][3320292]["DeleteItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320292]["DeleteItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320292]["DeleteItem"][1]["Id"] = 3320292
tValentineCompetition_Reward["RentCoat"][3320292]["RewardItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320292]["RewardItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320292]["RewardItem"][1]["Id"] = 200621
tValentineCompetition_Reward["RentCoat"][3320292]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
tValentineCompetition_Reward["RentCoat"][3320292]["RewardEffect"] = {}
tValentineCompetition_Reward["RentCoat"][3320292]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["RentCoat"][3320292]["LogId"] = 12001284
tValentineCompetition_Reward["RentCoat"][3320292]["LogStep"] = "3[2][2]"
-- 二哈将军【炫彩版】      200622
tValentineCompetition_Reward["RentCoat"][3320293] = {}
tValentineCompetition_Reward["RentCoat"][3320293]["DeleteItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320293]["DeleteItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320293]["DeleteItem"][1]["Id"] = 3320293
tValentineCompetition_Reward["RentCoat"][3320293]["RewardItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320293]["RewardItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320293]["RewardItem"][1]["Id"] = 200622
tValentineCompetition_Reward["RentCoat"][3320293]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
tValentineCompetition_Reward["RentCoat"][3320293]["RewardEffect"] = {}
tValentineCompetition_Reward["RentCoat"][3320293]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["RentCoat"][3320293]["LogId"] = 12001284
tValentineCompetition_Reward["RentCoat"][3320293]["LogStep"] = "3[2][3]"
-- 金毛大帅【炫彩版】      200623
tValentineCompetition_Reward["RentCoat"][3320294] = {}
tValentineCompetition_Reward["RentCoat"][3320294]["DeleteItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320294]["DeleteItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320294]["DeleteItem"][1]["Id"] = 3320294
tValentineCompetition_Reward["RentCoat"][3320294]["RewardItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320294]["RewardItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320294]["RewardItem"][1]["Id"] = 200623
tValentineCompetition_Reward["RentCoat"][3320294]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
tValentineCompetition_Reward["RentCoat"][3320294]["RewardEffect"] = {}
tValentineCompetition_Reward["RentCoat"][3320294]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["RentCoat"][3320294]["LogId"] = 12001284
tValentineCompetition_Reward["RentCoat"][3320294]["LogStep"] = "3[2][4]"
-- 逗哥王                  200624
tValentineCompetition_Reward["RentCoat"][3320295] = {}
tValentineCompetition_Reward["RentCoat"][3320295]["DeleteItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320295]["DeleteItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320295]["DeleteItem"][1]["Id"] = 3320295
tValentineCompetition_Reward["RentCoat"][3320295]["RewardItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320295]["RewardItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320295]["RewardItem"][1]["Id"] = 200624
tValentineCompetition_Reward["RentCoat"][3320295]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
tValentineCompetition_Reward["RentCoat"][3320295]["RewardEffect"] = {}
tValentineCompetition_Reward["RentCoat"][3320295]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["RentCoat"][3320295]["LogId"] = 12001284
tValentineCompetition_Reward["RentCoat"][3320295]["LogStep"] = "3[2][5]"
-- 大鱼海棠·凌波           200626
tValentineCompetition_Reward["RentCoat"][3320296] = {}
tValentineCompetition_Reward["RentCoat"][3320296]["DeleteItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320296]["DeleteItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320296]["DeleteItem"][1]["Id"] = 3320296
tValentineCompetition_Reward["RentCoat"][3320296]["RewardItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320296]["RewardItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320296]["RewardItem"][1]["Id"] = 200626
tValentineCompetition_Reward["RentCoat"][3320296]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
tValentineCompetition_Reward["RentCoat"][3320296]["RewardEffect"] = {}
tValentineCompetition_Reward["RentCoat"][3320296]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["RentCoat"][3320296]["LogId"] = 12001284
tValentineCompetition_Reward["RentCoat"][3320296]["LogStep"] = "3[2][6]"
-- 大鱼海棠·金麟           200632
tValentineCompetition_Reward["RentCoat"][3320297] = {}
tValentineCompetition_Reward["RentCoat"][3320297]["DeleteItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320297]["DeleteItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320297]["DeleteItem"][1]["Id"] = 3320297
tValentineCompetition_Reward["RentCoat"][3320297]["RewardItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320297]["RewardItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320297]["RewardItem"][1]["Id"] = 200632
tValentineCompetition_Reward["RentCoat"][3320297]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
tValentineCompetition_Reward["RentCoat"][3320297]["RewardEffect"] = {}
tValentineCompetition_Reward["RentCoat"][3320297]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["RentCoat"][3320297]["LogId"] = 12001284
tValentineCompetition_Reward["RentCoat"][3320297]["LogStep"] = "3[2][7]"
-- 流金祥云                200629
tValentineCompetition_Reward["RentCoat"][3320298] = {}
tValentineCompetition_Reward["RentCoat"][3320298]["DeleteItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320298]["DeleteItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320298]["DeleteItem"][1]["Id"] = 3320298
tValentineCompetition_Reward["RentCoat"][3320298]["RewardItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320298]["RewardItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320298]["RewardItem"][1]["Id"] = 200629
tValentineCompetition_Reward["RentCoat"][3320298]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
tValentineCompetition_Reward["RentCoat"][3320298]["RewardEffect"] = {}
tValentineCompetition_Reward["RentCoat"][3320298]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["RentCoat"][3320298]["LogId"] = 12001284
tValentineCompetition_Reward["RentCoat"][3320298]["LogStep"] = "3[2][8]"
-- 猴王天天                200559
tValentineCompetition_Reward["RentCoat"][3320299] = {}
tValentineCompetition_Reward["RentCoat"][3320299]["DeleteItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320299]["DeleteItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320299]["DeleteItem"][1]["Id"] = 3320299
tValentineCompetition_Reward["RentCoat"][3320299]["RewardItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320299]["RewardItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320299]["RewardItem"][1]["Id"] = 200559
tValentineCompetition_Reward["RentCoat"][3320299]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
tValentineCompetition_Reward["RentCoat"][3320299]["RewardEffect"] = {}
tValentineCompetition_Reward["RentCoat"][3320299]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["RentCoat"][3320299]["LogId"] = 12001284
tValentineCompetition_Reward["RentCoat"][3320299]["LogStep"] = "3[2][9]"
-- 猴王西西                200560
tValentineCompetition_Reward["RentCoat"][3320300] = {}
tValentineCompetition_Reward["RentCoat"][3320300]["DeleteItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320300]["DeleteItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320300]["DeleteItem"][1]["Id"] = 3320300
tValentineCompetition_Reward["RentCoat"][3320300]["RewardItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320300]["RewardItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320300]["RewardItem"][1]["Id"] = 200560
tValentineCompetition_Reward["RentCoat"][3320300]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
tValentineCompetition_Reward["RentCoat"][3320300]["RewardEffect"] = {}
tValentineCompetition_Reward["RentCoat"][3320300]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["RentCoat"][3320300]["LogId"] = 12001284
tValentineCompetition_Reward["RentCoat"][3320300]["LogStep"] = "3[2][10]"
-- 超级羊驼维克多          200564
tValentineCompetition_Reward["RentCoat"][3320301] = {}
tValentineCompetition_Reward["RentCoat"][3320301]["DeleteItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320301]["DeleteItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320301]["DeleteItem"][1]["Id"] = 3320301
tValentineCompetition_Reward["RentCoat"][3320301]["RewardItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320301]["RewardItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320301]["RewardItem"][1]["Id"] = 200564
tValentineCompetition_Reward["RentCoat"][3320301]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
tValentineCompetition_Reward["RentCoat"][3320301]["RewardEffect"] = {}
tValentineCompetition_Reward["RentCoat"][3320301]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["RentCoat"][3320301]["LogId"] = 12001284
tValentineCompetition_Reward["RentCoat"][3320301]["LogStep"] = "3[2][11]"
-- 星际战鸡·终极挑战号     200592
tValentineCompetition_Reward["RentCoat"][3320302] = {}
tValentineCompetition_Reward["RentCoat"][3320302]["DeleteItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320302]["DeleteItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320302]["DeleteItem"][1]["Id"] = 3320302
tValentineCompetition_Reward["RentCoat"][3320302]["RewardItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320302]["RewardItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320302]["RewardItem"][1]["Id"] = 200592
tValentineCompetition_Reward["RentCoat"][3320302]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
tValentineCompetition_Reward["RentCoat"][3320302]["RewardEffect"] = {}
tValentineCompetition_Reward["RentCoat"][3320302]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["RentCoat"][3320302]["LogId"] = 12001284
tValentineCompetition_Reward["RentCoat"][3320302]["LogStep"] = "3[2][12]"
-- 星际战鸡·辉煌勇气号     200601
tValentineCompetition_Reward["RentCoat"][3320303] = {}
tValentineCompetition_Reward["RentCoat"][3320303]["DeleteItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320303]["DeleteItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320303]["DeleteItem"][1]["Id"] = 3320303
tValentineCompetition_Reward["RentCoat"][3320303]["RewardItem"] = {}
tValentineCompetition_Reward["RentCoat"][3320303]["RewardItem"][1] = {}
tValentineCompetition_Reward["RentCoat"][3320303]["RewardItem"][1]["Id"] = 200601
tValentineCompetition_Reward["RentCoat"][3320303]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
tValentineCompetition_Reward["RentCoat"][3320303]["RewardEffect"] = {}
tValentineCompetition_Reward["RentCoat"][3320303]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["RentCoat"][3320303]["LogId"] = 12001284
tValentineCompetition_Reward["RentCoat"][3320303]["LogStep"] = "3[2][13]"


-- 功勋礼包使用开出纪凡希口红
tValentineCompetition_Reward[3007108] = {}
tValentineCompetition_Reward[3007108]["RewardItem"] = {}
tValentineCompetition_Reward[3007108]["RewardItem"][1] = {}
tValentineCompetition_Reward[3007108]["RewardItem"][1]["Id"] = 3320096
tValentineCompetition_Reward[3007108]["RewardItem"][1]["Attr"] = "0 1"
tValentineCompetition_Reward[3007108]["LogId"] = 12001284
tValentineCompetition_Reward[3007108]["LogStep"] = "4[2]"

-- 签到礼包使用开出纪凡希口红
tValentineCompetition_Reward[3100011] = {}
tValentineCompetition_Reward[3100011]["RewardItem"] = {}
tValentineCompetition_Reward[3100011]["RewardItem"][1] = {}
tValentineCompetition_Reward[3100011]["RewardItem"][1]["Id"] = 3320096
tValentineCompetition_Reward[3100011]["RewardItem"][1]["Attr"] = "0 1"
tValentineCompetition_Reward[3100011]["LogId"] = 12001284
tValentineCompetition_Reward[3100011]["LogStep"] = "4[3]"

tValentineCompetition_Reward["DragonReward"] = {}
tValentineCompetition_Reward["DragonReward"]["RewardItem"] = {}
tValentineCompetition_Reward["DragonReward"]["RewardItem"][1] = {}
tValentineCompetition_Reward["DragonReward"]["RewardItem"][1]["Id"] = 3320099
tValentineCompetition_Reward["DragonReward"]["RewardItem"][1]["Attr"] = "0 1"
tValentineCompetition_Reward["DragonReward"]["RewardEffect"] = {}
tValentineCompetition_Reward["DragonReward"]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["DragonReward"]["LogId"] = 12001284
tValentineCompetition_Reward["DragonReward"]["LogStep"] = "4[5]"

-- 神龙之息过期
tValentineCompetition_Reward["OverTime"] = {}
tValentineCompetition_Reward["OverTime"]["DeleteItem"] = {}
tValentineCompetition_Reward["OverTime"]["DeleteItem"][1] = {}
tValentineCompetition_Reward["OverTime"]["DeleteItem"][1]["Id"] = 3320097
tValentineCompetition_Reward["OverTime"]["DeleteItem"][1]["ItemNum"] = 1
tValentineCompetition_Reward["OverTime"]["RewardStrengthValue"] = {}
tValentineCompetition_Reward["OverTime"]["RewardStrengthValue"]["Value"] = 1000
tValentineCompetition_Reward["OverTime"]["RewardEffect"] = {}
tValentineCompetition_Reward["OverTime"]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["OverTime"]["LogId"] = 12001284

-- 一心龙珠碎片过期
tValentineCompetition_Reward["OverTimeOne"] = {}
tValentineCompetition_Reward["OverTimeOne"]["DeleteItem"] = {}
tValentineCompetition_Reward["OverTimeOne"]["DeleteItem"][1] = {}
tValentineCompetition_Reward["OverTimeOne"]["DeleteItem"][1]["Id"] = 3320092
tValentineCompetition_Reward["OverTimeOne"]["DeleteItem"][1]["ItemNum"] = 1
tValentineCompetition_Reward["OverTimeOne"]["RewardStrengthValue"] = {}
tValentineCompetition_Reward["OverTimeOne"]["RewardStrengthValue"]["Value"] = 3000
tValentineCompetition_Reward["OverTimeOne"]["RewardEffect"] = {}
tValentineCompetition_Reward["OverTimeOne"]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["OverTimeOne"]["LogId"] = 12001284

-- 二心龙珠碎片过期
tValentineCompetition_Reward["OverTimeTwo"] = {}
tValentineCompetition_Reward["OverTimeTwo"]["DeleteItem"] = {}
tValentineCompetition_Reward["OverTimeTwo"]["DeleteItem"][1] = {}
tValentineCompetition_Reward["OverTimeTwo"]["DeleteItem"][1]["Id"] = 3320093
tValentineCompetition_Reward["OverTimeTwo"]["DeleteItem"][1]["ItemNum"] = 1
tValentineCompetition_Reward["OverTimeTwo"]["RewardStrengthValue"] = {}
tValentineCompetition_Reward["OverTimeTwo"]["RewardStrengthValue"]["Value"] = 300
tValentineCompetition_Reward["OverTimeTwo"]["RewardEffect"] = {}
tValentineCompetition_Reward["OverTimeTwo"]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["OverTimeTwo"]["LogId"] = 12001284

-- 龙息结晶过期
tValentineCompetition_Reward["ChipOverTime"] = {}
tValentineCompetition_Reward["ChipOverTime"]["DeleteItem"] = {}
tValentineCompetition_Reward["ChipOverTime"]["DeleteItem"][1] = {}
tValentineCompetition_Reward["ChipOverTime"]["DeleteItem"][1]["Id"] = 3320099
tValentineCompetition_Reward["ChipOverTime"]["DeleteItem"][1]["ItemNum"] = 1
tValentineCompetition_Reward["ChipOverTime"]["RewardStrengthValue"] = {}
tValentineCompetition_Reward["ChipOverTime"]["RewardStrengthValue"]["Value"] = 200
tValentineCompetition_Reward["ChipOverTime"]["RewardEffect"] = {}
tValentineCompetition_Reward["ChipOverTime"]["RewardEffect"]["Effect"] = "eidolon"
tValentineCompetition_Reward["ChipOverTime"]["LogId"] = 12001284



local tValentineCompetition_RandomReward = {}
-- 熔炼道具
tValentineCompetition_RandomReward[3320097] = {}
tValentineCompetition_RandomReward[3320097]["ItemChanceSum"] = 10000
tValentineCompetition_RandomReward[3320097]["LogId"] = 12001284
tValentineCompetition_RandomReward[3320097]["LogStep"] = "5[1]"
-- 1心龙珠
tValentineCompetition_RandomReward[3320097][1] = {}
tValentineCompetition_RandomReward[3320097][1]["RandomItemChanceType"] = 2
tValentineCompetition_RandomReward[3320097][1]["ItemChance"] = 0
tValentineCompetition_RandomReward[3320097][1]["RewardItem"] = {}
tValentineCompetition_RandomReward[3320097][1]["RewardItem"][1] = {}
tValentineCompetition_RandomReward[3320097][1]["RewardItem"][1]["Id"] = 3320085
tValentineCompetition_RandomReward[3320097][1]["RewardItem"][1]["Attr"] = "0 1"
tValentineCompetition_RandomReward[3320097][1]["Sign"] = 1
-- 2心龙珠
tValentineCompetition_RandomReward[3320097][2] = {}
tValentineCompetition_RandomReward[3320097][2]["RandomItemChanceType"] = 2
tValentineCompetition_RandomReward[3320097][2]["ItemChance"] = 25
tValentineCompetition_RandomReward[3320097][2]["RewardItem"] = {}
tValentineCompetition_RandomReward[3320097][2]["RewardItem"][1] = {}
tValentineCompetition_RandomReward[3320097][2]["RewardItem"][1]["Id"] = 3320086
tValentineCompetition_RandomReward[3320097][2]["RewardItem"][1]["Attr"] = "0 1"
tValentineCompetition_RandomReward[3320097][2]["Sign"] = 2
-- 3心龙珠
tValentineCompetition_RandomReward[3320097][3] = {}
tValentineCompetition_RandomReward[3320097][3]["RandomItemChanceType"] = 2
tValentineCompetition_RandomReward[3320097][3]["ItemChance"] = 500
tValentineCompetition_RandomReward[3320097][3]["RewardItem"] = {}
tValentineCompetition_RandomReward[3320097][3]["RewardItem"][1] = {}
tValentineCompetition_RandomReward[3320097][3]["RewardItem"][1]["Id"] = 3320087
tValentineCompetition_RandomReward[3320097][3]["RewardItem"][1]["Attr"] = "0 1"
tValentineCompetition_RandomReward[3320097][3]["Sign"] = 3
-- 4心龙珠
tValentineCompetition_RandomReward[3320097][4] = {}
tValentineCompetition_RandomReward[3320097][4]["RandomItemChanceType"] = 2
tValentineCompetition_RandomReward[3320097][4]["ItemChance"] = 700
tValentineCompetition_RandomReward[3320097][4]["RewardItem"] = {}
tValentineCompetition_RandomReward[3320097][4]["RewardItem"][1] = {}
tValentineCompetition_RandomReward[3320097][4]["RewardItem"][1]["Id"] = 3320088
tValentineCompetition_RandomReward[3320097][4]["RewardItem"][1]["Attr"] = "0 1"
tValentineCompetition_RandomReward[3320097][4]["Sign"] = 4
-- 5心龙珠
tValentineCompetition_RandomReward[3320097][5] = {}
tValentineCompetition_RandomReward[3320097][5]["RandomItemChanceType"] = 2
tValentineCompetition_RandomReward[3320097][5]["ItemChance"] = 900
tValentineCompetition_RandomReward[3320097][5]["RewardItem"] = {}
tValentineCompetition_RandomReward[3320097][5]["RewardItem"][1] = {}
tValentineCompetition_RandomReward[3320097][5]["RewardItem"][1]["Id"] = 3320089
tValentineCompetition_RandomReward[3320097][5]["RewardItem"][1]["Attr"] = "0 1"
tValentineCompetition_RandomReward[3320097][5]["Sign"] = 5
-- 6心龙珠
tValentineCompetition_RandomReward[3320097][6] = {}
tValentineCompetition_RandomReward[3320097][6]["RandomItemChanceType"] = 2
tValentineCompetition_RandomReward[3320097][6]["ItemChance"] = 1000
tValentineCompetition_RandomReward[3320097][6]["RewardItem"] = {}
tValentineCompetition_RandomReward[3320097][6]["RewardItem"][1] = {}
tValentineCompetition_RandomReward[3320097][6]["RewardItem"][1]["Id"] = 3320090
tValentineCompetition_RandomReward[3320097][6]["RewardItem"][1]["Attr"] = "0 1"
tValentineCompetition_RandomReward[3320097][6]["Sign"] = 6
-- 7心龙珠
tValentineCompetition_RandomReward[3320097][7] = {}
tValentineCompetition_RandomReward[3320097][7]["RandomItemChanceType"] = 2
tValentineCompetition_RandomReward[3320097][7]["ItemChance"] = 1500
tValentineCompetition_RandomReward[3320097][7]["RewardItem"] = {}
tValentineCompetition_RandomReward[3320097][7]["RewardItem"][1] = {}
tValentineCompetition_RandomReward[3320097][7]["RewardItem"][1]["Id"] = 3320091
tValentineCompetition_RandomReward[3320097][7]["RewardItem"][1]["Attr"] = "0 1"
tValentineCompetition_RandomReward[3320097][7]["Sign"] = 7
-- 1心龙珠碎片
tValentineCompetition_RandomReward[3320097][8] = {}
tValentineCompetition_RandomReward[3320097][8]["RandomItemChanceType"] = 2
tValentineCompetition_RandomReward[3320097][8]["ItemChance"] = 750
tValentineCompetition_RandomReward[3320097][8]["RewardItem"] = {}
tValentineCompetition_RandomReward[3320097][8]["RewardItem"][1] = {}
tValentineCompetition_RandomReward[3320097][8]["RewardItem"][1]["Id"] = 3320092
tValentineCompetition_RandomReward[3320097][8]["RewardItem"][1]["Attr"] = "0 1"
-- 2心龙珠碎片
tValentineCompetition_RandomReward[3320097][9] = {}
tValentineCompetition_RandomReward[3320097][9]["RandomItemChanceType"] = 2
tValentineCompetition_RandomReward[3320097][9]["ItemChance"] = 2000
tValentineCompetition_RandomReward[3320097][9]["RewardItem"] = {}
tValentineCompetition_RandomReward[3320097][9]["RewardItem"][1] = {}
tValentineCompetition_RandomReward[3320097][9]["RewardItem"][1]["Id"] = 3320093
tValentineCompetition_RandomReward[3320097][9]["RewardItem"][1]["Attr"] = "0 1"
-- 龙珠
tValentineCompetition_RandomReward[3320097][10] = {}
tValentineCompetition_RandomReward[3320097][10]["RandomItemChanceType"] = 2
tValentineCompetition_RandomReward[3320097][10]["ItemChance"] = 700
tValentineCompetition_RandomReward[3320097][10]["RewardItem"] = {}
tValentineCompetition_RandomReward[3320097][10]["RewardItem"][1] = {}
tValentineCompetition_RandomReward[3320097][10]["RewardItem"][1]["Id"] = 1088000
tValentineCompetition_RandomReward[3320097][10]["RewardItem"][1]["Attr"] = "0 1 3"
-- 龙珠碎片
tValentineCompetition_RandomReward[3320097][11] = {}
tValentineCompetition_RandomReward[3320097][11]["RandomItemChanceType"] = 2
tValentineCompetition_RandomReward[3320097][11]["ItemChance"] = 1500
tValentineCompetition_RandomReward[3320097][11]["RewardItem"] = {}
tValentineCompetition_RandomReward[3320097][11]["RewardItem"][1] = {}
tValentineCompetition_RandomReward[3320097][11]["RewardItem"][1]["Id"] = 3311742
tValentineCompetition_RandomReward[3320097][11]["RewardItem"][1]["Attr"] = "0 1 3"
-- 龙珠卷
tValentineCompetition_RandomReward[3320097][12] = {}
tValentineCompetition_RandomReward[3320097][12]["RandomItemChanceType"] = 2
tValentineCompetition_RandomReward[3320097][12]["ItemChance"] = 300
tValentineCompetition_RandomReward[3320097][12]["RewardItem"] = {}
tValentineCompetition_RandomReward[3320097][12]["RewardItem"][1] = {}
tValentineCompetition_RandomReward[3320097][12]["RewardItem"][1]["Id"] = 3303306
tValentineCompetition_RandomReward[3320097][12]["RewardItem"][1]["Attr"] = "0 1 3"
-- 15分钟双人骑宠
tValentineCompetition_RandomReward[3320097][13] = {}
tValentineCompetition_RandomReward[3320097][13]["RandomItemChanceType"] = 2
tValentineCompetition_RandomReward[3320097][13]["ItemChance"] = 125
tValentineCompetition_RandomReward[3320097][13]["RewardItem"] = {}
tValentineCompetition_RandomReward[3320097][13]["RewardItem"][1] = {}
tValentineCompetition_RandomReward[3320097][13]["RewardItem"][1]["Id"] = 3320094
tValentineCompetition_RandomReward[3320097][13]["RewardItem"][1]["Attr"] = "0 1"

-- 怪物掉落
tValentineCompetition_RandomReward["MonsterDrop"] = {}
tValentineCompetition_RandomReward["MonsterDrop"][1] = {}
tValentineCompetition_RandomReward["MonsterDrop"][1]["ItemChanceSum"] = 10000
tValentineCompetition_RandomReward["MonsterDrop"][1]["LogId"] = 12001284
tValentineCompetition_RandomReward["MonsterDrop"][1]["LogStep"] = "4[1]"
-- 纪凡希口红
tValentineCompetition_RandomReward["MonsterDrop"][1][1] = {}
tValentineCompetition_RandomReward["MonsterDrop"][1][1]["RandomItemChanceType"] = 2
tValentineCompetition_RandomReward["MonsterDrop"][1][1]["ItemChance"] = 50
tValentineCompetition_RandomReward["MonsterDrop"][1][1]["EventType"] = tValentineCompetition_Stc["EventType"][10]
tValentineCompetition_RandomReward["MonsterDrop"][1][1]["DataType"] = tValentineCompetition_Stc["DataType"][10]
tValentineCompetition_RandomReward["MonsterDrop"][1][1]["RewardData"] = 5
tValentineCompetition_RandomReward["MonsterDrop"][1][1]["RewardDelay"] = 1
tValentineCompetition_RandomReward["MonsterDrop"][1][1]["RewardTimeType"] = 4
tValentineCompetition_RandomReward["MonsterDrop"][1][1]["RewardItem"] = {}
tValentineCompetition_RandomReward["MonsterDrop"][1][1]["RewardItem"][1] = {}
tValentineCompetition_RandomReward["MonsterDrop"][1][1]["RewardItem"][1]["Id"] = 3320096
tValentineCompetition_RandomReward["MonsterDrop"][1][1]["RewardItem"][1]["Attr"] = "0 1"
-- 无掉落
tValentineCompetition_RandomReward["MonsterDrop"][1][2] = {}
tValentineCompetition_RandomReward["MonsterDrop"][1][2]["RandomItemChanceType"] = 2
tValentineCompetition_RandomReward["MonsterDrop"][1][2]["ItemChance"] = 9950


-- 当天玩家评分的数据表格
local tValentineCompetition_UserSelectionData = {}
-- 【1】表示玩家时装外套数据
-- 例：    tValentineCompetition_UserSelectionData[1][nUserId][nItemId] = 1
tValentineCompetition_UserSelectionData[1] = {}
-- 【2】表示玩家骑宠外套数据
-- 例：    tValentineCompetition_UserSelectionData[2][nUserId][nItemId] = 1
tValentineCompetition_UserSelectionData[2] = {}
-- 【3】表示玩家武器外套数据   右手
-- 例：    tValentineCompetition_UserSelectionData[3][nUserId][nItemId] = 1
tValentineCompetition_UserSelectionData[3] = {}
-- 【4】表示玩家发型数据
-- 例：    tValentineCompetition_UserSelectionData[4][nUserId][nHairfaceId] = 1
tValentineCompetition_UserSelectionData[4] = {}
-- 【5】表示玩家翅膀数据
-- 例：    tValentineCompetition_UserSelectionData[5][nUserId][nWingType] = 1
tValentineCompetition_UserSelectionData[5] = {}
-- 【6】表示玩家称号数据
-- 例：    tValentineCompetition_UserSelectionData[6][nUserId][nTitleType] = 1
tValentineCompetition_UserSelectionData[6] = {}
-- 【7】表示玩家当天达到A级以上评分
-- 例：    tValentineCompetition_UserSelectionData[7][nUserId] = nUserId
tValentineCompetition_UserSelectionData[7] = {}

-- 当天排行榜表数据
local tValentineCompetition_DayRank = {}
tValentineCompetition_DayRank[1]  = {}
tValentineCompetition_DayRank[2]  = {}
tValentineCompetition_DayRank[3]  = {}
tValentineCompetition_DayRank[4]  = {}
tValentineCompetition_DayRank[5]  = {}
tValentineCompetition_DayRank[6]  = {}
tValentineCompetition_DayRank[7]  = {}
tValentineCompetition_DayRank[8]  = {}
tValentineCompetition_DayRank[9]  = {}
tValentineCompetition_DayRank[10] = {}

local fValentineCompetition_ChkMail = true

----------------------------------逻辑部分---------------------------------------------
-- 打开链接
function ValentineCompetition_OpenWebsite(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	local sWebAddress = tValentineCompetition_Data["WebAddress"]
	User_SendWebDialog(sWebAddress)
	-- User_NoviceTeaching(1050)
end

-- 判断玩家外套和骑宠是否评分过
function ValentineCompetition_ChkUserCoatAndMount(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	-- 判断是否禁止评分时间
	if Sys_ChkDayTime(tActivityTime["ValentineCompetition"]["NotRatingTime"]) then
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["WaitTime"])
		return
	end
	local nUserId = Get_UserId()
	-- fChkCoat  为false代表外套或者骑宠已经评过分
	local fChkCoat = true
	local nItemNum = 0
	-- 判断外套数据
	local nUserCoat = Get_EquipIDByPos(9)
	-- 没有外套
	if nUserCoat == 0 or nUserCoat == nil then
		-- Sys_MsgBox(tValentineCompetition_Text["SysText"]["NotCoat"], "NpcPosition_PathFind</N>23733", nil)
		LinkNpcGossipFunc_New(nNpcId, "8-2")
		return
	end
	-- 判断是否有评分道具
	if not Item_ChkItem(tValentineCompetition_Data["NeedItem"][1]) then
		LinkNpcGossipFunc_New(nNpcId, "3-1")
		return
	end
	
	local nUserCoatId = Get_ItemType(nUserCoat)
	-- 获取玩家外套数据
	if tValentineCompetition_UserSelectionData[1][nUserId] == nil then
		tValentineCompetition_UserSelectionData[1][nUserId] = {}
	end
	if tValentineCompetition_UserSelectionData[1][nUserId][nUserCoatId] then
		nItemNum = nItemNum + 1
		fChkCoat = false
	end
	
	-- 判断骑宠数据
	local nUserMounts = Get_EquipIDByPos(17)
	local nUserMountsId = 0
	if nUserMounts > 0 then
		-- 获取玩家骑宠数据
		if tValentineCompetition_UserSelectionData[2][nUserId] == nil then
			tValentineCompetition_UserSelectionData[2][nUserId] = {}
		end
		nUserMountsId = Get_ItemType(nUserMounts)
		if tValentineCompetition_UserSelectionData[2][nUserId][nUserMountsId] then
			nItemNum = nItemNum + 2
			fChkCoat = false
		end
	end
	-- 接对白
	if fChkCoat then
		-- 没评过分
		tNpcGossip[nNpcId]["OptionFunc911"] = "ValentineCompetition_StartGrading</N>23732</N>1" -- 确定评分
		LinkNpcGossipFunc_New(nNpcId, "9-1")
	else
		-- 评过分
		-- 获取外套名称
		local sCoatName = ""
		if nItemNum == 1 then
			sCoatName = Get_ItemtypeName(nUserCoatId)
		elseif nItemNum == 2 then
			sCoatName = Get_ItemtypeName(nUserMountsId)
		else
			sCoatName = Get_ItemtypeName(nUserCoatId) .. tValentineCompetition_Text["DialogReset"]["And"] .. Get_ItemtypeName(nUserMountsId)
		end
		tNpcGossip[nNpcId]["Text921"] = string.format(tValentineCompetition_Text[23732]["Text921"], sCoatName)
		tNpcGossip[nNpcId]["OptionFunc921"] = "ValentineCompetition_StartGrading</N>23732</N>1" -- 确定评分
		LinkNpcGossipFunc_New(nNpcId, "9-2")
	end
end

-- 开始评分（1支口红）
function ValentineCompetition_StartGrading(nNpcId, nIndex)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	-- 判断是否禁止评分时间
	if Sys_ChkDayTime(tActivityTime["ValentineCompetition"]["NotRatingTime"]) then
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["WaitTime"])
		return
	end
	-- 判断每日评分次数
	local nTimesEvent = tValentineCompetition_Stc["EventType"][14]
	local nTimesData = tValentineCompetition_Stc["DataType"][14]
	if Task_StcInterval(nTimesEvent, nTimesData, 1, 4) then
		Task_SetStatistic(nTimesEvent, nTimesData, 0, 1)
		Task_SetStcTimestamp(nTimesEvent, nTimesData, 0)
	end
	if Task_ChkStcValue(nTimesEvent, nTimesData, ">=", 10) then
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["TimesOver"])
		return
	end
	
	-- 判断是否拥有口红
	if nIndex == 1 and (not Item_ChkItem(tValentineCompetition_Data["NeedItem"][1])) then
		LinkNpcGossipFunc_New(nNpcId, "3-1")
		return
	else
		ValentineCompetition_GradingAndReward(nNpcId, nIndex)
	end
end

-- 进行评分并发放奖励 nIndex  1,道具   2,天石
function ValentineCompetition_GradingAndReward(nNpcId, nIndex)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	-- 判断是否禁止评分时间
	if Sys_ChkDayTime(tActivityTime["ValentineCompetition"]["NotRatingTime"]) then
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["WaitTime"])
		return
	end
	-- 判断每日评分次数
	local nTimesEvent = tValentineCompetition_Stc["EventType"][14]
	local nTimesData = tValentineCompetition_Stc["DataType"][14]
	if Task_StcInterval(nTimesEvent, nTimesData, 1, 4) then
		Task_SetStatistic(nTimesEvent, nTimesData, 0, 1)
		Task_SetStcTimestamp(nTimesEvent, nTimesData, 0)
	end
	if Task_ChkStcValue(nTimesEvent, nTimesData, ">=", 10) then
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["TimesOver"])
		return
	end
	local nUserCoatId, nUserMountsId = ValentineCompetition_GetUserCoatId()
	-- 判断玩家是否有穿外套
	if nUserCoatId == 0 then
		-- Sys_MsgBox(tValentineCompetition_Text["SysText"]["NotCoat"], "NpcPosition_PathFind</N>23733", nil)
		LinkNpcGossipFunc_New(nNpcId, "8-2")
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(2) then
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["NotSpace"])
		return
	end
	-- 判断条件
	if nIndex == 1 then
		if not (Item_ChkItem(tValentineCompetition_Data["NeedItem"][1]) and Item_DelItem(tValentineCompetition_Data["NeedItem"][1])) then
			LinkNpcGossipFunc_New(nNpcId, "3-1")
			return
		end
	else
		local nNeedMoney = tValentineCompetition_Data["NeedEMoney"]["Lipstick"]
		-- 判断玩家银两
		if not User_CanPutMoney2Bag(-nNeedMoney) then
			Sys_MsgBox(tValentineCompetition_Text["SysText"]["NotMoney"])
		end
		-- 扣除银两
		if not User_AddMoney(-nNeedMoney) then
			Sys_MsgBox(tValentineCompetition_Text["SysText"]["NotMoney"])
			return
		end
	end
	-- 计算玩家评分
	local nUserScore, nSign = ValentineCompetition_CalculationUserFraction()
	-- 评分完成记录log
	Sys_SaveActionRewardLog(string.format(tValentineCompetition_Data["Log"]["ScoreLog"], nIndex, nUserScore))
	-- 记录每日时尚榜
	ValentineCompetition_SaveDayFactionRank(nNpcId, nUserScore)
	-- 设置每日评分次数
	Task_AddStatistic(nTimesEvent, nTimesData, 1, 1)
	Task_SetStcTimestamp(nTimesEvent, nTimesData, 0)
	-- 记录参与次数
	Sys_SaveEmoneyBuy(tValentineCompetition_Data["Emoneylog"][1])
	
	-- 获取外套名称
	local sCoatName = Get_ItemtypeName(nUserCoatId)
	if nUserMountsId > 0 then
		local sMountsName = Get_ItemtypeName(nUserMountsId)
		sCoatName = sCoatName .. tValentineCompetition_Text["DialogReset"]["And"] .. sMountsName
	end
	-- 判断评分等级
	local nUserId = Get_UserId()
	-- SS
	if nUserScore >= tValentineCompetition_Data["Score"][2] then
		-- 时尚达人总榜 记录S个数
		ValentineCompetition_SaveSRank(nNpcId, 2)
		RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward["GradingReward"][1])
		tNpcGossip[nNpcId]["Text215"] = string.format(tValentineCompetition_Text[nNpcId]["Text215"], nUserScore)
		-- 重新赋值对白
		tNpcGossip[nNpcId]["Text213"] = string.format(tValentineCompetition_Text[nNpcId]["Text213"], sCoatName)
		LinkNpcGossipFunc_New(nNpcId, "2-1")
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["GradingReward"][1])
		-- 记录A级以上评分
		if tValentineCompetition_UserSelectionData[7][nUserId] == nil then
			-- 每日首次A级以上评分发放奖励
			ValentineCompetition_MailSendForA()
			tValentineCompetition_UserSelectionData[7][nUserId] = nUserId
		end
		-- 全服公告
		local sUserName = Get_UserName()
		Sys_SystemBroadcast(string.format(tValentineCompetition_Text["Broadcast"]["SSBroad"], sUserName, nUserScore))
		return
	-- S
	elseif nUserScore >= tValentineCompetition_Data["Score"][3] then
		-- 时尚达人总榜 记录S个数
		ValentineCompetition_SaveSRank(nNpcId, 1)
		RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward["GradingReward"][2])
		tNpcGossip[nNpcId]["Text225"] = string.format(tValentineCompetition_Text[nNpcId]["Text225"], nUserScore)
		-- 重新赋值对白
		if nSign > 0 then
			tNpcGossip[nNpcId]["Text223"] = string.format(tValentineCompetition_Text[nNpcId]["Text227"], sCoatName)
		else
			tNpcGossip[nNpcId]["Text223"] = string.format(tValentineCompetition_Text[nNpcId]["Text223"], sCoatName)
		end
		LinkNpcGossipFunc_New(nNpcId, "2-2")
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["GradingReward"][2])
		-- 记录A级以上评分
		if tValentineCompetition_UserSelectionData[7][nUserId] == nil then
			ValentineCompetition_MailSendForA()
			tValentineCompetition_UserSelectionData[7][nUserId] = nUserId
		end
		return
	-- A
	elseif nUserScore >= tValentineCompetition_Data["Score"][4] then
		RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward["GradingReward"][3])
		tNpcGossip[nNpcId]["Text235"] = string.format(tValentineCompetition_Text[nNpcId]["Text235"], nUserScore)
		-- 重新赋值对白
		if nSign > 0 then
			tNpcGossip[nNpcId]["Text233"] = string.format(tValentineCompetition_Text[nNpcId]["Text237"], sCoatName)
		else
			tNpcGossip[nNpcId]["Text233"] = string.format(tValentineCompetition_Text[nNpcId]["Text233"], sCoatName)
		end
		LinkNpcGossipFunc_New(nNpcId, "2-3")
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["GradingReward"][3])
		-- 记录A级以上评分
		if tValentineCompetition_UserSelectionData[7][nUserId] == nil then
			ValentineCompetition_MailSendForA()
			tValentineCompetition_UserSelectionData[7][nUserId] = nUserId
		end
		return
	-- B+
	elseif nUserScore >= tValentineCompetition_Data["Score"][5] then
		RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward["GradingReward"][4])
		tNpcGossip[nNpcId]["Text245"] = string.format(tValentineCompetition_Text[nNpcId]["Text245"], nUserScore)
		-- 重新赋值对白
		if nSign > 0 then
			tNpcGossip[nNpcId]["Text243"] = string.format(tValentineCompetition_Text[nNpcId]["Text247"], sCoatName)
		else
			tNpcGossip[nNpcId]["Text243"] = string.format(tValentineCompetition_Text[nNpcId]["Text243"], sCoatName)
		end
		LinkNpcGossipFunc_New(nNpcId, "2-4")
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["GradingReward"][4])
		return
	-- B
	else
		RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward["GradingReward"][5])
		tNpcGossip[nNpcId]["Text255"] = string.format(tValentineCompetition_Text[nNpcId]["Text255"], nUserScore)
		-- 重新赋值对白
		if nSign > 0 then
			tNpcGossip[nNpcId]["Text253"] = string.format(tValentineCompetition_Text[nNpcId]["Text257"], sCoatName)
		else
			tNpcGossip[nNpcId]["Text253"] = string.format(tValentineCompetition_Text[nNpcId]["Text253"], sCoatName)
		end
		LinkNpcGossipFunc_New(nNpcId, "2-5")
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["GradingReward"][5])
		return
	end
end

-- 计算玩家评分
function ValentineCompetition_CalculationUserFraction()
	local nSumScore = 0
	-- 外套评分
	local nCoatScore, nSign1 = ValentineCompetition_CalculationCoat()
	-- 骑宠评分
	local nMountsScore, nSign2 = ValentineCompetition_CalculationMounts()
	-- 武器外套评分
	local nWeaponScore = ValentineCompetition_CalculationWeapon()
	-- 发型评分
	local nHairScore = ValentineCompetition_CalculationHair()
	-- 翅膀评分
	local nWingScore = ValentineCompetition_CalculationWing()
	-- 称号评分
	local nTitleScore = ValentineCompetition_CalculationTitle()
	-- 光效评分  取消
	-- local nEffectScore = ValentineCompetition_CalculationEffect()
	
	-- 计算总分
	nSumScore = nCoatScore + nMountsScore + nWeaponScore + nHairScore + nWingScore + nTitleScore
	-- 浮动值
	-- local nFloatNum = math.random(9, 11)
	-- nSumScore = math.floor(nSumScore * (nFloatNum / 10))
	-- 判断是否重复搭配
	if nSign1 > 0 or nSign2 > 0 then
		return nSumScore, 1
	else
		return nSumScore, 0
	end
end

-- 获取玩家外套ID
function ValentineCompetition_GetUserCoatId()
	local nUserCoat = Get_EquipIDByPos(9)
	-- 没有外套
	if nUserCoat == 0 or nUserCoat == nil then
		return 0, 0
	end
	local nUserCoatId = Get_ItemType(nUserCoat)
	
	local nUserMounts = Get_EquipIDByPos(17)
	-- 没有骑宠
	if nUserMounts == 0 or nUserMounts == nil then
		return nUserCoatId, 0
	end
	local nUserMountsId = Get_ItemType(nUserMounts)
	return nUserCoatId, nUserMountsId
end

-- 计算评分  外套
function ValentineCompetition_CalculationCoat()
	local nUserId = Get_UserId()
	local nCoatScore = 0
	-- 获取玩家外套数据
	if tValentineCompetition_UserSelectionData[1][nUserId] == nil then
		tValentineCompetition_UserSelectionData[1][nUserId] = {}
	end
	local nUserCoat = Get_EquipIDByPos(9)
	-- 没有外套
	if nUserCoat == 0 or nUserCoat == nil then
		return nCoatScore, 0
	end
	local nUserCoatId = Get_ItemType(nUserCoat)
	local nCoatStar = tValentineCompetition_Data["CoatStar"][nUserCoatId]
	if nCoatStar == nil then
		nCoatStar = 1
	end
	local nSign = 0
	-- 赋值最初始分数  当天已使用，则减半
	if tValentineCompetition_UserSelectionData[1][nUserId][nUserCoatId] == nil then
		nCoatScore = tValentineCompetition_Data["StarValue"][1][nCoatStar]
	else
		nCoatScore = math.floor(tValentineCompetition_Data["StarValue"][1][nCoatStar] / 2)
		nSign = 1
	end
	
	-- 判断主题
	local nGlobalId = tValentineCompetition_Data["GlobalId"]
	local nDaySubject = Get_SysDynaGlobalData0(nGlobalId)
	local fDayChk = false
	for i = 1, 5 do
		if tValentineCompetition_Data["Subject"][nDaySubject][i] == nUserCoatId then
			fDayChk = true
		end
	end
	-- 外套符合当前主题
	if fDayChk then
		nCoatScore = math.floor(nCoatScore * 1.2)
	end
	-- 设置当前外套已经记录
	tValentineCompetition_UserSelectionData[1][nUserId][nUserCoatId] = 1
	-- 浮动值
	local nFloatNum = math.random(9, 11)
	nCoatScore = math.floor(nCoatScore * (nFloatNum / 10))
	
	return nCoatScore, nSign
end

-- 计算评分  骑宠
function ValentineCompetition_CalculationMounts()
	local nUserId = Get_UserId()
	local nMountsScore = 0
	-- 获取玩家骑宠数据
	if tValentineCompetition_UserSelectionData[2][nUserId] == nil then
		tValentineCompetition_UserSelectionData[2][nUserId] = {}
	end
	local nUserMounts = Get_EquipIDByPos(17)
	-- 没有骑宠
	if nUserMounts == 0 or nUserMounts == nil then
		return nMountsScore, 0
	end
	local nUserMountsId = Get_ItemType(nUserMounts)
	local nMountsStar = tValentineCompetition_Data["CoatStar"][nUserMountsId]
	if nMountsStar == nil then
		nMountsStar = 1
	end
	local nSign = 0
	-- 赋值最初始分数  当天已使用，则减半
	if tValentineCompetition_UserSelectionData[2][nUserId][nUserMountsId] == nil then
		nMountsScore = tValentineCompetition_Data["StarValue"][2][nMountsStar]
	else
		nMountsScore = math.floor(tValentineCompetition_Data["StarValue"][2][nMountsStar] / 2)
		nSign = 1
	end
	
	-- 设置当前骑宠已经记录
	tValentineCompetition_UserSelectionData[2][nUserId][nUserMountsId] = 1
	-- 浮动值
	local nFloatNum = math.random(9, 11)
	nMountsScore = math.floor(nMountsScore * (nFloatNum / 10))
	
	return nMountsScore, nSign
end

-- 计算评分  武器外套
function ValentineCompetition_CalculationWeapon()
	local nUserId = Get_UserId()
	local nWeaponScore = 0
	-- 获取玩家武器外套数据
	-- if tValentineCompetition_UserSelectionData[3][nUserId] == nil then
		-- tValentineCompetition_UserSelectionData[3][nUserId] = {}
	-- end
	local nUserWeapon = Get_EquipIDByPos(15)
	-- 没有武器外套
	if nUserWeapon == 0 or nUserWeapon == nil then
		return nWeaponScore
	end
	local nUserWeaponId = Get_ItemType(nUserWeapon)
	local nUserWeaponEffect = tValentineCompetition_Data["WeaponEffect"][nUserWeaponId]
	if nUserWeaponEffect == nil then
		nUserWeaponEffect = 2
	end
	-- 赋值最初始分数  当天已使用，则减半
	-- if tValentineCompetition_UserSelectionData[3][nUserId][nUserWeaponId] == nil then
	nWeaponScore = tValentineCompetition_Data["StarValue"][3][nUserWeaponEffect]
	-- else
		-- nWeaponScore = math.floor(tValentineCompetition_Data["StarValue"][3][nUserWeaponEffect] / 2)
	-- end
	
	-- 设置当前骑宠已经记录
	-- tValentineCompetition_UserSelectionData[3][nUserId][nUserWeaponId] = 1
	-- 浮动值
	local nFloatNum = math.random(9, 11)
	nWeaponScore = math.floor(nWeaponScore * (nFloatNum / 10))
	
	return nWeaponScore
end

-- 计算评分  发型
function ValentineCompetition_CalculationHair()
	local nUserId = Get_UserId()
	local nHairScore = 0
	-- 获取玩家发型外套数据
	-- if tValentineCompetition_UserSelectionData[4][nUserId] == nil then
		-- tValentineCompetition_UserSelectionData[4][nUserId] = {}
	-- end
	local nUserHairId = Get_UserHair() % 1000
	-- 没有发型
	if nUserHairId == 0 then
		return nHairScore
	end
	local nUserHairRare = tValentineCompetition_Data["RareHair"][nUserHairId]
	if nUserHairRare == nil then
		nUserHairRare = 2
	end
	-- 赋值最初始分数  当天已使用，则减半
	-- if tValentineCompetition_UserSelectionData[4][nUserId][nUserHairId] == nil then
	nHairScore = tValentineCompetition_Data["StarValue"][4][nUserHairRare]
	-- else
		-- nHairScore = math.floor(tValentineCompetition_Data["StarValue"][4][nUserHairRare] / 2)
	-- end
	
	-- 设置当前骑宠已经记录
	-- tValentineCompetition_UserSelectionData[4][nUserId][nUserHairId] = 1
	-- 浮动值
	local nFloatNum = math.random(9, 11)
	nHairScore = math.floor(nHairScore * (nFloatNum / 10))
	
	return nHairScore
end

-- 计算评分  翅膀
function ValentineCompetition_CalculationWing()
	local nUserId = Get_UserId()
	local nWingScore = 0
	-- 获取玩家翅膀数据
	-- if tValentineCompetition_UserSelectionData[5][nUserId] == nil then
		-- tValentineCompetition_UserSelectionData[5][nUserId] = {}
	-- end
	local nUserWingId = math.floor(Get_UserWingType() / 10000)
	local nUserWingRare = 3
	-- 没有翅膀外套
	if nUserWingId == 0 then
		-- 没有风雷翅
		local nUserWing = Get_EquipIDByPos(19)
		if nUserWing == 0 or nUserWing == nil then
			return nWingScore
		else
			nUserWingRare = 3
		end
	-- 有翅膀外套
	else
		nUserWingRare = tValentineCompetition_Data["RareWing"][nUserWingId]
		if nUserWingRare == nil then
			nUserWingRare = 2
		end
	end
	-- 赋值最初始分数  当天已使用，则减半
	-- if tValentineCompetition_UserSelectionData[5][nUserId][nUserWingId] == nil then
	nWingScore = tValentineCompetition_Data["StarValue"][5][nUserWingRare]
	-- else
		-- nWingScore = math.floor(tValentineCompetition_Data["StarValue"][5][nUserWingRare] / 2)
	-- end
	
	-- 设置当前骑宠已经记录
	-- tValentineCompetition_UserSelectionData[5][nUserId][nUserWingId] = 1
	-- 浮动值
	local nFloatNum = math.random(9, 11)
	nWingScore = math.floor(nWingScore * (nFloatNum / 10))
	
	return nWingScore
end

-- 计算评分  称号
function ValentineCompetition_CalculationTitle()
	local nUserId = Get_UserId()
	local nTitleScore = 0
	-- 获取玩家称号数据
	-- if tValentineCompetition_UserSelectionData[6][nUserId] == nil then
		-- tValentineCompetition_UserSelectionData[6][nUserId] = {}
	-- end
	local nUserTitleId = math.floor(Get_UserTitleType() / 10000)
	-- 没有称号
	if nUserTitleId == 0 then
		return nTitleScore
	end
	local nUserTitleRare = tValentineCompetition_Data["SeniorTitle"][nUserTitleId]
	if nUserTitleRare == nil then
		nUserTitleRare = 3
	end
	-- 赋值最初始分数  当天已使用，则减半
	-- if tValentineCompetition_UserSelectionData[6][nUserId][nUserTitleId] == nil then
		nTitleScore = tValentineCompetition_Data["StarValue"][6][nUserTitleRare]
	-- else
		-- nTitleScore = math.floor(tValentineCompetition_Data["StarValue"][6][nUserTitleRare] / 2)
	-- end
	
	-- 设置当前骑宠已经记录
	-- tValentineCompetition_UserSelectionData[6][nUserId][nUserTitleId] = 1
	-- 浮动值
	local nFloatNum = math.random(9, 11)
	nTitleScore = math.floor(nTitleScore * (nFloatNum / 10))
	
	return nTitleScore
end

-- 计算评分  光效
-- function ValentineCompetition_CalculationEffect()
	-- local nUserId = Get_UserId()
	-- local nEffectScore = 0
	-- -- 判断是否购买光效
	-- local nEffectEvent = tValentineCompetition_Stc["EventType"][14]
	-- local nEffectData = tValentineCompetition_Stc["DataType"][14]
	-- if Task_StcInterval(nEffectEvent, nEffectData, 15, 1) then
		-- Task_SetStatistic(nEffectEvent, nEffectData, 0, 1)
		-- Task_SetStcTimestamp(nEffectEvent, nEffectData, 0)
	-- end
	-- local nEffectNum =  Get_UserStatisticValue(nEffectEvent, nEffectData)
	-- if nEffectNum > 0 then
		-- nEffectScore = tValentineCompetition_Data["StarValue"][7][1]
		-- -- 计算完分数，重置光效掩码
		-- User_EffectDel("self", "red-flower-charm1-1")
		-- Task_SetStatistic(nEffectEvent, nEffectData, 0, 1)
		-- Task_SetStcTimestamp(nEffectEvent, nEffectData, 0)
	-- end
	
	-- return nEffectScore
-- end


-- 记录每日时尚榜
function ValentineCompetition_SaveDayFactionRank(nNpcId, nUserScore)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	-- 玩家总时尚得分记录
	local nUserScoreEvent = tValentineCompetition_Stc["EventType"][3]
	local nUserScoretData = tValentineCompetition_Stc["DataType"][3]
	Task_AddStatistic(nUserScoreEvent, nUserScoretData, nUserScore, 1)
	Task_SetStcTimestamp(nUserScoreEvent, nUserScoretData, 0)
	-- 判断当次得分是否为今日最大值
	local nDayBestEvent = tValentineCompetition_Stc["EventType"][1]
	local nDayBestData = tValentineCompetition_Stc["DataType"][1]
	if Task_StcInterval(nDayBestEvent, nDayBestData, 1, 4) then
		Task_SetStatistic(nDayBestEvent, nDayBestData, 0, 1)
		Task_SetStcTimestamp(nDayBestEvent, nDayBestData, 0)
	end
	local nDayBestNum =  Get_UserStatisticValue(nDayBestEvent, nDayBestData)
	-- 非当日最大值则返回
	if nDayBestNum >= nUserScore then
		return
	end
	Task_SetStatistic(nDayBestEvent, nDayBestData, nUserScore, 1)
	Task_SetStcTimestamp(nDayBestEvent, nDayBestData, 0)
	-- 重设排行榜
	local nIndex = tValentineCompetition_Data["RankDataDay"]
	local nUserTopRankBefore = RankingFunc_GetUserInRank(nIndex)
	RankingFunc_SetInfo(nIndex, nUserScore)
	local nUserTopRankAfter = RankingFunc_GetUserInRank(nIndex)
	-- 顶替前三名则播报
	if (nUserTopRankBefore > 3 or nUserTopRankBefore == 0) then
		if (nUserTopRankAfter >= 1 and nUserTopRankAfter <= 3) then
			local sUserName = Get_UserName()
			Sys_SystemBroadcast(string.format(tValentineCompetition_Text["Broadcast"]["DayTopChange"], sUserName))
		end
	end
end

-- 时尚达人总榜 记录S个数
function ValentineCompetition_SaveSRank(nNpcId, nSNum)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	-- 增加S总记录
	local nAllSEvent = tValentineCompetition_Stc["EventType"][2]
	local nAllStData = tValentineCompetition_Stc["DataType"][2]
	Task_AddStatistic(nAllSEvent, nAllStData, nSNum, 1)
	Task_SetStcTimestamp(nAllSEvent, nAllStData, 0)
	-- 重设排行榜
	local nAllSNum =  Get_UserStatisticValue(nAllSEvent, nAllStData)
	local nIndex = tValentineCompetition_Data["RankDataActivity"]
	local nUserTopRankBefore = RankingFunc_GetUserInRank(nIndex)
	RankingFunc_SetInfo(nIndex, nAllSNum)
	local nUserTopRankAfter = RankingFunc_GetUserInRank(nIndex)
	-- 顶替前三名则播报
	if (nUserTopRankBefore > 3 or nUserTopRankBefore == 0) then
		if (nUserTopRankAfter >= 1 and nUserTopRankAfter <= 3) then
			local sUserName = Get_UserName()
			Sys_SystemBroadcast(string.format(tValentineCompetition_Text["Broadcast"]["AllTopChange"], sUserName))
		end
	end
end


-- 购买纪凡希口红评分判断（XX天石）
function ValentineCompetition_ChkBuyJFXLipstick(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	local nNeedMoney = tValentineCompetition_Data["NeedEMoney"]["Lipstick"]
	-- 判断玩家银两
	if not User_CanPutMoney2Bag(-nNeedMoney) then
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["NotMoney"])
	end
	-- 二次确认判断
	local nDayChkEvent = tValentineCompetition_Stc["EventType"][4]
	local nDayChkData = tValentineCompetition_Stc["DataType"][4]
	if Task_StcInterval(nDayChkEvent, nDayChkData, 1, 4) then
		Task_SetStatistic(nDayChkEvent, nDayChkData, 0, 1)
		Task_SetStcTimestamp(nDayChkEvent, nDayChkData, 0)
	end
	local nBagMoney = tValentineCompetition_Data["NeedEMoney"]["BagMoneyBig"]
	if Task_ChkStcValue(nDayChkEvent, nDayChkData, ">", 0) or User_CanPutMoney2Bag(-nBagMoney) then
		ValentineCompetition_BuyJFXLipstick(nNpcId)
	else
		LinkNpcGossipFunc_New(nNpcId, "3-2")
	end
end

-- 购买纪凡希口红评分（XX天石）
function ValentineCompetition_BuyJFXLipstick(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	local nNeedMoney = tValentineCompetition_Data["NeedEMoney"]["Lipstick"]
	-- 判断玩家银两
	if not User_CanPutMoney2Bag(-nNeedMoney) then
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["NotMoney"])
	else
		-- ValentineCompetition_GradingAndReward(nNpcId, 2)
		local nUserId = Get_UserId()
		local fChkCoat = true
		local nItemNum = 0
		-- 判断外套数据
		local nUserCoat = Get_EquipIDByPos(9)
		-- 没有外套
		if nUserCoat == 0 or nUserCoat == nil then
			-- Sys_MsgBox(tValentineCompetition_Text["SysText"]["NotCoat"], "NpcPosition_PathFind</N>23733", nil)
			LinkNpcGossipFunc_New(nNpcId, "8-2")
			return
		end
		local nUserCoatId = Get_ItemType(nUserCoat)
		-- 获取玩家外套数据
		if tValentineCompetition_UserSelectionData[1][nUserId] == nil then
			tValentineCompetition_UserSelectionData[1][nUserId] = {}
		end
		if tValentineCompetition_UserSelectionData[1][nUserId][nUserCoatId] then
			nItemNum = nItemNum + 1
			fChkCoat = false
		end
		-- 判断骑宠数据
		local nUserMounts = Get_EquipIDByPos(17)
		local nUserMountsId = 0
		if nUserMounts > 0 then
			-- 获取玩家骑宠数据
			if tValentineCompetition_UserSelectionData[2][nUserId] == nil then
				tValentineCompetition_UserSelectionData[2][nUserId] = {}
			end
			nUserMountsId = Get_ItemType(nUserMounts)
			if tValentineCompetition_UserSelectionData[2][nUserId][nUserMountsId] then
				nItemNum = nItemNum + 2
				fChkCoat = false
			end
		end
		-- 接对白
		if fChkCoat then
			-- 没评过分
			tNpcGossip[nNpcId]["OptionFunc911"] = "ValentineCompetition_StartGrading</N>23732</N>2" -- 确定评分
			LinkNpcGossipFunc_New(nNpcId, "9-1")
		else
			-- 评过分
			-- 获取外套名称
			local sCoatName = ""
			if nItemNum == 1 then
				sCoatName = Get_ItemtypeName(nUserCoatId)
			elseif nItemNum == 2 then
				sCoatName = Get_ItemtypeName(nUserMountsId)
			else
				sCoatName = Get_ItemtypeName(nUserCoatId) .. tValentineCompetition_Text["DialogReset"]["And"] .. Get_ItemtypeName(nUserMountsId)
			end
			tNpcGossip[nNpcId]["Text921"] = string.format(tValentineCompetition_Text[23732]["Text921"], sCoatName)
			tNpcGossip[nNpcId]["OptionFunc921"] = "ValentineCompetition_StartGrading</N>23732</N>2" -- 确定评分
			LinkNpcGossipFunc_New(nNpcId, "9-2")
		end
	end
end

-- 今日屏蔽二次确认
function ValentineCompetition_ShieldTwoConfirmation(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	local nEvent = tValentineCompetition_Stc["EventType"][4]
	local nData = tValentineCompetition_Stc["DataType"][4]
	-- 设置掩码，取消今日二次确认
	Task_AddStatistic(nEvent, nData, 1, 1)
	Task_SetStcTimestamp(nEvent, nData, 0)
	
	LinkNpcGossipFunc_New(nNpcId, "1-4")
end

-- 领取奖励
function ValentineCompetition_ChkPullulateRewardChk(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	-- 判断背包空间
	-- if not User_CheckLeftSpace(1) then
		-- Sys_MsgBox(tValentineCompetition_Text["SysText"]["NotSpace"])
		-- return
	-- end
	-- 玩家已领取的奖励
	local nRewardEvent = tValentineCompetition_Stc["EventType"][5]
	local nRewardData = tValentineCompetition_Stc["DataType"][5]
	local nHaveReward = Get_UserStatisticValue(nRewardEvent, nRewardData)
	-- 玩家时尚得分
	local nUserScoreEvent = tValentineCompetition_Stc["EventType"][3]
	local nUserScoreData = tValentineCompetition_Stc["DataType"][3]
	local nUserScoreNum = Get_UserStatisticValue(nUserScoreEvent, nUserScoreData)
	-- 判断是否领取完
	if nHaveReward >= 7 then
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["NotReward"])
		return
	end
	-- 判断是否可领取下一级奖励
	local nNextSign = tValentineCompetition_Data["FactionRewardNeed"][nHaveReward + 1]
	if nUserScoreNum < nNextSign then
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["NotReward"])
		return
	end
	-- 奖励领取
	local nReward = 0
	for i = nHaveReward + 1, 7 do
		if nUserScoreNum >= tValentineCompetition_Data["FactionRewardNeed"][i] then
			-- 判断背包空间
			-- if not User_CheckLeftSpace(1) then
				-- return
			-- end
			if Task_AddStatistic(nRewardEvent, nRewardData, 1, 1) then
				Task_SetStcTimestamp(nRewardEvent, nRewardData, 0)
				local bSuccess, sReward = RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward["PullulateReward"][i])
				if bSuccess then
					nReward = nReward + tValentineCompetition_Reward["PullulateReward"][i]["RewardStrengthValue"]["Value"]
				end
			end
		end
	end
	if nReward > 0 then
		Sys_MsgBox(string.format(tValentineCompetition_Text["SysText"]["FactionReward"], nReward))
	end
end

-- 时装外套租借判断
function ValentineCompetition_ChkLatestFashionLease()
	-- 判断可以租借的外套数量
	-- 1-7
	local nEvent1 = tValentineCompetition_Stc["EventType"][6]
	local nData1 = tValentineCompetition_Stc["DataType"][6]
	local nNum1 = Get_UserStatisticValue(nEvent1, nData1)
	if nNum1 < 1111111 then
		return true
	end
	-- 2-13
	local nEvent2 = tValentineCompetition_Stc["EventType"][7]
	local nData2 = tValentineCompetition_Stc["DataType"][7]
	local nNum2 = Get_UserStatisticValue(nEvent2, nData2)
	if nNum2 < 1111111 then
		return true
	end
	return false
end

-- 坐骑外套租借判断
function ValentineCompetition_ChkRideDandleLease()
	-- 判断可以租借的外套数量
	-- 1-7
	local nEvent1 = tValentineCompetition_Stc["EventType"][8]
	local nData1 = tValentineCompetition_Stc["DataType"][8]
	local nNum1 = Get_UserStatisticValue(nEvent1, nData1)
	if nNum1 < 1111111 then
		return true
	end
	-- 2-13
	local nEvent2 = tValentineCompetition_Stc["EventType"][9]
	local nData2 = tValentineCompetition_Stc["DataType"][9]
	local nNum2 = Get_UserStatisticValue(nEvent2, nData2)
	if nNum2 < 111111 then
		return true
	end
	return false
end

-- 租用5星外套 打开天石商店
function ValentineCompetition_OpenEmoneyShop(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["PackUseTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	-- 打开天石商店
	User_OpenDialog()
end

-- 租用外套判断  nIndex  1  时装外套   2  坐骑外套
function ValentineCompetition_CoatLease(nNpcId, nIndex)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	-- 时装外套租借判断
	if nIndex == 1 then
		if ValentineCompetition_ChkLatestFashionLease() then
			LinkNpcGossipFunc_New(nNpcId, "2-2")
			return
		else
			LinkNpcGossipFunc_New(nNpcId, "2-1")
			return
		end
	-- 坐骑外套租借判断
	elseif nIndex == 2 then
		if ValentineCompetition_ChkRideDandleLease() then
			LinkNpcGossipFunc_New(nNpcId, "3-2")
			return
		else
			LinkNpcGossipFunc_New(nNpcId, "3-1")
			return
		end
	end
end

-- 判断单间外套是否租用
-- nSign   1  时装外套   2  坐骑外套
-- nIndex  1-14   区分掩码存储
function ValentineCompetition_ChkSingletonCoatLease(nSign, nIndex)
	-- 时装外套
	if nSign == 1 then
		if nIndex <= 7 then
			local nEvent1 = tValentineCompetition_Stc["EventType"][6]
			local nData1 = tValentineCompetition_Stc["DataType"][6]
			local nNum1 = Get_UserStatisticValue(nEvent1, nData1)
			return ValentineCompetition_GetStcValueNum(nNum1, nIndex)
		else
			local nEvent2 = tValentineCompetition_Stc["EventType"][7]
			local nData2 = tValentineCompetition_Stc["DataType"][7]
			local nNum2 = Get_UserStatisticValue(nEvent2, nData2)
			return ValentineCompetition_GetStcValueNum(nNum2, nIndex - 7)
		end
	-- 坐骑外套
	elseif nSign == 2 then
		if nIndex <= 7 then
			local nEvent1 = tValentineCompetition_Stc["EventType"][8]
			local nData1 = tValentineCompetition_Stc["DataType"][8]
			local nNum1 = Get_UserStatisticValue(nEvent1, nData1)
			return ValentineCompetition_GetStcValueNum(nNum1, nIndex)
		else
			local nEvent2 = tValentineCompetition_Stc["EventType"][9]
			local nData2 = tValentineCompetition_Stc["DataType"][9]
			local nNum2 = Get_UserStatisticValue(nEvent2, nData2)
			return ValentineCompetition_GetStcValueNum(nNum2, nIndex - 7)
		end
	end
	return false
end

-- 获取掩码值的位数值  nStcValue 掩码值  nIndex  位数
function ValentineCompetition_GetStcValueNum(nStcValue, nIndex)
	-- 掩码没有值，直接返回
	if nStcValue == 0 then
		return false
	end
	-- 输入值错误
	if nIndex > 7 then
		return true
	end
	local nSignNum = math.floor(nStcValue / tValentineCompetition_Data["CoatLease"]["SaveNum"][1][nIndex]) % 10
	-- 已经租用
	if nSignNum > 0 then
		return true
	end
	-- 未租用
	return false
end

-- 租借外套接二次确认判断 nSign 1 时装外套 2 骑宠外套  nIndex  外套记号
function ValentineCompetition_ChkSecondCoatLease(nNpcId, nSign, nIndex)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	-- 天石判断
	local nNeedEMoney = tValentineCompetition_Data["NeedEMoney"]["SellCoat"]
	-- 判断天石
	if Get_UserEMoney() < nNeedEMoney then
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["NotEMoneyRent"])
		return
	end
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["NotSpace"])
		return
	end
	-- 对白重新赋值
	local nCoatId = tValentineCompetition_Data["CoatLease"][nSign][nIndex]
	local sCoatName = Get_ItemtypeName(nCoatId)
	-- if nSign == 1 then
	tNpcGossip[nNpcId]["Text231"] = string.format(tValentineCompetition_Text[nNpcId]["Text231"], sCoatName)
	tNpcGossip[nNpcId]["OptionFunc231"] = "ValentineCompetition_NowRentCoat</N>" .. nNpcId .. "</N>" .. nSign .. "</N>" .. nIndex
	LinkNpcGossipFunc_New(nNpcId, "2-3")
	-- else
		-- tNpcGossip[nNpcId]["Text331"] = string.format(tValentineCompetition_Text[nNpcId]["Text331"], sCoatName)
		-- tNpcGossip[nNpcId]["OptionFunc331"] = "ValentineCompetition_NowRentCoat</N>" .. nNpcId .. "</N>" .. nSign .. "</N>" .. nIndex
		-- LinkNpcGossipFunc_New(nNpcId, "3-3")
	-- end
end

-- 确认花费天石租借外套
function ValentineCompetition_NowRentCoat(nNpcId, nSign, nIndex)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	-- 天石判断
	local nNeedEMoney = tValentineCompetition_Data["NeedEMoney"]["SellCoat"]
	-- 判断天石
	if Get_UserEMoney() < nNeedEMoney then
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["NotEMoneyRent"])
		return
	end
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["NotSpace"])
		return
	end
	-- 判断掩码  是否租用该外套
	if ValentineCompetition_ChkSingletonCoatLease(nSign, nIndex) then
		-- if nSign == 1 then
			-- LinkNpcGossipFunc_New(nNpcId, "2-1")
		-- else
			-- LinkNpcGossipFunc_New(nNpcId, "3-1")
		-- end
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["HaveRent"])
		return
	end
	-- 扣除天石
	if not User_AddEMoney(-nNeedEMoney) then
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["NotSpace"])
		return
	end
	-- 记录掩码
	-- 时装外套
	if nSign == 1 then
		if nIndex <= 7 then
			local nEvent1 = tValentineCompetition_Stc["EventType"][6]
			local nData1 = tValentineCompetition_Stc["DataType"][6]
			local nAddNum = tValentineCompetition_Data["CoatLease"]["SaveNum"][1][nIndex]
			Task_AddStatistic(nEvent1, nData1, nAddNum, 1)
			Task_SetStcTimestamp(nEvent1, nData1, 0, 0)
			RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward["RentCoat"][nSign][nIndex])
		else
			local nEvent2 = tValentineCompetition_Stc["EventType"][7]
			local nData2 = tValentineCompetition_Stc["DataType"][7]
			local nAddNum = tValentineCompetition_Data["CoatLease"]["SaveNum"][1][nIndex - 7]
			Task_AddStatistic(nEvent2, nData2, nAddNum, 1)
			Task_SetStcTimestamp(nEvent2, nData2, 0, 0)
			RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward["RentCoat"][nSign][nIndex])
		end
	-- 坐骑外套
	elseif nSign == 2 then
		if nIndex <= 7 then
			local nEvent1 = tValentineCompetition_Stc["EventType"][8]
			local nData1 = tValentineCompetition_Stc["DataType"][8]
			local nAddNum = tValentineCompetition_Data["CoatLease"]["SaveNum"][1][nIndex]
			Task_AddStatistic(nEvent1, nData1, nAddNum, 1)
			Task_SetStcTimestamp(nEvent1, nData1, 0, 0)
			RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward["RentCoat"][nSign][nIndex])
		else
			local nEvent2 = tValentineCompetition_Stc["EventType"][9]
			local nData2 = tValentineCompetition_Stc["DataType"][9]
			local nAddNum = tValentineCompetition_Data["CoatLease"]["SaveNum"][1][nIndex - 7]
			Task_AddStatistic(nEvent2, nData2, nAddNum, 1)
			Task_SetStcTimestamp(nEvent2, nData2, 0, 0)
			RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward["RentCoat"][nSign][nIndex])
		end
	end
end

-- 领取小礼物
function ValentineCompetition_DragonRewardItem(nNpcId, nIndex)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["ActivityTime"]) then
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["DragonOutTime"])
		return
	end
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["NotSpace"])
		return
	end
	local nEvent = tValentineCompetition_Stc["EventType"][6]
	local nData = tValentineCompetition_Stc["DataType"][6]
	-- 掩码隔天清零
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	-- 五次都领取完
	local nStcValue = Get_UserStatisticValue(nEvent, nData)
	if nStcValue >= 11111 then
		LinkNpcGossipFunc_New(nNpcId, "3-1")
		return
	end

	-- 单只是否领取
	local nSignNum = math.floor(nStcValue / tValentineCompetition_Data["StcSign"][nIndex]) % 10
	if nSignNum > 0 then
		LinkNpcGossipFunc_New(nNpcId, "2-1")
		return
	end
	if Task_AddStatistic(nEvent, nData, tValentineCompetition_Data["StcSign"][nIndex], 1) then
		Task_SetStcTimestamp(nEvent, nData, 0)
		RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward["DragonReward"])
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["GetReward"])
	end
end


-- 怪物掉落
function ValentineCompetition_KillMonster(nMonsterId)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["ActivityTime"]) then
		return
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tValentineCompetition_Data["Level"], tValentineCompetition_Data["Metempsychosis"]) then
		return
	end
	
	-- 判断背包空间
	if not RewardTemplate_ChkRandomSpace(tValentineCompetition_RandomReward["MonsterDrop"], 1) then
		return
	end
	local nEvent = tValentineCompetition_Stc["EventType"][10]
	local nData = tValentineCompetition_Stc["DataType"][10]
	-- 判断隔天
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	if Task_ChkStcValue(nEvent, nData, ">", 5) then
		return
	elseif Task_ChkStcValue(nEvent, nData, "==", 5) then
		Task_AddStatistic(nEvent, nData, 1, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["KillMonster"], 'NpcPosition_PathFind</N>23732' , nil)
	else
		RewardTemplate_NewRandom(tValentineCompetition_RandomReward["MonsterDrop"], 1)
	end
end

-- 功勋礼包使用
function ValentineCompetition_FeatsPack()
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["ActivityTime"]) then
		return
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tValentineCompetition_Data["Level"], tValentineCompetition_Data["Metempsychosis"]) then
		return
	end
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		return
	end
	
	local nEvent = tValentineCompetition_Stc["EventType"][11]
	local nData = tValentineCompetition_Stc["DataType"][11]
	-- 掩码隔天清零
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	
	-- 已领取
	if Task_ChkStcValue(nEvent, nData, ">", 0) then
		return
	end
	if Task_SetStatistic(nEvent, nData, 1, 1) then
		Task_SetStcTimestamp(nEvent, nData, 0)
		RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward[3007108])
	end
end

-- 签到礼包使用
function ValentineCompetition_SignPack()
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["ActivityTime"]) then
		return
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tValentineCompetition_Data["Level"], tValentineCompetition_Data["Metempsychosis"]) then
		return
	end
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		return
	end
	
	local nEvent = tValentineCompetition_Stc["EventType"][13]
	local nData = tValentineCompetition_Stc["DataType"][13]
	-- 掩码隔天清零
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	
	-- 已领取
	if Task_ChkStcValue(nEvent, nData, ">", 0) then
		return
	end
	if Task_SetStatistic(nEvent, nData, 1, 1) then
		Task_SetStcTimestamp(nEvent, nData, 0)
		RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward[3100011])
	end
end

-- 龙珠使用判断
function ValentineCompetition_DragonBallUseChk(nItemId)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["PackUseTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentineCompetition_Text["SysText"]["TimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentineCompetition_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	-- 判断是否凑齐七颗龙珠
	local fChkBall = true
	for i = 3320085, 3320091 do
		if not Item_ChkItem(i) then
			fChkBall = false
		end
	end
	if fChkBall then
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["DragonBall"], "ValentineCompetition_DragonBallSynthesis</N>" .. nItemId, nil)
	else
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["NotEnoughBall"])
		NpcPosition_PathFind(23796)
	end
end

-- 合成御天神龙
function ValentineCompetition_DragonBallSynthesis(nItemId)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["PackUseTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentineCompetition_Text["SysText"]["TimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentineCompetition_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	-- 判断是否凑齐七颗龙珠
	local fChkBall = true
	for i = 3320085, 3320091 do
		if not Item_ChkItem(i) then
			fChkBall = false
		end
	end
	if fChkBall then
		if RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward["DragonBall"]) then
			Sys_SaveEmoneyBuy(tValentineCompetition_Data["Emoneylog"][2])
			local sUserName = Get_UserName()
			Sys_SystemBroadcast(string.format(tValentineCompetition_Text["Broadcast"]["SynthesisDragon"], sUserName))
		end
	else
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["NotEnoughBall"])
	end
end

-- 临时光效
-- function ValentineCompetition_AddUserEffect(nItemId)
	-- -- 判断时间
	-- if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["ActivityTime"]) then
		-- local nItemNum = Get_CountItemType(nItemId, 0)
		-- if Item_DelAllItemByType(nItemId) then
			-- User_TalkChannel2005(tValentineCompetition_Text["SysText"]["TimeOut"])
			-- Sys_SaveActionRewardLog(string.format(tValentineCompetition_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		-- end
		-- return
	-- end
	-- -- 判断是否拥有光效
	-- local nEffectEvent = tValentineCompetition_Stc["EventType"][14]
	-- local nEffectData = tValentineCompetition_Stc["DataType"][14]
	-- if Task_StcInterval(nEffectEvent, nEffectData, 15, 1) then
		-- Task_SetStatistic(nEffectEvent, nEffectData, 0, 1)
		-- Task_SetStcTimestamp(nEffectEvent, nEffectData, 0)
	-- end
	-- local nEffectNum =  Get_UserStatisticValue(nEffectEvent, nEffectData)
	-- if nEffectNum > 0 then
		-- Sys_MsgBox(tValentineCompetition_Text["SysText"]["HaveEffect"])
		-- return
	-- end
	-- -- 增加光效后设置掩码及计时器
	-- if RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward[3320098]) then
		-- Sys_MsgBox(tValentineCompetition_Text["SysText"]["UseEffect"], "NpcPosition_PathFind</N>23732", nil)
		-- Task_SetStatistic(nEffectEvent, nEffectData, 1, 1)
		-- Task_SetStcTimestamp(nEffectEvent, nEffectData, 0)
		-- -- 计时器
		-- local nUserId = Get_UserId()
		-- User_SetTimer(900, "ValentineCompetition_DelUserEffect", 0)
		-- -- User_SetTimer(20, "ValentineCompetition_DelUserEffect", 1)
	-- end
-- end

-- 计时器删除玩家光效，重设掩码
-- function ValentineCompetition_DelUserEffect(nUserId)
	-- -- 倒计时完成，重置光效掩码
	-- User_EffectDel("self", "red-flower-charm1-1", nUserId)
	-- local nEffectEvent = tValentineCompetition_Stc["EventType"][14]
	-- local nEffectData = tValentineCompetition_Stc["DataType"][14]
	-- Task_SetStatistic(nEffectEvent, nEffectData, 0, 1, nUserId)
	-- Task_SetStcTimestamp(nEffectEvent, nEffectData, 0, nUserId)
-- end

-- 重新设置邮件发奖表
function ValentineCompetition_RestMailTab(nIndex)
	-- 发送邮件
	local sContent =""
	-- 排序排行榜数据
	local tRankData = RankingFunc_GetBeforeData(nIndex)
	local sName = ""
	local sScore = ""
	for i = 1, 5 do
		if tRankData[i] ~= nil and tonumber(tRankData[i]["UserId"]) > 0 and tRankData[i]["Score"] > 0 then
			sScore = tostring(tRankData[i]["Score"])
			sName = tRankData[i]["UserName"]
			-- 去掉评分A级以上的表
			tValentineCompetition_UserSelectionData[7][tRankData[i]["UserId"]] = nil
		else
			sScore = tValentineCompetition_Text["DialogReset"]["Score"]
			sName = tValentineCompetition_Text["DialogReset"]["Name"]
		end
		-- sContent = sContent .. Sys_Alignment(tostring(tValentineCompetition_Text[23732]["Text41" .. 3 + i]), 3, tostring(sScore), 8, tostring(sName), 17) .. "\n"
	end
	-- 邮件内容修改
	local sSender = tValentineCompetition_Text["Mail"][1]["Sender"]
	local sTitle = tValentineCompetition_Text["Mail"][1]["Title"]
	local nExistDay = 7
	for i,v in pairs(tRankingFunc_Info[nIndex]["Mail"]["Reward"]) do
		-- v["Content"] = sContent .. tValentineCompetition_Text["Mail"][1]["Content"][i]
	end
	-- 判断邮件是否已经发放
	if not fValentineCompetition_ChkMail then
		return
	end
	-- 发放邮件
	local sContentReset = sContent .. tValentineCompetition_Text["Mail"]["AReward"]
	local nActionId = 571386
	for i,v in pairs(tValentineCompetition_UserSelectionData[7]) do
		Sys_SendMail(v, 0, 0, nActionId, 0, nExistDay, sSender, sTitle, sContentReset)
	end
	-- 设置邮件已经发放
	fValentineCompetition_ChkMail = false
end

-- 评分达到A以上发放邮件奖励
function ValentineCompetition_MailSendForA()
		-- 邮件内容修改
	local sSender = tValentineCompetition_Text["Mail"][1]["Sender"]
	local sTitle = tValentineCompetition_Text["Mail"][1]["Title"]
	local nExistDay = 7
	-- 发放邮件
	local sContentReset = tValentineCompetition_Text["Mail"]["AReward"]
	local nActionId = 571386
	local nUserId = Get_UserId()
	-- 已经有数据则返回
	if tValentineCompetition_UserSelectionData[7][nUserId] == nil then
		tValentineCompetition_UserSelectionData[7][nUserId] = nUserId
		Sys_SendMail(nUserId, 0, 0, nActionId, 0, nExistDay, sSender, sTitle, sContentReset)
	end
	
end

-- 表数据重置
function ValentineCompetition_MailTabRest()
	fValentineCompetition_ChkMail = true
	tValentineCompetition_UserSelectionData[7] = {}
end


-- 时间自检清除玩家当天评分数据
function ValentineCompetition_UserDataTable()
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["ActivityTime"]) then
		return
	end
	-- 重置玩家评分数据
	tValentineCompetition_UserSelectionData[1] = {}
	tValentineCompetition_UserSelectionData[2] = {}
	tValentineCompetition_UserSelectionData[3] = {}
	tValentineCompetition_UserSelectionData[4] = {}
	tValentineCompetition_UserSelectionData[5] = {}
	tValentineCompetition_UserSelectionData[6] = {}
	-- 0点一起执行 服务器启动重置主题
	ValentineCompetition_ServerStartReset()
end

-- 服务器启动重置主题
function ValentineCompetition_ServerStartReset()
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["ActivityTime"]) then
		return
	end
	-- 判断global
	local nGlobalId = tValentineCompetition_Data["GlobalId"]
	local nTime = os.time()
	local nNowDay = os.date("%d", nTime)
	local nGlobalTimeData = Get_SysDynaGlobalTime0(nGlobalId)
	local nGlobalDay = os.date("%d", nGlobalTimeData)
	local nRandomSubjectt = 1
	-- 如果global没有数据或主题已经隔天就重新抽主题，就从重新随机主题
	if (nGlobalTimeData == 0) or (nNowDay ~= nGlobalDay) then
		Sys_SetSynaGlobalTime0(nGlobalId, nTime)
		nGlobalDay = os.date("%d", nTime)
		nRandomSubjectt = math.random(1, 4)
		Sys_SetSynaGlobalData0(nGlobalId, nRandomSubjectt)
	end
end

-- 玩家上线自检
function ValentineCompetition_UserLogin()
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["ActivityTime"]) then
		return
	end
	local nEvent = tValentineCompetition_Stc["EventType"][7]
	local nData = tValentineCompetition_Stc["DataType"][7]
	-- 最多弹窗三次
	if Task_ChkStcValue(nEvent, nData, ">", 2) then
		return
	end
	-- 每日最多弹窗一次
	if not Task_StcInterval(nEvent, nData, 1, 4) then
		return
	end
	Task_AddStatistic(nEvent, nData, 1, 1)
	Task_SetStcTimestamp(nEvent, nData, 0, 0)
	User_NoviceTeaching(1050)
end

----------------------------------NPC部分---------------------------------------------
-- 【时尚达人秀】时尚大师纪凡希
tNpcFace[6499] = 49
tNpcGossip[23732]= tNpcGossip[23732] or DefaultNpc:new{}
tNpcGossip[23732]["OptionHidden"] = 1
tNpcGossip[23732]["DialogueText"] = tValentineCompetition_Text[23732]
-- 活动前
tNpcGossip[23732]["Text1-1"] = {111, 112, 113, 114, 115, 116}
tNpcGossip[23732]["ChkFunc1-1"]= function()
	if CommonFunc_GetBeforeActivityTime(tActivityTime["ValentineCompetition"]["ActivityTime"]) then
		return true
	end
	return false
end
tNpcGossip[23732]["tOption1-1"] = {111}
-- 活动后
tNpcGossip[23732]["Text1-2"] = {121, 122, 123, 124, 125, 126, 127, 128, 129, 1210, 1211, 1212, 1213, 1214}
tNpcGossip[23732]["ChkFunc1-2"]= function()
	if CommonFunc_GetAfterActivityTime(tActivityTime["ValentineCompetition"]["ActivityTime"]) then
		-- 排序排行榜数据
		local tRankData = RankingFunc_GetNowData(tValentineCompetition_Data["RankDataActivity"])
		local sName = ""
		local sScore = ""
		local nIndex = 3
		for i = 1, 10 do
			if tRankData[i] ~= nil and tonumber(tRankData[i]["UserId"]) > 0 and tRankData[i]["Score"] > 0 then
				sScore = tostring(tRankData[i]["Score"])
				sName = tRankData[i]["UserName"]
			else
				sScore = tValentineCompetition_Text["DialogReset"]["Score"]
				sName = tValentineCompetition_Text["DialogReset"]["Name"]
			end
			tNpcGossip[23732]["Text12" .. nIndex + i] = Sys_CenterAline(tostring(tValentineCompetition_Text[23732]["Text12" .. nIndex + i]), 6, tostring(sScore), 24, tostring(sName), 43) .. "\n"
		end
		return true
	end
	return false
end
tNpcGossip[23732]["tOption1-2"] = {121}
-- 活动中  等级不足
tNpcGossip[23732]["Text1-3"] = {131, 132, 133, 134, 135, 136}
tNpcGossip[23732]["ChkFunc1-3"]= function()
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["ActivityTime"]) then
		return false
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tValentineCompetition_Data["Level"], tValentineCompetition_Data["Metempsychosis"]) then
		return true
	end
	return false
end
tNpcGossip[23732]["tOption1-3"] = {131}
-- 活动中  等级达到
tNpcGossip[23732]["Text1-4"] = {141, 142, 143, 144, 145, 146, 147}
tNpcGossip[23732]["ChkFunc1-4"]= function()
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["ActivityTime"]) then
		return false
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tValentineCompetition_Data["Level"], tValentineCompetition_Data["Metempsychosis"]) then
		return false
	end
	-- 重新赋值对白
	local nGlobalId = tValentineCompetition_Data["GlobalId"]
	local nDaySubject = Get_SysDynaGlobalData0(nGlobalId)
	-- 如果没有主题，重新执行重置主题函数
	if nDaySubject == 0 then
		ValentineCompetition_ServerStartReset()
		nDaySubject = Get_SysDynaGlobalData0(nGlobalId)
	end
	local sDaySubject = tValentineCompetition_Text["DialogReset"]["Subject"][nDaySubject]
	local sDayStrategy = tValentineCompetition_Text["DialogReset"]["Strategy"][nDaySubject]
	tNpcGossip[23732]["Text144"] = string.format(tValentineCompetition_Text[23732]["Text144"], sDaySubject, sDayStrategy)
	-- tNpcGossip[23732]["Option146"] = string.format(tValentineCompetition_Text[23732]["Option146"], sDaySubject)
	-- 时间赋值
	local nGlobalTimeData = Get_SysDynaGlobalTime0(nGlobalId)
	local nGlobalMonth = os.date("%m", nGlobalTimeData)
	local nGlobalDay = os.date("%d", nGlobalTimeData)
	local sMonthDay = string.format(tValentineCompetition_Text["DialogReset"]["DayTime"], sDaySubject, nGlobalMonth, nGlobalDay, nGlobalMonth, nGlobalDay)
	tNpcGossip[23732]["Text145"] = string.format(tValentineCompetition_Text[23732]["Text145"], sMonthDay)
	return true
end
tNpcGossip[23732]["tOption1-4"] = {141, 142, 144}
-- tNpcGossip[23732]["OptionFunc141"] = "ValentineCompetition_StartGrading</N>23732" -- 开始评分（1支口红）
-- tNpcGossip[23732]["OptionPoint141"] = "9-1" -- 开始评分（1支口红）
tNpcGossip[23732]["OptionFunc141"] = "ValentineCompetition_ChkUserCoatAndMount</N>23732" -- 开始评分
tNpcGossip[23732]["OptionPoint142"] = "4-1" -- 时尚达人榜
-- tNpcGossip[23732]["OptionPoint143"] = "5-1" -- 时尚达人榜
tNpcGossip[23732]["OptionPoint144"] = "6-1" -- 查看时尚得分及奖励
-- tNpcGossip[23732]["OptionPoint145"] = "7-1" -- 时尚攻略
tNpcGossip[23732]["OptionFunc145"] = "ValentineCompetition_OpenWebsite</N>23732" -- 时尚攻略
-- tNpcGossip[23732]["OptionPoint146"] = "8-1" -- 攻略

-- 开始评分（1支口红）
-- 【成功，SS】
tNpcGossip[23732]["Text2-1"] = {211, 212, 213, 214, 215, 216}
tNpcGossip[23732]["tOption2-1"] = {211}
tNpcGossip[23732]["OptionPoint211"] = "1-4"
-- 【成功，S】
tNpcGossip[23732]["Text2-2"] = {221, 222, 223, 224, 225, 226}
tNpcGossip[23732]["tOption2-2"] = {221}
tNpcGossip[23732]["OptionPoint221"] = "1-4"
-- 【成功，A】
tNpcGossip[23732]["Text2-3"] = {231, 232, 233, 234, 235, 236}
tNpcGossip[23732]["tOption2-3"] = {231}
tNpcGossip[23732]["OptionPoint231"] = "1-4"
-- 【成功，B+】
tNpcGossip[23732]["Text2-4"] = {241, 242, 243, 244, 245, 246}
tNpcGossip[23732]["tOption2-4"] = {241}
tNpcGossip[23732]["OptionPoint241"] = "1-4"
-- 【成功，B】
tNpcGossip[23732]["Text2-5"] = {251, 252, 253, 254, 255, 256}
tNpcGossip[23732]["tOption2-5"] = {251}
tNpcGossip[23732]["OptionPoint251"] = "1-4"

-- 开始评分（1支口红）
-- 【没有口红】
tNpcGossip[23732]["Text3-1"] = {311, 312, 313, 314}
tNpcGossip[23732]["tOption3-1"] = {311, 312}
tNpcGossip[23732]["OptionFunc311"] = "ValentineCompetition_ChkBuyJFXLipstick</N>23732"  -- 购买纪凡希口红评分（50万银两）
tNpcGossip[23732]["OptionPoint312"] = "1-4"
-- 购买纪凡希口红  【成功】
tNpcGossip[23732]["Text3-2"] = {321}
tNpcGossip[23732]["tOption3-2"] = {321, 322, 323}
tNpcGossip[23732]["OptionFunc321"] = "ValentineCompetition_BuyJFXLipstick</N>23732" -- 确认花费50万银两购买
tNpcGossip[23732]["OptionPoint322"] = "3-3"
tNpcGossip[23732]["OptionPoint323"] = "1-4"
-- 今日屏蔽二次确认
tNpcGossip[23732]["Text3-3"] = {331}
tNpcGossip[23732]["tOption3-3"] = {331, 332}
tNpcGossip[23732]["OptionFunc331"] = "ValentineCompetition_ShieldTwoConfirmation</N>23732" -- 确定屏蔽
tNpcGossip[23732]["OptionPoint332"] = "1-4"

-- 每日时尚榜
tNpcGossip[23732]["Text4-1"] = {411, 412, 413, 414, 415, 416, 417, 418, 419, 4110, 4111, 4112, 4113, 4114, 4115}
tNpcGossip[23732]["tOption4-1"] = {411, 412}
tNpcGossip[23732]["ChkFunc4-1"]= function()
	-- 排序排行榜数据
	local tRankData = RankingFunc_GetNowData(tValentineCompetition_Data["RankDataDay"])
	local sName = ""
	local sScore = ""
	local nIndex = 3
	for i = 1, 10 do
		if tRankData[i] ~= nil and tonumber(tRankData[i]["UserId"]) > 0 and tRankData[i]["Score"] > 0 then
			sScore = tostring(tRankData[i]["Score"])
			sName = tRankData[i]["UserName"]
		else
			sScore = tValentineCompetition_Text["DialogReset"]["Score"]
			sName = tValentineCompetition_Text["DialogReset"]["Name"]
		end
		tNpcGossip[23732]["Text41" .. nIndex + i] = Sys_CenterAline(tostring(tValentineCompetition_Text[23732]["Text41" .. nIndex + i]), 6, tostring(sScore), 24, tostring(sName), 42) .. "\n"
	end
	-- 个人数据赋值
	local nDayBestEvent = tValentineCompetition_Stc["EventType"][1]
	local nDayBestData = tValentineCompetition_Stc["DataType"][1]
	if Task_StcInterval(nDayBestEvent, nDayBestData, 1, 4) then
		Task_SetStatistic(nDayBestEvent, nDayBestData, 0, 1)
		Task_SetStcTimestamp(nDayBestEvent, nDayBestData, 0)
	end
	local nDayBestNum =  Get_UserStatisticValue(nDayBestEvent, nDayBestData)
	tNpcGossip[23732]["Text4115"] = string.format(tValentineCompetition_Text[23732]["Text4115"], nDayBestNum)
	return true
end
tNpcGossip[23732]["OptionPoint411"] = "4-2"
tNpcGossip[23732]["OptionPoint412"] = "5-1"
-- 查看每日时尚榜奖励
tNpcGossip[23732]["Text4-2"] = {421, 422, 423, 424, 425, 426, 427, 428, 429, 4210, 4211, 4212, 4213, 4214}
tNpcGossip[23732]["tOption4-2"] = {421}
tNpcGossip[23732]["OptionPoint421"] = "1-4"



-- 查看时尚达人总榜
tNpcGossip[23732]["Text5-1"] = {511, 512, 513, 514, 515, 516, 517, 518, 519, 5110, 5111, 5112, 5113, 5114, 5115}
tNpcGossip[23732]["tOption5-1"] = {511}
tNpcGossip[23732]["ChkFunc5-1"]= function()
	-- 排序排行榜数据
	local tRankData = RankingFunc_GetNowData(tValentineCompetition_Data["RankDataActivity"])
	local sName = ""
	local sScore = ""
	local nIndex = 3
	for i = 1, 10 do
		if tRankData[i] ~= nil and tonumber(tRankData[i]["UserId"]) > 0 and tRankData[i]["Score"] > 0 then
			sScore = tostring(tRankData[i]["Score"])
			sName = tRankData[i]["UserName"]
		else
			sScore = tValentineCompetition_Text["DialogReset"]["Score"]
			sName = tValentineCompetition_Text["DialogReset"]["Name"]
		end
		tNpcGossip[23732]["Text51" .. nIndex + i] = Sys_CenterAline(tostring(tValentineCompetition_Text[23732]["Text51" .. nIndex + i]), 6, tostring(sScore), 24, tostring(sName), 43) .. "\n"
	end
	-- 个人数据赋值
	local nAllSEvent = tValentineCompetition_Stc["EventType"][2]
	local nAllStData = tValentineCompetition_Stc["DataType"][2]
	local nAllSNum =  Get_UserStatisticValue(nAllSEvent, nAllStData)
	tNpcGossip[23732]["Text5115"] = string.format(tValentineCompetition_Text[23732]["Text5115"], nAllSNum)
	return true
end
tNpcGossip[23732]["OptionPoint511"] = "5-2"
-- tNpcGossip[23732]["OptionPoint512"] = "1-4"
-- 查看时尚达人总榜奖励
tNpcGossip[23732]["Text5-2"] = {521, 522, 523, 524, 525, 526, 527, 528, 529, 5210, 5211, 5212, 5213, 5214}
tNpcGossip[23732]["tOption5-2"] = {521}
tNpcGossip[23732]["OptionPoint521"] = "1-4"
-- 查看时尚得分及奖励
tNpcGossip[23732]["Text6-1"] = {611, 612, 613, 614, 615, 616, 617, 618, 619, 6110, 6111, 6112}
tNpcGossip[23732]["tOption6-1"] = {611}
tNpcGossip[23732]["ChkFunc6-1"]= function()
	-- 个人数据赋值
	local nUserScoreEvent = tValentineCompetition_Stc["EventType"][3]
	local nUserScoretData = tValentineCompetition_Stc["DataType"][3]
	local nUserScoreNum =  Get_UserStatisticValue(nUserScoreEvent, nUserScoretData)
	tNpcGossip[23732]["Text6112"] = string.format(tValentineCompetition_Text[23732]["Text6112"], nUserScoreNum)
	-- 玩家已领取的奖励
	local nRewardEvent = tValentineCompetition_Stc["EventType"][5]
	local nRewardData = tValentineCompetition_Stc["DataType"][5]
	local nHaveReward = Get_UserStatisticValue(nRewardEvent, nRewardData)
	local nIndex = 3
	-- 已领取赋值
	for i = 1, nHaveReward do 
		tNpcGossip[23732]["Text61" .. nIndex + i] = string.format(tValentineCompetition_Text[23732]["Text61" .. nIndex + i], tValentineCompetition_Text["DialogReset"]["HaveReward"])
	end
	-- 未领取赋值
	for j = nHaveReward + 1, 7 do 
		tNpcGossip[23732]["Text61" .. nIndex + j] = string.format(tValentineCompetition_Text[23732]["Text61" .. nIndex + j], "")
	end
	return true
end
tNpcGossip[23732]["OptionFunc611"] = "ValentineCompetition_ChkPullulateRewardChk</N>23732" -- 领取奖励
-- 时尚攻略
tNpcGossip[23732]["Text7-1"] = {711, 712, 713, 714, 715, 716, 717, 718}
tNpcGossip[23732]["tOption7-1"] = {711}
tNpcGossip[23732]["OptionPoint711"] = "1-4"
-- XX主题日攻略
-- tNpcGossip[23732]["Text8-1"] = {811, 812, 813, 814}
-- tNpcGossip[23732]["tOption8-1"] = {811}
-- tNpcGossip[23732]["ChkFunc8-1"]= function()
	-- -- 主题日赋值
	-- local nGlobalId = tValentineCompetition_Data["GlobalId"]
	-- local nDaySubject = Get_SysDynaGlobalData0(nGlobalId)
	-- -- 如果没有主题，重新执行重置主题函数
	-- if nDaySubject == 0 then
		-- ValentineCompetition_ServerStartReset()
		-- nDaySubject = Get_SysDynaGlobalData0(nGlobalId)
	-- end
	-- local sDaySubject = tValentineCompetition_Text["DialogReset"]["Subject"][nDaySubject]
	-- tNpcGossip[23732]["Text811"] = string.format(tValentineCompetition_Text[23732]["Text811"], sDaySubject)
	-- local sDayStrategy = tValentineCompetition_Text["DialogReset"]["Strategy"][nDaySubject]
	-- tNpcGossip[23732]["Text813"] = string.format(tValentineCompetition_Text[23732]["Text813"], sDayStrategy)
	-- return true
-- end
-- tNpcGossip[23732]["OptionPoint811"] = "1-4"
-- 没有时装外套
tNpcGossip[23732]["Text8-2"] = {821, 822, 823, 824}
tNpcGossip[23732]["tOption8-2"] = {821}
tNpcGossip[23732]["OptionFunc821"] = "NpcPosition_PathFind</N>23733"
-- 开始评分（1只手环）
-- 【有手环，二次确认】
tNpcGossip[23732]["Text9-1"] = {911}
tNpcGossip[23732]["tOption9-1"] = {911, 912}
tNpcGossip[23732]["OptionFunc911"] = "ValentineCompetition_StartGrading</N>23732" -- 确定评分
tNpcGossip[23732]["OptionPoint912"] = "1-4"
-- 【有参赛券，时装或坐骑重复，二次确认】
tNpcGossip[23732]["Text9-2"] = {921}
tNpcGossip[23732]["tOption9-2"] = {921, 922}
tNpcGossip[23732]["OptionFunc921"] = "ValentineCompetition_StartGrading</N>23732" -- 确定评分
tNpcGossip[23732]["OptionPoint922"] = "1-4"

-- 【时尚达人秀】奥黛丽赫本
tNpcFace[6500] = 1
tNpcGossip[23733]= tNpcGossip[23733] or DefaultNpc:new{}
tNpcGossip[23733]["OptionHidden"] = 1
tNpcGossip[23733]["DialogueText"] = tValentineCompetition_Text[23733]
-- 活动前
tNpcGossip[23733]["Text1-1"] = {111, 112, 113, 114, 115}
tNpcGossip[23733]["ChkFunc1-1"]= function()
	if CommonFunc_GetBeforeActivityTime(tActivityTime["ValentineCompetition"]["PackUseTime"]) then
		return true
	end
	return false
end
tNpcGossip[23733]["tOption1-1"] = {111}
-- 活动后
tNpcGossip[23733]["Text1-2"] = {121, 122}
tNpcGossip[23733]["ChkFunc1-2"]= function()
	if CommonFunc_GetAfterActivityTime(tActivityTime["ValentineCompetition"]["PackUseTime"]) then
		return true
	end
	return false
end
tNpcGossip[23733]["tOption1-2"] = {121}
-- 活动中  等级不足
tNpcGossip[23733]["Text1-3"] = {131, 132, 133, 134, 135}
tNpcGossip[23733]["ChkFunc1-3"]= function()
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["PackUseTime"]) then
		return false
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tValentineCompetition_Data["Level"], tValentineCompetition_Data["Metempsychosis"]) then
		return true
	end
	return false
end
tNpcGossip[23733]["tOption1-3"] = {131}
-- 活动中  等级达到
tNpcGossip[23733]["Text1-4"] = {141, 142, 143, 144, 145}
tNpcGossip[23733]["ChkFunc1-4"]= function()
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["PackUseTime"]) then
		return false
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tValentineCompetition_Data["Level"], tValentineCompetition_Data["Metempsychosis"]) then
		return false
	end
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["ActivityTime"]) then
		tNpcGossip[23733]["Text144"] = tValentineCompetition_Text[23733]["Text146"]
	end
	return true
end
tNpcGossip[23733]["tOption1-4"] = {141}
tNpcGossip[23733]["OptionFunc141"] = "ValentineCompetition_OpenEmoneyShop</N>23733" -- 租用5星外套
-- tNpcGossip[23733]["OptionFunc141"] = "NpcPosition_PathFind</N>23732" -- 前往参与时尚达人秀
-- tNpcGossip[23733]["OptionFunc142"] = "ValentineCompetition_CoatLease</N>23733</N>1" -- 租用5星时装外套
-- tNpcGossip[23733]["OptionFunc143"] = "ValentineCompetition_CoatLease</N>23733</N>2" -- 租用5星坐骑外套
-- tNpcGossip[23733]["OptionPoint144"] = "4-1" -- 时尚攻略

-- -- 租用5星时装外套
-- -- 【全部租用过一遍】
-- tNpcGossip[23733]["Text2-1"] = {211, 212}
-- tNpcGossip[23733]["tOption2-1"] = {211}
-- tNpcGossip[23733]["OptionPoint211"] = "1-4"
-- -- 【可以租用】
-- tNpcGossip[23733]["Text2-2"] = {221, 222}
-- tNpcGossip[23733]["tOption2-2"] = {221, 222, 223, 224, 225, 226, 227, 228, 229, 2210, 2211, 2212, 2213, 2214}
-- tNpcGossip[23733]["OptionChkFunc221"] = function()
	-- if ValentineCompetition_ChkSingletonCoatLease(1, 1) then
		-- return false
	-- end
	-- return true
-- end
-- tNpcGossip[23733]["OptionFunc221"] = "ValentineCompetition_ChkSecondCoatLease</N>23733</N>1</N>1"  -- 勇士传奇【联盟王者】（109天石）
-- tNpcGossip[23733]["OptionChkFunc222"] = function()
	-- if ValentineCompetition_ChkSingletonCoatLease(1, 2) then
		-- return false
	-- end
	-- return true
-- end
-- tNpcGossip[23733]["OptionFunc222"] = "ValentineCompetition_ChkSecondCoatLease</N>23733</N>1</N>2"  -- 东方不败·至尊（109天石）
-- tNpcGossip[23733]["OptionChkFunc223"] = function()
	-- if ValentineCompetition_ChkSingletonCoatLease(1, 3) then
		-- return false
	-- end
	-- return true
-- end
-- tNpcGossip[23733]["OptionFunc223"] = "ValentineCompetition_ChkSecondCoatLease</N>23733</N>1</N>3"  -- 卡牌大师【传奇版】（109天石）
-- tNpcGossip[23733]["OptionChkFunc224"] = function()
	-- if ValentineCompetition_ChkSingletonCoatLease(1, 4) then
		-- return false
	-- end
	-- return true
-- end
-- tNpcGossip[23733]["OptionFunc224"] = "ValentineCompetition_ChkSecondCoatLease</N>23733</N>1</N>4"  -- 圣诞恋歌·永爱（109天石）
-- tNpcGossip[23733]["OptionChkFunc225"] = function()
	-- if ValentineCompetition_ChkSingletonCoatLease(1, 5) then
		-- return false
	-- end
	-- return true
-- end
-- tNpcGossip[23733]["OptionFunc225"] = "ValentineCompetition_ChkSecondCoatLease</N>23733</N>1</N>5"  -- 轻舞飞扬·盈波（109天石）
-- tNpcGossip[23733]["OptionChkFunc226"] = function()
	-- if ValentineCompetition_ChkSingletonCoatLease(1, 6) then
		-- return false
	-- end
	-- return true
-- end
-- tNpcGossip[23733]["OptionFunc226"] = "ValentineCompetition_ChkSecondCoatLease</N>23733</N>1</N>6"  -- 花之吻·绯恋（109天石）
-- tNpcGossip[23733]["OptionChkFunc227"] = function()
	-- if ValentineCompetition_ChkSingletonCoatLease(1, 7) then
		-- return false
	-- end
	-- return true
-- end
-- tNpcGossip[23733]["OptionFunc227"] = "ValentineCompetition_ChkSecondCoatLease</N>23733</N>1</N>7"  -- 喵基尼【璀璨版】（109天石）
-- tNpcGossip[23733]["OptionChkFunc228"] = function()
	-- if ValentineCompetition_ChkSingletonCoatLease(1, 8) then
		-- return false
	-- end
	-- return true
-- end
-- tNpcGossip[23733]["OptionFunc228"] = "ValentineCompetition_ChkSecondCoatLease</N>23733</N>1</N>8"  -- 天仙子·月华（109天石）
-- tNpcGossip[23733]["OptionChkFunc229"] = function()
	-- if ValentineCompetition_ChkSingletonCoatLease(1, 9) then
		-- return false
	-- end
	-- return true
-- end
-- tNpcGossip[23733]["OptionFunc229"] = "ValentineCompetition_ChkSecondCoatLease</N>23733</N>1</N>9"  -- 水晶之恋·星梦（109天石）
-- tNpcGossip[23733]["OptionChkFunc2210"] = function()
	-- if ValentineCompetition_ChkSingletonCoatLease(1, 10) then
		-- return false
	-- end
	-- return true
-- end
-- tNpcGossip[23733]["OptionFunc2210"] = "ValentineCompetition_ChkSecondCoatLease</N>23733</N>1</N>10"  -- 蝶恋花·玫语（109天石）
-- tNpcGossip[23733]["OptionChkFunc2211"] = function()
	-- if ValentineCompetition_ChkSingletonCoatLease(1, 11) then
		-- return false
	-- end
	-- return true
-- end
-- tNpcGossip[23733]["OptionFunc2211"] = "ValentineCompetition_ChkSecondCoatLease</N>23733</N>1</N>11"  -- 夏威夷阳光【泡泡版】（109天石）
-- tNpcGossip[23733]["OptionChkFunc2212"] = function()
	-- if ValentineCompetition_ChkSingletonCoatLease(1, 12) then
		-- return false
	-- end
	-- return true
-- end
-- tNpcGossip[23733]["OptionFunc2212"] = "ValentineCompetition_ChkSecondCoatLease</N>23733</N>1</N>12"  -- 大圣魔铠【齐天】（109天石）
-- tNpcGossip[23733]["OptionChkFunc2213"] = function()
	-- if ValentineCompetition_ChkSingletonCoatLease(1, 13) then
		-- return false
	-- end
	-- return true
-- end
-- tNpcGossip[23733]["OptionFunc2213"] = "ValentineCompetition_ChkSecondCoatLease</N>23733</N>1</N>13"  -- 紫音青衫【霞光】（109天石）
-- tNpcGossip[23733]["OptionChkFunc2214"] = function()
	-- if ValentineCompetition_ChkSingletonCoatLease(1, 14) then
		-- return false
	-- end
	-- return true
-- end
-- tNpcGossip[23733]["OptionFunc2214"] = "ValentineCompetition_ChkSecondCoatLease</N>23733</N>1</N>14"  -- 福星天降【华彩版】（109天石）
-- -- 【成功，二次确认】
-- tNpcGossip[23733]["Text2-3"] = {231}
-- tNpcGossip[23733]["tOption2-3"] = {231, 232}
-- tNpcGossip[23733]["OptionFunc231"] = ""  -- 确定花费109天石
-- tNpcGossip[23733]["OptionPoint232"] = "1-4"


-- -- 租用5星坐骑外套
-- -- 【全部租用过一遍】
-- tNpcGossip[23733]["Text3-1"] = {311, 312}
-- tNpcGossip[23733]["tOption3-1"] = {311}
-- tNpcGossip[23733]["OptionPoint311"] = "1-4"
-- -- 【可以租用】
-- tNpcGossip[23733]["Text3-2"] = {321, 322}
-- tNpcGossip[23733]["tOption3-2"] = {321, 322, 323, 324, 325, 326, 327, 328, 329, 3210, 3211, 3212, 3213}
-- tNpcGossip[23733]["OptionChkFunc321"] = function()
	-- if ValentineCompetition_ChkSingletonCoatLease(2, 1) then
		-- return false
	-- end
	-- return true
-- end
-- tNpcGossip[23733]["OptionFunc321"] = "ValentineCompetition_ChkSecondCoatLease</N>23733</N>2</N>1"  -- 喵呜将军【璀璨版】（109天石）
-- tNpcGossip[23733]["OptionChkFunc322"] = function()
	-- if ValentineCompetition_ChkSingletonCoatLease(2, 2) then
		-- return false
	-- end
	-- return true
-- end
-- tNpcGossip[23733]["OptionFunc322"] = "ValentineCompetition_ChkSecondCoatLease</N>23733</N>2</N>2"  -- 萨摩王子【炫彩版】（109天石）
-- tNpcGossip[23733]["OptionChkFunc323"] = function()
	-- if ValentineCompetition_ChkSingletonCoatLease(2, 3) then
		-- return false
	-- end
	-- return true
-- end
-- tNpcGossip[23733]["OptionFunc323"] = "ValentineCompetition_ChkSecondCoatLease</N>23733</N>2</N>3"  -- 二哈将军【炫彩版】（109天石）
-- tNpcGossip[23733]["OptionChkFunc324"] = function()
	-- if ValentineCompetition_ChkSingletonCoatLease(2, 4) then
		-- return false
	-- end
	-- return true
-- end
-- tNpcGossip[23733]["OptionFunc324"] = "ValentineCompetition_ChkSecondCoatLease</N>23733</N>2</N>4"  -- 金毛大帅【炫彩版】（109天石）
-- tNpcGossip[23733]["OptionChkFunc325"] = function()
	-- if ValentineCompetition_ChkSingletonCoatLease(2, 5) then
		-- return false
	-- end
	-- return true
-- end
-- tNpcGossip[23733]["OptionFunc325"] = "ValentineCompetition_ChkSecondCoatLease</N>23733</N>2</N>5"  -- 逗哥王（109天石）
-- tNpcGossip[23733]["OptionChkFunc326"] = function()
	-- if ValentineCompetition_ChkSingletonCoatLease(2, 6) then
		-- return false
	-- end
	-- return true
-- end
-- tNpcGossip[23733]["OptionFunc326"] = "ValentineCompetition_ChkSecondCoatLease</N>23733</N>2</N>6"  -- 大鱼海棠·凌波（109天石）
-- tNpcGossip[23733]["OptionChkFunc327"] = function()
	-- if ValentineCompetition_ChkSingletonCoatLease(2, 7) then
		-- return false
	-- end
	-- return true
-- end
-- tNpcGossip[23733]["OptionFunc327"] = "ValentineCompetition_ChkSecondCoatLease</N>23733</N>2</N>7"  -- 大鱼海棠·金麟（109天石）
-- tNpcGossip[23733]["OptionChkFunc328"] = function()
	-- if ValentineCompetition_ChkSingletonCoatLease(2, 8) then
		-- return false
	-- end
	-- return true
-- end
-- tNpcGossip[23733]["OptionFunc328"] = "ValentineCompetition_ChkSecondCoatLease</N>23733</N>2</N>8"  -- 流金祥云（109天石）
-- tNpcGossip[23733]["OptionChkFunc329"] = function()
	-- if ValentineCompetition_ChkSingletonCoatLease(2, 9) then
		-- return false
	-- end
	-- return true
-- end
-- tNpcGossip[23733]["OptionFunc329"] = "ValentineCompetition_ChkSecondCoatLease</N>23733</N>2</N>9"  -- 猴王天天（109天石）
-- tNpcGossip[23733]["OptionChkFunc3210"] = function()
	-- if ValentineCompetition_ChkSingletonCoatLease(2, 10) then
		-- return false
	-- end
	-- return true
-- end
-- tNpcGossip[23733]["OptionFunc3210"] = "ValentineCompetition_ChkSecondCoatLease</N>23733</N>2</N>10"  -- 猴王西西（109天石）
-- tNpcGossip[23733]["OptionChkFunc3211"] = function()
	-- if ValentineCompetition_ChkSingletonCoatLease(2, 11) then
		-- return false
	-- end
	-- return true
-- end
-- tNpcGossip[23733]["OptionFunc3211"] = "ValentineCompetition_ChkSecondCoatLease</N>23733</N>2</N>11"  -- 超级羊驼维克多（109天石）
-- tNpcGossip[23733]["OptionChkFunc3212"] = function()
	-- if ValentineCompetition_ChkSingletonCoatLease(2, 12) then
		-- return false
	-- end
	-- return true
-- end
-- tNpcGossip[23733]["OptionFunc3212"] = "ValentineCompetition_ChkSecondCoatLease</N>23733</N>2</N>12"  -- 星际战鸡·终极挑战号（109天石）
-- tNpcGossip[23733]["OptionChkFunc3213"] = function()
	-- if ValentineCompetition_ChkSingletonCoatLease(2, 13) then
		-- return false
	-- end
	-- return true
-- end
-- tNpcGossip[23733]["OptionFunc3213"] = "ValentineCompetition_ChkSecondCoatLease</N>23733</N>2</N>13"  -- 星际战鸡·辉煌勇气号（109天石）
-- -- 【成功，二次确认】
-- tNpcGossip[23733]["Text3-3"] = {331}
-- tNpcGossip[23733]["tOption3-3"] = {331, 332}
-- tNpcGossip[23733]["OptionFunc331"] = ""  -- 确定花费109天石
-- tNpcGossip[23733]["OptionPoint332"] = "1-4"

-- -- 时尚攻略
-- tNpcGossip[23733]["Text4-1"] = {411, 412, 413, 414, 415, 416, 417, 418}
-- tNpcGossip[23733]["tOption4-1"] = {411}
-- tNpcGossip[23733]["OptionPoint411"] = "1-4"


-- 【时尚达人秀】圣罗兰
tNpcFace[6502] = 35
tNpcGossip[23796]= tNpcGossip[23796] or DefaultNpc:new{}
tNpcGossip[23796]["OptionHidden"] = 1
tNpcGossip[23796]["DialogueText"] = tValentineCompetition_Text[23796]
-- 活动前
tNpcGossip[23796]["Text1-1"] = {111, 112, 113, 114, 115}
tNpcGossip[23796]["ChkFunc1-1"]= function()
	if CommonFunc_GetBeforeActivityTime(tActivityTime["ValentineCompetition"]["PackUseTime"]) then
		return true
	end
	return false
end
tNpcGossip[23796]["tOption1-1"] = {111}
-- 活动后
tNpcGossip[23796]["Text1-2"] = {121, 122}
tNpcGossip[23796]["ChkFunc1-2"]= function()
	if CommonFunc_GetAfterActivityTime(tActivityTime["ValentineCompetition"]["PackUseTime"]) then
		return true
	end
	return false
end
tNpcGossip[23796]["tOption1-2"] = {121}
-- 活动中
tNpcGossip[23796]["Text1-3"] = {131, 132, 133, 134, 135}
tNpcGossip[23796]["ChkFunc1-3"]= function()
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["PackUseTime"]) then
		return false
	end
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["ActivityTime"]) then
		tNpcGossip[23796]["Text134"] = tValentineCompetition_Text[23796]["Text136"]
	end
	return true
end
tNpcGossip[23796]["tOption1-3"] = {131}
tNpcGossip[23796]["OptionFunc131"] = "User_OpenExchangeShop</N>23796" -- 兑换奖励



-- 【时尚达人秀】御天小神龙
tNpcFace[4504] = 2118
tNpcGossip[23823]= tNpcGossip[23823] or DefaultNpc:new{}
tNpcGossip[23823]["OptionHidden"] = 1
tNpcGossip[23823]["DialogueText"] = tValentineCompetition_Text[23823]
-- 【等级不足】
tNpcGossip[23823]["Text1-1"] = {111, 112, 113, 114, 115}
tNpcGossip[23823]["ChkFunc1-1"]= function()
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tValentineCompetition_Data["Level"], tValentineCompetition_Data["Metempsychosis"]) then
		return true
	end
	return false
end
tNpcGossip[23823]["tOption1-1"] = {111}
-- 活动中  等级达到
tNpcGossip[23823]["Text1-2"] = {121, 122, 123, 124, 125}
tNpcGossip[23823]["ChkFunc1-2"]= function()
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["ActivityTime"]) then
		return false
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tValentineCompetition_Data["Level"], tValentineCompetition_Data["Metempsychosis"]) then
		return false
	end
	return true
end
tNpcGossip[23823]["tOption1-2"] = {121, 122}
tNpcGossip[23823]["OptionFunc121"] = "ValentineCompetition_DragonRewardItem</N>23823</N>1" -- 领取小礼物
tNpcGossip[23823]["OptionFunc122"] = "NpcPosition_PathFind</N>23732" -- 参与“时尚达人秀”
-- 【当前这一只已领过】
tNpcGossip[23823]["Text2-1"] = {211, 212}
tNpcGossip[23823]["tOption2-1"] = {211}
-- 【等级不足】
tNpcGossip[23823]["Text3-1"] = {311, 312}
tNpcGossip[23823]["tOption3-1"] = {311}
-- 其他神龙
tNpcGossip[23824]= CommonFunc_Copy(tNpcGossip[23823])
tNpcGossip[23824]["OptionFunc121"] = "ValentineCompetition_DragonRewardItem</N>23824</N>2" -- 领取小礼物
tNpcGossip[23825]= CommonFunc_Copy(tNpcGossip[23823])
tNpcGossip[23825]["OptionFunc121"] = "ValentineCompetition_DragonRewardItem</N>23825</N>3" -- 领取小礼物
tNpcGossip[23826]= CommonFunc_Copy(tNpcGossip[23823])
tNpcGossip[23826]["OptionFunc121"] = "ValentineCompetition_DragonRewardItem</N>23826</N>4" -- 领取小礼物
tNpcGossip[23827]= CommonFunc_Copy(tNpcGossip[23823])
tNpcGossip[23827]["OptionFunc121"] = "ValentineCompetition_DragonRewardItem</N>23827</N>5" -- 领取小礼物

---------------------------------物品部分---------------------------------------------
-- 一心龙珠
tItem[3320085] = tItem[3320085] or {}
tItem[3320085]["Function"] = function(nItemId,sItemName)
	ValentineCompetition_DragonBallUseChk(nItemId)
end
tItem[3320086] = tItem[3320085]
tItem[3320087] = tItem[3320085]
tItem[3320088] = tItem[3320085]
tItem[3320089] = tItem[3320085]
tItem[3320090] = tItem[3320085]
tItem[3320091] = tItem[3320085]


-- 一心龙珠碎片
tItem[3320092] = tItem[3320092] or {}
tItem[3320092]["Function"] = function(nItemId,sItemName)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["PackUseTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		local nRewardNum = tValentineCompetition_Reward["OverTimeOne"]["RewardStrengthValue"]["Value"] * nItemNum
		local tReward = CommonFunc_Copy(tValentineCompetition_Reward["OverTimeOne"])
		tReward["DeleteItem"][1]["ItemNum"] = nItemNum
		tReward["RewardStrengthValue"]["Value"] = nRewardNum
		if RewardTemplate_UseItemAndMsg(tReward) then
			Sys_MsgBox(string.format(tValentineCompetition_Text["SysText"][nItemId], nRewardNum))
		end
		return
	end
	-- 判断数量
	if not Item_ChkMulItem(nItemId,nItemId,30) then
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["NotEnoughChip1"])
		return
	end
	-- 判断空间
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["NotSpace"])
		return
	end
	RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward[3320092])
end

-- 二心龙珠碎片
tItem[3320093] = tItem[3320093] or {}
tItem[3320093]["Function"] = function(nItemId,sItemName)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["PackUseTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		local nRewardNum = tValentineCompetition_Reward["OverTimeTwo"]["RewardStrengthValue"]["Value"] * nItemNum
		local tReward = CommonFunc_Copy(tValentineCompetition_Reward["OverTimeTwo"])
		tReward["DeleteItem"][1]["ItemNum"] = nItemNum
		tReward["RewardStrengthValue"]["Value"] = nRewardNum
		if RewardTemplate_UseItemAndMsg(tReward) then
			Sys_MsgBox(string.format(tValentineCompetition_Text["SysText"][nItemId], nRewardNum))
		end
		return
	end
	-- 判断数量
	if not Item_ChkMulItem(nItemId,nItemId,30) then
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["NotEnoughChip2"])
		return
	end
	-- 判断空间
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["NotSpace"])
		return
	end
	RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward[3320093])
end

-- 纪凡希口红
tItem[3320096] = tItem[3320096] or {}
tItem[3320096]["Function"] = function(nItemId,sItemName)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentineCompetition_Text["SysText"]["TimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentineCompetition_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	NpcPosition_PathFind(23732)
end

-- 神龙之息
tItem[3320097] = tItem[3320097] or {}
tItem[3320097]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["PackUseTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		local nRewardNum = tValentineCompetition_Reward["OverTime"]["RewardStrengthValue"]["Value"] * nItemNum
		local tReward = CommonFunc_Copy(tValentineCompetition_Reward["OverTime"])
		tReward["DeleteItem"][1]["ItemNum"] = nItemNum
		tReward["RewardStrengthValue"]["Value"] = nRewardNum
		if RewardTemplate_UseItemAndMsg(tReward) then
			Sys_MsgBox(string.format(tValentineCompetition_Text["SysText"][nItemId], nRewardNum))
		end
		return
	end
	-- 打开熔炼界面
	User_OpenDialog(924)
	-- if not RewardTemplate_ChkRandomSpace(tValentineCompetition_RandomReward, nItemId) then
		-- -- local nSpace = RewardTemplate_GetRandomSpace(tValentineCompetition_RandomReward, nItemId)
		-- User_TalkChannel2005(tValentineCompetition_Text["SysText"]["NotSpace"])
		-- return
	-- end
	
	-- if Item_DelItem(nItemId) then
		-- local tReward = RewardTemplate_NewRandom(tValentineCompetition_RandomReward, nItemId)
		-- local nSign = tReward[1]["tAward"][1]["Sign"]
		-- if nSign ~= nil then
			-- Sys_SystemBroadcast(string.format(tValentineCompetition_Text["Broadcast"][nSign], Get_UserName()))
		-- end
	-- end
end


-- 15分钟双人骑宠
tItem[3320094] = tItem[3320094] or {}
tItem[3320094]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward[3320094])
end

-- 临时光效
-- tItem[3320098] = tItem[3320098] or {}
-- tItem[3320098]["Function"] = function(nItemId,sItemName)
	-- ValentineCompetition_AddUserEffect(nItemId)
-- end
-- 龙息结晶
tItem[3320099] = tItem[3320099] or {}
tItem[3320099]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["PackUseTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		local tReward = CommonFunc_Copy(tValentineCompetition_Reward["ChipOverTime"])
		local nRewardNum = tValentineCompetition_Reward["ChipOverTime"]["RewardStrengthValue"]["Value"] * nItemNum
		tReward["DeleteItem"][1]["ItemNum"] = nItemNum
		tReward["RewardStrengthValue"]["Value"] = nRewardNum
		if RewardTemplate_UseItemAndMsg(tReward) then
			Sys_MsgBox(string.format(tValentineCompetition_Text["SysText"][nItemId], nRewardNum))
		end
		return
	end
	-- 判断数量
	if not Item_ChkMulItem(nItemId,nItemId,5) then
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["NotEnoughChip3"])
		return
	end
	-- 判断空间
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["NotSpace"])
		return
	end
	RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward[3320099])
end


-- 排行榜礼包
-- 每日时尚榜第1名礼包
tItem[3320174] = tItem[3320174] or {}
tItem[3320174]["Function"] = function(nItemId,sItemName)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["PackUseTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentineCompetition_Text["SysText"]["TimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentineCompetition_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward[3320174])
end
-- 每日时尚榜第2名礼包
tItem[3320175] = tItem[3320175] or {}
tItem[3320175]["Function"] = function(nItemId,sItemName)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["PackUseTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentineCompetition_Text["SysText"]["TimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentineCompetition_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward[3320175])
end
-- 每日时尚榜第3名礼包
tItem[3320176] = tItem[3320176] or {}
tItem[3320176]["Function"] = function(nItemId,sItemName)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["PackUseTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentineCompetition_Text["SysText"]["TimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentineCompetition_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward[3320176])
end
-- 每日时尚榜第4名礼包
tItem[3320177] = tItem[3320177] or {}
tItem[3320177]["Function"] = function(nItemId,sItemName)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["PackUseTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentineCompetition_Text["SysText"]["TimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentineCompetition_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward[3320177])
end
-- 每日时尚榜第5名礼包
tItem[3320178] = tItem[3320178] or {}
tItem[3320178]["Function"] = function(nItemId,sItemName)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["PackUseTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentineCompetition_Text["SysText"]["TimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentineCompetition_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward[3320178])
end
-- 每日时尚榜第6-10名礼包
tItem[3320179] = tItem[3320179] or {}
tItem[3320179]["Function"] = function(nItemId,sItemName)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["PackUseTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentineCompetition_Text["SysText"]["TimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentineCompetition_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward[3320179])
end

-- 时尚达人榜第1名礼包
tItem[3320180] = tItem[3320180] or {}
tItem[3320180]["Function"] = function(nItemId,sItemName)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["PackUseTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentineCompetition_Text["SysText"]["TimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentineCompetition_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward[3320180])
end
-- 时尚达人榜第2名礼包
tItem[3320181] = tItem[3320181] or {}
tItem[3320181]["Function"] = function(nItemId,sItemName)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["PackUseTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentineCompetition_Text["SysText"]["TimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentineCompetition_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward[3320181])
end
-- 时尚达人榜第3名礼包
tItem[3320182] = tItem[3320182] or {}
tItem[3320182]["Function"] = function(nItemId,sItemName)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["PackUseTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentineCompetition_Text["SysText"]["TimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentineCompetition_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward[3320182])
end
-- 时尚达人榜第4名礼包
tItem[3320183] = tItem[3320183] or {}
tItem[3320183]["Function"] = function(nItemId,sItemName)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["PackUseTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentineCompetition_Text["SysText"]["TimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentineCompetition_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward[3320183])
end
-- 时尚达人榜第5名礼包
tItem[3320184] = tItem[3320184] or {}
tItem[3320184]["Function"] = function(nItemId,sItemName)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["PackUseTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentineCompetition_Text["SysText"]["TimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentineCompetition_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward[3320184])
end
-- 时尚达人榜第6-10名礼包
tItem[3320185] = tItem[3320185] or {}
tItem[3320185]["Function"] = function(nItemId,sItemName)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["PackUseTime"]) then
		local nItemNum = Get_CountItemType(nItemId, 0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tValentineCompetition_Text["SysText"]["TimeOut"])
			Sys_SaveActionRewardLog(string.format(tValentineCompetition_Data["Log"]["OutTimeLog"], nItemId, nItemNum))
		end
		return
	end
	RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward[3320185])
end

-- 外套礼包
tItem[3320277] = tItem[3320277] or {}
tItem[3320277]["Function"] = function(nItemId,sItemName)
	if Sys_ChkFullTime(tActivityTime["ValentineCompetition"]["PackUseTime"]) then
		Sys_MsgBox(tValentineCompetition_Text["SysText"]["OpenPackage"])
	end
	RewardTemplate_UseItemAndMsg(tValentineCompetition_Reward["RentCoat"][nItemId])
end
tItem[3320278] = tItem[3320277]
tItem[3320279] = tItem[3320277]
tItem[3320280] = tItem[3320277]
tItem[3320281] = tItem[3320277]
tItem[3320282] = tItem[3320277]
tItem[3320283] = tItem[3320277]
tItem[3320284] = tItem[3320277]
tItem[3320285] = tItem[3320277]
tItem[3320286] = tItem[3320277]
tItem[3320287] = tItem[3320277]
tItem[3320288] = tItem[3320277]
tItem[3320289] = tItem[3320277]
tItem[3320290] = tItem[3320277]
tItem[3320291] = tItem[3320277]
tItem[3320292] = tItem[3320277]
tItem[3320293] = tItem[3320277]
tItem[3320294] = tItem[3320277]
tItem[3320295] = tItem[3320277]
tItem[3320296] = tItem[3320277]
tItem[3320297] = tItem[3320277]
tItem[3320298] = tItem[3320277]
tItem[3320299] = tItem[3320277]
tItem[3320300] = tItem[3320277]
tItem[3320301] = tItem[3320277]
tItem[3320302] = tItem[3320277]
tItem[3320303] = tItem[3320277]


---------------------------------怪物部分---------------------------------------------
local tValentineCompetition_KillMonster = {}
tValentineCompetition_KillMonster["ActivityTime"] = tActivityTime["ValentineCompetition"]["ActivityTime"]
tValentineCompetition_KillMonster["Function"]= ValentineCompetition_KillMonster
table.insert(tMonsterDrop_AreaLoad,tValentineCompetition_KillMonster)

local tValentineCompetition_KillMonster_NoGift = {}
tValentineCompetition_KillMonster_NoGift["ActivityTime"] = tActivityTime["ValentineCompetition"]["ActivityTime"]
tValentineCompetition_KillMonster_NoGift["Function"]= ValentineCompetition_KillMonster
tValentineCompetition_KillMonster_NoGift["MonsterId"] = {4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,
	4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
table.insert(tMonsterDrop_AreaLoad_NoGift,tValentineCompetition_KillMonster_NoGift)
---------------------------------时间自检---------------------------------------------
local tValentineCompetition_ClearGlobal = {}
	-- 每天凌晨清除当天玩家评分的数据表格
	tValentineCompetition_ClearGlobal["ActivityTime"] = tActivityTime["ValentineCompetition"]["ActivityTime"]
	tValentineCompetition_ClearGlobal["Type"] = 2
	tValentineCompetition_ClearGlobal["TimeType"] = 4
	tValentineCompetition_ClearGlobal["Time"] = "00:00 00:03"
	tValentineCompetition_ClearGlobal["Func"] = ValentineCompetition_UserDataTable
	table.insert(tSystemTime_InitialData,tValentineCompetition_ClearGlobal)
	
local tValentineCompetition_RestMailTab = {}
	tValentineCompetition_RestMailTab["ActivityTime"] = tActivityTime["ValentineCompetition"]["ActivityTime"]
	tValentineCompetition_RestMailTab["Type"] = 2
	tValentineCompetition_RestMailTab["TimeType"] = 4
	tValentineCompetition_RestMailTab["Time"] = "00:06 00:07"
	tValentineCompetition_RestMailTab["Func"] = ValentineCompetition_MailTabRest
	table.insert(tSystemTime_InitialData,tValentineCompetition_RestMailTab)
	
	
---------------------------------服务器启动---------------------------------------------
-- 服务器启动触发
tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],ValentineCompetition_ServerStartReset)

---------------------------------上线自检---------------------------------------------
-- tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- table.insert(tSystem_PlayLogin_Func, ValentineCompetition_UserLogin)



-- 排行榜表
-- 每日时尚榜
tRankingFunc_Info[237321] = {}
tRankingFunc_Info[237321]["ActiveTime"] = tActivityTime["ValentineCompetition"]["ActivityTime"]
tRankingFunc_Info[237321]["DayTime"] = {}
tRankingFunc_Info[237321]["DayTime"][1] = "00:00 23:59"
tRankingFunc_Info[237321]["ResetTime"] = {}
tRankingFunc_Info[237321]["ResetTime"][1] = "00:00 00:05"
tRankingFunc_Info[237321]["Global"] = {53237,53238,53239,53240}
tRankingFunc_Info[237321]["RankNum"] = 10
-- 邮件发奖
tRankingFunc_Info[237321]["Mail"] = {}
tRankingFunc_Info[237321]["Mail"]["ActiveTime"] = tActivityTime["ValentineCompetition"]["ActivityTime"]
tRankingFunc_Info[237321]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[237321]["Mail"]["RewardTime"][1] = "00:00 00:05"
tRankingFunc_Info[237321]["Mail"]["HaveFunc"] = 1
tRankingFunc_Info[237321]["Mail"]["Reward"] = {}
tRankingFunc_Info[237321]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[237321]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[237321]["Mail"]["Reward"][1]["ActionId"] = 571176
tRankingFunc_Info[237321]["Mail"]["Reward"][1]["ExistDay"] = 7
tRankingFunc_Info[237321]["Mail"]["Reward"][1]["Title"] = tValentineCompetition_Text["Mail"][1]["Title"]
tRankingFunc_Info[237321]["Mail"]["Reward"][1]["Sender"] = tValentineCompetition_Text["Mail"][1]["Sender"]
tRankingFunc_Info[237321]["Mail"]["Reward"][1]["Content"] = tValentineCompetition_Text["Mail"][1]["Content"][1]
tRankingFunc_Info[237321]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[237321]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[237321]["Mail"]["Reward"][2]["ActionId"] = 571177
tRankingFunc_Info[237321]["Mail"]["Reward"][2]["ExistDay"] = 7
tRankingFunc_Info[237321]["Mail"]["Reward"][2]["Title"] = tValentineCompetition_Text["Mail"][1]["Title"]
tRankingFunc_Info[237321]["Mail"]["Reward"][2]["Sender"] = tValentineCompetition_Text["Mail"][1]["Sender"]
tRankingFunc_Info[237321]["Mail"]["Reward"][2]["Content"] = tValentineCompetition_Text["Mail"][1]["Content"][2]
tRankingFunc_Info[237321]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[237321]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[237321]["Mail"]["Reward"][3]["ActionId"] = 571178
tRankingFunc_Info[237321]["Mail"]["Reward"][3]["ExistDay"] = 7
tRankingFunc_Info[237321]["Mail"]["Reward"][3]["Title"] = tValentineCompetition_Text["Mail"][1]["Title"]
tRankingFunc_Info[237321]["Mail"]["Reward"][3]["Sender"] = tValentineCompetition_Text["Mail"][1]["Sender"]
tRankingFunc_Info[237321]["Mail"]["Reward"][3]["Content"] = tValentineCompetition_Text["Mail"][1]["Content"][3]
tRankingFunc_Info[237321]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[237321]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[237321]["Mail"]["Reward"][4]["ActionId"] = 571179
tRankingFunc_Info[237321]["Mail"]["Reward"][4]["ExistDay"] = 7
tRankingFunc_Info[237321]["Mail"]["Reward"][4]["Title"] = tValentineCompetition_Text["Mail"][1]["Title"]
tRankingFunc_Info[237321]["Mail"]["Reward"][4]["Sender"] = tValentineCompetition_Text["Mail"][1]["Sender"]
tRankingFunc_Info[237321]["Mail"]["Reward"][4]["Content"] = tValentineCompetition_Text["Mail"][1]["Content"][4]
tRankingFunc_Info[237321]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[237321]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[237321]["Mail"]["Reward"][5]["ActionId"] = 571180
tRankingFunc_Info[237321]["Mail"]["Reward"][5]["ExistDay"] = 7
tRankingFunc_Info[237321]["Mail"]["Reward"][5]["Title"] = tValentineCompetition_Text["Mail"][1]["Title"]
tRankingFunc_Info[237321]["Mail"]["Reward"][5]["Sender"] = tValentineCompetition_Text["Mail"][1]["Sender"]
tRankingFunc_Info[237321]["Mail"]["Reward"][5]["Content"] = tValentineCompetition_Text["Mail"][1]["Content"][5]
tRankingFunc_Info[237321]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[237321]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[237321]["Mail"]["Reward"][6]["ActionId"] = 571181
tRankingFunc_Info[237321]["Mail"]["Reward"][6]["ExistDay"] = 7
tRankingFunc_Info[237321]["Mail"]["Reward"][6]["Title"] = tValentineCompetition_Text["Mail"][1]["Title"]
tRankingFunc_Info[237321]["Mail"]["Reward"][6]["Sender"] = tValentineCompetition_Text["Mail"][1]["Sender"]
tRankingFunc_Info[237321]["Mail"]["Reward"][6]["Content"] = tValentineCompetition_Text["Mail"][1]["Content"][6]
tRankingFunc_Info[237321]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[237321]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[237321]["Mail"]["Reward"][7]["ActionId"] = 571181
tRankingFunc_Info[237321]["Mail"]["Reward"][7]["ExistDay"] = 7
tRankingFunc_Info[237321]["Mail"]["Reward"][7]["Title"] = tValentineCompetition_Text["Mail"][1]["Title"]
tRankingFunc_Info[237321]["Mail"]["Reward"][7]["Sender"] = tValentineCompetition_Text["Mail"][1]["Sender"]
tRankingFunc_Info[237321]["Mail"]["Reward"][7]["Content"] = tValentineCompetition_Text["Mail"][1]["Content"][7]
tRankingFunc_Info[237321]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[237321]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[237321]["Mail"]["Reward"][8]["ActionId"] = 571181
tRankingFunc_Info[237321]["Mail"]["Reward"][8]["ExistDay"] = 7
tRankingFunc_Info[237321]["Mail"]["Reward"][8]["Title"] = tValentineCompetition_Text["Mail"][1]["Title"]
tRankingFunc_Info[237321]["Mail"]["Reward"][8]["Sender"] = tValentineCompetition_Text["Mail"][1]["Sender"]
tRankingFunc_Info[237321]["Mail"]["Reward"][8]["Content"] = tValentineCompetition_Text["Mail"][1]["Content"][8]
tRankingFunc_Info[237321]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[237321]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[237321]["Mail"]["Reward"][9]["ActionId"] = 571181
tRankingFunc_Info[237321]["Mail"]["Reward"][9]["ExistDay"] = 7
tRankingFunc_Info[237321]["Mail"]["Reward"][9]["Title"] = tValentineCompetition_Text["Mail"][1]["Title"]
tRankingFunc_Info[237321]["Mail"]["Reward"][9]["Sender"] = tValentineCompetition_Text["Mail"][1]["Sender"]
tRankingFunc_Info[237321]["Mail"]["Reward"][9]["Content"] = tValentineCompetition_Text["Mail"][1]["Content"][9]
tRankingFunc_Info[237321]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[237321]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[237321]["Mail"]["Reward"][10]["ActionId"] = 571181
tRankingFunc_Info[237321]["Mail"]["Reward"][10]["ExistDay"] = 7
tRankingFunc_Info[237321]["Mail"]["Reward"][10]["Title"] = tValentineCompetition_Text["Mail"][1]["Title"]
tRankingFunc_Info[237321]["Mail"]["Reward"][10]["Sender"] = tValentineCompetition_Text["Mail"][1]["Sender"]
tRankingFunc_Info[237321]["Mail"]["Reward"][10]["Content"] = tValentineCompetition_Text["Mail"][1]["Content"][10]


-- 时尚达人总榜
tRankingFunc_Info[237322] = {}
tRankingFunc_Info[237322]["ActiveTime"] = tActivityTime["ValentineCompetition"]["PackUseTime"]
tRankingFunc_Info[237322]["DayTime"] = {}
tRankingFunc_Info[237322]["DayTime"][1] = "00:00 23:59"
tRankingFunc_Info[237322]["Reset"] = 1
tRankingFunc_Info[237322]["Global"] = {53241,53242,53243,53244}
tRankingFunc_Info[237322]["RankNum"] = 10
-- 邮件发奖
tRankingFunc_Info[237322]["Mail"] = {}
tRankingFunc_Info[237322]["Mail"]["ActiveTime"] = tActivityTime["ValentineCompetition"]["LetterSendTime"]
tRankingFunc_Info[237322]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[237322]["Mail"]["RewardTime"][1] = "00:00 00:05"
tRankingFunc_Info[237322]["Mail"]["HaveFunc"] = 1
tRankingFunc_Info[237322]["Mail"]["Reward"] = {}
tRankingFunc_Info[237322]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[237322]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[237322]["Mail"]["Reward"][1]["ActionId"] = 571182
tRankingFunc_Info[237322]["Mail"]["Reward"][1]["ExistDay"] = 7
tRankingFunc_Info[237322]["Mail"]["Reward"][1]["Title"] = tValentineCompetition_Text["Mail"][2]["Title"]
tRankingFunc_Info[237322]["Mail"]["Reward"][1]["Sender"] = tValentineCompetition_Text["Mail"][2]["Sender"]
tRankingFunc_Info[237322]["Mail"]["Reward"][1]["Content"] = tValentineCompetition_Text["Mail"][2]["Content"][1]
tRankingFunc_Info[237322]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[237322]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[237322]["Mail"]["Reward"][2]["ActionId"] = 571183
tRankingFunc_Info[237322]["Mail"]["Reward"][2]["ExistDay"] = 7
tRankingFunc_Info[237322]["Mail"]["Reward"][2]["Title"] = tValentineCompetition_Text["Mail"][2]["Title"]
tRankingFunc_Info[237322]["Mail"]["Reward"][2]["Sender"] = tValentineCompetition_Text["Mail"][2]["Sender"]
tRankingFunc_Info[237322]["Mail"]["Reward"][2]["Content"] = tValentineCompetition_Text["Mail"][2]["Content"][2]
tRankingFunc_Info[237322]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[237322]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[237322]["Mail"]["Reward"][3]["ActionId"] = 571184
tRankingFunc_Info[237322]["Mail"]["Reward"][3]["ExistDay"] = 7
tRankingFunc_Info[237322]["Mail"]["Reward"][3]["Title"] = tValentineCompetition_Text["Mail"][2]["Title"]
tRankingFunc_Info[237322]["Mail"]["Reward"][3]["Sender"] = tValentineCompetition_Text["Mail"][2]["Sender"]
tRankingFunc_Info[237322]["Mail"]["Reward"][3]["Content"] = tValentineCompetition_Text["Mail"][2]["Content"][3]
tRankingFunc_Info[237322]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[237322]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[237322]["Mail"]["Reward"][4]["ActionId"] = 571185
tRankingFunc_Info[237322]["Mail"]["Reward"][4]["ExistDay"] = 7
tRankingFunc_Info[237322]["Mail"]["Reward"][4]["Title"] = tValentineCompetition_Text["Mail"][2]["Title"]
tRankingFunc_Info[237322]["Mail"]["Reward"][4]["Sender"] = tValentineCompetition_Text["Mail"][2]["Sender"]
tRankingFunc_Info[237322]["Mail"]["Reward"][4]["Content"] = tValentineCompetition_Text["Mail"][2]["Content"][4]
tRankingFunc_Info[237322]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[237322]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[237322]["Mail"]["Reward"][5]["ActionId"] = 571186
tRankingFunc_Info[237322]["Mail"]["Reward"][5]["ExistDay"] = 7
tRankingFunc_Info[237322]["Mail"]["Reward"][5]["Title"] = tValentineCompetition_Text["Mail"][2]["Title"]
tRankingFunc_Info[237322]["Mail"]["Reward"][5]["Sender"] = tValentineCompetition_Text["Mail"][2]["Sender"]
tRankingFunc_Info[237322]["Mail"]["Reward"][5]["Content"] = tValentineCompetition_Text["Mail"][2]["Content"][5]
tRankingFunc_Info[237322]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[237322]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[237322]["Mail"]["Reward"][6]["ActionId"] = 571187
tRankingFunc_Info[237322]["Mail"]["Reward"][6]["ExistDay"] = 7
tRankingFunc_Info[237322]["Mail"]["Reward"][6]["Title"] = tValentineCompetition_Text["Mail"][2]["Title"]
tRankingFunc_Info[237322]["Mail"]["Reward"][6]["Sender"] = tValentineCompetition_Text["Mail"][2]["Sender"]
tRankingFunc_Info[237322]["Mail"]["Reward"][6]["Content"] = tValentineCompetition_Text["Mail"][2]["Content"][6]
tRankingFunc_Info[237322]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[237322]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[237322]["Mail"]["Reward"][7]["ActionId"] = 571187
tRankingFunc_Info[237322]["Mail"]["Reward"][7]["ExistDay"] = 7
tRankingFunc_Info[237322]["Mail"]["Reward"][7]["Title"] = tValentineCompetition_Text["Mail"][2]["Title"]
tRankingFunc_Info[237322]["Mail"]["Reward"][7]["Sender"] = tValentineCompetition_Text["Mail"][2]["Sender"]
tRankingFunc_Info[237322]["Mail"]["Reward"][7]["Content"] = tValentineCompetition_Text["Mail"][2]["Content"][7]
tRankingFunc_Info[237322]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[237322]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[237322]["Mail"]["Reward"][8]["ActionId"] = 571187
tRankingFunc_Info[237322]["Mail"]["Reward"][8]["ExistDay"] = 7
tRankingFunc_Info[237322]["Mail"]["Reward"][8]["Title"] = tValentineCompetition_Text["Mail"][2]["Title"]
tRankingFunc_Info[237322]["Mail"]["Reward"][8]["Sender"] = tValentineCompetition_Text["Mail"][2]["Sender"]
tRankingFunc_Info[237322]["Mail"]["Reward"][8]["Content"] = tValentineCompetition_Text["Mail"][2]["Content"][8]
tRankingFunc_Info[237322]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[237322]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[237322]["Mail"]["Reward"][9]["ActionId"] = 571187
tRankingFunc_Info[237322]["Mail"]["Reward"][9]["ExistDay"] = 7
tRankingFunc_Info[237322]["Mail"]["Reward"][9]["Title"] = tValentineCompetition_Text["Mail"][2]["Title"]
tRankingFunc_Info[237322]["Mail"]["Reward"][9]["Sender"] = tValentineCompetition_Text["Mail"][2]["Sender"]
tRankingFunc_Info[237322]["Mail"]["Reward"][9]["Content"] = tValentineCompetition_Text["Mail"][2]["Content"][9]
tRankingFunc_Info[237322]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[237322]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[237322]["Mail"]["Reward"][10]["ActionId"] = 571187
tRankingFunc_Info[237322]["Mail"]["Reward"][10]["ExistDay"] = 7
tRankingFunc_Info[237322]["Mail"]["Reward"][10]["Title"] = tValentineCompetition_Text["Mail"][2]["Title"]
tRankingFunc_Info[237322]["Mail"]["Reward"][10]["Sender"] = tValentineCompetition_Text["Mail"][2]["Sender"]
tRankingFunc_Info[237322]["Mail"]["Reward"][10]["Content"] = tValentineCompetition_Text["Mail"][2]["Content"][10]
