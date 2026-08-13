------------------------------------------------------------------------------------
--Name:		180504[简体征服][活动脚本]2018世界杯活动制作
--Creator: 	兰瑞妹
--Created:	2018/05/06
------------------------------------------------------------------------------------

-- 命名前缀
-- WorldCup_Activities_

-- logid 12001076

-- #stc 掩码说明 
-- #stc(177,01) 背包信
-- #stc(177,02) 答题奖励，第一次==1，答对==2
-- #stc(177,03) 答题数量答对数量 == 答对上限10个
-- #stc(177,04) 杀怪额外掉落 == 每人每日限量2个
-- #stc(177,05) 屏蔽二次确认
-- #stc(177,06) 玩家助力球星萨拉赫人气值
-- #stc(177,07) 玩家助力球星内马尔
-- #stc(177,08) 玩家助力球星梅西
-- #stc(177,09) 玩家助力球星C罗
-- #stc(177,10) 玩家助力球星伊涅斯塔
-- #stc(177,11) 玩家助力球星阿扎尔

--动态存储表说明
-- 52657~52660 22947,'萨拉赫' 排行
-- 52661~52664 22948,'内马尔' 排行
-- 52665~52668 22949,'梅西' 排行
-- 52669~52672 22950,'C罗' 排行
-- 52673~52676 22951,'伊涅斯塔' 排行
-- 52677~52680 22952,'阿扎尔' 排行
-- GlobalId 52681 22944,'征服足协主席' 今日总榜
-- GlobalId 52683 22944,'征服足协主席' 昨日总榜
----------	存储位	--存储说明--
--data0--	记录22947,'萨拉赫' 人气值
--data1--	记录22948,'内马尔 人气值
--data2--	记录22949,'梅西' 人气值
--data3--	记录22950,'C罗' 人气值
--data4--	记录22951,'伊涅斯塔' 人气值
--data5--	记录22952,'阿扎尔' 人气值
-- GlobalId 52682 
--data0--	记录高级抽奖发型包限量==1

-- 数据部分配置
local tWorldCup_Activities_Count = {}
	-- 活动时间
	tWorldCup_Activities_Count["ActivityTime"] = tActivityTime["WorldCupActivities"]["ActivityTime"]
	tWorldCup_Activities_Count["ItemUseTime"] = tActivityTime["WorldCupActivities"]["ItemUseTime"]
	tWorldCup_Activities_Count["FirstDayTime"] = tActivityTime["WorldCupActivities"]["FirstDayTime"]
	-- 清理时间
	tWorldCup_Activities_Count["ClearTime"] = "00:00 00:01"
	-- 等级
	tWorldCup_Activities_Count["Level"] = 80
	tWorldCup_Activities_Count["Meto"] = 0
	
	-- 碎片赌
	tWorldCup_Activities_Count["PieceMin"] = 4800
	tWorldCup_Activities_Count["PieceMax"] = 10000
	
	-- 征服足协主席
	tWorldCup_Activities_Count["BasicNpc"] = 22944
	-- 萨拉赫
	tWorldCup_Activities_Count["BasicNewNpc"] = 22947
	-- 站位npc
	tWorldCup_Activities_Count["BasicDistance"] = 6
	-- 埃及守护者球衣包
	tWorldCup_Activities_Count["BasicItemId"] = 3308904
	
	-- 总榜Globalid
	tWorldCup_Activities_Count["GlobalId"] = 52681
	tWorldCup_Activities_Count["OldGlobalId"] = 52683
	-- 获得奖励限量
	tWorldCup_Activities_Count["NewGlobalId"] = 52682
	
	-- 碎片基础id
	tWorldCup_Activities_Count["CoatPieceItem"] = 3308886
	-- 高级道具id
	tWorldCup_Activities_Count["HighPro"] = 3308882
	
	-- 碎片对应的物品id
	tWorldCup_Activities_Count["PieceCoat"] = {}
	tWorldCup_Activities_Count["PieceCoat"][3308886] = 195235
	tWorldCup_Activities_Count["PieceCoat"][3308887] = 195245
	tWorldCup_Activities_Count["PieceCoat"][3308888] = 195255
	tWorldCup_Activities_Count["PieceCoat"][3308889] = 195265
	tWorldCup_Activities_Count["PieceCoat"][3308890] = 195275
	tWorldCup_Activities_Count["PieceCoat"][3308891] = 195285
	
	--邮件发奖
	tWorldCup_Activities_Count["Mail"] = {}
	tWorldCup_Activities_Count["Mail"]["ExistDay"] = 3
	tWorldCup_Activities_Count["Mail"][1] = {}
	tWorldCup_Activities_Count["Mail"][1][1] = 94486298
	tWorldCup_Activities_Count["Mail"][1][2] = 94486299
	
	-- 答题榜奖励
	tWorldCup_Activities_Count["NewMail"] = {}
	tWorldCup_Activities_Count["NewMail"]["ExistDay"] = 3
	tWorldCup_Activities_Count["NewMail"][1] = {}
	tWorldCup_Activities_Count["NewMail"][1][1] = 94486365
	tWorldCup_Activities_Count["NewMail"][1][2] = 94486366
	tWorldCup_Activities_Count["NewMail"][1][3] = 94486366
	tWorldCup_Activities_Count["NewMail"][1][4] = 94486367
	tWorldCup_Activities_Count["NewMail"][1][5] = 94486367
	tWorldCup_Activities_Count["NewMail"][1][6] = 94486367
	tWorldCup_Activities_Count["NewMail"][1][7] = 94486367
	tWorldCup_Activities_Count["NewMail"][1][8] = 94486367
	tWorldCup_Activities_Count["NewMail"][1][9] = 94486367
	tWorldCup_Activities_Count["NewMail"][1][10] = 94486367
	
	-- 物品换气
	tWorldCup_Activities_Count["StrengthValue"] = {}
	tWorldCup_Activities_Count["StrengthValue"][3308886] = 100
	tWorldCup_Activities_Count["StrengthValue"][3308887] = 100
	tWorldCup_Activities_Count["StrengthValue"][3308888] = 100
	tWorldCup_Activities_Count["StrengthValue"][3308889] = 100
	tWorldCup_Activities_Count["StrengthValue"][3308890] = 100
	tWorldCup_Activities_Count["StrengthValue"][3308891] = 100
	tWorldCup_Activities_Count["StrengthValue"][3308892] = 7500
	tWorldCup_Activities_Count["StrengthValue"][3308893] = 500
	
	-- 选项对应赠品
	tWorldCup_Activities_Count["Option"] = {}
	tWorldCup_Activities_Count["Option"][211] = {}
	tWorldCup_Activities_Count["Option"][211]["Id"] = 195235
	tWorldCup_Activities_Count["Option"][211]["Monopoly"] = 0
	tWorldCup_Activities_Count["Option"][212] = {}
	tWorldCup_Activities_Count["Option"][212]["Id"] = 195245
	tWorldCup_Activities_Count["Option"][212]["Monopoly"] = 0
	tWorldCup_Activities_Count["Option"][213] = {}
	tWorldCup_Activities_Count["Option"][213]["Id"] = 195255
	tWorldCup_Activities_Count["Option"][213]["Monopoly"] = 0
	tWorldCup_Activities_Count["Option"][214] = {}
	tWorldCup_Activities_Count["Option"][214]["Id"] = 195265
	tWorldCup_Activities_Count["Option"][214]["Monopoly"] = 0
	tWorldCup_Activities_Count["Option"][215] = {}
	tWorldCup_Activities_Count["Option"][215]["Id"] = 195275
	tWorldCup_Activities_Count["Option"][215]["Monopoly"] = 0
	tWorldCup_Activities_Count["Option"][216] = {}
	tWorldCup_Activities_Count["Option"][216]["Id"] = 195285
	tWorldCup_Activities_Count["Option"][216]["Monopoly"] = 0
	tWorldCup_Activities_Count["Option"][217] = {}
	tWorldCup_Activities_Count["Option"][217]["Id"] = 195235
	tWorldCup_Activities_Count["Option"][217]["Monopoly"] = 2
	tWorldCup_Activities_Count["Option"][218] = {}
	tWorldCup_Activities_Count["Option"][218]["Id"] = 195245
	tWorldCup_Activities_Count["Option"][218]["Monopoly"] = 2
	tWorldCup_Activities_Count["Option"][219] = {}
	tWorldCup_Activities_Count["Option"][219]["Id"] = 195255
	tWorldCup_Activities_Count["Option"][219]["Monopoly"] = 2
	tWorldCup_Activities_Count["Option"][220] = {}
	tWorldCup_Activities_Count["Option"][220]["Id"] = 195265
	tWorldCup_Activities_Count["Option"][220]["Monopoly"] = 2
	tWorldCup_Activities_Count["Option"][221] = {}
	tWorldCup_Activities_Count["Option"][221]["Id"] = 195275
	tWorldCup_Activities_Count["Option"][221]["Monopoly"] = 2
	tWorldCup_Activities_Count["Option"][222] = {}
	tWorldCup_Activities_Count["Option"][222]["Id"] = 195285
	tWorldCup_Activities_Count["Option"][222]["Monopoly"] = 2
	
	-- 外套对应光效外套
	tWorldCup_Activities_Count["EffectCoat"] = {}
	tWorldCup_Activities_Count["EffectCoat"][195235] = 195295
	tWorldCup_Activities_Count["EffectCoat"][195245] = 195305
	tWorldCup_Activities_Count["EffectCoat"][195255] = 195315
	tWorldCup_Activities_Count["EffectCoat"][195265] = 195325
	tWorldCup_Activities_Count["EffectCoat"][195275] = 195335
	tWorldCup_Activities_Count["EffectCoat"][195285] = 195345
	
	-- 外套id
	tWorldCup_Activities_Count["NormalCoatId"] = {}
	tWorldCup_Activities_Count["NormalCoatId"][1] = 255
	tWorldCup_Activities_Count["NormalCoatId"][2] = 257
	tWorldCup_Activities_Count["NormalCoatId"][3] = 258
	tWorldCup_Activities_Count["NormalCoatId"][4] = 259
	tWorldCup_Activities_Count["NormalCoatId"][5] = 260
	tWorldCup_Activities_Count["NormalCoatId"][6] = 261
	tWorldCup_Activities_Count["EffectCoatId"] = {}
	tWorldCup_Activities_Count["EffectCoatId"][1] = 262
	tWorldCup_Activities_Count["EffectCoatId"][2] = 263
	tWorldCup_Activities_Count["EffectCoatId"][3] = 264
	tWorldCup_Activities_Count["EffectCoatId"][4] = 265
	tWorldCup_Activities_Count["EffectCoatId"][5] = 266
	tWorldCup_Activities_Count["EffectCoatId"][6] = 267
	-- 称号
	tWorldCup_Activities_Count["Title"] = {}
	tWorldCup_Activities_Count["Title"][1] = 2082
	tWorldCup_Activities_Count["Title"][2] = 2083
	tWorldCup_Activities_Count["Title"][3] = 2084
	
	-- 球星魅力总榜
	tWorldCup_Activities_Count["RankingIndex"] = {}
	tWorldCup_Activities_Count["RankingIndex"][1] = "Text214"
	tWorldCup_Activities_Count["RankingIndex"][2] = "Text215"
	tWorldCup_Activities_Count["RankingIndex"][3] = "Text216"
	tWorldCup_Activities_Count["RankingIndex"][4] = "Text217"
	tWorldCup_Activities_Count["RankingIndex"][5] = "Text218"
	tWorldCup_Activities_Count["RankingIndex"][6] = "Text219"
	-- 球星魅力榜
	tWorldCup_Activities_Count["Ranking"] = {}
	tWorldCup_Activities_Count["Ranking"][1] = "Text413"
	tWorldCup_Activities_Count["Ranking"][2] = "Text414"
	tWorldCup_Activities_Count["Ranking"][3] = "Text415"
	tWorldCup_Activities_Count["Ranking"][4] = "Text416"
	tWorldCup_Activities_Count["Ranking"][5] = "Text417"
	tWorldCup_Activities_Count["Ranking"][6] = "Text418"
	tWorldCup_Activities_Count["Ranking"][7] = "Text419"
	tWorldCup_Activities_Count["Ranking"][8] = "Text4110"
	tWorldCup_Activities_Count["Ranking"][9] = "Text4111"
	tWorldCup_Activities_Count["Ranking"][10] = "Text4112"
	
	-- 助力棒配置
	tWorldCup_Activities_Count["Cheer"] = {}
	-- 3308881,'助威棒'
	tWorldCup_Activities_Count["Cheer"][3308881] = {}
	-- 增加人气值
	tWorldCup_Activities_Count["Cheer"][3308881]["Score"] = 15
	-- 需要天石
	tWorldCup_Activities_Count["Cheer"][3308881]["Emoney"] = 27
	-- 无物品
	tWorldCup_Activities_Count["Cheer"][3308881]["Dialog"] = {}
	tWorldCup_Activities_Count["Cheer"][3308881]["Dialog"][1] = "2-2"
	tWorldCup_Activities_Count["Cheer"][3308881]["Dialog"][5] = "3-1"
	tWorldCup_Activities_Count["Cheer"][3308881]["DialogIndex"] = 221
	-- 领取奖励
	tWorldCup_Activities_Count["Cheer"][3308881]["Reward"] = {}
	tWorldCup_Activities_Count["Cheer"][3308881]["Reward"][1] = "2-6"
	tWorldCup_Activities_Count["Cheer"][3308881]["Reward"][5] = "3-2"
	tWorldCup_Activities_Count["Cheer"][3308881]["RewardIndex"] = {}
	tWorldCup_Activities_Count["Cheer"][3308881]["RewardIndex"][1] = "Text261"
	tWorldCup_Activities_Count["Cheer"][3308881]["RewardIndex"][5] = "Text321"
	tWorldCup_Activities_Count["Cheer"][3308881]["RewardName"] = {}
	tWorldCup_Activities_Count["Cheer"][3308881]["RewardName"][1] = 263
	tWorldCup_Activities_Count["Cheer"][3308881]["RewardName"][5] = {323,324,325,326,327}
	-- log部分
	tWorldCup_Activities_Count["Cheer"][3308881]["Log"] = {}
	tWorldCup_Activities_Count["Cheer"][3308881]["Log"][1] = "0,0,3308881,1,12001076,1[4],0,0"
	tWorldCup_Activities_Count["Cheer"][3308881]["Log"][5] = "0,0,3308881,5,12001076,1[4],0,0"
	tWorldCup_Activities_Count["Cheer"][3308881]["NormalLog"] = {}
	-- 免费上交1个助威棒
	tWorldCup_Activities_Count["Cheer"][3308881]["NormalLog"][1] = "350	21496	0	0	1	"
	-- 免费上交5个助威棒
	tWorldCup_Activities_Count["Cheer"][3308881]["NormalLog"][5] = "350	21497	0	0	1	"
	tWorldCup_Activities_Count["Cheer"][3308881]["UseEmoneyLog"] = {}
	-- 27天石上交1个助威棒
	tWorldCup_Activities_Count["Cheer"][3308881]["UseEmoneyLog"][1] = "350	21500	27	27	1	"
	-- 135天石上交5个助威棒
	tWorldCup_Activities_Count["Cheer"][3308881]["UseEmoneyLog"][5] = "350	21501	135	135	1	"
	tWorldCup_Activities_Count["Cheer"][3308881]["EmoneyLog"] = {}
	tWorldCup_Activities_Count["Cheer"][3308881]["EmoneyLog"][1] = "27,0,0,0,12001076,1[4],0,0"
	tWorldCup_Activities_Count["Cheer"][3308881]["EmoneyLog"][5] = "135,0,0,0,12001076,1[4],0,0"
	tWorldCup_Activities_Count["Cheer"][3308881]["EmoneyRealLog"] = "250	4027	%d	%d	1	"
	tWorldCup_Activities_Count["Cheer"][3308881]["LogStep"] = "1[4]"
	-- 3308882,'助威大喇叭'
	tWorldCup_Activities_Count["Cheer"][3308882] = {}
	-- 增加人气值
	tWorldCup_Activities_Count["Cheer"][3308882]["Score"] = 30
	-- 需要天石
	tWorldCup_Activities_Count["Cheer"][3308882]["Emoney"] = 54
	-- 无物品
	tWorldCup_Activities_Count["Cheer"][3308882]["Dialog"] = {}
	tWorldCup_Activities_Count["Cheer"][3308882]["Dialog"][1] = "3-4"
	tWorldCup_Activities_Count["Cheer"][3308882]["Dialog"][5] = "3-6"
	tWorldCup_Activities_Count["Cheer"][3308882]["DialogIndex"] = 341
	-- 领取奖励
	tWorldCup_Activities_Count["Cheer"][3308882]["Reward"] = {}
	tWorldCup_Activities_Count["Cheer"][3308882]["Reward"][1] = "3-5"
	tWorldCup_Activities_Count["Cheer"][3308882]["Reward"][5] = "3-7"
	tWorldCup_Activities_Count["Cheer"][3308882]["RewardIndex"] = {}
	tWorldCup_Activities_Count["Cheer"][3308882]["RewardIndex"][1] = "Text351"
	tWorldCup_Activities_Count["Cheer"][3308882]["RewardIndex"][5] = "Text371"
	tWorldCup_Activities_Count["Cheer"][3308882]["RewardName"] = {}
	tWorldCup_Activities_Count["Cheer"][3308882]["RewardName"][1] = 353
	tWorldCup_Activities_Count["Cheer"][3308882]["RewardName"][5] = {373,374,375,376,377}
	-- log部分
	tWorldCup_Activities_Count["Cheer"][3308882]["Log"] = {}
	tWorldCup_Activities_Count["Cheer"][3308882]["Log"][1] = "0,0,3308882,1,12001076,1[5],0,0"
	tWorldCup_Activities_Count["Cheer"][3308882]["Log"][5] = "0,0,3308882,5,12001076,1[5],0,0"
	tWorldCup_Activities_Count["Cheer"][3308882]["EmoneyLog"] = {}
	tWorldCup_Activities_Count["Cheer"][3308882]["EmoneyLog"][1] = "54,0,0,0,12001076,1[5],0,0"
	tWorldCup_Activities_Count["Cheer"][3308882]["EmoneyLog"][5] = "270,0,0,0,12001076,1[5],0,0"
	tWorldCup_Activities_Count["Cheer"][3308882]["EmoneyRealLog"] = "250	4028	%d	%d	1	"
	tWorldCup_Activities_Count["Cheer"][3308882]["NormalLog"] = {}
	-- 免费上交1个助威喇叭
	tWorldCup_Activities_Count["Cheer"][3308882]["NormalLog"][1] = "350	21498	0	0	1	"
	-- 免费上交5个助威喇叭
	tWorldCup_Activities_Count["Cheer"][3308882]["NormalLog"][5] = "350	21499	0	0	1	"
	tWorldCup_Activities_Count["Cheer"][3308882]["UseEmoneyLog"] = {}
	-- 54天石上交一个助威喇叭
	tWorldCup_Activities_Count["Cheer"][3308882]["UseEmoneyLog"][1] = "350	21502	54	54	1	"
	-- 270天石上交5个助威喇叭
	tWorldCup_Activities_Count["Cheer"][3308882]["UseEmoneyLog"][5] = "350	21503	270	270	1	"
	tWorldCup_Activities_Count["Cheer"][3308882]["LogStep"] = "1[5]"
	
	--  第一站位npc
	tWorldCup_Activities_Count["MapId"] = 1002
	tWorldCup_Activities_Count["PosX"] = 324
	tWorldCup_Activities_Count["PosY"] = 443
	tWorldCup_Activities_Count["OutMapId"] = 5000
	tWorldCup_Activities_Count["OutPosX"] = 50
	tWorldCup_Activities_Count["OutPosY"] = 50
	
	-- 寻路
	tWorldCup_Activities_Count["GotoPosX"] = 322
	tWorldCup_Activities_Count["GotoPosY"] = 446
	
	-- 随机子表增加概率
	tWorldCup_Activities_Count["List"] = {}
	tWorldCup_Activities_Count["List"][1] = 22949
	tWorldCup_Activities_Count["List"][2] = 22948
	tWorldCup_Activities_Count["List"][3] = 22951
	tWorldCup_Activities_Count["List"][4] = 22950
	tWorldCup_Activities_Count["List"][5] = 22947
	tWorldCup_Activities_Count["List"][6] = 22952
	
	-- 球礼包对应人气值
	tWorldCup_Activities_Count["NormalCheer"] = 1200
	tWorldCup_Activities_Count["HighCheer"] = 4500
	
	-- 发型
	tWorldCup_Activities_Count["schgmapType"] = "style"  
	tWorldCup_Activities_Count["hair"] = {}
	tWorldCup_Activities_Count["hair"][3308894] = 65
	tWorldCup_Activities_Count["hair"][3308895] = 66
	tWorldCup_Activities_Count["hair"][3308896] = 67
	tWorldCup_Activities_Count["hair"][3308897] = 68
	tWorldCup_Activities_Count["hair"][3308898] = 69
	tWorldCup_Activities_Count["hair"][3308899] = 70
	tWorldCup_Activities_Count["hair"][3308900] = 71
	tWorldCup_Activities_Count["hair"][3308901] = 72
	tWorldCup_Activities_Count["hair"][3308902] = 73
	tWorldCup_Activities_Count["hair"][3308903] = 74
	
	-- 奖励对白
	tWorldCup_Activities_Count["RewardText"] = {}
	tWorldCup_Activities_Count["RewardText"][22947] = {}
	tWorldCup_Activities_Count["RewardText"][22947][1] = "Text423"
	tWorldCup_Activities_Count["RewardText"][22947][2] = "Text425"
	tWorldCup_Activities_Count["RewardText"][22947][3] = "Text426"
	tWorldCup_Activities_Count["RewardText"][22948] = {}
	tWorldCup_Activities_Count["RewardText"][22948][1] = "Text4231"
	tWorldCup_Activities_Count["RewardText"][22948][2] = "Text4251"
	tWorldCup_Activities_Count["RewardText"][22948][3] = "Text4261"
	tWorldCup_Activities_Count["RewardText"][22949] = {}
	tWorldCup_Activities_Count["RewardText"][22949][1] = "Text4232"
	tWorldCup_Activities_Count["RewardText"][22949][2] = "Text4252"
	tWorldCup_Activities_Count["RewardText"][22949][3] = "Text4262"
	tWorldCup_Activities_Count["RewardText"][22950] = {}
	tWorldCup_Activities_Count["RewardText"][22950][1] = "Text4233"
	tWorldCup_Activities_Count["RewardText"][22950][2] = "Text4253"
	tWorldCup_Activities_Count["RewardText"][22950][3] = "Text4263"
	tWorldCup_Activities_Count["RewardText"][22951] = {}
	tWorldCup_Activities_Count["RewardText"][22951][1] = "Text4234"
	tWorldCup_Activities_Count["RewardText"][22951][2] = "Text4254"
	tWorldCup_Activities_Count["RewardText"][22951][3] = "Text4264"
	tWorldCup_Activities_Count["RewardText"][22952] = {}
	tWorldCup_Activities_Count["RewardText"][22952][1] = "Text4234"
	tWorldCup_Activities_Count["RewardText"][22952][2] = "Text4254"
	tWorldCup_Activities_Count["RewardText"][22952][3] = "Text4264"
	-- 球迷榜标题
	tWorldCup_Activities_Count["RankingText"] = {}
	tWorldCup_Activities_Count["RankingText"][22947] = "Text4310"
	tWorldCup_Activities_Count["RankingText"][22948] = "Text4311"
	tWorldCup_Activities_Count["RankingText"][22949] = "Text4312"
	tWorldCup_Activities_Count["RankingText"][22950] = "Text4313"
	tWorldCup_Activities_Count["RankingText"][22951] = "Text4314"
	tWorldCup_Activities_Count["RankingText"][22952] = "Text4315"
	-- 助威奖励
	tWorldCup_Activities_Count["RandomText"] = {}
	tWorldCup_Activities_Count["RandomText"][22947] = "0"
	tWorldCup_Activities_Count["RandomText"][22948] = "1"
	tWorldCup_Activities_Count["RandomText"][22949] = "2"
	tWorldCup_Activities_Count["RandomText"][22950] = "3"
	tWorldCup_Activities_Count["RandomText"][22951] = "4"
	tWorldCup_Activities_Count["RandomText"][22952] = "5"
	
	-- 物品人气值对应npc
	tWorldCup_Activities_Count["ItemToNpc"] = {}
	tWorldCup_Activities_Count["ItemToNpc"][3308904] = 22947
	tWorldCup_Activities_Count["ItemToNpc"][3308905] = 22952
	tWorldCup_Activities_Count["ItemToNpc"][3308906] = 22948
	tWorldCup_Activities_Count["ItemToNpc"][3308907] = 22949
	tWorldCup_Activities_Count["ItemToNpc"][3308908] = 22950
	tWorldCup_Activities_Count["ItemToNpc"][3308909] = 22951
	tWorldCup_Activities_Count["ItemToNpc"][3308910] = 22947
	tWorldCup_Activities_Count["ItemToNpc"][3308911] = 22952
	tWorldCup_Activities_Count["ItemToNpc"][3308912] = 22948
	tWorldCup_Activities_Count["ItemToNpc"][3308913] = 22949
	tWorldCup_Activities_Count["ItemToNpc"][3308914] = 22950
	tWorldCup_Activities_Count["ItemToNpc"][3308915] = 22951
	
	--隔天时间
	tWorldCup_Activities_Count["DelayTime"] = 86400
	-- 答题间隔时间
	tWorldCup_Activities_Count["DelayCount"] = 60
	
-- Log表
local tWorldCup_Activities_Log = {}
	-- 过期删除
	tWorldCup_Activities_Log["OverDue"] = "0,0,%d,%d,12001076,2,0,0"
	-- 使用发型物品
	tWorldCup_Activities_Log["DelItem"] = "0,0,%d,1,12001076,2,0,0"
	
	-- emoneylog
	tWorldCup_Activities_Log["Emoney"] = {}
	-- 显著功勋礼包获得助威榜	350 21506
	tWorldCup_Activities_Log["Emoney"][1] = "350	21506	0	0	1	"
	-- 答题获得助威榜	350 21507
	tWorldCup_Activities_Log["Emoney"][2] = "350	21507	0	0	1	"
	-- 答题冠军礼包获得物品	350 21508
	tWorldCup_Activities_Log["Emoney"][3] = "350	21508	0	0	1	"
	-- 全部答对获得助威大喇叭	350 21509
	tWorldCup_Activities_Log["Emoney"][4] = "350	21509	0	0	1	"
	-- 提交低级应援道具获得应援奖励	350 21510
	tWorldCup_Activities_Log["Emoney"][3308881] = "350	21510	0	0	1	"
	-- 提交高级应援道具获得应援奖励	350 21511
	tWorldCup_Activities_Log["Emoney"][3308882] = "350	21511	0	0	1	"
	-- 15个碎片合成外套	350 21512
	tWorldCup_Activities_Log["Emoney"][5] = "350	21512	0	0	%d	"
	-- 1个碎片兑换气力	350 21513
	tWorldCup_Activities_Log["Emoney"][6] = "350	21513	0	0	%d	"
	-- 赌碎片成功	350 21514
	tWorldCup_Activities_Log["Emoney"][7] = "350	21514	0	0	%d	"
	-- 赌碎片失败	350 21515
	tWorldCup_Activities_Log["Emoney"][8] = "350	21515	0	0	%d	"
	-- 球衣碎片可选包	350 21516
	tWorldCup_Activities_Log["Emoney"][9] = "350	21516	0	0	1	"
	-- 幸运外套礼包打开随机获得1天时效外套	350 21517
	tWorldCup_Activities_Log["Emoney"][10] = "350	21517	0	0	1	"
	-- 球星发型可选包获得发型	350 21519
	tWorldCup_Activities_Log["Emoney"][12] = "350	21519	0	0	1	"


	

