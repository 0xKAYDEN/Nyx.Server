------------------------------------------------------------------------------------
--Name:			200224[英文征服][活动脚本]3月金币博弈新服活动（3.12-4.12）
--Creator:		郑飞
--Created:		2020-02-24
------------------------------------------------------------------------------------
-- 任务需求：
-- #更新时间：
-- #2020年3月12日（周四）例行维护
-- #
-- #更新范围：
-- #全区全服
-- #
-- #任务概述：
-- #1.参与PK赛有奖（3.12-4.12）
-- #复用19年8月王者服，同步库记录玩家王者积分。
-- #新制作3个发奖action，同步到英文，阿语，西语。
-- #
-- #相关链接：
-- #http://forum.nderp.99.com/Forum/TopicList-338732.aspx
-- #
-- #2.金币摇摇树（3.12-4.12）
-- #制作NPC，收取金币供玩家进行抽奖并记录在同步库。以1M为最小上交金币单位。
-- #新制作发奖action，同步到英文，阿语，西语。具体内容详见附件。
-- #
-- #3.参与博弈有奖（3.12-4.12）
-- #新制作发奖action，同步到英文，阿语，西语。具体内容详见附件。
-- #论坛链接：http://forum.nderp.99.com/Forum/TopicList-361738.aspx

-- logid：		 12001885
-- emoneybuylog：100001569-100001575
-- ##stc 掩码说明
-- ##stc(214,89) 背包信
-- ##stc(214,90) 记录玩家上交金币数量

-- 命名规范：
-- CoinGame_

-- 41732 = V100\ActiveScript\[Conquer][ActiveScript]CoinGame.lua
-- 41732 = V100\活动脚本\[征服][活动脚本]3月金币博弈新服活动（3.12-4.12）.lua

----------------------------------表数据配置部分-------------------------------------
local tCoinGame_Data = {}
	--活动时间
	tCoinGame_Data["ActivityTime"] = tActivityTime["CoinGame"]["ActivityTime"]
	
	--网页链接
	tCoinGame_Data["Link"] = "https://coevent.99.com/servergoldrush/" 
	
	
	--寻路到NPC
	tCoinGame_Data["NpcId"] = 26001
	
	--提交银两的数量
	tCoinGame_Data["CostMoney"] = {}
	tCoinGame_Data["CostMoney"][1] = 1000000
	tCoinGame_Data["CostMoney"][2] = 5000000
	tCoinGame_Data["CostMoney"][3] = 10000000
	tCoinGame_Data["CostMoney"][4] = 50000000

	
--Log
local tCoinGame_Log = {}
	tCoinGame_Log["EMoneyLog"] = {}
	tCoinGame_Log["EMoneyLog"][1] = "1000	01575	%d	%d	1	" 

	tCoinGame_Log["Log"] = {}
	tCoinGame_Log["Log"][1] = "%d,0,0,0,12001885,0,0,0" 


--掩码
local tCoinGame_Stc = {}
	--记录玩家上交的金币数
	tCoinGame_Stc[1] = {}
	tCoinGame_Stc[1]["EventType"] = 214
	tCoinGame_Stc[1]["DataType"] = 90
	tCoinGame_Stc[1]["Mod"] = 1000
	tCoinGame_Stc[1]["Limit"] = 2144967000
	
