------------------------------------------------------------------------------------
--Name:		190926[简体征服][活动脚本]10月征服暖暖线上部分(10.24-11.11)
--Purpose:	暖暖
--Creator: 	黄啸
--Created:	2019/09/29
------------------------------------------------------------------------------------
--前缀ExchangeCoat_
--logid:12001662


----------------------------------数据部分配置----------------------------------

local tExchangeCoat_Time = {}
tExchangeCoat_Time["Before"] = tActivityTime["ExchangeCoat"]["BeforeActivity"]
tExchangeCoat_Time["Active"] = tActivityTime["ExchangeCoat"]["ActiveTime"]
tExchangeCoat_Time["ActiveNpc"] = tActivityTime["ExchangeCoat"]["ActiveNpc"]

local tExchangeCoat_RewardItem = {}
	-- ===StarSeaPack
	-- ===索引: tExchangeCoat_RewardItem[3313882]
	-- ===删除: 3313882,1
	tExchangeCoat_RewardItem[3313882] = {}
	tExchangeCoat_RewardItem[3313882]["LogId"] = 12001662
	tExchangeCoat_RewardItem[3313882]["DeleteItem"] = {}
	tExchangeCoat_RewardItem[3313882]["DeleteItem"][1] = {}
	tExchangeCoat_RewardItem[3313882]["DeleteItem"][1]["Id"] = 3313882 -- 【库】 3313882 【库里没有该物品】[属性:]
	tExchangeCoat_RewardItem[3313882]["RewardItem"] = {}
	tExchangeCoat_RewardItem[3313882]["RewardItem"][1] = {}
	tExchangeCoat_RewardItem[3313882]["RewardItem"][1]["Id"] = 195635 -- 魂梦星海[195635][属性:0][叠加:0][金币:0], 【表格】三星的Starsea
	tExchangeCoat_RewardItem[3313882]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑魂梦星海*1
	tExchangeCoat_RewardItem[3313882]["RewardEffect"] = {}
	tExchangeCoat_RewardItem[3313882]["RewardEffect"]["SzObj"] = "self"
	tExchangeCoat_RewardItem[3313882]["RewardEffect"]["Effect"] = "angelwing"

	tExchangeCoat_RewardItem[3313883] = {}
	-- ===GiantFishPack
	-- ===索引: tExchangeCoat_RewardItem[3313883]
	-- ===删除: 3313883,1
	tExchangeCoat_RewardItem[3313883]["LogId"] = 12001662
	tExchangeCoat_RewardItem[3313883]["DeleteItem"] = {}
	tExchangeCoat_RewardItem[3313883]["DeleteItem"][1] = {}
	tExchangeCoat_RewardItem[3313883]["DeleteItem"][1]["Id"] = 3313883 -- 【库】 3313883 【库里没有该物品】[属性:]
	tExchangeCoat_RewardItem[3313883]["RewardItem"] = {}
	tExchangeCoat_RewardItem[3313883]["RewardItem"][1] = {}
	tExchangeCoat_RewardItem[3313883]["RewardItem"][1]["Id"] = 200625 -- 大鱼海棠[200625][属性:0][叠加:0][金币:0], 【表格】三星的GiantFish
	tExchangeCoat_RewardItem[3313883]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑大鱼海棠*1
	tExchangeCoat_RewardItem[3313883]["RewardEffect"] = {}
	tExchangeCoat_RewardItem[3313883]["RewardEffect"]["SzObj"] = "self"
	tExchangeCoat_RewardItem[3313883]["RewardEffect"]["Effect"] = "angelwing"


	tExchangeCoat_RewardItem[3313884] = {}
	-- ===BlossomRomancePack
	-- ===索引: tExchangeCoat_RewardItem[3313884]
	-- ===删除: 3313884,1
	tExchangeCoat_RewardItem[3313884]["LogId"] = 12001662
	tExchangeCoat_RewardItem[3313884]["DeleteItem"] = {}
	tExchangeCoat_RewardItem[3313884]["DeleteItem"][1] = {}
	tExchangeCoat_RewardItem[3313884]["DeleteItem"][1]["Id"] = 3313884 -- 【库】 3313884 【库里没有该物品】[属性:]
	tExchangeCoat_RewardItem[3313884]["RewardItem"] = {}
	tExchangeCoat_RewardItem[3313884]["RewardItem"][1] = {}
	tExchangeCoat_RewardItem[3313884]["RewardItem"][1]["Id"] = 195415 -- 花之吻[195415][属性:0][叠加:0][金币:0], 【表格】三星的BlossomRomance
	tExchangeCoat_RewardItem[3313884]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑花之吻*1
	tExchangeCoat_RewardItem[3313884]["RewardEffect"] = {}
	tExchangeCoat_RewardItem[3313884]["RewardEffect"]["SzObj"] = "self"
	tExchangeCoat_RewardItem[3313884]["RewardEffect"]["Effect"] = "angelwing"


	tExchangeCoat_RewardItem[3313885] = {}
	-- ===AzureFoxPack
	-- ===索引: tExchangeCoat_RewardItem[3313885]
	-- ===删除: 3313885,1
	tExchangeCoat_RewardItem[3313885]["LogId"] = 12001662
	tExchangeCoat_RewardItem[3313885]["DeleteItem"] = {}
	tExchangeCoat_RewardItem[3313885]["DeleteItem"][1] = {}
	tExchangeCoat_RewardItem[3313885]["DeleteItem"][1]["Id"] = 3313885 -- 【库】 3313885 【库里没有该物品】[属性:]
	tExchangeCoat_RewardItem[3313885]["RewardItem"] = {}
	tExchangeCoat_RewardItem[3313885]["RewardItem"][1] = {}
	tExchangeCoat_RewardItem[3313885]["RewardItem"][1]["Id"] = 200642 -- 碧霄灵狐[200642][属性:0][叠加:0][金币:0], 【表格】三星的AzureFox
	tExchangeCoat_RewardItem[3313885]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑碧霄灵狐*1
	tExchangeCoat_RewardItem[3313885]["RewardEffect"] = {}
	tExchangeCoat_RewardItem[3313885]["RewardEffect"]["SzObj"] = "self"
	tExchangeCoat_RewardItem[3313885]["RewardEffect"]["Effect"] = "angelwing"


	tExchangeCoat_RewardItem[3313886] = {}
	-- ===HuskyPack
	-- ===索引: tExchangeCoat_RewardItem[3313886]
	-- ===删除: 3313886,1
	tExchangeCoat_RewardItem[3313886]["LogId"] = 12001662
	tExchangeCoat_RewardItem[3313886]["DeleteItem"] = {}
	tExchangeCoat_RewardItem[3313886]["DeleteItem"][1] = {}
	tExchangeCoat_RewardItem[3313886]["DeleteItem"][1]["Id"] = 3313886 -- 【库】 3313886 【库里没有该物品】[属性:]
	tExchangeCoat_RewardItem[3313886]["RewardItem"] = {}
	tExchangeCoat_RewardItem[3313886]["RewardItem"][1] = {}
	tExchangeCoat_RewardItem[3313886]["RewardItem"][1]["Id"] = 200619 -- 二哈将军[200619][属性:0][叠加:0][金币:0], 【表格】三星的Husky
	tExchangeCoat_RewardItem[3313886]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑二哈将军*1
	tExchangeCoat_RewardItem[3313886]["RewardEffect"] = {}
	tExchangeCoat_RewardItem[3313886]["RewardEffect"]["SzObj"] = "self"
	tExchangeCoat_RewardItem[3313886]["RewardEffect"]["Effect"] = "angelwing"


	tExchangeCoat_RewardItem[3313887] = {}
	-- ===LegendofHeroesPack
	-- ===索引: tExchangeCoat_RewardItem[3313887]
	-- ===删除: 3313887,1
	tExchangeCoat_RewardItem[3313887]["LogId"] = 12001662
	tExchangeCoat_RewardItem[3313887]["DeleteItem"] = {}
	tExchangeCoat_RewardItem[3313887]["DeleteItem"][1] = {}
	tExchangeCoat_RewardItem[3313887]["DeleteItem"][1]["Id"] = 3313887 -- 【库】 3313887 【库里没有该物品】[属性:]
	tExchangeCoat_RewardItem[3313887]["RewardItem"] = {}
	tExchangeCoat_RewardItem[3313887]["RewardItem"][1] = {}
	tExchangeCoat_RewardItem[3313887]["RewardItem"][1]["Id"] = 195505 -- 射雕英雄[195505][属性:0][叠加:0][金币:0], 【表格】三星的Legendofheroes
	tExchangeCoat_RewardItem[3313887]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑射雕英雄*1
	tExchangeCoat_RewardItem[3313887]["RewardEffect"] = {}
	tExchangeCoat_RewardItem[3313887]["RewardEffect"]["SzObj"] = "self"
	tExchangeCoat_RewardItem[3313887]["RewardEffect"]["Effect"] = "angelwing"


	tExchangeCoat_RewardItem[3313888] = {}
	-- ===ChristmasMelodyPack
	-- ===索引:tExchangeCoat_RewardItem[3313888]
	-- ===删除: 3313888,1
	tExchangeCoat_RewardItem[3313888]["LogId"] = 12001662
	tExchangeCoat_RewardItem[3313888]["DeleteItem"] = {}
	tExchangeCoat_RewardItem[3313888]["DeleteItem"][1] = {}
	tExchangeCoat_RewardItem[3313888]["DeleteItem"][1]["Id"] = 3313888 -- 【库】 3313888 【库里没有该物品】[属性:]
	tExchangeCoat_RewardItem[3313888]["RewardItem"] = {}
	tExchangeCoat_RewardItem[3313888]["RewardItem"][1] = {}
	tExchangeCoat_RewardItem[3313888]["RewardItem"][1]["Id"] = 195025 -- 圣诞恋歌[195025][属性:8][叠加:0][金币:0], 【表格】三星的ChristmasMelody
	tExchangeCoat_RewardItem[3313888]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑圣诞恋歌*1
	tExchangeCoat_RewardItem[3313888]["RewardEffect"] = {}
	tExchangeCoat_RewardItem[3313888]["RewardEffect"]["SzObj"] = "self"
	tExchangeCoat_RewardItem[3313888]["RewardEffect"]["Effect"] = "angelwing"


	tExchangeCoat_RewardItem[3313889] = {}
	-- ===SweetnessofLovePack
	-- ===索引: tExchangeCoat_RewardItem[3313889]
	-- ===删除: 3313889,1
	tExchangeCoat_RewardItem[3313889]["LogId"] = 12001662
	tExchangeCoat_RewardItem[3313889]["DeleteItem"] = {}
	tExchangeCoat_RewardItem[3313889]["DeleteItem"][1] = {}
	tExchangeCoat_RewardItem[3313889]["DeleteItem"][1]["Id"] = 3313889 -- 【库】 3313889 【库里没有该物品】[属性:]
	tExchangeCoat_RewardItem[3313889]["RewardItem"] = {}
	tExchangeCoat_RewardItem[3313889]["RewardItem"][1] = {}
	tExchangeCoat_RewardItem[3313889]["RewardItem"][1]["Id"] = 195785 -- 蜜桃之恋 [195785][属性:0][叠加:0][金币:0], 【表格】三星的Sweetnessoflove
	tExchangeCoat_RewardItem[3313889]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑蜜桃之恋 *1
	tExchangeCoat_RewardItem[3313889]["RewardEffect"] = {}
	tExchangeCoat_RewardItem[3313889]["RewardEffect"]["SzObj"] = "self"
	tExchangeCoat_RewardItem[3313889]["RewardEffect"]["Effect"] = "angelwing"


	tExchangeCoat_RewardItem[3313890] = {}
	-- ===原始部落风格礼包
	-- ===索引: tExchangeCoat_RewardItem[3313890]
	-- ===删除: 3313890,1
	tExchangeCoat_RewardItem[3313890]["LogId"] = 12001662
	tExchangeCoat_RewardItem[3313890]["DeleteItem"] = {}
	tExchangeCoat_RewardItem[3313890]["DeleteItem"][1] = {}
	tExchangeCoat_RewardItem[3313890]["DeleteItem"][1]["Id"] = 3313890 -- 【库】 3313890 【库里没有该物品】[属性:]
	tExchangeCoat_RewardItem[3313890]["RewardItem"] = {}
	tExchangeCoat_RewardItem[3313890]["RewardItem"][1] = {}
	tExchangeCoat_RewardItem[3313890]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*3
	tExchangeCoat_RewardItem[3313890]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的明亮星陨石*3
	tExchangeCoat_RewardItem[3313890]["RewardStrengthValue"] = {}
	tExchangeCoat_RewardItem[3313890]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000点气力值
	tExchangeCoat_RewardItem[3313890]["RewardItem"][2] = {}
	tExchangeCoat_RewardItem[3313890]["RewardItem"][2]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*10
	tExchangeCoat_RewardItem[3313890]["RewardItem"][2]["Attr"] = "0 10" -- 人参果*10
	tExchangeCoat_RewardItem[3313890]["RewardEffect"] = {}
	tExchangeCoat_RewardItem[3313890]["RewardEffect"]["SzObj"] = "self"
	tExchangeCoat_RewardItem[3313890]["RewardEffect"]["Effect"] = "angelwing"


	tExchangeCoat_RewardItem[3313891] = {}
	-- ===华丽风格礼包
	-- ===索引: tExchangeCoat_RewardItem[3313891]
	-- ===删除: 3313891,1
	-- ===EMoneyLog: 10000,1019
	tExchangeCoat_RewardItem[3313891]["LogId"] = 12001662
	tExchangeCoat_RewardItem[3313891]["DeleteItem"] = {}
	tExchangeCoat_RewardItem[3313891]["DeleteItem"][1] = {}
	tExchangeCoat_RewardItem[3313891]["DeleteItem"][1]["Id"] = 3313891 -- 【库】 3313891 【库里没有该物品】[属性:]
	tExchangeCoat_RewardItem[3313891]["RewardItem"] = {}
	tExchangeCoat_RewardItem[3313891]["RewardItem"][1] = {}
	tExchangeCoat_RewardItem[3313891]["RewardItem"][1]["Id"] = 3002926 -- 秘制免费修炼丹[3002926][属性:11][叠加:10000][金币:0], 【表格】赠秘制免费强炼丹*20
	tExchangeCoat_RewardItem[3313891]["RewardItem"][1]["Attr"] = "0 20" -- 秘制免费修炼丹*20（[错误]物品数量超10个）
	tExchangeCoat_RewardItem[3313891]["RewardItem"][2] = {}
	tExchangeCoat_RewardItem[3313891]["RewardItem"][2]["Id"] = 3006542 -- 真气礼包[3006542][属性:9][叠加:10000][金币:0], 【表格】赠真气礼包*10
	tExchangeCoat_RewardItem[3313891]["RewardItem"][2]["Attr"] = "0 10" -- 真气礼包*10
	tExchangeCoat_RewardItem[3313891]["RewardEMoneyMono"] = {}
	tExchangeCoat_RewardItem[3313891]["RewardEMoneyMono"]["Value"] = 300 -- 天石（赠）, 【需求】300赠点
	tExchangeCoat_RewardItem[3313891]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	1019"
	tExchangeCoat_RewardItem[3313891]["RewardEffect"] = {}
	tExchangeCoat_RewardItem[3313891]["RewardEffect"]["SzObj"] = "self"
	tExchangeCoat_RewardItem[3313891]["RewardEffect"]["Effect"] = "angelwing"


	tExchangeCoat_RewardItem[3313892] = {}
	-- ===休闲风格礼包
	-- ===索引: tExchangeCoat_RewardItem[3313892]
	-- ===删除: 3313892,1
	-- ===
	tExchangeCoat_RewardItem[3313892]["LogId"] = 12001662
	tExchangeCoat_RewardItem[3313892]["DeleteItem"] = {}
	tExchangeCoat_RewardItem[3313892]["DeleteItem"][1] = {}
	tExchangeCoat_RewardItem[3313892]["DeleteItem"][1]["Id"] = 3313892 -- 【库】 3313892 【库里没有该物品】[属性:]
	tExchangeCoat_RewardItem[3313892]["RewardItem"] = {}
	tExchangeCoat_RewardItem[3313892]["RewardItem"][1] = {}
	tExchangeCoat_RewardItem[3313892]["RewardItem"][1]["Id"] = 4050001 -- 黄色神纹精粹[4050001][属性:9][叠加:10000][金币:0], 【表格】赠黄色神纹精粹*30
	tExchangeCoat_RewardItem[3313892]["RewardItem"][1]["Attr"] = "0 30 3" -- 黄色神纹精粹*30
	tExchangeCoat_RewardItem[3313892]["RewardItem"][2] = {}
	tExchangeCoat_RewardItem[3313892]["RewardItem"][2]["Id"] = 3311759 -- 神纹源晶[3311759][属性:8][叠加:10000][金币:0], 【表格】赠神纹源晶*1
	tExchangeCoat_RewardItem[3313892]["RewardItem"][2]["Attr"] = "0 1 3" -- 神纹源晶*1
	tExchangeCoat_RewardItem[3313892]["RewardItem"][3] = {}
	tExchangeCoat_RewardItem[3313892]["RewardItem"][3]["Id"] = 3005412 -- 散功丹[3005412][属性:0][叠加:10000][金币:0], 【表格】赠散功丹*1
	tExchangeCoat_RewardItem[3313892]["RewardItem"][3]["Attr"] = "0 1 3" -- 散功丹*1
	tExchangeCoat_RewardItem[3313892]["RewardEffect"] = {}
	tExchangeCoat_RewardItem[3313892]["RewardEffect"]["SzObj"] = "self"
	tExchangeCoat_RewardItem[3313892]["RewardEffect"]["Effect"] = "angelwing"


	tExchangeCoat_RewardItem[3313893] = {}
	-- ===可爱风格礼包
	-- ===索引: tExchangeCoat_RewardItem[3313893]
	-- ===删除: 3313893,1
	tExchangeCoat_RewardItem[3313893]["LogId"] = 12001662
	tExchangeCoat_RewardItem[3313893]["DeleteItem"] = {}
	tExchangeCoat_RewardItem[3313893]["DeleteItem"][1] = {}
	tExchangeCoat_RewardItem[3313893]["DeleteItem"][1]["Id"] = 3313893 -- 【库】 3313893 【库里没有该物品】[属性:]
	tExchangeCoat_RewardItem[3313893]["RewardItem"] = {}
	tExchangeCoat_RewardItem[3313893]["RewardItem"][1] = {}
	tExchangeCoat_RewardItem[3313893]["RewardItem"][1]["Id"] = 729008 --  729008 【库里没有该物品】, 【表格】赠+4马匹*1
	tExchangeCoat_RewardItem[3313893]["RewardItem"][1]["Attr"] = "0 1 3" --  729008 【库里没有该物品】*1
	tExchangeCoat_RewardItem[3313893]["RewardItem"][2] = {}
	tExchangeCoat_RewardItem[3313893]["RewardItem"][2]["Id"] = 3003126 -- 究极通神丹[3003126][属性:0][叠加:10000][金币:0], 【表格】赠究极通神丹*10
	tExchangeCoat_RewardItem[3313893]["RewardItem"][2]["Attr"] = "0 10 3" -- 究极通神丹*10
	tExchangeCoat_RewardItem[3313893]["RewardItem"][3] = {}
	tExchangeCoat_RewardItem[3313893]["RewardItem"][3]["Id"] = 3002030 -- 强效护心丹[3002030][属性:9][叠加:10000][金币:1], 【表格】赠强效护心丹*10
	tExchangeCoat_RewardItem[3313893]["RewardItem"][3]["Attr"] = "0 10" -- 强效护心丹*10
	tExchangeCoat_RewardItem[3313893]["RewardEffect"] = {}
	tExchangeCoat_RewardItem[3313893]["RewardEffect"]["SzObj"] = "self"
	tExchangeCoat_RewardItem[3313893]["RewardEffect"]["Effect"] = "angelwing"

	-- ===高贵风格礼包
	-- ===索引: tJulyEatchicken_RewardItem[3313894]
	-- ===删除: 3313894,1
	tExchangeCoat_RewardItem[3313894] = {}
	tExchangeCoat_RewardItem[3313894]["LogId"] = 12001662
	tExchangeCoat_RewardItem[3313894]["DeleteItem"] = {}
	tExchangeCoat_RewardItem[3313894]["DeleteItem"][1] = {}
	tExchangeCoat_RewardItem[3313894]["DeleteItem"][1]["Id"] = 3313894 -- 【库】 3313894 【库里没有该物品】[属性:]
	tExchangeCoat_RewardItem[3313894]["RewardItem"] = {}
	tExchangeCoat_RewardItem[3313894]["RewardItem"][1] = {}
	tExchangeCoat_RewardItem[3313894]["RewardItem"][1]["Id"] = 3322219 --  3322219 【表格】赠豪华神器宝箱*15
	tExchangeCoat_RewardItem[3313894]["RewardItem"][1]["Attr"] = "0 15" --  3322219 *15（[错误]物品数量超10个）
	tExchangeCoat_RewardItem[3313894]["RewardItem"][2] = {}
	tExchangeCoat_RewardItem[3313894]["RewardItem"][2]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*50
	tExchangeCoat_RewardItem[3313894]["RewardItem"][2]["Attr"] = "0 50 3" -- 万能神纹精粹*50
	tExchangeCoat_RewardItem[3313894]["RewardEffect"] = {}
	tExchangeCoat_RewardItem[3313894]["RewardEffect"]["SzObj"] = "self"
	tExchangeCoat_RewardItem[3313894]["RewardEffect"]["Effect"] = "angelwing"
	
	--获得不同档次的奖励