-- stc掩码
local tWorldCup_Activities_Stc = {}
	-- 每日参与一次答题
	tWorldCup_Activities_Stc[1] = {}
	tWorldCup_Activities_Stc[1]["EventType"] = 177
	tWorldCup_Activities_Stc[1]["DataType"] = 02
	tWorldCup_Activities_Stc[1]["Limit"] = 1
	-- 答题数量答对数量
	tWorldCup_Activities_Stc[2] = {}
	tWorldCup_Activities_Stc[2]["EventType"] = 177
	tWorldCup_Activities_Stc[2]["DataType"] = 03
	tWorldCup_Activities_Stc[2]["Limit"] = 10
	-- 杀怪额外掉落 == 每人每日限量2个
	tWorldCup_Activities_Stc[3] = {}
	tWorldCup_Activities_Stc[3]["EventType"] = 177
	tWorldCup_Activities_Stc[3]["DataType"] = 04
	tWorldCup_Activities_Stc[3]["Limit"] = 2
	-- 屏蔽二次确认
	tWorldCup_Activities_Stc[4] = {}
	tWorldCup_Activities_Stc[4]["EventType"] = 177
	tWorldCup_Activities_Stc[4]["DataType"] = 05
	-- 玩家助力球星萨拉赫人气值
	tWorldCup_Activities_Stc[22947] = {}
	tWorldCup_Activities_Stc[22947]["EventType"] = 177
	tWorldCup_Activities_Stc[22947]["DataType"] = 06
	-- 玩家助力球星内马尔
	tWorldCup_Activities_Stc[22948] = {}
	tWorldCup_Activities_Stc[22948]["EventType"] = 177
	tWorldCup_Activities_Stc[22948]["DataType"] = 07
	-- 玩家助力球星梅西
	tWorldCup_Activities_Stc[22949] = {}
	tWorldCup_Activities_Stc[22949]["EventType"] = 177
	tWorldCup_Activities_Stc[22949]["DataType"] = 08
	-- 玩家助力球星C罗
	tWorldCup_Activities_Stc[22950] = {}
	tWorldCup_Activities_Stc[22950]["EventType"] = 177
	tWorldCup_Activities_Stc[22950]["DataType"] = 09
	-- 玩家助力球星伊涅斯塔
	tWorldCup_Activities_Stc[22951] = {}
	tWorldCup_Activities_Stc[22951]["EventType"] = 177
	tWorldCup_Activities_Stc[22951]["DataType"] = 10
	-- 玩家助力球星阿扎尔
	tWorldCup_Activities_Stc[22952] = {}
	tWorldCup_Activities_Stc[22952]["EventType"] = 177
	tWorldCup_Activities_Stc[22952]["DataType"] = 11
	
-- 光效
local tWorldCup_Activities_Effect = {}
	-- 赌碎片失败光效
	tWorldCup_Activities_Effect[1] = {}
	tWorldCup_Activities_Effect[1]["Effect"] = "BodyDisapear"
	tWorldCup_Activities_Effect[1]["EffectObj"] = "self"
	
-- 排行数据表
local tWorldCup_Activities_Ranking = {}
-- 记录玩家时间
local tWorldCup_Activities_Time = {}
-- 昨日排行
local tWorldCup_Activities_OldRanking = {}


local tWorldCup_Activities_MoveNpc = {}
	-- 22947,'萨拉赫'
	tWorldCup_Activities_MoveNpc[1]={}
	tWorldCup_Activities_MoveNpc[1]["ActivetyMapId"] = 1002
	tWorldCup_Activities_MoveNpc[1]["ActivetyPosX"] = 313
	tWorldCup_Activities_MoveNpc[1]["ActivetyPosY"] = 436
	tWorldCup_Activities_MoveNpc[1]["AfterActivetyMapId"] = 5000
	tWorldCup_Activities_MoveNpc[1]["AfterActivetyPosX"] = 100
	tWorldCup_Activities_MoveNpc[1]["AfterActivetyPosY"] = 100
	-- 22948,'内马尔'
	tWorldCup_Activities_MoveNpc[2]={}
	tWorldCup_Activities_MoveNpc[2]["ActivetyMapId"] = 1002
	tWorldCup_Activities_MoveNpc[2]["ActivetyPosX"] = 317
	tWorldCup_Activities_MoveNpc[2]["ActivetyPosY"] = 436
	tWorldCup_Activities_MoveNpc[2]["AfterActivetyMapId"] = 5000
	tWorldCup_Activities_MoveNpc[2]["AfterActivetyPosX"] = 100
	tWorldCup_Activities_MoveNpc[2]["AfterActivetyPosY"] = 100
	-- 22949,'梅西'
	tWorldCup_Activities_MoveNpc[3]={}
	tWorldCup_Activities_MoveNpc[3]["ActivetyMapId"] = 1002
	tWorldCup_Activities_MoveNpc[3]["ActivetyPosX"] = 321
	tWorldCup_Activities_MoveNpc[3]["ActivetyPosY"] = 436
	tWorldCup_Activities_MoveNpc[3]["AfterActivetyMapId"] = 5000
	tWorldCup_Activities_MoveNpc[3]["AfterActivetyPosX"] = 100
	tWorldCup_Activities_MoveNpc[3]["AfterActivetyPosY"] = 100
	-- 22950,'C罗'
	tWorldCup_Activities_MoveNpc[4]={}
	tWorldCup_Activities_MoveNpc[4]["ActivetyMapId"] = 1002
	tWorldCup_Activities_MoveNpc[4]["ActivetyPosX"] = 325
	tWorldCup_Activities_MoveNpc[4]["ActivetyPosY"] = 436
	tWorldCup_Activities_MoveNpc[4]["AfterActivetyMapId"] = 5000
	tWorldCup_Activities_MoveNpc[4]["AfterActivetyPosX"] = 100
	tWorldCup_Activities_MoveNpc[4]["AfterActivetyPosY"] = 100
	-- 22951,'伊涅斯塔'
	tWorldCup_Activities_MoveNpc[5]={}
	tWorldCup_Activities_MoveNpc[5]["ActivetyMapId"] = 1002
	tWorldCup_Activities_MoveNpc[5]["ActivetyPosX"] = 329
	tWorldCup_Activities_MoveNpc[5]["ActivetyPosY"] = 436
	tWorldCup_Activities_MoveNpc[5]["AfterActivetyMapId"] = 5000
	tWorldCup_Activities_MoveNpc[5]["AfterActivetyPosX"] = 100
	tWorldCup_Activities_MoveNpc[5]["AfterActivetyPosY"] = 100
	-- 22952,'阿扎尔'
	tWorldCup_Activities_MoveNpc[6]={}
	tWorldCup_Activities_MoveNpc[6]["ActivetyMapId"] = 1002
	tWorldCup_Activities_MoveNpc[6]["ActivetyPosX"] = 333
	tWorldCup_Activities_MoveNpc[6]["ActivetyPosY"] = 436
	tWorldCup_Activities_MoveNpc[6]["AfterActivetyMapId"] = 5000
	tWorldCup_Activities_MoveNpc[6]["AfterActivetyPosX"] = 100
	tWorldCup_Activities_MoveNpc[6]["AfterActivetyPosY"] = 100
	
-- 脚底光效
local tWorldCup_Activities_Trap = {}
	tWorldCup_Activities_Trap[1] = {}
	tWorldCup_Activities_Trap[1]["TrapType"] = 1987
	tWorldCup_Activities_Trap[1]["Look"] = 1894
	tWorldCup_Activities_Trap[2] = {}
	tWorldCup_Activities_Trap[2]["TrapType"] = 1988
	tWorldCup_Activities_Trap[2]["Look"] = 1894
	tWorldCup_Activities_Trap[3] = {}
	tWorldCup_Activities_Trap[3]["TrapType"] = 1989
	tWorldCup_Activities_Trap[3]["Look"] = 1894
	tWorldCup_Activities_Trap[4] = {}
	tWorldCup_Activities_Trap[4]["TrapType"] = 1990
	tWorldCup_Activities_Trap[4]["Look"] = 1894
	tWorldCup_Activities_Trap[5] = {}
	tWorldCup_Activities_Trap[5]["TrapType"] = 1991
	tWorldCup_Activities_Trap[5]["Look"] = 1894
	tWorldCup_Activities_Trap[6] = {}
	tWorldCup_Activities_Trap[6]["TrapType"] = 1992
	tWorldCup_Activities_Trap[6]["Look"] = 1894
	tWorldCup_Activities_Trap[7] = {}
	tWorldCup_Activities_Trap[7]["TrapType"] = 1993
	tWorldCup_Activities_Trap[7]["Look"] = 1894

