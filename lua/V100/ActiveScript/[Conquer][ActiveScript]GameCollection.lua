------------------------------------------------------------------------------------
--Name：        191213[英文征服][活动脚本]博弈玩法集合（1.16-2.5）
--Creator:      耿力兀
--Created:     2019-12-13
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--前缀：GameCollection_
--emoneybuylog:1000 01355
--stc ： 21153-21161  211 53 背包信
--		 211 54 提交数量
--		 211 55 锁妖盒单日乐透券获取数量
--		 211 56 通天塔单日乐透券获取数量
--		 211 57 500张奖励领取记录
--		 211 58 2000张奖励领取记录
--		 211 59 10000张奖励领取记录
--		 211 60 50000张奖励领取记录
--		 211 61 100000张奖励领取记录
----------------------------------表配置部分--------------------------------------------
local tGameCollection_Reward = {}
	-- ===乐透新秀礼盒
	-- ===索引:tGameCollection_Reward[3314730]
	-- ===删除: 3314730,1
	-- ===NewEMoneyLog: 1000,01355
	tGameCollection_Reward[3314730] = {}
	tGameCollection_Reward[3314730]["LogId"] = 12001790
	tGameCollection_Reward[3314730]["DeleteItem"] = {}
	tGameCollection_Reward[3314730]["DeleteItem"][1] = {}
	tGameCollection_Reward[3314730]["DeleteItem"][1]["Id"] = 3314730 -- 【库】 3314730 【库里没有该物品】[属性:]
	tGameCollection_Reward[3314730]["RewardEMoneyMono"] = {}
	tGameCollection_Reward[3314730]["RewardEMoneyMono"]["Value"] = 100 -- 天石（赠）, 【需求】100天石（赠）
	tGameCollection_Reward[3314730]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1355"
	tGameCollection_Reward[3314730]["RewardItem"] = {}
	tGameCollection_Reward[3314730]["RewardItem"][1] = {}
	tGameCollection_Reward[3314730]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】1颗明亮星陨石
	tGameCollection_Reward[3314730]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tGameCollection_Reward[3314730]["RewardItem"][2] = {}
	tGameCollection_Reward[3314730]["RewardItem"][2]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】1颗人参果
	tGameCollection_Reward[3314730]["RewardItem"][2]["Attr"] = "0 1" -- GinsengFruit*1
	tGameCollection_Reward[3314730]["RewardEffect"] = {}
	tGameCollection_Reward[3314730]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGameCollection_Reward[3314730]["RewardEffect"]["Effect"] = "angelwing"


	tGameCollection_Reward[3314731] = {}
	-- ===乐透达人礼盒
	-- ===索引:tGameCollection_Reward[3314731]
	-- ===删除: 3314731,1
	-- ===NewEMoneyLog: 1000,01355
	tGameCollection_Reward[3314731]["LogId"] = 12001790
	tGameCollection_Reward[3314731]["DeleteItem"] = {}
	tGameCollection_Reward[3314731]["DeleteItem"][1] = {}
	tGameCollection_Reward[3314731]["DeleteItem"][1]["Id"] = 3314731 -- 【库】 3314731 【库里没有该物品】[属性:]
	tGameCollection_Reward[3314731]["RewardEMoneyMono"] = {}
	tGameCollection_Reward[3314731]["RewardEMoneyMono"]["Value"] = 300 -- 天石（赠）, 【需求】300天石（赠）
	tGameCollection_Reward[3314731]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1355"
	tGameCollection_Reward[3314731]["RewardItem"] = {}
	tGameCollection_Reward[3314731]["RewardItem"][1] = {}
	tGameCollection_Reward[3314731]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】2颗明亮星陨石
	tGameCollection_Reward[3314731]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tGameCollection_Reward[3314731]["RewardItem"][2] = {}
	tGameCollection_Reward[3314731]["RewardItem"][2]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】2颗+3赤炼石（赠）
	tGameCollection_Reward[3314731]["RewardItem"][2]["Attr"] = "0 2 3" -- +3Stone（赠）*2
	tGameCollection_Reward[3314731]["RewardEffect"] = {}
	tGameCollection_Reward[3314731]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGameCollection_Reward[3314731]["RewardEffect"]["Effect"] = "angelwing"


	tGameCollection_Reward[3314732] = {}
	-- ===乐透高手礼盒
	-- ===索引:tGameCollection_Reward[3314732]
	-- ===删除: 3314732,1
	-- ===NewEMoneyLog: 1000,01355
	tGameCollection_Reward[3314732]["LogId"] = 12001790
	tGameCollection_Reward[3314732]["DeleteItem"] = {}
	tGameCollection_Reward[3314732]["DeleteItem"][1] = {}
	tGameCollection_Reward[3314732]["DeleteItem"][1]["Id"] = 3314732 -- 【库】 3314732 【库里没有该物品】[属性:]
	tGameCollection_Reward[3314732]["RewardEMoneyMono"] = {}
	tGameCollection_Reward[3314732]["RewardEMoneyMono"]["Value"] = 1000 -- 天石（赠）, 【需求】1000天石（赠）
	tGameCollection_Reward[3314732]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1355"
	tGameCollection_Reward[3314732]["RewardItem"] = {}
	tGameCollection_Reward[3314732]["RewardItem"][1] = {}
	tGameCollection_Reward[3314732]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】50个万能神纹精粹（赠）
	tGameCollection_Reward[3314732]["RewardItem"][1]["Attr"] = "0 50 3" -- UniversalRuneEssence（赠）*50
	tGameCollection_Reward[3314732]["RewardItem"][2] = {}
	tGameCollection_Reward[3314732]["RewardItem"][2]["Id"] = 3009101 -- DragonFruit[3009101][属性:9][叠加:99][金币:0], 【表格】3颗龙鳞果
	tGameCollection_Reward[3314732]["RewardItem"][2]["Attr"] = "0 3" -- DragonFruit*3
	tGameCollection_Reward[3314732]["RewardEffect"] = {}
	tGameCollection_Reward[3314732]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGameCollection_Reward[3314732]["RewardEffect"]["Effect"] = "angelwing"


	tGameCollection_Reward[3314733] = {}
	-- ===乐透强者礼盒
	-- ===索引:tGameCollection_Reward[3314733]
	-- ===删除: 3314733,1
	tGameCollection_Reward[3314733]["LogId"] = 12001790
	tGameCollection_Reward[3314733]["DeleteItem"] = {}
	tGameCollection_Reward[3314733]["DeleteItem"][1] = {}
	tGameCollection_Reward[3314733]["DeleteItem"][1]["Id"] = 3314733 -- 【库】 3314733 【库里没有该物品】[属性:]
	tGameCollection_Reward[3314733]["RewardItem"] = {}
	tGameCollection_Reward[3314733]["RewardItem"][1] = {}
	tGameCollection_Reward[3314733]["RewardItem"][1]["Id"] = 200646 -- CelestialDragon(Star)[200646][属性:0][叠加:0][金币:0], 【表格】1件30天灵霄海龙【星辰版】坐骑外套（赠）
	tGameCollection_Reward[3314733]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑CelestialDragon(Star)（赠）*1
	tGameCollection_Reward[3314733]["RewardItem"][2] = {}
	tGameCollection_Reward[3314733]["RewardItem"][2]["Id"] = 3005412 -- PowerEraser[3005412][属性:0][叠加:10000][金币:0], 【表格】3颗散功丹（赠）
	tGameCollection_Reward[3314733]["RewardItem"][2]["Attr"] = "0 3 3" -- PowerEraser（赠）*3
	tGameCollection_Reward[3314733]["RewardItem"][3] = {}
	tGameCollection_Reward[3314733]["RewardItem"][3]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】100颗免费强炼丹（赠）
	tGameCollection_Reward[3314733]["RewardItem"][3]["Attr"] = "0 100 3" -- FavoredTrainingPill（赠）*100（[错误]物品数量超10个）
	tGameCollection_Reward[3314733]["RewardItem"][4] = {}
	tGameCollection_Reward[3314733]["RewardItem"][4]["Id"] = 3009101 -- DragonFruit[3009101][属性:9][叠加:99][金币:0], 【表格】20颗龙鳞果
	tGameCollection_Reward[3314733]["RewardItem"][4]["Attr"] = "0 20" -- DragonFruit*20（[错误]物品数量超10个）
	tGameCollection_Reward[3314733]["RewardEffect"] = {}
	tGameCollection_Reward[3314733]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGameCollection_Reward[3314733]["RewardEffect"]["Effect"] = "angelwing"


	tGameCollection_Reward[3314734] = {}
	-- ===乐透王者礼盒
	-- ===索引:tGameCollection_Reward[3314734]
	-- ===删除: 3314734,1
	tGameCollection_Reward[3314734]["LogId"] = 12001790
	tGameCollection_Reward[3314734]["DeleteItem"] = {}
	tGameCollection_Reward[3314734]["DeleteItem"][1] = {}
	tGameCollection_Reward[3314734]["DeleteItem"][1]["Id"] = 3314734 -- 【库】 3314734 【库里没有该物品】[属性:]
	tGameCollection_Reward[3314734]["RewardItem"] = {}
	tGameCollection_Reward[3314734]["RewardItem"][1] = {}
	tGameCollection_Reward[3314734]["RewardItem"][1]["Id"] = 200629 -- AuspiciousCloud[200629][属性:0][叠加:0][金币:0], 【表格】1件60天AuspiciousCloud坐骑外套（赠）
	tGameCollection_Reward[3314734]["RewardItem"][1]["Attr"] = "0 1 3 86400 1 0 0 1" -- 60天时效(激活)的1%神佑AuspiciousCloud（赠）*1
	tGameCollection_Reward[3314734]["RewardItem"][2] = {}
	tGameCollection_Reward[3314734]["RewardItem"][2]["Id"] = 3311748 -- RareYellowRune(B)Fragment[3311748][属性:9][叠加:10000][金币:0], 【表格】2个稀有神纹碎片（赠）
	tGameCollection_Reward[3314734]["RewardItem"][2]["Attr"] = "0 2" -- RareYellowRune(B)Fragment*2
	tGameCollection_Reward[3314734]["RewardItem"][3] = {}
	tGameCollection_Reward[3314734]["RewardItem"][3]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】5颗晶莹星陨石
	tGameCollection_Reward[3314734]["RewardItem"][3]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的RadiantStarStone*5
	tGameCollection_Reward[3314734]["RewardItem"][4] = {}
	tGameCollection_Reward[3314734]["RewardItem"][4]["Id"] = 730005 -- +5Stone[730005][属性:0][叠加:0][金币:0], 【表格】1个+5赤炼石（赠）
	tGameCollection_Reward[3314734]["RewardItem"][4]["Attr"] = "0 1 3" -- +5Stone（赠）*1
	tGameCollection_Reward[3314734]["RewardEffect"] = {}
	tGameCollection_Reward[3314734]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGameCollection_Reward[3314734]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tGameCollection_Reward[3314735] = {}
	-- ===给乐透券
	-- ===索引:tGameCollection_Reward[3314735]
	tGameCollection_Reward[3314735]["LogId"] = 12001790
	tGameCollection_Reward[3314735]["RewardItem"] = {}
	tGameCollection_Reward[3314735]["RewardItem"][1] = {}
	tGameCollection_Reward[3314735]["RewardItem"][1]["Id"] = 3314735 --  3314735 【库里没有该物品】, 【表格】乐透券
	tGameCollection_Reward[3314735]["RewardItem"][1]["Attr"] = "0 1" --  3314735 【库里没有该物品】*1
	tGameCollection_Reward[3314735]["RewardEffect"] = {}
	tGameCollection_Reward[3314735]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGameCollection_Reward[3314735]["RewardEffect"]["Effect"] = "angelwing"

	tGameCollection_Reward[1] = {}
	-- ===给1段奖励
	-- ===索引:tGameCollection_Reward[1]
	tGameCollection_Reward[1]["LogId"] = 12001790
	tGameCollection_Reward[1]["EmoneyLog"] = "350	23038	0	0	1	"
	tGameCollection_Reward[1]["RewardItem"] = {}
	tGameCollection_Reward[1]["RewardItem"][1] = {}
	tGameCollection_Reward[1]["RewardItem"][1]["Id"] = 3314730 --  3314730 【库里没有该物品】, 【表格】乐透新秀礼盒
	tGameCollection_Reward[1]["RewardItem"][1]["Attr"] = "0 1" --  3314730 【库里没有该物品】*1
	tGameCollection_Reward[1]["RewardEffect"] = {}
	tGameCollection_Reward[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGameCollection_Reward[1]["RewardEffect"]["Effect"] = "angelwing"


	tGameCollection_Reward[2] = {}
	-- ===给2段奖励
	-- ===索引:tGameCollection_Reward[2]
	tGameCollection_Reward[2]["LogId"] = 12001790
	tGameCollection_Reward[2]["EmoneyLog"] = "350	23039	0	0	1	"
	tGameCollection_Reward[2]["RewardItem"] = {}
	tGameCollection_Reward[2]["RewardItem"][1] = {}
	tGameCollection_Reward[2]["RewardItem"][1]["Id"] = 3314731 --  3314731 【库里没有该物品】, 【表格】乐透达人礼盒
	tGameCollection_Reward[2]["RewardItem"][1]["Attr"] = "0 1" --  3314731 【库里没有该物品】*1
	tGameCollection_Reward[2]["RewardEffect"] = {}
	tGameCollection_Reward[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGameCollection_Reward[2]["RewardEffect"]["Effect"] = "angelwing"


	tGameCollection_Reward[3] = {}
	-- ===给3段奖励
	-- ===索引:tGameCollection_Reward[3]
	tGameCollection_Reward[3]["LogId"] = 12001790
	tGameCollection_Reward[3]["EmoneyLog"] = "350	23040	0	0	1	"
	tGameCollection_Reward[3]["RewardItem"] = {}
	tGameCollection_Reward[3]["RewardItem"][1] = {}
	tGameCollection_Reward[3]["RewardItem"][1]["Id"] = 3314732 --  3314732 【库里没有该物品】, 【表格】乐透高手礼盒
	tGameCollection_Reward[3]["RewardItem"][1]["Attr"] = "0 1" --  3314732 【库里没有该物品】*1
	tGameCollection_Reward[3]["RewardEffect"] = {}
	tGameCollection_Reward[3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGameCollection_Reward[3]["RewardEffect"]["Effect"] = "angelwing"


	tGameCollection_Reward[4] = {}
	-- ===给4段奖励
	-- ===索引:tGameCollection_Reward[4]
	tGameCollection_Reward[4]["LogId"] = 12001790
	tGameCollection_Reward[4]["EmoneyLog"] = "350	23041	0	0	1	"
	tGameCollection_Reward[4]["RewardItem"] = {}
	tGameCollection_Reward[4]["RewardItem"][1] = {}
	tGameCollection_Reward[4]["RewardItem"][1]["Id"] = 3314733 --  3314733 【库里没有该物品】, 【表格】乐透强者礼盒
	tGameCollection_Reward[4]["RewardItem"][1]["Attr"] = "0 1" --  3314733 【库里没有该物品】*1
	tGameCollection_Reward[4]["RewardEffect"] = {}
	tGameCollection_Reward[4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGameCollection_Reward[4]["RewardEffect"]["Effect"] = "angelwing"


	tGameCollection_Reward[5] = {}
	-- ===给5段奖励
	-- ===索引:tGameCollection_Reward[5]
	tGameCollection_Reward[5]["LogId"] = 12001790
	tGameCollection_Reward[5]["EmoneyLog"] = "350	23042	0	0	1	"
	tGameCollection_Reward[5]["RewardItem"] = {}
	tGameCollection_Reward[5]["RewardItem"][1] = {}
	tGameCollection_Reward[5]["RewardItem"][1]["Id"] = 3314734 --  3314734 【库里没有该物品】, 【表格】乐透王者礼盒
	tGameCollection_Reward[5]["RewardItem"][1]["Attr"] = "0 1" --  3314734 【库里没有该物品】*1
	tGameCollection_Reward[5]["RewardEffect"] = {}
	tGameCollection_Reward[5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGameCollection_Reward[5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===乐透王者至尊礼盒
	-- ===索引:tGameCollection_Reward[3316011]
	-- ===删除: 3316011,1
	tGameCollection_Reward[3316011] = {}
	tGameCollection_Reward[3316011]["LogId"] = 12001790
	tGameCollection_Reward[3316011]["DeleteItem"] = {}
	tGameCollection_Reward[3316011]["DeleteItem"][1] = {}
	tGameCollection_Reward[3316011]["DeleteItem"][1]["Id"] = 3316011 -- 【库】LotteryKingPack[属性:9]
	tGameCollection_Reward[3316011]["RewardItem"] = {}
	tGameCollection_Reward[3316011]["RewardItem"][1] = {}
	tGameCollection_Reward[3316011]["RewardItem"][1]["Id"] = 193565 -- LavaCatRobe(Star)[193565][属性:0][叠加:0][金币:0], 【表格】120天LavaCatRobe（Star）
	tGameCollection_Reward[3316011]["RewardItem"][1]["Attr"] = "0 1 3 172800 1 0 0 1" -- 120天时效(激活)的1%神佑LavaCatRobe(Star)（赠）*1
	tGameCollection_Reward[3316011]["RewardItem"][2] = {}
	tGameCollection_Reward[3316011]["RewardItem"][2]["Id"] = 3311748 -- RareYellowRuneFragment[3311748][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片*10
	tGameCollection_Reward[3316011]["RewardItem"][2]["Attr"] = "0 10" -- RareYellowRuneFragment（赠）*10
	tGameCollection_Reward[3316011]["RewardEffect"] = {}
	tGameCollection_Reward[3316011]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGameCollection_Reward[3316011]["RewardEffect"]["Effect"] = "angelwing"


	tGameCollection_Reward[3316012] = {}
	-- ===乐透强者尊享礼盒
	-- ===索引:tGameCollection_Reward[3316012]
	-- ===删除: 3316012,1
	tGameCollection_Reward[3316012]["LogId"] = 12001790
	tGameCollection_Reward[3316012]["DeleteItem"] = {}
	tGameCollection_Reward[3316012]["DeleteItem"][1] = {}
	tGameCollection_Reward[3316012]["DeleteItem"][1]["Id"] = 3316012 -- 【库】LotteryMasterPack[属性:9]
	tGameCollection_Reward[3316012]["RewardItem"] = {}
	tGameCollection_Reward[3316012]["RewardItem"][1] = {}
	tGameCollection_Reward[3316012]["RewardItem"][1]["Id"] = 193565 -- LavaCatRobe(Star)[193565][属性:0][叠加:0][金币:0], 【表格】90天LavaCatRobe（Star）
	tGameCollection_Reward[3316012]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑LavaCatRobe(Star)（赠）*1
	tGameCollection_Reward[3316012]["RewardItem"][2] = {}
	tGameCollection_Reward[3316012]["RewardItem"][2]["Id"] = 3311748 -- RareYellowRuneFragment[3311748][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片*7
	tGameCollection_Reward[3316012]["RewardItem"][2]["Attr"] = "0 7" -- RareYellowRuneFragment（赠）*7
	tGameCollection_Reward[3316012]["RewardStrengthValue"] = {}
	tGameCollection_Reward[3316012]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】1w气力值
	tGameCollection_Reward[3316012]["RewardEffect"] = {}
	tGameCollection_Reward[3316012]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGameCollection_Reward[3316012]["RewardEffect"]["Effect"] = "angelwing"


	tGameCollection_Reward[3316013] = {}
	-- ===乐透高手豪华礼盒
	-- ===索引:tGameCollection_Reward[3316013]
	-- ===删除: 3316013,1
	tGameCollection_Reward[3316013]["LogId"] = 12001790
	tGameCollection_Reward[3316013]["DeleteItem"] = {}
	tGameCollection_Reward[3316013]["DeleteItem"][1] = {}
	tGameCollection_Reward[3316013]["DeleteItem"][1]["Id"] = 3316013 -- 【库】LotteryExpertPack[属性:9]
	tGameCollection_Reward[3316013]["RewardItem"] = {}
	tGameCollection_Reward[3316013]["RewardItem"][1] = {}
	tGameCollection_Reward[3316013]["RewardItem"][1]["Id"] = 193565 -- LavaCatRobe(Star)[193565][属性:0][叠加:0][金币:0], 【表格】60天LavaCatRobe（Star）
	tGameCollection_Reward[3316013]["RewardItem"][1]["Attr"] = "0 1 3 86400 1 0 0 1" -- 60天时效(激活)的1%神佑LavaCatRobe(Star)（赠）*1
	tGameCollection_Reward[3316013]["RewardItem"][2] = {}
	tGameCollection_Reward[3316013]["RewardItem"][2]["Id"] = 3311748 -- RareYellowRuneFragment[3311748][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片*5
	tGameCollection_Reward[3316013]["RewardItem"][2]["Attr"] = "0 5" -- RareYellowRuneFragment（赠）*5
	tGameCollection_Reward[3316013]["RewardStrengthValue"] = {}
	tGameCollection_Reward[3316013]["RewardStrengthValue"]["Value"] = 8000 -- 气力值, 【需求】8000气力值
	tGameCollection_Reward[3316013]["RewardEffect"] = {}
	tGameCollection_Reward[3316013]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGameCollection_Reward[3316013]["RewardEffect"]["Effect"] = "angelwing"


	tGameCollection_Reward[3316014] = {}
	-- ===乐透达人典藏礼盒
	-- ===索引:tGameCollection_Reward[3316014]
	-- ===删除: 3316014,1
	tGameCollection_Reward[3316014]["LogId"] = 12001790
	tGameCollection_Reward[3316014]["DeleteItem"] = {}
	tGameCollection_Reward[3316014]["DeleteItem"][1] = {}
	tGameCollection_Reward[3316014]["DeleteItem"][1]["Id"] = 3316014 -- 【库】LotteryRookiePack[属性:9]
	tGameCollection_Reward[3316014]["RewardItem"] = {}
	tGameCollection_Reward[3316014]["RewardItem"][1] = {}
	tGameCollection_Reward[3316014]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹*100
	tGameCollection_Reward[3316014]["RewardItem"][1]["Attr"] = "0 100 3" -- UniversalRuneEssence（赠）*100
	tGameCollection_Reward[3316014]["RewardItem"][2] = {}
	tGameCollection_Reward[3316014]["RewardItem"][2]["Id"] = 3311748 -- RareYellowRuneFragment[3311748][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片*3
	tGameCollection_Reward[3316014]["RewardItem"][2]["Attr"] = "0 3" -- RareYellowRuneFragment（赠）*3
	tGameCollection_Reward[3316014]["RewardStrengthValue"] = {}
	tGameCollection_Reward[3316014]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】5000气力值
	tGameCollection_Reward[3316014]["RewardEffect"] = {}
	tGameCollection_Reward[3316014]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGameCollection_Reward[3316014]["RewardEffect"]["Effect"] = "angelwing"


	tGameCollection_Reward[3316015] = {}
	-- ===乐透新秀精装礼盒
	-- ===索引:tGameCollection_Reward[3316015]
	-- ===删除: 3316015,1
	tGameCollection_Reward[3316015]["LogId"] = 12001790
	tGameCollection_Reward[3316015]["DeleteItem"] = {}
	tGameCollection_Reward[3316015]["DeleteItem"][1] = {}
	tGameCollection_Reward[3316015]["DeleteItem"][1]["Id"] = 3316015 -- 【库】LotteryRookiePack[属性:9]
	tGameCollection_Reward[3316015]["RewardItem"] = {}
	tGameCollection_Reward[3316015]["RewardItem"][1] = {}
	tGameCollection_Reward[3316015]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹*50
	tGameCollection_Reward[3316015]["RewardItem"][1]["Attr"] = "0 50 3" -- UniversalRuneEssence（赠）*50
	tGameCollection_Reward[3316015]["RewardItem"][2] = {}
	tGameCollection_Reward[3316015]["RewardItem"][2]["Id"] = 3311748 -- RareYellowRuneFragment[3311748][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片*1
	tGameCollection_Reward[3316015]["RewardItem"][2]["Attr"] = "0 1" -- RareYellowRuneFragment（赠）*1
	tGameCollection_Reward[3316015]["RewardStrengthValue"] = {}
	tGameCollection_Reward[3316015]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气力值
	tGameCollection_Reward[3316015]["RewardEffect"] = {}
	tGameCollection_Reward[3316015]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGameCollection_Reward[3316015]["RewardEffect"]["Effect"] = "angelwing"






local tGameCollection_Web = {}
	tGameCollection_Web["Web"] = "https://coevent.99.com/lotteryticketrank/"

local tGameCollection_Stc = {}
	tGameCollection_Stc["EventType"] = 211
	tGameCollection_Stc["DataType"] = {}
	tGameCollection_Stc["DataType"][1] = 54		--提交总数
	tGameCollection_Stc["DataType"][2] = 55		--锁妖盒单日乐透券获取数量
	tGameCollection_Stc["DataType"][3] = 56 	--通天塔单日乐透券获取数量
	tGameCollection_Stc["Reward"] = {}
	tGameCollection_Stc["Reward"][1] = 57
	tGameCollection_Stc["Reward"][2] = 58
	tGameCollection_Stc["Reward"][3] = 59
	tGameCollection_Stc["Reward"][4] = 60
	tGameCollection_Stc["Reward"][5] = 61
--阶段奖励所需乐透券	
local tGameCollection_Data = {}
	tGameCollection_Data[1] = 500
	tGameCollection_Data[2] = 2000
	tGameCollection_Data[3] = 10000
	tGameCollection_Data[4] = 50000
	tGameCollection_Data[5] = 100000
	
--阶段奖励对应的礼包id		
local tGameCollection_ItemId = {}
	tGameCollection_ItemId[1] = 3314730
	tGameCollection_ItemId[2] = 3314731
	tGameCollection_ItemId[3] = 3314732
	tGameCollection_ItemId[4] = 3314733
	tGameCollection_ItemId[5] = 3314734
	
--通天塔层数对应乐透券数量
local tGameCollection_DemonTower = {}
	tGameCollection_DemonTower["Max"] = 5000
	tGameCollection_DemonTower[4134] = 1
	tGameCollection_DemonTower[4135] = 3
	tGameCollection_DemonTower[4136] = 6
	tGameCollection_DemonTower[4137] = 12
	tGameCollection_DemonTower[4138] = 30
	tGameCollection_DemonTower[4139] = 60
	tGameCollection_DemonTower[4140] = 120
	tGameCollection_DemonTower[4141] = 300
--emoneylog
local tGameCollection_Log = {}
	tGameCollection_Log["Handup"] = "350	23037	0	0	%d	"
	tGameCollection_Log["ZMT"] = "350	23043	0	0	%d	"

--寻路npc
local tGameCollection_Npc = {}
	tGameCollection_Npc["NPC"] = 25778

--区分服务器
local tGameCollection_Global = {}
	tGameCollection_Global["GlobalId"] = 54023
	
----------------------------------逻辑部分---------------------------------------------
--线下页面
function GameCollection_OpenH5(nNpcId)
	local nGameCollection_UserId = Get_UserId()
	if not Sys_ChkFullTime(tActivityTime["GameCollection"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return 
	end 
	User_SendWebDialog(tGameCollection_Web["Web"],nGameCollection_UserId)
end

--上交乐透券
function GameCollection_HandOn(nNpcId,nItemId)
	if not Item_ChkItem(nItemId) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return 
	end 
	local nGameCollection_ItemNum = Get_CountItemType(nItemId,0)
	if Item_ChkMulItem(nItemId,nItemId,nGameCollection_ItemNum) and Item_DelMulItem(nItemId,nItemId,nGameCollection_ItemNum) then
		local nGameCollection_Event = tGameCollection_Stc["EventType"]
		local nGameCollection_Type = tGameCollection_Stc["DataType"][1] 
		--加掩码
		Task_AddStatistic(nGameCollection_Event,nGameCollection_Type,nGameCollection_ItemNum,1)
		Task_SetStcTimestamp(nGameCollection_Event,nGameCollection_Type,0)
		Sys_SaveEmoneyBuy(string.format(tGameCollection_Log["Handup"],nGameCollection_ItemNum))
		Sys_MsgBox(string.format(tGameCollection_Text["Succeed"],nGameCollection_ItemNum))
	end 
end 

--通天塔获得乐透券
function GameCollection_Tower(nMonsterID)
	if not Sys_ChkFullTime(tActivityTime["GameCollection"]["ActivityTime"]) then
		return 
	end 
	local nIndex = Get_SysDynaGlobalData(tGameCollection_Global["GlobalId"],0)
	if nIndex ~= 1 then 
		return
	end 
	local nGameCollection_Event = tGameCollection_Stc["EventType"]
	local nGameCollection_TowerType = tGameCollection_Stc["DataType"][3]
	
	--判断背包空间
	if not User_CheckLeftSpace(1) then
		local sText = string.format(tGameCollection_Text["NoSpace"],1)
		Sys_MsgBox(sText)
		return
	end
	
	--隔天
	if Task_StcInterval(nGameCollection_Event,nGameCollection_TowerType,1,4) then
		Task_SetStatistic(nGameCollection_Event,nGameCollection_TowerType,0,1)
		Task_SetStcTimestamp(nGameCollection_Event,nGameCollection_TowerType,0)
	end
	local nGameCollection_TowerDate = Get_UserStatisticValue(nGameCollection_Event,nGameCollection_TowerType)
	-- 每日通天塔上限
	if nGameCollection_TowerDate>= tGameCollection_DemonTower["Max"]then
		return
	end
	local tReward = CommonFunc_Copy(tGameCollection_Reward[3314735])
	tReward["RewardItem"][1]["Attr"] = "0 "..tGameCollection_DemonTower[nMonsterID]
	
	--加通天塔单日数量掩码                 
	if Task_AddStatistic(nGameCollection_Event,nGameCollection_TowerType,tGameCollection_DemonTower[nMonsterID],1) then 
		Task_SetStcTimestamp(nGameCollection_Event,nGameCollection_TowerType,0)
		Sys_SaveEmoneyBuy(string.format(tGameCollection_Log["ZMT"],tGameCollection_DemonTower[nMonsterID]))
		RewardTemplate_UseItemAndMsg(tReward)
	end 
end 

--领奖
function GameCollection_GetReward(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["GameCollection"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return 
	end 
	--乐透券数量
	local nGameCollection_Event = tGameCollection_Stc["EventType"]
	local nGameCollection_Type = tGameCollection_Stc["DataType"][1] 
	local nGameCollection_Date = Get_UserStatisticValue(nGameCollection_Event,nGameCollection_Type)
	
	--领奖阶段
	local nIndex = 0
	local nGameCollection_Reward = 0
	for i = 1, #tGameCollection_Data do
		if nGameCollection_Date >= tGameCollection_Data[i] then
			nGameCollection_Reward = tGameCollection_Stc["Reward"][i]
			if Task_ChkStcValue(nGameCollection_Event,nGameCollection_Reward,"==",0,nUserId) then
				nIndex = i
				break
			end
		end
	end
	--没有可以领取的奖励
	if nIndex == 0 then
		Sys_MsgBox(tGameCollection_Text["NoReward"])
		return
	end
	local nSpace = RewardTemplate_GetRewardSpace(tGameCollection_Reward[nIndex])

	--判断背包空间
	if not User_CheckLeftSpace(nSpace) then
		local sText = string.format(tGameCollection_Text["NoSpace"],nSpace)
		Sys_MsgBox(sText)
		return
	end
	--打掩码给奖励
	nGameCollection_Reward = tGameCollection_Stc["Reward"][nIndex]
	if Task_SetStatistic(nGameCollection_Event,nGameCollection_Reward,1,1,nUserId) then
		RewardTemplate_UseItem(tGameCollection_Reward[nIndex])
	end
end 
----------------------------------NPC部分---------------------------------------------
tNpcFace[6005] = 31
tNpcGossip[25778] = tNpcGossip[25778] or DefaultNpc:new{}
tNpcGossip[25778]["OptionHidden"] = 1
tNpcGossip[25778]["DialogueText"] = tGameCollection_Text[25778]
-- 活动前
tNpcGossip[25778]["Text1-1"] = {111,112,113}
tNpcGossip[25778]["tOption1-1"] = {111}
tNpcGossip[25778]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["GameCollection"]["ActivityTime"])
end

-- 活动后
tNpcGossip[25778]["Text1-2"] = {121}
tNpcGossip[25778]["tOption1-2"] = {121}
tNpcGossip[25778]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tActivityTime["GameCollection"]["ActivityTime"])
end

-- 活动中
tNpcGossip[25778]["Text1-3"] = {131,132,133,134}
tNpcGossip[25778]["tOption1-3"] = {131,132,133,134}
tNpcGossip[25778]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["GameCollection"]["ActivityTime"])
end

--上交乐透券
tNpcGossip[25778]["OptionPoint131"] = "2-1"
--领取阶段奖励
tNpcGossip[25778]["OptionPoint132"] = "3-1"
--线下排行榜
tNpcGossip[25778]["OptionFunc133"] = "GameCollection_OpenH5</N>25778"
--如何获得乐透券
tNpcGossip[25778]["OptionPoint134"] = "4-1"

tNpcGossip[25778]["Text2-1"] = {211}
tNpcGossip[25778]["tOption2-1"] = {211,212}
tNpcGossip[25778]["OptionFunc211"] = "GameCollection_HandOn</N>25778</N>3314735"


tNpcGossip[25778]["Text2-2"] = {221}
tNpcGossip[25778]["tOption2-2"] = {221}

--领奖
tNpcGossip[25778]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110}
tNpcGossip[25778]["tOption3-1"] = {311,312}
tNpcGossip[25778]["OptionFunc311"] = "GameCollection_GetReward</N>25778"
tNpcGossip[25778]["ChkFunc3-1"] = function ()
	--显示积分
	local nUserId = Get_UserId()
	local nGameCollection_Event = tGameCollection_Stc["EventType"]
	local nGameCollection_Type = tGameCollection_Stc["DataType"][1] 
	local nGameCollection_Date = Get_UserStatisticValue(nGameCollection_Event,nGameCollection_Type)
	tNpcGossip[25778]["Text3110"] =string.format(tGameCollection_Text[25778]["Text3110"],nGameCollection_Date)
	--是否领奖
	for i = 1,5 do
		local nGameCollection_Reward = tGameCollection_Stc["Reward"][i]
		if Task_ChkStcValue(nGameCollection_Event,nGameCollection_Reward,">",0,nUserId) then
			tNpcGossip[25778]["Text31"..(i+3)] = tGameCollection_Text[25778]["Text51"..(i+3)]
		end
	end
	return true
end

--活动规则
tNpcGossip[25778]["Text4-1"] = {411,412}
tNpcGossip[25778]["tOption4-1"] = {411,412,414}
tNpcGossip[25778]["OptionPoint411"] = "4-2"
tNpcGossip[25778]["OptionPoint412"] = "4-3"
--tNpcGossip[25778]["OptionPoint413"] = "4-4"
tNpcGossip[25778]["OptionPoint414"] = "4-5"

tNpcGossip[25778]["Text4-2"] = {421,422,423,424,425,426,427,428,429,4210}
tNpcGossip[25778]["tOption4-2"] = {421,422}
tNpcGossip[25778]["OptionPoint421"] = "4-1"

tNpcGossip[25778]["Text4-3"] = {431,432,433,434,435,436,437,438,439,4310,4311,4312,4313}
tNpcGossip[25778]["tOption4-3"] = {431,432}
tNpcGossip[25778]["OptionPoint431"] = "4-1"

tNpcGossip[25778]["Text4-4"] = {441,442,443,444,445,446}
tNpcGossip[25778]["tOption4-4"] = {441,442}
tNpcGossip[25778]["OptionPoint441"] = "4-1"

tNpcGossip[25778]["Text4-5"] = {451,452,453,454,455,456,457,458,459,4510,4511,4512,4513}
tNpcGossip[25778]["tOption4-5"] = {451,452}
tNpcGossip[25778]["OptionPoint451"] = "4-1"

---------------------------------物品部分---------------------------------------------
tItem[3314730] = tItem[3314730] or {}
tItem[3314730]["Function"] = function(nItemId)
	if tGameCollection_Reward[nItemId]["RewardEMoneyMono"] ~= nil then
		local nAddEMoneyMono = tGameCollection_Reward[nItemId]["RewardEMoneyMono"]["Value"]
		local nUserMonoEMoney=Get_UserMonoEMoney(nUserId)
		if (nUserMonoEMoney+nAddEMoneyMono) >G_User_MaxEmoneyMono then
			Sys_MsgBox(tGameCollection_Text["MoneyMax"])
			return
		else
			RewardTemplate_UseItemAndMsg(tGameCollection_Reward[nItemId])
		end
	else
		RewardTemplate_UseItemAndMsg(tGameCollection_Reward[nItemId])
	end
end
tItem[3314731] = tItem[3314730] or {}
tItem[3314732] = tItem[3314730] or {}
tItem[3314733] = tItem[3314730] or {}
tItem[3314734] = tItem[3314730] or {}
tItem[3316011] = tItem[3314730] or {}
tItem[3316012] = tItem[3314730] or {}
tItem[3316013] = tItem[3314730] or {}
tItem[3316014] = tItem[3314730] or {}
tItem[3316015] = tItem[3314730] or {}

tItem[3314735] = tItem[3314735] or {}
tItem[3314735]["Function"] = function(nItemId)
	NpcPosition_PathFind(tGameCollection_Npc["NPC"])
end