local tExchangeCoat_RankRewardItem = {}
tExchangeCoat_RankRewardItem[1] = {}
tExchangeCoat_RankRewardItem[1]["LogId"] = 12001662
tExchangeCoat_RankRewardItem[1]["RewardItem"] = {}
tExchangeCoat_RankRewardItem[1]["RewardItem"][1] = {}
tExchangeCoat_RankRewardItem[1]["RewardItem"][1]["Id"] = 3313890 --  3313890 【表格】原始部落风格礼包*1
tExchangeCoat_RankRewardItem[1]["RewardItem"][1]["Attr"] = "0 1" --  3313890 *1
tExchangeCoat_RankRewardItem[1]["RewardEffect"] = {}
tExchangeCoat_RankRewardItem[1]["RewardEffect"]["SzObj"] = "self"
tExchangeCoat_RankRewardItem[1]["RewardEffect"]["Effect"] = "angelwing"

tExchangeCoat_RankRewardItem[2] = {}
tExchangeCoat_RankRewardItem[2]["LogId"] = 12001662
tExchangeCoat_RankRewardItem[2]["RewardItem"] = {}
tExchangeCoat_RankRewardItem[2]["RewardItem"][1] = {}
tExchangeCoat_RankRewardItem[2]["RewardItem"][1]["Id"] = 3313891 --  3313891 【表格】原始部落风格礼包*1
tExchangeCoat_RankRewardItem[2]["RewardItem"][1]["Attr"] = "0 1" --  3313891 *1
tExchangeCoat_RankRewardItem[2]["RewardEffect"] = {}
tExchangeCoat_RankRewardItem[2]["RewardEffect"]["SzObj"] = "self"
tExchangeCoat_RankRewardItem[2]["RewardEffect"]["Effect"] = "angelwing"