-- 奖励表
local tWorldCup_Activities_Reward = {}
	-- 答题奖励
	tWorldCup_Activities_Reward["Answer"] = {}
	-- 参与奖 3308881,'助威棒'
	tWorldCup_Activities_Reward["Answer"][1] = {}
	tWorldCup_Activities_Reward["Answer"][1]["LogId"] = 12001076
	tWorldCup_Activities_Reward["Answer"][1]["LogStep"] = "1[3]"
	tWorldCup_Activities_Reward["Answer"][1]["RewardItem"] = {}
	tWorldCup_Activities_Reward["Answer"][1]["RewardItem"][1] = {}
	tWorldCup_Activities_Reward["Answer"][1]["RewardItem"][1]["Id"] = 3308881
	tWorldCup_Activities_Reward["Answer"][1]["RewardItem"][1]["Attr"] = "0 5 3"
	tWorldCup_Activities_Reward["Answer"][1]["RewardEffect"] = {}
	tWorldCup_Activities_Reward["Answer"][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 全答对 3308882,'助威大喇叭'
	tWorldCup_Activities_Reward["Answer"][2] = {}
	tWorldCup_Activities_Reward["Answer"][2]["LogId"] = 12001076
	tWorldCup_Activities_Reward["Answer"][2]["LogStep"] = "1[3]"
	tWorldCup_Activities_Reward["Answer"][2]["RewardItem"] = {}
	tWorldCup_Activities_Reward["Answer"][2]["RewardItem"][1] = {}
	tWorldCup_Activities_Reward["Answer"][2]["RewardItem"][1]["Id"] = 3308882
	tWorldCup_Activities_Reward["Answer"][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tWorldCup_Activities_Reward["Answer"][2]["RewardEffect"] = {}
	tWorldCup_Activities_Reward["Answer"][2]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 时装外套碎片
	tWorldCup_Activities_Reward[1] = {}
	tWorldCup_Activities_Reward[1]["LogId"] = 12001076
	tWorldCup_Activities_Reward[1]["DeleteItem"] = {}
	tWorldCup_Activities_Reward[1]["DeleteItem"][1] = {}
	tWorldCup_Activities_Reward[1]["DeleteItem"][1]["Id"] = 3308886
	tWorldCup_Activities_Reward[1]["DeleteItem"][1]["ItemNum"] = 1
	tWorldCup_Activities_Reward[1]["RewardStrengthValue"] = {}
	tWorldCup_Activities_Reward[1]["RewardStrengthValue"]["Value"] = 100
	tWorldCup_Activities_Reward[1]["RewardEffect"] = {}
	tWorldCup_Activities_Reward[1]["RewardEffect"]["Effect"] = "angelwing"
	-- 15个碎片合成
	tWorldCup_Activities_Reward[2] = {}
	tWorldCup_Activities_Reward[2]["LogId"] = 12001076
	tWorldCup_Activities_Reward[2]["RewardNoNeedTip"] = 1
	tWorldCup_Activities_Reward[2]["DeleteItem"] = {}
	tWorldCup_Activities_Reward[2]["DeleteItem"][1] = {}
	tWorldCup_Activities_Reward[2]["DeleteItem"][1]["Id"] = 0
	tWorldCup_Activities_Reward[2]["DeleteItem"][1]["ItemNum"] = 15
	tWorldCup_Activities_Reward[2]["RewardItem"] = {}
	tWorldCup_Activities_Reward[2]["RewardItem"][1] = {}
	tWorldCup_Activities_Reward[2]["RewardItem"][1]["Id"] = 0
	tWorldCup_Activities_Reward[2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tWorldCup_Activities_Reward[2]["RewardEffect"] = {}
	tWorldCup_Activities_Reward[2]["RewardEffect"]["Effect"] = "angelwing"
	tWorldCup_Activities_Reward[2]["NoSpace"] = tWorldCup_Activities_Text[3308886][1]["NoSpace"]
	-- 碎片2赌1个
	tWorldCup_Activities_Reward[3] = {}
	tWorldCup_Activities_Reward[3]["LogId"] = 12001076
	tWorldCup_Activities_Reward[3]["RewardNoNeedTip"] = 1
	tWorldCup_Activities_Reward[3]["DeleteItem"] = {}
	tWorldCup_Activities_Reward[3]["DeleteItem"][1] = {}
	tWorldCup_Activities_Reward[3]["DeleteItem"][1]["Id"] = 0
	tWorldCup_Activities_Reward[3]["RewardItem"] = {}
	tWorldCup_Activities_Reward[3]["RewardItem"][1] = {}
	tWorldCup_Activities_Reward[3]["RewardItem"][1]["Id"] = 0
	tWorldCup_Activities_Reward[3]["RewardItem"][1]["Attr"] = "0 2"
	tWorldCup_Activities_Reward[3]["RewardEffect"] = {}
	tWorldCup_Activities_Reward[3]["RewardEffect"]["Effect"] = "angelwing"
	tWorldCup_Activities_Reward[3]["NoSpace"] = tWorldCup_Activities_Text[3308886][2]["NoSpace"]
	-- 直接删除碎片
	tWorldCup_Activities_Reward[4] = {}
	tWorldCup_Activities_Reward[4]["Log"] = "0,0,%d,1,12001076,2[1],0,0"
	tWorldCup_Activities_Reward[4]["DeleteItem"] = {}
	tWorldCup_Activities_Reward[4]["DeleteItem"][1] = {}
	tWorldCup_Activities_Reward[4]["DeleteItem"][1]["Id"] = 0
	
	-- 3308893,'冠军外套碎片'
	tWorldCup_Activities_Reward[3308893] = {}
	tWorldCup_Activities_Reward[3308893]["LogId"] = 12001076
	tWorldCup_Activities_Reward[3308893]["DeleteItem"] = {}
	tWorldCup_Activities_Reward[3308893]["DeleteItem"][1] = {}
	tWorldCup_Activities_Reward[3308893]["DeleteItem"][1]["Id"] = 3308893
	tWorldCup_Activities_Reward[3308893]["DeleteItem"][1]["ItemNum"] = 15
	tWorldCup_Activities_Reward[3308893]["RewardItem"] = {}
	tWorldCup_Activities_Reward[3308893]["RewardItem"][1] = {}
	tWorldCup_Activities_Reward[3308893]["RewardItem"][1]["Id"] = 195295
	tWorldCup_Activities_Reward[3308893]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tWorldCup_Activities_Reward[3308893]["RewardEffect"] = {}
	tWorldCup_Activities_Reward[3308893]["RewardEffect"]["Effect"] = "angelwing"
	tWorldCup_Activities_Reward[3308893]["NoSpace"] = tWorldCup_Activities_Text[3308893]["NoSpace"]
	
	-- 世界杯纪念币换光效版外套--非赠
	tWorldCup_Activities_Reward[5] = {}
	tWorldCup_Activities_Reward[5]["LogId"] = 12001076
	tWorldCup_Activities_Reward[5]["DeleteItem"] = {}
	tWorldCup_Activities_Reward[5]["DeleteItem"][1] = {}
	tWorldCup_Activities_Reward[5]["DeleteItem"][1]["Id"] = 0
	tWorldCup_Activities_Reward[5]["DeleteItem"][1]["Monopoly"] = 0
	tWorldCup_Activities_Reward[5]["DeleteItem"][1]["SaveTime"] = 0
	tWorldCup_Activities_Reward[5]["DeleteItem"][2] = {}
	tWorldCup_Activities_Reward[5]["DeleteItem"][2]["Id"] = 3308892
	tWorldCup_Activities_Reward[5]["RewardItem"] = {}
	tWorldCup_Activities_Reward[5]["RewardItem"][1] = {}
	tWorldCup_Activities_Reward[5]["RewardItem"][1]["Id"] = 0
	tWorldCup_Activities_Reward[5]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tWorldCup_Activities_Reward[5]["RewardEffect"] = {}
	tWorldCup_Activities_Reward[5]["RewardEffect"]["Effect"] = "angelwing"
	-- 世界杯纪念币换光效版外套--赠
	tWorldCup_Activities_Reward[6] = {}
	tWorldCup_Activities_Reward[6]["LogId"] = 12001076
	tWorldCup_Activities_Reward[6]["DeleteItem"] = {}
	tWorldCup_Activities_Reward[6]["DeleteItem"][1] = {}
	tWorldCup_Activities_Reward[6]["DeleteItem"][1]["Id"] = 0
	tWorldCup_Activities_Reward[6]["DeleteItem"][1]["Monopoly"] = 2
	tWorldCup_Activities_Reward[6]["DeleteItem"][1]["SaveTime"] = 0
	tWorldCup_Activities_Reward[6]["DeleteItem"][2] = {}
	tWorldCup_Activities_Reward[6]["DeleteItem"][2]["Id"] = 3308892
	tWorldCup_Activities_Reward[6]["RewardItem"] = {}
	tWorldCup_Activities_Reward[6]["RewardItem"][1] = {}
	tWorldCup_Activities_Reward[6]["RewardItem"][1]["Id"] = 0
	tWorldCup_Activities_Reward[6]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tWorldCup_Activities_Reward[6]["RewardEffect"] = {}
	tWorldCup_Activities_Reward[6]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3308884 球衣碎片可选包
	tWorldCup_Activities_Reward[3308884] = {}
	tWorldCup_Activities_Reward[3308884]["LogId"] = 12001076
	tWorldCup_Activities_Reward[3308884]["DeleteItem"] = {}
	tWorldCup_Activities_Reward[3308884]["DeleteItem"][1] = {}
	tWorldCup_Activities_Reward[3308884]["DeleteItem"][1]["Id"] = 3308884
	tWorldCup_Activities_Reward[3308884]["RewardItem"] = {}
	tWorldCup_Activities_Reward[3308884]["RewardItem"][1] = {}
	tWorldCup_Activities_Reward[3308884]["RewardItem"][1]["Id"] = 0
	tWorldCup_Activities_Reward[3308884]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Reward[3308884]["RewardEffect"] = {}
	tWorldCup_Activities_Reward[3308884]["RewardEffect"]["Effect"] = "angelwing"
	tWorldCup_Activities_Reward[3308884]["NoSpace"] = tWorldCup_Activities_Text[3308884]["NoSpace"]
	
	-- 3308885,'球星发型可选包'
	tWorldCup_Activities_Reward[3308885] = {}
	tWorldCup_Activities_Reward[3308885]["LogId"] = 12001076
	tWorldCup_Activities_Reward[3308885]["DeleteItem"] = {}
	tWorldCup_Activities_Reward[3308885]["DeleteItem"][1] = {}
	tWorldCup_Activities_Reward[3308885]["DeleteItem"][1]["Id"] = 3308885
	tWorldCup_Activities_Reward[3308885]["RewardItem"] = {}
	tWorldCup_Activities_Reward[3308885]["RewardItem"][1] = {}
	tWorldCup_Activities_Reward[3308885]["RewardItem"][1]["Id"] = 0
	tWorldCup_Activities_Reward[3308885]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Reward[3308885]["RewardEffect"] = {}
	tWorldCup_Activities_Reward[3308885]["RewardEffect"]["Effect"] = "angelwing"
	tWorldCup_Activities_Reward[3308885]["NoSpace"] = tWorldCup_Activities_Text[3308885]["NoSpace"]
	
	-- 答题排行奖励
	tWorldCup_Activities_Reward["Rank"] = {}
	-- 第一名 3308881,'助威棒'	3
	tWorldCup_Activities_Reward["Rank"][1] = {}
	tWorldCup_Activities_Reward["Rank"][1]["LogId"] = 12001076
	tWorldCup_Activities_Reward["Rank"][1]["LogStep"] = "2[3]"
	tWorldCup_Activities_Reward["Rank"][1]["RewardItem"] = {}
	tWorldCup_Activities_Reward["Rank"][1]["RewardItem"][1] = {}
	tWorldCup_Activities_Reward["Rank"][1]["RewardItem"][1]["Id"] = 3309092
	tWorldCup_Activities_Reward["Rank"][1]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Reward["Rank"][1]["RewardEffect"] = {}
	tWorldCup_Activities_Reward["Rank"][1]["RewardEffect"]["Effect"] = "angelwing"
	--2-3 3308881,'助威棒'	2
	tWorldCup_Activities_Reward["Rank"][2] = {}
	tWorldCup_Activities_Reward["Rank"][2]["LogId"] = 12001076
	tWorldCup_Activities_Reward["Rank"][2]["LogStep"] = "2[3]"
	tWorldCup_Activities_Reward["Rank"][2]["RewardItem"] = {}
	tWorldCup_Activities_Reward["Rank"][2]["RewardItem"][1] = {}
	tWorldCup_Activities_Reward["Rank"][2]["RewardItem"][1]["Id"] = 3309093
	tWorldCup_Activities_Reward["Rank"][2]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Reward["Rank"][2]["RewardEffect"] = {}
	tWorldCup_Activities_Reward["Rank"][2]["RewardEffect"]["Effect"] = "angelwing"
	--4-10 3308881,'助威棒'	1
	tWorldCup_Activities_Reward["Rank"][3] = {}
	tWorldCup_Activities_Reward["Rank"][3]["LogId"] = 12001076
	tWorldCup_Activities_Reward["Rank"][3]["LogStep"] = "2[3]"
	tWorldCup_Activities_Reward["Rank"][3]["RewardItem"] = {}
	tWorldCup_Activities_Reward["Rank"][3]["RewardItem"][1] = {}
	tWorldCup_Activities_Reward["Rank"][3]["RewardItem"][1]["Id"] = 3308881
	tWorldCup_Activities_Reward["Rank"][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tWorldCup_Activities_Reward["Rank"][3]["RewardEffect"] = {}
	tWorldCup_Activities_Reward["Rank"][3]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3309092,'答题冠军礼包'
	tWorldCup_Activities_Reward[3309092] = {}
	tWorldCup_Activities_Reward[3309092]["LogId"] = 12001076
	tWorldCup_Activities_Reward[3309092]["DeleteItem"] = {}
	tWorldCup_Activities_Reward[3309092]["DeleteItem"][1] = {}
	tWorldCup_Activities_Reward[3309092]["DeleteItem"][1]["Id"] = 3309092
	tWorldCup_Activities_Reward[3309092]["RewardItem"] = {}
	tWorldCup_Activities_Reward[3309092]["RewardItem"][1] = {}
	tWorldCup_Activities_Reward[3309092]["RewardItem"][1]["Id"] = 3308881
	tWorldCup_Activities_Reward[3309092]["RewardItem"][1]["Attr"] = "0 3 3"
	tWorldCup_Activities_Reward[3309092]["RewardEffect"] = {}
	tWorldCup_Activities_Reward[3309092]["RewardEffect"]["Effect"] = "angelwing"
	-- 3309093,'答题第2至3名礼包'
	tWorldCup_Activities_Reward[3309093] = {}
	tWorldCup_Activities_Reward[3309093]["LogId"] = 12001076
	tWorldCup_Activities_Reward[3309093]["DeleteItem"] = {}
	tWorldCup_Activities_Reward[3309093]["DeleteItem"][1] = {}
	tWorldCup_Activities_Reward[3309093]["DeleteItem"][1]["Id"] = 3309093
	tWorldCup_Activities_Reward[3309093]["RewardItem"] = {}
	tWorldCup_Activities_Reward[3309093]["RewardItem"][1] = {}
	tWorldCup_Activities_Reward[3309093]["RewardItem"][1]["Id"] = 3308881
	tWorldCup_Activities_Reward[3309093]["RewardItem"][1]["Attr"] = "0 2 3"
	tWorldCup_Activities_Reward[3309093]["RewardEffect"] = {}
	tWorldCup_Activities_Reward[3309093]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3309603,'1%特殊经验灵露'
	tWorldCup_Activities_Reward[3309603] = {}
	tWorldCup_Activities_Reward[3309603]["DeleteItem"] = {}
	tWorldCup_Activities_Reward[3309603]["DeleteItem"][1] = {}
	tWorldCup_Activities_Reward[3309603]["DeleteItem"][1]["Id"] = 3309603
	tWorldCup_Activities_Reward[3309603]["RewardExpPercentSpecial"] = {}
	tWorldCup_Activities_Reward[3309603]["RewardExpPercentSpecial"]["Value"] = 1
	tWorldCup_Activities_Reward[3309603]["RewardExpPercentSpecial"]["FullIndex"] = "RewardStrengthValue"
	tWorldCup_Activities_Reward[3309603]["RewardExpPercentSpecial"]["FullValue"] = 1000
	tWorldCup_Activities_Reward[3309603]["LogId"] = 12001076
	
-- 天石商店物品
local tWorldCup_Activities_ShopItem = {}
	-- 3308904,'埃及守护者球衣包'
	tWorldCup_Activities_ShopItem[3308904] = {}
	tWorldCup_Activities_ShopItem[3308904]["LogId"] = 12001076
	tWorldCup_Activities_ShopItem[3308904]["DeleteItem"] = {}
	tWorldCup_Activities_ShopItem[3308904]["DeleteItem"][1] = {}
	tWorldCup_Activities_ShopItem[3308904]["DeleteItem"][1]["Id"] = 3308904
	tWorldCup_Activities_ShopItem[3308904]["RewardItem"] = {}
	tWorldCup_Activities_ShopItem[3308904]["RewardItem"][1] = {}
	tWorldCup_Activities_ShopItem[3308904]["RewardItem"][1]["Id"] = 195235
	tWorldCup_Activities_ShopItem[3308904]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tWorldCup_Activities_ShopItem[3308904]["RewardEffect"] = {}
	tWorldCup_Activities_ShopItem[3308904]["RewardEffect"]["Effect"] = "angelwing"
	-- 3308905,'比利时魔术师球衣包'
	tWorldCup_Activities_ShopItem[3308905] = {}
	tWorldCup_Activities_ShopItem[3308905]["LogId"] = 12001076
	tWorldCup_Activities_ShopItem[3308905]["DeleteItem"] = {}
	tWorldCup_Activities_ShopItem[3308905]["DeleteItem"][1] = {}
	tWorldCup_Activities_ShopItem[3308905]["DeleteItem"][1]["Id"] = 3308905
	tWorldCup_Activities_ShopItem[3308905]["RewardItem"] = {}
	tWorldCup_Activities_ShopItem[3308905]["RewardItem"][1] = {}
	tWorldCup_Activities_ShopItem[3308905]["RewardItem"][1]["Id"] = 195245
	tWorldCup_Activities_ShopItem[3308905]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tWorldCup_Activities_ShopItem[3308905]["RewardEffect"] = {}
	tWorldCup_Activities_ShopItem[3308905]["RewardEffect"]["Effect"] = "angelwing"
	-- 3308906,'巴西过人王球衣包'
	tWorldCup_Activities_ShopItem[3308906] = {}
	tWorldCup_Activities_ShopItem[3308906]["LogId"] = 12001076
	tWorldCup_Activities_ShopItem[3308906]["DeleteItem"] = {}
	tWorldCup_Activities_ShopItem[3308906]["DeleteItem"][1] = {}
	tWorldCup_Activities_ShopItem[3308906]["DeleteItem"][1]["Id"] = 3308906
	tWorldCup_Activities_ShopItem[3308906]["RewardItem"] = {}
	tWorldCup_Activities_ShopItem[3308906]["RewardItem"][1] = {}
	tWorldCup_Activities_ShopItem[3308906]["RewardItem"][1]["Id"] = 195255
	tWorldCup_Activities_ShopItem[3308906]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tWorldCup_Activities_ShopItem[3308906]["RewardEffect"] = {}
	tWorldCup_Activities_ShopItem[3308906]["RewardEffect"]["Effect"] = "angelwing"
	-- 3308907,'阿根廷全能王球衣包'
	tWorldCup_Activities_ShopItem[3308907] = {}
	tWorldCup_Activities_ShopItem[3308907]["LogId"] = 12001076
	tWorldCup_Activities_ShopItem[3308907]["DeleteItem"] = {}
	tWorldCup_Activities_ShopItem[3308907]["DeleteItem"][1] = {}
	tWorldCup_Activities_ShopItem[3308907]["DeleteItem"][1]["Id"] = 3308907
	tWorldCup_Activities_ShopItem[3308907]["RewardItem"] = {}
	tWorldCup_Activities_ShopItem[3308907]["RewardItem"][1] = {}
	tWorldCup_Activities_ShopItem[3308907]["RewardItem"][1]["Id"] = 195265
	tWorldCup_Activities_ShopItem[3308907]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tWorldCup_Activities_ShopItem[3308907]["RewardEffect"] = {}
	tWorldCup_Activities_ShopItem[3308907]["RewardEffect"]["Effect"] = "angelwing"
	-- 3308908,'葡萄牙球王球衣包'
	tWorldCup_Activities_ShopItem[3308908] = {}
	tWorldCup_Activities_ShopItem[3308908]["LogId"] = 12001076
	tWorldCup_Activities_ShopItem[3308908]["DeleteItem"] = {}
	tWorldCup_Activities_ShopItem[3308908]["DeleteItem"][1] = {}
	tWorldCup_Activities_ShopItem[3308908]["DeleteItem"][1]["Id"] = 3308908
	tWorldCup_Activities_ShopItem[3308908]["RewardItem"] = {}
	tWorldCup_Activities_ShopItem[3308908]["RewardItem"][1] = {}
	tWorldCup_Activities_ShopItem[3308908]["RewardItem"][1]["Id"] = 195275
	tWorldCup_Activities_ShopItem[3308908]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tWorldCup_Activities_ShopItem[3308908]["RewardEffect"] = {}
	tWorldCup_Activities_ShopItem[3308908]["RewardEffect"]["Effect"] = "angelwing"
	-- 3308909,'西班牙雄鹰球衣包'
	tWorldCup_Activities_ShopItem[3308909] = {}
	tWorldCup_Activities_ShopItem[3308909]["LogId"] = 12001076
	tWorldCup_Activities_ShopItem[3308909]["DeleteItem"] = {}
	tWorldCup_Activities_ShopItem[3308909]["DeleteItem"][1] = {}
	tWorldCup_Activities_ShopItem[3308909]["DeleteItem"][1]["Id"] = 3308909
	tWorldCup_Activities_ShopItem[3308909]["RewardItem"] = {}
	tWorldCup_Activities_ShopItem[3308909]["RewardItem"][1] = {}
	tWorldCup_Activities_ShopItem[3308909]["RewardItem"][1]["Id"] = 195285
	tWorldCup_Activities_ShopItem[3308909]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tWorldCup_Activities_ShopItem[3308909]["RewardEffect"] = {}
	tWorldCup_Activities_ShopItem[3308909]["RewardEffect"]["Effect"] = "angelwing"
	-- 3308910,'埃及守护者【高光版】球衣包'
	tWorldCup_Activities_ShopItem[3308910] = {}
	tWorldCup_Activities_ShopItem[3308910]["LogId"] = 12001076
	tWorldCup_Activities_ShopItem[3308910]["DeleteItem"] = {}
	tWorldCup_Activities_ShopItem[3308910]["DeleteItem"][1] = {}
	tWorldCup_Activities_ShopItem[3308910]["DeleteItem"][1]["Id"] = 3308910
	tWorldCup_Activities_ShopItem[3308910]["RewardItem"] = {}
	tWorldCup_Activities_ShopItem[3308910]["RewardItem"][1] = {}
	tWorldCup_Activities_ShopItem[3308910]["RewardItem"][1]["Id"] = 195295
	tWorldCup_Activities_ShopItem[3308910]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tWorldCup_Activities_ShopItem[3308910]["RewardEffect"] = {}
	tWorldCup_Activities_ShopItem[3308910]["RewardEffect"]["Effect"] = "angelwing"
	-- 3308911,'比利时魔术师【高光版】球衣包'
	tWorldCup_Activities_ShopItem[3308911] = {}
	tWorldCup_Activities_ShopItem[3308911]["LogId"] = 12001076
	tWorldCup_Activities_ShopItem[3308911]["DeleteItem"] = {}
	tWorldCup_Activities_ShopItem[3308911]["DeleteItem"][1] = {}
	tWorldCup_Activities_ShopItem[3308911]["DeleteItem"][1]["Id"] = 3308911
	tWorldCup_Activities_ShopItem[3308911]["RewardItem"] = {}
	tWorldCup_Activities_ShopItem[3308911]["RewardItem"][1] = {}
	tWorldCup_Activities_ShopItem[3308911]["RewardItem"][1]["Id"] = 195305
	tWorldCup_Activities_ShopItem[3308911]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tWorldCup_Activities_ShopItem[3308911]["RewardEffect"] = {}
	tWorldCup_Activities_ShopItem[3308911]["RewardEffect"]["Effect"] = "angelwing"
	-- 3308912,'巴西过人王【高光版】球衣包'
	tWorldCup_Activities_ShopItem[3308912] = {}
	tWorldCup_Activities_ShopItem[3308912]["LogId"] = 12001076
	tWorldCup_Activities_ShopItem[3308912]["DeleteItem"] = {}
	tWorldCup_Activities_ShopItem[3308912]["DeleteItem"][1] = {}
	tWorldCup_Activities_ShopItem[3308912]["DeleteItem"][1]["Id"] = 3308912
	tWorldCup_Activities_ShopItem[3308912]["RewardItem"] = {}
	tWorldCup_Activities_ShopItem[3308912]["RewardItem"][1] = {}
	tWorldCup_Activities_ShopItem[3308912]["RewardItem"][1]["Id"] = 195315
	tWorldCup_Activities_ShopItem[3308912]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tWorldCup_Activities_ShopItem[3308912]["RewardEffect"] = {}
	tWorldCup_Activities_ShopItem[3308912]["RewardEffect"]["Effect"] = "angelwing"
	-- 3308913,'阿根廷全能王【高光版】球衣包'
	tWorldCup_Activities_ShopItem[3308913] = {}
	tWorldCup_Activities_ShopItem[3308913]["LogId"] = 12001076
	tWorldCup_Activities_ShopItem[3308913]["DeleteItem"] = {}
	tWorldCup_Activities_ShopItem[3308913]["DeleteItem"][1] = {}
	tWorldCup_Activities_ShopItem[3308913]["DeleteItem"][1]["Id"] = 3308913
	tWorldCup_Activities_ShopItem[3308913]["RewardItem"] = {}
	tWorldCup_Activities_ShopItem[3308913]["RewardItem"][1] = {}
	tWorldCup_Activities_ShopItem[3308913]["RewardItem"][1]["Id"] = 195325
	tWorldCup_Activities_ShopItem[3308913]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tWorldCup_Activities_ShopItem[3308913]["RewardEffect"] = {}
	tWorldCup_Activities_ShopItem[3308913]["RewardEffect"]["Effect"] = "angelwing"
	-- 3308914,'葡萄牙球王【高光版】球衣包'
	tWorldCup_Activities_ShopItem[3308914] = {}
	tWorldCup_Activities_ShopItem[3308914]["LogId"] = 12001076
	tWorldCup_Activities_ShopItem[3308914]["DeleteItem"] = {}
	tWorldCup_Activities_ShopItem[3308914]["DeleteItem"][1] = {}
	tWorldCup_Activities_ShopItem[3308914]["DeleteItem"][1]["Id"] = 3308914
	tWorldCup_Activities_ShopItem[3308914]["RewardItem"] = {}
	tWorldCup_Activities_ShopItem[3308914]["RewardItem"][1] = {}
	tWorldCup_Activities_ShopItem[3308914]["RewardItem"][1]["Id"] = 195335
	tWorldCup_Activities_ShopItem[3308914]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tWorldCup_Activities_ShopItem[3308914]["RewardEffect"] = {}
	tWorldCup_Activities_ShopItem[3308914]["RewardEffect"]["Effect"] = "angelwing"
	-- 3308915,'西班牙雄鹰【高光版】球衣包'
	tWorldCup_Activities_ShopItem[3308915] = {}
	tWorldCup_Activities_ShopItem[3308915]["LogId"] = 12001076
	tWorldCup_Activities_ShopItem[3308915]["DeleteItem"] = {}
	tWorldCup_Activities_ShopItem[3308915]["DeleteItem"][1] = {}
	tWorldCup_Activities_ShopItem[3308915]["DeleteItem"][1]["Id"] = 3308915
	tWorldCup_Activities_ShopItem[3308915]["RewardItem"] = {}
	tWorldCup_Activities_ShopItem[3308915]["RewardItem"][1] = {}
	tWorldCup_Activities_ShopItem[3308915]["RewardItem"][1]["Id"] = 195345
	tWorldCup_Activities_ShopItem[3308915]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tWorldCup_Activities_ShopItem[3308915]["RewardEffect"] = {}
	tWorldCup_Activities_ShopItem[3308915]["RewardEffect"]["Effect"] = "angelwing"
	
-- 排行榜总榜奖励
local tWorldCup_Activities_RankingReward = {}
	-- 第1名	专属球星发型+1W气+10%特殊经验	
	tWorldCup_Activities_RankingReward[1] = {}
	tWorldCup_Activities_RankingReward[1]["LogId"] = 12001076
	tWorldCup_Activities_RankingReward[1]["RewardItem"] = {}
	tWorldCup_Activities_RankingReward[1]["RewardItem"][1] = {}
	tWorldCup_Activities_RankingReward[1]["RewardItem"][1]["Id"] = 0
	tWorldCup_Activities_RankingReward[1]["RewardItem"][1]["Attr"] = "0 1"
	-- tWorldCup_Activities_RankingReward[1]["RewardItem"][2] = {}
	-- tWorldCup_Activities_RankingReward[1]["RewardItem"][2]["Id"] = 3309603
	-- tWorldCup_Activities_RankingReward[1]["RewardItem"][2]["Attr"] = "0 10"
	tWorldCup_Activities_RankingReward[1]["RewardStrengthValue"] = {}
	tWorldCup_Activities_RankingReward[1]["RewardStrengthValue"]["Value"] = 10000
	tWorldCup_Activities_RankingReward[1]["RewardEffect"] = {}
	tWorldCup_Activities_RankingReward[1]["RewardEffect"]["Effect"] = "angelwing"
	-- 第2名	专属球星发型+8000气+8%特殊经验	
	tWorldCup_Activities_RankingReward[2] = {}
	tWorldCup_Activities_RankingReward[2]["LogId"] = 12001076
	tWorldCup_Activities_RankingReward[2]["RewardItem"] = {}
	tWorldCup_Activities_RankingReward[2]["RewardItem"][1] = {}
	tWorldCup_Activities_RankingReward[2]["RewardItem"][1]["Id"] = 0
	tWorldCup_Activities_RankingReward[2]["RewardItem"][1]["Attr"] = "0 1"
	-- tWorldCup_Activities_RankingReward[2]["RewardItem"][2] = {}
	-- tWorldCup_Activities_RankingReward[2]["RewardItem"][2]["Id"] = 3309603
	-- tWorldCup_Activities_RankingReward[2]["RewardItem"][2]["Attr"] = "0 8"
	tWorldCup_Activities_RankingReward[2]["RewardStrengthValue"] = {}
	tWorldCup_Activities_RankingReward[2]["RewardStrengthValue"]["Value"] = 8000
	tWorldCup_Activities_RankingReward[2]["RewardEffect"] = {}
	tWorldCup_Activities_RankingReward[2]["RewardEffect"]["Effect"] = "angelwing"
	-- 第3名	专属球星发型+6000气+6%特殊经验	
	tWorldCup_Activities_RankingReward[3] = {}
	tWorldCup_Activities_RankingReward[3]["LogId"] = 12001076
	tWorldCup_Activities_RankingReward[3]["RewardItem"] = {}
	tWorldCup_Activities_RankingReward[3]["RewardItem"][1] = {}
	tWorldCup_Activities_RankingReward[3]["RewardItem"][1]["Id"] = 0
	tWorldCup_Activities_RankingReward[3]["RewardItem"][1]["Attr"] = "0 1"
	-- tWorldCup_Activities_RankingReward[3]["RewardItem"][2] = {}
	-- tWorldCup_Activities_RankingReward[3]["RewardItem"][2]["Id"] = 3309603
	-- tWorldCup_Activities_RankingReward[3]["RewardItem"][2]["Attr"] = "0 6"
	tWorldCup_Activities_RankingReward[3]["RewardStrengthValue"] = {}
	tWorldCup_Activities_RankingReward[3]["RewardStrengthValue"]["Value"] = 6000
	tWorldCup_Activities_RankingReward[3]["RewardEffect"] = {}
	tWorldCup_Activities_RankingReward[3]["RewardEffect"]["Effect"] = "angelwing"
	-- 第4名	5000气+5%特殊经验	
	tWorldCup_Activities_RankingReward[4] = {}
	tWorldCup_Activities_RankingReward[4]["LogId"] = 12001076
	-- tWorldCup_Activities_RankingReward[4]["RewardItem"] = {}
	-- tWorldCup_Activities_RankingReward[4]["RewardItem"][1] = {}
	-- tWorldCup_Activities_RankingReward[4]["RewardItem"][1]["Id"] = 3309603
	-- tWorldCup_Activities_RankingReward[4]["RewardItem"][1]["Attr"] = "0 5"
	tWorldCup_Activities_RankingReward[4]["RewardStrengthValue"] = {}
	tWorldCup_Activities_RankingReward[4]["RewardStrengthValue"]["Value"] = 5000
	tWorldCup_Activities_RankingReward[4]["RewardEffect"] = {}
	tWorldCup_Activities_RankingReward[4]["RewardEffect"]["Effect"] = "angelwing"
	-- 第5名	5000气+5%特殊经验	
	tWorldCup_Activities_RankingReward[5] = {}
	tWorldCup_Activities_RankingReward[5]["LogId"] = 12001076
	-- tWorldCup_Activities_RankingReward[5]["RewardItem"] = {}
	-- tWorldCup_Activities_RankingReward[5]["RewardItem"][1] = {}
	-- tWorldCup_Activities_RankingReward[5]["RewardItem"][1]["Id"] = 3309603
	-- tWorldCup_Activities_RankingReward[5]["RewardItem"][1]["Attr"] = "0 5"
	tWorldCup_Activities_RankingReward[5]["RewardStrengthValue"] = {}
	tWorldCup_Activities_RankingReward[5]["RewardStrengthValue"]["Value"] = 5000
	tWorldCup_Activities_RankingReward[5]["RewardEffect"] = {}
	tWorldCup_Activities_RankingReward[5]["RewardEffect"]["Effect"] = "angelwing"
	-- 第6名	5000气+5%特殊经验	
	tWorldCup_Activities_RankingReward[6] = {}
	tWorldCup_Activities_RankingReward[6]["LogId"] = 12001076
	-- tWorldCup_Activities_RankingReward[6]["RewardItem"] = {}
	-- tWorldCup_Activities_RankingReward[6]["RewardItem"][1] = {}
	-- tWorldCup_Activities_RankingReward[6]["RewardItem"][1]["Id"] = 3309603
	-- tWorldCup_Activities_RankingReward[6]["RewardItem"][1]["Attr"] = "0 5"
	tWorldCup_Activities_RankingReward[6]["RewardStrengthValue"] = {}
	tWorldCup_Activities_RankingReward[6]["RewardStrengthValue"]["Value"] = 5000
	tWorldCup_Activities_RankingReward[6]["RewardEffect"] = {}
	tWorldCup_Activities_RankingReward[6]["RewardEffect"]["Effect"] = "angelwing"
	-- 第7名	3000气+3%特殊经验	
	tWorldCup_Activities_RankingReward[7] = {}
	tWorldCup_Activities_RankingReward[7]["LogId"] = 12001076
	-- tWorldCup_Activities_RankingReward[7]["RewardItem"] = {}
	-- tWorldCup_Activities_RankingReward[7]["RewardItem"][1] = {}
	-- tWorldCup_Activities_RankingReward[7]["RewardItem"][1]["Id"] = 3309603
	-- tWorldCup_Activities_RankingReward[7]["RewardItem"][1]["Attr"] = "0 3"
	tWorldCup_Activities_RankingReward[7]["RewardStrengthValue"] = {}
	tWorldCup_Activities_RankingReward[7]["RewardStrengthValue"]["Value"] = 3000
	tWorldCup_Activities_RankingReward[7]["RewardEffect"] = {}
	tWorldCup_Activities_RankingReward[7]["RewardEffect"]["Effect"] = "angelwing"
	-- 第8名	3000气+3%特殊经验	
	tWorldCup_Activities_RankingReward[8] = {}
	tWorldCup_Activities_RankingReward[8]["LogId"] = 12001076
	-- tWorldCup_Activities_RankingReward[8]["RewardItem"] = {}
	-- tWorldCup_Activities_RankingReward[8]["RewardItem"][1] = {}
	-- tWorldCup_Activities_RankingReward[8]["RewardItem"][1]["Id"] = 3309603
	-- tWorldCup_Activities_RankingReward[8]["RewardItem"][1]["Attr"] = "0 3"
	tWorldCup_Activities_RankingReward[8]["RewardStrengthValue"] = {}
	tWorldCup_Activities_RankingReward[8]["RewardStrengthValue"]["Value"] = 3000
	tWorldCup_Activities_RankingReward[8]["RewardEffect"] = {}
	tWorldCup_Activities_RankingReward[8]["RewardEffect"]["Effect"] = "angelwing"
	-- 第9名	3000气+3%特殊经验	
	tWorldCup_Activities_RankingReward[9] = {}
	tWorldCup_Activities_RankingReward[9]["LogId"] = 12001076
	-- tWorldCup_Activities_RankingReward[9]["RewardItem"] = {}
	-- tWorldCup_Activities_RankingReward[9]["RewardItem"][1] = {}
	-- tWorldCup_Activities_RankingReward[9]["RewardItem"][1]["Id"] = 3309603
	-- tWorldCup_Activities_RankingReward[9]["RewardItem"][1]["Attr"] = "0 3"
	tWorldCup_Activities_RankingReward[9]["RewardStrengthValue"] = {}
	tWorldCup_Activities_RankingReward[9]["RewardStrengthValue"]["Value"] = 3000
	tWorldCup_Activities_RankingReward[9]["RewardEffect"] = {}
	tWorldCup_Activities_RankingReward[9]["RewardEffect"]["Effect"] = "angelwing"
	-- 第10名	3000气+3%特殊经验	
	tWorldCup_Activities_RankingReward[10] = {}
	tWorldCup_Activities_RankingReward[10]["LogId"] = 12001076
	-- tWorldCup_Activities_RankingReward[10]["RewardItem"] = {}
	-- tWorldCup_Activities_RankingReward[10]["RewardItem"][1] = {}
	-- tWorldCup_Activities_RankingReward[10]["RewardItem"][1]["Id"] = 3309603
	-- tWorldCup_Activities_RankingReward[10]["RewardItem"][1]["Attr"] = "0 3"
	tWorldCup_Activities_RankingReward[10]["RewardStrengthValue"] = {}
	tWorldCup_Activities_RankingReward[10]["RewardStrengthValue"]["Value"] = 3000
	tWorldCup_Activities_RankingReward[10]["RewardEffect"] = {}
	tWorldCup_Activities_RankingReward[10]["RewardEffect"]["Effect"] = "angelwing"

	-- 球星对应发型
	tWorldCup_Activities_RankingReward["NpcItem"] = {}
	tWorldCup_Activities_RankingReward["NpcItem"][22947] = 3308899
	tWorldCup_Activities_RankingReward["NpcItem"][22948] = 3308900
	tWorldCup_Activities_RankingReward["NpcItem"][22949] = 3308898
	tWorldCup_Activities_RankingReward["NpcItem"][22950] = 3308894
	tWorldCup_Activities_RankingReward["NpcItem"][22951] = 3308885
	tWorldCup_Activities_RankingReward["NpcItem"][22952] = 3308885
	
local tWorldCup_Activities_Random = {}
	-- 显著功勋礼包-- 随机获得应援道具
	tWorldCup_Activities_Random[1] = {}
	tWorldCup_Activities_Random[1][1] = {}
	tWorldCup_Activities_Random[1][1]["ItemChanceSum"] = 10000
	-- 3308881	新物品	1			30.00%
	tWorldCup_Activities_Random[1][1][1] = {}
	tWorldCup_Activities_Random[1][1][1]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[1][1][1]["ItemChance"] = 3000
	tWorldCup_Activities_Random[1][1][1]["RewardItem"] = {}
	tWorldCup_Activities_Random[1][1][1]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[1][1][1]["RewardItem"][1]["Id"] = 3308881
	tWorldCup_Activities_Random[1][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tWorldCup_Activities_Random[1][1][1]["Log"] = "0,0,3007108,1,12001076,1[2],3308881,1"
	tWorldCup_Activities_Random[1][1][1]["RewardEffect"] = {}
	tWorldCup_Activities_Random[1][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 3308881	新物品	2			50.00%
	tWorldCup_Activities_Random[1][1][2] = {}
	tWorldCup_Activities_Random[1][1][2]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[1][1][2]["ItemChance"] = 5000
	tWorldCup_Activities_Random[1][1][2]["RewardItem"] = {}
	tWorldCup_Activities_Random[1][1][2]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[1][1][2]["RewardItem"][1]["Id"] = 3308881
	tWorldCup_Activities_Random[1][1][2]["RewardItem"][1]["Attr"] = "0 2 3"
	tWorldCup_Activities_Random[1][1][2]["Log"] = "0,0,3007108,1,12001076,1[2],3308881,2"
	tWorldCup_Activities_Random[1][1][2]["RewardEffect"] = {}
	tWorldCup_Activities_Random[1][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 3308881	新物品	3			10.00%
	tWorldCup_Activities_Random[1][1][3] = {}
	tWorldCup_Activities_Random[1][1][3]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[1][1][3]["ItemChance"] = 1000
	tWorldCup_Activities_Random[1][1][3]["RewardItem"] = {}
	tWorldCup_Activities_Random[1][1][3]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[1][1][3]["RewardItem"][1]["Id"] = 3308881
	tWorldCup_Activities_Random[1][1][3]["RewardItem"][1]["Attr"] = "0 3 3"
	tWorldCup_Activities_Random[1][1][3]["Log"] = "0,0,3007108,1,12001076,1[2],3308881,3"
	tWorldCup_Activities_Random[1][1][3]["RewardEffect"] = {}
	tWorldCup_Activities_Random[1][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 3308882	新物品	1			10.00%
	tWorldCup_Activities_Random[1][1][4] = {}
	tWorldCup_Activities_Random[1][1][4]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[1][1][4]["ItemChance"] = 1000
	tWorldCup_Activities_Random[1][1][4]["RewardItem"] = {}
	tWorldCup_Activities_Random[1][1][4]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[1][1][4]["RewardItem"][1]["Id"] = 3308882
	tWorldCup_Activities_Random[1][1][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tWorldCup_Activities_Random[1][1][4]["Log"] = "0,0,3007108,1,12001076,1[2],3308882,1"
	tWorldCup_Activities_Random[1][1][4]["RewardEffect"] = {}
	tWorldCup_Activities_Random[1][1][4]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3308883,'幸运外套礼包'
	tWorldCup_Activities_Random[3308883] = {}
	tWorldCup_Activities_Random[3308883][1] = {}
	tWorldCup_Activities_Random[3308883][1]["ItemChanceSum"] = 6000
	-- 195235,'埃及守护者'
	tWorldCup_Activities_Random[3308883][1][1] = {}
	tWorldCup_Activities_Random[3308883][1][1]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308883][1][1]["ItemChance"] = 1000
	tWorldCup_Activities_Random[3308883][1][1]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308883][1][1]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308883][1][1]["RewardItem"][1]["Id"] = 195235
	tWorldCup_Activities_Random[3308883][1][1]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tWorldCup_Activities_Random[3308883][1][1]["Log"] = "0,0,3308883,1,12001076,2,195235,1"
	tWorldCup_Activities_Random[3308883][1][1]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308883][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 195245,'比利时魔术师'
	tWorldCup_Activities_Random[3308883][1][2] = {}
	tWorldCup_Activities_Random[3308883][1][2]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308883][1][2]["ItemChance"] = 1000
	tWorldCup_Activities_Random[3308883][1][2]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308883][1][2]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308883][1][2]["RewardItem"][1]["Id"] = 195245
	tWorldCup_Activities_Random[3308883][1][2]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tWorldCup_Activities_Random[3308883][1][2]["Log"] = "0,0,3308883,1,12001076,2,195245,1"
	tWorldCup_Activities_Random[3308883][1][2]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308883][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 195255,'巴西过人王'
	tWorldCup_Activities_Random[3308883][1][3] = {}
	tWorldCup_Activities_Random[3308883][1][3]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308883][1][3]["ItemChance"] = 1000
	tWorldCup_Activities_Random[3308883][1][3]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308883][1][3]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308883][1][3]["RewardItem"][1]["Id"] = 195255
	tWorldCup_Activities_Random[3308883][1][3]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tWorldCup_Activities_Random[3308883][1][3]["Log"] = "0,0,3308883,1,12001076,2,195255,1"
	tWorldCup_Activities_Random[3308883][1][3]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308883][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 195265,'阿根廷全能王'
	tWorldCup_Activities_Random[3308883][1][4] = {}
	tWorldCup_Activities_Random[3308883][1][4]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308883][1][4]["ItemChance"] = 1000
	tWorldCup_Activities_Random[3308883][1][4]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308883][1][4]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308883][1][4]["RewardItem"][1]["Id"] = 195265
	tWorldCup_Activities_Random[3308883][1][4]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tWorldCup_Activities_Random[3308883][1][4]["Log"] = "0,0,3308883,1,12001076,2,195265,1"
	tWorldCup_Activities_Random[3308883][1][4]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308883][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 195275,'葡萄牙球王'
	tWorldCup_Activities_Random[3308883][1][5] = {}
	tWorldCup_Activities_Random[3308883][1][5]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308883][1][5]["ItemChance"] = 1000
	tWorldCup_Activities_Random[3308883][1][5]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308883][1][5]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308883][1][5]["RewardItem"][1]["Id"] = 195275
	tWorldCup_Activities_Random[3308883][1][5]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tWorldCup_Activities_Random[3308883][1][5]["Log"] = "0,0,3308883,1,12001076,2,195275,1"
	tWorldCup_Activities_Random[3308883][1][5]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308883][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 195285,'西班牙雄鹰'
	tWorldCup_Activities_Random[3308883][1][6] = {}
	tWorldCup_Activities_Random[3308883][1][6]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308883][1][6]["ItemChance"] = 1000
	tWorldCup_Activities_Random[3308883][1][6]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308883][1][6]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308883][1][6]["RewardItem"][1]["Id"] = 195285
	tWorldCup_Activities_Random[3308883][1][6]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tWorldCup_Activities_Random[3308883][1][6]["Log"] = "0,0,3308883,1,12001076,2,195285,1"
	tWorldCup_Activities_Random[3308883][1][6]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308883][1][6]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3308885,'随机球星发型包'
	tWorldCup_Activities_Random[3308885] = {}
	tWorldCup_Activities_Random[3308885][1] = {}
	tWorldCup_Activities_Random[3308885][1]["ItemChanceSum"] = 6000
	-- 3308894,'狂野子弹头'
	tWorldCup_Activities_Random[3308885][1][1] = {}
	tWorldCup_Activities_Random[3308885][1][1]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308885][1][1]["ItemChance"] = 0
	tWorldCup_Activities_Random[3308885][1][1]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308885][1][1]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308885][1][1]["RewardItem"][1]["Id"] = 3308894
	tWorldCup_Activities_Random[3308885][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Random[3308885][1][1]["Log"] = "0,0,3308885,1,12001076,2,3308894,1"
	tWorldCup_Activities_Random[3308885][1][1]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308885][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 3308895,'蓬松贵公子'
	tWorldCup_Activities_Random[3308885][1][2] = {}
	tWorldCup_Activities_Random[3308885][1][2]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308885][1][2]["ItemChance"] = 1000
	tWorldCup_Activities_Random[3308885][1][2]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308885][1][2]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308885][1][2]["RewardItem"][1]["Id"] = 3308895
	tWorldCup_Activities_Random[3308885][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Random[3308885][1][2]["Log"] = "0,0,3308885,1,12001076,2,3308895,1"
	tWorldCup_Activities_Random[3308885][1][2]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308885][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 3308896,'帅气长扎辫'
	tWorldCup_Activities_Random[3308885][1][3] = {}
	tWorldCup_Activities_Random[3308885][1][3]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308885][1][3]["ItemChance"] = 1000
	tWorldCup_Activities_Random[3308885][1][3]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308885][1][3]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308885][1][3]["RewardItem"][1]["Id"] = 3308896
	tWorldCup_Activities_Random[3308885][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Random[3308885][1][3]["Log"] = "0,0,3308885,1,12001076,2,3308896,1"
	tWorldCup_Activities_Random[3308885][1][3]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308885][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 3308897,'性感短卷发'
	tWorldCup_Activities_Random[3308885][1][4] = {}
	tWorldCup_Activities_Random[3308885][1][4]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308885][1][4]["ItemChance"] = 1000
	tWorldCup_Activities_Random[3308885][1][4]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308885][1][4]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308885][1][4]["RewardItem"][1]["Id"] = 3308897
	tWorldCup_Activities_Random[3308885][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Random[3308885][1][4]["Log"] = "0,0,3308885,1,12001076,2,3308897,1"
	tWorldCup_Activities_Random[3308885][1][4]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308885][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 3308898,'儒雅绅士范'
	tWorldCup_Activities_Random[3308885][1][5] = {}
	tWorldCup_Activities_Random[3308885][1][5]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308885][1][5]["ItemChance"] = 0
	tWorldCup_Activities_Random[3308885][1][5]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308885][1][5]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308885][1][5]["RewardItem"][1]["Id"] = 3308898
	tWorldCup_Activities_Random[3308885][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Random[3308885][1][5]["Log"] = "0,0,3308885,1,12001076,2,3308898,1"
	tWorldCup_Activities_Random[3308885][1][5]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308885][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 3308899,'狂野爆炸头'
	tWorldCup_Activities_Random[3308885][1][6] = {}
	tWorldCup_Activities_Random[3308885][1][6]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308885][1][6]["ItemChance"] = 0
	tWorldCup_Activities_Random[3308885][1][6]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308885][1][6]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308885][1][6]["RewardItem"][1]["Id"] = 3308899
	tWorldCup_Activities_Random[3308885][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Random[3308885][1][6]["Log"] = "0,0,3308885,1,12001076,2,3308899,1"
	tWorldCup_Activities_Random[3308885][1][6]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308885][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 3308900,'叛逆朋克头'
	tWorldCup_Activities_Random[3308885][1][7] = {}
	tWorldCup_Activities_Random[3308885][1][7]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308885][1][7]["ItemChance"] = 0
	tWorldCup_Activities_Random[3308885][1][7]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308885][1][7]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308885][1][7]["RewardItem"][1]["Id"] = 3308900
	tWorldCup_Activities_Random[3308885][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Random[3308885][1][7]["Log"] = "0,0,3308885,1,12001076,2,3308900,1"
	tWorldCup_Activities_Random[3308885][1][7]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308885][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 3308901,'潮男脏辫'
	tWorldCup_Activities_Random[3308885][1][8] = {}
	tWorldCup_Activities_Random[3308885][1][8]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308885][1][8]["ItemChance"] = 1000
	tWorldCup_Activities_Random[3308885][1][8]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308885][1][8]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308885][1][8]["RewardItem"][1]["Id"] = 3308901
	tWorldCup_Activities_Random[3308885][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Random[3308885][1][8]["Log"] = "0,0,3308885,1,12001076,2,3308901,1"
	tWorldCup_Activities_Random[3308885][1][8]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308885][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 3308902,'骚气板寸头'
	tWorldCup_Activities_Random[3308885][1][9] = {}
	tWorldCup_Activities_Random[3308885][1][9]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308885][1][9]["ItemChance"] = 1000
	tWorldCup_Activities_Random[3308885][1][9]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308885][1][9]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308885][1][9]["RewardItem"][1]["Id"] = 3308902
	tWorldCup_Activities_Random[3308885][1][9]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Random[3308885][1][9]["Log"] = "0,0,3308885,1,12001076,2,3308902,1"
	tWorldCup_Activities_Random[3308885][1][9]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308885][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 3308903,'金毛狮王'
	tWorldCup_Activities_Random[3308885][1][10] = {}
	tWorldCup_Activities_Random[3308885][1][10]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308885][1][10]["ItemChance"] = 1000
	tWorldCup_Activities_Random[3308885][1][10]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308885][1][10]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308885][1][10]["RewardItem"][1]["Id"] = 3308903
	tWorldCup_Activities_Random[3308885][1][10]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Random[3308885][1][10]["Log"] = "0,0,3308885,1,12001076,2,3308903,1"
	tWorldCup_Activities_Random[3308885][1][10]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308885][1][10]["RewardEffect"]["Effect"] = "angelwing"
	
	tWorldCup_Activities_Random["KillMonster"] = {}
	-- 片区怪物掉落
	tWorldCup_Activities_Random["KillMonster"][1] = {}
	-- 3308881	新物品	1			0.50%
	tWorldCup_Activities_Random["KillMonster"][1][1] = {}
	tWorldCup_Activities_Random["KillMonster"][1][1]["RandomItemChanceType"] = 3
	tWorldCup_Activities_Random["KillMonster"][1][1]["ItemSelfChanceSum"] = 10000
	tWorldCup_Activities_Random["KillMonster"][1][1]["ItemChance"] = 50
	tWorldCup_Activities_Random["KillMonster"][1][1]["Log"] = "0,0,0,0,12001076,1[1],3308881,1"
	tWorldCup_Activities_Random["KillMonster"][1][1]["EmoneyLog"] = "350	21504	0	0	1	"
	tWorldCup_Activities_Random["KillMonster"][1][1]["EventType"] = 177
	tWorldCup_Activities_Random["KillMonster"][1][1]["DataType"] = 04
	tWorldCup_Activities_Random["KillMonster"][1][1]["RewardData"] = 2
	tWorldCup_Activities_Random["KillMonster"][1][1]["RewardDelay"] = 1
	tWorldCup_Activities_Random["KillMonster"][1][1]["RewardTimeType"] = 4
	tWorldCup_Activities_Random["KillMonster"][1][1]["RewardItem"] = {}
	tWorldCup_Activities_Random["KillMonster"][1][1]["RewardItem"][1] = {}
	tWorldCup_Activities_Random["KillMonster"][1][1]["RewardItem"][1]["Id"] = 3308881
	tWorldCup_Activities_Random["KillMonster"][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tWorldCup_Activities_Random["KillMonster"][1][1]["RewardEffect"] = {}
	tWorldCup_Activities_Random["KillMonster"][1][1]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 世界杯低级抽奖 3308881,'助威棒'
	tWorldCup_Activities_Random[3308881] = {}
	tWorldCup_Activities_Random[3308881][1] = {}
	tWorldCup_Activities_Random[3308881][1]["ItemChanceSum"] = 10000
	-- 普通外套碎片	子表	1			16.00%
	tWorldCup_Activities_Random[3308881][1][1] = {}
	tWorldCup_Activities_Random[3308881][1][1]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308881][1][1]["ItemChance"] = 1600
	tWorldCup_Activities_Random[3308881][1][1]["Index"] = 1
	tWorldCup_Activities_Random[3308881][1][1]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308881][1][1]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308881][1][1]["RewardItem"][1]["Id"] = 3308886
	tWorldCup_Activities_Random[3308881][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Random[3308881][1][1]["Log"] = "0,0,0,0,12001076,1[4],3308886,1"
	tWorldCup_Activities_Random[3308881][1][1]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308881][1][1]["RewardEffect"]["Effect"] = "angelwing"
	--3308883,'幸运外套礼包'	新物品	1			0.00%
	tWorldCup_Activities_Random[3308881][1][2] = {}
	tWorldCup_Activities_Random[3308881][1][2]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308881][1][2]["ItemChance"] = 0
	tWorldCup_Activities_Random[3308881][1][2]["Index"] = 2
	tWorldCup_Activities_Random[3308881][1][2]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308881][1][2]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308881][1][2]["RewardItem"][1]["Id"] = 3308883
	tWorldCup_Activities_Random[3308881][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Random[3308881][1][2]["Log"] = "0,0,0,0,12001076,1[4],3308883,1"
	tWorldCup_Activities_Random[3308881][1][2]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308881][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 50气力值	3304321	1			25.00%
	tWorldCup_Activities_Random[3308881][1][3] = {}
	tWorldCup_Activities_Random[3308881][1][3]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308881][1][3]["ItemChance"] = 2500
	tWorldCup_Activities_Random[3308881][1][3]["Index"] = 3
	tWorldCup_Activities_Random[3308881][1][3]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308881][1][3]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308881][1][3]["RewardItem"][1]["Id"] = 3304321
	tWorldCup_Activities_Random[3308881][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Random[3308881][1][3]["Log"] = "0,0,0,0,12001076,1[4],3304321,1"
	tWorldCup_Activities_Random[3308881][1][3]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308881][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 100气力值	3304324	1			5.00%
	tWorldCup_Activities_Random[3308881][1][4] = {}
	tWorldCup_Activities_Random[3308881][1][4]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308881][1][4]["ItemChance"] = 500
	tWorldCup_Activities_Random[3308881][1][4]["Index"] = 4
	tWorldCup_Activities_Random[3308881][1][4]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308881][1][4]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308881][1][4]["RewardItem"][1]["Id"] = 3304324
	tWorldCup_Activities_Random[3308881][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Random[3308881][1][4]["Log"] = "0,0,0,0,12001076,1[4],3304324,1"
	tWorldCup_Activities_Random[3308881][1][4]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308881][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+1	730001	1	赠品	7天	20.00%
	tWorldCup_Activities_Random[3308881][1][5] = {}
	tWorldCup_Activities_Random[3308881][1][5]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308881][1][5]["ItemChance"] = 2000
	tWorldCup_Activities_Random[3308881][1][5]["Index"] = 5
	tWorldCup_Activities_Random[3308881][1][5]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308881][1][5]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308881][1][5]["RewardItem"][1]["Id"] = 730001
	tWorldCup_Activities_Random[3308881][1][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tWorldCup_Activities_Random[3308881][1][5]["Log"] = "0,0,0,0,12001076,1[4],730001,1"
	tWorldCup_Activities_Random[3308881][1][5]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308881][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤练石+2	730002	1	赠品	7天	5.00%
	tWorldCup_Activities_Random[3308881][1][6] = {}
	tWorldCup_Activities_Random[3308881][1][6]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308881][1][6]["ItemChance"] = 500
	tWorldCup_Activities_Random[3308881][1][6]["Index"] = 6
	tWorldCup_Activities_Random[3308881][1][6]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308881][1][6]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308881][1][6]["RewardItem"][1]["Id"] = 730002
	tWorldCup_Activities_Random[3308881][1][6]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tWorldCup_Activities_Random[3308881][1][6]["Log"] = "0,0,0,0,12001076,1[4],730002,1"
	tWorldCup_Activities_Random[3308881][1][6]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308881][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石	3009001	1		2天	9.00%
	tWorldCup_Activities_Random[3308881][1][7] = {}
	tWorldCup_Activities_Random[3308881][1][7]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308881][1][7]["ItemChance"] = 900
	tWorldCup_Activities_Random[3308881][1][7]["Index"] = 7
	tWorldCup_Activities_Random[3308881][1][7]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308881][1][7]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308881][1][7]["RewardItem"][1]["Id"] = 3009001
	tWorldCup_Activities_Random[3308881][1][7]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tWorldCup_Activities_Random[3308881][1][7]["Log"] = "0,0,0,0,12001076,1[4],3009001,1"
	tWorldCup_Activities_Random[3308881][1][7]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308881][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 光效外套碎片	3308893	1			1.00%
	tWorldCup_Activities_Random[3308881][1][8] = {}
	tWorldCup_Activities_Random[3308881][1][8]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308881][1][8]["ItemChance"] = 100
	tWorldCup_Activities_Random[3308881][1][8]["Index"] = 8
	tWorldCup_Activities_Random[3308881][1][8]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308881][1][8]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308881][1][8]["RewardItem"][1]["Id"] = 3308893
	tWorldCup_Activities_Random[3308881][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Random[3308881][1][8]["Log"] = "0,0,0,0,12001076,1[4],3308893,1"
	tWorldCup_Activities_Random[3308881][1][8]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308881][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹	4060001	30	赠品		5.00%
	tWorldCup_Activities_Random[3308881][1][9] = {}
	tWorldCup_Activities_Random[3308881][1][9]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308881][1][9]["ItemChance"] = 500
	tWorldCup_Activities_Random[3308881][1][9]["Index"] = 9
	tWorldCup_Activities_Random[3308881][1][9]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308881][1][9]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308881][1][9]["RewardItem"][1]["Id"] = 4060001
	tWorldCup_Activities_Random[3308881][1][9]["RewardItem"][1]["Attr"] = "0 30 3"
	tWorldCup_Activities_Random[3308881][1][9]["Log"] = "0,0,0,0,12001076,1[4],4060001,30"
	tWorldCup_Activities_Random[3308881][1][9]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308881][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹	4060001	10	赠品		14.00%
	tWorldCup_Activities_Random[3308881][1][10] = {}
	tWorldCup_Activities_Random[3308881][1][10]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308881][1][10]["ItemChance"] = 1400
	tWorldCup_Activities_Random[3308881][1][10]["Index"] = 10
	tWorldCup_Activities_Random[3308881][1][10]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308881][1][10]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308881][1][10]["RewardItem"][1]["Id"] = 4060001
	tWorldCup_Activities_Random[3308881][1][10]["RewardItem"][1]["Attr"] = "0 10 3"
	tWorldCup_Activities_Random[3308881][1][10]["Log"] = "0,0,0,0,12001076,1[4],4060001,10"
	tWorldCup_Activities_Random[3308881][1][10]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308881][1][10]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 世界杯高级抽奖 3308882,'助威大喇叭'
	tWorldCup_Activities_Random[3308882] = {}
	tWorldCup_Activities_Random[3308882][1] = {}
	tWorldCup_Activities_Random[3308882][1]["ItemChanceSum"] = 10000
	-- 普通外套碎片	子表	1			42%
	tWorldCup_Activities_Random[3308882][1][1] = {}
	tWorldCup_Activities_Random[3308882][1][1]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308882][1][1]["ItemChance"] = 4200
	tWorldCup_Activities_Random[3308882][1][1]["Index"] = 1
	tWorldCup_Activities_Random[3308882][1][1]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308882][1][1]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308882][1][1]["RewardItem"][1]["Id"] = 3308886
	tWorldCup_Activities_Random[3308882][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Random[3308882][1][1]["Log"] = "0,0,0,0,12001076,1[5],3308886,1"
	tWorldCup_Activities_Random[3308882][1][1]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308882][1][1]["RewardEffect"]["Effect"] = "angelwing"
	--3308883,'幸运外套礼包'	新物品	1			20.00%
	-- 50气力值	3304321	1			20.00%
	tWorldCup_Activities_Random[3308882][1][2] = {}
	tWorldCup_Activities_Random[3308882][1][2]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308882][1][2]["ItemChance"] = 2000
	tWorldCup_Activities_Random[3308882][1][2]["Index"] = 2
	tWorldCup_Activities_Random[3308882][1][2]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308882][1][2]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308882][1][2]["RewardItem"][1]["Id"] = 3304321
	tWorldCup_Activities_Random[3308882][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Random[3308882][1][2]["Log"] = "0,0,0,0,12001076,1[5],3304321,1"
	tWorldCup_Activities_Random[3308882][1][2]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308882][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 100气力值	3304324	1			7.00%
	tWorldCup_Activities_Random[3308882][1][3] = {}
	tWorldCup_Activities_Random[3308882][1][3]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308882][1][3]["ItemChance"] = 700
	tWorldCup_Activities_Random[3308882][1][3]["Index"] = 3
	tWorldCup_Activities_Random[3308882][1][3]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308882][1][3]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308882][1][3]["RewardItem"][1]["Id"] = 3304324
	tWorldCup_Activities_Random[3308882][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Random[3308882][1][3]["Log"] = "0,0,0,0,12001076,1[5],3304324,1"
	tWorldCup_Activities_Random[3308882][1][3]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308882][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤练石+2	730002	1	赠品	7天	9.90%
	tWorldCup_Activities_Random[3308882][1][4] = {}
	tWorldCup_Activities_Random[3308882][1][4]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308882][1][4]["ItemChance"] = 990
	tWorldCup_Activities_Random[3308882][1][4]["Index"] = 4
	tWorldCup_Activities_Random[3308882][1][4]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308882][1][4]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308882][1][4]["RewardItem"][1]["Id"] = 730002
	tWorldCup_Activities_Random[3308882][1][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tWorldCup_Activities_Random[3308882][1][4]["Log"] = "0,0,0,0,12001076,1[5],730002,1"
	tWorldCup_Activities_Random[3308882][1][4]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308882][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石	3009001	1		2天	4.00%
	tWorldCup_Activities_Random[3308882][1][5] = {}
	tWorldCup_Activities_Random[3308882][1][5]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308882][1][5]["ItemChance"] = 400
	tWorldCup_Activities_Random[3308882][1][5]["Index"] = 5
	tWorldCup_Activities_Random[3308882][1][5]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308882][1][5]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308882][1][5]["RewardItem"][1]["Id"] = 3009001
	tWorldCup_Activities_Random[3308882][1][5]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tWorldCup_Activities_Random[3308882][1][5]["Log"] = "0,0,0,0,12001076,1[5],3009001,1"
	tWorldCup_Activities_Random[3308882][1][5]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308882][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹	4060001	10	赠品		8.00%
	tWorldCup_Activities_Random[3308882][1][6] = {}
	tWorldCup_Activities_Random[3308882][1][6]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308882][1][6]["ItemChance"] = 800
	tWorldCup_Activities_Random[3308882][1][6]["Index"] = 6
	tWorldCup_Activities_Random[3308882][1][6]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308882][1][6]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308882][1][6]["RewardItem"][1]["Id"] = 4060001
	tWorldCup_Activities_Random[3308882][1][6]["RewardItem"][1]["Attr"] = "0 10 3"
	tWorldCup_Activities_Random[3308882][1][6]["Log"] = "0,0,0,0,12001076,1[5],4060001,10"
	tWorldCup_Activities_Random[3308882][1][6]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308882][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 光效外套碎片	3308893	1			9.00%
	tWorldCup_Activities_Random[3308882][1][7] = {}
	tWorldCup_Activities_Random[3308882][1][7]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308882][1][7]["ItemChance"] = 900
	tWorldCup_Activities_Random[3308882][1][7]["Index"] = 7
	tWorldCup_Activities_Random[3308882][1][7]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308882][1][7]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308882][1][7]["RewardItem"][1]["Id"] = 3308893
	tWorldCup_Activities_Random[3308882][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Random[3308882][1][7]["Log"] = "0,0,0,0,12001076,1[5],3308893,1"
	tWorldCup_Activities_Random[3308882][1][7]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308882][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 发型随机包	3308885				0.10%	每日限量1个，抽到播报
	tWorldCup_Activities_Random[3308882][1][8] = {}
	tWorldCup_Activities_Random[3308882][1][8]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308882][1][8]["ItemChance"] = 10
	tWorldCup_Activities_Random[3308882][1][8]["Index"] = 8
	tWorldCup_Activities_Random[3308882][1][8]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308882][1][8]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308882][1][8]["RewardItem"][1]["Id"] = 3308885
	tWorldCup_Activities_Random[3308882][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Random[3308882][1][8]["Log"] = "0,0,0,0,12001076,1[5],3308885,1"
	tWorldCup_Activities_Random[3308882][1][8]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308882][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 1天限时随机外套包
	tWorldCup_Activities_Random[3308882][1][9] = {}
	tWorldCup_Activities_Random[3308882][1][9]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random[3308882][1][9]["ItemChance"] = 0
	tWorldCup_Activities_Random[3308882][1][9]["Index"] = 9
	tWorldCup_Activities_Random[3308882][1][9]["RewardItem"] = {}
	tWorldCup_Activities_Random[3308882][1][9]["RewardItem"][1] = {}
	tWorldCup_Activities_Random[3308882][1][9]["RewardItem"][1]["Id"] = 3308883
	tWorldCup_Activities_Random[3308882][1][9]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Random[3308882][1][9]["Log"] = "0,0,0,0,12001076,1[5],3308883,1"
	tWorldCup_Activities_Random[3308882][1][9]["RewardEffect"] = {}
	tWorldCup_Activities_Random[3308882][1][9]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 子表
	-- 普通外套碎片
	tWorldCup_Activities_Random["Piece"] = {}
	tWorldCup_Activities_Random["Piece"][1] = {}
	tWorldCup_Activities_Random["Piece"][1]["ItemChanceSum"] = 10000
	-- 普通阿根廷球衣碎片	3308889	1
	tWorldCup_Activities_Random["Piece"][1][1] = {}
	tWorldCup_Activities_Random["Piece"][1][1]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random["Piece"][1][1]["ItemChance"] = 500
	tWorldCup_Activities_Random["Piece"][1][1]["RewardItem"] = {}
	tWorldCup_Activities_Random["Piece"][1][1]["RewardItem"][1] = {}
	tWorldCup_Activities_Random["Piece"][1][1]["RewardItem"][1]["Id"] = 3308889
	tWorldCup_Activities_Random["Piece"][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Random["Piece"][1][1]["Log"] = "0,0,0,0,12001076,%s,3308889,1"
	tWorldCup_Activities_Random["Piece"][1][1]["RewardEffect"] = {}
	tWorldCup_Activities_Random["Piece"][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 普通巴西球衣碎片	3308888	1
	tWorldCup_Activities_Random["Piece"][1][2] = {}
	tWorldCup_Activities_Random["Piece"][1][2]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random["Piece"][1][2]["ItemChance"] = 500
	tWorldCup_Activities_Random["Piece"][1][2]["RewardItem"] = {}
	tWorldCup_Activities_Random["Piece"][1][2]["RewardItem"][1] = {}
	tWorldCup_Activities_Random["Piece"][1][2]["RewardItem"][1]["Id"] = 3308888
	tWorldCup_Activities_Random["Piece"][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Random["Piece"][1][2]["Log"] = "0,0,0,0,12001076,%s,3308888,1"
	tWorldCup_Activities_Random["Piece"][1][2]["RewardEffect"] = {}
	tWorldCup_Activities_Random["Piece"][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 普通西班牙球衣碎片	3308891	1
	tWorldCup_Activities_Random["Piece"][1][3] = {}
	tWorldCup_Activities_Random["Piece"][1][3]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random["Piece"][1][3]["ItemChance"] = 500
	tWorldCup_Activities_Random["Piece"][1][3]["RewardItem"] = {}
	tWorldCup_Activities_Random["Piece"][1][3]["RewardItem"][1] = {}
	tWorldCup_Activities_Random["Piece"][1][3]["RewardItem"][1]["Id"] = 3308891
	tWorldCup_Activities_Random["Piece"][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Random["Piece"][1][3]["Log"] = "0,0,0,0,12001076,%s,3308891,1"
	tWorldCup_Activities_Random["Piece"][1][3]["RewardEffect"] = {}
	tWorldCup_Activities_Random["Piece"][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 普通葡萄牙球衣碎片	3308890	1
	tWorldCup_Activities_Random["Piece"][1][4] = {}
	tWorldCup_Activities_Random["Piece"][1][4]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random["Piece"][1][4]["ItemChance"] = 500
	tWorldCup_Activities_Random["Piece"][1][4]["RewardItem"] = {}
	tWorldCup_Activities_Random["Piece"][1][4]["RewardItem"][1] = {}
	tWorldCup_Activities_Random["Piece"][1][4]["RewardItem"][1]["Id"] = 3308890
	tWorldCup_Activities_Random["Piece"][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Random["Piece"][1][4]["Log"] = "0,0,0,0,12001076,%s,3308890,1"
	tWorldCup_Activities_Random["Piece"][1][4]["RewardEffect"] = {}
	tWorldCup_Activities_Random["Piece"][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 普通埃及球衣碎片	3308886	1
	tWorldCup_Activities_Random["Piece"][1][5] = {}
	tWorldCup_Activities_Random["Piece"][1][5]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random["Piece"][1][5]["ItemChance"] = 500
	tWorldCup_Activities_Random["Piece"][1][5]["RewardItem"] = {}
	tWorldCup_Activities_Random["Piece"][1][5]["RewardItem"][1] = {}
	tWorldCup_Activities_Random["Piece"][1][5]["RewardItem"][1]["Id"] = 3308886
	tWorldCup_Activities_Random["Piece"][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Random["Piece"][1][5]["Log"] = "0,0,0,0,12001076,%s,3308886,1"
	tWorldCup_Activities_Random["Piece"][1][5]["RewardEffect"] = {}
	tWorldCup_Activities_Random["Piece"][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 普通比利时球衣碎片	3308887	1
	tWorldCup_Activities_Random["Piece"][1][6] = {}
	tWorldCup_Activities_Random["Piece"][1][6]["RandomItemChanceType"] = 2
	tWorldCup_Activities_Random["Piece"][1][6]["ItemChance"] = 500
	tWorldCup_Activities_Random["Piece"][1][6]["RewardItem"] = {}
	tWorldCup_Activities_Random["Piece"][1][6]["RewardItem"][1] = {}
	tWorldCup_Activities_Random["Piece"][1][6]["RewardItem"][1]["Id"] = 3308887
	tWorldCup_Activities_Random["Piece"][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tWorldCup_Activities_Random["Piece"][1][6]["Log"] = "0,0,0,0,12001076,%s,3308887,1"
	tWorldCup_Activities_Random["Piece"][1][6]["RewardEffect"] = {}
	tWorldCup_Activities_Random["Piece"][1][6]["RewardEffect"]["Effect"] = "angelwing"
-- 排行榜奖励
--------------------------------------逻辑部分配置-------------------------------------------
-- 获取掩码值
function WorldCup_Activities_GetStcValue(nIndex,nUserId)
	local nEvent = tWorldCup_Activities_Stc[nIndex]["EventType"]
	local nType = tWorldCup_Activities_Stc[nIndex]["DataType"]
	
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	return nData
end

--设置掩码值
function WorldCup_Activities_SetStcValue(nIndex,nData,nUserId)
	local nEvent = tWorldCup_Activities_Stc[nIndex]["EventType"]
	local nType = tWorldCup_Activities_Stc[nIndex]["DataType"]
	
	Task_SetStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 增加掩码值
function WorldCup_Activities_AddStcValue(nIndex,nData,nUserId)
	local nEvent = tWorldCup_Activities_Stc[nIndex]["EventType"]
	local nType = tWorldCup_Activities_Stc[nIndex]["DataType"]
	
	Task_AddStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 隔天重置
function WorldCup_Activities_ClearStcInterval(nIndex,nUserId)
	local nEvent = tWorldCup_Activities_Stc[nIndex]["EventType"]
	local nType = tWorldCup_Activities_Stc[nIndex]["DataType"]
	
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
end

-- 等级判断
function WorldCup_Activities_LevelJudgy(nUserId)
	local nLevel = tWorldCup_Activities_Count["Level"]
	local nMete = tWorldCup_Activities_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return false
	end
	
	return true
end

-- 点击选项前置判断
function WorldCup_Activities_OptionJudgy(nNpcId)
	-- 活动时间后
	if not Sys_ChkFullTime(tWorldCup_Activities_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	-- 等级不足
	if not WorldCup_Activities_LevelJudgy() then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return false
	end
	
	return true
end

-- npc索引转化
function WorldCup_Activities_GetNpcID(nNpcId)
	if nNpcId <= 22952 then
		return nNpcId
	end
	
	local nNewNpcId = nNpcId-6
	return nNewNpcId
end

-- 第一站位npc
function WorldCup_Activities_MoveNpc(nNpcId)
	local nMapId = tWorldCup_Activities_Count["MapId"]
	local nPosX = tWorldCup_Activities_Count["PosX"]
	local nPosY = tWorldCup_Activities_Count["PosY"]
	local nDistance = tWorldCup_Activities_Count["BasicDistance"]
	local nMoveNpc = nNpcId + nDistance
	Npc_MoveNpcPos(nMoveNpc,nMapId,nPosX,nPosY)
	local nNewTrapType = tWorldCup_Activities_Trap[7]["TrapType"]
	local nNewLook = tWorldCup_Activities_Trap[7]["Look"]
	Trap_DelMapTrap(nMapId,nNewTrapType)
	Trap_CreateMapTrap(nNewTrapType,nNewLook,0,nMapId,nPosX,nPosY,0,0)
	
	-- 其他的移走
	local nOutMapId = tWorldCup_Activities_Count["OutMapId"]
	local nOutPosX = tWorldCup_Activities_Count["OutPosX"]
	local nOutPosY = tWorldCup_Activities_Count["OutPosY"]
	local tNpcId = {}
	for i,v in pairs(tWorldCup_Activities_RankingReward["NpcItem"]) do
		if i ~= nNpcId then
			Npc_MoveNpcPos(i+nDistance,nOutMapId,nOutPosX,nOutPosY)
			table.insert(tNpcId,i)
		end
	end
	
	-- 移走npc
	local nBasicNpc = tWorldCup_Activities_Count["BasicNewNpc"]
	for a,b in pairs(tWorldCup_Activities_MoveNpc) do
		local nMoveNpcId = nBasicNpc+a-1
		Npc_MoveNpcPos(nMoveNpcId,nOutMapId,nOutPosX,nOutPosY)
		local nTrapType = tWorldCup_Activities_Trap[a]["TrapType"]
		Trap_DelMapTrap(nMapId,nTrapType)
	end
	
	-- 移出npc
	for g,h in pairs(tWorldCup_Activities_MoveNpc) do
		local nActivetyMapId = h["ActivetyMapId"]
		local nActivetyPosX = h["ActivetyPosX"]
		local nActivetyPosY = h["ActivetyPosY"]
		local nTrapType = tWorldCup_Activities_Trap[g]["TrapType"]
		local nLook = tWorldCup_Activities_Trap[g]["Look"]
		if g < 6 then
			Npc_MoveNpcPos(tNpcId[g],nActivetyMapId,nActivetyPosX,nActivetyPosY)
			Trap_CreateMapTrap(nTrapType,nLook,0,nActivetyMapId,nActivetyPosX,nActivetyPosY,0,0)
		end
	end
end

-- 移出npc
function WorldCup_Activities_MoveAllNpc()
	local nBasicNpc = tWorldCup_Activities_Count["BasicNewNpc"]
	for i,v in pairs(tWorldCup_Activities_MoveNpc) do
		local nMapId = v["ActivetyMapId"]
		local nPosX = v["ActivetyPosX"]
		local nPosY = v["ActivetyPosY"]
		local nNpcId = nBasicNpc+i-1
		Npc_MoveNpcPos(nNpcId,nMapId,nPosX,nPosY)
		local nTrapType = tWorldCup_Activities_Trap[i]["TrapType"]
		local nLook = tWorldCup_Activities_Trap[i]["Look"]
		Trap_CreateMapTrap(nTrapType,nLook,0,nMapId,nPosX,nPosY,0,0)
	end
end

-- 活动后移走
function WorldCup_Activities_OutMoveAllNpc()
	local nOldMapId = tWorldCup_Activities_Count["MapId"]
	local nBasicNpc = tWorldCup_Activities_Count["BasicNewNpc"]
	for i,v in pairs(tWorldCup_Activities_MoveNpc) do
		local nMapId = v["AfterActivetyMapId"]
		local nPosX = v["AfterActivetyPosX"]
		local nPosY = v["AfterActivetyPosY"]
		local nNpcId = nBasicNpc+i-1
		Npc_MoveNpcPos(nNpcId,nMapId,nPosX,nPosY)
		local nNewNpcId = nNpcId + tWorldCup_Activities_Count["BasicDistance"]
		Npc_MoveNpcPos(nNewNpcId,nMapId,nPosX,nPosY)
		local nTrapType = tWorldCup_Activities_Trap[i]["TrapType"]
		Trap_DelMapTrap(nOldMapId,nTrapType)
	end
	local nNewTrapType = tWorldCup_Activities_Trap[7]["TrapType"]
	Trap_DelMapTrap(nOldMapId,nNewTrapType)
end

function WorldCup_Activities_SaveEmoney(nIndex,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local sEmoneyLog = tWorldCup_Activities_Log["Emoney"][nIndex]
	Sys_SaveEmoneyBuy(sEmoneyLog,nUserId)
end
---------------------------------------------------22944 征服足协主席-------------------------------------------
-- 参与答题
function WorldCup_Activities_JoinInAnswer(nNpcId)
	-- 点击选项前置判断
	if not WorldCup_Activities_OptionJudgy(nNpcId) then
		return
	end
	
	-- 今日答过题目
	WorldCup_Activities_ClearStcInterval(1)
	WorldCup_Activities_ClearStcInterval(2)
	WorldCup_Activities_SetStcValue(2,0)
	-- local nData = WorldCup_Activities_GetStcValue(1)
	-- local sFunc = "WorldCup_Activities_Return</N>"..nNpcId
	-- if nData >= tWorldCup_Activities_Stc[1]["Limit"] then
		-- Sys_MsgBox(tWorldCup_Activities_Text[nNpcId]["Tip"][1],sFunc)
		-- return
	-- end
	
	-- 设置掩码
	-- WorldCup_Activities_SetStcValue(1,1)
	
	-- 距离上次答题
	local nUserId = Get_UserId()
	local nTime = os.time()
	local nDistanceTime = tWorldCup_Activities_Time[nUserId] or 0
	local nNeedDistance = tWorldCup_Activities_Count["DelayCount"]
	if nTime - nDistanceTime <= nNeedDistance then
		Sys_MsgBox(tWorldCup_Activities_Text["OutTime"])
		return
	end
	
	tWorldCup_Activities_Time[nUserId] = nTime
	-- 开始答题
	Sys_BeginCompetion(nUserId)
end

-- 返回主队白
function WorldCup_Activities_Return(nNpcId)
	-- 点击选项前置判断
	if not WorldCup_Activities_OptionJudgy(nNpcId) then
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"1-4")
end

-- 足球庆典指南-- 打开内嵌页面
function WorldCup_Activities_LinkWeb(nIndex)
	User_SendWebDialog(tWorldCup_Activities_Text["Web"][nIndex])
end

-- 回答完毕给奖励
function WorldCup_Activities_AnswerReward(nUserId)
	-- 设置答对数量掩码
	WorldCup_Activities_AddStcValue(2,1,nUserId)
	local nData = WorldCup_Activities_GetStcValue(2,nUserId)
	local nRewardData = WorldCup_Activities_GetStcValue(1,nUserId)
	-- 答对一题给参与奖励
	local nExistDay = tWorldCup_Activities_Count["Mail"]["ExistDay"]
	local sSender = tWorldCup_Activities_Text["Mail"]["Sender"]
	local sTitle = tWorldCup_Activities_Text["Mail"]["Title"]
	if nData == 1 and nRewardData < 1 then
		WorldCup_Activities_SetStcValue(1,1,nUserId)
		-- 发邮件
		local sFinalContent = tWorldCup_Activities_Text["Mail"]["NewContent"]
		local nActionId = tWorldCup_Activities_Count["Mail"][1][1]
		Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sFinalContent)
	end
	
	-- 答对10题
	if nData == tWorldCup_Activities_Stc[2]["Limit"] and nRewardData <= 1 then
		WorldCup_Activities_SetStcValue(1,2,nUserId)
		-- 发邮件
		local nActionId = tWorldCup_Activities_Count["Mail"][1][2]
		local sFinalContent = tWorldCup_Activities_Text["Mail"]["Content"]
		Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sFinalContent)
		Sys_MsgBox(tWorldCup_Activities_Text[22944]["Tip"][2],nil,nil,nUserId)
	end
end

-- 领取答题邮件
function WorldCup_Activities_AnswerMail(nIndex)
	RewardTemplate_Reward(tWorldCup_Activities_Reward["Answer"][nIndex])
	if nIndex == 1 then
		WorldCup_Activities_SaveEmoney(2)
	else
		WorldCup_Activities_SaveEmoney(4)
	end
end

-- 智力竞赛排行
function WorldCup_Activities_RankReward(nUserId,nRank)
	local nTime = os.time() - tWorldCup_Activities_Count["DelayTime"]
	local nAwardMonth = tonumber(os.date("%m",nTime))
	local nAwardDay = tonumber(os.date("%d",nTime))
	if nRank <= 10 then
		local nExistDay = tWorldCup_Activities_Count["NewMail"]["ExistDay"]
		local sSender = tWorldCup_Activities_Text["NewMail"]["Sender"]
		local sTitle = tWorldCup_Activities_Text["NewMail"]["Title"]
		local nActionId = tWorldCup_Activities_Count["NewMail"][1][nRank]
		local sContent = tWorldCup_Activities_Text["NewMail"]["Content"]
		local sNewContent = string.format(sContent,nAwardMonth,nAwardDay,nRank)
		Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sNewContent)
	end
end

-- 领取排行答题邮件
function WorldCup_Activities_RankRewardMail(nIndex)
	RewardTemplate_Reward(tWorldCup_Activities_Reward["Rank"][nIndex])
	WorldCup_Activities_SaveEmoney(3)
end

-- 查看球星魅力榜
function WorldCup_Activities_StarCharmRanking(nNpcId)
	-- 点击选项前置判断
	if not WorldCup_Activities_OptionJudgy(nNpcId) then
		return
	end
	
	local tRank = tWorldCup_Activities_Ranking[nNpcId]
	for i,v in pairs (tWorldCup_Activities_Count["RankingIndex"]) do
		local sText = tWorldCup_Activities_Text[nNpcId][v]
		-- 列名
		local sListName = tWorldCup_Activities_Text[nNpcId]["ListName"]
		local sLeft = string.format(sListName,i)
		-- 球星名
		local nNewNpcId = tRank[i]["Id"]
		local sMiddle = tWorldCup_Activities_Text["NpcName"][nNewNpcId]
		local sRight = tRank[i]["Score"] or 0
		tNpcGossip[nNpcId][v] = Sys_CenterAline(sLeft,9,sMiddle,35,sRight,65).."\n"
	end
	
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

-- 增加总分
function WorldCup_Activities_AddTotalCheer(nNpcId,nAddValue)
	local nNewNpcId = tWorldCup_Activities_Count["BasicNpc"]
	local tRank = tWorldCup_Activities_Ranking[nNewNpcId]
	local nFirstId = tRank[1]["Id"]
	local nRank = WorldCup_Activities_GetRanking(nNpcId)
	local nTotal = tRank[nRank]["Score"]+nAddValue
	tRank[nRank]["Score"] = nTotal
	-- 排序
	table.sort(tRank,function(a,b) return a["Score"] > b["Score"] end)
	local nNewFirstId = tRank[1]["Id"]
	if nFirstId ~= nNewFirstId then
		local sNpcName = tWorldCup_Activities_Text["NpcName"][nNewFirstId]
		local sText = tWorldCup_Activities_Text["BroadCast"][1]
		Sys_SystemBroadcast(string.format(sText,sNpcName))
	end
	-- 刷新排行榜数据
	WorldCup_Activities_RefreshRanking(nNpcId,nTotal)
end

-- 设置总榜分值
function WorldCup_Activities_RefreshRanking(nNpcId,nTotal)
	local nNewNpcId = tWorldCup_Activities_Count["BasicNewNpc"]
	local nPos = nNpcId-nNewNpcId
	local nGlobalId = tWorldCup_Activities_Count["GlobalId"]
	Sys_SetSynaGlobalData(nGlobalId,nPos,nTotal)
end

-- 获取该球星的排名与分值
function WorldCup_Activities_GetRanking(nRealNpcId)
	local nNpcId = nRealNpcId or Get_NpcId()
	local nNewNpcId = tWorldCup_Activities_Count["BasicNpc"]
	local tRank = tWorldCup_Activities_Ranking[nNewNpcId]
	for i,v in pairs(tRank) do
		if v["Id"] == nNpcId then
			return i,v["Score"]
		end
	end
end

-- 获取旧的排名
function WorldCup_Activities_GetOldRanking(nRealNpcId)
	local nNpcId = nRealNpcId or Get_NpcId()
	local nNewNpcId = tWorldCup_Activities_Count["BasicNpc"]
	local tRank = tWorldCup_Activities_OldRanking[nNewNpcId]
	for i,v in pairs(tRank) do
		if v["Id"] == nNpcId then
			return i
		end
	end
end
-----------------------22947 【埃及队】萨拉赫
-- 挥舞助威棒
function WorldCup_Activities_LowProp(nExNpcId,nItemId)
	-- 点击选项前置判断
	local nNewNpcId = tWorldCup_Activities_Count["BasicNewNpc"]
	local nNpcId = Get_NpcId()
	if not WorldCup_Activities_OptionJudgy(nNpcId) then
		return
	end
	
	local nCheer = tWorldCup_Activities_Count["Cheer"][nItemId]["Score"]
	local sText = tWorldCup_Activities_Text[nNewNpcId]["Text211"]
	tNpcGossip[nNpcId]["Text211"] = string.format(sText,nCheer)
	
	-- 配置对应奖励text
	local nIndexNpcId = WorldCup_Activities_GetNpcID(nNpcId)
	local sIndex = tWorldCup_Activities_Count["RandomText"][nIndexNpcId]
	tNpcGossip[nNpcId]["Text212"] = tWorldCup_Activities_Text[nNewNpcId]["Text212"..sIndex]
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

-- 吹响助威大喇叭
function WorldCup_Activities_HighProp(nExNpcId,nItemId)
	-- 点击选项前置判断
	local nNpcId = Get_NpcId()
	local nNewNpcId = tWorldCup_Activities_Count["BasicNewNpc"]
	if not WorldCup_Activities_OptionJudgy(nNpcId) then
		return
	end
	
	local nCheer = tWorldCup_Activities_Count["Cheer"][nItemId]["Score"]
	local sText = tWorldCup_Activities_Text[nNewNpcId]["Text331"]
	tNpcGossip[nNpcId]["Text331"] = string.format(sText,nCheer)
	
	-- 配置对应奖励text
	local nIndexNpcId = WorldCup_Activities_GetNpcID(nNpcId)
	local sIndex = tWorldCup_Activities_Count["RandomText"][nIndexNpcId]
	tNpcGossip[nNpcId]["Text336"] = tWorldCup_Activities_Text[nNewNpcId]["Text336"..sIndex]
	LinkNpcGossipFunc_New(nNpcId,"3-3")
end

-- 挥舞助威棒/吹响助威大喇叭
function WorldCup_Activities_AddCheer(nExNpcId,nItemId,nTimes)
	-- 点击选项前置判断
	local nNpcId = Get_NpcId()
	local nNewNpcId = tWorldCup_Activities_Count["BasicNewNpc"]
	if not WorldCup_Activities_OptionJudgy(nNpcId) then
		return
	end
	-- 信息表
	local tCheerData = tWorldCup_Activities_Count["Cheer"][nItemId]
	-- 失败、没有助威棒
	local nEmoney = tCheerData["Emoney"]*nTimes
	if not Item_ChkMulItem(nItemId,nItemId,nTimes) then
		local nOptinIndex = tCheerData["DialogIndex"]
		local sOption = tWorldCup_Activities_Text[nNewNpcId]["Option"..nOptinIndex]
		tNpcGossip[nNpcId]["Option"..nOptinIndex] = string.format(sOption,nTimes,nEmoney)
		tNpcGossip[nNpcId]["OptionFunc"..nOptinIndex] = "WorldCup_Activities_EmoneyAddCheer</N>"..nNpcId.."</N>"..nItemId.."</N>"..nTimes
		local sDialog = tCheerData["Dialog"][nTimes]
		LinkNpcGossipFunc_New(nNpcId,sDialog)
		return
	end
	
	-- 背包不足
	local nSpace = RewardTemplate_GetRandomSpace(tWorldCup_Activities_Random[nItemId],1)
	local nSpaceNum = nSpace*nTimes
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-7")
		return
	end
	-- 成功，获得奖励
	if not Item_DelMulItem(nItemId,nItemId,nTimes) then
		return
	end
	
	local sLog = tCheerData["Log"][nTimes]
	Sys_SaveActionFestivalLog(sLog)
	local sNewEmoneyLog = tCheerData["NormalLog"][nTimes]
	Sys_SaveEmoneyBuy(sNewEmoneyLog)
	WorldCup_Activities_CheerReward(nNpcId,nItemId,nTimes)
end

-- 全服公告
function WorldCup_Activities_BroadCast(nIndexNpcId,nOldPos,nNewPos)
	-- 不在排行
	if nNewPos == 0 then
		return
	end
	local nTextIndex = 0
	if nNewPos <= 3 then
		nTextIndex = nNewPos + 1
	elseif nOldPos == 0 then
		-- 全服公告 ===第一次登上排行榜
		nTextIndex = 5
	else
		nTextIndex = 6
	end
	local sBroad = tWorldCup_Activities_Text["BroadCast"][nTextIndex]
	local sUserName = Get_UserName()
	local sNpcName = tWorldCup_Activities_Text["NpcName"][nIndexNpcId]
	if nTextIndex <= 4 then
		Sys_SystemBroadcast(string.format(sBroad,sUserName,sNpcName,sNpcName))
	elseif nTextIndex == 5 then
		Sys_SystemBroadcast(string.format(sBroad,sUserName,sNpcName,nNewPos))
	else
		Sys_SystemBroadcast(string.format(sBroad,sUserName,nNewPos,sNpcName))
	end
end

-- 领取奖励
function WorldCup_Activities_CheerReward(nExNpcId,nItemId,nTimes)
	local nNewNpcId = tWorldCup_Activities_Count["BasicNewNpc"]
	local tCheerData = tWorldCup_Activities_Count["Cheer"][nItemId]
	-- 人气值
	local nNpcId = Get_NpcId()
	local nIndexNpcId = WorldCup_Activities_GetNpcID(nNpcId)
	local nCheer = tCheerData["Score"]*nTimes
	-- 获取玩家上架前的排名
	local nOldPos = RankingFunc_GetUserInRank(nIndexNpcId,nNowUserId)
	-- 设置掩码
	WorldCup_Activities_AddStcValue(nIndexNpcId,nCheer)
	local nStcValue = WorldCup_Activities_GetStcValue(nIndexNpcId)
	-- 刷新排行榜
	RankingFunc_SetInfo(nIndexNpcId,nStcValue)
	-- 设置总人气值
	WorldCup_Activities_AddTotalCheer(nIndexNpcId,nCheer)
	local nNewPos = RankingFunc_GetUserInRank(nIndexNpcId,nNowUserId)
	-- 排行全服公告
	WorldCup_Activities_BroadCast(nIndexNpcId,nOldPos,nNewPos)
	-- 随机获得奖励
	local tRewardTip = {}
	local nHighProId = tWorldCup_Activities_Count["HighPro"]
	for i=1,nTimes do
		local nFlag,tReward = Probabil_RandomAward(tWorldCup_Activities_Random[nItemId],1)
		local nIndex = tReward[1]["tAward"][1]["Index"]
		local sRewardName = ""
		if nIndex == 1 then
			local tRandom = CommonFunc_Copy(tWorldCup_Activities_Random["Piece"])
			for a,b in pairs(tWorldCup_Activities_Count["List"]) do
				if b == nIndexNpcId then
					tRandom[1][a]["ItemChance"] = 7500
				end
			end
			for g=1,6 do
				local sLog = tWorldCup_Activities_Random["Piece"][1][g]["Log"]
				local sLogStep = tCheerData["LogStep"]
				tRandom[1][g]["Log"] = string.format(sLog,sLogStep)
			end
			local tNewReard = RewardTemplate_NewRandom(tRandom,1)
			local nRewardItemId = tNewReard[1]["tAward"][1]["RewardItem"][1]["Id"]
			sRewardName = tWorldCup_Activities_Text["SubList"][nRewardItemId]
		elseif nIndex == 8 and nItemId == nHighProId then
			-- 发型包限量
			local nGlobalId = tWorldCup_Activities_Count["NewGlobalId"]
			local nData = Get_SysDynaGlobalData(nGlobalId,0)
			if nData == 1 then
				RewardTemplate_UseItem(tWorldCup_Activities_Random[nItemId][1][3])
				sRewardName = tWorldCup_Activities_Text["Tip"][nItemId][3]
			else
				Sys_SetSynaGlobalData(nGlobalId,0,1)
				RewardTemplate_UseItem(tReward[1]["tAward"][1])
				sRewardName = tWorldCup_Activities_Text["Tip"][nItemId][nIndex]
				-- 获得发型公告
				local sText = tWorldCup_Activities_Text["BroadCast"][7]
				local sUserName = Get_UserName()
				local sNpcName = tWorldCup_Activities_Text["NpcName"][nIndexNpcId]
				Sys_SystemBroadcast(string.format(sText,sUserName,sNpcName))
			end
		else
			RewardTemplate_UseItem(tReward[1]["tAward"][1])
			sRewardName = tWorldCup_Activities_Text["Tip"][nItemId][nIndex]
		end
		table.insert(tRewardTip,sRewardName)
	end
	-- 提示对白
	-- 人气值
	local sTextIndex = tCheerData["RewardIndex"][nTimes]
	local sText = tWorldCup_Activities_Text[nNewNpcId][sTextIndex]
	tNpcGossip[nNpcId][sTextIndex] = string.format(sText,nCheer)
	--奖励文字
	if nTimes == 1 then
		local nTextIndex = tCheerData["RewardName"][nTimes]
		local sNewText = tWorldCup_Activities_Text[nNewNpcId]["Text"..nTextIndex]
		tNpcGossip[nNpcId]["Text"..nTextIndex] = Sys_CenterAline(tRewardTip[1],55).."\n"
	else
		for j=1,nTimes do
			local nNewIndex = tCheerData["RewardName"][nTimes][j]
			local sIndex = "Text"..nNewIndex
			local sRewardText = tWorldCup_Activities_Text[nNewNpcId][sIndex]
			tNpcGossip[nNpcId][sIndex] = Sys_CenterAline(tRewardTip[j],55).."\n"
		end
	end
	local sRewardDialog = tCheerData["Reward"][nTimes]
	LinkNpcGossipFunc_New(nNpcId,sRewardDialog)
end

function WorldCup_Activities_EmoneyAddCheer(nExNpcId,nItemId,nTimes)
	-- 点击选项前置判断
	local nNpcId = Get_NpcId()
	local nNewNpcId = tWorldCup_Activities_Count["BasicNewNpc"]
	if not WorldCup_Activities_OptionJudgy(nNpcId) then
		return
	end
	
	local tCheerData = tWorldCup_Activities_Count["Cheer"][nItemId]
	local nEmoney = tCheerData["Emoney"]*nTimes
	
	-- 天石不足
	local nUserEmoney = Get_UserEMoney(nUserId)
	if nUserEmoney <  nEmoney then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-- 背包不足
	local nSpace = RewardTemplate_GetRandomSpace(tWorldCup_Activities_Random[nItemId],1)
	local nSpaceNum = nSpace*nTimes
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-7")
		return
	end
	
	-- 是否有二次确认
	WorldCup_Activities_ClearStcInterval(4)
	local nData = WorldCup_Activities_GetStcValue(4)
	if nData >= 1 then
		-- 直接使用天石
		if not User_AddEMoney(-nEmoney) then
			return
		end
		local sLog = tCheerData["EmoneyLog"][nTimes]
		Sys_SaveActionFestivalLog(sLog)
		local sEmoneyLog = tCheerData["EmoneyRealLog"]
		Sys_SaveEmoneyBuy(string.format(sEmoneyLog,nEmoney,nEmoney))
		
		WorldCup_Activities_CheerReward(nNpcId,nItemId,nTimes)
		local sNewEmoneyLog = tCheerData["UseEmoneyLog"][nTimes]
		Sys_SaveEmoneyBuy(sNewEmoneyLog)
		return
	end
	-- 二次确认
	local sText = tWorldCup_Activities_Text[nNewNpcId]["Text241"]
	local sItemName = Get_ItemtypeName(nItemId)
	tNpcGossip[nNpcId]["Text241"] = string.format(sText,nEmoney,nTimes,sItemName)
	local sOption = tWorldCup_Activities_Text[nNewNpcId]["Option241"]
	tNpcGossip[nNpcId]["Option241"] = string.format(sOption,nEmoney)
	tNpcGossip[nNpcId]["OptionFunc241"] = "WorldCup_Activities_SureEmoneyAddCheer</N>"..nNpcId.."</N>"..nItemId.."</N>"..nTimes
	tNpcGossip[nNpcId]["OptionPoint242"] = "2-5"
	tNpcGossip[nNpcId]["OptionFunc251"] = "WorldCup_Activities_CloseSure</N>"..nNpcId.."</N>"..nItemId.."</N>"..nTimes
	LinkNpcGossipFunc_New(nNpcId,"2-4")
end

-- 二次确认
function WorldCup_Activities_SureEmoneyAddCheer(nExNpcId,nItemId,nTimes)
	-- 点击选项前置判断
	local nNpcId = Get_NpcId()
	local nNewNpcId = tWorldCup_Activities_Count["BasicNewNpc"]
	if not WorldCup_Activities_OptionJudgy(nNpcId) then
		return
	end
	
	local tCheerData = tWorldCup_Activities_Count["Cheer"][nItemId]
	local nEmoney = tCheerData["Emoney"]*nTimes
	-- 天石不足
	local nUserEmoney = Get_UserEMoney(nUserId)
	if nUserEmoney < nEmoney then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-- 背包不足
	local nSpace = RewardTemplate_GetRandomSpace(tWorldCup_Activities_Random[nItemId],1)
	local nSpaceNum = nSpace*nTimes
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-7")
		return
	end
	
	if not User_AddEMoney(-nEmoney) then
		return
	end
	local sLog = tCheerData["EmoneyLog"][nTimes]
	Sys_SaveActionFestivalLog(sLog)
	local sEmoneyLog = tCheerData["EmoneyRealLog"]
	Sys_SaveEmoneyBuy(string.format(sEmoneyLog,nEmoney,nEmoney))
	
	local sNewEmoneyLog = tCheerData["UseEmoneyLog"][nTimes]
	Sys_SaveEmoneyBuy(sNewEmoneyLog)
	
	WorldCup_Activities_CheerReward(nNpcId,nItemId,nTimes)
end

-- 屏蔽二次确认
function WorldCup_Activities_CloseSure(nExNpcId,nItemId,nTimes)
	-- 点击选项前置判断
	local nNpcId = Get_NpcId()
	local nNewNpcId = tWorldCup_Activities_Count["BasicNewNpc"]
	if not WorldCup_Activities_OptionJudgy(nNpcId) then
		return
	end
	
	WorldCup_Activities_AddStcValue(4,1)
	-- 返回主对白
	if nItemId == 3308881 then
		WorldCup_Activities_LowProp(nNpcId,nItemId)
	else
		WorldCup_Activities_HighProp(nNpcId,nItemId)
	end
end

-- 查看球迷助威榜
function WorldCup_Activities_LookFanCheer(nExNpcId)
	local nNpcId = Get_NpcId()
	local nBasicNpcId = WorldCup_Activities_GetNpcID(nNpcId)
	local tRankData = RankingFunc_GetNowData(nBasicNpcId)
	local nNewNpcId = tWorldCup_Activities_Count["BasicNewNpc"]
	local nBasicNpc = tWorldCup_Activities_Count["BasicNpc"]
	
	for i,v in pairs(tWorldCup_Activities_Count["Ranking"]) do
		local sText = tWorldCup_Activities_Text[nNewNpcId][v]
		-- 列名
		local sListName = tWorldCup_Activities_Text[nBasicNpc]["ListName"]
		local sLeft = string.format(sListName,i)
		local sMiddle = ""
		local sRight = ""
		if tRankData[i] == nil then
			sMiddle = tWorldCup_Activities_Text["NULL"]
			sRight = 0
		else
			sMiddle = tRankData[i]["UserName"]
			sRight = tRankData[i]["Score"]
		end
		tNpcGossip[nNpcId][v] = Sys_CenterAline(sLeft,9,sRight,35,sMiddle,65).."\n"
	end
	-- 标题
	local sIndex = tWorldCup_Activities_Count["RankingText"][nBasicNpcId]
	tNpcGossip[nNpcId]["Text411"] = tWorldCup_Activities_Text[nNewNpcId][sIndex]
	LinkNpcGossipFunc_New(nNpcId,"4-1")
end

---------------------------------------------------物品-------------------------------------------
-- 物品过期删除
function WorldCup_Activities_OverDel(nItemId,nIndex)
	local sTime = tWorldCup_Activities_Count["ActivityTime"]
	if nIndex == 2 then
		sTime = tWorldCup_Activities_Count["ItemUseTime"]
	end
	-- 过期删除
	if not Sys_ChkFullTime(sTime) then
		local nItemNum = Get_CountItemType(nItemId,0) 
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tWorldCup_Activities_Text["OverDue"][nItemId])
			local sLog = tWorldCup_Activities_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nItemId,nItemNum))
 		end
		return false
	end
	
	return true
end

-- 助威棒
function WorldCup_Activities_UseItem(nItemId)
	-- 过期删除
	if not WorldCup_Activities_OverDel(nItemId,1) then
		return
	end
	
	-- 寻路
	NpcPosition_PathFind(tWorldCup_Activities_Count["BasicNpc"])
end

-- 幸运外套礼包
function WorldCup_Activities_UsePackItem(nItemId)
	-- 过期删除
	if not WorldCup_Activities_OverDel(nItemId,1) then
		return
	end
	
	-- 背包不足
	if not RewardTemplate_ChkRandomSpace(tWorldCup_Activities_Random[nItemId],1) then
		User_TalkChannel2005(tWorldCup_Activities_Text[nItemId]["NoSpace"])
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId,nMonopoly,nSash,nUserId) then
		RewardTemplate_NewRandom(tWorldCup_Activities_Random[nItemId],1)
		WorldCup_Activities_SaveEmoney(10)
	end
end

-- 球星发型可选包
function WorldCup_Activities_UseNewPackItem(nItemId)
	-- 过期删除
	if not WorldCup_Activities_OverDel(nItemId,2) then
		return
	end
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end

-- 选择兑换的发型
function WorldCup_Activities_NewExchange(nItemId,nChooseItem)
	-- 过期删除
	if not WorldCup_Activities_OverDel(nItemId,2) then
		return
	end
	
	-- 背包不足
	if not RewardTemplate_ChkRandomSpace(tWorldCup_Activities_Random[nItemId],1) then
		User_TalkChannel2005(tWorldCup_Activities_Text[nItemId]["NoSpace"])
		return
	end
	
	local tReward = tWorldCup_Activities_Reward[nItemId]
	tReward["RewardItem"][1]["Id"] = nChooseItem
	-- 判断空间
	if not RewardTemplate_CheckSpace(tReward) then
		return
	end
	
	WorldCup_Activities_SaveEmoney(12)
	RewardTemplate_UseItem(tReward)
end


-- 球衣碎片可选包
function WorldCup_Activities_ChoosePiece(nItemId)
	-- 过期删除
	if not WorldCup_Activities_OverDel(nItemId,1) then
		return
	end
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end

-- 选择兑换的时装碎片
function WorldCup_Activities_Exchange(nItemId,nChooseItem)
	-- 过期删除
	if not WorldCup_Activities_OverDel(nItemId,1) then
		return
	end
	
	local tReward = tWorldCup_Activities_Reward[nItemId]
	tReward["RewardItem"][1]["Id"] = nChooseItem
	-- 判断空间
	if not RewardTemplate_CheckSpace(tReward) then
		return
	end
	
	RewardTemplate_UseItem(tReward)
	WorldCup_Activities_SaveEmoney(9)
end

-- 时装外套碎片
function WorldCup_Activities_CoatPieceItem(nItemId)
	-- 过期删除
	if not WorldCup_Activities_OverDel(nItemId,2) then
		return
	end
	
	if not Item_ChkItem(nItemId) then
		return
	end
	
	local nCoatPieceItem = tWorldCup_Activities_Count["CoatPieceItem"]
	-- 对白设置
	local nCoatId = tWorldCup_Activities_Count["PieceCoat"][nItemId]
	local sItemName = Get_ItemtypeName(nCoatId)
	local sTextFirst = tWorldCup_Activities_Text[nCoatPieceItem]["Text111"]
	local sOption = tWorldCup_Activities_Text[nCoatPieceItem]["Option111"]
	tItem[nItemId]["Text111"] = string.format(sTextFirst,sItemName)
	-- tItem[nItemId]["Option111"] = string.format(sOption,sItemName)
	-- 合成【外套名】外套（15个碎片）
	tItem[nItemId]["OptionFunc111"] = "WorldCup_Activities_Compose</N>"..nItemId
	-- 合成2个碎片（1个碎片）
	tItem[nItemId]["OptionFunc112"] = "WorldCup_Activities_BetItem</N>"..nItemId
	 -- 3、兑换100气力值（1个碎片）
	tItem[nItemId]["OptionFunc113"] = "WorldCup_Activities_ExchangeStrength</N>"..nItemId

	-- 打开对白
	LinkItemGossipFunc_New(nItemId,"1-1")
end

-- 合成时装外套碎片
function WorldCup_Activities_Compose(nItemId)
	-- 过期删除
	if not WorldCup_Activities_OverDel(nItemId,2) then
		return
	end
	
	local nCoatPieceItem = tWorldCup_Activities_Count["CoatPieceItem"]
	-- 判断物品数量
	local nCoatId = tWorldCup_Activities_Count["PieceCoat"][nItemId]
	local sItemName = Get_ItemtypeName(nCoatId)
	local nItemNum = tWorldCup_Activities_Reward[2]["DeleteItem"][1]["ItemNum"]
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		local sTip = tWorldCup_Activities_Text[nCoatPieceItem][1]["NoPiece"]
		Sys_MsgBox(string.format(sTip,sItemName))
		return
	end
	
	local tReward = CommonFunc_Copy(tWorldCup_Activities_Reward[2])
	tReward["DeleteItem"][1]["Id"] = nItemId
	tReward["RewardItem"][1]["Id"] = nCoatId
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tReward) then
		return
	end
	
	-- 合成外套
	RewardTemplate_UseItem(tReward)
	local sNewEmoneyLog = tWorldCup_Activities_Log["Emoney"][5]
	Sys_SaveEmoneyBuy(string.format(sNewEmoneyLog,nItemId))
	-- local sFunc = "WorldCup_Activities_CoatPieceItem</N>"..nItemId
	-- 提示
	local sUserName = Get_UserName()
	local sBox = tWorldCup_Activities_Text[nCoatPieceItem][1]["SuccessBox"]
	local sTalk = tWorldCup_Activities_Text[nCoatPieceItem][1]["Success"]
	Sys_MsgBox(string.format(sBox,sItemName))
	User_TalkChannel2005(string.format(sTalk,sItemName))
	-- 全服公告
	local sBroadCast = tWorldCup_Activities_Text[nCoatPieceItem][1]["BroadCast"]
	Sys_SystemBroadcast(string.format(sBroadCast,sUserName,sItemName))
end

-- 合成2个碎片（1个碎片）
function WorldCup_Activities_BetItem(nItemId)
	-- 过期删除
	if not WorldCup_Activities_OverDel(nItemId,2) then
		return
	end
	
	local nCoatPieceItem = tWorldCup_Activities_Count["CoatPieceItem"]
	-- 判断物品数量
	local nCoatId = tWorldCup_Activities_Count["PieceCoat"][nItemId]
	local sItemName = Get_ItemtypeName(nCoatId)
	local sFunc = "WorldCup_Activities_CoatPieceItem</N>"..nItemId
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		local sTip = tWorldCup_Activities_Text[nCoatPieceItem][2]["NoPiece"]
		Sys_MsgBox(sTip)
		return
	end
	
	local tReward = CommonFunc_Copy(tWorldCup_Activities_Reward[3])
	tReward["DeleteItem"][1]["Id"] = nItemId
	tReward["RewardItem"][1]["Id"] = nItemId
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tReward) then
		return
	end
	
	-- 碎片赌
	local nMin = tWorldCup_Activities_Count["PieceMin"]
	local nMax = tWorldCup_Activities_Count["PieceMax"]
	if Sys_Random(nMin,nMax) then
		-- 成功
		RewardTemplate_UseItem(tReward)
		-- 提示
		local sBox = tWorldCup_Activities_Text[nCoatPieceItem][2]["SuccessBox"]
		local sTalk = tWorldCup_Activities_Text[nCoatPieceItem][2]["Success"]
		Sys_MsgBox(string.format(sBox,sItemName),sFunc)
		User_TalkChannel2005(string.format(sTalk,sItemName))
		local sEmoneyLog = tWorldCup_Activities_Log["Emoney"][7]
		Sys_SaveEmoneyBuy(string.format(sEmoneyLog,nItemId))
	else
		-- 失败
		local tNewReward = CommonFunc_Copy(tWorldCup_Activities_Reward[4])
		tNewReward["DeleteItem"][1]["Id"] = nItemId
		local sLog = tWorldCup_Activities_Reward[4]["Log"]
		RewardTemplate_UseItem(tNewReward)
		Sys_SaveActionFestivalLog(string.format(sLog,nItemId))
		-- 光效
		local sSzObj = tWorldCup_Activities_Effect[1]["EffectObj"]
		local sEffect = tWorldCup_Activities_Effect[1]["Effect"]
		User_EffectAdd(sSzObj,sEffect,nUserId)
		-- 提示
		local sTip = tWorldCup_Activities_Text[nCoatPieceItem][2]["Fail"]
		Sys_MsgBox(sTip,sFunc)
		local sNewEmoneyLog = tWorldCup_Activities_Log["Emoney"][8]
		Sys_SaveEmoneyBuy(string.format(sNewEmoneyLog,nItemId))
	end
end

-- 兑换100气力值（1个碎片）
function WorldCup_Activities_ExchangeStrength(nItemId)
	-- 过期删除
	if not WorldCup_Activities_OverDel(nItemId,2) then
		return
	end
	
	-- 直接换气
	local tReward = CommonFunc_Copy(tWorldCup_Activities_Reward[1])
	tReward["DeleteItem"][1]["Id"] = nItemId
	tReward["DeleteItem"][1]["ItemNum"] = nItemNum
	local nStrengthValue = tWorldCup_Activities_Reward[1]["RewardStrengthValue"]["Value"]
	tReward["RewardStrengthValue"]["Value"] = tWorldCup_Activities_Count["StrengthValue"][nItemId]
	RewardTemplate_UseItemAndMsg(tReward)
	
	local sEmoneyLog = tWorldCup_Activities_Log["Emoney"][6]
	Sys_SaveEmoneyBuy(string.format(sEmoneyLog,nItemId))
	
	-- 还有碎片返回对白
	if Item_ChkItem(nItemId) then
		if nItemId <= 3308891 then
			WorldCup_Activities_CoatPieceItem(nItemId)
		else
			WorldCup_Activities_CommemorativeCoin(nItemId)
		end
	end
end

-- 世界杯纪念币/碎片
function WorldCup_Activities_CommemorativeCoin(nItemId)
	-- 过期删除
	if not WorldCup_Activities_OverDel(nItemId,2) then
		return
	end
	
	if not Item_ChkItem(nItemId) then
		return
	end
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end

-- 升级为光效球衣
function WorldCup_Activities_UpCoatDialog(nItemId)
	-- 过期删除
	if not WorldCup_Activities_OverDel(nItemId,2) then
		return
	end
	
	-- 判断背包外套
	for i,v in pairs(tWorldCup_Activities_Count["Option"]) do
		if Item_ChkMulItem(v["Id"],v["Id"],1,v["Monopoly"],nSash,nUserId,0) then
			LinkItemGossipFunc_New(nItemId,"2-1")
			return
		end
	end
	
	LinkItemGossipFunc_New(nItemId,"2-2")
end

-- 球衣升级成珍贵的光效球衣
function WorldCup_Activities_UpCoat(nItemId,nCoatId,nMonopoly)
	-- 过期删除
	if not WorldCup_Activities_OverDel(nItemId,2) then
		return
	end
	
	-- 无纪念币
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(tWorldCup_Activities_Text[nItemId]["NoItemNew"])
		return
	end
	
	-- 无外套
	if not Item_ChkMulItem(nCoatId,nCoatId,1,nMonopoly,0,0,0) then
		Sys_MsgBox(tWorldCup_Activities_Text[nItemId]["NoItem"])
		return
	end
	
	local tReward = {}
	if nMonopoly == 0 then
		tReward = tWorldCup_Activities_Reward[5]
	else
		tReward = tWorldCup_Activities_Reward[6]
	end
	tReward["DeleteItem"][1]["Id"] = nCoatId
	tReward["RewardItem"][1]["Id"] = tWorldCup_Activities_Count["EffectCoat"][nCoatId]
	RewardTemplate_UseItemAndMsg(tReward)
end

-- 合成外套冠军版
function WorldCup_Activities_CommemorativeCoinCompose(nItemId)
	-- 过期删除
	if not WorldCup_Activities_OverDel(nItemId,2) then
		return
	end
	
	-- 判断碎片
	local nItemNum = tWorldCup_Activities_Reward[nItemId]["DeleteItem"][1]["ItemNum"]
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		Sys_MsgBox(tWorldCup_Activities_Text[nItemId]["NoItem"])
		return
	end
	
	LinkItemGossipFunc_New(nItemId,"2-1")
end

-- 确认合成
function WorldCup_Activities_ComposeCoat(nItemId,nCoatId)
	-- 过期删除
	if not WorldCup_Activities_OverDel(nItemId,2) then
		return
	end
	
	-- 判断碎片
	local tReward = CommonFunc_Copy(tWorldCup_Activities_Reward[nItemId])
	local nItemNum = tReward["DeleteItem"][1]["ItemNum"]
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		Sys_MsgBox(tWorldCup_Activities_Text[nItemId]["NoItem"])
		return
	end
	
	-- 判断背包空间
	tReward["RewardItem"][1]["Id"] = nCoatId
	if not RewardTemplate_CheckSpace(tReward) then
		return
	end
	
	RewardTemplate_UseItem(tReward)
	local sEmoneyLog = tWorldCup_Activities_Log["Emoney"][5]
	Sys_SaveEmoneyBuy(string.format(sEmoneyLog,nItemId))
	-- 105弹框
	local sText = tWorldCup_Activities_Text[nItemId]["Reward"]
	local sItemName = Get_ItemtypeName(nCoatId)
	local sFunc = "WorldCup_Activities_CommemorativeCoin</N>"..nItemId
	Sys_MsgBox(string.format(sText,sItemName),sFunc)
	-- 全服公告
	local sBroadCast = tWorldCup_Activities_Text[nItemId]["BroadReward"]
	local sUserName = Get_UserName()
	Sys_SystemBroadcast(string.format(sBroadCast,sUserName,sItemName))
end

-- 显著功勋礼包
function WorldCup_Activities_ExternalPack()
	-- 活动时间
	if not Sys_ChkFullTime(tWorldCup_Activities_Count["ActivityTime"]) then
		return
	end
	
	-- 等级判断
	if not WorldCup_Activities_LevelJudgy() then
		return
	end
	
	RewardTemplate_NewRandom(tWorldCup_Activities_Random[1],1,nNowUserId)
	WorldCup_Activities_SaveEmoney(1)
end

-- 打开礼包同时获得人气值
function WorldCup_Activities_OpenGetCheer(nItemId,nCheer)
	if RewardTemplate_UseItemAndMsg(tWorldCup_Activities_ShopItem[nItemId]) then
		if Sys_ChkFullTime(tWorldCup_Activities_Count["ActivityTime"]) then
			-- 计算索引npc
			local nIndexNpcId = tWorldCup_Activities_Count["ItemToNpc"][nItemId]
			-- 设置掩码
			local nOldPos = RankingFunc_GetUserInRank(nIndexNpcId,nNowUserId)
			WorldCup_Activities_AddStcValue(nIndexNpcId,nCheer)
			local nStcValue = WorldCup_Activities_GetStcValue(nIndexNpcId)
			-- 刷新排行榜
			RankingFunc_SetInfo(nIndexNpcId,nStcValue)
			-- 设置总人气值
			WorldCup_Activities_AddTotalCheer(nIndexNpcId,nCheer)
			local nNewPos = RankingFunc_GetUserInRank(nIndexNpcId,nNowUserId)
			-- 排行全服公告
			WorldCup_Activities_BroadCast(nIndexNpcId,nOldPos,nNewPos)
		end
	end
end

-- 3308894,'狂野子弹头' 发型使用
function WorldCup_Activities_UseHairStyle(nItemId)
	-- 判断玩家性别
	local nUserSex = Get_UserSex(nUserId)
	-- 不是男的
	if nUserSex == 2 then
		User_TalkChannel2005(tWorldCup_Activities_Text["NoSex"])
		return
	end
	
	-- 获得发型
	if not Item_ChkItem(nItemId) then
		return 
	end
	
	local nHairTypeId = tWorldCup_Activities_Count["hair"][nItemId]
	if User_HairFaceCheckExist(0,nHairTypeId) then
		-- 提示玩家已有该发型
		User_TalkChannel2005(tWorldCup_Activities_Text["HaveHair"])
		return
	end
	
	if not Item_DelItem(nItemId) then
		return 
	end
	local sLog = tWorldCup_Activities_Log["DelItem"]
	Sys_SaveActionFestivalLog(string.format(sLog,nItemId))
	
	local sItemName = Get_ItemtypeName(nItemId)
	if not User_HairFaceCheckExist(0,nHairTypeId) then
		User_HairFaceAward(0,nHairTypeId,0)
		local sText = tWorldCup_Activities_Text["GetItem"]
		User_TalkChannel2005(string.format(sText,sItemName))
	end
end

-- 答题冠军礼包
function WorldCup_Activities_OpenCheerItem(nItemId)
		-- 过期删除
	if not WorldCup_Activities_OverDel(nItemId,1) then
		return
	end
	
	RewardTemplate_UseItem(tWorldCup_Activities_Reward[nItemId])
end
---------------------------------------------------怪物-------------------------------------------
function WorldCup_Activities_KillMonster(nMonsterId)
	-- 活动时间
	if not Sys_ChkFullTime(tWorldCup_Activities_Count["ActivityTime"]) then
		return
	end
	
	-- 等级不足
	if not WorldCup_Activities_LevelJudgy() then
		return
	end
	
	-- 背包空间
	local nSpaceNum = RewardTemplate_GetRandomSpace(tWorldCup_Activities_Random["KillMonster"],1)
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum) then
		local sText = tWorldCup_Activities_Text["KillMoster"]["NoSpace"]
		User_TalkChannel2005(string.format(sText,nSpaceNum))
		return
	end
	
	
	-- 隔天重置
	WorldCup_Activities_ClearStcInterval(3)
	local nLimit = tWorldCup_Activities_Stc[3]["Limit"]
	-- 今日上限2次
	local nData = WorldCup_Activities_GetStcValue(3)
	if nData >= nLimit then
		return
	end
	
	RewardTemplate_NewRandom(tWorldCup_Activities_Random["KillMonster"],1)
	local nNewData = WorldCup_Activities_GetStcValue(3)
	if nData ~= nNewData then
		Sys_SaveEmoneyBuy(tWorldCup_Activities_Random["KillMonster"][1][1]["EmoneyLog"])
	end
	-- 最后一个给105弹框提示
	-- 今日上限
	local nNewData = WorldCup_Activities_GetStcValue(3)
	if nNewData == nLimit then
		WorldCup_Activities_AddStcValue(3,1)
		Sys_MsgBox(tWorldCup_Activities_Text["KillMoster"]["FullLimit"])
	end
end

-- 服务器启动
function WorldCup_Activities_StartServer()
	-- 总榜npc
	local nTotalNpc = tWorldCup_Activities_Count["BasicNpc"]
	tWorldCup_Activities_Ranking[nTotalNpc] = {}
	local nNewNpcId = tWorldCup_Activities_Count["BasicNewNpc"]
	local nGlobalId = tWorldCup_Activities_Count["GlobalId"]
	for i=0,5 do
		local nNpcId = nNewNpcId + i
		local nData = Get_SysDynaGlobalData(nGlobalId,i)
		tWorldCup_Activities_Ranking[nTotalNpc][i+1] = {}
		tWorldCup_Activities_Ranking[nTotalNpc][i+1]["Id"] = nNpcId
		tWorldCup_Activities_Ranking[nTotalNpc][i+1]["Score"] = nData
	end
	table.sort(tWorldCup_Activities_Ranking[nTotalNpc],function(a,b) return a["Score"] > b["Score"] end)
	-- 昨日总榜
	tWorldCup_Activities_OldRanking[nTotalNpc] = {}
	local nOldGlobalId = tWorldCup_Activities_Count["OldGlobalId"]
	for j=0,5 do
		local nNpcId = nNewNpcId + j
		local nData = Get_SysDynaGlobalData(nOldGlobalId,j)
		tWorldCup_Activities_OldRanking[nTotalNpc][j+1] = {}
		tWorldCup_Activities_OldRanking[nTotalNpc][j+1]["Id"] = nNpcId
		tWorldCup_Activities_OldRanking[nTotalNpc][j+1]["Score"] = nData
	end
	table.sort(tWorldCup_Activities_OldRanking[nTotalNpc],function(a,b) return a["Score"] > b["Score"] end)
	if not Sys_ChkFullTime(tWorldCup_Activities_Count["ActivityTime"]) then
		WorldCup_Activities_OutMoveAllNpc()
		return
	end
	local nMoverNpc = tWorldCup_Activities_OldRanking[nTotalNpc][1]["Id"]
	-- 第一天移出所有npc,不移出站位npc
	if not Sys_ChkFullTime(tWorldCup_Activities_Count["FirstDayTime"]) then
		WorldCup_Activities_MoveNpc(nMoverNpc)
	else
		WorldCup_Activities_MoveAllNpc()
	end
end

-- 00点改动站位
function WorldCup_Activities_TimeMoveNPc()
	if not Sys_ChkFullTime(tWorldCup_Activities_Count["ActivityTime"]) then
		WorldCup_Activities_OutMoveAllNpc()
		return
	end
	-- 第一天不移出站位npc
	if Sys_ChkFullTime(tWorldCup_Activities_Count["FirstDayTime"]) then
		WorldCup_Activities_MoveAllNpc()
		return
	end
	-- 今日总榜复制到昨日
	local nTotalNpc = tWorldCup_Activities_Count["BasicNpc"]
	local nNewNpcId = tWorldCup_Activities_Count["BasicNewNpc"]
	local nGlobalId = tWorldCup_Activities_Count["GlobalId"]
	local nOldGlobalId = tWorldCup_Activities_Count["OldGlobalId"]
	if Sys_ChkDayTime(tWorldCup_Activities_Count["ClearTime"]) then
		local sDataStr = Get_SysDynaGlobalDataStr(nGlobalId,5)
		if sDataStr ~= "1" then
			tWorldCup_Activities_Ranking[nTotalNpc] = {}
			tWorldCup_Activities_OldRanking[nTotalNpc] = {}
			for i=0,5 do
				local nNpcId = nNewNpcId + i
				local nData = Get_SysDynaGlobalData(nGlobalId,i)
				Sys_SetSynaGlobalData(nGlobalId,i,0)
				Sys_SetSynaGlobalData(nOldGlobalId,i,nData)
				tWorldCup_Activities_Ranking[nTotalNpc][i+1] = {}
				tWorldCup_Activities_Ranking[nTotalNpc][i+1]["Id"] = nNpcId
				tWorldCup_Activities_Ranking[nTotalNpc][i+1]["Score"] = 0
				tWorldCup_Activities_OldRanking[nTotalNpc][i+1] = {}
				tWorldCup_Activities_OldRanking[nTotalNpc][i+1]["Id"] = nNpcId
				tWorldCup_Activities_OldRanking[nTotalNpc][i+1]["Score"] = nData
			end
			Sys_SetSynaGlobalDataStr(nGlobalId,5,"1")
		end
	else
		Sys_SetSynaGlobalDataStr(nGlobalId,5,"0")
	end
	table.sort(tWorldCup_Activities_OldRanking[nTotalNpc],function(a,b) return a["Score"] > b["Score"] end)
	local nMoverNpc = tWorldCup_Activities_OldRanking[nTotalNpc][1]["Id"]
	WorldCup_Activities_MoveNpc(nMoverNpc)
end

function WorldCup_Activities_ResetDynaGlobal()
	-- 清除动态码
	local nNewGlobalID = tWorldCup_Activities_Count["NewGlobalId"]
	Sys_SetSynaGlobalData(nNewGlobalID,0,0)
end

-- 排行榜发奖
function WorldCup_Activities_RankingMail(nNpcId,nRanking)
	local tReward = tWorldCup_Activities_RankingReward[nRanking]
	if nRanking <= 3 then
		local nItemId = tWorldCup_Activities_RankingReward["NpcItem"][nNpcId]
		tReward["RewardItem"][1]["Id"] = nItemId 
	end
	RewardTemplate_Reward(tReward)
end

-- 邮件文字
function WorldCup_Activities_InitMailText(nIndex)
	-- 特殊处理
	for i,v in pairs(tRankingFunc_Info[nIndex]["Mail"]["Reward"]) do
		v["Sender"] = tWorldCup_Activities_Text["NpcName"][nIndex]
		if i > 1 then
			local sNeedText = tWorldCup_Activities_Text["RankingMail"]["NewContent"]
			v["Content"] = string.format(sNeedText,i)
		else
			v["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
		end
	end
end

-- 外套仓库
function WorldCup_Activities_CheckItemToCoat(nUserId)
	-- 普通外套数量
	local nCoatNum = 0
	-- 光效外套数量
	local nEffectCoatNum = 0
	local nCoatType = 1
	--普通外套数量
	for i,v in pairs(tWorldCup_Activities_Count["NormalCoatId"]) do
		--检测是否有某个ID的外套
		if User_ChkStorageCoat(nCoatType,v,nUserId) then
			nCoatNum = nCoatNum + 1
		end
	end
	for a,b in pairs(tWorldCup_Activities_Count["EffectCoatId"]) do
		--光效外套数量
		if User_ChkStorageCoat(nCoatType,b,nUserId) then
			nEffectCoatNum = nEffectCoatNum + 1
		end
	end
	-- 普通外套
	local nNormalTitleId = tWorldCup_Activities_Count["Title"][1]
	if nCoatNum >= 1 then
		-- if not User_CheckTitle(nNormalTitleId,nNormalTitleId,nUserId) then
			-- User_AwardTitle(nNormalTitleId,nNormalTitleId,0,nUserId)
		-- end
	else
		if User_CheckTitle(nNormalTitleId,nNormalTitleId,nUserId) then
			User_DeleteTitle(nNormalTitleId,nNormalTitleId,nUserId)
		end
	end
	-- 光效外套
	local nEffectTitleId = tWorldCup_Activities_Count["Title"][2]
	if nEffectCoatNum >= 1 then
		-- if not User_CheckTitle(nEffectTitleId,nEffectTitleId,nUserId) then
			-- User_AwardTitle(nEffectTitleId,nEffectTitleId,0,nUserId)
		-- end
	else
		if User_CheckTitle(nEffectTitleId,nEffectTitleId,nUserId) then
			User_DeleteTitle(nEffectTitleId,nEffectTitleId,nUserId)
		end
	end
	-- 总称号
	local nTitleId = tWorldCup_Activities_Count["Title"][3]
	if nEffectCoatNum >= 6 then
		-- if not User_CheckTitle(nTitleId,nTitleId,nUserId) then
			-- User_AwardTitle(nTitleId,nTitleId,0,nUserId)
		-- end
	else
		if User_CheckTitle(nTitleId,nTitleId,nUserId) then
			User_DeleteTitle(nTitleId,nTitleId,nUserId)
		end
	end
end

-- 弹框寻路
function WorldCup_Activities_PathFind(nIndex)
	local nUserMapId = Get_UserMapId(nUserId)
	local nMapId = tWorldCup_Activities_Count["MapId"]
	local nPosX = tWorldCup_Activities_Count["GotoPosX"]
	local nPosY = tWorldCup_Activities_Count["GotoPosY"]
	if nUserMapId == nMapId then
		Sys_GotoSomeWhere(nPosX,nPosY,nMapId,0)
	else
		User_TalkChannel2005(tWorldCup_Activities_Text["OutMap"])
	end
end

--------------------------------------模块部分配置-------------------------------------------
-- 22944 征服足协主席
tNpcFace[6076] = 1593
tNpcGossip[22944] = tNpcGossip[22944] or DefaultNpc:new{}
tNpcGossip[22944]["OptionHidden"] = 1
tNpcGossip[22944]["DialogueText"] = tWorldCup_Activities_Text[22944] 
-- 活动前
tNpcGossip[22944]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1114,1115,1112,1113}
tNpcGossip[22944]["tOption1-1"] = {111}
tNpcGossip[22944]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tWorldCup_Activities_Count["ActivityTime"])
end

-- 活动后
tNpcGossip[22944]["Text1-2"] = {111,112,121}
tNpcGossip[22944]["tOption1-2"] = {121}
tNpcGossip[22944]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tWorldCup_Activities_Count["ActivityTime"])
end

-- 活动中
-- 【等级不足】
tNpcGossip[22944]["Text1-3"] = {111,112,131,132,133,134,135,115,116,117,118,119,1110,1111,1114,1115,1112,1113}
tNpcGossip[22944]["tOption1-3"] = {131}
tNpcGossip[22944]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tWorldCup_Activities_Count["ActivityTime"]) and not WorldCup_Activities_LevelJudgy()
end

