------------------------------------------------------------------------------
--Name:		[征服][活动脚本]铁扇门预热活动
--Purpose:	铁扇门预热活动
--Creator: 	严振飞
--Created:	2016/12/08
------------------------------------------------------------------------------
-- 命名前缀
-- IroFanPreheat_

--------------------------------------数据配置----------------------------------
-- stc掩码
local tIroFanPreheat_Stc = {}
	tIroFanPreheat_Stc[3301728] = {}
	tIroFanPreheat_Stc[3301728]["EventType"] = 154
	tIroFanPreheat_Stc[3301728]["DataType"] = 15
	
	tIroFanPreheat_Stc[3301729] = {}
	tIroFanPreheat_Stc[3301729]["EventType"] = 154
	tIroFanPreheat_Stc[3301729]["DataType"] = 16

	tIroFanPreheat_Stc[3301730] = {}
	tIroFanPreheat_Stc[3301730]["EventType"] = 154
	tIroFanPreheat_Stc[3301730]["DataType"] = 17

	-- 控制剧情道具掉落数量
	tIroFanPreheat_Stc[2] = {}
	tIroFanPreheat_Stc[2]["EventType"] = 154
	tIroFanPreheat_Stc[2]["DataType"] = 18
	tIroFanPreheat_Stc[2]["MaxData"] = 10
	
	-- 领取百晓生的谢礼
	tIroFanPreheat_Stc[3] = {}
	tIroFanPreheat_Stc[3]["EventType"] = 154
	tIroFanPreheat_Stc[3]["DataType"] = 19
	tIroFanPreheat_Stc[3]["MaxData"] = 1
	
	-- 每天上交碎片的限制
	tIroFanPreheat_Stc[4] = {}
	tIroFanPreheat_Stc[4]["EventType"] = 154
	tIroFanPreheat_Stc[4]["DataType"] = 38
	tIroFanPreheat_Stc[4]["MaxData"] = 80
	
-- 基础数据
local tIroFanPreheat_Cont = {}
	tIroFanPreheat_Cont["ActivityTime"] = "2017-01-05 00:00 2017-01-11 23:59"
	tIroFanPreheat_Cont["RewardTime"] = "2017-01-05 00:00 2017-01-18 23:59"
	
	-- 剧情道具
	tIroFanPreheat_Cont["NeedItem"] = {3301728,3301729,3301730}
	
	-- 需要的背包空间
	tIroFanPreheat_Cont["Space"] = 1
	
	-- 魔族怪物ID
	tIroFanPreheat_Cont["MonsterId"] = {2820,2821,2822}
	
	-- 普通怪物掉落剧情道具的概率
	tIroFanPreheat_Cont["StartNum"] = 500
	tIroFanPreheat_Cont["EndNum"] = 10000
	
	-- 翻倍需要的天石
	tIroFanPreheat_Cont["CostEmoney"] = 88
	
	-- 每个主题对应的最多章节
	tIroFanPreheat_Cont["MaxChapter"] = {}
	tIroFanPreheat_Cont["MaxChapter"][3301728] = 8
	tIroFanPreheat_Cont["MaxChapter"][3301729] = 11
	tIroFanPreheat_Cont["MaxChapter"][3301730] = 9
	
	-- 武林通鉴
	tIroFanPreheat_Cont["MartialArtsHistory"] = 3301727

-- 每个主题中每个段落对应的二进制以及对应的对白
local tIroFanPreheat_Theme = {}
	tIroFanPreheat_Theme[1] = {}
	tIroFanPreheat_Theme[1]["Num"] = 1
	tIroFanPreheat_Theme[1]["Index"] = {}
	tIroFanPreheat_Theme[1]["Index"][3301728] = "2-1"
	tIroFanPreheat_Theme[1]["Index"][3301729] = "3-1"
	tIroFanPreheat_Theme[1]["Index"][3301730] = "4-1"

	tIroFanPreheat_Theme[2] = {}
	tIroFanPreheat_Theme[2]["Num"] = 2
	tIroFanPreheat_Theme[2]["Index"] = {}
	tIroFanPreheat_Theme[2]["Index"][3301728] = "2-2"
	tIroFanPreheat_Theme[2]["Index"][3301729] = "3-2"
	tIroFanPreheat_Theme[2]["Index"][3301730] = "4-2"

	tIroFanPreheat_Theme[3] = {}
	tIroFanPreheat_Theme[3]["Num"] = 4
	tIroFanPreheat_Theme[3]["Index"] = {}
	tIroFanPreheat_Theme[3]["Index"][3301728] = "2-3"
	tIroFanPreheat_Theme[3]["Index"][3301729] = "3-3"
	tIroFanPreheat_Theme[3]["Index"][3301730] = "4-3"

	tIroFanPreheat_Theme[4] = {}
	tIroFanPreheat_Theme[4]["Num"] = 8
	tIroFanPreheat_Theme[4]["Index"] = {}
	tIroFanPreheat_Theme[4]["Index"][3301728] = "2-4"
	tIroFanPreheat_Theme[4]["Index"][3301729] = "3-4"
	tIroFanPreheat_Theme[4]["Index"][3301730] = "4-4"

	tIroFanPreheat_Theme[5] = {}
	tIroFanPreheat_Theme[5]["Num"] = 16
	tIroFanPreheat_Theme[5]["Index"] = {}
	tIroFanPreheat_Theme[5]["Index"][3301728] = "2-5"
	tIroFanPreheat_Theme[5]["Index"][3301729] = "3-5"
	tIroFanPreheat_Theme[5]["Index"][3301730] = "4-5"

	tIroFanPreheat_Theme[6] = {}
	tIroFanPreheat_Theme[6]["Num"] = 32
	tIroFanPreheat_Theme[6]["Index"] = {}
	tIroFanPreheat_Theme[6]["Index"][3301728] = "2-6"
	tIroFanPreheat_Theme[6]["Index"][3301729] = "3-6"
	tIroFanPreheat_Theme[6]["Index"][3301730] = "4-6"

	tIroFanPreheat_Theme[7] = {}
	tIroFanPreheat_Theme[7]["Num"] = 64
	tIroFanPreheat_Theme[7]["Index"] = {}
	tIroFanPreheat_Theme[7]["Index"][3301728] = "2-7"
	tIroFanPreheat_Theme[7]["Index"][3301729] = "3-7"
	tIroFanPreheat_Theme[7]["Index"][3301730] = "4-7"

	tIroFanPreheat_Theme[8] = {}
	tIroFanPreheat_Theme[8]["Num"] = 128
	tIroFanPreheat_Theme[8]["Index"] = {}
	tIroFanPreheat_Theme[8]["Index"][3301728] = "2-8"
	tIroFanPreheat_Theme[8]["Index"][3301729] = "3-8"
	tIroFanPreheat_Theme[8]["Index"][3301730] = "4-8"

	tIroFanPreheat_Theme[9] = {}
	tIroFanPreheat_Theme[9]["Num"] = 256
	tIroFanPreheat_Theme[9]["Index"] = {}
	tIroFanPreheat_Theme[9]["Index"][3301728] = "2-9"
	tIroFanPreheat_Theme[9]["Index"][3301729] = "3-9"
	tIroFanPreheat_Theme[9]["Index"][3301730] = "4-9"

	tIroFanPreheat_Theme[10] = {}
	tIroFanPreheat_Theme[10]["Num"] = 512
	tIroFanPreheat_Theme[10]["Index"] = {}
	tIroFanPreheat_Theme[10]["Index"][3301728] = "2-10"
	tIroFanPreheat_Theme[10]["Index"][3301729] = "3-10"
	tIroFanPreheat_Theme[10]["Index"][3301730] = "4-10"

	tIroFanPreheat_Theme[11] = {}
	tIroFanPreheat_Theme[11]["Num"] = 1024
	tIroFanPreheat_Theme[11]["Index"] = {}
	tIroFanPreheat_Theme[11]["Index"][3301728] = "2-11"
	tIroFanPreheat_Theme[11]["Index"][3301729] = "3-11"
	tIroFanPreheat_Theme[11]["Index"][3301730] = "4-11"