tExchangeCoat_RankRewardItem[3] = {}
tExchangeCoat_RankRewardItem[3]["LogId"] = 12001662
tExchangeCoat_RankRewardItem[3]["RewardItem"] = {}
tExchangeCoat_RankRewardItem[3]["RewardItem"][1] = {}
tExchangeCoat_RankRewardItem[3]["RewardItem"][1]["Id"] = 3313892 --  3313892 【表格】原始部落风格礼包*1
tExchangeCoat_RankRewardItem[3]["RewardItem"][1]["Attr"] = "0 1" --  3313892 *1
tExchangeCoat_RankRewardItem[3]["RewardEffect"] = {}
tExchangeCoat_RankRewardItem[3]["RewardEffect"]["SzObj"] = "self"
tExchangeCoat_RankRewardItem[3]["RewardEffect"]["Effect"] = "angelwing"

tExchangeCoat_RankRewardItem[4] = {}
tExchangeCoat_RankRewardItem[4]["LogId"] = 12001662
tExchangeCoat_RankRewardItem[4]["RewardItem"] = {}
tExchangeCoat_RankRewardItem[4]["RewardItem"][1] = {}
tExchangeCoat_RankRewardItem[4]["RewardItem"][1]["Id"] = 3313893 --  3313893 【表格】原始部落风格礼包*1
tExchangeCoat_RankRewardItem[4]["RewardItem"][1]["Attr"] = "0 1" --  3313893 *1
tExchangeCoat_RankRewardItem[4]["RewardEffect"] = {}
tExchangeCoat_RankRewardItem[4]["RewardEffect"]["SzObj"] = "self"
tExchangeCoat_RankRewardItem[4]["RewardEffect"]["Effect"] = "angelwing"