-- 活动中
-- 【等级达到】
tNpcGossip[22944]["Text1-4"] = {111,112,131,132,133,134,135,141,142,143,144,115,117,118,119,1110,1111,1114,1115,1112,1113}
tNpcGossip[22944]["tOption1-4"] = {141,142,143,144}
tNpcGossip[22944]["ChkFunc1-4"] = function ()
	return Sys_ChkFullTime(tWorldCup_Activities_Count["ActivityTime"]) and WorldCup_Activities_LevelJudgy()
end
-- 1、参与答题
tNpcGossip[22944]["OptionFunc141"] = "WorldCup_Activities_JoinInAnswer</N>22944"
-- 2、查看球星魅力榜
tNpcGossip[22944]["OptionFunc142"] = "WorldCup_Activities_StarCharmRanking</N>22944"
-- 3、足球庆典指南-- 打开内嵌页面
tNpcGossip[22944]["OptionFunc143"] = "WorldCup_Activities_LinkWeb</N>22944"
-- 4、一会儿再来

-- 【今日答过题目】 105提示
-- 【回答正确】 系统提示
-- 【回答完毕十道题】 105提示

-- 接2、查看球星魅力榜
tNpcGossip[22944]["Text2-1"] = {211,212,213,214,215,216,217,218,219,212,2110}
tNpcGossip[22944]["tOption2-1"] = {211}
-- 真是星光璀璨==跳回主对白
tNpcGossip[22944]["OptionPoint211"] = 1

