------------------------------------------------------------------------------------
--Name：            200102[英文征服][活动脚本]2月针对大R的博弈类活动（2.25-3.10）
--Creator:      杨志翔
--Created:     2020-01-02
------------------------------------------------------------------------------------
--任务需求：
--前缀DragonSoulRouletteGame_
--变量缩写前缀DSRoulette_
--logid 12001817
--global 54122-54124 各data位存储全服限量
--item 3327446 幸运币
--3327447 3327448 9和11阶转盘
--25827 npcid
--轮盘id 4300 4371
--stc 214 35 背包信 3327449
------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tDragonSoulRouletteGame_Cont = {}
	tDragonSoulRouletteGame_Cont["ActTime"] = tActivityTime["DragonSoulRouletteGame"]["ActivityTime"]
	tDragonSoulRouletteGame_Cont["NpcId"] = 25827
	tDragonSoulRouletteGame_Cont["ItemId"] = 3327446
	tDragonSoulRouletteGame_Cont["RouletteId"] = {}
	tDragonSoulRouletteGame_Cont["RouletteId"][9] = 3327447
	tDragonSoulRouletteGame_Cont["RouletteId"][11] = 3327448
	tDragonSoulRouletteGame_Cont["Soul"] = {}
	tDragonSoulRouletteGame_Cont["Soul"][9] = 4200009
	tDragonSoulRouletteGame_Cont["Soul"][11] = 4200011


	tDragonSoulRouletteGame_Cont["Global"] = {}
	tDragonSoulRouletteGame_Cont["Global"][2] = {}  
	tDragonSoulRouletteGame_Cont["Global"][2]["Id"] = 54122
	tDragonSoulRouletteGame_Cont["Global"][2]["Pos"] = 0
	tDragonSoulRouletteGame_Cont["Global"][2]["Limit"] = 200
	
	tDragonSoulRouletteGame_Cont["Global"][3] = {}  
	tDragonSoulRouletteGame_Cont["Global"][3]["Id"] = 54122
	tDragonSoulRouletteGame_Cont["Global"][3]["Pos"] = 1
	tDragonSoulRouletteGame_Cont["Global"][3]["Limit"] = 2

	tDragonSoulRouletteGame_Cont["Global"][4] = {}  
	tDragonSoulRouletteGame_Cont["Global"][4]["Id"] = 54122
	tDragonSoulRouletteGame_Cont["Global"][4]["Pos"] = 2
	tDragonSoulRouletteGame_Cont["Global"][4]["Limit"] = 2

	tDragonSoulRouletteGame_Cont["Global"][5] = {}  
	tDragonSoulRouletteGame_Cont["Global"][5]["Id"] = 54122
	tDragonSoulRouletteGame_Cont["Global"][5]["Pos"] = 3
	tDragonSoulRouletteGame_Cont["Global"][5]["Limit"] = 10

	tDragonSoulRouletteGame_Cont["Global"][6] = {}  
	tDragonSoulRouletteGame_Cont["Global"][6]["Id"] = 54122
	tDragonSoulRouletteGame_Cont["Global"][6]["Pos"] = 4
	tDragonSoulRouletteGame_Cont["Global"][6]["Limit"] = 10

	tDragonSoulRouletteGame_Cont["Global"][7] = {}  
	tDragonSoulRouletteGame_Cont["Global"][7]["Id"] = 54122
	tDragonSoulRouletteGame_Cont["Global"][7]["Pos"] = 5
	tDragonSoulRouletteGame_Cont["Global"][7]["Limit"] = 10

	tDragonSoulRouletteGame_Cont["Global"][8] = {}  
	tDragonSoulRouletteGame_Cont["Global"][8]["Id"] = 54123
	tDragonSoulRouletteGame_Cont["Global"][8]["Pos"] = 0
	tDragonSoulRouletteGame_Cont["Global"][8]["Limit"] = 30

	tDragonSoulRouletteGame_Cont["Global"][9] = {}  
	tDragonSoulRouletteGame_Cont["Global"][9]["Id"] = 54123
	tDragonSoulRouletteGame_Cont["Global"][9]["Pos"] = 1
	tDragonSoulRouletteGame_Cont["Global"][9]["Limit"] = 30

	tDragonSoulRouletteGame_Cont["Global"][10] = {}  
	tDragonSoulRouletteGame_Cont["Global"][10]["Id"] = 54123
	tDragonSoulRouletteGame_Cont["Global"][10]["Pos"] = 2
	tDragonSoulRouletteGame_Cont["Global"][10]["Limit"] = 30

	tDragonSoulRouletteGame_Cont["Global"][11] = {}  
	tDragonSoulRouletteGame_Cont["Global"][11]["Id"] = 54123
	tDragonSoulRouletteGame_Cont["Global"][11]["Pos"] = 3
	tDragonSoulRouletteGame_Cont["Global"][11]["Limit"] = 30

	tDragonSoulRouletteGame_Cont["Global"][12] = {}  
	tDragonSoulRouletteGame_Cont["Global"][12]["Id"] = 54123
	tDragonSoulRouletteGame_Cont["Global"][12]["Pos"] = 4
	tDragonSoulRouletteGame_Cont["Global"][12]["Limit"] = 30

	tDragonSoulRouletteGame_Cont["Global"][13] = {}  
	tDragonSoulRouletteGame_Cont["Global"][13]["Id"] = 54123
	tDragonSoulRouletteGame_Cont["Global"][13]["Pos"] = 5
	tDragonSoulRouletteGame_Cont["Global"][13]["Limit"] = 30

	tDragonSoulRouletteGame_Cont["Global"][14] = {}  
	tDragonSoulRouletteGame_Cont["Global"][14]["Id"] = 54124
	tDragonSoulRouletteGame_Cont["Global"][14]["Pos"] = 0
	tDragonSoulRouletteGame_Cont["Global"][14]["Limit"] = 30

	tDragonSoulRouletteGame_Cont["Global"][15] = {}  
	tDragonSoulRouletteGame_Cont["Global"][15]["Id"] = 54124
	tDragonSoulRouletteGame_Cont["Global"][15]["Pos"] = 1
	tDragonSoulRouletteGame_Cont["Global"][15]["Limit"] = 30

	tDragonSoulRouletteGame_Cont["Global"][16] = {}  
	tDragonSoulRouletteGame_Cont["Global"][16]["Id"] = 54124
	tDragonSoulRouletteGame_Cont["Global"][16]["Pos"] = 2
	tDragonSoulRouletteGame_Cont["Global"][16]["Limit"] = 30

	tDragonSoulRouletteGame_Cont["Global"][17] = {}  
	tDragonSoulRouletteGame_Cont["Global"][17]["Id"] = 54124
	tDragonSoulRouletteGame_Cont["Global"][17]["Pos"] = 3
	tDragonSoulRouletteGame_Cont["Global"][17]["Limit"] = 30

	tDragonSoulRouletteGame_Cont["Global"][18] = {}  
	tDragonSoulRouletteGame_Cont["Global"][18]["Id"] = 54124
	tDragonSoulRouletteGame_Cont["Global"][18]["Pos"] = 4
	tDragonSoulRouletteGame_Cont["Global"][18]["Limit"] = 30