tExchangeCoat_RankRewardItem[5] = {}
tExchangeCoat_RankRewardItem[5]["LogId"] = 12001662
tExchangeCoat_RankRewardItem[5]["RewardItem"] = {}
tExchangeCoat_RankRewardItem[5]["RewardItem"][1] = {}
tExchangeCoat_RankRewardItem[5]["RewardItem"][1]["Id"] = 3313894 --  3313894 【表格】原始部落风格礼包*1
tExchangeCoat_RankRewardItem[5]["RewardItem"][1]["Attr"] = "0 1" --  3313894 *1
tExchangeCoat_RankRewardItem[5]["RewardEffect"] = {}
tExchangeCoat_RankRewardItem[5]["RewardEffect"]["SzObj"] = "self"
tExchangeCoat_RankRewardItem[5]["RewardEffect"]["Effect"] = "angelwing"

--玩家上交相应外套
local tExchangeCoat_NormalRewardcoat = {}
tExchangeCoat_NormalRewardcoat[1] = {}
tExchangeCoat_NormalRewardcoat[1]["LogId"] = 12001662
tExchangeCoat_NormalRewardcoat[1]["DeleteItem"] = {}
tExchangeCoat_NormalRewardcoat[1]["DeleteItem"][1] = {}
tExchangeCoat_NormalRewardcoat[1]["DeleteItem"][1]["Id"] = 0 
tExchangeCoat_NormalRewardcoat[1]["DeleteItem"][1]["SaveTime"] = 0
tExchangeCoat_NormalRewardcoat[1]["DeleteItem"][1]["Monopoly"] = 1
tExchangeCoat_NormalRewardcoat[1]["DeleteItem"][1]["ItemNum"] = 1
tExchangeCoat_NormalRewardcoat[1]["DeleteItem"][2] = {}
tExchangeCoat_NormalRewardcoat[1]["DeleteItem"][2]["Id"] = 0 
tExchangeCoat_NormalRewardcoat[1]["DeleteItem"][2]["SaveTime"] = 0
tExchangeCoat_NormalRewardcoat[1]["DeleteItem"][2]["Monopoly"] = 1
tExchangeCoat_NormalRewardcoat[1]["DeleteItem"][2]["ItemNum"] = 1
tExchangeCoat_NormalRewardcoat[1]["RewardEffect"] = {}
tExchangeCoat_NormalRewardcoat[1]["RewardEffect"]["SzObj"] = "self"
tExchangeCoat_NormalRewardcoat[1]["RewardEffect"]["Effect"] = "angelwing"


--掩码记录
local tExchangeCoat_Stc = {}

--存贮具体衣服id以及衣服是否为赠品
--一般风格
tExchangeCoat_Stc["TaskId"] = {}
tExchangeCoat_Stc["TaskId"][1] = {206,71,72}
tExchangeCoat_Stc["TaskId"][2] = {206,73,74}
tExchangeCoat_Stc["TaskId"][3] = {206,75,76}
tExchangeCoat_Stc["TaskId"][4] = {206,77,78}
--高贵风格
tExchangeCoat_Stc["TaskId"][5] = {206,79,80}
tExchangeCoat_Stc["TaskId"][6] = {206,81,82}


--存贮判断衣服是否被取回
tExchangeCoat_Stc["Stc"] = {}
tExchangeCoat_Stc["Stc"][1] = {206,66}
tExchangeCoat_Stc["Stc"][2] = {206,67}
tExchangeCoat_Stc["Stc"][3] = {206,68}
tExchangeCoat_Stc["Stc"][4] = {206,69}
tExchangeCoat_Stc["Stc"][5] = {206,70}

--高级物品表
tExchangeCoat_Stc["Link"] = {}
tExchangeCoat_Stc["Link"]["Event"] = 206
tExchangeCoat_Stc["Link"][1] = {79,80,81,82}


--线下页面
local tExchangeCoat_Web = {}
tExchangeCoat_Web["webside"] = "https://coevent.99.com/fashionstar1910/"

--玩家提交的服饰搭配表
local tExchangeCoat_CoatStyle = {}
tExchangeCoat_CoatStyle[1] = {}
tExchangeCoat_CoatStyle[1][1] = {{181445,181345,181545,181645,181745,181845,181945},{200000,200020}}
tExchangeCoat_CoatStyle[1][2] = {{181365,181465,181565,181665,181765,181865,181965},{200001}}
tExchangeCoat_CoatStyle[1][3] = {{187355,184345},{200009}}
tExchangeCoat_CoatStyle[2] = {}
tExchangeCoat_CoatStyle[2][1] = {{194300},{200619}}
tExchangeCoat_CoatStyle[2][2] = {{195505},{200553}}
tExchangeCoat_CoatStyle[2][3] = {{188365},{200539}}
tExchangeCoat_CoatStyle[3] = {}
tExchangeCoat_CoatStyle[3][1] = {{195635},{200625}}
tExchangeCoat_CoatStyle[3][2] = {{195415},{200642}}
tExchangeCoat_CoatStyle[3][3] = {{195595},{200541}}
tExchangeCoat_CoatStyle[4] = {}
tExchangeCoat_CoatStyle[4][1] = {{195025},{200407}}
tExchangeCoat_CoatStyle[4][2] = {{184355},{200476}}
tExchangeCoat_CoatStyle[4][3] = {{183485},{200554}}
--贵族外套特殊
tExchangeCoat_CoatStyle[5] = {}
tExchangeCoat_CoatStyle[5][1] = {
189135,
189065,
193275,
188915,
193445,
193525,
193565,
193625,
194395,
189675,
194875,
189695,
195045,
195365,
195225,
195405,
195015,
195485,
195605,
195425,
195645,
195575,
195795,
195845,
195075,
195865,
195715,
195545,
195765,
195755,
195885}


tExchangeCoat_CoatStyle[5][2] = {200494,
200517,
200531,
200540,
200482,
200021,
200022,
200449,
200410,
200544,
200559,
200560,
200564,
200537,
200575,
200572,
200573,
200524,
200592,
200596,
200580,
200613,
200614,
200623,
200624,
200533,
200601,
200626,
200629,
200532,
200606,
200644,
200646,
200637,
200638,
200639,
200640,
200647,
200655,
200632,
200648,
200649,
200650,
200220,
200221,
200494}