-- 接3、足球庆典指南
tNpcGossip[22944]["Text2-2"] = {221,212,222,223,224,225,226,227,228,229,2210,2211,2212,2213,212}
tNpcGossip[22944]["tOption2-2"] = {221}
-- 我知道了==跳回主对白
tNpcGossip[22944]["OptionPoint221"] = 1


-- 22947 【埃及队】萨拉赫
tNpcFace[6079] = 1534
tNpcGossip[22947] = tNpcGossip[22947] or DefaultNpc:new{}
tNpcGossip[22947]["OptionHidden"] = 1
tNpcGossip[22947]["DialogueText"] = tWorldCup_Activities_Text[22947]
-- 活动前
tNpcGossip[22947]["Text1-1"] = {111,112,113,114,115,116,117,118,1112,119,1114,1115,1116}
tNpcGossip[22947]["tOption1-1"] = {111}
tNpcGossip[22947]["ChkFunc1-1"] = function ()
	-- 设置对白
	local nBasicNpc = tWorldCup_Activities_Count["BasicNewNpc"]
	local nNpcId = Get_NpcId() or nBasicNpc
	local nBasicNpcId = WorldCup_Activities_GetNpcID(nNpcId)
	tNpcGossip[nNpcId]["Text111"] = tWorldCup_Activities_Text[nBasicNpcId]["Text111"]
	tNpcGossip[nNpcId]["Text112"] = tWorldCup_Activities_Text[nBasicNpcId]["Text112"]
	tNpcGossip[nNpcId]["Text113"] = tWorldCup_Activities_Text[nBasicNpcId]["Text113"]
	if nNpcId >= 22951 and nNpcId <= 22952 then
		tNpcGossip[nNpcId]["Text119"] = tWorldCup_Activities_Text[nBasicNpcId]["Text119"]
		tNpcGossip[nNpcId]["Text1114"] = tWorldCup_Activities_Text[nBasicNpcId]["Text1114"]
		tNpcGossip[nNpcId]["Text1115"] = tWorldCup_Activities_Text[nBasicNpcId]["Text1115"]
		tNpcGossip[nNpcId]["Text1116"] = tWorldCup_Activities_Text[nBasicNpcId]["Text1116"]
	elseif nNpcId >= 22957 and nNpcId <= 22958 then
		tNpcGossip[nNpcId]["Text119"] = tWorldCup_Activities_Text[nBasicNpcId]["Text119"]
		tNpcGossip[nNpcId]["Text1114"] = tWorldCup_Activities_Text[nBasicNpcId]["Text1114"]
		tNpcGossip[nNpcId]["Text1115"] = tWorldCup_Activities_Text[nBasicNpcId]["Text1115"]
		tNpcGossip[nNpcId]["Text1116"] = tWorldCup_Activities_Text[nBasicNpcId]["Text1116"]
	else
		tNpcGossip[nNpcId]["Text119"] = tWorldCup_Activities_Text[nBasicNpcId]["Text119"]
		tNpcGossip[nNpcId]["Text1114"] = ""
		tNpcGossip[nNpcId]["Text1115"] = ""
		tNpcGossip[nNpcId]["Text1116"] = ""
	end
	return CommonFunc_GetBeforeActivityTime(tWorldCup_Activities_Count["ActivityTime"])