local tDragonSoulRouletteGame_Reward = {}
	local tDragonSoulRouletteGame_Reward = {}
	-- ===兑换奖励
	-- ===索引:tDragonSoulRouletteGame_Reward[1]
	-- ===删除: 3327446,100
	-- ===
	tDragonSoulRouletteGame_Reward[1] = {}
	tDragonSoulRouletteGame_Reward[1]["LogId"] = 12001817
	tDragonSoulRouletteGame_Reward[1]["DeleteItem"] = {}
	tDragonSoulRouletteGame_Reward[1]["DeleteItem"][1] = {}
	tDragonSoulRouletteGame_Reward[1]["DeleteItem"][1]["Id"] = 3327446 -- 【库】幸运币[属性:9]
	tDragonSoulRouletteGame_Reward[1]["DeleteItem"][1]["ItemNum"] = 1000
	tDragonSoulRouletteGame_Reward[1]["RewardStrengthValue"] = {}
	tDragonSoulRouletteGame_Reward[1]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力值
	tDragonSoulRouletteGame_Reward[1]["RewardEffect"] = {}
	tDragonSoulRouletteGame_Reward[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoulRouletteGame_Reward[1]["RewardEffect"]["Effect"] = "angelwing"


	tDragonSoulRouletteGame_Reward[2] = {}
	-- ===兑换奖励
	-- ===索引:tDragonSoulRouletteGame_Reward[2]
	-- ===删除: 3327446,600
	-- ===
	tDragonSoulRouletteGame_Reward[2]["LogId"] = 12001817
	tDragonSoulRouletteGame_Reward[2]["DeleteItem"] = {}
	tDragonSoulRouletteGame_Reward[2]["DeleteItem"][1] = {}
	tDragonSoulRouletteGame_Reward[2]["DeleteItem"][1]["Id"] = 3327446 -- 【库】幸运币[属性:9]
	tDragonSoulRouletteGame_Reward[2]["DeleteItem"][1]["ItemNum"] = 6000
	tDragonSoulRouletteGame_Reward[2]["RewardItem"] = {}
	tDragonSoulRouletteGame_Reward[2]["RewardItem"][1] = {}
	tDragonSoulRouletteGame_Reward[2]["RewardItem"][1]["Id"] = 730008 -- +8Stone[730008][属性:0][叠加:0][金币:0], 【表格】赠品赤炼石+8*1
	tDragonSoulRouletteGame_Reward[2]["RewardItem"][1]["Attr"] = "0 1 3" -- +8Stone（赠）*1
	tDragonSoulRouletteGame_Reward[2]["RewardEffect"] = {}
	tDragonSoulRouletteGame_Reward[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoulRouletteGame_Reward[2]["RewardEffect"]["Effect"] = "angelwing"


	tDragonSoulRouletteGame_Reward[3] = {}
	-- ===兑换奖励
	-- ===索引:tDragonSoulRouletteGame_Reward[3]
	-- ===删除: 3327446,4100
	-- ===
	tDragonSoulRouletteGame_Reward[3]["LogId"] = 12001817
	tDragonSoulRouletteGame_Reward[3]["DeleteItem"] = {}
	tDragonSoulRouletteGame_Reward[3]["DeleteItem"][1] = {}
	tDragonSoulRouletteGame_Reward[3]["DeleteItem"][1]["Id"] = 3327446 -- 【库】幸运币[属性:9]
	tDragonSoulRouletteGame_Reward[3]["DeleteItem"][1]["ItemNum"] = 61000
	tDragonSoulRouletteGame_Reward[3]["RewardItem"] = {}
	tDragonSoulRouletteGame_Reward[3]["RewardItem"][1] = {}
	tDragonSoulRouletteGame_Reward[3]["RewardItem"][1]["Id"] = 4200014 -- P14Anima[4200014][属性:584][叠加:99][金币:0], 【表格】14阶灵珠*1
	tDragonSoulRouletteGame_Reward[3]["RewardItem"][1]["Attr"] = "0 1" -- P14Anima*1
	tDragonSoulRouletteGame_Reward[3]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoulRouletteGame_Reward[3]["RewardEffect"] = {}
	tDragonSoulRouletteGame_Reward[3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoulRouletteGame_Reward[3]["RewardEffect"]["Effect"] = "angelwing"


	tDragonSoulRouletteGame_Reward[4] = {}
	-- ===兑换奖励
	-- ===索引:tDragonSoulRouletteGame_Reward[4]
	-- ===删除: 3327446,10000
	-- ===
	tDragonSoulRouletteGame_Reward[4]["LogId"] = 12001817
	tDragonSoulRouletteGame_Reward[4]["DeleteItem"] = {}
	tDragonSoulRouletteGame_Reward[4]["DeleteItem"][1] = {}
	tDragonSoulRouletteGame_Reward[4]["DeleteItem"][1]["Id"] = 3327446 -- 【库】幸运币[属性:9]
	tDragonSoulRouletteGame_Reward[4]["DeleteItem"][1]["ItemNum"] = 100000
	tDragonSoulRouletteGame_Reward[4]["RewardItem"] = {}
	tDragonSoulRouletteGame_Reward[4]["RewardItem"][1] = {}
	tDragonSoulRouletteGame_Reward[4]["RewardItem"][1]["Id"] = 711903 -- ChiBooster(+1)[711903][属性:9][叠加:100][金币:0], 【表格】炼气+1卷
	tDragonSoulRouletteGame_Reward[4]["RewardItem"][1]["Attr"] = "0 1 3" -- ChiBooster(+1)（赠）*1
	tDragonSoulRouletteGame_Reward[4]["RewardEffect"] = {}
	tDragonSoulRouletteGame_Reward[4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoulRouletteGame_Reward[4]["RewardEffect"]["Effect"] = "angelwing"


	tDragonSoulRouletteGame_Reward[5] = {}
	-- ===兑换奖励
	-- ===索引:tDragonSoulRouletteGame_Reward[5]
	-- ===删除: 3327446,2700
	-- ===
	tDragonSoulRouletteGame_Reward[5]["LogId"] = 12001817
	tDragonSoulRouletteGame_Reward[5]["DeleteItem"] = {}
	tDragonSoulRouletteGame_Reward[5]["DeleteItem"][1] = {}
	tDragonSoulRouletteGame_Reward[5]["DeleteItem"][1]["Id"] = 3327446 -- 【库】幸运币[属性:9]
	tDragonSoulRouletteGame_Reward[5]["DeleteItem"][1]["ItemNum"] = 27000
	tDragonSoulRouletteGame_Reward[5]["RewardWing"] = {}
	tDragonSoulRouletteGame_Reward[5]["RewardWing"]["TitleType"] = 6031 -- 【库】CelestialWings, 【表格】赠品翅膀-飞仙翼
	tDragonSoulRouletteGame_Reward[5]["RewardWing"]["TitleId"] = 6031
	tDragonSoulRouletteGame_Reward[5]["RewardWing"]["SaveTime"] = 0 -- 永久时效的[翅膀]:CelestialWings, 【需求】赠品翅膀-飞仙翼
	tDragonSoulRouletteGame_Reward[5]["RewardEffect"] = {}
	tDragonSoulRouletteGame_Reward[5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoulRouletteGame_Reward[5]["RewardEffect"]["Effect"] = "angelwing"

	tDragonSoulRouletteGame_Reward[6] = {}
	-- ===兑换奖励
	-- ===索引:tDragonSoulRouletteGame_Reward[6]
	-- ===删除: 3327446,2700
	-- ===
	tDragonSoulRouletteGame_Reward[6]["LogId"] = 12001817
	tDragonSoulRouletteGame_Reward[6]["DeleteItem"] = {}
	tDragonSoulRouletteGame_Reward[6]["DeleteItem"][1] = {}
	tDragonSoulRouletteGame_Reward[6]["DeleteItem"][1]["Id"] = 3327446 -- 【库】幸运币[属性:9]
	tDragonSoulRouletteGame_Reward[6]["DeleteItem"][1]["ItemNum"] = 30000
	tDragonSoulRouletteGame_Reward[6]["RewardWing"] = {}
	tDragonSoulRouletteGame_Reward[6]["RewardWing"]["TitleType"] = 6020 
	tDragonSoulRouletteGame_Reward[6]["RewardWing"]["TitleId"] = 6020
	tDragonSoulRouletteGame_Reward[6]["RewardWing"]["SaveTime"] = 0 
	tDragonSoulRouletteGame_Reward[6]["RewardEffect"] = {}
	tDragonSoulRouletteGame_Reward[6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoulRouletteGame_Reward[6]["RewardEffect"]["Effect"] = "angelwing"


	tDragonSoulRouletteGame_Reward[7] = {}
	-- ===兑换奖励
	-- ===索引:tDragonSoulRouletteGame_Reward[7]
	-- ===删除: 3327446,3000
	-- ===
	tDragonSoulRouletteGame_Reward[7]["LogId"] = 12001817
	tDragonSoulRouletteGame_Reward[7]["DeleteItem"] = {}
	tDragonSoulRouletteGame_Reward[7]["DeleteItem"][1] = {}
	tDragonSoulRouletteGame_Reward[7]["DeleteItem"][1]["Id"] = 3327446 -- 【库】幸运币[属性:9]
	tDragonSoulRouletteGame_Reward[7]["DeleteItem"][1]["ItemNum"] = 30000
	tDragonSoulRouletteGame_Reward[7]["RewardWing"] = {}
	tDragonSoulRouletteGame_Reward[7]["RewardWing"]["TitleType"] = 6009 -- 【库】WingsofPlanet, 【表格】赠品翅膀-快乐星球
	tDragonSoulRouletteGame_Reward[7]["RewardWing"]["TitleId"] = 6009
	tDragonSoulRouletteGame_Reward[7]["RewardWing"]["SaveTime"] = 0 -- 永久时效的[翅膀]:WingsofPlanet, 【需求】赠品翅膀-快乐星球
	tDragonSoulRouletteGame_Reward[7]["RewardEffect"] = {}
	tDragonSoulRouletteGame_Reward[7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoulRouletteGame_Reward[7]["RewardEffect"]["Effect"] = "angelwing"


	tDragonSoulRouletteGame_Reward[8] = {}
	-- ===兑换奖励
	-- ===索引:tDragonSoulRouletteGame_Reward[8]
	-- ===删除: 3327446,2500
	-- ===
	tDragonSoulRouletteGame_Reward[8]["LogId"] = 12001817
	tDragonSoulRouletteGame_Reward[8]["DeleteItem"] = {}
	tDragonSoulRouletteGame_Reward[8]["DeleteItem"][1] = {}
	tDragonSoulRouletteGame_Reward[8]["DeleteItem"][1]["Id"] = 3327446 -- 【库】幸运币[属性:9]
	tDragonSoulRouletteGame_Reward[8]["DeleteItem"][1]["ItemNum"] = 25000
	tDragonSoulRouletteGame_Reward[8]["RewardItem"] = {}
	tDragonSoulRouletteGame_Reward[8]["RewardItem"][1] = {}
	tDragonSoulRouletteGame_Reward[8]["RewardItem"][1]["Id"] = 4034801 -- TortoiseBreaker(+1)[4034801][属性:8][叠加:0][金币:0], 【表格】赠品黄色稀有神纹带-碎玄元*1
	tDragonSoulRouletteGame_Reward[8]["RewardItem"][1]["Attr"] = "0 1 3" -- TortoiseBreaker(+1)（赠）*1
	tDragonSoulRouletteGame_Reward[8]["RewardEffect"] = {}
	tDragonSoulRouletteGame_Reward[8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoulRouletteGame_Reward[8]["RewardEffect"]["Effect"] = "angelwing"


	tDragonSoulRouletteGame_Reward[9] = {}
	-- ===兑换奖励
	-- ===索引:tDragonSoulRouletteGame_Reward[9]
	-- ===删除: 3327446,2500
	-- ===
	tDragonSoulRouletteGame_Reward[9]["LogId"] = 12001817
	tDragonSoulRouletteGame_Reward[9]["DeleteItem"] = {}
	tDragonSoulRouletteGame_Reward[9]["DeleteItem"][1] = {}
	tDragonSoulRouletteGame_Reward[9]["DeleteItem"][1]["Id"] = 3327446 -- 【库】幸运币[属性:9]
	tDragonSoulRouletteGame_Reward[9]["DeleteItem"][1]["ItemNum"] = 25000
	tDragonSoulRouletteGame_Reward[9]["RewardItem"] = {}
	tDragonSoulRouletteGame_Reward[9]["RewardItem"][1] = {}
	tDragonSoulRouletteGame_Reward[9]["RewardItem"][1]["Id"] = 4034501 -- MiracleTouch(+1)[4034501][属性:8][叠加:0][金币:0], 【表格】赠品黄色稀有神纹带-妙手回春*1
	tDragonSoulRouletteGame_Reward[9]["RewardItem"][1]["Attr"] = "0 1 3" -- MiracleTouch(+1)（赠）*1
	tDragonSoulRouletteGame_Reward[9]["RewardEffect"] = {}
	tDragonSoulRouletteGame_Reward[9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoulRouletteGame_Reward[9]["RewardEffect"]["Effect"] = "angelwing"


	tDragonSoulRouletteGame_Reward[10] = {}
	-- ===兑换奖励
	-- ===索引:tDragonSoulRouletteGame_Reward[10]
	-- ===删除: 3327446,2500
	-- ===
	tDragonSoulRouletteGame_Reward[10]["LogId"] = 12001817
	tDragonSoulRouletteGame_Reward[10]["DeleteItem"] = {}
	tDragonSoulRouletteGame_Reward[10]["DeleteItem"][1] = {}
	tDragonSoulRouletteGame_Reward[10]["DeleteItem"][1]["Id"] = 3327446 -- 【库】幸运币[属性:9]
	tDragonSoulRouletteGame_Reward[10]["DeleteItem"][1]["ItemNum"] = 25000
	tDragonSoulRouletteGame_Reward[10]["RewardItem"] = {}
	tDragonSoulRouletteGame_Reward[10]["RewardItem"][1] = {}
	tDragonSoulRouletteGame_Reward[10]["RewardItem"][1]["Id"] = 4034401 -- SurgingForce(+1)[4034401][属性:8][叠加:0][金币:0], 【表格】赠品黄色稀有神纹带-沧澜破*1
	tDragonSoulRouletteGame_Reward[10]["RewardItem"][1]["Attr"] = "0 1 3" -- SurgingForce(+1)（赠）*1
	tDragonSoulRouletteGame_Reward[10]["RewardEffect"] = {}
	tDragonSoulRouletteGame_Reward[10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoulRouletteGame_Reward[10]["RewardEffect"]["Effect"] = "angelwing"


	tDragonSoulRouletteGame_Reward[11] = {}
	-- ===兑换奖励
	-- ===索引:tDragonSoulRouletteGame_Reward[11]
	-- ===删除: 3327446,2500
	-- ===
	tDragonSoulRouletteGame_Reward[11]["LogId"] = 12001817
	tDragonSoulRouletteGame_Reward[11]["DeleteItem"] = {}
	tDragonSoulRouletteGame_Reward[11]["DeleteItem"][1] = {}
	tDragonSoulRouletteGame_Reward[11]["DeleteItem"][1]["Id"] = 3327446 -- 【库】幸运币[属性:9]
	tDragonSoulRouletteGame_Reward[11]["DeleteItem"][1]["ItemNum"] = 25000
	tDragonSoulRouletteGame_Reward[11]["RewardItem"] = {}
	tDragonSoulRouletteGame_Reward[11]["RewardItem"][1] = {}
	tDragonSoulRouletteGame_Reward[11]["RewardItem"][1]["Id"] = 4034701 -- UniversalShield(+1)[4034701][属性:8][叠加:0][金币:0], 【表格】赠品黄色稀有神纹带-天地化盾*1
	tDragonSoulRouletteGame_Reward[11]["RewardItem"][1]["Attr"] = "0 1 3" -- UniversalShield(+1)（赠）*1
	tDragonSoulRouletteGame_Reward[11]["RewardEffect"] = {}
	tDragonSoulRouletteGame_Reward[11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoulRouletteGame_Reward[11]["RewardEffect"]["Effect"] = "angelwing"


	tDragonSoulRouletteGame_Reward[12] = {}
	-- ===兑换奖励
	-- ===索引:tDragonSoulRouletteGame_Reward[12]
	-- ===删除: 3327446,2500
	-- ===
	tDragonSoulRouletteGame_Reward[12]["LogId"] = 12001817
	tDragonSoulRouletteGame_Reward[12]["DeleteItem"] = {}
	tDragonSoulRouletteGame_Reward[12]["DeleteItem"][1] = {}
	tDragonSoulRouletteGame_Reward[12]["DeleteItem"][1]["Id"] = 3327446 -- 【库】幸运币[属性:9]
	tDragonSoulRouletteGame_Reward[12]["DeleteItem"][1]["ItemNum"] = 25000
	tDragonSoulRouletteGame_Reward[12]["RewardItem"] = {}
	tDragonSoulRouletteGame_Reward[12]["RewardItem"][1] = {}
	tDragonSoulRouletteGame_Reward[12]["RewardItem"][1]["Id"] = 4034601 -- CurseBlock(+1)[4034601][属性:8][叠加:0][金币:0], 【表格】赠品黄色稀有神纹带-碎魔屏障*1
	tDragonSoulRouletteGame_Reward[12]["RewardItem"][1]["Attr"] = "0 1 3" -- CurseBlock(+1)（赠）*1
	tDragonSoulRouletteGame_Reward[12]["RewardEffect"] = {}
	tDragonSoulRouletteGame_Reward[12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoulRouletteGame_Reward[12]["RewardEffect"]["Effect"] = "angelwing"


	tDragonSoulRouletteGame_Reward[13] = {}
	-- ===兑换奖励
	-- ===索引:tDragonSoulRouletteGame_Reward[13]
	-- ===删除: 3327446,2500
	-- ===
	tDragonSoulRouletteGame_Reward[13]["LogId"] = 12001817
	tDragonSoulRouletteGame_Reward[13]["DeleteItem"] = {}
	tDragonSoulRouletteGame_Reward[13]["DeleteItem"][1] = {}
	tDragonSoulRouletteGame_Reward[13]["DeleteItem"][1]["Id"] = 3327446 -- 【库】幸运币[属性:9]
	tDragonSoulRouletteGame_Reward[13]["DeleteItem"][1]["ItemNum"] = 25000
	tDragonSoulRouletteGame_Reward[13]["RewardItem"] = {}
	tDragonSoulRouletteGame_Reward[13]["RewardItem"][1] = {}
	tDragonSoulRouletteGame_Reward[13]["RewardItem"][1]["Id"] = 4034201 -- Nature`sChant(+1)[4034201][属性:8][叠加:0][金币:0], 【表格】赠品黄色稀有神纹带-乾坤妙法*1
	tDragonSoulRouletteGame_Reward[13]["RewardItem"][1]["Attr"] = "0 1 3" -- Nature`sChant(+1)（赠）*1
	tDragonSoulRouletteGame_Reward[13]["RewardEffect"] = {}
	tDragonSoulRouletteGame_Reward[13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoulRouletteGame_Reward[13]["RewardEffect"]["Effect"] = "angelwing"


	tDragonSoulRouletteGame_Reward[14] = {}
	-- ===兑换奖励
	-- ===索引:tDragonSoulRouletteGame_Reward[14]
	-- ===删除: 3327446,2500
	-- ===
	tDragonSoulRouletteGame_Reward[14]["LogId"] = 12001817
	tDragonSoulRouletteGame_Reward[14]["DeleteItem"] = {}
	tDragonSoulRouletteGame_Reward[14]["DeleteItem"][1] = {}
	tDragonSoulRouletteGame_Reward[14]["DeleteItem"][1]["Id"] = 3327446 -- 【库】幸运币[属性:9]
	tDragonSoulRouletteGame_Reward[14]["DeleteItem"][1]["ItemNum"] = 25000
	tDragonSoulRouletteGame_Reward[14]["RewardItem"] = {}
	tDragonSoulRouletteGame_Reward[14]["RewardItem"][1] = {}
	tDragonSoulRouletteGame_Reward[14]["RewardItem"][1]["Id"] = 4032401 -- SoulChant(+1)[4032401][属性:8][叠加:0][金币:0], 【表格】赠品黄色稀有神纹带-祭灵诀*1
	tDragonSoulRouletteGame_Reward[14]["RewardItem"][1]["Attr"] = "0 1 3" -- SoulChant(+1)（赠）*1
	tDragonSoulRouletteGame_Reward[14]["RewardEffect"] = {}
	tDragonSoulRouletteGame_Reward[14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoulRouletteGame_Reward[14]["RewardEffect"]["Effect"] = "angelwing"


	tDragonSoulRouletteGame_Reward[15] = {}
	-- ===兑换奖励
	-- ===索引:tDragonSoulRouletteGame_Reward[15]
	-- ===删除: 3327446,2500
	-- ===
	tDragonSoulRouletteGame_Reward[15]["LogId"] = 12001817
	tDragonSoulRouletteGame_Reward[15]["DeleteItem"] = {}
	tDragonSoulRouletteGame_Reward[15]["DeleteItem"][1] = {}
	tDragonSoulRouletteGame_Reward[15]["DeleteItem"][1]["Id"] = 3327446 -- 【库】幸运币[属性:9]
	tDragonSoulRouletteGame_Reward[15]["DeleteItem"][1]["ItemNum"] = 25000
	tDragonSoulRouletteGame_Reward[15]["RewardItem"] = {}
	tDragonSoulRouletteGame_Reward[15]["RewardItem"][1] = {}
	tDragonSoulRouletteGame_Reward[15]["RewardItem"][1]["Id"] = 4032501 -- WideSwipe(+1)[4032501][属性:8][叠加:0][金币:0], 【表格】赠品黄色稀有神纹带-横扫千军*1
	tDragonSoulRouletteGame_Reward[15]["RewardItem"][1]["Attr"] = "0 1 3" -- WideSwipe(+1)（赠）*1
	tDragonSoulRouletteGame_Reward[15]["RewardEffect"] = {}
	tDragonSoulRouletteGame_Reward[15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoulRouletteGame_Reward[15]["RewardEffect"]["Effect"] = "angelwing"


	tDragonSoulRouletteGame_Reward[16] = {}
	-- ===兑换奖励
	-- ===索引:tDragonSoulRouletteGame_Reward[16]
	-- ===删除: 3327446,2500
	-- ===
	tDragonSoulRouletteGame_Reward[16]["LogId"] = 12001817
	tDragonSoulRouletteGame_Reward[16]["DeleteItem"] = {}
	tDragonSoulRouletteGame_Reward[16]["DeleteItem"][1] = {}
	tDragonSoulRouletteGame_Reward[16]["DeleteItem"][1]["Id"] = 3327446 -- 【库】幸运币[属性:9]
	tDragonSoulRouletteGame_Reward[16]["DeleteItem"][1]["ItemNum"] = 25000
	tDragonSoulRouletteGame_Reward[16]["RewardItem"] = {}
	tDragonSoulRouletteGame_Reward[16]["RewardItem"][1] = {}
	tDragonSoulRouletteGame_Reward[16]["RewardItem"][1]["Id"] = 4032701 -- Sharpness(+1)[4032701][属性:8][叠加:0][金币:0], 【表格】赠品黄色稀有神纹带-锋芒毕露*1
	tDragonSoulRouletteGame_Reward[16]["RewardItem"][1]["Attr"] = "0 1 3" -- Sharpness(+1)（赠）*1
	tDragonSoulRouletteGame_Reward[16]["RewardEffect"] = {}
	tDragonSoulRouletteGame_Reward[16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoulRouletteGame_Reward[16]["RewardEffect"]["Effect"] = "angelwing"


	tDragonSoulRouletteGame_Reward[17] = {}
	-- ===兑换奖励
	-- ===索引:tDragonSoulRouletteGame_Reward[17]
	-- ===删除: 3327446,2500
	-- ===
	tDragonSoulRouletteGame_Reward[17]["LogId"] = 12001817
	tDragonSoulRouletteGame_Reward[17]["DeleteItem"] = {}
	tDragonSoulRouletteGame_Reward[17]["DeleteItem"][1] = {}
	tDragonSoulRouletteGame_Reward[17]["DeleteItem"][1]["Id"] = 3327446 -- 【库】幸运币[属性:9]
	tDragonSoulRouletteGame_Reward[17]["DeleteItem"][1]["ItemNum"] = 25000
	tDragonSoulRouletteGame_Reward[17]["RewardItem"] = {}
	tDragonSoulRouletteGame_Reward[17]["RewardItem"][1] = {}
	tDragonSoulRouletteGame_Reward[17]["RewardItem"][1]["Id"] = 4031601 -- Barrier(+1)[4031601][属性:8][叠加:0][金币:0], 【表格】赠品黄色稀有神纹带-玄武护体*1
	tDragonSoulRouletteGame_Reward[17]["RewardItem"][1]["Attr"] = "0 1 3" -- Barrier(+1)（赠）*1
	tDragonSoulRouletteGame_Reward[17]["RewardEffect"] = {}
	tDragonSoulRouletteGame_Reward[17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoulRouletteGame_Reward[17]["RewardEffect"]["Effect"] = "angelwing"


	tDragonSoulRouletteGame_Reward[18] = {}
	-- ===兑换奖励
	-- ===索引:tDragonSoulRouletteGame_Reward[18]
	-- ===删除: 3327446,2500
	-- ===
	tDragonSoulRouletteGame_Reward[18]["LogId"] = 12001817
	tDragonSoulRouletteGame_Reward[18]["DeleteItem"] = {}
	tDragonSoulRouletteGame_Reward[18]["DeleteItem"][1] = {}
	tDragonSoulRouletteGame_Reward[18]["DeleteItem"][1]["Id"] = 3327446 -- 【库】幸运币[属性:9]
	tDragonSoulRouletteGame_Reward[18]["DeleteItem"][1]["ItemNum"] = 25000
	tDragonSoulRouletteGame_Reward[18]["RewardItem"] = {}
	tDragonSoulRouletteGame_Reward[18]["RewardItem"][1] = {}
	tDragonSoulRouletteGame_Reward[18]["RewardItem"][1]["Id"] = 4034301 -- JusticeGuard(+1)[4034301][属性:8][叠加:0][金币:0], 【表格】赠品黄色稀有神纹带-罡气护体*1
	tDragonSoulRouletteGame_Reward[18]["RewardItem"][1]["Attr"] = "0 1 3" -- JusticeGuard(+1)（赠）*1
	tDragonSoulRouletteGame_Reward[18]["RewardEffect"] = {}
	tDragonSoulRouletteGame_Reward[18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoulRouletteGame_Reward[18]["RewardEffect"]["Effect"] = "angelwing"


local tDragonSoulRouletteGame_Roulette = {}
	-- ===兑换轮盘
	-- ===索引:tDragonSoulRouletteGame_Roulette
	-- ===删除: 4200009,1
	-- ===
	tDragonSoulRouletteGame_Roulette["LogId"] = 12001817
	tDragonSoulRouletteGame_Roulette["DeleteItem"] = {}
	tDragonSoulRouletteGame_Roulette["DeleteItem"][1] = {}
	tDragonSoulRouletteGame_Roulette["DeleteItem"][1]["Id"] = 4200009 -- 【库】P9Anima[属性:584]
	tDragonSoulRouletteGame_Roulette["DeleteItem"][1]["ItemNum"] = 1
	tDragonSoulRouletteGame_Roulette["DeleteItem"][1]["PreciousType"] = 357 -- =351//重铸活动消耗=352//融合活动消耗=353//冶炼活动消耗=354//灵珠塔活动消耗=355//龙冢试炼消耗=356//熔炼炉消耗=357//其他LUA消耗
	tDragonSoulRouletteGame_Roulette["RewardItem"] = {}
	tDragonSoulRouletteGame_Roulette["RewardItem"][1] = {}
	tDragonSoulRouletteGame_Roulette["RewardItem"][1]["Id"] = 3327447 -- 9阶灵珠转盘[3327447][属性:9][叠加:0][金币:0], 【表格】9阶灵珠轮盘
	tDragonSoulRouletteGame_Roulette["RewardItem"][1]["Attr"] = "0 %d" -- 9阶灵珠转盘*1

local tDragonSoulRouletteGame_CoinPackage = {}

	tDragonSoulRouletteGame_CoinPackage[3327621] = {}
	tDragonSoulRouletteGame_CoinPackage[3327621]["LogId"] = 12001817
	tDragonSoulRouletteGame_CoinPackage[3327621]["DeleteItem"] = {}
	tDragonSoulRouletteGame_CoinPackage[3327621]["DeleteItem"][1] = {}
	tDragonSoulRouletteGame_CoinPackage[3327621]["DeleteItem"][1]["Id"] = 3327621 
	tDragonSoulRouletteGame_CoinPackage[3327621]["DeleteItem"][1]["ItemNum"] = 1
	tDragonSoulRouletteGame_CoinPackage[3327621]["RewardItem"] = {}
	tDragonSoulRouletteGame_CoinPackage[3327621]["RewardItem"][1] = {}
	tDragonSoulRouletteGame_CoinPackage[3327621]["RewardItem"][1]["Id"] = 3327446 
	tDragonSoulRouletteGame_CoinPackage[3327621]["RewardItem"][1]["Attr"] = "0 100" 
	tDragonSoulRouletteGame_CoinPackage[3327621]["RewardEffect"] = {}
	tDragonSoulRouletteGame_CoinPackage[3327621]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoulRouletteGame_CoinPackage[3327621]["RewardEffect"]["Effect"] = "angelwing"

	tDragonSoulRouletteGame_CoinPackage[3327622] = {}
	tDragonSoulRouletteGame_CoinPackage[3327622]["LogId"] = 12001817
	tDragonSoulRouletteGame_CoinPackage[3327622]["DeleteItem"] = {}
	tDragonSoulRouletteGame_CoinPackage[3327622]["DeleteItem"][1] = {}
	tDragonSoulRouletteGame_CoinPackage[3327622]["DeleteItem"][1]["Id"] = 3327622 
	tDragonSoulRouletteGame_CoinPackage[3327622]["DeleteItem"][1]["ItemNum"] = 1
	tDragonSoulRouletteGame_CoinPackage[3327622]["RewardItem"] = {}
	tDragonSoulRouletteGame_CoinPackage[3327622]["RewardItem"][1] = {}
	tDragonSoulRouletteGame_CoinPackage[3327622]["RewardItem"][1]["Id"] = 3327446 
	tDragonSoulRouletteGame_CoinPackage[3327622]["RewardItem"][1]["Attr"] = "0 300" 
	tDragonSoulRouletteGame_CoinPackage[3327622]["RewardEffect"] = {}
	tDragonSoulRouletteGame_CoinPackage[3327622]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoulRouletteGame_CoinPackage[3327622]["RewardEffect"]["Effect"] = "angelwing"

	tDragonSoulRouletteGame_CoinPackage[3327623] = {}
	tDragonSoulRouletteGame_CoinPackage[3327623]["LogId"] = 12001817
	tDragonSoulRouletteGame_CoinPackage[3327623]["DeleteItem"] = {}
	tDragonSoulRouletteGame_CoinPackage[3327623]["DeleteItem"][1] = {}
	tDragonSoulRouletteGame_CoinPackage[3327623]["DeleteItem"][1]["Id"] = 3327623
	tDragonSoulRouletteGame_CoinPackage[3327623]["DeleteItem"][1]["ItemNum"] = 1
	tDragonSoulRouletteGame_CoinPackage[3327623]["RewardItem"] = {}
	tDragonSoulRouletteGame_CoinPackage[3327623]["RewardItem"][1] = {}
	tDragonSoulRouletteGame_CoinPackage[3327623]["RewardItem"][1]["Id"] = 3327446 
	tDragonSoulRouletteGame_CoinPackage[3327623]["RewardItem"][1]["Attr"] = "0 500" 
	tDragonSoulRouletteGame_CoinPackage[3327623]["RewardEffect"] = {}
	tDragonSoulRouletteGame_CoinPackage[3327623]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoulRouletteGame_CoinPackage[3327623]["RewardEffect"]["Effect"] = "angelwing"

	tDragonSoulRouletteGame_CoinPackage[3327624] = {}
	tDragonSoulRouletteGame_CoinPackage[3327624]["LogId"] = 12001817
	tDragonSoulRouletteGame_CoinPackage[3327624]["DeleteItem"] = {}
	tDragonSoulRouletteGame_CoinPackage[3327624]["DeleteItem"][1] = {}
	tDragonSoulRouletteGame_CoinPackage[3327624]["DeleteItem"][1]["Id"] = 3327624
	tDragonSoulRouletteGame_CoinPackage[3327624]["DeleteItem"][1]["ItemNum"] = 1
	tDragonSoulRouletteGame_CoinPackage[3327624]["RewardItem"] = {}
	tDragonSoulRouletteGame_CoinPackage[3327624]["RewardItem"][1] = {}
	tDragonSoulRouletteGame_CoinPackage[3327624]["RewardItem"][1]["Id"] = 3327446 
	tDragonSoulRouletteGame_CoinPackage[3327624]["RewardItem"][1]["Attr"] = "0 1000" 
	tDragonSoulRouletteGame_CoinPackage[3327624]["RewardEffect"] = {}
	tDragonSoulRouletteGame_CoinPackage[3327624]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoulRouletteGame_CoinPackage[3327624]["RewardEffect"]["Effect"] = "angelwing"

	tDragonSoulRouletteGame_CoinPackage[3327625] = {}
	tDragonSoulRouletteGame_CoinPackage[3327625]["LogId"] = 12001817
	tDragonSoulRouletteGame_CoinPackage[3327625]["DeleteItem"] = {}
	tDragonSoulRouletteGame_CoinPackage[3327625]["DeleteItem"][1] = {}
	tDragonSoulRouletteGame_CoinPackage[3327625]["DeleteItem"][1]["Id"] = 3327625
	tDragonSoulRouletteGame_CoinPackage[3327625]["DeleteItem"][1]["ItemNum"] = 1
	tDragonSoulRouletteGame_CoinPackage[3327625]["RewardItem"] = {}
	tDragonSoulRouletteGame_CoinPackage[3327625]["RewardItem"][1] = {}
	tDragonSoulRouletteGame_CoinPackage[3327625]["RewardItem"][1]["Id"] = 3327446 
	tDragonSoulRouletteGame_CoinPackage[3327625]["RewardItem"][1]["Attr"] = "0 3000" 
	tDragonSoulRouletteGame_CoinPackage[3327625]["RewardEffect"] = {}
	tDragonSoulRouletteGame_CoinPackage[3327625]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoulRouletteGame_CoinPackage[3327625]["RewardEffect"]["Effect"] = "angelwing"

	tDragonSoulRouletteGame_CoinPackage[3327626] = {}
	tDragonSoulRouletteGame_CoinPackage[3327626]["LogId"] = 12001817
	tDragonSoulRouletteGame_CoinPackage[3327626]["DeleteItem"] = {}
	tDragonSoulRouletteGame_CoinPackage[3327626]["DeleteItem"][1] = {}
	tDragonSoulRouletteGame_CoinPackage[3327626]["DeleteItem"][1]["Id"] = 3327626
	tDragonSoulRouletteGame_CoinPackage[3327626]["DeleteItem"][1]["ItemNum"] = 1
	tDragonSoulRouletteGame_CoinPackage[3327626]["RewardItem"] = {}
	tDragonSoulRouletteGame_CoinPackage[3327626]["RewardItem"][1] = {}
	tDragonSoulRouletteGame_CoinPackage[3327626]["RewardItem"][1]["Id"] = 3327446 
	tDragonSoulRouletteGame_CoinPackage[3327626]["RewardItem"][1]["Attr"] = "0 5000" 
	tDragonSoulRouletteGame_CoinPackage[3327626]["RewardEffect"] = {}
	tDragonSoulRouletteGame_CoinPackage[3327626]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoulRouletteGame_CoinPackage[3327626]["RewardEffect"]["Effect"] = "angelwing"

	tDragonSoulRouletteGame_CoinPackage[3327627] = {}
	tDragonSoulRouletteGame_CoinPackage[3327627]["LogId"] = 12001817
	tDragonSoulRouletteGame_CoinPackage[3327627]["DeleteItem"] = {}
	tDragonSoulRouletteGame_CoinPackage[3327627]["DeleteItem"][1] = {}
	tDragonSoulRouletteGame_CoinPackage[3327627]["DeleteItem"][1]["Id"] = 3327627
	tDragonSoulRouletteGame_CoinPackage[3327627]["DeleteItem"][1]["ItemNum"] = 1
	tDragonSoulRouletteGame_CoinPackage[3327627]["RewardItem"] = {}
	tDragonSoulRouletteGame_CoinPackage[3327627]["RewardItem"][1] = {}
	tDragonSoulRouletteGame_CoinPackage[3327627]["RewardItem"][1]["Id"] = 3327446 
	tDragonSoulRouletteGame_CoinPackage[3327627]["RewardItem"][1]["Attr"] = "0 10000" 
	tDragonSoulRouletteGame_CoinPackage[3327627]["RewardEffect"] = {}
	tDragonSoulRouletteGame_CoinPackage[3327627]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoulRouletteGame_CoinPackage[3327627]["RewardEffect"]["Effect"] = "angelwing"
----------------------------------逻辑部分---------------------------------------------

--提交幸运币
function DragonSoulRouletteGame_HandInConfirm(nDSRoulette_Index)
	--活动时间
	if not Sys_ChkFullTime(tDragonSoulRouletteGame_Cont["ActTime"]) then 
		return 
	end
	--获取幸运币数量
	local nDSRoulette_ItemId = tDragonSoulRouletteGame_Cont["ItemId"]
	local nDSRoulette_Num = Get_CountItemType(nDSRoulette_ItemId,0)
	
	if not Item_ChkItem(nDSRoulette_ItemId) then 
		--阁下身上没有足够的幸运币，无法上交。
		Sys_MsgBox(tDragonSoulRouletteGame_Text["MsgBox"]["NotEnough"])
		return 
	end
	if nDSRoulette_Num < tDragonSoulRouletteGame_Reward[nDSRoulette_Index]["DeleteItem"][1]["ItemNum"] then 
		--阁下身上没有足够的幸运币，无法上交。
		Sys_MsgBox(tDragonSoulRouletteGame_Text["MsgBox"]["NotEnough"])
		return 
	end
	if not User_CheckLeftSpace(1) then 
		--阁下背包已满，请整理后再来。
		Sys_MsgBox(tDragonSoulRouletteGame_Text["MsgBox"]["Space"])
		return 
	end
	if nDSRoulette_Index ~= 1 then 
		local nDSRoulette_GlobalId = tDragonSoulRouletteGame_Cont["Global"][nDSRoulette_Index]["Id"]
		local nDSRoulette_GlobalPos = tDragonSoulRouletteGame_Cont["Global"][nDSRoulette_Index]["Pos"]
		local nDSRoulette_GlobalLimit = tDragonSoulRouletteGame_Cont["Global"][nDSRoulette_Index]["Limit"]
		local nDSRoulette_GlobalData = Get_SysDynaGlobalData(nDSRoulette_GlobalId,nDSRoulette_GlobalPos)
		--global 记录全服限量 到达限量 隐藏选项 
		if nDSRoulette_GlobalData >= nDSRoulette_GlobalLimit then 
			return
		end
		
		Sys_SetSynaGlobalData(nDSRoulette_GlobalId,nDSRoulette_GlobalPos,nDSRoulette_GlobalData+1)
		--获得奖励
	end
	
	if RewardTemplate_UseItemAndMsg(tDragonSoulRouletteGame_Reward[nDSRoulette_Index]) then 
		Sys_MsgBox(string.format(tDragonSoulRouletteGame_Text["MsgBox"]["Reward"],tDragonSoulRouletteGame_Text[25827]["Option23"..nDSRoulette_Index]))
		return 
	end		
end

--选项检测
function DragonSoulRouletteGame_OptionChk(nDSRoulette_Index)
	--活动时间
	if not Sys_ChkFullTime(tDragonSoulRouletteGame_Cont["ActTime"]) then 
		return false
	end
	if nDSRoulette_Index == 1 then 
		return true 
	end
	local nDSRoulette_GlobalId = tDragonSoulRouletteGame_Cont["Global"][nDSRoulette_Index]["Id"]
	local nDSRoulette_GlobalPos = tDragonSoulRouletteGame_Cont["Global"][nDSRoulette_Index]["Pos"]
	local nDSRoulette_GlobalLimit = tDragonSoulRouletteGame_Cont["Global"][nDSRoulette_Index]["Limit"]
	--global 记录全服限量 到达限量隐藏选项 
	if Get_SysDynaGlobalData(nDSRoulette_GlobalId,nDSRoulette_GlobalPos) >= nDSRoulette_GlobalLimit then 
		return false 
	end
	return true 
end

--提交X个x阶灵珠
function DragonSoulRouletteGame_HandInSoul(nDSRoulette_SoulIndex,nDSRoulette_HandinNum)
	--活动时间
	if not Sys_ChkFullTime(tDragonSoulRouletteGame_Cont["ActTime"]) then 
		return 
	end
	local nDSRoulette_ItemId = tDragonSoulRouletteGame_Cont["Soul"][nDSRoulette_SoulIndex]
	local nDSRoulette_Num = Get_CountItemType(nDSRoulette_ItemId,0)
	if nDSRoulette_Num == 0 then 
		--阁下身上没有足够的x阶灵珠，无法上交。
		Sys_MsgBox(string.format(tDragonSoulRouletteGame_Text["MsgBox"]["Soul"],nDSRoulette_SoulIndex))
		return 
	end
	--全部上交选项
	--填充npc对话与函数
	local nDSRoulette_ChooseNum = 3
	if nDSRoulette_HandinNum == 3 then 
		nDSRoulette_ChooseNum = nDSRoulette_Num
	elseif  nDSRoulette_HandinNum == 2 then 
		nDSRoulette_ChooseNum = 10
	else 
		nDSRoulette_ChooseNum = 1
	end
	tNpcGossip[25827]["OptionFunc411"] = "DragonSoulRouletteGame_HandInSoulConfirm</N>"..nDSRoulette_SoulIndex.."</N>"..nDSRoulette_ChooseNum
	tNpcGossip[25827]["Text411"] = string.format(tDragonSoulRouletteGame_Text[25827]["Text411"],nDSRoulette_ChooseNum,nDSRoulette_SoulIndex,nDSRoulette_ChooseNum,nDSRoulette_SoulIndex)
	--转提交确认灵珠对话
	LinkNpcGossipFunc_New(tDragonSoulRouletteGame_Cont["NpcId"], "4-1")
end

--确认要提交X个X阶灵珠吗
function DragonSoulRouletteGame_HandInSoulConfirm(nDSRoulette_SoulIndex,nDSRoulette_HandinNum)
	--活动时间
	if not Sys_ChkFullTime(tDragonSoulRouletteGame_Cont["ActTime"]) then 
		return 
	end	
	local nDSRoulette_ItemId = tDragonSoulRouletteGame_Cont["Soul"][nDSRoulette_SoulIndex]
	local nDSRoulette_Num = Get_CountItemType(nDSRoulette_ItemId,0)
	if not Item_ChkItem(nDSRoulette_ItemId) then 
		--阁下身上没有足够的x阶灵珠，无法上交。
		Sys_MsgBox(string.format(tDragonSoulRouletteGame_Text["MsgBox"]["Soul"],nDSRoulette_SoulIndex))
		return 
	end

	if nDSRoulette_Num < nDSRoulette_HandinNum then 
		--阁下身上没有足够的x阶灵珠，无法上交。
		Sys_MsgBox(string.format(tDragonSoulRouletteGame_Text["MsgBox"]["Soul"],nDSRoulette_SoulIndex))
		return 
	end
	--复制表 并填充提交数量
	local tDSRoulette_Soul = CommonFunc_Copy(tDragonSoulRouletteGame_Roulette)
	tDSRoulette_Soul["DeleteItem"][1]["Id"] = nDSRoulette_ItemId
	tDSRoulette_Soul["DeleteItem"][1]["ItemNum"] = nDSRoulette_HandinNum
	tDSRoulette_Soul["RewardItem"][1]["Id"] = tDragonSoulRouletteGame_Cont["RouletteId"][nDSRoulette_SoulIndex]
	tDSRoulette_Soul["RewardItem"][1]["Attr"] = string.format(tDSRoulette_Soul["RewardItem"][1]["Attr"],nDSRoulette_HandinNum)
	if RewardTemplate_UseItemAndMsg(tDSRoulette_Soul) then
		--上交成功，获得了%s个%s阶灵珠轮盘。
		local sLog = "1000	1567	0	0	%d	"
		if nDSRoulette_ItemId == tDragonSoulRouletteGame_Cont["Soul"][11] then
			local sLog = "1000	1596	0	0	%d	"
		end
		Sys_SaveEmoneyBuy(string.format(sLog,nDSRoulette_HandinNum))
		Sys_MsgBox(string.format(tDragonSoulRouletteGame_Text["MsgBox"]["Roulette"],nDSRoulette_HandinNum,nDSRoulette_SoulIndex))
	end
end

----------------------------------NPC部分---------------------------------------------

	tNpcFace[5866] = 35
	tNpcGossip[25827]= tNpcGossip[25827] or DefaultNpc:new{}
	tNpcGossip[25827]["OptionHidden"] = 1
	tNpcGossip[25827]["DialogueText"] = tDragonSoulRouletteGame_Text[25827]
	tNpcGossip[25827]["Text1-1"] = {111,112}
	tNpcGossip[25827]["ChkFunc1-1"] = function()
		--活动前
		return not Sys_ChkFullTime(tDragonSoulRouletteGame_Cont["ActTime"])
	end
	tNpcGossip[25827]["tOption1-1"] = {111}
	
	tNpcGossip[25827]["Text1-2"] = {111,112}
	tNpcGossip[25827]["ChkFunc1-2"] = function()
		--活动中
		return Sys_ChkFullTime(tDragonSoulRouletteGame_Cont["ActTime"])
	end
	--提交9、11、阶灵珠与幸运币兑换选项
	tNpcGossip[25827]["tOption1-2"] = {121,122,123}
	tNpcGossip[25827]["OptionPoint121"] = "2-1"
	tNpcGossip[25827]["OptionPoint122"] = "2-2"
	tNpcGossip[25827]["OptionPoint123"] = "2-3"

	--提交9阶灵珠对话
	tNpcGossip[25827]["Text2-1"] = {211,212}
	tNpcGossip[25827]["tOption2-1"] = {211,212,213}
	tNpcGossip[25827]["OptionFunc211"] = "DragonSoulRouletteGame_HandInSoul</N>9</N>1"
	tNpcGossip[25827]["OptionFunc212"] = "DragonSoulRouletteGame_HandInSoul</N>9</N>2"
	tNpcGossip[25827]["OptionFunc213"] = "DragonSoulRouletteGame_HandInSoul</N>9</N>3"

	--提交11阶灵珠对话
	tNpcGossip[25827]["Text2-2"] = {221,222}
	tNpcGossip[25827]["tOption2-2"] = {221,222,223}
	tNpcGossip[25827]["OptionFunc221"] = "DragonSoulRouletteGame_HandInSoul</N>11</N>1"
	tNpcGossip[25827]["OptionFunc222"] = "DragonSoulRouletteGame_HandInSoul</N>11</N>2"
	tNpcGossip[25827]["OptionFunc223"] = "DragonSoulRouletteGame_HandInSoul</N>11</N>3"


	tNpcGossip[25827]["Text2-3"] = {231,232}
	tNpcGossip[25827]["ChkFunc2-3"] = function()
		--活动中
		return Sys_ChkFullTime(tDragonSoulRouletteGame_Cont["ActTime"])
	end
	--幸运币兑换选项对话
	tNpcGossip[25827]["tOption2-3"] = {231,232,233,234,235,236,237,238,239,2310,2311,2312,2313,2314,2315,2316,2317,2318}
	tNpcGossip[25827]["OptionPoint231"] = "3-1"
	for nDSRoulette_Loop = 2,18 do 
		tNpcGossip[25827]["OptionChkFunc23"..nDSRoulette_Loop] = function()
			return DragonSoulRouletteGame_OptionChk(nDSRoulette_Loop)
		end
		tNpcGossip[25827]["OptionPoint23"..tostring(nDSRoulette_Loop)]  = "3-"..tostring(nDSRoulette_Loop)
	end

	tNpcGossip[25827]["Text4-1"] = {411}
	tNpcGossip[25827]["tOption4-1"] = {411,412}
	tNpcGossip[25827]["OptionFunc411"] = ""

	--幸运币兑换
	tNpcGossip[25827]["Text3-1"] = {311}
	tNpcGossip[25827]["tOption3-1"]	= {311,312}
	tNpcGossip[25827]["OptionFunc311"] = "DragonSoulRouletteGame_HandInConfirm</N>1"

	tNpcGossip[25827]["Text3-2"] = {321}
	tNpcGossip[25827]["tOption3-2"]	= {321,312}
	tNpcGossip[25827]["OptionFunc321"] = "DragonSoulRouletteGame_HandInConfirm</N>2"

	tNpcGossip[25827]["Text3-3"] = {331}
	tNpcGossip[25827]["tOption3-3"]	= {331,312}
	tNpcGossip[25827]["OptionFunc331"] = "DragonSoulRouletteGame_HandInConfirm</N>3"

	tNpcGossip[25827]["Text3-4"] = {341}
	tNpcGossip[25827]["tOption3-4"]	= {341,312}
	tNpcGossip[25827]["OptionFunc341"] = "DragonSoulRouletteGame_HandInConfirm</N>4"
	
	tNpcGossip[25827]["Text3-5"] = {351}
	tNpcGossip[25827]["tOption3-5"]	= {351,312}
	tNpcGossip[25827]["OptionFunc351"] = "DragonSoulRouletteGame_HandInConfirm</N>5"

	tNpcGossip[25827]["Text3-6"] = {361}
	tNpcGossip[25827]["tOption3-6"]	= {361,312}
	tNpcGossip[25827]["OptionFunc361"] = "DragonSoulRouletteGame_HandInConfirm</N>6"

	tNpcGossip[25827]["Text3-7"] = {371}
	tNpcGossip[25827]["tOption3-7"]	= {371,312}
	tNpcGossip[25827]["OptionFunc371"] = "DragonSoulRouletteGame_HandInConfirm</N>7"

	tNpcGossip[25827]["Text3-8"] = {381}
	tNpcGossip[25827]["tOption3-8"]	= {381,312}
	tNpcGossip[25827]["OptionFunc381"] = "DragonSoulRouletteGame_HandInConfirm</N>8"

	tNpcGossip[25827]["Text3-9"] = {391}
	tNpcGossip[25827]["tOption3-9"]	= {391,312}
	tNpcGossip[25827]["OptionFunc391"] = "DragonSoulRouletteGame_HandInConfirm</N>9"

	tNpcGossip[25827]["Text3-10"] = {3101}
	tNpcGossip[25827]["tOption3-10"]	= {3101,312}
	tNpcGossip[25827]["OptionFunc3101"] = "DragonSoulRouletteGame_HandInConfirm</N>10"

	tNpcGossip[25827]["Text3-11"] = {3111}
	tNpcGossip[25827]["tOption3-11"]	= {3111,312}
	tNpcGossip[25827]["OptionFunc3111"] = "DragonSoulRouletteGame_HandInConfirm</N>11"

	tNpcGossip[25827]["Text3-12"] = {3121}
	tNpcGossip[25827]["tOption3-12"]	= {3121,312}
	tNpcGossip[25827]["OptionFunc3121"] = "DragonSoulRouletteGame_HandInConfirm</N>12"
	
	tNpcGossip[25827]["Text3-13"] = {3131}
	tNpcGossip[25827]["tOption3-13"] = {3131,312}
	tNpcGossip[25827]["OptionFunc3131"] = "DragonSoulRouletteGame_HandInConfirm</N>13"

	tNpcGossip[25827]["Text3-14"] = {3141}
	tNpcGossip[25827]["tOption3-14"] = {3141,312}
	tNpcGossip[25827]["OptionFunc3141"] = "DragonSoulRouletteGame_HandInConfirm</N>14"

	tNpcGossip[25827]["Text3-15"] = {3151}
	tNpcGossip[25827]["tOption3-15"]	= {3151,312}
	tNpcGossip[25827]["OptionFunc3151"] = "DragonSoulRouletteGame_HandInConfirm</N>15"

	tNpcGossip[25827]["Text3-16"] = {3161}
	tNpcGossip[25827]["tOption3-16"]	= {3161,312}
	tNpcGossip[25827]["OptionFunc3161"] = "DragonSoulRouletteGame_HandInConfirm</N>16"

	tNpcGossip[25827]["Text3-17"] = {3171}
	tNpcGossip[25827]["tOption3-17"]	= {3171,312}
	tNpcGossip[25827]["OptionFunc3171"] = "DragonSoulRouletteGame_HandInConfirm</N>17"

	tNpcGossip[25827]["Text3-18"] = {3181}
	tNpcGossip[25827]["tOption3-18"] = {3181,312}
	tNpcGossip[25827]["OptionFunc3181"] = "DragonSoulRouletteGame_HandInConfirm</N>18"


---------------------------------物品部分--------------------------------------------
tItem[3327446] = tItem[3327446] or {}
tItem[3327446]["Function"] = function(nItemId,sItemName)
    if not Sys_ChkFullTime(tDragonSoulRouletteGame_Cont["ActTime"]) then--过期全部删除
        local nDSRoulette_Num = Get_CountItemType(nItemId, 0)
		Item_DelMulItem(nItemId, nItemId, nDSRoulette_Num)
		Sys_MsgBox(tDragonSoulRouletteGame_Text["MsgBox"]["TimeOut"])
        return
    end
    NpcPosition_PathFind(tDragonSoulRouletteGame_Cont["NpcId"])
end
tItem[3327621]  = tItem[3327621] or {}
tItem[3327621]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tDragonSoulRouletteGame_CoinPackage[nItemId])
end
tItem[3327622] = tItem[3327621]
tItem[3327623] = tItem[3327621]
tItem[3327624] = tItem[3327621]
tItem[3327625] = tItem[3327621]
tItem[3327626] = tItem[3327621]
tItem[3327627] = tItem[3327621]

---------------------------------陷阱部分---------------------------------------------
 tGlobalData_Info[54127] = {}
 tGlobalData_Info[54127]["Time"] = {}
 tGlobalData_Info[54127]["Time"]["ActivityTime"] = 	tDragonSoulRouletteGame_Cont["ActTime"]
 tGlobalData_Info[54127]["Time"]["ClearTime"] = "00:00 00:05"
 tGlobalData_Info[54127]["Rest"] = {}
 tGlobalData_Info[54127]["Rest"]["GlobalId"] = {54127,54128}