----------------------------------奖励配置---------------------------------------------
local tCoinGame_Reward = {}
	-- ===积分冠军宝箱
	-- ===索引:tCoinGame_Reward[3329913]
	-- ===删除:3329913,1
	-- ===NewEMoneyLog:1000,01569
	-- ===
	tCoinGame_Reward[3329913] = {}
	tCoinGame_Reward[3329913]["LogId"] = 12001885
	tCoinGame_Reward[3329913]["DeleteItem"] = {}
	tCoinGame_Reward[3329913]["DeleteItem"][1] = {}
	tCoinGame_Reward[3329913]["DeleteItem"][1]["Id"] = 3329913 -- 【库】No.1PointsPack[属性:9]
	tCoinGame_Reward[3329913]["RewardEMoney"] = {}
	tCoinGame_Reward[3329913]["RewardEMoney"]["Value"] = 50000 -- 天石, 【需求】5W非赠天石
	tCoinGame_Reward[3329913]["RewardEMoney"]["NewEmoneyLog"] = "1000	1569"
	tCoinGame_Reward[3329913]["RewardItem"] = {}
	tCoinGame_Reward[3329913]["RewardItem"][1] = {}
	tCoinGame_Reward[3329913]["RewardItem"][1]["Id"] = 723723 -- TopMoneyBag[723723][属性:0][叠加:0][金币:0], 【表格】10亿金币礼包
	tCoinGame_Reward[3329913]["RewardItem"][1]["Attr"] = "0 2" -- TopMoneyBag*2
	tCoinGame_Reward[3329913]["RewardItem"][2] = {}
	tCoinGame_Reward[3329913]["RewardItem"][2]["Id"] = 195215 -- PokerMaster[195215][属性:0][叠加:0][金币:0], 【表格】永久赠PokerMaster*1
	tCoinGame_Reward[3329913]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑PokerMaster（赠）*1
	tCoinGame_Reward[3329913]["RewardEffect"] = {}
	tCoinGame_Reward[3329913]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCoinGame_Reward[3329913]["RewardEffect"]["Effect"] = "angelwing"


	tCoinGame_Reward[3329914] = {}
	-- ===积分3强宝箱
	-- ===索引:tCoinGame_Reward[3329914]
	-- ===删除:3329914,1
	-- ===NewEMoneyLog:1000,01570
	tCoinGame_Reward[3329914]["LogId"] = 12001885
	tCoinGame_Reward[3329914]["DeleteItem"] = {}
	tCoinGame_Reward[3329914]["DeleteItem"][1] = {}
	tCoinGame_Reward[3329914]["DeleteItem"][1]["Id"] = 3329914 -- 【库】Top3PointsPack[属性:9]
	tCoinGame_Reward[3329914]["RewardEMoney"] = {}
	tCoinGame_Reward[3329914]["RewardEMoney"]["Value"] = 30000 -- 天石, 【需求】3W非赠天石
	tCoinGame_Reward[3329914]["RewardEMoney"]["NewEmoneyLog"] = "1000	1570"
	tCoinGame_Reward[3329914]["RewardItem"] = {}
	tCoinGame_Reward[3329914]["RewardItem"][1] = {}
	tCoinGame_Reward[3329914]["RewardItem"][1]["Id"] = 723723 -- TopMoneyBag[723723][属性:0][叠加:0][金币:0], 【表格】5亿金币礼包
	tCoinGame_Reward[3329914]["RewardItem"][1]["Attr"] = "0 1" -- TopMoneyBag*1
	tCoinGame_Reward[3329914]["RewardItem"][2] = {}
	tCoinGame_Reward[3329914]["RewardItem"][2]["Id"] = 195215 -- PokerMaster[195215][属性:0][叠加:0][金币:0], 【表格】270天赠PokerMaster*1
	tCoinGame_Reward[3329914]["RewardItem"][2]["Attr"] = "0 1 3 388800 1 0 0 1" -- 270天时效(激活)的1%神佑PokerMaster（赠）*1
	tCoinGame_Reward[3329914]["RewardEffect"] = {}
	tCoinGame_Reward[3329914]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCoinGame_Reward[3329914]["RewardEffect"]["Effect"] = "angelwing"


	tCoinGame_Reward[3329915] = {}
	-- ===积分8强宝箱
	-- ===索引:tCoinGame_Reward[3329915]
	-- ===删除:3329915,1
	-- ===NewEMoneyLog:1000,01571
	tCoinGame_Reward[3329915]["LogId"] = 12001885
	tCoinGame_Reward[3329915]["DeleteItem"] = {}
	tCoinGame_Reward[3329915]["DeleteItem"][1] = {}
	tCoinGame_Reward[3329915]["DeleteItem"][1]["Id"] = 3329915 -- 【库】Top8PointsPack[属性:9]
	tCoinGame_Reward[3329915]["RewardEMoney"] = {}
	tCoinGame_Reward[3329915]["RewardEMoney"]["Value"] = 10000 -- 天石, 【需求】1W非赠天石
	tCoinGame_Reward[3329915]["RewardEMoney"]["NewEmoneyLog"] = "1000	1571"
	tCoinGame_Reward[3329915]["RewardItem"] = {}
	tCoinGame_Reward[3329915]["RewardItem"][1] = {}
	tCoinGame_Reward[3329915]["RewardItem"][1]["Id"] = 723721 -- Class9MoneyBag[723721][属性:0][叠加:0][金币:0], 【表格】2亿金币礼包
	tCoinGame_Reward[3329915]["RewardItem"][1]["Attr"] = "0 2" -- Class9MoneyBag*2
	tCoinGame_Reward[3329915]["RewardItem"][2] = {}
	tCoinGame_Reward[3329915]["RewardItem"][2]["Id"] = 195215 -- PokerMaster[195215][属性:0][叠加:0][金币:0], 【表格】180天赠PokerMaster*1
	tCoinGame_Reward[3329915]["RewardItem"][2]["Attr"] = "0 1 3 259200 1 0 0 1" -- 180天时效(激活)的1%神佑PokerMaster（赠）*1
	tCoinGame_Reward[3329915]["RewardEffect"] = {}
	tCoinGame_Reward[3329915]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCoinGame_Reward[3329915]["RewardEffect"]["Effect"] = "angelwing"


	tCoinGame_Reward[3329916] = {}
	-- ===积分20强宝箱
	-- ===索引:tCoinGame_Reward[3329916]
	-- ===删除:3329916,1
	-- ===NewEMoneyLog:1000,01572
	-- ===
	tCoinGame_Reward[3329916]["LogId"] = 12001885
	tCoinGame_Reward[3329916]["DeleteItem"] = {}
	tCoinGame_Reward[3329916]["DeleteItem"][1] = {}
	tCoinGame_Reward[3329916]["DeleteItem"][1]["Id"] = 3329916 -- 【库】Top20PointsPack[属性:9]
	tCoinGame_Reward[3329916]["RewardEMoney"] = {}
	tCoinGame_Reward[3329916]["RewardEMoney"]["Value"] = 5000 -- 天石, 【需求】5000非赠天石
	tCoinGame_Reward[3329916]["RewardEMoney"]["NewEmoneyLog"] = "1000	1572"
	tCoinGame_Reward[3329916]["RewardItem"] = {}
	tCoinGame_Reward[3329916]["RewardItem"][1] = {}
	tCoinGame_Reward[3329916]["RewardItem"][1]["Id"] = 723721 -- Class9MoneyBag[723721][属性:0][叠加:0][金币:0], 【表格】1亿金币礼包
	tCoinGame_Reward[3329916]["RewardItem"][1]["Attr"] = "0 1" -- Class9MoneyBag*1
	tCoinGame_Reward[3329916]["RewardItem"][2] = {}
	tCoinGame_Reward[3329916]["RewardItem"][2]["Id"] = 195215 -- PokerMaster[195215][属性:0][叠加:0][金币:0], 【表格】90天赠PokerMaster*1
	tCoinGame_Reward[3329916]["RewardItem"][2]["Attr"] = "0 1 3 129600 1" -- 90天时效(激活)的PokerMaster（赠）*1
	tCoinGame_Reward[3329916]["RewardEffect"] = {}
	tCoinGame_Reward[3329916]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCoinGame_Reward[3329916]["RewardEffect"]["Effect"] = "angelwing"


	tCoinGame_Reward[3329917] = {}
	-- ===积分50强宝箱
	-- ===索引:tCoinGame_Reward[3329917]
	-- ===删除:3329917,1
	-- ===NewEMoneyLog:1000,01573
	tCoinGame_Reward[3329917]["LogId"] = 12001885
	tCoinGame_Reward[3329917]["DeleteItem"] = {}
	tCoinGame_Reward[3329917]["DeleteItem"][1] = {}
	tCoinGame_Reward[3329917]["DeleteItem"][1]["Id"] = 3329917 -- 【库】Top50PointsPack[属性:9]
	tCoinGame_Reward[3329917]["RewardEMoney"] = {}
	tCoinGame_Reward[3329917]["RewardEMoney"]["Value"] = 1500 -- 天石, 【需求】1500非赠天石
	tCoinGame_Reward[3329917]["RewardEMoney"]["NewEmoneyLog"] = "1000	1573"
	tCoinGame_Reward[3329917]["RewardItem"] = {}
	tCoinGame_Reward[3329917]["RewardItem"][1] = {}
	tCoinGame_Reward[3329917]["RewardItem"][1]["Id"] = 3001323 -- HeavenMoneyBox[3001323][属性:11][叠加:0][金币:0], 【表格】50M金币礼包
	tCoinGame_Reward[3329917]["RewardItem"][1]["Attr"] = "0 1" -- HeavenMoneyBox*1
	tCoinGame_Reward[3329917]["RewardItem"][2] = {}
	tCoinGame_Reward[3329917]["RewardItem"][2]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*3
	tCoinGame_Reward[3329917]["RewardItem"][2]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的RadiantStarStone*3
	tCoinGame_Reward[3329917]["RewardStrengthValue"] = {}
	tCoinGame_Reward[3329917]["RewardStrengthValue"]["Value"] = 20000 -- 气力值, 【需求】20000气力值
	tCoinGame_Reward[3329917]["RewardEffect"] = {}
	tCoinGame_Reward[3329917]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCoinGame_Reward[3329917]["RewardEffect"]["Effect"] = "angelwing"


	tCoinGame_Reward[3329918] = {}
	-- ===积分百强宝箱
	-- ===索引:tCoinGame_Reward[3329918]
	-- ===删除:3329918,1
	-- ===NewEMoneyLog:1000,01574
	tCoinGame_Reward[3329918]["LogId"] = 12001885
	tCoinGame_Reward[3329918]["DeleteItem"] = {}
	tCoinGame_Reward[3329918]["DeleteItem"][1] = {}
	tCoinGame_Reward[3329918]["DeleteItem"][1]["Id"] = 3329918 -- 【库】Top100PointsPack[属性:9]
	tCoinGame_Reward[3329918]["RewardEMoney"] = {}
	tCoinGame_Reward[3329918]["RewardEMoney"]["Value"] = 500 -- 天石, 【需求】500非赠天石
	tCoinGame_Reward[3329918]["RewardEMoney"]["NewEmoneyLog"] = "1000	1574"
	tCoinGame_Reward[3329918]["RewardItem"] = {}
	tCoinGame_Reward[3329918]["RewardItem"][1] = {}
	tCoinGame_Reward[3329918]["RewardItem"][1]["Id"] = 3001321 -- BrightMoneyBox[3001321][属性:11][叠加:0][金币:0], 【表格】10M金币礼包
	tCoinGame_Reward[3329918]["RewardItem"][1]["Attr"] = "0 2" -- BrightMoneyBox*2
	tCoinGame_Reward[3329918]["RewardItem"][2] = {}
	tCoinGame_Reward[3329918]["RewardItem"][2]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*2
	tCoinGame_Reward[3329918]["RewardItem"][2]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的RadiantStarStone*2
	tCoinGame_Reward[3329918]["RewardStrengthValue"] = {}
	tCoinGame_Reward[3329918]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力值
	tCoinGame_Reward[3329918]["RewardEffect"] = {}
	tCoinGame_Reward[3329918]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCoinGame_Reward[3329918]["RewardEffect"]["Effect"] = "angelwing"


	tCoinGame_Reward[3329920] = {}
	-- ===90天五星人物外套可选包
	-- ===索引:tCoinGame_Reward[3329920][1]
	-- ===删除:3329920,1
	tCoinGame_Reward[3329920][1] = {}
	tCoinGame_Reward[3329920][1]["LogId"] = 12001885
	tCoinGame_Reward[3329920][1]["DeleteItem"] = {}
	tCoinGame_Reward[3329920][1]["DeleteItem"][1] = {}
	tCoinGame_Reward[3329920][1]["DeleteItem"][1]["Id"] = 3329920 -- 【库】90-day5-starGarmentPack[属性:9]
	tCoinGame_Reward[3329920][1]["RewardItem"] = {}
	tCoinGame_Reward[3329920][1]["RewardItem"][1] = {}
	tCoinGame_Reward[3329920][1]["RewardItem"][1]["Id"] = 195225 -- PokerMaster(Legend)[195225][属性:0][叠加:0][金币:0], 【表格】PokerMaster（Legend）*1
	tCoinGame_Reward[3329920][1]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑PokerMaster(Legend)（赠）*1
	tCoinGame_Reward[3329920][1]["RewardEffect"] = {}
	tCoinGame_Reward[3329920][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCoinGame_Reward[3329920][1]["RewardEffect"]["Effect"] = "angelwing"


	tCoinGame_Reward[3329920][2] = {}
	-- ===90天五星人物外套可选包
	-- ===索引:tCoinGame_Reward[3329920][2]
	-- ===删除:3329920,1
	tCoinGame_Reward[3329920][2]["LogId"] = 12001885
	tCoinGame_Reward[3329920][2]["DeleteItem"] = {}
	tCoinGame_Reward[3329920][2]["DeleteItem"][1] = {}
	tCoinGame_Reward[3329920][2]["DeleteItem"][1]["Id"] = 3329920 -- 【库】90-day5-starGarmentPack[属性:9]
	tCoinGame_Reward[3329920][2]["RewardItem"] = {}
	tCoinGame_Reward[3329920][2]["RewardItem"][1] = {}
	tCoinGame_Reward[3329920][2]["RewardItem"][1]["Id"] = 195905 -- GalaxyDream(Grace)[195905][属性:0][叠加:0][金币:0], 【表格】GalaxyDream（Grace）*1
	tCoinGame_Reward[3329920][2]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑GalaxyDream(Grace)（赠）*1
	tCoinGame_Reward[3329920][2]["RewardEffect"] = {}
	tCoinGame_Reward[3329920][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCoinGame_Reward[3329920][2]["RewardEffect"]["Effect"] = "angelwing"


	tCoinGame_Reward[3329920][3] = {}
	-- ===90天五星人物外套可选包
	-- ===索引:tCoinGame_Reward[3329920][3]
	-- ===删除:3329920,1
	tCoinGame_Reward[3329920][3]["LogId"] = 12001885
	tCoinGame_Reward[3329920][3]["DeleteItem"] = {}
	tCoinGame_Reward[3329920][3]["DeleteItem"][1] = {}
	tCoinGame_Reward[3329920][3]["DeleteItem"][1]["Id"] = 3329920 -- 【库】90-day5-starGarmentPack[属性:9]
	tCoinGame_Reward[3329920][3]["RewardItem"] = {}
	tCoinGame_Reward[3329920][3]["RewardItem"][1] = {}
	tCoinGame_Reward[3329920][3]["RewardItem"][1]["Id"] = 194395 -- LunarAngelicRobe[194395][属性:8][叠加:0][金币:0], 【表格】LunarAngelicRobe*1
	tCoinGame_Reward[3329920][3]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑LunarAngelicRobe（赠）*1
	tCoinGame_Reward[3329920][3]["RewardEffect"] = {}
	tCoinGame_Reward[3329920][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCoinGame_Reward[3329920][3]["RewardEffect"]["Effect"] = "angelwing"


	tCoinGame_Reward[3329920][4] = {}
	-- ===90天五星人物外套可选包
	-- ===索引:tCoinGame_Reward[3329920][4]
	-- ===删除:3329920,1
	tCoinGame_Reward[3329920][4]["LogId"] = 12001885
	tCoinGame_Reward[3329920][4]["DeleteItem"] = {}
	tCoinGame_Reward[3329920][4]["DeleteItem"][1] = {}
	tCoinGame_Reward[3329920][4]["DeleteItem"][1]["Id"] = 3329920 -- 【库】90-day5-starGarmentPack[属性:9]
	tCoinGame_Reward[3329920][4]["RewardItem"] = {}
	tCoinGame_Reward[3329920][4]["RewardItem"][1] = {}
	tCoinGame_Reward[3329920][4]["RewardItem"][1]["Id"] = 195045 -- BlissfulForeverHeart[195045][属性:8][叠加:0][金币:0], 【表格】BlissfulForeverHeart*1
	tCoinGame_Reward[3329920][4]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑BlissfulForeverHeart（赠）*1
	tCoinGame_Reward[3329920][4]["RewardEffect"] = {}
	tCoinGame_Reward[3329920][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCoinGame_Reward[3329920][4]["RewardEffect"]["Effect"] = "angelwing"


	tCoinGame_Reward[3329920][5] = {}
	-- ===90天五星人物外套可选包
	-- ===索引:tCoinGame_Reward[3329920][5]
	-- ===删除:3329920,1
	tCoinGame_Reward[3329920][5]["LogId"] = 12001885
	tCoinGame_Reward[3329920][5]["DeleteItem"] = {}
	tCoinGame_Reward[3329920][5]["DeleteItem"][1] = {}
	tCoinGame_Reward[3329920][5]["DeleteItem"][1]["Id"] = 3329920 -- 【库】90-day5-starGarmentPack[属性:9]
	tCoinGame_Reward[3329920][5]["RewardItem"] = {}
	tCoinGame_Reward[3329920][5]["RewardItem"][1] = {}
	tCoinGame_Reward[3329920][5]["RewardItem"][1]["Id"] = 195485 -- InvincibleEastern(Supreme)[195485][属性:0][叠加:0][金币:0], 【表格】InvincibleEastern（Supreme）*1
	tCoinGame_Reward[3329920][5]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑InvincibleEastern(Supreme)（赠）*1
	tCoinGame_Reward[3329920][5]["RewardEffect"] = {}
	tCoinGame_Reward[3329920][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCoinGame_Reward[3329920][5]["RewardEffect"]["Effect"] = "angelwing"


	tCoinGame_Reward[3329921] = {}
	-- ===90天5星坐骑自选盒
	-- ===索引:tCoinGame_Reward[3329921][1]
	-- ===删除:3329921,1
	tCoinGame_Reward[3329921][1] = {}
	tCoinGame_Reward[3329921][1]["LogId"] = 12001885
	tCoinGame_Reward[3329921][1]["DeleteItem"] = {}
	tCoinGame_Reward[3329921][1]["DeleteItem"][1] = {}
	tCoinGame_Reward[3329921][1]["DeleteItem"][1]["Id"] = 3329921 -- 【库】90-day5-starMountArmorPack[属性:9]
	tCoinGame_Reward[3329921][1]["RewardItem"] = {}
	tCoinGame_Reward[3329921][1]["RewardItem"][1] = {}
	tCoinGame_Reward[3329921][1]["RewardItem"][1]["Id"] = 200637 -- ImperialFox(Supreme)[200637][属性:0][叠加:0][金币:0], 【表格】ImperialFox（Supreme）*1
	tCoinGame_Reward[3329921][1]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑ImperialFox(Supreme)（赠）*1
	tCoinGame_Reward[3329921][1]["RewardEffect"] = {}
	tCoinGame_Reward[3329921][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCoinGame_Reward[3329921][1]["RewardEffect"]["Effect"] = "angelwing"


	tCoinGame_Reward[3329921][2] = {}
	-- ===90天5星坐骑自选盒
	-- ===索引:tCoinGame_Reward[3329921][2]
	-- ===删除:3329921,1
	tCoinGame_Reward[3329921][2]["LogId"] = 12001885
	tCoinGame_Reward[3329921][2]["DeleteItem"] = {}
	tCoinGame_Reward[3329921][2]["DeleteItem"][1] = {}
	tCoinGame_Reward[3329921][2]["DeleteItem"][1]["Id"] = 3329921 -- 【库】90-day5-starMountArmorPack[属性:9]
	tCoinGame_Reward[3329921][2]["RewardItem"] = {}
	tCoinGame_Reward[3329921][2]["RewardItem"][1] = {}
	tCoinGame_Reward[3329921][2]["RewardItem"][1]["Id"] = 200648 -- SwiftCloud[200648][属性:0][叠加:0][金币:0], 【表格】SwiftCloud*1
	tCoinGame_Reward[3329921][2]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑SwiftCloud（赠）*1
	tCoinGame_Reward[3329921][2]["RewardEffect"] = {}
	tCoinGame_Reward[3329921][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCoinGame_Reward[3329921][2]["RewardEffect"]["Effect"] = "angelwing"


	tCoinGame_Reward[3329921][3] = {}
	-- ===90天5星坐骑自选盒
	-- ===索引:tCoinGame_Reward[3329921][3]
	-- ===删除:3329921,1
	tCoinGame_Reward[3329921][3]["LogId"] = 12001885
	tCoinGame_Reward[3329921][3]["DeleteItem"] = {}
	tCoinGame_Reward[3329921][3]["DeleteItem"][1] = {}
	tCoinGame_Reward[3329921][3]["DeleteItem"][1]["Id"] = 3329921 -- 【库】90-day5-starMountArmorPack[属性:9]
	tCoinGame_Reward[3329921][3]["RewardItem"] = {}
	tCoinGame_Reward[3329921][3]["RewardItem"][1] = {}
	tCoinGame_Reward[3329921][3]["RewardItem"][1]["Id"] = 200632 -- GiantFish(Gold)[200632][属性:0][叠加:0][金币:0], 【表格】GiantFish（Gold）*1
	tCoinGame_Reward[3329921][3]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑GiantFish(Gold)（赠）*1
	tCoinGame_Reward[3329921][3]["RewardEffect"] = {}
	tCoinGame_Reward[3329921][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCoinGame_Reward[3329921][3]["RewardEffect"]["Effect"] = "angelwing"


	tCoinGame_Reward[3329921][4] = {}
	-- ===90天5星坐骑自选盒
	-- ===索引:tCoinGame_Reward[3329921][4]
	-- ===删除:3329921,1
	tCoinGame_Reward[3329921][4]["LogId"] = 12001885
	tCoinGame_Reward[3329921][4]["DeleteItem"] = {}
	tCoinGame_Reward[3329921][4]["DeleteItem"][1] = {}
	tCoinGame_Reward[3329921][4]["DeleteItem"][1]["Id"] = 3329921 -- 【库】90-day5-starMountArmorPack[属性:9]
	tCoinGame_Reward[3329921][4]["RewardItem"] = {}
	tCoinGame_Reward[3329921][4]["RewardItem"][1] = {}
	tCoinGame_Reward[3329921][4]["RewardItem"][1]["Id"] = 200537 -- HolyLotus(Goddess)[200537][属性:0][叠加:0][金币:100], 【表格】HolyLotus（Goddess）*1
	tCoinGame_Reward[3329921][4]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑HolyLotus(Goddess)（赠）*1
	tCoinGame_Reward[3329921][4]["RewardEffect"] = {}
	tCoinGame_Reward[3329921][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCoinGame_Reward[3329921][4]["RewardEffect"]["Effect"] = "angelwing"


	tCoinGame_Reward[3329921][5] = {}
	-- ===90天5星坐骑自选盒
	-- ===索引:tCoinGame_Reward[3329921][5]
	-- ===删除:3329921,1
	tCoinGame_Reward[3329921][5]["LogId"] = 12001885
	tCoinGame_Reward[3329921][5]["DeleteItem"] = {}
	tCoinGame_Reward[3329921][5]["DeleteItem"][1] = {}
	tCoinGame_Reward[3329921][5]["DeleteItem"][1]["Id"] = 3329921 -- 【库】90-day5-starMountArmorPack[属性:9]
	tCoinGame_Reward[3329921][5]["RewardItem"] = {}
	tCoinGame_Reward[3329921][5]["RewardItem"][1] = {}
	tCoinGame_Reward[3329921][5]["RewardItem"][1]["Id"] = 200606 -- SoulChariot[200606][属性:0][叠加:0][金币:0], 【表格】SoulChariot*1
	tCoinGame_Reward[3329921][5]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑SoulChariot（赠）*1
	tCoinGame_Reward[3329921][5]["RewardEffect"] = {}
	tCoinGame_Reward[3329921][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCoinGame_Reward[3329921][5]["RewardEffect"]["Effect"] = "angelwing"







----------------------------------逻辑部分---------------------------------------------
--跳转内嵌网页
function CoinGame_OpenWebDialog(nCoinGame_NpcId)
	--判断活动时间
	if not Sys_ChkFullTime(tCoinGame_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nCoinGame_NpcId,"1-2")
		return
	end
	
	local nCoinGame_NowUserId = Get_UserId()
	local sCoinGame_Link = tCoinGame_Data["Link"]
	User_SendWebPage(sCoinGame_Link,nCoinGame_NowUserId)
end

-- 获取掩码值
function CoinGame_GetStcValue(nCoinGame_Index,nCoinGame_UserId)
	local nCoinGame_Event = tCoinGame_Stc[nCoinGame_Index]["EventType"]
	local nCoinGame_Type = tCoinGame_Stc[nCoinGame_Index]["DataType"]
	local nCoinGame_Data = Get_UserStatisticValue(nCoinGame_Event,nCoinGame_Type,nCoinGame_UserId)
	return nCoinGame_Data
end

--扣除银两
function CoinGame_CostMoney(nCoinGame_NpcId,nCoinGame_Index)
	--时间判断
	if not Sys_ChkFullTime(tCoinGame_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nCoinGame_NpcId, "1-2")
		return
	end
	
	local nCoinGame_UserId = Get_UserId()
	local nCoinGame_Money = tCoinGame_Data["CostMoney"][nCoinGame_Index]
	local nCoinGame_AddData = math.floor(nCoinGame_Money / tCoinGame_Stc[1]["Mod"])
	local nCoinGame_Data = CoinGame_GetStcValue(1,nCoinGame_UserId)
	
	-- 提交银两溢出
	if nCoinGame_AddData + nCoinGame_Data > tCoinGame_Stc[1]["Limit"] then
		Sys_MsgBox(tCoinGame_Text["MsgBox"]["OverFlow"])
		return
	end
	
	-- 判断身上银两
	if not User_CanPutMoney2Bag(-nCoinGame_Money,nCoinGame_UserId) then
		Sys_MsgBox(tCoinGame_Text["MsgBox"]["Fail"])
		return
	end

	-- 扣除银两
	if not User_AddMoney(-nCoinGame_Money,nCoinGame_UserId) then
		return
	end

	local sCoinGame_Log = string.format(tCoinGame_Log["Log"][1],nCoinGame_Money)
	local nCoinGame_Event = tCoinGame_Stc[1]["EventType"]
	local nCoinGame_Type = tCoinGame_Stc[1]["DataType"]

	-- 置掩码
	Task_AddStatistic(nCoinGame_Event,nCoinGame_Type,nCoinGame_AddData,1,nCoinGame_UserId)
	Task_SetStcTimestamp(nCoinGame_Event, nCoinGame_Type, 0, nCoinGame_UserId)
	
	-- 打Log
	Sys_SaveActionFestivalLog(sCoinGame_Log)
	
	Sys_MsgBox(string.format(tCoinGame_Text["MsgBox"]["Hand"],nCoinGame_Money))
	
end

-- 可选包物品打开
function CoinGame_ItemUse(nCoinGame_ItemId,nCoinGame_Index)
	-- 检测物品是否存在
	if not Item_ChkItem(nCoinGame_ItemId) then
		return
	end
	
	-- 判断背包空间
	local nCoinGame_Space = RewardTemplate_GetRewardSpace(tCoinGame_Reward[nCoinGame_ItemId][nCoinGame_Index])
	if not User_CheckLeftSpace(nCoinGame_Space) then
		Sys_MsgBox(string.format(tCoinGame_Text["MsgBox"]["NoSpace"],nCoinGame_Space))
		return
	end
	
	local bCoinGame_Bool,sCoinGame_RewardStr = RewardTemplate_UseItemAndMsg(tCoinGame_Reward[nCoinGame_ItemId][nCoinGame_Index])
	if bCoinGame_Bool then
		Sys_MsgBox(string.format(tCoinGame_Text["MsgBox"]["Reward"],sCoinGame_RewardStr))
	end
	return

end

----------------------------------NPC部分---------------------------------------------
tNpcFace[2372] = 90
tNpcGossip[26001]= tNpcGossip[26001] or DefaultNpc:new{}
tNpcGossip[26001]["OptionHidden"] = 1
tNpcGossip[26001]["DialogueText"] = tCoinGame_Text[26001]

--活动前
tNpcGossip[26001]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[26001]["ChkFunc1-1"]= function()
	return CommonFunc_GetBeforeActivityTime(tCoinGame_Data["ActivityTime"])
end
tNpcGossip[26001]["tOption1-1"] = {111}

--活动后
tNpcGossip[26001]["Text1-2"] = {111,121}
tNpcGossip[26001]["ChkFunc1-2"]= function()
	return not Sys_ChkFullTime(tCoinGame_Data["ActivityTime"])
end
tNpcGossip[26001]["tOption1-2"] = {121}

--活动中
tNpcGossip[26001]["Text1-3"] = {111,131,132,133,134,135}
tNpcGossip[26001]["ChkFunc1-3"]= function()
	return Sys_ChkFullTime(tCoinGame_Data["ActivityTime"])
end
tNpcGossip[26001]["tOption1-3"] = {132,133}
tNpcGossip[26001]["OptionFunc132"] = "CoinGame_OpenWebDialog</N>26001"
tNpcGossip[26001]["OptionPoint133"] = "2-1"

--接1、提交银两
tNpcGossip[26001]["Text2-1"] = {111,211,212}
tNpcGossip[26001]["tOption2-1"] = {211,212,213,214}
tNpcGossip[26001]["OptionFunc211"] = "CoinGame_CostMoney</N>26001</N>1"
tNpcGossip[26001]["OptionFunc212"] = "CoinGame_CostMoney</N>26001</N>2"
tNpcGossip[26001]["OptionFunc213"] = "CoinGame_CostMoney</N>26001</N>3"
tNpcGossip[26001]["OptionFunc214"] = "CoinGame_CostMoney</N>26001</N>4"

--觉醒养成道具
tItem[3329910] = tItem[3329910] or {}
tItem[3329910]["Function"] = function(nCoinGame_ItemId,sCoinGame_ItemName)
	Sys_MsgBox(tCoinGame_Text["MsgBox"]["Tips"])
end
tItem[3329911] = tItem[3329910]
tItem[3329912] = tItem[3329910]

--积分宝箱
tItem[3329913] = tItem[3329913] or {}
tItem[3329913]["Function"] = function(nCoinGame_ItemId,sCoinGame_ItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nCoinGame_ItemId) then
		return
	end
	
	--判断天石上限
	if tCoinGame_Reward[nCoinGame_ItemId]["RewardEMoney"] ~= nil then
		local nCoinGame_Emoney = Get_UserEMoney()
		local nCoinGame_AddEmoney = tCoinGame_Reward[nCoinGame_ItemId]["RewardEMoney"]["Value"]
		
		if nCoinGame_Emoney + nCoinGame_AddEmoney > G_User_MaxEmoney then
			Sys_MsgBox(tCoinGame_Text["MsgBox"]["Much"])
			return
		end
	end
	
	-- 判断背包空间
	local nCoinGame_Space = RewardTemplate_GetRewardSpace(tCoinGame_Reward[nCoinGame_ItemId])
	if not User_CheckLeftSpace(nCoinGame_Space) then
		Sys_MsgBox(string.format(tCoinGame_Text["MsgBox"]["NoSpace"],nCoinGame_Space))
		return
	end
	
	local bCoinGame_Bool,sCoinGame_RewardStr = RewardTemplate_UseItemAndMsg(tCoinGame_Reward[nCoinGame_ItemId])
	if bCoinGame_Bool then
		Sys_MsgBox(string.format(tCoinGame_Text["MsgBox"]["Reward"],sCoinGame_RewardStr))
	end
	return

end
tItem[3329914] = tItem[3329913]
tItem[3329915] = tItem[3329913]
tItem[3329916] = tItem[3329913]
tItem[3329917] = tItem[3329913]
tItem[3329918] = tItem[3329913]


--90天5星时装自选盒
tItemFace[3329920] = 1008
tItem[3329920] = tItem[3329920] or {}
tItem[3329920]["DialogueText"] = tCoinGame_Text[3329920]
tItem[3329920]["Text1-1"] = {111}
tItem[3329920]["tOption1-1"] = {111,112,113,114,115}

tItem[3329920]["OptionFunc111"] = "CoinGame_ItemUse</N>3329920</N>1"
tItem[3329920]["OptionFunc112"] = "CoinGame_ItemUse</N>3329920</N>2"
tItem[3329920]["OptionFunc113"] = "CoinGame_ItemUse</N>3329920</N>3"
tItem[3329920]["OptionFunc114"] = "CoinGame_ItemUse</N>3329920</N>4"
tItem[3329920]["OptionFunc115"] = "CoinGame_ItemUse</N>3329920</N>5"

--90天5星坐骑自选盒
tItemFace[3329921] = 1009
tItem[3329921] = tItem[3329921] or {}
tItem[3329921]["DialogueText"] = tCoinGame_Text[3329921]
tItem[3329921]["Text1-1"] = {111}
tItem[3329921]["tOption1-1"] = {111,112,113,114,115}

tItem[3329921]["OptionFunc111"] = "CoinGame_ItemUse</N>3329921</N>1"
tItem[3329921]["OptionFunc112"] = "CoinGame_ItemUse</N>3329921</N>2"
tItem[3329921]["OptionFunc113"] = "CoinGame_ItemUse</N>3329921</N>3"
tItem[3329921]["OptionFunc114"] = "CoinGame_ItemUse</N>3329921</N>4"
tItem[3329921]["OptionFunc115"] = "CoinGame_ItemUse</N>3329921</N>5"