end

-- 活动后
tNpcGossip[22947]["Text1-2"] = {111,112,121}
tNpcGossip[22947]["tOption1-2"] = {121}
tNpcGossip[22947]["ChkFunc1-2"] = function ()
	-- 设置对白
	local nBasicNpc = tWorldCup_Activities_Count["BasicNewNpc"]
	local nNpcId = Get_NpcId() or nBasicNpc
	local nBasicNpcId = WorldCup_Activities_GetNpcID(nNpcId)
	tNpcGossip[nNpcId]["Text121"] = tWorldCup_Activities_Text[nBasicNpcId]["Text121"]
	return not Sys_ChkFullTime(tWorldCup_Activities_Count["ActivityTime"])
end

-- 活动中
-- 【等级不足】
tNpcGossip[22947]["Text1-3"] = {111,112,131,132,114,115,116,117,118,1112,119,1114,1115,1116}
tNpcGossip[22947]["tOption1-3"] = {131}
tNpcGossip[22947]["ChkFunc1-3"] = function ()
	local nBasicNpc = tWorldCup_Activities_Count["BasicNewNpc"]
	local nNpcId = Get_NpcId() or nBasicNpc
	local nBasicNpcId = WorldCup_Activities_GetNpcID(nNpcId)
	local nRank,nScore = WorldCup_Activities_GetRanking(nBasicNpcId)
	local nNewRank = WorldCup_Activities_GetOldRanking(nBasicNpcId)
	-- 人气值
	local sText = tWorldCup_Activities_Text[22947]["Text132"]
	tNpcGossip[nNpcId]["Text132"] = string.format(sText,nScore,nNewRank)
	
	-- npc对白=
	tNpcGossip[nNpcId]["Text131"] = tWorldCup_Activities_Text[nBasicNpcId]["Text131"]
	return Sys_ChkFullTime(tWorldCup_Activities_Count["ActivityTime"]) and not WorldCup_Activities_LevelJudgy()