-- 对白索引替换
local tIroFanPreheat_Index = {}
	tIroFanPreheat_Index[3301728] = {}
	tIroFanPreheat_Index[3301728]["Lock"] = {291,292,293}
	tIroFanPreheat_Index[3301728]["2-1"] = {213,214,215}
	tIroFanPreheat_Index[3301728]["2-2"] = {223,224,225}
	tIroFanPreheat_Index[3301728]["2-3"] = {233,234,235}
	tIroFanPreheat_Index[3301728]["2-4"] = {243,244,245}
	tIroFanPreheat_Index[3301728]["2-5"] = {253,254,255}
	tIroFanPreheat_Index[3301728]["2-6"] = {263,264,265}
	tIroFanPreheat_Index[3301728]["2-7"] = {273,274,275}
	tIroFanPreheat_Index[3301728]["2-8"] = {283,284,285}
	
	tIroFanPreheat_Index[3301729] = {}
	tIroFanPreheat_Index[3301729]["Lock"] = {3121,3122,3123}
	tIroFanPreheat_Index[3301729]["3-1"] = {313,314,315}
	tIroFanPreheat_Index[3301729]["3-2"] = {323,324,325}
	tIroFanPreheat_Index[3301729]["3-3"] = {333,334,335}
	tIroFanPreheat_Index[3301729]["3-4"] = {343,344,345}
	tIroFanPreheat_Index[3301729]["3-5"] = {353,354,355}
	tIroFanPreheat_Index[3301729]["3-6"] = {363,364,365}
	tIroFanPreheat_Index[3301729]["3-7"] = {373,374,375}
	tIroFanPreheat_Index[3301729]["3-8"] = {383,384,385}
	tIroFanPreheat_Index[3301729]["3-9"] = {393,394,395}
	tIroFanPreheat_Index[3301729]["3-10"] = {3103,3104,3105}
	tIroFanPreheat_Index[3301729]["3-11"] = {3113,3114,3115}
	
	tIroFanPreheat_Index[3301730] = {}
	tIroFanPreheat_Index[3301730]["Lock"] = {4101,4102,4103}
	tIroFanPreheat_Index[3301730]["4-1"] = {413,414,415}
	tIroFanPreheat_Index[3301730]["4-2"] = {423,424,425}
	tIroFanPreheat_Index[3301730]["4-3"] = {433,434,435}
	tIroFanPreheat_Index[3301730]["4-4"] = {443,444,445}
	tIroFanPreheat_Index[3301730]["4-5"] = {453,454,455}
	tIroFanPreheat_Index[3301730]["4-6"] = {463,464,465}
	tIroFanPreheat_Index[3301730]["4-7"] = {473,474,475}
	tIroFanPreheat_Index[3301730]["4-8"] = {483,484,485}
	tIroFanPreheat_Index[3301730]["4-9"] = {493,494,495}
	
-- 怪物掉落
local tIroFanPreheat_Drop = {}
	tIroFanPreheat_Drop[1] = {}
	tIroFanPreheat_Drop[1]["ItemChanceSum"] = 30000
	
	tIroFanPreheat_Drop[1][1] = {}
	tIroFanPreheat_Drop[1][1]["RandomItemChanceType"] = 2
	tIroFanPreheat_Drop[1][1]["ItemChance"] = 10000
	tIroFanPreheat_Drop[1][1]["RewardItem"] = {}
	tIroFanPreheat_Drop[1][1]["RewardItem"][1] = {}
	tIroFanPreheat_Drop[1][1]["RewardItem"][1]["Id"] = 3301728
	tIroFanPreheat_Drop[1][1]["RewardItem"][1]["Attr"] = "0 1"
	tIroFanPreheat_Drop[1][1]["Log"] = "0,0,0,0,12000599,2,3301728,1"
	
	tIroFanPreheat_Drop[1][2] = {}
	tIroFanPreheat_Drop[1][2]["RandomItemChanceType"] = 2
	tIroFanPreheat_Drop[1][2]["ItemChance"] = 10000
	tIroFanPreheat_Drop[1][2]["RewardItem"] = {}
	tIroFanPreheat_Drop[1][2]["RewardItem"][1] = {}
	tIroFanPreheat_Drop[1][2]["RewardItem"][1]["Id"] = 3301729
	tIroFanPreheat_Drop[1][2]["RewardItem"][1]["Attr"] = "0 1"
	tIroFanPreheat_Drop[1][2]["Log"] = "0,0,0,0,12000599,2,3301729,1"

	tIroFanPreheat_Drop[1][3] = {}
	tIroFanPreheat_Drop[1][3]["RandomItemChanceType"] = 2
	tIroFanPreheat_Drop[1][3]["ItemChance"] = 10000
	tIroFanPreheat_Drop[1][3]["RewardItem"] = {}
	tIroFanPreheat_Drop[1][3]["RewardItem"][1] = {}
	tIroFanPreheat_Drop[1][3]["RewardItem"][1]["Id"] = 3301730
	tIroFanPreheat_Drop[1][3]["RewardItem"][1]["Attr"] = "0 1"
	tIroFanPreheat_Drop[1][3]["Log"] = "0,0,0,0,12000599,2,3301730,1"

-- 记录玩家解锁数据	
local tIroFanPreheat_Unlock = {}