--购买选项限制
local tExchangeCoat_TicketBuy = {}
--赠点
tExchangeCoat_TicketBuy[1] = {}
tExchangeCoat_TicketBuy[1]["Cost"] = 50
tExchangeCoat_TicketBuy[1]["stc"] = {206,89}
tExchangeCoat_TicketBuy[1]["Emoneylog"] = "1000	1027	0	0	%d	"
--非赠
tExchangeCoat_TicketBuy[2] = {}
tExchangeCoat_TicketBuy[2]["Cost"] = 7
tExchangeCoat_TicketBuy[2]["stc"] = {206,90}
tExchangeCoat_TicketBuy[2]["Emoneylog"] = "1000	1028	%d	%d	1	"
--金币
tExchangeCoat_TicketBuy[3] = {}
tExchangeCoat_TicketBuy[3]["Cost"] = 500000
tExchangeCoat_TicketBuy[3]["stc"] = {206,91}
----------------------------------逻辑部分配置----------------------------------
--判断玩家是否已提交此类型的外套
function ExchangeCoat_SubmitCoatall(nNpcId)
	local nUserId = Get_UserId()
	local nNum = 13
	for i,v in pairs(tExchangeCoat_Stc["Stc"]) do
		if Task_ChkStcValue(v[1],v[2],"==",1,nUserId) then
			tNpcGossip[nNpcId]["Option"..nNum] = tExchangeCoat_Text[nNpcId]["Option"..nNum]..tExchangeCoat_Text[nNpcId]["Option101"]
		else
			tNpcGossip[nNpcId]["Option"..nNum] = tExchangeCoat_Text[nNpcId]["Option"..nNum]
		end
		nNum = nNum + 1
	end
	return true
end

--购买选票
function ExchangeCoat_BuyTicket(nType,nNum)
	local nUserId = Get_UserId()
	local nEventype = tExchangeCoat_TicketBuy[nType]["stc"][1]
	local nDatatype = tExchangeCoat_TicketBuy[nType]["stc"][2]
	local nCostZeng = tExchangeCoat_TicketBuy[nType]["Cost"]*nNum
	
	--花费赠点
	if nType == 1 then
		
		if Get_UserMonoEMoney() >= nCostZeng then
			--扣除消耗
			if User_AddEMoneyMono(-nCostZeng) then
				Sys_SaveEmoneyBuy(string.format(tExchangeCoat_TicketBuy[nType]["Emoneylog"],nCostZeng))
				--记录掩码
				Task_AddStatistic(nEventype,nDatatype,nNum,1,nUserId)
				Task_SetStcTimestamp(nEventype,nDatatype,0,nUserId)
				
				--上交成功提示
				local sMonetype = tExchangeCoat_Text["Moneytype"][nType]
				User_TalkChannel2005(string.format(tExchangeCoat_Text["Broadcast"][5],nNum,nCostZeng,sMonetype))
				Sys_MsgBox(string.format(tExchangeCoat_Text["Broadcast"][5],nNum,nCostZeng,sMonetype))
				return
			end
		else
			User_TalkChannel2005(tRewardTemplate_Text["CostEMoneyMono"])
			Sys_MsgBox(tRewardTemplate_Text["CostEMoneyMono"])
			return
		end
	end
	
	--花费天石
	if nType == 2 then
		if Get_UserEMoney() >= nCostZeng then
			--扣除消耗
			if User_AddEMoney(-nCostZeng) then
				Sys_SaveEmoneyBuy(string.format(tExchangeCoat_TicketBuy[nType]["Emoneylog"],nCostZeng,nCostZeng))
				--记录掩码
				Task_AddStatistic(nEventype,nDatatype,nNum,1,nUserId)
				Task_SetStcTimestamp(nEventype,nDatatype,0,nUserId)
				
				--上交成功提示
				local sMonetype = tExchangeCoat_Text["Moneytype"][nType]
				User_TalkChannel2005(string.format(tExchangeCoat_Text["Broadcast"][5],nNum,nCostZeng,sMonetype))
				Sys_MsgBox(string.format(tExchangeCoat_Text["Broadcast"][5],nNum,nCostZeng,sMonetype))
				return
			end
		else
			User_TalkChannel2005(tRewardTemplate_Text["CostEMoney"])
			Sys_MsgBox(tRewardTemplate_Text["CostEMoney"])
			return
		end
	end
	
	--花费金币
	if nType == 3 then
		if User_CanPutMoney2Bag(-nCostZeng) then
			--扣除消耗
			if User_AddMoney(-nCostZeng) then
				
				--记录掩码
				Task_AddStatistic(nEventype,nDatatype,nNum,1,nUserId)
				Task_SetStcTimestamp(nEventype,nDatatype,0,nUserId)
				
				--上交成功提示
				local sMonetype = tExchangeCoat_Text["Moneytype"][nType]
				User_TalkChannel2005(string.format(tExchangeCoat_Text["Broadcast"][5],nNum,nCostZeng,sMonetype))
				Sys_MsgBox(string.format(tExchangeCoat_Text["Broadcast"][5],nNum,nCostZeng,sMonetype))
				return
			end
		else
			User_TalkChannel2005(tRewardTemplate_Text["CostMoney"])
			Sys_MsgBox(tRewardTemplate_Text["CostMoney"])
			return
		end
	end
end


--打开通用礼包
function ExchangeCoat_OpenBag(nItemId)
	local nUserId = Get_UserId()
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	--若是有给赠点则新增赠点上限判断
	if tExchangeCoat_RewardItem[nItemId]["RewardEMoneyMono"] ~= nil then
		--天石赠上限
		local tEMoneyMono = tExchangeCoat_RewardItem[nItemId]["RewardEMoneyMono"]
		
		if not RewardTemplate_EMoneyMonoLimit(tEMoneyMono,nUserId) then
			return false
		end
	end
	RewardTemplate_UseItemAndMsg(tExchangeCoat_RewardItem[nItemId])
end