end

-- 活动中
-- 【等级达到】
tNpcGossip[22947]["Text1-4"] = {111,112,141,142,114,116,117,118,1112,119,1114,1115,1116}
tNpcGossip[22947]["tOption1-4"] = {141,142,143}
tNpcGossip[22947]["ChkFunc1-4"] = function ()
	local nBasicNpc = tWorldCup_Activities_Count["BasicNewNpc"]
	local nNpcId = Get_NpcId() or nBasicNpc
	local nBasicNpcId = WorldCup_Activities_GetNpcID(nNpcId)
	local nRank,nScore = WorldCup_Activities_GetRanking(nBasicNpcId)
	local nNewRank = WorldCup_Activities_GetOldRanking(nBasicNpcId)
	-- 人气值
	local sText = tWorldCup_Activities_Text[22947]["Text142"]
	tNpcGossip[nNpcId]["Text142"] = string.format(sText,nScore,nNewRank)
	
	-- 设置对白
	local nIndex = math.random(1,3)
	if nIndex == 1 then
		tNpcGossip[nNpcId]["Text141"] = tWorldCup_Activities_Text[nBasicNpcId]["Text141"]
	elseif nIndex == 2 then
		tNpcGossip[nNpcId]["Text141"] = tWorldCup_Activities_Text[nBasicNpcId]["Text1411"]
	else
		tNpcGossip[nNpcId]["Text141"] = tWorldCup_Activities_Text[nBasicNpcId]["Text1412"]
	end
	return Sys_ChkFullTime(tWorldCup_Activities_Count["ActivityTime"]) and WorldCup_Activities_LevelJudgy()
end
-- 1、挥舞助威棒
tNpcGossip[22947]["OptionFunc141"] = "WorldCup_Activities_LowProp</N>22947</N>3308881"
-- 2、吹响助威大喇叭
tNpcGossip[22947]["OptionFunc142"] = "WorldCup_Activities_HighProp</N>22947</N>3308882"
-- 3、查看球迷助威榜
tNpcGossip[22947]["OptionFunc143"] = "WorldCup_Activities_LookFanCheer</N>22947"
-- 4、稍后再来

-- 挥舞助威棒
tNpcGossip[22947]["Text2-1"] = {211,212,213}
tNpcGossip[22947]["tOption2-1"] = {211,212}
-- 1-1、挥舞1次助威棒
tNpcGossip[22947]["OptionFunc211"] = "WorldCup_Activities_AddCheer</N>22947</N>3308881</N>1"
-- 1-2、挥舞5次助威棒
tNpcGossip[22947]["OptionFunc212"] = "WorldCup_Activities_AddCheer</N>22947</N>3308881</N>5"

-- 【接1-1、失败、没有助威棒】
tNpcGossip[22947]["Text2-2"] = {221,222,223,222}
tNpcGossip[22947]["tOption2-2"] = {221}
-- 【接上、挥舞1次助威棒】
-- 天石不足
tNpcGossip[22947]["Text2-3"] = {231}
tNpcGossip[22947]["tOption2-3"] = {231}
-- 二次确认
tNpcGossip[22947]["Text2-4"] = {241}
tNpcGossip[22947]["tOption2-4"] = {241,242}
-- 1、确认花费XX天石
-- 2、屏蔽二次确认
-- 接屏蔽二次确认
tNpcGossip[22947]["Text2-5"] = {251}
tNpcGossip[22947]["tOption2-5"] = {251,252}
-- 2-1、确认屏蔽
-- tNpcGossip[22947]["OptionFunc251"] = "WorldCup_Activities_CloseSure</N>22947"
-- 2-2、暂不屏蔽
-- 【接1-1、成功，获得奖励】
tNpcGossip[22947]["Text2-6"] = {261,262,263,264}
tNpcGossip[22947]["tOption2-6"] = {262,261}
-- 非常感谢 返回主队白
tNpcGossip[22947]["OptionPoint261"] = 1
-- 继续挥舞1次助威棒
tNpcGossip[22947]["OptionFunc262"] = "WorldCup_Activities_AddCheer</N>22947</N>3308881</N>1"

-- 【接1-1、失败、背包满】
tNpcGossip[22947]["Text2-7"] = {271}
tNpcGossip[22947]["tOption2-7"] = {271}
-- 【接1-2、失败、助威棒数量不足】
tNpcGossip[22947]["Text3-1"] = {311,222,312,222}
tNpcGossip[22947]["tOption3-1"] = {221}
-- 天石不足 2-3
-- 二次确认 2-4
-- 接屏蔽二次确认 2-5
-- 【接1-2、成功、获得奖励】
tNpcGossip[22947]["Text3-2"] = {321,322,262,323,324,325,326,327,264}
tNpcGossip[22947]["tOption3-2"] = {322,261}
-- 继续挥舞5次助威棒
tNpcGossip[22947]["OptionFunc322"] = "WorldCup_Activities_AddCheer</N>22947</N>3308881</N>5"
-- 【接1-2、失败、背包满】 2-7

-- 接2、吹响助威大喇叭
tNpcGossip[22947]["Text3-3"] = {331,332,333,334,335,336,337}
tNpcGossip[22947]["tOption3-3"] = {331,332}
-- 吹响1次助威大喇叭
tNpcGossip[22947]["OptionFunc331"] = "WorldCup_Activities_AddCheer</N>22947</N>3308882</N>1"
-- 吹响5次助威大喇叭
tNpcGossip[22947]["OptionFunc332"] = "WorldCup_Activities_AddCheer</N>22947</N>3308882</N>5"
-- 2-1、吹响1次助威大喇叭
-- 2-2、吹响5次助威大喇叭
-- 【接2-1、失败、没有助威大喇叭】 
tNpcGossip[22947]["Text3-4"] = {341,222,342,222}
tNpcGossip[22947]["tOption3-4"] = {341}
-- 天石不足 2-3
-- 二次确认 2-4
-- 接屏蔽二次确认 2-5
-- 【接2-1、成功，获得奖励】
tNpcGossip[22947]["Text3-5"] = {351,352,262,353,264}
tNpcGossip[22947]["tOption3-5"] = {352,261}
-- 吹响1次助威大喇叭
tNpcGossip[22947]["OptionFunc352"] = "WorldCup_Activities_AddCheer</N>22947</N>3308882</N>1"
-- 【接2-1、失败、背包满】 2-7
-- 【接2-2、失败、助威大喇叭数量不足】
tNpcGossip[22947]["Text3-6"] = {361,222,362,222}
tNpcGossip[22947]["tOption3-6"] = {341}
-- 天石不足 2-3
-- 二次确认 2-4
-- 接屏蔽二次确认 2-5
-- 【接2-2、成功、获得奖励】
tNpcGossip[22947]["Text3-7"] = {371,372,262,373,374,375,376,377,264}
tNpcGossip[22947]["tOption3-7"] = {372,261}
-- 吹响5次助威大喇叭
tNpcGossip[22947]["OptionFunc372"] = "WorldCup_Activities_AddCheer</N>22947</N>3308882</N>5"
-- 【接2-2、失败、背包满】 2-7

-- 接3、查看球迷助威榜
tNpcGossip[22947]["Text4-1"] = {411,222,412,413,414,415,416,417,418,419,4110,4111,4112,222}
tNpcGossip[22947]["tOption4-1"] = {411,412}
-- 3-1、排行奖励一览
tNpcGossip[22947]["OptionPoint411"] = "4-2"
-- 3-2、告辞

-- 接3-1、排行奖励一览
tNpcGossip[22947]["Text4-2"] = {421,222,422,423,441,442,424,425,426,427,428,429,4210,4211,4212,4213,222}
tNpcGossip[22947]["tOption4-2"] = {421}
-- 3-1-1、奖励真是丰厚
tNpcGossip[22947]["ChkFunc4-2"] = function ()
	local nBasicNpc = tWorldCup_Activities_Count["BasicNewNpc"]
	local nNpcId = Get_NpcId() or nBasicNpc
	local nBasicNpcId = WorldCup_Activities_GetNpcID(nNpcId)
	local nBasic = tWorldCup_Activities_Count["BasicNewNpc"]
	-- 设置对白
	local sIndex = tWorldCup_Activities_Count["RewardText"][nBasicNpcId][1]
	if nBasicNpcId == 22951 or nBasicNpcId == 22952 then
		tNpcGossip[nNpcId]["Text423"] = tWorldCup_Activities_Text[nBasic][sIndex]
		tNpcGossip[nNpcId]["Text441"] = tWorldCup_Activities_Text[nBasic]["Text441"]
		tNpcGossip[nNpcId]["Text442"] = tWorldCup_Activities_Text[nBasic]["Text442"]
	else
		tNpcGossip[nNpcId]["Text423"] = tWorldCup_Activities_Text[nBasic][sIndex]
		tNpcGossip[nNpcId]["Text441"] = ""
		tNpcGossip[nNpcId]["Text442"] = ""
	end
	local sIndexOne = tWorldCup_Activities_Count["RewardText"][nBasicNpcId][2]
	tNpcGossip[nNpcId]["Text425"] = tWorldCup_Activities_Text[nBasic][sIndexOne]
	local sIndexTwo = tWorldCup_Activities_Count["RewardText"][nBasicNpcId][3]
	tNpcGossip[nNpcId]["Text426"] = tWorldCup_Activities_Text[nBasic][sIndexTwo]
	return true
end


tNpcFace[6080] = 1535
tNpcFace[6081] = 1536
tNpcFace[6082] = 1537
tNpcFace[6083] = 1538
tNpcFace[6084] = 1539
tNpcFace[6085] = 1534
tNpcFace[6086] = 1535
tNpcFace[6087] = 1536
tNpcFace[6088] = 1537
tNpcFace[6089] = 1538
tNpcFace[6090] = 1539
tNpcGossip[22948] = tNpcGossip[22947]
tNpcGossip[22949] = tNpcGossip[22947]
tNpcGossip[22950] = tNpcGossip[22947]
tNpcGossip[22951] = tNpcGossip[22947]
tNpcGossip[22952] = tNpcGossip[22947]
tNpcGossip[22953] = tNpcGossip[22947]
tNpcGossip[22954] = tNpcGossip[22947]
tNpcGossip[22955] = tNpcGossip[22947]
tNpcGossip[22956] = tNpcGossip[22947]
tNpcGossip[22957] = tNpcGossip[22947]
tNpcGossip[22958] = tNpcGossip[22947]

--------------------------------------物品模块-------------------------------------------
-- 3308880,'世界杯宣传海报'
tItemFace[3308880] = 1540
-- 3308881,'助威棒'
tItem[3308881] = tItem[3308881] or {}
tItem[3308881]["Function"] = function(nItemId,sItemName)
	WorldCup_Activities_UseItem(nItemId)
end
-- 3308882,'助威大喇叭'
tItem[3308882] = tItem[3308881]

-- 3308883,'幸运外套礼包'
tItem[3308883] = tItem[3308883] or {}
tItem[3308883]["Function"] = function(nItemId,sItemName)
	WorldCup_Activities_UsePackItem(nItemId)
end
-- 3308885,'随机球星发型'
tItemFace[3308885] = 1594
tItem[3308885] = tItem[3308885] or {}
tItem[3308885]["Function"] = function(nItemId,sItemName)
	WorldCup_Activities_UseNewPackItem(nItemId)
end
tItem[3308885]["DialogueText"] = tWorldCup_Activities_Text[3308885]
tItem[3308885]["Text1-1"] = {111}
tItem[3308885]["tOption1-1"] = {111,112,113,114,115,116}
tItem[3308885]["OptionFunc111"] = "WorldCup_Activities_NewExchange</N>3308885</N>3308895"
tItem[3308885]["OptionFunc112"] = "WorldCup_Activities_NewExchange</N>3308885</N>3308897"
tItem[3308885]["OptionFunc113"] = "WorldCup_Activities_NewExchange</N>3308885</N>3308901"
tItem[3308885]["OptionFunc114"] = "WorldCup_Activities_NewExchange</N>3308885</N>3308903"
tItem[3308885]["OptionFunc115"] = "WorldCup_Activities_NewExchange</N>3308885</N>3308896"
tItem[3308885]["OptionFunc116"] = "WorldCup_Activities_NewExchange</N>3308885</N>3308902"

-- 3308884,'球衣碎片可选包'
tItemFace[3308884] = 1547
tItem[3308884] = tItem[3308884] or {}
tItem[3308884]["Function"] = function(nItemId,sItemName)
	WorldCup_Activities_ChoosePiece(nItemId)
end
tItem[3308884]["DialogueText"] = tWorldCup_Activities_Text[3308884]
tItem[3308884]["Text1-1"] = {111}
tItem[3308884]["tOption1-1"] = {111,112,113,114,115,116}
tItem[3308884]["OptionFunc111"] = "WorldCup_Activities_Exchange</N>3308884</N>3308886"
tItem[3308884]["OptionFunc112"] = "WorldCup_Activities_Exchange</N>3308884</N>3308887"
tItem[3308884]["OptionFunc113"] = "WorldCup_Activities_Exchange</N>3308884</N>3308888"
tItem[3308884]["OptionFunc114"] = "WorldCup_Activities_Exchange</N>3308884</N>3308889"
tItem[3308884]["OptionFunc115"] = "WorldCup_Activities_Exchange</N>3308884</N>3308890"
tItem[3308884]["OptionFunc116"] = "WorldCup_Activities_Exchange</N>3308884</N>3308891"

-- 时装外套碎片
-- 3308886,'埃及守护者时装碎片'
tItemFace[3308886] = 1541
tItem[3308886] = tItem[3308886] or {}
tItem[3308886]["Function"] = function(nItemId,sItemName)
	WorldCup_Activities_CoatPieceItem(nItemId)
end
tItem[3308886]["DialogueText"] = tWorldCup_Activities_Text[3308886]
tItem[3308886]["Text1-1"] = {111,112}
tItem[3308886]["tOption1-1"] = {111,112,113}
-- 合成【外套名】外套（15个碎片）
-- 合成2个碎片（1个碎片）
 -- 3、兑换100气力值（1个碎片）

tItemFace[3308887] = 1542
tItemFace[3308888] = 1543
tItemFace[3308889] = 1544
tItemFace[3308890] = 1545
tItemFace[3308891] = 1546
-- 3308887,'比利时魔术师时装碎片'
tItem[3308887] = tItem[3308886]
-- 3308888,'巴西过人王时装碎片'
tItem[3308888] = tItem[3308886]
-- 3308889,'阿根廷全能王时装碎片'
tItem[3308889] = tItem[3308886]
-- 3308890,'葡萄牙球王时装碎片'
tItem[3308890] = tItem[3308886]
-- 3308891,'西班牙雄鹰时装碎片'
tItem[3308891] = tItem[3308886]

-- 3308892,'世界杯纪念币'
tItemFace[3308892] = 1548
tItem[3308892] = tItem[3308892] or {}
tItem[3308892]["Function"] = function(nItemId,sItemName)
	WorldCup_Activities_CommemorativeCoin(nItemId)
end
tItem[3308892]["DialogueText"] = tWorldCup_Activities_Text[3308892]
tItem[3308892]["Text1-1"] = {111}
tItem[3308892]["tOption1-1"] = {111,112}
-- 1、升级为光效球衣
tItem[3308892]["OptionFunc111"] = "WorldCup_Activities_UpCoatDialog</N>3308892"
-- 2、兑换7500气力值
tItem[3308892]["OptionFunc112"] = "WorldCup_Activities_ExchangeStrength</N>3308892"
-- 2、兑换500气力值（1个碎片）
-- 球衣升级成珍贵的光效球衣
tItem[3308892]["Text2-1"] = {211}
tItem[3308892]["tOption2-1"] = {211,212,213,214,215,216,217,218,219,220,221,222}
tItem[3308892]["OptionFunc211"] = "WorldCup_Activities_UpCoat</N>3308892</N>195235</N>0"
tItem[3308892]["OptionFunc212"] = "WorldCup_Activities_UpCoat</N>3308892</N>195245</N>0"
tItem[3308892]["OptionFunc213"] = "WorldCup_Activities_UpCoat</N>3308892</N>195255</N>0"
tItem[3308892]["OptionFunc214"] = "WorldCup_Activities_UpCoat</N>3308892</N>195265</N>0"
tItem[3308892]["OptionFunc215"] = "WorldCup_Activities_UpCoat</N>3308892</N>195275</N>0"
tItem[3308892]["OptionFunc216"] = "WorldCup_Activities_UpCoat</N>3308892</N>195285</N>0"
tItem[3308892]["OptionFunc217"] = "WorldCup_Activities_UpCoat</N>3308892</N>195235</N>2"
tItem[3308892]["OptionFunc218"] = "WorldCup_Activities_UpCoat</N>3308892</N>195245</N>2"
tItem[3308892]["OptionFunc219"] = "WorldCup_Activities_UpCoat</N>3308892</N>195255</N>2"
tItem[3308892]["OptionFunc220"] = "WorldCup_Activities_UpCoat</N>3308892</N>195265</N>2"
tItem[3308892]["OptionFunc221"] = "WorldCup_Activities_UpCoat</N>3308892</N>195275</N>2"
tItem[3308892]["OptionFunc222"] = "WorldCup_Activities_UpCoat</N>3308892</N>195285</N>2"
for i=211,222 do
	tItem[3308892]["OptionChkFunc"..i] = function()
		local nChkItemId = tWorldCup_Activities_Count["Option"][i]["Id"]
		local nChknMonopoly = tWorldCup_Activities_Count["Option"][i]["Monopoly"]
		if not Item_ChkMulItem(nChkItemId,nChkItemId,1,nChknMonopoly,nSash,nUserId,0) then
			return false
		end
		return true
	end
end
-- 背包中没有外套
tItem[3308892]["Text2-2"] = {221}
tItem[3308892]["tOption2-2"] = {2221}

-- 3308893,'冠军外套碎片'
tItemFace[3308893] = 1549
tItem[3308893] = tItem[3308893] or {}
tItem[3308893]["Function"] = function(nItemId,sItemName)
	WorldCup_Activities_CommemorativeCoin(nItemId)
end
tItem[3308893]["DialogueText"] = tWorldCup_Activities_Text[3308893]
tItem[3308893]["Text1-1"] = {111,112}
tItem[3308893]["tOption1-1"] = {111,112}
-- 1、合成光效球衣
tItem[3308893]["OptionFunc111"] = "WorldCup_Activities_CommemorativeCoinCompose</N>3308893"
-- 2、兑换500气力值（1个碎片）
tItem[3308893]["OptionFunc112"] = "WorldCup_Activities_ExchangeStrength</N>3308893"
-- 、合成光效球衣
tItem[3308893]["Text2-1"] = {211}
tItem[3308893]["tOption2-1"] = {212,213,211,214,215,216}
tItem[3308893]["OptionFunc211"] = "WorldCup_Activities_ComposeCoat</N>3308893</N>195295"
tItem[3308893]["OptionFunc212"] = "WorldCup_Activities_ComposeCoat</N>3308893</N>195305"
tItem[3308893]["OptionFunc213"] = "WorldCup_Activities_ComposeCoat</N>3308893</N>195315"
tItem[3308893]["OptionFunc214"] = "WorldCup_Activities_ComposeCoat</N>3308893</N>195325"
tItem[3308893]["OptionFunc215"] = "WorldCup_Activities_ComposeCoat</N>3308893</N>195335"
tItem[3308893]["OptionFunc216"] = "WorldCup_Activities_ComposeCoat</N>3308893</N>195345"

-- 3308894,'狂野子弹头'
-- 3308895,'蓬松贵公子'
-- 3308896,'帅气长扎辫'
-- 3308897,'性感短卷发'
-- 3308898,'儒雅绅士范'
-- 3308899,'狂野爆炸头'
-- 3308900,'叛逆朋克头'
-- 3308901,'潮男脏辫'
-- 3308902,'骚气板寸头'
-- 3308903,'金毛狮王'
tItem[3308894] = tItem[3308894] or {}
tItem[3308894]["Function"] = function(nItemId,sItemName)
	WorldCup_Activities_UseHairStyle(nItemId)
end
tItem[3308895] = tItem[3308894]
tItem[3308896] = tItem[3308894]
tItem[3308897] = tItem[3308894]
tItem[3308898] = tItem[3308894]
tItem[3308899] = tItem[3308894]
tItem[3308900] = tItem[3308894]
tItem[3308901] = tItem[3308894]
tItem[3308902] = tItem[3308894]
tItem[3308903] = tItem[3308894]


-- 3308904,'埃及守护者球衣包'
-- 3308905,'比利时魔术师球衣包'
-- 3308906,'巴西过人王球衣包'
-- 3308907,'阿根廷全能王球衣包'
-- 3308908,'葡萄牙球王球衣包'
-- 3308909,'西班牙雄鹰球衣包'
-- 3308910,'埃及守护者【高光版】球衣包'
-- 3308911,'比利时魔术师【高光版】球衣包'
-- 3308912,'巴西过人王【高光版】球衣包'
-- 3308913,'阿根廷全能王【高光版】球衣包'
-- 3308914,'葡萄牙球王【高光版】球衣包'
-- 3308915,'西班牙雄鹰【高光版】球衣包'
tItem[3308904] = tItem[3308904] or {}
tItem[3308904]["Function"] = function(nItemId,sItemName)
	WorldCup_Activities_OpenGetCheer(nItemId,tWorldCup_Activities_Count["NormalCheer"])
end
tItem[3308905] = tItem[3308904]
tItem[3308906] = tItem[3308904]
tItem[3308907] = tItem[3308904]
tItem[3308908] = tItem[3308904]
tItem[3308909] = tItem[3308904]
tItem[3308910] = tItem[3308910] or {}
tItem[3308910]["Function"] = function(nItemId,sItemName)
	WorldCup_Activities_OpenGetCheer(nItemId,tWorldCup_Activities_Count["HighCheer"])
end
tItem[3308911] = tItem[3308910]
tItem[3308912] = tItem[3308910]
tItem[3308913] = tItem[3308910]
tItem[3308914] = tItem[3308910]
tItem[3308915] = tItem[3308910]

-- 3309092,'答题冠军礼包'
-- 3309093,'答题第2至3名礼包'
tItem[3309092] = tItem[3309092] or {}
tItem[3309092]["Function"] = function(nItemId,sItemName)
	WorldCup_Activities_OpenCheerItem(nItemId)
end
tItem[3309093] = tItem[3309092]

-- 3309603,'1%特殊经验灵露'
tItem[3309603] = tItem[3309603] or {}
tItem[3309603]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tWorldCup_Activities_Reward[nItemId])
end

--------------------------------------怪物掉落-------------------------------------------
-- 3973	水魔兽
-- 3974	300星水魔兽
-- 3975	350星水魔兽
-- 4709	380星水魔兽
-- 4710		水魇兽
-- 4711		300星水魇兽
-- 4712		350星水魇兽
-- 4713		380星水魇兽
-- 4720	天魇神将		特殊强力怪 爆率比常规怪物高，但一样还是有幸运值限制
-- 3976	晶魄血妖
-- 3977	禁天邪兽
-- 3978	啸海狂魔
-- 3970	妖后瑶姬
-- 3971		邪龙护法
-- 3979	盗宝小妖【流星】
-- 3980	盗宝小妖【经验】
-- 3981		盗宝小妖【龙珠】
-- 3982	盗宝小妖【气力】
-- 3983	盗宝小妖【赤炼】
-- 3984	盗宝小妖【神魂】
-- 3985	盗宝小妖【银两】
-- 3986	盗宝小妖【装备】
-- 3992	盗宝小妖【神器】
-- local tWorldCup_Activities_Drop = {}
	-- -- 潜龙渊的掉落
	-- tWorldCup_Activities_Drop[1] = {}
	-- tWorldCup_Activities_Drop[1]["ActivityTime"] = tWorldCup_Activities_Count["ActivityTime"]
	-- tWorldCup_Activities_Drop[1]["Function"] = WorldCup_Activities_KillMonster
	-- tWorldCup_Activities_Drop[1]["MonsterId"] = {3973,3974,3975,4709,4710,4711,4712,4713,4720,3976,3977,3978,3970,3971,3979,3980,3981,3982,3983,3984,3985,3986,3992}
	
	-- -- 全片区
	-- tWorldCup_Activities_Drop[2] = {}
	-- tWorldCup_Activities_Drop[2]["ActivityTime"] = tWorldCup_Activities_Count["ActivityTime"]
	-- tWorldCup_Activities_Drop[2]["Function"] = WorldCup_Activities_KillMonster
-- table.insert(tMonsterDrop_AreaLoad,tWorldCup_Activities_Drop[1])
-- table.insert(tMonsterDrop_AreaLoad,tWorldCup_Activities_Drop[2])

-- 智力竞赛个人奖励
tQuizPersonalReward["tFunction"] = tQuizPersonalReward["tFunction"] or {}
table.insert(tQuizPersonalReward["tFunction"],WorldCup_Activities_AnswerReward)

---智力竞赛排行榜函数
tQuizRankingsReward["tFunction"] = tQuizRankingsReward["tFunction"] or {}
table.insert(tQuizRankingsReward["tFunction"],WorldCup_Activities_RankReward)

-- 服务器启动
tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],WorldCup_Activities_StartServer)

--放进外套
tCheckInItemToCoatStorage["tFunction"] = tCheckInItemToCoatStorage["tFunction"] or {}
table.insert(tCheckInItemToCoatStorage["tFunction"],WorldCup_Activities_CheckItemToCoat)
--取出外套
tCheckOutItemFromCoatStorage["tFunction"] = tCheckOutItemFromCoatStorage["tFunction"] or {}
table.insert(tCheckOutItemFromCoatStorage["tFunction"],WorldCup_Activities_CheckItemToCoat)
--外套过时
tDelUserItemFromCoatStorage["tFunction"] = tDelUserItemFromCoatStorage["tFunction"] or {}
table.insert(tDelUserItemFromCoatStorage["tFunction"],WorldCup_Activities_CheckItemToCoat)