-- 奖励
local tIroFanPreheat_Reward = {}
	-- 任务奖励
	tIroFanPreheat_Reward[1] = {}
	tIroFanPreheat_Reward[1]["RewardItem"] = {}
	tIroFanPreheat_Reward[1]["RewardItem"][1] = {}
	tIroFanPreheat_Reward[1]["RewardItem"][1]["Id"] = 3301815
	tIroFanPreheat_Reward[1]["RewardItem"][1]["Attr"] = "0 %d"
	tIroFanPreheat_Reward[1]["Log"] = "0,0,0,0,12000599,2,3301815,%d"

	-- 武林通鉴
	tIroFanPreheat_Reward[2] = {}
	tIroFanPreheat_Reward[2]["RewardItem"] = {}
	tIroFanPreheat_Reward[2]["RewardItem"][1] = {}
	tIroFanPreheat_Reward[2]["RewardItem"][1]["Id"] = 3301727
	tIroFanPreheat_Reward[2]["RewardItem"][1]["Attr"] = "0 1"
	tIroFanPreheat_Reward[2]["Log"] = "0,0,0,0,12000599,2,3301727,1"

	-- 给百晓生的谢礼
	tIroFanPreheat_Reward[3] = {}
	tIroFanPreheat_Reward[3]["EventType"] = tIroFanPreheat_Stc[3]["EventType"]
	tIroFanPreheat_Reward[3]["DataType"] = tIroFanPreheat_Stc[3]["DataType"]
	tIroFanPreheat_Reward[3]["RewardData"] = 1
	tIroFanPreheat_Reward[3]["RewardTotalData"] = tIroFanPreheat_Stc[3]["MaxData"]
	tIroFanPreheat_Reward[3]["RewardItem"] = {}
	tIroFanPreheat_Reward[3]["RewardItem"][1] = {}
	tIroFanPreheat_Reward[3]["RewardItem"][1]["Id"] = 3301816
	tIroFanPreheat_Reward[3]["RewardItem"][1]["Attr"] = "0 1"
	tIroFanPreheat_Reward[3]["Log"] = "0,0,0,0,12000599,2,3301816,1"

	-- 解锁章节播放光效
	tIroFanPreheat_Reward[4] = {}
	tIroFanPreheat_Reward[4]["RewardEffect"] = {}
	tIroFanPreheat_Reward[4]["RewardEffect"]["SzObj"] = "self"
	tIroFanPreheat_Reward[4]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 使用精致的小锦袋时播放光效
	tIroFanPreheat_Reward[5] = {}
	tIroFanPreheat_Reward[5]["RewardEffect"] = {}
	tIroFanPreheat_Reward[5]["RewardEffect"]["SzObj"] = "self"
	tIroFanPreheat_Reward[5]["RewardEffect"]["Effect"] = "angelwing"

	-- 3301815,'精致的小锦袋'
	tIroFanPreheat_Reward[3301815] = {}
	tIroFanPreheat_Reward[3301815]["ItemChanceSum"] = 10000
	tIroFanPreheat_Reward[3301815]["Space"] = 3

	-- 流星	1088001	0.4	17.8%
	tIroFanPreheat_Reward[3301815][1] = {}
	tIroFanPreheat_Reward[3301815][1]["RandomItemChanceType"] = 2
	tIroFanPreheat_Reward[3301815][1]["ItemChance"] = 1780
	tIroFanPreheat_Reward[3301815][1]["RewardItem"] = {}
	tIroFanPreheat_Reward[3301815][1]["RewardItem"][1] = {}
	tIroFanPreheat_Reward[3301815][1]["RewardItem"][1]["Id"] = 1088001
	tIroFanPreheat_Reward[3301815][1]["RewardItem"][1]["Attr"] = "0 1"
	tIroFanPreheat_Reward[3301815][1]["Log"] = "0,0,3301815,1,12000599,2,1088001,1"

	-- 玄灵秘录	723341	1	10.00%
	tIroFanPreheat_Reward[3301815][2] = {}
	tIroFanPreheat_Reward[3301815][2]["RandomItemChanceType"] = 2
	tIroFanPreheat_Reward[3301815][2]["ItemChance"] = 1000
	tIroFanPreheat_Reward[3301815][2]["RewardItem"] = {}
	tIroFanPreheat_Reward[3301815][2]["RewardItem"][1] = {}
	tIroFanPreheat_Reward[3301815][2]["RewardItem"][1]["Id"] = 723341
	tIroFanPreheat_Reward[3301815][2]["RewardItem"][1]["Attr"] = "0 1"
	tIroFanPreheat_Reward[3301815][2]["Log"] = "0,0,3301815,1,12000599,2,723341,1"
	
	-- 昆仑雪水	723017	1	10.00%
	tIroFanPreheat_Reward[3301815][3] = {}
	tIroFanPreheat_Reward[3301815][3]["RandomItemChanceType"] = 2
	tIroFanPreheat_Reward[3301815][3]["ItemChance"] = 1000
	tIroFanPreheat_Reward[3301815][3]["RewardItem"] = {}
	tIroFanPreheat_Reward[3301815][3]["RewardItem"][1] = {}
	tIroFanPreheat_Reward[3301815][3]["RewardItem"][1]["Id"] = 723017
	tIroFanPreheat_Reward[3301815][3]["RewardItem"][1]["Attr"] = "0 1"
	tIroFanPreheat_Reward[3301815][3]["Log"] = "0,0,3301815,1,12000599,2,723017,1"
		
	-- 聚神丹（赠）	723700	1	10.00%
	tIroFanPreheat_Reward[3301815][4] = {}
	tIroFanPreheat_Reward[3301815][4]["RandomItemChanceType"] = 2
	tIroFanPreheat_Reward[3301815][4]["ItemChance"] = 1000
	tIroFanPreheat_Reward[3301815][4]["RewardItem"] = {}
	tIroFanPreheat_Reward[3301815][4]["RewardItem"][1] = {}
	tIroFanPreheat_Reward[3301815][4]["RewardItem"][1]["Id"] = 723700
	tIroFanPreheat_Reward[3301815][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tIroFanPreheat_Reward[3301815][4]["Log"] = "0,0,3301815,1,12000599,2,723700,1"
		
	-- 小块祈愿石	1200000	1	6.00%
	tIroFanPreheat_Reward[3301815][5] = {}
	tIroFanPreheat_Reward[3301815][5]["RandomItemChanceType"] = 2
	tIroFanPreheat_Reward[3301815][5]["ItemChance"] = 600
	tIroFanPreheat_Reward[3301815][5]["RewardItem"] = {}
	tIroFanPreheat_Reward[3301815][5]["RewardItem"][1] = {}
	tIroFanPreheat_Reward[3301815][5]["RewardItem"][1]["Id"] = 1200000
	tIroFanPreheat_Reward[3301815][5]["RewardItem"][1]["Attr"] = "0 1"
	tIroFanPreheat_Reward[3301815][5]["Log"] = "0,0,3301815,1,12000599,2,1200000,1"
		
	-- 通神丹（赠）	3003125	2	5.00%
	tIroFanPreheat_Reward[3301815][6] = {}
	tIroFanPreheat_Reward[3301815][6]["RandomItemChanceType"] = 2
	tIroFanPreheat_Reward[3301815][6]["ItemChance"] = 500
	tIroFanPreheat_Reward[3301815][6]["RewardItem"] = {}
	tIroFanPreheat_Reward[3301815][6]["RewardItem"][1] = {}
	tIroFanPreheat_Reward[3301815][6]["RewardItem"][1]["Id"] = 3003125
	tIroFanPreheat_Reward[3301815][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tIroFanPreheat_Reward[3301815][6]["Log"] = "0,0,3301815,1,12000599,2,3003125,1"
		
	-- 微光星陨石	3009000	2	5.00%
	tIroFanPreheat_Reward[3301815][7] = {}
	tIroFanPreheat_Reward[3301815][7]["RandomItemChanceType"] = 2
	tIroFanPreheat_Reward[3301815][7]["ItemChance"] = 500
	tIroFanPreheat_Reward[3301815][7]["RewardItem"] = {}
	tIroFanPreheat_Reward[3301815][7]["RewardItem"][1] = {}
	tIroFanPreheat_Reward[3301815][7]["RewardItem"][1]["Id"] = 3009000
	tIroFanPreheat_Reward[3301815][7]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tIroFanPreheat_Reward[3301815][7]["Log"] = "0,0,3301815,1,12000599,2,3009000,1"
	
	-- 良品随机宝石	3003876	2	5.00%
	tIroFanPreheat_Reward[3301815][8] = {}
	tIroFanPreheat_Reward[3301815][8]["RandomItemChanceType"] = 2
	tIroFanPreheat_Reward[3301815][8]["ItemChance"] = 500
	tIroFanPreheat_Reward[3301815][8]["RewardItem"] = {}
	tIroFanPreheat_Reward[3301815][8]["RewardItem"][1] = {}
	tIroFanPreheat_Reward[3301815][8]["RewardItem"][1]["Id"] = 3003876
	tIroFanPreheat_Reward[3301815][8]["RewardItem"][1]["Attr"] = "0 1"
	tIroFanPreheat_Reward[3301815][8]["Log"] = "0,0,3301815,1,12000599,2,3003876,1"
		
	-- 清心符（赠）	720128	2	5.00%
	tIroFanPreheat_Reward[3301815][9] = {}
	tIroFanPreheat_Reward[3301815][9]["RandomItemChanceType"] = 2
	tIroFanPreheat_Reward[3301815][9]["ItemChance"] = 500
	tIroFanPreheat_Reward[3301815][9]["RewardItem"] = {}
	tIroFanPreheat_Reward[3301815][9]["RewardItem"][1] = {}
	tIroFanPreheat_Reward[3301815][9]["RewardItem"][1]["Id"] = 720128
	tIroFanPreheat_Reward[3301815][9]["RewardItem"][1]["Attr"] = "0 1 3"
	tIroFanPreheat_Reward[3301815][9]["Log"] = "0,0,3301815,1,12000599,2,720128,1"
		
	-- 免费强炼丹（赠）	3003124	3	5.00%
	tIroFanPreheat_Reward[3301815][10] = {}
	tIroFanPreheat_Reward[3301815][10]["RandomItemChanceType"] = 2
	tIroFanPreheat_Reward[3301815][10]["ItemChance"] = 500
	tIroFanPreheat_Reward[3301815][10]["RewardItem"] = {}
	tIroFanPreheat_Reward[3301815][10]["RewardItem"][1] = {}
	tIroFanPreheat_Reward[3301815][10]["RewardItem"][1]["Id"] = 3003124
	tIroFanPreheat_Reward[3301815][10]["RewardItem"][1]["Attr"] = "0 1 3"
	tIroFanPreheat_Reward[3301815][10]["Log"] = "0,0,3301815,1,12000599,2,3003124,1"
			
	-- 一帆风顺财富包（赠）	723713	3	3.00%
	tIroFanPreheat_Reward[3301815][11] = {}
	tIroFanPreheat_Reward[3301815][11]["RandomItemChanceType"] = 2
	tIroFanPreheat_Reward[3301815][11]["ItemChance"] = 300
	tIroFanPreheat_Reward[3301815][11]["RewardItem"] = {}
	tIroFanPreheat_Reward[3301815][11]["RewardItem"][1] = {}
	tIroFanPreheat_Reward[3301815][11]["RewardItem"][1]["Id"] = 723713
	tIroFanPreheat_Reward[3301815][11]["RewardItem"][1]["Attr"] = "0 1 3"
	tIroFanPreheat_Reward[3301815][11]["Log"] = "0,0,3301815,1,12000599,2,723713,1"
	
	-- 微光星陨石*2	3009000	4	3.00%
	tIroFanPreheat_Reward[3301815][12] = {}
	tIroFanPreheat_Reward[3301815][12]["RandomItemChanceType"] = 2
	tIroFanPreheat_Reward[3301815][12]["ItemChance"] = 300
	tIroFanPreheat_Reward[3301815][12]["RewardItem"] = {}
	tIroFanPreheat_Reward[3301815][12]["RewardItem"][1] = {}
	tIroFanPreheat_Reward[3301815][12]["RewardItem"][1]["Id"] = 3009000
	tIroFanPreheat_Reward[3301815][12]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tIroFanPreheat_Reward[3301815][12]["Log"] = "0,0,3301815,1,12000599,2,3009000,2"
	
	-- 流星卷	720027	4
	tIroFanPreheat_Reward[3301815][13] = {}
	tIroFanPreheat_Reward[3301815][13]["RandomItemChanceType"] = 2
	tIroFanPreheat_Reward[3301815][13]["ItemChance"] = 300
	tIroFanPreheat_Reward[3301815][13]["RewardItem"] = {}
	tIroFanPreheat_Reward[3301815][13]["RewardItem"][1] = {}
	tIroFanPreheat_Reward[3301815][13]["RewardItem"][1]["Id"] = 720027
	tIroFanPreheat_Reward[3301815][13]["RewardItem"][1]["Attr"] = "0 1"
	tIroFanPreheat_Reward[3301815][13]["Log"] = "0,0,3301815,1,12000599,2,720027,1"
		
	-- 赤炼石+1（赠）	730001	4	3.00%
	tIroFanPreheat_Reward[3301815][14] = {}
	tIroFanPreheat_Reward[3301815][14]["RandomItemChanceType"] = 2
	tIroFanPreheat_Reward[3301815][14]["ItemChance"] = 300
	tIroFanPreheat_Reward[3301815][14]["RewardItem"] = {}
	tIroFanPreheat_Reward[3301815][14]["RewardItem"][1] = {}
	tIroFanPreheat_Reward[3301815][14]["RewardItem"][1]["Id"] = 730001
	tIroFanPreheat_Reward[3301815][14]["RewardItem"][1]["Attr"] = "0 1 3"
	tIroFanPreheat_Reward[3301815][14]["Log"] = "0,0,3301815,1,12000599,2,730001,1"
	
	--  +1枣红马礼包（赠）	723855	4	2.00%
	tIroFanPreheat_Reward[3301815][15] = {}
	tIroFanPreheat_Reward[3301815][15]["RandomItemChanceType"] = 2
	tIroFanPreheat_Reward[3301815][15]["ItemChance"] = 200
	tIroFanPreheat_Reward[3301815][15]["RewardItem"] = {}
	tIroFanPreheat_Reward[3301815][15]["RewardItem"][1] = {}
	tIroFanPreheat_Reward[3301815][15]["RewardItem"][1]["Id"] = 723855
	tIroFanPreheat_Reward[3301815][15]["RewardItem"][1]["Attr"] = "0 1 3"
	tIroFanPreheat_Reward[3301815][15]["Log"] = "0,0,3301815,1,12000599,2,723855,1"
	
	-- 微光星陨石*3	3009000	6	2.00%
	tIroFanPreheat_Reward[3301815][16] = {}
	tIroFanPreheat_Reward[3301815][16]["RandomItemChanceType"] = 2
	tIroFanPreheat_Reward[3301815][16]["ItemChance"] = 200
	tIroFanPreheat_Reward[3301815][16]["RewardItem"] = {}
	tIroFanPreheat_Reward[3301815][16]["RewardItem"][1] = {}
	tIroFanPreheat_Reward[3301815][16]["RewardItem"][1]["Id"] = 3009000
	tIroFanPreheat_Reward[3301815][16]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tIroFanPreheat_Reward[3301815][16]["Log"] = "0,0,3301815,1,12000599,2,3009000,3"
	
	-- 40点气力值	3000061	10	2.00%
	tIroFanPreheat_Reward[3301815][17] = {}
	tIroFanPreheat_Reward[3301815][17]["RandomItemChanceType"] = 2
	tIroFanPreheat_Reward[3301815][17]["ItemChance"] = 200
	tIroFanPreheat_Reward[3301815][17]["RewardItem"] = {}
	tIroFanPreheat_Reward[3301815][17]["RewardItem"][1] = {}
	tIroFanPreheat_Reward[3301815][17]["RewardItem"][1]["Id"] = 3000061
	tIroFanPreheat_Reward[3301815][17]["RewardItem"][1]["Attr"] = "0 1 3"
	tIroFanPreheat_Reward[3301815][17]["Log"] = "0,0,3301815,1,12000599,2,3000061,1"
	
	-- 赤炼石+2（赠）	730002	17	1.00%
	tIroFanPreheat_Reward[3301815][18] = {}
	tIroFanPreheat_Reward[3301815][18]["RandomItemChanceType"] = 2
	tIroFanPreheat_Reward[3301815][18]["ItemChance"] = 100
	tIroFanPreheat_Reward[3301815][18]["RewardItem"] = {}
	tIroFanPreheat_Reward[3301815][18]["RewardItem"][1] = {}
	tIroFanPreheat_Reward[3301815][18]["RewardItem"][1]["Id"] = 730002
	tIroFanPreheat_Reward[3301815][18]["RewardItem"][1]["Attr"] = "0 1 3"
	tIroFanPreheat_Reward[3301815][18]["Log"] = "0,0,3301815,1,12000599,2,730002,1"
	
	-- 80点气力值（赠）	3001410	20	2.00%
	tIroFanPreheat_Reward[3301815][19] = {}
	tIroFanPreheat_Reward[3301815][19]["RandomItemChanceType"] = 2
	tIroFanPreheat_Reward[3301815][19]["ItemChance"] = 200
	tIroFanPreheat_Reward[3301815][19]["RewardItem"] = {}
	tIroFanPreheat_Reward[3301815][19]["RewardItem"][1] = {}
	tIroFanPreheat_Reward[3301815][19]["RewardItem"][1]["Id"] = 3001410
	tIroFanPreheat_Reward[3301815][19]["RewardItem"][1]["Attr"] = "0 1 3"
	tIroFanPreheat_Reward[3301815][19]["Log"] = "0,0,3301815,1,12000599,2,3001410,1"
	
	--龙珠	1088000	55	0.20%
	tIroFanPreheat_Reward[3301815][20] = {}
	tIroFanPreheat_Reward[3301815][20]["RandomItemChanceType"] = 2
	tIroFanPreheat_Reward[3301815][20]["ItemChance"] = 20
	tIroFanPreheat_Reward[3301815][20]["RewardItem"] = {}
	tIroFanPreheat_Reward[3301815][20]["RewardItem"][1] = {}
	tIroFanPreheat_Reward[3301815][20]["RewardItem"][1]["Id"] = 1088000
	tIroFanPreheat_Reward[3301815][20]["RewardItem"][1]["Attr"] = "0 1"
	tIroFanPreheat_Reward[3301815][20]["Log"] = "0,0,3301815,1,12000599,2,1088000,1"
	
	-- 3301816,'百晓生的谢礼'
	tIroFanPreheat_Reward[3301816] = {}
	-- 500点气力值
	-- 15颗免费强炼丹（赠）	3003124
	-- 5颗明亮星陨石	3009001
	tIroFanPreheat_Reward[3301816][1] = {}
	tIroFanPreheat_Reward[3301816][1]["Space"] = 5
	tIroFanPreheat_Reward[3301816][1]["LogId"] = 12000599
	tIroFanPreheat_Reward[3301816][1]["DeleteItem"] = {}
	tIroFanPreheat_Reward[3301816][1]["DeleteItem"][1] = {}
	tIroFanPreheat_Reward[3301816][1]["DeleteItem"][1]["Id"] = 3301816
	tIroFanPreheat_Reward[3301816][1]["RewardStrengthValue"] = {}
	tIroFanPreheat_Reward[3301816][1]["RewardStrengthValue"]["Value"] = 500
	tIroFanPreheat_Reward[3301816][1]["RewardItem"] = {}
	tIroFanPreheat_Reward[3301816][1]["RewardItem"][1] = {}
	tIroFanPreheat_Reward[3301816][1]["RewardItem"][1]["Id"] = 3003124
	tIroFanPreheat_Reward[3301816][1]["RewardItem"][1]["Attr"] = "0 15 3"
	tIroFanPreheat_Reward[3301816][1]["RewardItem"][2] = {}
	tIroFanPreheat_Reward[3301816][1]["RewardItem"][2]["Id"] = 3009001
	tIroFanPreheat_Reward[3301816][1]["RewardItem"][2]["Attr"] = "0 5 0 2880 1"
	-- 1000点气力值
	-- 30颗免费强炼丹（赠）	3003124
	-- 10颗明亮星陨石	3009001
	tIroFanPreheat_Reward[3301816][2] = {}
	tIroFanPreheat_Reward[3301816][2]["Space"] = 10
	tIroFanPreheat_Reward[3301816][2]["LogId"] = 12000599
	tIroFanPreheat_Reward[3301816][2]["EmoneyLog"] = "350	4455	88	88	1	"
	tIroFanPreheat_Reward[3301816][2]["DeleteItem"] = {}
	tIroFanPreheat_Reward[3301816][2]["DeleteItem"][1] = {}
	tIroFanPreheat_Reward[3301816][2]["DeleteItem"][1]["Id"] = 3301816
	tIroFanPreheat_Reward[3301816][2]["RewardStrengthValue"] = {}
	tIroFanPreheat_Reward[3301816][2]["RewardStrengthValue"]["Value"] = 1000
	tIroFanPreheat_Reward[3301816][2]["RewardItem"] = {}
	tIroFanPreheat_Reward[3301816][2]["RewardItem"][1] = {}
	tIroFanPreheat_Reward[3301816][2]["RewardItem"][1]["Id"] = 3003124
	tIroFanPreheat_Reward[3301816][2]["RewardItem"][1]["Attr"] = "0 30 3"
	tIroFanPreheat_Reward[3301816][2]["RewardItem"][2] = {}
	tIroFanPreheat_Reward[3301816][2]["RewardItem"][2]["Id"] = 3009001
	tIroFanPreheat_Reward[3301816][2]["RewardItem"][2]["Attr"] = "0 10 0 2880 1"
	
----------------------------------逻辑部分---------------------------------------------
-- 获取该主题哪些已解锁，哪些未解锁
function IroFanPreheat_GetUnlock(nNowUserId)
	-- 初始化玩家解锁数据
	local nUserId = nNowUserId or Get_UserId()
	tIroFanPreheat_Unlock[nUserId] = {}
	-- 已解锁
	tIroFanPreheat_Unlock[nUserId]["Unlock"] = {}
	-- 未解锁
	tIroFanPreheat_Unlock[nUserId]["Lock"] = {}

	for i,v in pairs (tIroFanPreheat_Cont["NeedItem"]) do
		local nItemId = v
		local nEvent = tIroFanPreheat_Stc[nItemId]["EventType"]
		local nType = tIroFanPreheat_Stc[nItemId]["DataType"] 
		local nData = Get_UserStatisticValue(nEvent,nType)
		tIroFanPreheat_Unlock[nUserId]["Unlock"][nItemId] = {}
		tIroFanPreheat_Unlock[nUserId]["Lock"][nItemId] = {}

		for i,v in pairs(tIroFanPreheat_Theme) do
			local nNum = v["Num"]
			
			if i <= tIroFanPreheat_Cont["MaxChapter"][nItemId] then
				if Sys_ParseNumbersContain(nNum,nData) then
					table.insert(tIroFanPreheat_Unlock[nUserId]["Unlock"][nItemId],i)
				else
					table.insert(tIroFanPreheat_Unlock[nUserId]["Lock"][nItemId],i)
				end
			end
		end
	end
end

-- 活动时间外
function IroFanPreheat_OutOfTime()
	-- 初始化玩家解锁数据
	local nUserId = Get_UserId()
	tIroFanPreheat_Unlock[nUserId] = {}
	-- 已解锁
	tIroFanPreheat_Unlock[nUserId]["Unlock"] = {}
	-- 未解锁
	tIroFanPreheat_Unlock[nUserId]["Lock"] = {}

	for i,v in pairs (tIroFanPreheat_Cont["NeedItem"]) do
		local nItemId = v
		tIroFanPreheat_Unlock[nUserId]["Unlock"][nItemId] = {}
		tIroFanPreheat_Unlock[nUserId]["Lock"][nItemId] = {}

		for i,v in pairs(tIroFanPreheat_Theme) do
			if i <= tIroFanPreheat_Cont["MaxChapter"][nItemId] then
				table.insert(tIroFanPreheat_Unlock[nUserId]["Unlock"][nItemId],i)
			end
		end
	end
end

-- 判断是否全部解锁
function IroFanPreheat_JudgeLock()
	local nUserId = Get_UserId()
	
	-- 获取该主题哪些已解锁，哪些未解锁
	IroFanPreheat_GetUnlock(nUserId)
	
	for i,v in pairs (tIroFanPreheat_Cont["NeedItem"]) do
		if #tIroFanPreheat_Unlock[nUserId]["Unlock"][v] < tIroFanPreheat_Cont["MaxChapter"][v] then
			return false
		end
	end
	
	return true
end

-- 判断玩家是否首次上交材料
function IroFanPreheat_First()
	for i,v in pairs (tIroFanPreheat_Cont["NeedItem"]) do
		local nItemId = v
		local nEvent = tIroFanPreheat_Stc[nItemId]["EventType"]
		local nType = tIroFanPreheat_Stc[nItemId]["DataType"] 
		local nData = Get_UserStatisticValue(nEvent,nType)
		if nData > 0 then
			return false
		end
	end
	
	return true
end

-- 获取玩家身上3种碎片道具的数量
function IroFanPreheat_GetTaskItem()
	local tItemNum = {}
	local nItemNum = 0
	
	for i,v in pairs (tIroFanPreheat_Cont["NeedItem"]) do
		local nNum = Get_CountItemType(v,0)
		
		if nNum > 0 then
			nItemNum = nItemNum + nNum
			tItemNum[v] = nNum
		end
	end
	
	return tItemNum,nItemNum
end

-- 上交碎片
function IroFanPreheat_HandFragment()
	local nNpcId = Get_NpcId()
	
	if nNpcId == nil or nNpcId <= 0 then
		return
	end
	
	-- 活动时间
	if not Sys_ChkFullTime(tIroFanPreheat_Cont["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	local tItemNum,nItemNum = IroFanPreheat_GetTaskItem()

	-- 判断是否有碎片
	if nItemNum <= 0 then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	local nEvent = tIroFanPreheat_Stc[4]["EventType"]
	local nType = tIroFanPreheat_Stc[4]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	
	-- 判断是否上交过80个
	if nData >= tIroFanPreheat_Stc[4]["MaxData"] then
		return
	end
	
	if nData + nItemNum > tIroFanPreheat_Stc[4]["MaxData"] then
		nItemNum = tIroFanPreheat_Stc[4]["MaxData"] - nData
	end

	local nItemId = tIroFanPreheat_Cont["MartialArtsHistory"]
	local nSpace = 0
	local bAddItem = false
	local bFirst = false
	
	-- 判断是否有武林通鉴
	if not Item_ChkItem(nItemId) then
		nSpace = nSpace + 1
		bAddItem = true
	end
	
	-- 判断所需的背包空间
	if (nSpace > 0) and (not User_CheckLeftSpace(nSpace)) then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	-- 删除物品
	for i,v in pairs (tItemNum) do
		if not (Item_ChkMulItem(i,i,v) and Item_DelMulItem(i,i,v)) then
			return
		end
	end
	
	-- 判断是否首次上交
	if IroFanPreheat_First() then
		bFirst = true
	end
	
	-- 给武林通鉴
	if bAddItem then
		RewardTemplate_UseItemAndMsg(tIroFanPreheat_Reward[2])
	end
	
	-- 解锁章节
	local nLockNum = IroFanPreheat_UnlockChapter(tItemNum)
	
	-- 设掩码值
	Task_AddStatistic(nEvent,nType,nItemNum,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	-- 给奖励
	local tReward = CommonFunc_Copy(tIroFanPreheat_Reward[1])
	tReward["RewardItem"][1]["Attr"] = string.format(tReward["RewardItem"][1]["Attr"],nItemNum)
	tReward["Log"] = string.format(tReward["Log"],nItemNum)
	RewardTemplate_UseItemAndMsg(tReward)
	
	-- 出提示
	if bFirst then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
	elseif bAddItem and nLockNum > 0 then
		tNpcGossip[15745]["Text282"] = string.format(tIroFanPreheat_Text[15745]["Text282"],nLockNum)
		LinkNpcGossipFunc_New(nNpcId,"2-8")
	elseif nLockNum > 0 then
		tNpcGossip[15745]["Text272"] = string.format(tIroFanPreheat_Text[15745]["Text272"],nLockNum)
		LinkNpcGossipFunc_New(nNpcId,"2-7")
	else
		LinkNpcGossipFunc_New(nNpcId,"2-6")
	end
end

-- 解锁章节
function IroFanPreheat_UnlockChapter(tItemTable)
	local nUserId = Get_UserId()
	local nLockNum = 0
	-- 获取解锁的章节
	IroFanPreheat_GetUnlock(nUserId)

	for i,v in pairs(tItemTable) do
		local nNum = IroFanPreheat_ChkLock(i,v,nUserId)
		nLockNum = nLockNum + nNum
	end
	
	-- 解锁章节
	if nLockNum > 0 then
		RewardTemplate_UseItemAndMsg(tIroFanPreheat_Reward[4])
	end
	
	return nLockNum
end

function IroFanPreheat_ChkLock(nItemId,nLockNum,nUserId)
	local nLen = #tIroFanPreheat_Unlock[nUserId]["Lock"][nItemId]
	
	-- 判断该主题是否已全部解锁
	if nLen <= 0 then
		return 0
	end
	
	-- 判断是否超出未解锁的数量
	if nLockNum >= nLen then
		for i,v in pairs (tIroFanPreheat_Unlock[nUserId]["Lock"][nItemId]) do
			IroFanPreheat_SetStc(nItemId,v,nUserId)
			table.insert(tIroFanPreheat_Unlock[nUserId]["Unlock"][nItemId],v)
		end
		
		return nLen
	end
	
	for i = 1,nLockNum do
		local nRandom = math.random(1,#tIroFanPreheat_Unlock[nUserId]["Lock"][nItemId])
		IroFanPreheat_SetStc(nItemId,tIroFanPreheat_Unlock[nUserId]["Lock"][nItemId][nRandom],nUserId)
		table.insert(tIroFanPreheat_Unlock[nUserId]["Unlock"][nItemId],tIroFanPreheat_Unlock[nUserId]["Lock"][nItemId][nRandom])
		table.remove(tIroFanPreheat_Unlock[nUserId]["Lock"][nItemId],nRandom)
	end
	return nLockNum
end

function IroFanPreheat_SetStc(nItemId,nIndex,nUserId)
	local nData = tIroFanPreheat_Theme[nIndex]["Num"]
	local nEvent = tIroFanPreheat_Stc[nItemId]["EventType"]
	local nType = tIroFanPreheat_Stc[nItemId]["DataType"]
	Task_AddStatistic(nEvent,nType,nData,1,nUserId)
	
	-- 出提示
	local sContent = string.format(tIroFanPreheat_Text["Unlock"][nItemId],tIroFanPreheat_Text["Unlock"][nIndex])
	User_TalkChannel2005(sContent,nUserId)
end

-- 领取《武林通鉴》书稿
function IroFanPreheat_ReceiveManuscript()
	local nNpcId = Get_NpcId()
	
	if nNpcId == nil or nNpcId <= 0 then
		return
	end
	
	local nItemId = tIroFanPreheat_Cont["MartialArtsHistory"]

	-- 判断是否有武林通鉴
	if Item_ChkItem(nItemId) then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	end
	
	-- 给武林通鉴
	RewardTemplate_UseItemAndMsg(tIroFanPreheat_Reward[2])
	LinkNpcGossipFunc_New(nNpcId,"4-1")
end

-- 领取百晓生的谢礼
function IroFanPreheat_RewardItem()
	local nNpcId = Get_NpcId()
	
	if nNpcId == nil or nNpcId <= 0 then
		return
	end
	
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tIroFanPreheat_Cont["RewardTime"]) then
		Sys_MsgBox(tIroFanPreheat_Text[15745]["Msg"])
		return
	end
	
	-- 判断是否全部解锁了
	if not IroFanPreheat_JudgeLock() then
		Sys_MsgBox(tIroFanPreheat_Text[15745]["NoCondit"])
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	-- 判断是否领取过
	local nEvent = tIroFanPreheat_Stc[3]["EventType"]
	local nType = tIroFanPreheat_Stc[3]["DataType"]
	
	if Task_ChkStcValue(nEvent,nType,">=",tIroFanPreheat_Stc[3]["MaxData"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	
	-- 给百晓生的谢礼
	RewardTemplate_UseItemAndMsg(tIroFanPreheat_Reward[3])
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end

-- 道具掉落
function IroFanPreheat_DropItem(nMosterId)
	-- 活动时间
	if not Sys_ChkFullTime(tIroFanPreheat_Cont["ActivityTime"]) then
		return
	end

	-- 判断背包空间
	if not User_CheckLeftSpace(tIroFanPreheat_Cont["Space"]) then
		return
	end
	
	local nEvent = tIroFanPreheat_Stc[2]["EventType"]
	local nType = tIroFanPreheat_Stc[2]["DataType"]
	local nMaxData = tIroFanPreheat_Stc[2]["MaxData"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	
	-- 判断今天是否还有可掉落数量
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		nData = 0
	elseif nData >= nMaxData then
		return
	end
	
	local bMonster = false
	
	for i,v in pairs(tIroFanPreheat_Cont["MonsterId"]) do
		if nMosterId == v then
			bMonster = true
			break
		end
	end
	
	-- 判断是否是魔族怪物
	if not bMonster then
		if not Sys_Random(tIroFanPreheat_Cont["StartNum"],tIroFanPreheat_Cont["EndNum"]) then
			return
		end
	end
	
	-- 加掩码值
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	-- 给奖励
	RewardTemplate_NewRandom(tIroFanPreheat_Drop,1)
	
	-- 判断是否是最后一次掉落
	if nData + 1 >= nMaxData then
		Sys_MsgBox(string.format(tIroFanPreheat_Text["Max"],nMaxData))
		return
	end
end

-- 打开精致的小锦袋
function IroFanPreheat_SmallBrocadeBag(nItemId)
	-- 判断背包空间
	if not User_CheckLeftSpace(tIroFanPreheat_Reward[nItemId]["Space"]) then
		-- 给提示
		User_TalkChannel2005(string.format(tIroFanPreheat_Text["NoSpace"],tIroFanPreheat_Reward[nItemId]["Space"]))
		return
	end

	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tIroFanPreheat_Reward,nItemId)
		RewardTemplate_UseItemAndMsg(tIroFanPreheat_Reward[5])
	end
end

-- 打开百晓生的谢礼
function IroFanPreheat_UseItem(nItemId,nType)
	-- 判断背包空间是否满足
	local nSpace = tIroFanPreheat_Reward[nItemId][nType]["Space"]
	
	if (nSpace ~= nil) and (nSpace > 0) and (not User_CheckLeftSpace(nSpace)) then
		tItem[3301816]["Text231"] = string.format(tIroFanPreheat_Text[3301816]["Text231"],nSpace)
		LinkItemGossipFunc_New(nItemId,"2-3")
		return
	end
	
	-- 表示是否是翻倍
	if nType == 2 then
		local nUserEmoney = Get_UserEMoney()
		
		if nUserEmoney < tIroFanPreheat_Cont["CostEmoney"] then
			LinkItemGossipFunc_New(nItemId,"2-2")
			return
		end
		
		-- 扣除玩家天石
		if not User_AddEMoney(-tIroFanPreheat_Cont["CostEmoney"]) then
			return
		end
	end
	
	RewardTemplate_UseItemAndMsg(tIroFanPreheat_Reward[nItemId][nType])
end

-- 打开书稿
function IroFanPreheat_OpenBook(nItemId)
	-- 判断是否在活动时间内
	if Sys_ChkFullTime(tIroFanPreheat_Cont["ActivityTime"]) then
		IroFanPreheat_GetUnlock()
	else
		IroFanPreheat_OutOfTime()
	end
	
	local nUserId = Get_UserId()
	local nChapter1 = #tIroFanPreheat_Unlock[nUserId]["Unlock"][3301728]
	local nChapter2 = #tIroFanPreheat_Unlock[nUserId]["Unlock"][3301729]
	local nChapter3 = #tIroFanPreheat_Unlock[nUserId]["Unlock"][3301730]
	tIroFanPreheat_Unlock[nUserId]["Bookmark"] = nil
	
	tItem[nItemId]["Text115"] = string.format(tIroFanPreheat_Text[3301727]["Text115"],nChapter1)
	tItem[nItemId]["Text117"] = string.format(tIroFanPreheat_Text[3301727]["Text117"],nChapter2)
	tItem[nItemId]["Text119"] = string.format(tIroFanPreheat_Text[3301727]["Text119"],nChapter3)
	LinkItemGossipFunc_New(nItemId,"1-1")
end

-- 上一页或者下一页
function IroFanPreheat_Flip(nItemId,nChoose,nType)
	local nUserId = Get_UserId()
	if tIroFanPreheat_Unlock[nUserId]["Bookmark"] == nil then
		tIroFanPreheat_Unlock[nUserId]["Bookmark"] = 0
	end
	
	local nBookmark = tIroFanPreheat_Unlock[nUserId]["Bookmark"]
	local bUnlock = false
	
	-- 判断是上一页或者下一页
	if nType == 1 then
		nBookmark = nBookmark - 1
	else
		nBookmark = nBookmark + 1
	end
	
	if nBookmark <= 0 then
		nBookmark = 1
	elseif nBookmark > tIroFanPreheat_Cont["MaxChapter"][nChoose] then
		nBookmark = tIroFanPreheat_Cont["MaxChapter"][nChoose]
	end

	for i,v in pairs (tIroFanPreheat_Unlock[nUserId]["Unlock"][nChoose]) do
		if v == nBookmark then
			bUnlock = true
			break
		end
	end

	local sIndex = tIroFanPreheat_Theme[nBookmark]["Index"][nChoose]
	local tIndex = tIroFanPreheat_Index[nChoose][sIndex]
	
	-- 判断是要显示解锁或者未解锁的对白
	if bUnlock then
		for i,v in pairs(tIndex) do
			tItem[nItemId]["Text" .. v] = tItem[nItemId]["DialogueText"]["Text" .. v]
		end
	else
		for i,v in pairs(tIndex) do
			local nIndex = tIroFanPreheat_Index[nChoose]["Lock"][i]
			tItem[nItemId]["Text" .. v] = tItem[nItemId]["DialogueText"]["Text" .. nIndex]
		end
	end
	
	tIroFanPreheat_Unlock[nUserId]["Bookmark"] = nBookmark
	LinkItemGossipFunc_New(nItemId,sIndex)
end

-- 自动寻路到百晓生处
function IroFanPreheat_Automatic()
	Sys_MsgBox(tIroFanPreheat_Text["Msg"],"NpcPosition_PathFind</N>15745")
end

----------------------------------NPC部分---------------------------------------------
-- 百晓生
tNpcFace[2454] = 74
tNpcGossip[15745] = tNpcGossip[15745] or DefaultNpc:new{}
tNpcGossip[15745]["OptionHidden"] = 1
tNpcGossip[15745]["DialogueText"] = tIroFanPreheat_Text[15745]

tNpcGossip[15745]["Text2-1"] = {211}
tNpcGossip[15745]["tOption2-1"] = {6}

tNpcGossip[15745]["Text2-2"] = {221,222}
tNpcGossip[15745]["tOption2-2"] = {7}

tNpcGossip[15745]["Text2-4"] = {241,242,243}
tNpcGossip[15745]["tOption2-4"] = {10}

tNpcGossip[15745]["Text2-5"] = {251}
tNpcGossip[15745]["tOption2-5"] = {11}

tNpcGossip[15745]["Text2-6"] = {261,262}
tNpcGossip[15745]["tOption2-6"] = {24}

tNpcGossip[15745]["Text2-7"] = {271,272}
tNpcGossip[15745]["tOption2-7"] = {15}

tNpcGossip[15745]["Text2-8"] = {281,282,283}
tNpcGossip[15745]["tOption2-8"] = {16}

tNpcGossip[15745]["Text3-1"] = {311,312}
tNpcGossip[15745]["tOption3-1"] = {13}

tNpcGossip[15745]["Text3-2"] = {321}
tNpcGossip[15745]["tOption3-2"] = {14}

tNpcGossip[15745]["Text3-3"] = {331,332}
tNpcGossip[15745]["tOption3-3"] = {20}

tNpcGossip[15745]["Text4-1"] = {411}
tNpcGossip[15745]["tOption4-1"] = {21}

tNpcGossip[15745]["Text4-2"] = {421,422}
tNpcGossip[15745]["tOption4-2"] = {22}

tNpcGossip[15745]["Text4-3"] = {431}
tNpcGossip[15745]["tOption4-3"] = {23}

----------------------------------物品部分---------------------------------------------

-- 《武林通鉴》书稿
tItemFace[3301727] = 351
tItem[3301727] = tItem[3301727] or {}
tItem[3301727]["DialogueText"] = tIroFanPreheat_Text[3301727]
tItem[3301727]["Function"] = function(nItemId,sItemName)
	IroFanPreheat_OpenBook(nItemId)
end

tItem[3301727]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110}
tItem[3301727]["tOption1-1"] = {1,2,3,4}

tItem[3301727]["OptionChkFunc1"] = function ()
	local nUserId = Get_UserId()
	return #tIroFanPreheat_Unlock[nUserId]["Unlock"][3301728] > 0
end
tItem[3301727]["OptionFunc1"] = "IroFanPreheat_Flip</N>3301727</N>3301728"

tItem[3301727]["OptionChkFunc2"] = function ()
	local nUserId = Get_UserId()
	return #tIroFanPreheat_Unlock[nUserId]["Unlock"][3301729] > 0
end
tItem[3301727]["OptionFunc2"] = "IroFanPreheat_Flip</N>3301727</N>3301729"

tItem[3301727]["OptionChkFunc3"] = function ()
	local nUserId = Get_UserId()
	return #tIroFanPreheat_Unlock[nUserId]["Unlock"][3301730] > 0
end
tItem[3301727]["OptionFunc3"] = "IroFanPreheat_Flip</N>3301727</N>3301730"

tItem[3301727]["Text2-1"] = {211,212,213,214,215,216}
tItem[3301727]["tOption2-1"] = {7,6}
tItem[3301727]["OptionFunc6"] = "IroFanPreheat_Flip</N>3301727</N>3301728</N>2"
tItem[3301727]["OptionFunc7"] = "IroFanPreheat_OpenBook</N>3301727"

tItem[3301727]["Text2-2"] = {221,222,223,224,225,226}
tItem[3301727]["tOption2-2"] = {5,6,7}
tItem[3301727]["OptionFunc5"] = "IroFanPreheat_Flip</N>3301727</N>3301728</N>1"

tItem[3301727]["Text2-3"] = {231,232,233,234,235,236}
tItem[3301727]["tOption2-3"] = {5,6,7}

tItem[3301727]["Text2-4"] = {241,242,243,244,245,246}
tItem[3301727]["tOption2-4"] = {5,6,7}

tItem[3301727]["Text2-5"] = {251,252,253,254,255,256}
tItem[3301727]["tOption2-5"] = {5,6,7}

tItem[3301727]["Text2-6"] = {261,262,263,264,265,266}
tItem[3301727]["tOption2-6"] = {5,6,7}

tItem[3301727]["Text2-7"] = {271,272,273,274,275,276}
tItem[3301727]["tOption2-7"] = {5,6,7}

tItem[3301727]["Text2-8"] = {281,282,283,284,285,286}
tItem[3301727]["tOption2-8"] = {5,7}

tItem[3301727]["Text3-1"] = {311,312,313,314,315,316}
tItem[3301727]["tOption3-1"] = {7,9}
tItem[3301727]["OptionFunc9"] = "IroFanPreheat_Flip</N>3301727</N>3301729</N>2"

tItem[3301727]["Text3-2"] = {321,322,323,324,325,326}
tItem[3301727]["tOption3-2"] = {8,9,7}
tItem[3301727]["OptionFunc8"] = "IroFanPreheat_Flip</N>3301727</N>3301729</N>1"

tItem[3301727]["Text3-3"] = {331,332,333,334,335,336}
tItem[3301727]["tOption3-3"] = {8,9,7}

tItem[3301727]["Text3-4"] = {341,342,343,344,345,346}
tItem[3301727]["tOption3-4"] = {8,9,7}

tItem[3301727]["Text3-5"] = {351,352,353,354,355,356}
tItem[3301727]["tOption3-5"] = {8,9,7}

tItem[3301727]["Text3-6"] = {361,362,363,364,365,366}
tItem[3301727]["tOption3-6"] = {8,9,7}

tItem[3301727]["Text3-7"] = {371,372,373,374,375,376}
tItem[3301727]["tOption3-7"] = {8,9,7}

tItem[3301727]["Text3-8"] = {381,382,383,384,385,386}
tItem[3301727]["tOption3-8"] = {8,9,7}

tItem[3301727]["Text3-9"] = {391,392,393,394,395,396}
tItem[3301727]["tOption3-9"] = {8,9,7}

tItem[3301727]["Text3-10"] = {3101,3102,3103,3104,3105,3106}
tItem[3301727]["tOption3-10"] = {8,9,7}

tItem[3301727]["Text3-11"] = {3111,3112,3113,3114,3115,3116}
tItem[3301727]["tOption3-11"] = {8,7}

tItem[3301727]["Text4-1"] = {411,412,413,414,415,416}
tItem[3301727]["tOption4-1"] = {7,12}
tItem[3301727]["OptionFunc12"] = "IroFanPreheat_Flip</N>3301727</N>3301730</N>2"

tItem[3301727]["Text4-2"] = {421,422,423,424,425,426}
tItem[3301727]["tOption4-2"] = {11,12,7}
tItem[3301727]["OptionFunc11"] = "IroFanPreheat_Flip</N>3301727</N>3301730</N>1"

tItem[3301727]["Text4-3"] = {431,432,433,434,435,436}
tItem[3301727]["tOption4-3"] = {11,12,7}

tItem[3301727]["Text4-4"] = {441,442,443,444,445,446}
tItem[3301727]["tOption4-4"] = {11,12,7}

tItem[3301727]["Text4-5"] = {451,452,453,454,455,456}
tItem[3301727]["tOption4-5"] = {11,12,7}

tItem[3301727]["Text4-6"] = {461,462,463,464,465,466}
tItem[3301727]["tOption4-6"] = {11,12,7}

tItem[3301727]["Text4-7"] = {471,472,473,474,475,476}
tItem[3301727]["tOption4-7"] = {11,12,7}

tItem[3301727]["Text4-8"] = {481,482,483,484,485,486}
tItem[3301727]["tOption4-8"] = {11,12,7}

tItem[3301727]["Text4-9"] = {491,492,493,494,495,496}
tItem[3301727]["tOption4-9"] = {11,7}

-- 百晓生的谢礼
tItem[3301816] = tItem[3301816] or {}
tItem[3301816]["DialogueText"] = tIroFanPreheat_Text[3301816]

tItem[3301816]["Text1-1"] = {111,112,113}
tItem[3301816]["tOption1-1"] = {1,2,3}
tItem[3301816]["OptionFunc1"] = "IroFanPreheat_UseItem</N>3301816</N>1"
tItem[3301816]["OptionPoint2"] = "2-1"

tItem[3301816]["Text2-1"] = {211}
tItem[3301816]["tOption2-1"] = {4,5}
tItem[3301816]["OptionFunc4"] = "IroFanPreheat_UseItem</N>3301816</N>2"

tItem[3301816]["Text2-2"] = {221}
tItem[3301816]["tOption2-2"] = {6}

tItem[3301816]["Text2-3"] = {231}
tItem[3301816]["tOption2-3"] = {7}

-- 精致的小锦袋
tItem[3301815] = tItem[3301815] or {}
tItem[3301815]["Function"] = function(nItemId,sItemName)
	IroFanPreheat_SmallBrocadeBag(nItemId)
end

-- 幽光碎片
tItem[3301728] = tItem[3301728] or {}
tItem[3301728]["Function"] = function(nItemId,sItemName)
	IroFanPreheat_Automatic()
end

-- 碧纹碎片
tItem[3301729] = tItem[3301729] or {}
tItem[3301729]["Function"] = function(nItemId,sItemName)
	IroFanPreheat_Automatic()
end

-- 黯冥碎片
tItem[3301730] = tItem[3301730] or {}
tItem[3301730]["Function"] = function(nItemId,sItemName)
	IroFanPreheat_Automatic()
end

-- 百晓生的来信
tItemFace[3301726] = 352
tItem[3301726] = tItem[3301726] or {}
tItem[3301726]["Function"] = function(nItemId,sItemName)
	local sUserName = Get_UserName()
	tItem[nItemId]["Text111"] = string.format(tBackpackLetter_Text[3301726]["Text"]["111"],sUserName)
	LinkItemGossipFunc_New(nItemId,"1-1")
end
----------------------------------怪物掉落---------------------------------------------
-- 片区怪掉落配置
-- local tIroFanPreheat_AreaLoad = {}
	-- tIroFanPreheat_AreaLoad["ActivityTime"] = tIroFanPreheat_Cont["ActivityTime"]
	-- tIroFanPreheat_AreaLoad["Function"] = IroFanPreheat_DropItem
	-- tIroFanPreheat_AreaLoad["Area"] = {1,2,3,4,5,6,7,8,9}

-- local tIroFanPreheat_Moster = {}
	-- tIroFanPreheat_Moster["ActivityTime"] = tIroFanPreheat_Cont["ActivityTime"]
	-- tIroFanPreheat_Moster["Function"] = IroFanPreheat_DropItem
	-- tIroFanPreheat_Moster["MonsterId"] = {2820,2821,2822}
	
-- table.insert(tMonsterDrop_AreaLoad,tIroFanPreheat_AreaLoad)
-- table.insert(tMonsterDrop_AreaLoad,tIroFanPreheat_Moster)