--玩家提交风格外套，除高贵
function ExchangeCoat_AwardCoatstyle(nNpcId,nStyle,nNum)
	local nUserId = Get_UserId()
	local nCoatId = 0
	local nInsertCoatId = 0
	local nCoatZeng = 1
	local nAnimalId = 0
	local nInsertAnimalId = 0
	local nAnimalZeng = 1
	
	--判断玩家是否上传过此类外套
	local nEventype = tExchangeCoat_Stc["TaskId"][nStyle][1]
	local nDatatype1 = tExchangeCoat_Stc["TaskId"][nStyle][2]
	local nDatatype2 = tExchangeCoat_Stc["TaskId"][nStyle][3]
	if Task_ChkStcValue(nEventype,nDatatype1,"~=",0,nUserId) or Task_ChkStcValue(nEventype,nDatatype2,"~=",0,nUserId) then
		local sStypeCoat = string.format(tExchangeCoat_Text[nNpcId]["Text150"],tExchangeCoat_Text["Style"][nStyle])
		Sys_MsgBox(sStypeCoat)
		User_TalkChannel2005(sStypeCoat)
		return
	end
	
	--判断玩家背包中是否有此种类型的外套
	local tPeopleTable = tExchangeCoat_CoatStyle[nStyle][nNum][1]
	local tAnimalTable = tExchangeCoat_CoatStyle[nStyle][nNum][2]
	for i,v in pairs(tPeopleTable) do
	
		--判断永久非赠的外套
		if Item_ChkMulItem(v,v,1,1,0,nUserId,0) then
			nCoatZeng = 1
			nInsertCoatId = tonumber(v.."0")
			nCoatId = v
		end
		
		--判断永久可赠的外套
		if Item_ChkMulItem(v,v,1,2,0,nUserId,0) then
			nCoatZeng = 2
			nInsertCoatId = tonumber(v.."3")
			nCoatId = v
		end

	end
	
	for i,v in pairs(tAnimalTable) do
	
		--判断永久非赠的外套
		if Item_ChkMulItem(v,v,1,1,0,nUserId,0) then
			nAnimalZeng = 1
			nInsertAnimalId = tonumber(v.."0")
			nAnimalId = v
		end
	
		--判断永久可赠的外套
		if Item_ChkMulItem(v,v,1,2,0,nUserId,0) then
			nAnimalZeng = 2
			nInsertAnimalId = tonumber(v.."3")
			nAnimalId = v
		end

	end
	
	--玩家背包中无此类型外套
	
	if nCoatId == 0 or nAnimalId == 0 then
		LinkNpcGossipFunc_New(nNpcId,"9-1")
		return
	end
	
	--玩家上交相应外套
	local tReward = CommonFunc_Copy(tExchangeCoat_NormalRewardcoat[1])
	tReward["DeleteItem"][1]["Id"] = nCoatId
	tReward["DeleteItem"][1]["Monopoly"] = nCoatZeng
	tReward["DeleteItem"][2]["Id"] = nAnimalId
	tReward["DeleteItem"][2]["Monopoly"] = nAnimalZeng
	
	--掩码修改
	--存贮玩家上传的物品id 
	local nInsertCoat = nInsertCoatId
	local nInsertAnimal = nInsertAnimalId
	Task_SetStatistic(nEventype,nDatatype1,nInsertCoat,1,nUserId)
	Task_SetStcTimestamp(nEventype,nDatatype1,0,nUserId)
	Task_SetStatistic(nEventype,nDatatype2,nInsertAnimal,1,nUserId)
	Task_SetStcTimestamp(nEventype,nDatatype2,0,nUserId)
	
	--存贮玩家是否取回衣服的标识
	local nGetEvent = tExchangeCoat_Stc["Stc"][nStyle][1]
	local nGetData = tExchangeCoat_Stc["Stc"][nStyle][2]
	Task_SetStatistic(nGetEvent,nGetData,1,1,nUserId)
	Task_SetStcTimestamp(nGetEvent,nGetData,0,nUserId)
	
	RewardTemplate_UseItemAndMsg(tReward)
	
	--玩家提示
	local sItemName1 = Get_ItemtypeName(nCoatId)
	local sItemName2 = Get_ItemtypeName(nAnimalId)
	local sItemStyle = tExchangeCoat_Text[nNpcId]["Text12"..(nStyle-1)]
	local sSubmitSuccess = string.format(tExchangeCoat_Text[nNpcId]["Text147"],sItemName1,sItemName2,sItemStyle)
	User_TalkChannel2005(sSubmitSuccess)
	Sys_MsgBox(sSubmitSuccess)
end


--玩家提交高贵外套
function ExchangeCoat_AwardHighCoatstyle(nNpcId,nStyle)
	local nUserId = Get_UserId()
	local nCoatId = 0
	local nInsertCoatId = 0
	local nCoatZeng = 1
	local nAnimalId = 0
	local nInsertAnimalId = 0
	local nAnimalZeng = 1
	
	--判断玩家是否上传过此类外套
	local nEventype = tExchangeCoat_Stc["Stc"][nStyle][1]
	local nDatatype = tExchangeCoat_Stc["Stc"][nStyle][2]
	local nTaskEvent = tExchangeCoat_Stc["TaskId"][5][1]
	local nTaskData1 = tExchangeCoat_Stc["TaskId"][5][2]
	local nTaskData2 = tExchangeCoat_Stc["TaskId"][5][3]
	local nTaskData3 = tExchangeCoat_Stc["TaskId"][6][2]
	local nTaskData4 = tExchangeCoat_Stc["TaskId"][6][3]
	
	if Task_ChkStcValue(nEventype,nDatatype,"==",1,nUserId) then
		local sStypeCoat = string.format(tExchangeCoat_Text[nNpcId]["Text150"],tExchangeCoat_Text["Style"][nStyle])
		Sys_MsgBox(sStypeCoat)
		User_TalkChannel2005(sStypeCoat)
		return
	end
	
	--判断玩家背包中是否有此种类型的外套
	local tPeopleTable = tExchangeCoat_CoatStyle[nStyle][1]
	local tAnimalTable = tExchangeCoat_CoatStyle[nStyle][2]
	
	for i,v in pairs(tPeopleTable) do
	
		--判断永久非赠的外套
		if Item_ChkMulItem(v,v,1,1,0,nUserId,0) then
			nCoatZeng = 1
			nInsertCoatId = tonumber(v.."0")
			nCoatId = v
		end
		
		--判断永久可赠的外套
		if Item_ChkMulItem(v,v,1,2,0,nUserId,0) then
			nCoatZeng = 2
			nInsertCoatId = tonumber(v.."3")
			nCoatId = v
		end

	end
	
	for i,v in pairs(tAnimalTable) do
	
		--判断永久非赠的外套
		if Item_ChkMulItem(v,v,1,1,0,nUserId,0) then
			nAnimalZeng = 1
			nInsertAnimalId = tonumber(v.."0")
			nAnimalId = v
		end
	
		--判断永久可赠的外套
		if Item_ChkMulItem(v,v,1,2,0,nUserId,0) then
			nAnimalZeng = 2
			nInsertAnimalId = tonumber(v.."3")
			nAnimalId = v
		end

	end
	
	--玩家背包中无此类型外套
	if nCoatId == 0 or nAnimalId == 0 then
		LinkNpcGossipFunc_New(nNpcId,"9-1")
		return
	end
	
	--玩家上交相应外套
	local tReward = CommonFunc_Copy(tExchangeCoat_NormalRewardcoat[1])
	tReward["DeleteItem"][1]["Id"] = nCoatId
	tReward["DeleteItem"][1]["Monopoly"] = nCoatZeng
	tReward["DeleteItem"][2]["Id"] = nAnimalId
	tReward["DeleteItem"][2]["Monopoly"] = nAnimalZeng
	
	--掩码修改
	--存贮玩家上传的物品id 
	local nInsertCoat = nInsertCoatId
	local nInsertAnimal = nInsertAnimalId
	--判断是第几次上交
	if Task_ChkStcValue(nTaskEvent,nTaskData1,"==",0,nUserId) then
		Task_SetStatistic(nTaskEvent,nTaskData1,nInsertCoat,1,nUserId)
		Task_SetStcTimestamp(nTaskEvent,nTaskData1,0,nUserId)
		Task_SetStatistic(nTaskEvent,nTaskData2,nInsertAnimal,1,nUserId)
		Task_SetStcTimestamp(nTaskEvent,nTaskData2,0,nUserId)
		
		--玩家提示,继续提交
		local sItemName1 = Get_ItemtypeName(nCoatId)
		local sItemName2 = Get_ItemtypeName(nAnimalId)
		local sSubmitSuccess = string.format(tExchangeCoat_Text[nNpcId]["Text1474"],sItemName1,sItemName2)
		Sys_MsgBox(sSubmitSuccess,"LinkNpcGossipFunc_New</N>"..nNpcId.."</N>".."8-1")
	else
		Task_SetStatistic(nTaskEvent,nTaskData3,nInsertCoat,1,nUserId)
		Task_SetStcTimestamp(nTaskEvent,nTaskData3,0,nUserId)
		Task_SetStatistic(nTaskEvent,nTaskData4,nInsertAnimal,1,nUserId)
		Task_SetStcTimestamp(nTaskEvent,nTaskData4,0,nUserId)
		
		--存贮玩家是否取回衣服的标识
		Task_SetStatistic(nEventype,nDatatype,1,1,nUserId)
		Task_SetStcTimestamp(nEventype,nDatatype,0,nUserId)
		
		User_TalkChannel2005(tExchangeCoat_Text[nNpcId]["Text1475"])
		Sys_MsgBox(tExchangeCoat_Text[nNpcId]["Text1475"])
	end
	
	RewardTemplate_UseItemAndMsg(tReward)
	
end

--字符串切割获得物品id和赠
function ExchangeCoat_StcSpilit(nItemIdZeng)
	local nLastItemId = string.sub(nItemIdZeng,-1)
	local nBeginItemId = string.sub(nItemIdZeng,1,6)
	return nBeginItemId,nLastItemId
end