-- 00点触发
local tWorldCup_Activities_OnTime = {}
	tWorldCup_Activities_OnTime[1] = {}
	tWorldCup_Activities_OnTime[1]["ActivityTime"] = tActivityTime["WorldCupActivities"]["ActivityTime"]
	tWorldCup_Activities_OnTime[1]["Type"] = 6
	tWorldCup_Activities_OnTime[1]["TimeType"] = 4
	tWorldCup_Activities_OnTime[1]["Multiple"] = {}
	tWorldCup_Activities_OnTime[1]["Multiple"][1]  = "00:00 00:00"
	tWorldCup_Activities_OnTime[1]["Multiple"][2]  = "00:01 00:01"
	tWorldCup_Activities_OnTime[1]["Multiple"][3]  = "00:02 00:02"
	tWorldCup_Activities_OnTime[1]["Func"] = WorldCup_Activities_TimeMoveNPc
	tWorldCup_Activities_OnTime[2] = {}
	tWorldCup_Activities_OnTime[2]["ActivityTime"] = tActivityTime["WorldCupActivities"]["RewardTime"]
	tWorldCup_Activities_OnTime[2]["Type"] = 6
	tWorldCup_Activities_OnTime[2]["TimeType"] = 4
	tWorldCup_Activities_OnTime[2]["Multiple"] = {}
	tWorldCup_Activities_OnTime[2]["Multiple"][1]  = "00:00 00:00"
	tWorldCup_Activities_OnTime[2]["Multiple"][2]  = "00:01 00:01"
	tWorldCup_Activities_OnTime[2]["Multiple"][3]  = "00:02 00:02"
	tWorldCup_Activities_OnTime[2]["Func"] = WorldCup_Activities_OutMoveAllNpc
	--每日00:00 重置动态表
	tWorldCup_Activities_OnTime[3] = {}
	tWorldCup_Activities_OnTime[3]["ActivityTime"] = tActivityTime["WorldCupActivities"]["ActivityTime"]
	tWorldCup_Activities_OnTime[3]["Type"] = 2
	tWorldCup_Activities_OnTime[3]["TimeType"] = 4
	tWorldCup_Activities_OnTime[3]["Time"] = "00:00 00:00"
	tWorldCup_Activities_OnTime[3]["Func"] = WorldCup_Activities_ResetDynaGlobal
table.insert(tSystemTime_InitialData,tWorldCup_Activities_OnTime[1])
table.insert(tSystemTime_InitialData,tWorldCup_Activities_OnTime[2])
table.insert(tSystemTime_InitialData,tWorldCup_Activities_OnTime[3])

-- 排行榜
-- 22947,'萨拉赫'
tRankingFunc_Info[22947] = {}
tRankingFunc_Info[22947]["ActiveTime"] = tWorldCup_Activities_Count["ActivityTime"]
tRankingFunc_Info[22947]["DayTime"] = {}
tRankingFunc_Info[22947]["DayTime"][1] = "00:00 23:59"
tRankingFunc_Info[22947]["Reset"] = 1
tRankingFunc_Info[22947]["Global"] = {52657,52658,52659,52660}
tRankingFunc_Info[22947]["RankNum"] = 10
-- 22948,'内马尔'
tRankingFunc_Info[22948] = {}
tRankingFunc_Info[22948]["ActiveTime"] = tWorldCup_Activities_Count["ActivityTime"]
tRankingFunc_Info[22948]["DayTime"] = {}
tRankingFunc_Info[22948]["DayTime"][1] = "00:00 23:59"
tRankingFunc_Info[22948]["Reset"] = 1
tRankingFunc_Info[22948]["Global"] = {52661,52662,52663,52664}
tRankingFunc_Info[22948]["RankNum"] = 10
-- 22949,'梅西'
tRankingFunc_Info[22949] = {}
tRankingFunc_Info[22949]["ActiveTime"] = tWorldCup_Activities_Count["ActivityTime"]
tRankingFunc_Info[22949]["DayTime"] = {}
tRankingFunc_Info[22949]["DayTime"][1] = "00:00 23:59"
tRankingFunc_Info[22949]["Reset"] = 1
tRankingFunc_Info[22949]["Global"] = {52665,52666,52667,52668}
tRankingFunc_Info[22949]["RankNum"] = 10
-- 22950,'C罗'
tRankingFunc_Info[22950] = {}
tRankingFunc_Info[22950]["ActiveTime"] = tWorldCup_Activities_Count["ActivityTime"]
tRankingFunc_Info[22950]["DayTime"] = {}
tRankingFunc_Info[22950]["DayTime"][1] = "00:00 23:59"
tRankingFunc_Info[22950]["Reset"] = 1
tRankingFunc_Info[22950]["Global"] = {52669,52670,52671,52672}
tRankingFunc_Info[22950]["RankNum"] = 10
-- 22951,'伊涅斯塔'
tRankingFunc_Info[22951] = {}
tRankingFunc_Info[22951]["ActiveTime"] = tWorldCup_Activities_Count["ActivityTime"]
tRankingFunc_Info[22951]["DayTime"] = {}
tRankingFunc_Info[22951]["DayTime"][1] = "00:00 23:59"
tRankingFunc_Info[22951]["Reset"] = 1
tRankingFunc_Info[22951]["Global"] = {52673,52674,52675,52676}
tRankingFunc_Info[22951]["RankNum"] = 10
-- 22952,'阿扎尔'
tRankingFunc_Info[22952] = {}
tRankingFunc_Info[22952]["ActiveTime"] = tWorldCup_Activities_Count["ActivityTime"]
tRankingFunc_Info[22952]["DayTime"] = {}
tRankingFunc_Info[22952]["DayTime"][1] = "00:00 23:59"
tRankingFunc_Info[22952]["Reset"] = 1
tRankingFunc_Info[22952]["Global"] = {52677,52678,52679,52680}
tRankingFunc_Info[22952]["RankNum"] = 10

tRankingFunc_Info[22947]["Mail"] = {}
tRankingFunc_Info[22947]["Mail"]["ActiveTime"] = tActivityTime["WorldCupActivities"]["RewardTime"]
tRankingFunc_Info[22947]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[22947]["Mail"]["RewardTime"][1] = "00:00 00:05"
tRankingFunc_Info[22947]["Mail"]["HaveFunc"] = WorldCup_Activities_InitMailText
tRankingFunc_Info[22947]["Mail"]["Reward"] = {}
tRankingFunc_Info[22947]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[22947]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[22947]["Mail"]["Reward"][1]["ActionId"] = 94486300
tRankingFunc_Info[22947]["Mail"]["Reward"][1]["ExistDay"] = 3
tRankingFunc_Info[22947]["Mail"]["Reward"][1]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22947]["Mail"]["Reward"][1]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22947]["Mail"]["Reward"][1]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22947]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[22947]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[22947]["Mail"]["Reward"][2]["ActionId"] = 94486301
tRankingFunc_Info[22947]["Mail"]["Reward"][2]["ExistDay"] = 3
tRankingFunc_Info[22947]["Mail"]["Reward"][2]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22947]["Mail"]["Reward"][2]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22947]["Mail"]["Reward"][2]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22947]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[22947]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[22947]["Mail"]["Reward"][3]["ActionId"] = 94486302
tRankingFunc_Info[22947]["Mail"]["Reward"][3]["ExistDay"] = 3
tRankingFunc_Info[22947]["Mail"]["Reward"][3]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22947]["Mail"]["Reward"][3]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22947]["Mail"]["Reward"][3]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22947]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[22947]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[22947]["Mail"]["Reward"][4]["ActionId"] = 94486303
tRankingFunc_Info[22947]["Mail"]["Reward"][4]["ExistDay"] = 3
tRankingFunc_Info[22947]["Mail"]["Reward"][4]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22947]["Mail"]["Reward"][4]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22947]["Mail"]["Reward"][4]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22947]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[22947]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[22947]["Mail"]["Reward"][5]["ActionId"] = 94486304
tRankingFunc_Info[22947]["Mail"]["Reward"][5]["ExistDay"] = 3
tRankingFunc_Info[22947]["Mail"]["Reward"][5]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22947]["Mail"]["Reward"][5]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22947]["Mail"]["Reward"][5]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22947]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[22947]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[22947]["Mail"]["Reward"][6]["ActionId"] = 94485805
tRankingFunc_Info[22947]["Mail"]["Reward"][6]["ExistDay"] = 3
tRankingFunc_Info[22947]["Mail"]["Reward"][6]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22947]["Mail"]["Reward"][6]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22947]["Mail"]["Reward"][6]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22947]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[22947]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[22947]["Mail"]["Reward"][7]["ActionId"] = 94486306
tRankingFunc_Info[22947]["Mail"]["Reward"][7]["ExistDay"] = 3
tRankingFunc_Info[22947]["Mail"]["Reward"][7]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22947]["Mail"]["Reward"][7]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22947]["Mail"]["Reward"][7]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22947]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[22947]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[22947]["Mail"]["Reward"][8]["ActionId"] = 94486307
tRankingFunc_Info[22947]["Mail"]["Reward"][8]["ExistDay"] = 3
tRankingFunc_Info[22947]["Mail"]["Reward"][8]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22947]["Mail"]["Reward"][8]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22947]["Mail"]["Reward"][8]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22947]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[22947]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[22947]["Mail"]["Reward"][9]["ActionId"] = 94486308
tRankingFunc_Info[22947]["Mail"]["Reward"][9]["ExistDay"] = 3
tRankingFunc_Info[22947]["Mail"]["Reward"][9]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22947]["Mail"]["Reward"][9]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22947]["Mail"]["Reward"][9]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22947]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[22947]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[22947]["Mail"]["Reward"][10]["ActionId"] = 94486309
tRankingFunc_Info[22947]["Mail"]["Reward"][10]["ExistDay"] = 3
tRankingFunc_Info[22947]["Mail"]["Reward"][10]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22947]["Mail"]["Reward"][10]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22947]["Mail"]["Reward"][10]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22948]["Mail"] = {}
tRankingFunc_Info[22948]["Mail"]["ActiveTime"] = tActivityTime["WorldCupActivities"]["RewardTime"]
tRankingFunc_Info[22948]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[22948]["Mail"]["RewardTime"][1] = "00:00 00:05"
tRankingFunc_Info[22948]["Mail"]["HaveFunc"] = WorldCup_Activities_InitMailText
tRankingFunc_Info[22948]["Mail"]["Reward"] = {}
tRankingFunc_Info[22948]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[22948]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[22948]["Mail"]["Reward"][1]["ActionId"] = 94486310
tRankingFunc_Info[22948]["Mail"]["Reward"][1]["ExistDay"] = 3
tRankingFunc_Info[22948]["Mail"]["Reward"][1]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22948]["Mail"]["Reward"][1]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22948]["Mail"]["Reward"][1]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22948]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[22948]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[22948]["Mail"]["Reward"][2]["ActionId"] = 94486311
tRankingFunc_Info[22948]["Mail"]["Reward"][2]["ExistDay"] = 3
tRankingFunc_Info[22948]["Mail"]["Reward"][2]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22948]["Mail"]["Reward"][2]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22948]["Mail"]["Reward"][2]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22948]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[22948]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[22948]["Mail"]["Reward"][3]["ActionId"] = 94486312
tRankingFunc_Info[22948]["Mail"]["Reward"][3]["ExistDay"] = 3
tRankingFunc_Info[22948]["Mail"]["Reward"][3]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22948]["Mail"]["Reward"][3]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22948]["Mail"]["Reward"][3]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22948]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[22948]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[22948]["Mail"]["Reward"][4]["ActionId"] = 94486313
tRankingFunc_Info[22948]["Mail"]["Reward"][4]["ExistDay"] = 3
tRankingFunc_Info[22948]["Mail"]["Reward"][4]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22948]["Mail"]["Reward"][4]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22948]["Mail"]["Reward"][4]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22948]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[22948]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[22948]["Mail"]["Reward"][5]["ActionId"] = 94486314
tRankingFunc_Info[22948]["Mail"]["Reward"][5]["ExistDay"] = 3
tRankingFunc_Info[22948]["Mail"]["Reward"][5]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22948]["Mail"]["Reward"][5]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22948]["Mail"]["Reward"][5]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22948]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[22948]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[22948]["Mail"]["Reward"][6]["ActionId"] = 94486315
tRankingFunc_Info[22948]["Mail"]["Reward"][6]["ExistDay"] = 3
tRankingFunc_Info[22948]["Mail"]["Reward"][6]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22948]["Mail"]["Reward"][6]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22948]["Mail"]["Reward"][6]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22948]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[22948]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[22948]["Mail"]["Reward"][7]["ActionId"] = 94486316
tRankingFunc_Info[22948]["Mail"]["Reward"][7]["ExistDay"] = 3
tRankingFunc_Info[22948]["Mail"]["Reward"][7]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22948]["Mail"]["Reward"][7]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22948]["Mail"]["Reward"][7]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22948]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[22948]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[22948]["Mail"]["Reward"][8]["ActionId"] = 94486317
tRankingFunc_Info[22948]["Mail"]["Reward"][8]["ExistDay"] = 3
tRankingFunc_Info[22948]["Mail"]["Reward"][8]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22948]["Mail"]["Reward"][8]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22948]["Mail"]["Reward"][8]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22948]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[22948]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[22948]["Mail"]["Reward"][9]["ActionId"] = 94486318
tRankingFunc_Info[22948]["Mail"]["Reward"][9]["ExistDay"] = 3
tRankingFunc_Info[22948]["Mail"]["Reward"][9]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22948]["Mail"]["Reward"][9]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22948]["Mail"]["Reward"][9]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22948]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[22948]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[22948]["Mail"]["Reward"][10]["ActionId"] = 94486319
tRankingFunc_Info[22948]["Mail"]["Reward"][10]["ExistDay"] = 3
tRankingFunc_Info[22948]["Mail"]["Reward"][10]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22948]["Mail"]["Reward"][10]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22948]["Mail"]["Reward"][10]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22949]["Mail"] = {}
tRankingFunc_Info[22949]["Mail"]["ActiveTime"] = tActivityTime["WorldCupActivities"]["RewardTime"]
tRankingFunc_Info[22949]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[22949]["Mail"]["RewardTime"][1] = "00:00 00:05"
tRankingFunc_Info[22949]["Mail"]["HaveFunc"] = WorldCup_Activities_InitMailText
tRankingFunc_Info[22949]["Mail"]["Reward"] = {}
tRankingFunc_Info[22949]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[22949]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[22949]["Mail"]["Reward"][1]["ActionId"] = 94486320
tRankingFunc_Info[22949]["Mail"]["Reward"][1]["ExistDay"] = 3
tRankingFunc_Info[22949]["Mail"]["Reward"][1]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22949]["Mail"]["Reward"][1]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22949]["Mail"]["Reward"][1]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22949]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[22949]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[22949]["Mail"]["Reward"][2]["ActionId"] = 94486321
tRankingFunc_Info[22949]["Mail"]["Reward"][2]["ExistDay"] = 3
tRankingFunc_Info[22949]["Mail"]["Reward"][2]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22949]["Mail"]["Reward"][2]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22949]["Mail"]["Reward"][2]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22949]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[22949]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[22949]["Mail"]["Reward"][3]["ActionId"] = 94486322
tRankingFunc_Info[22949]["Mail"]["Reward"][3]["ExistDay"] = 3
tRankingFunc_Info[22949]["Mail"]["Reward"][3]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22949]["Mail"]["Reward"][3]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22949]["Mail"]["Reward"][3]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22949]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[22949]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[22949]["Mail"]["Reward"][4]["ActionId"] = 94486323
tRankingFunc_Info[22949]["Mail"]["Reward"][4]["ExistDay"] = 3
tRankingFunc_Info[22949]["Mail"]["Reward"][4]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22949]["Mail"]["Reward"][4]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22949]["Mail"]["Reward"][4]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22949]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[22949]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[22949]["Mail"]["Reward"][5]["ActionId"] = 94486324
tRankingFunc_Info[22949]["Mail"]["Reward"][5]["ExistDay"] = 3
tRankingFunc_Info[22949]["Mail"]["Reward"][5]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22949]["Mail"]["Reward"][5]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22949]["Mail"]["Reward"][5]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22949]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[22949]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[22949]["Mail"]["Reward"][6]["ActionId"] = 94486325
tRankingFunc_Info[22949]["Mail"]["Reward"][6]["ExistDay"] = 3
tRankingFunc_Info[22949]["Mail"]["Reward"][6]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22949]["Mail"]["Reward"][6]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22949]["Mail"]["Reward"][6]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22949]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[22949]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[22949]["Mail"]["Reward"][7]["ActionId"] = 94486326
tRankingFunc_Info[22949]["Mail"]["Reward"][7]["ExistDay"] = 3
tRankingFunc_Info[22949]["Mail"]["Reward"][7]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22949]["Mail"]["Reward"][7]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22949]["Mail"]["Reward"][7]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22949]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[22949]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[22949]["Mail"]["Reward"][8]["ActionId"] = 94486327
tRankingFunc_Info[22949]["Mail"]["Reward"][8]["ExistDay"] = 3
tRankingFunc_Info[22949]["Mail"]["Reward"][8]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22949]["Mail"]["Reward"][8]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22949]["Mail"]["Reward"][8]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22949]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[22949]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[22949]["Mail"]["Reward"][9]["ActionId"] = 94486328
tRankingFunc_Info[22949]["Mail"]["Reward"][9]["ExistDay"] = 3
tRankingFunc_Info[22949]["Mail"]["Reward"][9]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22949]["Mail"]["Reward"][9]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22949]["Mail"]["Reward"][9]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22949]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[22949]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[22949]["Mail"]["Reward"][10]["ActionId"] = 94486329
tRankingFunc_Info[22949]["Mail"]["Reward"][10]["ExistDay"] = 3
tRankingFunc_Info[22949]["Mail"]["Reward"][10]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22949]["Mail"]["Reward"][10]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22949]["Mail"]["Reward"][10]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22950]["Mail"] = {}
tRankingFunc_Info[22950]["Mail"]["ActiveTime"] = tActivityTime["WorldCupActivities"]["RewardTime"]
tRankingFunc_Info[22950]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[22950]["Mail"]["RewardTime"][1] = "00:00 00:05"
tRankingFunc_Info[22950]["Mail"]["HaveFunc"] = WorldCup_Activities_InitMailText
tRankingFunc_Info[22950]["Mail"]["Reward"] = {}
tRankingFunc_Info[22950]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[22950]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[22950]["Mail"]["Reward"][1]["ActionId"] = 94486330
tRankingFunc_Info[22950]["Mail"]["Reward"][1]["ExistDay"] = 3
tRankingFunc_Info[22950]["Mail"]["Reward"][1]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22950]["Mail"]["Reward"][1]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22950]["Mail"]["Reward"][1]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22950]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[22950]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[22950]["Mail"]["Reward"][2]["ActionId"] = 94486331
tRankingFunc_Info[22950]["Mail"]["Reward"][2]["ExistDay"] = 3
tRankingFunc_Info[22950]["Mail"]["Reward"][2]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22950]["Mail"]["Reward"][2]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22950]["Mail"]["Reward"][2]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22950]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[22950]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[22950]["Mail"]["Reward"][3]["ActionId"] = 94486332
tRankingFunc_Info[22950]["Mail"]["Reward"][3]["ExistDay"] = 3
tRankingFunc_Info[22950]["Mail"]["Reward"][3]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22950]["Mail"]["Reward"][3]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22950]["Mail"]["Reward"][3]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22950]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[22950]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[22950]["Mail"]["Reward"][4]["ActionId"] = 94486333
tRankingFunc_Info[22950]["Mail"]["Reward"][4]["ExistDay"] = 3
tRankingFunc_Info[22950]["Mail"]["Reward"][4]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22950]["Mail"]["Reward"][4]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22950]["Mail"]["Reward"][4]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22950]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[22950]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[22950]["Mail"]["Reward"][5]["ActionId"] = 94486334
tRankingFunc_Info[22950]["Mail"]["Reward"][5]["ExistDay"] = 3
tRankingFunc_Info[22950]["Mail"]["Reward"][5]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22950]["Mail"]["Reward"][5]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22950]["Mail"]["Reward"][5]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22950]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[22950]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[22950]["Mail"]["Reward"][6]["ActionId"] = 94486335
tRankingFunc_Info[22950]["Mail"]["Reward"][6]["ExistDay"] = 3
tRankingFunc_Info[22950]["Mail"]["Reward"][6]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22950]["Mail"]["Reward"][6]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22950]["Mail"]["Reward"][6]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22950]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[22950]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[22950]["Mail"]["Reward"][7]["ActionId"] = 94486336
tRankingFunc_Info[22950]["Mail"]["Reward"][7]["ExistDay"] = 3
tRankingFunc_Info[22950]["Mail"]["Reward"][7]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22950]["Mail"]["Reward"][7]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22950]["Mail"]["Reward"][7]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22950]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[22950]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[22950]["Mail"]["Reward"][8]["ActionId"] = 94486337
tRankingFunc_Info[22950]["Mail"]["Reward"][8]["ExistDay"] = 3
tRankingFunc_Info[22950]["Mail"]["Reward"][8]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22950]["Mail"]["Reward"][8]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22950]["Mail"]["Reward"][8]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22950]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[22950]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[22950]["Mail"]["Reward"][9]["ActionId"] = 94486338
tRankingFunc_Info[22950]["Mail"]["Reward"][9]["ExistDay"] = 3
tRankingFunc_Info[22950]["Mail"]["Reward"][9]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22950]["Mail"]["Reward"][9]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22950]["Mail"]["Reward"][9]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22950]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[22950]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[22950]["Mail"]["Reward"][10]["ActionId"] = 94486339
tRankingFunc_Info[22950]["Mail"]["Reward"][10]["ExistDay"] = 3
tRankingFunc_Info[22950]["Mail"]["Reward"][10]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22950]["Mail"]["Reward"][10]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22950]["Mail"]["Reward"][10]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22951]["Mail"] = {}
tRankingFunc_Info[22951]["Mail"]["ActiveTime"] = tActivityTime["WorldCupActivities"]["RewardTime"]
tRankingFunc_Info[22951]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[22951]["Mail"]["RewardTime"][1] = "00:00 00:05"
tRankingFunc_Info[22951]["Mail"]["HaveFunc"] = WorldCup_Activities_InitMailText
tRankingFunc_Info[22951]["Mail"]["Reward"] = {}
tRankingFunc_Info[22951]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[22951]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[22951]["Mail"]["Reward"][1]["ActionId"] = 94486340
tRankingFunc_Info[22951]["Mail"]["Reward"][1]["ExistDay"] = 3
tRankingFunc_Info[22951]["Mail"]["Reward"][1]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22951]["Mail"]["Reward"][1]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22951]["Mail"]["Reward"][1]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22951]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[22951]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[22951]["Mail"]["Reward"][2]["ActionId"] = 94486341
tRankingFunc_Info[22951]["Mail"]["Reward"][2]["ExistDay"] = 3
tRankingFunc_Info[22951]["Mail"]["Reward"][2]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22951]["Mail"]["Reward"][2]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22951]["Mail"]["Reward"][2]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22951]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[22951]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[22951]["Mail"]["Reward"][3]["ActionId"] = 94486342
tRankingFunc_Info[22951]["Mail"]["Reward"][3]["ExistDay"] = 3
tRankingFunc_Info[22951]["Mail"]["Reward"][3]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22951]["Mail"]["Reward"][3]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22951]["Mail"]["Reward"][3]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22951]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[22951]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[22951]["Mail"]["Reward"][4]["ActionId"] = 94486343
tRankingFunc_Info[22951]["Mail"]["Reward"][4]["ExistDay"] = 3
tRankingFunc_Info[22951]["Mail"]["Reward"][4]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22951]["Mail"]["Reward"][4]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22951]["Mail"]["Reward"][4]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22951]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[22951]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[22951]["Mail"]["Reward"][5]["ActionId"] = 94486344
tRankingFunc_Info[22951]["Mail"]["Reward"][5]["ExistDay"] = 3
tRankingFunc_Info[22951]["Mail"]["Reward"][5]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22951]["Mail"]["Reward"][5]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22951]["Mail"]["Reward"][5]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22951]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[22951]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[22951]["Mail"]["Reward"][6]["ActionId"] = 94486345
tRankingFunc_Info[22951]["Mail"]["Reward"][6]["ExistDay"] = 3
tRankingFunc_Info[22951]["Mail"]["Reward"][6]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22951]["Mail"]["Reward"][6]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22951]["Mail"]["Reward"][6]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22951]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[22951]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[22951]["Mail"]["Reward"][7]["ActionId"] = 94486346
tRankingFunc_Info[22951]["Mail"]["Reward"][7]["ExistDay"] = 3
tRankingFunc_Info[22951]["Mail"]["Reward"][7]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22951]["Mail"]["Reward"][7]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22951]["Mail"]["Reward"][7]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22951]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[22951]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[22951]["Mail"]["Reward"][8]["ActionId"] = 94486347
tRankingFunc_Info[22951]["Mail"]["Reward"][8]["ExistDay"] = 3
tRankingFunc_Info[22951]["Mail"]["Reward"][8]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22951]["Mail"]["Reward"][8]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22951]["Mail"]["Reward"][8]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22951]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[22951]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[22951]["Mail"]["Reward"][9]["ActionId"] = 94486348
tRankingFunc_Info[22951]["Mail"]["Reward"][9]["ExistDay"] = 3
tRankingFunc_Info[22951]["Mail"]["Reward"][9]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22951]["Mail"]["Reward"][9]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22951]["Mail"]["Reward"][9]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22951]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[22951]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[22951]["Mail"]["Reward"][10]["ActionId"] = 94486349
tRankingFunc_Info[22951]["Mail"]["Reward"][10]["ExistDay"] = 3
tRankingFunc_Info[22951]["Mail"]["Reward"][10]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22951]["Mail"]["Reward"][10]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22951]["Mail"]["Reward"][10]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22952]["Mail"] = {}
tRankingFunc_Info[22952]["Mail"]["ActiveTime"] = tActivityTime["WorldCupActivities"]["RewardTime"]
tRankingFunc_Info[22952]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[22952]["Mail"]["RewardTime"][1] = "00:00 00:05"
tRankingFunc_Info[22952]["Mail"]["HaveFunc"] = WorldCup_Activities_InitMailText
tRankingFunc_Info[22952]["Mail"]["Reward"] = {}
tRankingFunc_Info[22952]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[22952]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[22952]["Mail"]["Reward"][1]["ActionId"] = 94486350
tRankingFunc_Info[22952]["Mail"]["Reward"][1]["ExistDay"] = 3
tRankingFunc_Info[22952]["Mail"]["Reward"][1]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22952]["Mail"]["Reward"][1]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22952]["Mail"]["Reward"][1]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22952]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[22952]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[22952]["Mail"]["Reward"][2]["ActionId"] = 94486351
tRankingFunc_Info[22952]["Mail"]["Reward"][2]["ExistDay"] = 3
tRankingFunc_Info[22952]["Mail"]["Reward"][2]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22952]["Mail"]["Reward"][2]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22952]["Mail"]["Reward"][2]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22952]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[22952]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[22952]["Mail"]["Reward"][3]["ActionId"] = 94486352
tRankingFunc_Info[22952]["Mail"]["Reward"][3]["ExistDay"] = 3
tRankingFunc_Info[22952]["Mail"]["Reward"][3]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22952]["Mail"]["Reward"][3]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22952]["Mail"]["Reward"][3]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22952]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[22952]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[22952]["Mail"]["Reward"][4]["ActionId"] = 94486353
tRankingFunc_Info[22952]["Mail"]["Reward"][4]["ExistDay"] = 3
tRankingFunc_Info[22952]["Mail"]["Reward"][4]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22952]["Mail"]["Reward"][4]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22952]["Mail"]["Reward"][4]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22952]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[22952]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[22952]["Mail"]["Reward"][5]["ActionId"] = 94486354
tRankingFunc_Info[22952]["Mail"]["Reward"][5]["ExistDay"] = 3
tRankingFunc_Info[22952]["Mail"]["Reward"][5]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22952]["Mail"]["Reward"][5]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22952]["Mail"]["Reward"][5]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22952]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[22952]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[22952]["Mail"]["Reward"][6]["ActionId"] = 94486355
tRankingFunc_Info[22952]["Mail"]["Reward"][6]["ExistDay"] = 3
tRankingFunc_Info[22952]["Mail"]["Reward"][6]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22952]["Mail"]["Reward"][6]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22952]["Mail"]["Reward"][6]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22952]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[22952]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[22952]["Mail"]["Reward"][7]["ActionId"] = 94486356
tRankingFunc_Info[22952]["Mail"]["Reward"][7]["ExistDay"] = 3
tRankingFunc_Info[22952]["Mail"]["Reward"][7]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22952]["Mail"]["Reward"][7]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22952]["Mail"]["Reward"][7]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22952]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[22952]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[22952]["Mail"]["Reward"][8]["ActionId"] = 94486357
tRankingFunc_Info[22952]["Mail"]["Reward"][8]["ExistDay"] = 3
tRankingFunc_Info[22952]["Mail"]["Reward"][8]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22952]["Mail"]["Reward"][8]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22952]["Mail"]["Reward"][8]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22952]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[22952]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[22952]["Mail"]["Reward"][9]["ActionId"] = 94486358
tRankingFunc_Info[22952]["Mail"]["Reward"][9]["ExistDay"] = 3
tRankingFunc_Info[22952]["Mail"]["Reward"][9]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22952]["Mail"]["Reward"][9]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22952]["Mail"]["Reward"][9]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]
tRankingFunc_Info[22952]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[22952]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[22952]["Mail"]["Reward"][10]["ActionId"] = 94486359
tRankingFunc_Info[22952]["Mail"]["Reward"][10]["ExistDay"] = 3
tRankingFunc_Info[22952]["Mail"]["Reward"][10]["Title"] = tWorldCup_Activities_Text["RankingMail"]["Title"]
tRankingFunc_Info[22952]["Mail"]["Reward"][10]["Sender"] = tWorldCup_Activities_Text["RankingMail"]["Sender"]
tRankingFunc_Info[22952]["Mail"]["Reward"][10]["Content"] = tWorldCup_Activities_Text["RankingMail"]["Content"]