--玩家取回所有外套
function ExchangeCoat_DrawBackcoat(nNpcId)
	local nUserId = Get_UserId()
	local nTip = 1
	local nHaveCoat = 0
	
	local tExchangeCoat_BackRewardItem = {}
	tExchangeCoat_BackRewardItem[nNpcId] = {}
	tExchangeCoat_BackRewardItem[nNpcId]["LogId"] = 12001662 
	tExchangeCoat_BackRewardItem[nNpcId]["RewardItem"] = {} 
	for i,v in pairs(tExchangeCoat_Stc["TaskId"]) do
		local nEvent = v[1]
		local nData1 = v[2]
		local nData2 = v[3]
		local nItemStc1 = Get_UserStatisticValue(nEvent,nData1)
		local nItemStc2 = Get_UserStatisticValue(nEvent,nData2)
		local nItemId1,nttr1 = ExchangeCoat_StcSpilit(nItemStc1)
		local nItemId2,nttr2 = ExchangeCoat_StcSpilit(nItemStc2)
		
		if Task_ChkStcValue(nEvent,nData1,"~=",0,nUserId) and Task_ChkStcValue(nEvent,nData2,"~=",0,nUserId) then
			tExchangeCoat_BackRewardItem[nNpcId]["RewardItem"][nTip] = {}
			tExchangeCoat_BackRewardItem[nNpcId]["RewardItem"][nTip]["Id"] = tonumber(nItemId1)
			tExchangeCoat_BackRewardItem[nNpcId]["RewardItem"][nTip]["Attr"] = "0 1 "..nttr1.." 0 0 0 0 1"
			tExchangeCoat_BackRewardItem[nNpcId]["RewardItem"][nTip+1] = {}
			tExchangeCoat_BackRewardItem[nNpcId]["RewardItem"][nTip+1]["Id"] = tonumber(nItemId2)
			tExchangeCoat_BackRewardItem[nNpcId]["RewardItem"][nTip+1]["Attr"] = "0 1 "..nttr2.." 0 0 0 0 1"
			nTip = nTip + 2
		end
	end
	
	--玩家并没有外套可取回
	if nTip == 1 then
		Sys_MsgBox(tExchangeCoat_Text["Broadcast"][1])
		return
	end
	
	--判断玩家背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tExchangeCoat_BackRewardItem[nNpcId])
	if User_CheckLeftSpace(nSpace) then
		
		--玩家身上的掩码置0
		for i,v in pairs(tExchangeCoat_Stc["TaskId"]) do
			Task_SetStatistic(v[1],v[2],0,1,nUserId)
			Task_SetStcTimestamp(v[1],v[2],0,nUserId)
			Task_SetStatistic(v[1],v[3],0,1,nUserId)
			Task_SetStcTimestamp(v[1],v[3],0,nUserId)
		end
		
		--给玩家相应的奖励
		RewardTemplate_UseItemAndMsg(tExchangeCoat_BackRewardItem[nNpcId])
	else
		Sys_MsgBox(string.format(tExchangeCoat_Text["Broadcast"][2],nSpace))
	end
end


--判断玩家是否提取过外套
function ExchangeCoat_SubmitCoatexit(nNpcId,nTip)
	local nUserId = Get_UserId()
	local nNum = 4

	--判断玩家是否领取过奖励
	local nEventGet = tExchangeCoat_Stc["Stc"][nTip][1]
	local nDataGet = tExchangeCoat_Stc["Stc"][nTip][2]
	if Task_ChkStcValue(nEventGet,nDataGet,"==",0,nUserId) then
		tNpcGossip[nNpcId]["Option"..nNum+nTip] = tExchangeCoat_Text[nNpcId]["Option"..nNum+nTip]..tExchangeCoat_Text[nNpcId]["Option10"]
		return false
	else
		tNpcGossip[nNpcId]["Option"..nNum+nTip] = tExchangeCoat_Text[nNpcId]["Option"..nNum+nTip]
	end
	
	return true

end

--跳转下线页面
function ExchangeCoat_GoLine()
	local nUserId = Get_UserId()
	local sPszParam = tExchangeCoat_Web["webside"]
	User_SendWebPage(sPszParam,nUserId)
end

--领取奖励
function ExchangeCoat_GetAwardcoat(nNpcId,nTip)
	--1.判断玩家是否已经领取过奖励
	--2.判断玩家是否提交过
	
	--背包空间判断
	local nSpace = RewardTemplate_GetRewardSpace(tExchangeCoat_RankRewardItem[nTip])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		return
	end
	
	local nUserId = Get_UserId()
	local nEvent = tExchangeCoat_Stc["Stc"][nTip][1]
	local nData = tExchangeCoat_Stc["Stc"][nTip][2]
	
	local nTaskEvent = tExchangeCoat_Stc["TaskId"][nTip][1]
	local nTaskData1 = tExchangeCoat_Stc["TaskId"][nTip][2]
	local nTaskData2 = tExchangeCoat_Stc["TaskId"][nTip][3]
	local nItemZeng1 = Get_UserStatisticValue(nTaskEvent,nTaskData1,nUserId)
	local nItemZeng2 = Get_UserStatisticValue(nTaskEvent,nTaskData2,nUserId)
	if Task_ChkStcValue(nEvent,nData,"==",1,nUserId) then
		
		--修改掩码已领取
		Task_SetStatistic(nEvent,nData,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nData,0,nUserId)
		RewardTemplate_UseItemAndMsg(tExchangeCoat_RankRewardItem[nTip])
		
	else
		Sys_MsgBox(tExchangeCoat_Text["Broadcast"][3])
		User_TalkChannel2005(tExchangeCoat_Text["Broadcast"][3])
	end
end
----------------------------------模块部分配置----------------------------------
--活动前
tNpcFace[5080] = 215
tNpcGossip[25009] = tNpcGossip[25009] or DefaultNpc:new{}
tNpcGossip[25009]["OptionHidden"] = 1
tNpcGossip[25009]["DialogueText"] = tExchangeCoat_Text[25009]
tNpcGossip[25009]["Text1-1"] = {111,112,113}
tNpcGossip[25009]["tOption1-1"] = {1}
tNpcGossip[25009]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tExchangeCoat_Time["Before"])
end

--活动后
tNpcGossip[25009]["Text1-2"] = {114,115,116}
tNpcGossip[25009]["tOption1-2"] = {2,3}
tNpcGossip[25009]["ChkFunc1-2"] = function()
	return not Sys_ChkFullTime(tExchangeCoat_Time["Active"])
end

tNpcGossip[25009]["OptionFunc2"] = "ExchangeCoat_DrawBackcoat</N>25009"
tNpcGossip[25009]["OptionPoint3"] = "2-1"


--玩家领取奖励礼包
tNpcGossip[25009]["Text2-1"] = {118}
tNpcGossip[25009]["tOption2-1"] = {5,6,7,8,9}
tNpcGossip[25009]["OptionFunc5"] = "ExchangeCoat_GetAwardcoat</N>25009</N>1"
tNpcGossip[25009]["OptionFunc6"] = "ExchangeCoat_GetAwardcoat</N>25009</N>2"
tNpcGossip[25009]["OptionFunc7"] = "ExchangeCoat_GetAwardcoat</N>25009</N>3"
tNpcGossip[25009]["OptionFunc8"] = "ExchangeCoat_GetAwardcoat</N>25009</N>4"
tNpcGossip[25009]["OptionFunc9"] = "ExchangeCoat_GetAwardcoat</N>25009</N>5"
tNpcGossip[25009]["OptionChkFunc5"] = function()
	return ExchangeCoat_SubmitCoatexit(25009,1)
end
tNpcGossip[25009]["OptionChkFunc6"] = function()
	return ExchangeCoat_SubmitCoatexit(25009,2)
end
tNpcGossip[25009]["OptionChkFunc7"] = function()
	return ExchangeCoat_SubmitCoatexit(25009,3)
end
tNpcGossip[25009]["OptionChkFunc8"] = function()
	return ExchangeCoat_SubmitCoatexit(25009,4)
end
tNpcGossip[25009]["OptionChkFunc9"] = function()
	return ExchangeCoat_SubmitCoatexit(25009,5)
end


--活动中
tNpcGossip[25009]["Text1-3"] = {133,134,1341,135,1351,136,137}
tNpcGossip[25009]["tOption1-3"] = {11,111,12}
tNpcGossip[25009]["OptionPoint11"] = "3-1"
tNpcGossip[25009]["OptionPoint111"] = "10-1"
tNpcGossip[25009]["OptionFunc12"] = "ExchangeCoat_GoLine"

tNpcGossip[25009]["Text3-1"] = {138,139,140}
tNpcGossip[25009]["tOption3-1"] = {13,14,15,16,17}
tNpcGossip[25009]["OptionPoint13"] = "4-1"
tNpcGossip[25009]["OptionPoint14"] = "5-1"
tNpcGossip[25009]["OptionPoint15"] = "6-1"
tNpcGossip[25009]["OptionPoint16"] = "7-1"
tNpcGossip[25009]["OptionPoint17"] = "8-1"
tNpcGossip[25009]["ChkFunc3-1"] = function()
	return ExchangeCoat_SubmitCoatall(25009)
end

--原始部落风格
tNpcGossip[25009]["Text4-1"] = {141,142,143,144,145,146,1462,142}
tNpcGossip[25009]["tOption4-1"] = {18,19,20,2011}
tNpcGossip[25009]["OptionFunc18"] = "ExchangeCoat_AwardCoatstyle</N>25009</N>1</N>1"
tNpcGossip[25009]["OptionFunc19"] = "ExchangeCoat_AwardCoatstyle</N>25009</N>1</N>2"
tNpcGossip[25009]["OptionFunc20"] = "ExchangeCoat_AwardCoatstyle</N>25009</N>1</N>3"
tNpcGossip[25009]["OptionPoint2011"] = "1"

--休闲风格
tNpcGossip[25009]["Text5-1"] = {211,212,213,214,215,216,217,142}
tNpcGossip[25009]["tOption5-1"] = {25,26,27,2011}
tNpcGossip[25009]["OptionFunc25"] = "ExchangeCoat_AwardCoatstyle</N>25009</N>2</N>1"
tNpcGossip[25009]["OptionFunc26"] = "ExchangeCoat_AwardCoatstyle</N>25009</N>2</N>2"
tNpcGossip[25009]["OptionFunc27"] = "ExchangeCoat_AwardCoatstyle</N>25009</N>2</N>3"

--华丽风格
tNpcGossip[25009]["Text6-1"] = {311,312,313,314,315,316,317,142}
tNpcGossip[25009]["tOption6-1"] = {28,29,30,2011}
tNpcGossip[25009]["OptionFunc28"] = "ExchangeCoat_AwardCoatstyle</N>25009</N>3</N>1"
tNpcGossip[25009]["OptionFunc29"] = "ExchangeCoat_AwardCoatstyle</N>25009</N>3</N>2"
tNpcGossip[25009]["OptionFunc30"] = "ExchangeCoat_AwardCoatstyle</N>25009</N>3</N>3"

--可爱风格
tNpcGossip[25009]["Text7-1"] = {411,412,413,414,415,416,417,142}
tNpcGossip[25009]["tOption7-1"] = {31,32,33,2011}
tNpcGossip[25009]["OptionFunc31"] = "ExchangeCoat_AwardCoatstyle</N>25009</N>4</N>1"
tNpcGossip[25009]["OptionFunc32"] = "ExchangeCoat_AwardCoatstyle</N>25009</N>4</N>2"
tNpcGossip[25009]["OptionFunc33"] = "ExchangeCoat_AwardCoatstyle</N>25009</N>4</N>3"

--高贵风格，该外套一件件提交
tNpcGossip[25009]["Text8-1"] = {511,512,513,514,142}
tNpcGossip[25009]["tOption8-1"] = {34,2011}
tNpcGossip[25009]["OptionFunc34"] = "ExchangeCoat_AwardHighCoatstyle</N>25009</N>5"

--玩家背包中无此类风格的外套
tNpcGossip[25009]["Text9-1"] = {149}
tNpcGossip[25009]["tOption9-1"] = {23}
tNpcGossip[25009]["OptionPoint23"] = "1"

--玩家购买选票
tNpcGossip[25009]["Text10-1"] = {611,6111}
tNpcGossip[25009]["tOption10-1"] = {40,41,42}
tNpcGossip[25009]["OptionPoint40"] = "11-1"
tNpcGossip[25009]["OptionPoint41"] = "12-1"
tNpcGossip[25009]["OptionPoint42"] = "13-1"

--玩家通过50赠品购买
tNpcGossip[25009]["Text11-1"] = {612}
tNpcGossip[25009]["tOption11-1"] = {43,44}
tNpcGossip[25009]["OptionPoint43"] = "14-1"
tNpcGossip[25009]["OptionPoint44"] = "15-1"

--玩家通过7非赠购买
tNpcGossip[25009]["Text12-1"] = {613}
tNpcGossip[25009]["tOption12-1"] = {431,441}
tNpcGossip[25009]["OptionPoint431"] = "16-1"
tNpcGossip[25009]["OptionPoint441"] = "17-1"

--玩家通过50W金币购买
tNpcGossip[25009]["Text13-1"] = {614}
tNpcGossip[25009]["tOption13-1"] = {432,442}
tNpcGossip[25009]["OptionPoint432"] = "18-1"
tNpcGossip[25009]["OptionPoint442"] = "19-1"

--二次确认购买
--玩家通过50赠品购买
tNpcGossip[25009]["Text14-1"] = {615}
tNpcGossip[25009]["tOption14-1"] = {45,48}
tNpcGossip[25009]["OptionFunc45"] = "ExchangeCoat_BuyTicket</N>1</N>1"
tNpcGossip[25009]["OptionPoint48"] = "1"
tNpcGossip[25009]["Text15-1"] = {6151}
tNpcGossip[25009]["tOption15-1"] = {451,48}
tNpcGossip[25009]["OptionFunc451"] = "ExchangeCoat_BuyTicket</N>1</N>5"

--玩家通过7非赠购买
tNpcGossip[25009]["Text16-1"] = {616}
tNpcGossip[25009]["tOption16-1"] = {46,48}
tNpcGossip[25009]["OptionFunc46"] = "ExchangeCoat_BuyTicket</N>2</N>1"
tNpcGossip[25009]["Text17-1"] = {6161}
tNpcGossip[25009]["tOption17-1"] = {461,48}
tNpcGossip[25009]["OptionFunc461"] = "ExchangeCoat_BuyTicket</N>2</N>5"

--玩家通过50W金币购买
tNpcGossip[25009]["Text18-1"] = {617}
tNpcGossip[25009]["tOption18-1"] = {47,48}
tNpcGossip[25009]["OptionFunc47"] = "ExchangeCoat_BuyTicket</N>3</N>1"
tNpcGossip[25009]["Text19-1"] = {6171}
tNpcGossip[25009]["tOption19-1"] = {471,48}
tNpcGossip[25009]["OptionFunc471"] = "ExchangeCoat_BuyTicket</N>3</N>5"


--礼包
tItem[3313882] = tItem[3313882] or {}
tItem[3313882]["Function"] = function(nItemId,sItemName)
	ExchangeCoat_OpenBag(nItemId)
end

tItem[3313883] = tItem[3313882] or {}
tItem[3313884] = tItem[3313882] or {}
tItem[3313885] = tItem[3313882] or {}
tItem[3313886] = tItem[3313882] or {}
tItem[3313887] = tItem[3313882] or {}
tItem[3313888] = tItem[3313882] or {}
tItem[3313889] = tItem[3313882] or {}
tItem[3313890] = tItem[3313882] or {}
tItem[3313891] = tItem[3313882] or {}
tItem[3313892] = tItem[3313882] or {}
tItem[3313893] = tItem[3313882] or {}
tItem[3313894] = tItem[3313882] or {}


