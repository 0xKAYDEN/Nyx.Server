------------------------------------------------------------------------------------
--Name：          190606[英文征服][活动脚本]7月德州玩家MMO活动
--Creator:      杨艳
--Created:     2019/06/11
--------------------------------------------------------------------------------------

--	命名规范
--	TexasMomoAct_
--	logid： 10002459
----------------------------------表配置部分--------------------------------------------
local tTexasMomoAct_Data = {}
	--副本
	tTexasMomoAct_Data["ActMapId"] = 10665
	tTexasMomoAct_Data["InstanceType"] = 315
	tTexasMomoAct_Data["MapDoc"] = 1013

	tTexasMomoAct_Data["PosX"] = 50
	tTexasMomoAct_Data["PosY"] = 57
	
	--击杀掉落参数
	tTexasMomoAct_Data["Cellx"] = 25
	tTexasMomoAct_Data["Celly"] = 25
	tTexasMomoAct_Data["ExistTime"] = 300
	tTexasMomoAct_Data["BossDrop"] = {}
	
	-- 5433,'碧血腾蛇
	-- 5434,'噩梦女妖
	-- 5435,'食梦貘',
	tTexasMomoAct_Data["BossDrop"][5433] = {}
	tTexasMomoAct_Data["BossDrop"][5433][1] = {}
	tTexasMomoAct_Data["BossDrop"][5433][1]["ItemId"] = 3322026
	tTexasMomoAct_Data["BossDrop"][5433][1]["Num"] = 1
	tTexasMomoAct_Data["BossDrop"][5433][1]["ItemChanceSum"] = 80
	tTexasMomoAct_Data["BossDrop"][5433][1]["ItemChanceNum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5433][2] = {}
	tTexasMomoAct_Data["BossDrop"][5433][2]["ItemId"] = 3006531
	tTexasMomoAct_Data["BossDrop"][5433][2]["Num"] = 1
	tTexasMomoAct_Data["BossDrop"][5433][2]["ItemChanceSum"] = 30
	tTexasMomoAct_Data["BossDrop"][5433][2]["ItemChanceNum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5433][3] = {}
	tTexasMomoAct_Data["BossDrop"][5433][3]["ItemId"] = 3006537
	tTexasMomoAct_Data["BossDrop"][5433][3]["Num"] = 1
	tTexasMomoAct_Data["BossDrop"][5433][3]["ItemChanceSum"] = 30
	tTexasMomoAct_Data["BossDrop"][5433][3]["ItemChanceNum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5433][4] = {}
	tTexasMomoAct_Data["BossDrop"][5433][4]["ItemId"] = 3006534
	tTexasMomoAct_Data["BossDrop"][5433][4]["Num"] = 1
	tTexasMomoAct_Data["BossDrop"][5433][4]["ItemChanceSum"] = 30
	tTexasMomoAct_Data["BossDrop"][5433][4]["ItemChanceNum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5433][5] = {}
	tTexasMomoAct_Data["BossDrop"][5433][5]["ItemId"] = 3322022
	tTexasMomoAct_Data["BossDrop"][5433][5]["Num"] = 1
	tTexasMomoAct_Data["BossDrop"][5433][5]["ItemChanceSum"] = 15
	tTexasMomoAct_Data["BossDrop"][5433][5]["ItemChanceNum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5433][6] = {}
	tTexasMomoAct_Data["BossDrop"][5433][6]["ItemId"] = 3322023
	tTexasMomoAct_Data["BossDrop"][5433][6]["Num"] = 1
	tTexasMomoAct_Data["BossDrop"][5433][6]["ItemChanceSum"] = 15
	tTexasMomoAct_Data["BossDrop"][5433][6]["ItemChanceNum"] = 1000
	
	tTexasMomoAct_Data["BossDrop"][5434] = {}
	tTexasMomoAct_Data["BossDrop"][5434][1] = {}
	tTexasMomoAct_Data["BossDrop"][5434][1]["ItemId"] = 3001269
	tTexasMomoAct_Data["BossDrop"][5434][1]["Num"] = 1
	tTexasMomoAct_Data["BossDrop"][5434][1]["ItemChanceSum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5434][1]["ItemChanceNum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5434][2] = {}
	tTexasMomoAct_Data["BossDrop"][5434][2]["ItemId"] = 3006531
	tTexasMomoAct_Data["BossDrop"][5434][2]["Num"] = 5
	tTexasMomoAct_Data["BossDrop"][5434][2]["ItemChanceSum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5434][2]["ItemChanceNum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5434][3] = {}
	tTexasMomoAct_Data["BossDrop"][5434][3]["ItemId"] = 3006537
	tTexasMomoAct_Data["BossDrop"][5434][3]["Num"] = 5
	tTexasMomoAct_Data["BossDrop"][5434][3]["ItemChanceSum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5434][3]["ItemChanceNum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5434][4] = {}
	tTexasMomoAct_Data["BossDrop"][5434][4]["ItemId"] = 3006534
	tTexasMomoAct_Data["BossDrop"][5434][4]["Num"] = 5
	tTexasMomoAct_Data["BossDrop"][5434][4]["ItemChanceSum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5434][4]["ItemChanceNum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5434][5] = {}
	tTexasMomoAct_Data["BossDrop"][5434][5]["ItemId"] = 3322023
	tTexasMomoAct_Data["BossDrop"][5434][5]["Num"] = 3
	tTexasMomoAct_Data["BossDrop"][5434][5]["ItemChanceSum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5434][5]["ItemChanceNum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5434][6] = {}
	tTexasMomoAct_Data["BossDrop"][5434][6]["ItemId"] = 3322022
	tTexasMomoAct_Data["BossDrop"][5434][6]["Num"] = 3
	tTexasMomoAct_Data["BossDrop"][5434][6]["ItemChanceSum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5434][6]["ItemChanceNum"] = 1000


	tTexasMomoAct_Data["BossDrop"][5435] = {}
	tTexasMomoAct_Data["BossDrop"][5435][1] = {}
	tTexasMomoAct_Data["BossDrop"][5435][1]["ItemId"] = 3001269
	tTexasMomoAct_Data["BossDrop"][5435][1]["Num"] = 2
	tTexasMomoAct_Data["BossDrop"][5435][1]["ItemChanceSum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5435][1]["ItemChanceNum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5435][2] = {}
	tTexasMomoAct_Data["BossDrop"][5435][2]["ItemId"] = 3006532
	tTexasMomoAct_Data["BossDrop"][5435][2]["Num"] = 5
	tTexasMomoAct_Data["BossDrop"][5435][2]["ItemChanceSum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5435][2]["ItemChanceNum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5435][3] = {}
	tTexasMomoAct_Data["BossDrop"][5435][3]["ItemId"] = 3006535
	tTexasMomoAct_Data["BossDrop"][5435][3]["Num"] = 5
	tTexasMomoAct_Data["BossDrop"][5435][3]["ItemChanceSum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5435][3]["ItemChanceNum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5435][4] = {}
	tTexasMomoAct_Data["BossDrop"][5435][4]["ItemId"] = 3006538
	tTexasMomoAct_Data["BossDrop"][5435][4]["Num"] = 5
	tTexasMomoAct_Data["BossDrop"][5435][4]["ItemChanceSum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5435][4]["ItemChanceNum"] = 1000
	
	tTexasMomoAct_Data["BossDrop"][5435][5] = {}
	tTexasMomoAct_Data["BossDrop"][5435][5]["ItemId"] = 3322023
	tTexasMomoAct_Data["BossDrop"][5435][5]["Num"] = 5
	tTexasMomoAct_Data["BossDrop"][5435][5]["ItemChanceSum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5435][5]["ItemChanceNum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5435][6] = {}
	tTexasMomoAct_Data["BossDrop"][5435][6]["ItemId"] = 3322024
	tTexasMomoAct_Data["BossDrop"][5435][6]["Num"] = 1
	tTexasMomoAct_Data["BossDrop"][5435][6]["ItemChanceSum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5435][6]["ItemChanceNum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5435][7] = {}
	tTexasMomoAct_Data["BossDrop"][5435][7]["ItemId"] = 3322022
	tTexasMomoAct_Data["BossDrop"][5435][7]["Num"] = 5
	tTexasMomoAct_Data["BossDrop"][5435][7]["ItemChanceSum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5435][7]["ItemChanceNum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5435][8] = {}
	tTexasMomoAct_Data["BossDrop"][5435][8]["ItemId"] = 3322025
	tTexasMomoAct_Data["BossDrop"][5435][8]["Num"] = 1
	tTexasMomoAct_Data["BossDrop"][5435][8]["ItemChanceSum"] = 1000
	tTexasMomoAct_Data["BossDrop"][5435][8]["ItemChanceNum"] = 1000
	
	--传送地图
	tTexasMomoAct_Data["Trans"] = {}
	--普通服
	tTexasMomoAct_Data["Trans"][1] = {}
	tTexasMomoAct_Data["Trans"][1]["MapId"] = 1002
	tTexasMomoAct_Data["Trans"][1]["PosX"] = 410
	tTexasMomoAct_Data["Trans"][1]["PosY"] = 354
	--激情服
	-- tShuraBattleGround_Data["Trans"][2] = {}
	-- tShuraBattleGround_Data["Trans"][2]["MapId"] = 1002
	-- tShuraBattleGround_Data["Trans"][2]["PosX"] = 340
	-- tShuraBattleGround_Data["Trans"][2]["PosY"] = 341
	
local tTexasMomoAct_Stc ={}
	--每日是否进入副本
	tTexasMomoAct_Stc[1] = {}
	tTexasMomoAct_Stc[1]["DataType"] = 191
	tTexasMomoAct_Stc[1]["EventType"] = 15
	
--奖励
local tTexasMomoAct_Award = {}
	-- ===装备法宝大礼盒
	-- ===索引:3322012
	-- ===删除: 3322012,1
	-- ===
	tTexasMomoAct_Award[3322012] = {}
	tTexasMomoAct_Award[3322012]["LogId"] = 10002459
	tTexasMomoAct_Award[3322012]["DeleteItem"] = {}
	tTexasMomoAct_Award[3322012]["DeleteItem"][1] = {}
	tTexasMomoAct_Award[3322012]["DeleteItem"][1]["Id"] = 3322012 -- 【库】装备法宝大礼盒[属性:11]
	tTexasMomoAct_Award[3322012]["RewardItem"] = {}
	tTexasMomoAct_Award[3322012]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322012]["RewardItem"][1]["Id"] = 3322013 -- 【库】70级极品头盔礼包（赠）[属性:11]【表格】极品70级头盔可选包-无洞无追加无神佑
	tTexasMomoAct_Award[3322012]["RewardItem"][1]["Attr"] = "0 1" -- 70级极品头盔礼包（赠）*1
	tTexasMomoAct_Award[3322012]["RewardItem"][2] = {}
	tTexasMomoAct_Award[3322012]["RewardItem"][2]["Id"] = 3322014 -- 【库】70级极品水晶项链包（赠）[属性:11]【表格】极品70级水晶项链-无洞无追加无神佑
	tTexasMomoAct_Award[3322012]["RewardItem"][2]["Attr"] = "0 1" -- 70级极品水晶项链包（赠）*1
	tTexasMomoAct_Award[3322012]["RewardItem"][3] = {}
	tTexasMomoAct_Award[3322012]["RewardItem"][3]["Id"] = 3322015 -- 【库】70级极品白玉戒指包（赠）[属性:11]【表格】极品70级白玉戒指-无洞无追加无神佑
	tTexasMomoAct_Award[3322012]["RewardItem"][3]["Attr"] = "0 1" -- 70级极品白玉戒指包（赠）*1
	tTexasMomoAct_Award[3322012]["RewardItem"][4] = {}
	tTexasMomoAct_Award[3322012]["RewardItem"][4]["Id"] = 3322016 -- 【库】70级极品衣服可选包（赠）[属性:11]【表格】极品70级衣服可选包-无洞无追加无神佑
	tTexasMomoAct_Award[3322012]["RewardItem"][4]["Attr"] = "0 1" -- 70级极品衣服可选包（赠）*1
	tTexasMomoAct_Award[3322012]["RewardItem"][5] = {}
	tTexasMomoAct_Award[3322012]["RewardItem"][5]["Id"] = 160139 -- 【库】SnakeskinBoots[属性:0]【表格】蟒皮靴
	tTexasMomoAct_Award[3322012]["RewardItem"][5]["Attr"] = "0 1 3" -- SnakeskinBoots(赠)*1
	tTexasMomoAct_Award[3322012]["RewardItem"][6] = {}
	tTexasMomoAct_Award[3322012]["RewardItem"][6]["Id"] = 3322018 -- 【库】70级极品武器可选包（赠）[属性:11]【表格】极品70级武器可选包*2
	tTexasMomoAct_Award[3322012]["RewardItem"][6]["Attr"] = "0 2" -- 70级极品武器可选包（赠）*2
	tTexasMomoAct_Award[3322012]["RewardItem"][7] = {}
	tTexasMomoAct_Award[3322012]["RewardItem"][7]["Id"] = 3307603 -- 【库】+1SteedPack[属性:11]【表格】马匹+1礼包
	tTexasMomoAct_Award[3322012]["RewardItem"][7]["Attr"] = "0 1" -- +1SteedPack*1
	tTexasMomoAct_Award[3322012]["RewardItem"][8] = {}
	tTexasMomoAct_Award[3322012]["RewardItem"][8]["Id"] = 201006 -- 【库】HeavenFan[属性:0]【表格】100级良品扇子-无洞无追加无神佑
	tTexasMomoAct_Award[3322012]["RewardItem"][8]["Attr"] = "0 1 3" -- HeavenFan(赠)*1
	tTexasMomoAct_Award[3322012]["RewardItem"][9] = {}
	tTexasMomoAct_Award[3322012]["RewardItem"][9]["Id"] = 203006 -- 【库】RidingCrop[属性:0]【表格】30级良品马鞭-无洞无追加无神佑
	tTexasMomoAct_Award[3322012]["RewardItem"][9]["Attr"] = "0 1 3" -- RidingCrop(赠)*1
	tTexasMomoAct_Award[3322012]["RewardItem"][10] = {}
	tTexasMomoAct_Award[3322012]["RewardItem"][10]["Id"] = 202006 -- 【库】StarTower[属性:0]【表格】100级良品宝塔-无洞无追加无神佑
	tTexasMomoAct_Award[3322012]["RewardItem"][10]["Attr"] = "0 1 3" -- StarTower(赠)*1
	tTexasMomoAct_Award[3322012]["RewardItem"][11] = {}
	tTexasMomoAct_Award[3322012]["RewardItem"][11]["Id"] = 204006 -- 【库】TempestWing[属性:0]【表格】100级良品风雷翅-无洞无追加无神佑
	tTexasMomoAct_Award[3322012]["RewardItem"][11]["Attr"] = "0 1 3" -- TempestWing(赠)*1
	tTexasMomoAct_Award[3322012]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322012]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322012]["RewardEffect"]["Effect"] = "angelwing"


	-- ===70级极品头盔礼包（赠）
	-- ===索引: 3322013
	-- ===删除: 3322013,1
	-- ===
	tTexasMomoAct_Award[3322013] = {}
	tTexasMomoAct_Award[3322013]["LogId"] = 10002459
	tTexasMomoAct_Award[3322013]["DeleteItem"] = {}
	tTexasMomoAct_Award[3322013]["DeleteItem"][1] = {}
	tTexasMomoAct_Award[3322013]["DeleteItem"][1]["Id"] = 3322013 -- 【库】70级极品头盔礼包（赠）[属性:11]
	--  战士
	tTexasMomoAct_Award[3322013]["RewardProItem"] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][1] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tTexasMomoAct_Award[3322013]["RewardProItem"][1]["Item"] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][1]["Item"][1] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][1]["Item"][1]["Id"] = 111069
	tTexasMomoAct_Award[3322013]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1 3"
	
	--  勇士
	tTexasMomoAct_Award[3322013]["RewardProItem"][2] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tTexasMomoAct_Award[3322013]["RewardProItem"][2]["Item"] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][2]["Item"][1] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][2]["Item"][1]["Id"] = 118069
	tTexasMomoAct_Award[3322013]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1 3"
	
	--  忍者
	tTexasMomoAct_Award[3322013]["RewardProItem"][3] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tTexasMomoAct_Award[3322013]["RewardProItem"][3]["Item"] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][3]["Item"][1] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][3]["Item"][1]["Id"] = 112069
	tTexasMomoAct_Award[3322013]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1 3"
	
	--  武僧
	tTexasMomoAct_Award[3322013]["RewardProItem"][4] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tTexasMomoAct_Award[3322013]["RewardProItem"][4]["Item"] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][4]["Item"][1] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][4]["Item"][1]["Id"] = 143069
	tTexasMomoAct_Award[3322013]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1 3"
	
	--  海盗
	tTexasMomoAct_Award[3322013]["RewardProItem"][5] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tTexasMomoAct_Award[3322013]["RewardProItem"][5]["Item"] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][5]["Item"][1] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][5]["Item"][1]["Id"] = 145069
	tTexasMomoAct_Award[3322013]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1 3"
	
	--  弓手
	tTexasMomoAct_Award[3322013]["RewardProItem"][6] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tTexasMomoAct_Award[3322013]["RewardProItem"][6]["Item"] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][6]["Item"][1] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][6]["Item"][1]["Id"] = 113049
	tTexasMomoAct_Award[3322013]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1 3"
	
	--  道士
	tTexasMomoAct_Award[3322013]["RewardProItem"][7] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tTexasMomoAct_Award[3322013]["RewardProItem"][7]["Item"] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][7]["Item"][1] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][7]["Item"][1]["Id"] = 114069
	tTexasMomoAct_Award[3322013]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1 3"
	
	--  铁扇门（160-165）
	tTexasMomoAct_Award[3322013]["RewardProItem"][8] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tTexasMomoAct_Award[3322013]["RewardProItem"][8]["Item"] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][8]["Item"][1] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][8]["Item"][1]["Id"] = 170069
	tTexasMomoAct_Award[3322013]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1 3"
	
	--  拳师
	tTexasMomoAct_Award[3322013]["RewardProItem"][9] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tTexasMomoAct_Award[3322013]["RewardProItem"][9]["Item"] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][9]["Item"][1] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][9]["Item"][1]["Id"] = 148069
	tTexasMomoAct_Award[3322013]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1 3"
	
	--  雷神（90-95）
	tTexasMomoAct_Award[3322013]["RewardProItem"][10] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][10]["Pro"] = {{90,95}}                    
	tTexasMomoAct_Award[3322013]["RewardProItem"][10]["Item"] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][10]["Item"][1] = {}
	tTexasMomoAct_Award[3322013]["RewardProItem"][10]["Item"][1]["Id"] = 146069
	tTexasMomoAct_Award[3322013]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1 3"
	tTexasMomoAct_Award[3322013]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322013]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322013]["RewardEffect"]["Effect"] = "angelwing"


	-- ===70级极品水晶项链包（赠）
	-- ===索引: 3322014
	-- ===删除: 3322014,1
	-- ===
	tTexasMomoAct_Award[3322014] = {}
	tTexasMomoAct_Award[3322014]["LogId"] = 10002459
	tTexasMomoAct_Award[3322014]["DeleteItem"] = {}
	tTexasMomoAct_Award[3322014]["DeleteItem"][1] = {}
	tTexasMomoAct_Award[3322014]["DeleteItem"][1]["Id"] = 3322014 -- 【库】70级极品水晶项链包（赠）[属性:11]
	tTexasMomoAct_Award[3322014]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322014]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322014]["RewardEffect"]["Effect"] = "angelwing"
	
	--  道士
	tTexasMomoAct_Award[3322014]["RewardProItem"] = {}
	tTexasMomoAct_Award[3322014]["RewardProItem"][1] = {}
	tTexasMomoAct_Award[3322014]["RewardProItem"][1]["Pro"] = {{100,145}}                    
	tTexasMomoAct_Award[3322014]["RewardProItem"][1]["Item"] = {}
	tTexasMomoAct_Award[3322014]["RewardProItem"][1]["Item"][1] = {}
	tTexasMomoAct_Award[3322014]["RewardProItem"][1]["Item"][1]["Id"] = 121129
	tTexasMomoAct_Award[3322014]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1 3"
	
	--  除道士以外
	tTexasMomoAct_Award[3322014]["RewardProItem"][2] = {}
	tTexasMomoAct_Award[3322014]["RewardProItem"][2]["Pro"] = {{10,95}}                    
	tTexasMomoAct_Award[3322014]["RewardProItem"][2]["Item"] = {}
	tTexasMomoAct_Award[3322014]["RewardProItem"][2]["Item"][1] = {}
	tTexasMomoAct_Award[3322014]["RewardProItem"][2]["Item"][1]["Id"] = 120129
	tTexasMomoAct_Award[3322014]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1 3"
	
	tTexasMomoAct_Award[3322014]["RewardProItem"][3] = {}
	tTexasMomoAct_Award[3322014]["RewardProItem"][3]["Pro"] = {{160,165}}                    
	tTexasMomoAct_Award[3322014]["RewardProItem"][3]["Item"] = {}
	tTexasMomoAct_Award[3322014]["RewardProItem"][3]["Item"][1] = {}
	tTexasMomoAct_Award[3322014]["RewardProItem"][3]["Item"][1]["Id"] = 120129
	tTexasMomoAct_Award[3322014]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1 3"
	
	-- ===70级极品白玉戒指包（赠）
	-- ===索引: 3322015
	-- ===删除: 3322015,1
	-- ===
	tTexasMomoAct_Award[3322015] = {}
	tTexasMomoAct_Award[3322015]["LogId"] = 10002459
	tTexasMomoAct_Award[3322015]["DeleteItem"] = {}
	tTexasMomoAct_Award[3322015]["DeleteItem"][1] = {}
	tTexasMomoAct_Award[3322015]["DeleteItem"][1]["Id"] = 3322015 -- 【库】70级极品白玉戒指包（赠）[属性:11]
	tTexasMomoAct_Award[3322015]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322015]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322015]["RewardEffect"]["Effect"] = "angelwing"
	
	--  道士
	tTexasMomoAct_Award[3322015]["RewardProItem"] = {}
	tTexasMomoAct_Award[3322015]["RewardProItem"][1] = {}
	tTexasMomoAct_Award[3322015]["RewardProItem"][1]["Pro"] = {{100,145}}                    
	tTexasMomoAct_Award[3322015]["RewardProItem"][1]["Item"] = {}
	tTexasMomoAct_Award[3322015]["RewardProItem"][1]["Item"][1] = {}
	tTexasMomoAct_Award[3322015]["RewardProItem"][1]["Item"][1]["Id"] = 152129
	tTexasMomoAct_Award[3322015]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1 3"
	                    
	--  除道士以外      
	tTexasMomoAct_Award[3322015]["RewardProItem"][2] = {}
	tTexasMomoAct_Award[3322015]["RewardProItem"][2]["Pro"] = {{10,95}}                    
	tTexasMomoAct_Award[3322015]["RewardProItem"][2]["Item"] = {}
	tTexasMomoAct_Award[3322015]["RewardProItem"][2]["Item"][1] = {}
	tTexasMomoAct_Award[3322015]["RewardProItem"][2]["Item"][1]["Id"] = 150139
	tTexasMomoAct_Award[3322015]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1 3"
	                    
	tTexasMomoAct_Award[3322015]["RewardProItem"][3] = {}
	tTexasMomoAct_Award[3322015]["RewardProItem"][3]["Pro"] = {{160,165}}                    
	tTexasMomoAct_Award[3322015]["RewardProItem"][3]["Item"] = {}
	tTexasMomoAct_Award[3322015]["RewardProItem"][3]["Item"][1] = {}
	tTexasMomoAct_Award[3322015]["RewardProItem"][3]["Item"][1]["Id"] = 150139
	tTexasMomoAct_Award[3322015]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1 3"
	

	-- ===70级极品衣服可选包（赠）
	-- ===索引: 3322016
	-- ===删除: 3322016,1
	-- ===
	tTexasMomoAct_Award[3322016] = {}
	tTexasMomoAct_Award[3322016]["LogId"] = 10002459
	tTexasMomoAct_Award[3322016]["DeleteItem"] = {}
	tTexasMomoAct_Award[3322016]["DeleteItem"][1] = {}
	tTexasMomoAct_Award[3322016]["DeleteItem"][1]["Id"] = 3322016 -- 【库】70级极品衣服可选包（赠）[属性:11]
	--  战士
	tTexasMomoAct_Award[3322016]["RewardProItem"] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][1] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][1]["Pro"] = {{20,25}}                    
	tTexasMomoAct_Award[3322016]["RewardProItem"][1]["Item"] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][1]["Item"][1] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][1]["Item"][1]["Id"] = 131069
	tTexasMomoAct_Award[3322016]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1 3"
	
	--  勇士
	tTexasMomoAct_Award[3322016]["RewardProItem"][2] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][2]["Pro"] = {{10,15}}                    
	tTexasMomoAct_Award[3322016]["RewardProItem"][2]["Item"] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][2]["Item"][1] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][2]["Item"][1]["Id"] = 130069
	tTexasMomoAct_Award[3322016]["RewardProItem"][2]["Item"][1]["Attr"] = "0 1 3"
	
	--  忍者
	tTexasMomoAct_Award[3322016]["RewardProItem"][3] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][3]["Pro"] = {{50,55}}                    
	tTexasMomoAct_Award[3322016]["RewardProItem"][3]["Item"] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][3]["Item"][1] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][3]["Item"][1]["Id"] = 135069
	tTexasMomoAct_Award[3322016]["RewardProItem"][3]["Item"][1]["Attr"] = "0 1 3"
	
	--  武僧
	tTexasMomoAct_Award[3322016]["RewardProItem"][4] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][4]["Pro"] = {{60,65}}                    
	tTexasMomoAct_Award[3322016]["RewardProItem"][4]["Item"] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][4]["Item"][1] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][4]["Item"][1]["Id"] = 136069
	tTexasMomoAct_Award[3322016]["RewardProItem"][4]["Item"][1]["Attr"] = "0 1 3"
	
	--  海盗
	tTexasMomoAct_Award[3322016]["RewardProItem"][5] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][5]["Pro"] = {{70,75}}                    
	tTexasMomoAct_Award[3322016]["RewardProItem"][5]["Item"] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][5]["Item"][1] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][5]["Item"][1]["Id"] = 139069
	tTexasMomoAct_Award[3322016]["RewardProItem"][5]["Item"][1]["Attr"] = "0 1 3"
	
	--  弓手
	tTexasMomoAct_Award[3322016]["RewardProItem"][6] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][6]["Pro"] = {{40,45}}                    
	tTexasMomoAct_Award[3322016]["RewardProItem"][6]["Item"] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][6]["Item"][1] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][6]["Item"][1]["Id"] = 133049
	tTexasMomoAct_Award[3322016]["RewardProItem"][6]["Item"][1]["Attr"] = "0 1 3"
	
	--  道士
	tTexasMomoAct_Award[3322016]["RewardProItem"][7] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][7]["Pro"] = {{100,145}}                    
	tTexasMomoAct_Award[3322016]["RewardProItem"][7]["Item"] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][7]["Item"][1] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][7]["Item"][1]["Id"] = 134069
	tTexasMomoAct_Award[3322016]["RewardProItem"][7]["Item"][1]["Attr"] = "0 1 3"
	
	--  铁扇门（160-165）
	tTexasMomoAct_Award[3322016]["RewardProItem"][8] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][8]["Pro"] = {{160,165}}                    
	tTexasMomoAct_Award[3322016]["RewardProItem"][8]["Item"] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][8]["Item"][1] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][8]["Item"][1]["Id"] = 101069
	tTexasMomoAct_Award[3322016]["RewardProItem"][8]["Item"][1]["Attr"] = "0 1 3"
	
	--  拳师
	tTexasMomoAct_Award[3322016]["RewardProItem"][9] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][9]["Pro"] = {{80,85}}                    
	tTexasMomoAct_Award[3322016]["RewardProItem"][9]["Item"] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][9]["Item"][1] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][9]["Item"][1]["Id"] = 138069
	tTexasMomoAct_Award[3322016]["RewardProItem"][9]["Item"][1]["Attr"] = "0 1 3"
	
	--  雷神（90-95）
	tTexasMomoAct_Award[3322016]["RewardProItem"][10] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][10]["Pro"] = {{90,95}}                    
	tTexasMomoAct_Award[3322016]["RewardProItem"][10]["Item"] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][10]["Item"][1] = {}
	tTexasMomoAct_Award[3322016]["RewardProItem"][10]["Item"][1]["Id"] = 102069
	tTexasMomoAct_Award[3322016]["RewardProItem"][10]["Item"][1]["Attr"] = "0 1 3"
	tTexasMomoAct_Award[3322016]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322016]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322016]["RewardEffect"]["Effect"] = "angelwing"

	-- ===3322017,'战力提升百宝箱
	-- ===索引:3322017
	-- ===删除: 3322017,1
	-- ===
	tTexasMomoAct_Award[3322017] = {}
	tTexasMomoAct_Award[3322017]["LogId"] = 10002459
	tTexasMomoAct_Award[3322017]["EmoneyLog"] = "350	22402	0	0	1	"
	tTexasMomoAct_Award[3322017]["DeleteItem"] = {}
	tTexasMomoAct_Award[3322017]["DeleteItem"][1] = {}
	tTexasMomoAct_Award[3322017]["DeleteItem"][1]["Id"] = 3322017 -- 【库】装备法宝大礼盒[属性:11]
	tTexasMomoAct_Award[3322017]["RewardItem"] = {}
	tTexasMomoAct_Award[3322017]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322017]["RewardItem"][1]["Id"] = 3322012 -- 【库】70级极品头盔礼包（赠）[属性:11]【表格】极品70级头盔可选包-无洞无追加无神佑
	tTexasMomoAct_Award[3322017]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 70级极品头盔礼包（赠）*1
	tTexasMomoAct_Award[3322017]["RewardItem"][2] = {}
	tTexasMomoAct_Award[3322017]["RewardItem"][2]["Id"] = 3322019 -- 【库】70级极品水晶项链包（赠）[属性:11]【表格】极品70级水晶项链-无洞无追加无神佑
	tTexasMomoAct_Award[3322017]["RewardItem"][2]["Attr"] = "0 1 0 43200 1" -- 70级极品水晶项链包（赠）*1
	tTexasMomoAct_Award[3322017]["RewardItem"][3] = {}
	tTexasMomoAct_Award[3322017]["RewardItem"][3]["Id"] = 3322020 -- 【库】70级极品白玉戒指包（赠）[属性:11]【表格】极品70级白玉戒指-无洞无追加无神佑
	tTexasMomoAct_Award[3322017]["RewardItem"][3]["Attr"] = "0 1 0 43200 1" -- 70级极品白玉戒指包（赠）*1
	tTexasMomoAct_Award[3322017]["RewardItem"][4] = {}
	tTexasMomoAct_Award[3322017]["RewardItem"][4]["Id"] = 3322021 -- 【库】70级极品衣服可选包（赠）[属性:11]【表格】极品70级衣服可选包-无洞无追加无神佑
	tTexasMomoAct_Award[3322017]["RewardItem"][4]["Attr"] = "0 1 0 10080 1" -- 70级极品衣服可选包（赠）*1
	tTexasMomoAct_Award[3322017]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322017]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322017]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===70级极品武器可选包（赠）
	-- ===索引: 3322018
	-- ===删除: 3322018,1
	-- ===
	tTexasMomoAct_Award[3322018] = {}
	tTexasMomoAct_Award[3322018]["LogId"] = 10002459
	tTexasMomoAct_Award[3322018]["DeleteItem"] = {}
	tTexasMomoAct_Award[3322018]["DeleteItem"][1] = {}
	tTexasMomoAct_Award[3322018]["DeleteItem"][1]["Id"] = 3322018 -- 【库】70级极品武器可选包（赠）[属性:11]
	
	tTexasMomoAct_Award[3322018][1] = {}
	tTexasMomoAct_Award[3322018][1]["RewardItem"] = {}
	tTexasMomoAct_Award[3322018][1]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][1]["RewardItem"][1]["Id"] = 480139 -- 【库】BronzeClub[属性:0]【表格】熟铜棒
	tTexasMomoAct_Award[3322018][1]["RewardItem"][1]["Attr"] = "0 1 3" -- BronzeClub(赠)*1
	tTexasMomoAct_Award[3322018][1]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][1]["RewardEffect"]["Effect"] = "angelwing"

	tTexasMomoAct_Award[3322018][2] = {}
	tTexasMomoAct_Award[3322018][2]["RewardItem"] = {}
	tTexasMomoAct_Award[3322018][2]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][2]["RewardItem"][1]["Id"] = 490139 -- 【库】HexDagger[属性:0]【表格】豫让匕
	tTexasMomoAct_Award[3322018][2]["RewardItem"][1]["Attr"] = "0 1 3" -- HexDagger(赠)*1
	tTexasMomoAct_Award[3322018][2]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][2]["RewardEffect"]["Effect"] = "angelwing" 
	
	tTexasMomoAct_Award[3322018][3] = {}
    tTexasMomoAct_Award[3322018][3]["RewardItem"] = {}	 
	tTexasMomoAct_Award[3322018][3]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][3]["RewardItem"][1]["Id"] = 481139 -- 【库】MonkScepter[属性:0]【表格】封禅明杵
	tTexasMomoAct_Award[3322018][3]["RewardItem"][1]["Attr"] = "0 1 3" -- MonkScepter(赠)*1
	tTexasMomoAct_Award[3322018][3]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][3]["RewardEffect"]["Effect"] = "angelwing"
	
	tTexasMomoAct_Award[3322018][4] = {}
    tTexasMomoAct_Award[3322018][4]["RewardItem"] = {}	
	tTexasMomoAct_Award[3322018][4]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][4]["RewardItem"][1]["Id"] = 460139 -- 【库】SkeletonHammer[属性:0]【表格】骷髅锤
	tTexasMomoAct_Award[3322018][4]["RewardItem"][1]["Attr"] = "0 1 3" -- SkeletonHammer(赠)*1
	tTexasMomoAct_Award[3322018][4]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][4]["RewardEffect"]["Effect"] = "angelwing"
	
	tTexasMomoAct_Award[3322018][5] = {}
    tTexasMomoAct_Award[3322018][5]["RewardItem"] = {}	                      
	tTexasMomoAct_Award[3322018][5]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][5]["RewardItem"][1]["Id"] = 410139 -- 【库】SparrowBlade[属性:0]【表格】大夏龙雀
	tTexasMomoAct_Award[3322018][5]["RewardItem"][1]["Attr"] = "0 1 3" -- SparrowBlade(赠)*1
	tTexasMomoAct_Award[3322018][5]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][5]["RewardEffect"]["Effect"] = "angelwing"
	
	tTexasMomoAct_Award[3322018][6] = {}
    tTexasMomoAct_Award[3322018][6]["RewardItem"] = {}	                     
	tTexasMomoAct_Award[3322018][6]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][6]["RewardItem"][1]["Id"] = 900049 -- 【库】WolfShield[属性:0]【表格】狼牙盾
	tTexasMomoAct_Award[3322018][6]["RewardItem"][1]["Attr"] = "0 1 3" -- WolfShield(赠)*1
	tTexasMomoAct_Award[3322018][6]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][6]["RewardEffect"]["Effect"] = "angelwing"
	
	tTexasMomoAct_Award[3322018][7] = {}
    tTexasMomoAct_Award[3322018][7]["RewardItem"] = {}	                    
	tTexasMomoAct_Award[3322018][7]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][7]["RewardItem"][1]["Id"] = 421139 -- 【库】GreatBacksword[属性:0]【表格】乾坤剑
	tTexasMomoAct_Award[3322018][7]["RewardItem"][1]["Attr"] = "0 1 3" -- GreatBacksword(赠)*1
	tTexasMomoAct_Award[3322018][7]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][7]["RewardEffect"]["Effect"] = "angelwing"
	
	tTexasMomoAct_Award[3322018][8] = {}
    tTexasMomoAct_Award[3322018][8]["RewardItem"] = {}	                       
	tTexasMomoAct_Award[3322018][8]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][8]["RewardItem"][1]["Id"] = 619139 -- 【库】DragonRuler[属性:0]【表格】御龙
	tTexasMomoAct_Award[3322018][8]["RewardItem"][1]["Attr"] = "0 1 3" -- DragonRuler(赠)*1
	tTexasMomoAct_Award[3322018][8]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][8]["RewardEffect"]["Effect"] = "angelwing"
	
	tTexasMomoAct_Award[3322018][9] = {}
    tTexasMomoAct_Award[3322018][9]["RewardItem"] = {}	                       
	tTexasMomoAct_Award[3322018][9]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][9]["RewardItem"][1]["Id"] = 613129 -- 【库】ShadowFlyingKnife[属性:0]【表格】七煞飞刀
	tTexasMomoAct_Award[3322018][9]["RewardItem"][1]["Attr"] = "0 1 3" -- ShadowFlyingKnife(赠)*1
	tTexasMomoAct_Award[3322018][9]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][9]["RewardEffect"]["Effect"] = "angelwing"
	
	tTexasMomoAct_Award[3322018][10] ={}
    tTexasMomoAct_Award[3322018][10]["RewardItem"] = {}	                             
	tTexasMomoAct_Award[3322018][10]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][10]["RewardItem"][1]["Id"] = 450139 -- 【库】LeopardAxe[属性:0]【表格】豹头斧
	tTexasMomoAct_Award[3322018][10]["RewardItem"][1]["Attr"] = "0 1 3" -- LeopardAxe(赠)*1
	tTexasMomoAct_Award[3322018][10]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][10]["RewardEffect"]["Effect"] = "angelwing"
	
	tTexasMomoAct_Award[3322018][11] = {}
    tTexasMomoAct_Award[3322018][11]["RewardItem"] = {}	                        
	tTexasMomoAct_Award[3322018][11]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][11]["RewardItem"][1]["Id"] = 680139 -- 【库】ShadowFlashaxe[属性:0]【表格】凛风战斧
	tTexasMomoAct_Award[3322018][11]["RewardItem"][1]["Attr"] = "0 1 3" -- ShadowFlashaxe(赠)*1
	tTexasMomoAct_Award[3322018][11]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][11]["RewardEffect"]["Effect"] = "angelwing"
	
	tTexasMomoAct_Award[3322018][12] = {}
    tTexasMomoAct_Award[3322018][12]["RewardItem"] = {}	                      
	tTexasMomoAct_Award[3322018][12]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][12]["RewardItem"][1]["Id"] = 500129 -- 【库】GooseBow[属性:0]【表格】金雁弓
	tTexasMomoAct_Award[3322018][12]["RewardItem"][1]["Attr"] = "0 1 3" -- GooseBow(赠)*1
	tTexasMomoAct_Award[3322018][12]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][12]["RewardEffect"]["Effect"] = "angelwing"
	
	tTexasMomoAct_Award[3322018][13] = {}
    tTexasMomoAct_Award[3322018][13]["RewardItem"] = {}	                      
	tTexasMomoAct_Award[3322018][13]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][13]["RewardItem"][1]["Id"] = 430139 -- 【库】SnakeHook[属性:0]【表格】银蛇钩
	tTexasMomoAct_Award[3322018][13]["RewardItem"][1]["Attr"] = "0 1 3" -- SnakeHook(赠)*1
	tTexasMomoAct_Award[3322018][13]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][13]["RewardEffect"]["Effect"] = "angelwing"
	
	tTexasMomoAct_Award[3322018][14] = {}
    tTexasMomoAct_Award[3322018][14]["RewardItem"] = {}	                    
	tTexasMomoAct_Award[3322018][14]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][14]["RewardItem"][1]["Id"] = 561139 -- 【库】IronWand[属性:0]【表格】镇铁棍
	tTexasMomoAct_Award[3322018][14]["RewardItem"][1]["Attr"] = "0 1 3" -- IronWand(赠)*1
	tTexasMomoAct_Award[3322018][14]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][14]["RewardEffect"]["Effect"] = "angelwing"
	
	tTexasMomoAct_Award[3322018][15] = {}
    tTexasMomoAct_Award[3322018][15]["RewardItem"] = {}	                  
	tTexasMomoAct_Award[3322018][15]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][15]["RewardItem"][1]["Id"] = 612139 -- 【库】GlowPistol[属性:0]【表格】镶云火枪
	tTexasMomoAct_Award[3322018][15]["RewardItem"][1]["Attr"] = "0 1 3" -- GlowPistol(赠)*1
	tTexasMomoAct_Award[3322018][15]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][15]["RewardEffect"]["Effect"] = "angelwing"
	
	tTexasMomoAct_Award[3322018][16] = {}
    tTexasMomoAct_Award[3322018][16]["RewardItem"] = {}	                       
	tTexasMomoAct_Award[3322018][16]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][16]["RewardItem"][1]["Id"] = 611139 -- 【库】MysteryRapier[属性:0]【表格】迷踪之剑
	tTexasMomoAct_Award[3322018][16]["RewardItem"][1]["Attr"] = "0 1 3" -- MysteryRapier(赠)*1
	tTexasMomoAct_Award[3322018][16]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][16]["RewardEffect"]["Effect"] = "angelwing"
	
	tTexasMomoAct_Award[3322018][17] = {}
    tTexasMomoAct_Award[3322018][17]["RewardItem"] = {}	                         
	tTexasMomoAct_Award[3322018][17]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][17]["RewardItem"][1]["Id"] = 420139 -- 【库】SharkSword[属性:0]【表格】腾蛟剑
	tTexasMomoAct_Award[3322018][17]["RewardItem"][1]["Attr"] = "0 1 3" -- SharkSword(赠)*1
	tTexasMomoAct_Award[3322018][17]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][17]["RewardEffect"]["Effect"] = "angelwing"
	
	tTexasMomoAct_Award[3322018][18] ={}
    tTexasMomoAct_Award[3322018][18]["RewardItem"] = {}	                          
	tTexasMomoAct_Award[3322018][18]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][18]["RewardItem"][1]["Id"] = 440139 -- 【库】ShiningWhip[属性:0]【表格】水磨钢鞭
	tTexasMomoAct_Award[3322018][18]["RewardItem"][1]["Attr"] = "0 1 3" -- ShiningWhip(赠)*1
	tTexasMomoAct_Award[3322018][18]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][18]["RewardEffect"]["Effect"] = "angelwing"
	
	tTexasMomoAct_Award[3322018][19] ={}
    tTexasMomoAct_Award[3322018][19]["RewardItem"] = {}	                        
	tTexasMomoAct_Award[3322018][19]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][19]["RewardItem"][1]["Id"] = 617139 -- 【库】HeartNunchaku[属性:0]【表格】锁心双龙棍
	tTexasMomoAct_Award[3322018][19]["RewardItem"][1]["Attr"] = "0 1 3" -- HeartNunchaku(赠)*1
	tTexasMomoAct_Award[3322018][19]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][19]["RewardEffect"]["Effect"] = "angelwing"
	tTexasMomoAct_Award[3322018][20] ={}
    tTexasMomoAct_Award[3322018][20]["RewardItem"] = {}	                         
	tTexasMomoAct_Award[3322018][20]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][20]["RewardItem"][1]["Id"] = 624139 -- 【库】SkyFlame[属性:0]【表格】苍之怒焰
	tTexasMomoAct_Award[3322018][20]["RewardItem"][1]["Attr"] = "0 1 3" -- SkyFlame(赠)*1
	tTexasMomoAct_Award[3322018][20]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][20]["RewardEffect"]["Effect"] = "angelwing"
	tTexasMomoAct_Award[3322018][21] = {}
    tTexasMomoAct_Award[3322018][21]["RewardItem"] = {}	                           
	tTexasMomoAct_Award[3322018][21]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][21]["RewardItem"][1]["Id"] = 511139 -- 【库】Avenger`sScythe[属性:0]【表格】复仇战镰
	tTexasMomoAct_Award[3322018][21]["RewardItem"][1]["Attr"] = "0 1 3" -- Avenger`sScythe(赠)*1
    tTexasMomoAct_Award[3322018][21]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][21]["RewardEffect"]["Effect"] = "angelwing"
	tTexasMomoAct_Award[3322018][22] ={}
    tTexasMomoAct_Award[3322018][22]["RewardItem"] = {}	                        
	tTexasMomoAct_Award[3322018][22]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][22]["RewardItem"][1]["Id"] = 601139 -- 【库】RainKatana[属性:0]【表格】铁虹丸
	tTexasMomoAct_Award[3322018][22]["RewardItem"][1]["Attr"] = "0 1 3" -- RainKatana(赠)*1
	tTexasMomoAct_Award[3322018][22]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][22]["RewardEffect"]["Effect"] = "angelwing"
	tTexasMomoAct_Award[3322018][23] = {}
    tTexasMomoAct_Award[3322018][23]["RewardItem"] = {}	                    
	tTexasMomoAct_Award[3322018][23]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][23]["RewardItem"][1]["Id"] = 610139 -- 【库】NirvanaPrayerBeads[属性:0]【表格】飞龙念珠
	tTexasMomoAct_Award[3322018][23]["RewardItem"][1]["Attr"] = "0 1 3" -- NirvanaPrayerBeads(赠)*1
	tTexasMomoAct_Award[3322018][23]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][23]["RewardEffect"]["Effect"] = "angelwing"
	tTexasMomoAct_Award[3322018][24] = {}
    tTexasMomoAct_Award[3322018][24]["RewardItem"] = {}	                          
	tTexasMomoAct_Award[3322018][24]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][24]["RewardItem"][1]["Id"] = 540139 -- 【库】TwinLongHammer[属性:0]【表格】两头锤
	tTexasMomoAct_Award[3322018][24]["RewardItem"][1]["Attr"] = "0 1 3" -- TwinLongHammer(赠)*1
	tTexasMomoAct_Award[3322018][24]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][24]["RewardEffect"]["Effect"] = "angelwing"
	tTexasMomoAct_Award[3322018][25] = {}
    tTexasMomoAct_Award[3322018][25]["RewardItem"] = {}	                         
	tTexasMomoAct_Award[3322018][25]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][25]["RewardItem"][1]["Id"] = 510139 -- 【库】RingGlaive[属性:0]【表格】铁环首刀
	tTexasMomoAct_Award[3322018][25]["RewardItem"][1]["Attr"] = "0 1 3" -- RingGlaive(赠)*1
	tTexasMomoAct_Award[3322018][25]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][25]["RewardEffect"]["Effect"] = "angelwing"
	tTexasMomoAct_Award[3322018][26] = {}
    tTexasMomoAct_Award[3322018][26]["RewardItem"] = {}	                         
	tTexasMomoAct_Award[3322018][26]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][26]["RewardItem"][1]["Id"] = 530139 -- 【库】GreatPoleaxe[属性:0]【表格】无敌长斧
	tTexasMomoAct_Award[3322018][26]["RewardItem"][1]["Attr"] = "0 1 3" -- GreatPoleaxe(赠)*1
	tTexasMomoAct_Award[3322018][26]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][26]["RewardEffect"]["Effect"] = "angelwing"
	tTexasMomoAct_Award[3322018][27] = {}
    tTexasMomoAct_Award[3322018][27]["RewardItem"] = {}	                           
	tTexasMomoAct_Award[3322018][27]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][27]["RewardItem"][1]["Id"] = 580139 -- 【库】VioletHalbert[属性:0]【表格】紫电戟
	tTexasMomoAct_Award[3322018][27]["RewardItem"][1]["Attr"] = "0 1 3" -- VioletHalbert(赠)*1
	tTexasMomoAct_Award[3322018][27]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][27]["RewardEffect"]["Effect"] = "angelwing"
	tTexasMomoAct_Award[3322018][28] ={}
    tTexasMomoAct_Award[3322018][28]["RewardItem"] = {}	                         
	tTexasMomoAct_Award[3322018][28]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][28]["RewardItem"][1]["Id"] = 560139 -- 【库】LeafSpear[属性:0]【表格】芦叶枪
	tTexasMomoAct_Award[3322018][28]["RewardItem"][1]["Attr"] = "0 1 3" -- LeafSpear(赠)*1
	tTexasMomoAct_Award[3322018][28]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][28]["RewardEffect"]["Effect"] = "angelwing"
	tTexasMomoAct_Award[3322018][29] = {}
    tTexasMomoAct_Award[3322018][29]["RewardItem"] = {}	                       
	tTexasMomoAct_Award[3322018][29]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][29]["RewardItem"][1]["Id"] = 626139 -- 【库】PrideFan[属性:0]【表格】傲雪凌霜扇
	tTexasMomoAct_Award[3322018][29]["RewardItem"][1]["Attr"] = "0 1 3" -- PrideFan(赠)*1
	tTexasMomoAct_Award[3322018][29]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][29]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][29]["RewardEffect"]["Effect"] = "angelwing"
	tTexasMomoAct_Award[3322018][30] = {}
    tTexasMomoAct_Award[3322018][30]["RewardItem"] = {}	
	tTexasMomoAct_Award[3322018][30]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322018][30]["RewardItem"][1]["Id"] = 681139 -- 【库】GloryStormhammer[属性:0]【表格】雷光战锤
	tTexasMomoAct_Award[3322018][30]["RewardItem"][1]["Attr"] = "0 1 3" -- GloryStormhammer(赠)*1
	tTexasMomoAct_Award[3322018][30]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322018][30]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322018][30]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===炼气修行提升包
	-- ===索引: 3322019
	-- ===删除: 3322019,1
	-- ===
	tTexasMomoAct_Award[3322019] = {}
	tTexasMomoAct_Award[3322019]["LogId"] = 10002459
	tTexasMomoAct_Award[3322019]["DeleteItem"] = {}
	tTexasMomoAct_Award[3322019]["DeleteItem"][1] = {}
	tTexasMomoAct_Award[3322019]["DeleteItem"][1]["Id"] = 3322019 -- 【库】炼气修行提升包[属性:11]
	tTexasMomoAct_Award[3322019]["RewardStrengthValue"] = {}
	tTexasMomoAct_Award[3322019]["RewardStrengthValue"]["Value"] = 20000 -- 气力值
	tTexasMomoAct_Award[3322019]["RewardCultivation"] = {}
	tTexasMomoAct_Award[3322019]["RewardCultivation"]["Value"] = 5000 -- 修行值
	tTexasMomoAct_Award[3322019]["RewardExpTime"] = {}
	tTexasMomoAct_Award[3322019]["RewardExpTime"]["Value"] = 12000 -- 分钟经验
	tTexasMomoAct_Award[3322019]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322019]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322019]["RewardEffect"]["Effect"] = "angelwing"


	-- ===流星卷（赠）*7包
	-- ===索引: 3322020
	-- ===删除: 3322020,1
	-- ===
	tTexasMomoAct_Award[3322020] = {}
	tTexasMomoAct_Award[3322020]["LogId"] = 10002459
	tTexasMomoAct_Award[3322020]["DeleteItem"] = {}
	tTexasMomoAct_Award[3322020]["DeleteItem"][1] = {}
	tTexasMomoAct_Award[3322020]["DeleteItem"][1]["Id"] = 3322020 -- 【库】流星卷（赠）*7包[属性:11]
	tTexasMomoAct_Award[3322020]["RewardItem"] = {}
	tTexasMomoAct_Award[3322020]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322020]["RewardItem"][1]["Id"] = 3001269 -- 【库】BonnyMeteorScroll[属性:9]【表格】流星卷
	tTexasMomoAct_Award[3322020]["RewardItem"][1]["Attr"] = "0 7" -- BonnyMeteorScroll*7
	tTexasMomoAct_Award[3322020]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322020]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322020]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3赤炼石（赠）*12包
	-- ===索引: 3322021
	-- ===删除: 3322021,1
	-- ===
	tTexasMomoAct_Award[3322021] = {}
	tTexasMomoAct_Award[3322021]["LogId"] = 10002459
	tTexasMomoAct_Award[3322021]["DeleteItem"] = {}
	tTexasMomoAct_Award[3322021]["DeleteItem"][1] = {}
	tTexasMomoAct_Award[3322021]["DeleteItem"][1]["Id"] = 3322021 -- 【库】+3赤炼石（赠）*12包[属性:11]
	tTexasMomoAct_Award[3322021]["RewardItem"] = {}
	tTexasMomoAct_Award[3322021]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322021]["RewardItem"][1]["Id"] = 730003 -- 【库】+3Stone[属性:0]【表格】赤练石+3*12
	tTexasMomoAct_Award[3322021]["RewardItem"][1]["Attr"] = "0 12 3" -- +3Stone(赠)*12
	tTexasMomoAct_Award[3322021]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322021]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322021]["RewardEffect"]["Effect"] = "angelwing"


	-- ===微光星陨石礼包
	-- ===索引: 3322022
	-- ===删除: 3322022,1
	-- ===
	tTexasMomoAct_Award[3322022] = {}
	tTexasMomoAct_Award[3322022]["LogId"] = 10002459
	tTexasMomoAct_Award[3322022]["DeleteItem"] = {}
	tTexasMomoAct_Award[3322022]["DeleteItem"][1] = {}
	tTexasMomoAct_Award[3322022]["DeleteItem"][1]["Id"] = 3322022 -- 【库】微光星陨石礼包[属性:11]
	tTexasMomoAct_Award[3322022]["RewardItem"] = {}
	tTexasMomoAct_Award[3322022]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322022]["RewardItem"][1]["Id"] = 3009000 -- 【库】TwilightStarStone[属性:9]【表格】微光星陨石
	tTexasMomoAct_Award[3322022]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的TwilightStarStone*1
	tTexasMomoAct_Award[3322022]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322022]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322022]["RewardEffect"]["Effect"] = "angelwing"


	-- ===1赤炼石（赠）礼包
	-- ===索引: 3322023
	-- ===删除: 3322023,1
	-- ===
	tTexasMomoAct_Award[3322023] = {}
	tTexasMomoAct_Award[3322023]["LogId"] = 10002459
	tTexasMomoAct_Award[3322023]["DeleteItem"] = {}
	tTexasMomoAct_Award[3322023]["DeleteItem"][1] = {}
	tTexasMomoAct_Award[3322023]["DeleteItem"][1]["Id"] = 3322023 -- 【库】+1赤炼石（赠）礼包[属性:11]
	tTexasMomoAct_Award[3322023]["RewardItem"] = {}
	tTexasMomoAct_Award[3322023]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322023]["RewardItem"][1]["Id"] = 730001 -- 【库】+1Stone[属性:0]【表格】+1赤炼石赠
	tTexasMomoAct_Award[3322023]["RewardItem"][1]["Attr"] = "0 1 3" -- +1Stone(赠)*1
	tTexasMomoAct_Award[3322023]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322023]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322023]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3赤炼石（赠）礼包
	-- ===索引: 3322024
	-- ===删除: 3322024,1
	-- ===
	tTexasMomoAct_Award[3322024] = {}
	tTexasMomoAct_Award[3322024]["LogId"] = 10002459
	tTexasMomoAct_Award[3322024]["DeleteItem"] = {}
	tTexasMomoAct_Award[3322024]["DeleteItem"][1] = {}
	tTexasMomoAct_Award[3322024]["DeleteItem"][1]["Id"] = 3322024 -- 【库】+3赤炼石（赠）礼包[属性:11]
	tTexasMomoAct_Award[3322024]["RewardItem"] = {}
	tTexasMomoAct_Award[3322024]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322024]["RewardItem"][1]["Id"] = 730003 -- 【库】+3Stone[属性:0]【表格】+3赤炼石赠
	tTexasMomoAct_Award[3322024]["RewardItem"][1]["Attr"] = "0 1 3" -- +3Stone(赠)*1
	tTexasMomoAct_Award[3322024]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322024]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322024]["RewardEffect"]["Effect"] = "angelwing"


	-- ===明亮星陨石礼包
	-- ===索引: 3322025
	-- ===删除: 3322025,1
	-- ===
	tTexasMomoAct_Award[3322025] = {}
	tTexasMomoAct_Award[3322025]["LogId"] = 10002459
	tTexasMomoAct_Award[3322025]["DeleteItem"] = {}
	tTexasMomoAct_Award[3322025]["DeleteItem"][1] = {}
	tTexasMomoAct_Award[3322025]["DeleteItem"][1]["Id"] = 3322025 -- 【库】明亮星陨石礼包[属性:11]
	tTexasMomoAct_Award[3322025]["RewardItem"] = {}
	tTexasMomoAct_Award[3322025]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322025]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9]【表格】明亮星陨石
	tTexasMomoAct_Award[3322025]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tTexasMomoAct_Award[3322025]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322025]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322025]["RewardEffect"]["Effect"] = "angelwing"


	-- ===流星（赠）礼包
	-- ===索引: 3322026
	-- ===删除: 3322026,1
	-- ===
	tTexasMomoAct_Award[3322026] = {}
	tTexasMomoAct_Award[3322026]["LogId"] = 10002459
	tTexasMomoAct_Award[3322026]["DeleteItem"] = {}
	tTexasMomoAct_Award[3322026]["DeleteItem"][1] = {}
	tTexasMomoAct_Award[3322026]["DeleteItem"][1]["Id"] = 3322026 -- 【库】流星（赠）礼包[属性:11]
	tTexasMomoAct_Award[3322026]["RewardItem"] = {}
	tTexasMomoAct_Award[3322026]["RewardItem"][1] = {}
	tTexasMomoAct_Award[3322026]["RewardItem"][1]["Id"] = 1088001 -- 【库】Meteor[属性:0]【表格】流星*1
	tTexasMomoAct_Award[3322026]["RewardItem"][1]["Attr"] = "0 1 3" -- Meteor(赠)*1
	tTexasMomoAct_Award[3322026]["RewardEffect"] = {}
	tTexasMomoAct_Award[3322026]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTexasMomoAct_Award[3322026]["RewardEffect"]["Effect"] = "angelwing"

-- 所有的怪物id
local tTexasMomoAct_MonsterId = {5433,5434,5435}

--光效配置
local tTexasMomoAct_Effect = {}
	--进入光效
	tTexasMomoAct_Effect[1] = {}
	tTexasMomoAct_Effect[1]["SzObj"] = "self"
	tTexasMomoAct_Effect[1]["Effect"] = "gift_tzgxtzks"

--记录波数	
local 	tIndex = {}
	
	
local tTexasMomoAct_MonsterData = {}
	-- 5433,'碧血腾蛇',
	-- 5434,'噩梦女妖',
	-- 5435,'食梦貘',1,
	tTexasMomoAct_MonsterData["Monster"] = {}
	tTexasMomoAct_MonsterData["Monster"][1] = {}
	tTexasMomoAct_MonsterData["Monster"][1][1] = {}
	tTexasMomoAct_MonsterData["Monster"][1][1]["MonsterId"] = 5433
	tTexasMomoAct_MonsterData["Monster"][1][1]["GenId"] = 27892
	tTexasMomoAct_MonsterData["Monster"][1][1]["Num"] = 60

	tTexasMomoAct_MonsterData["Monster"][2] = {}
	tTexasMomoAct_MonsterData["Monster"][2][1] = {}
	tTexasMomoAct_MonsterData["Monster"][2][1]["MonsterId"] = 5433
	tTexasMomoAct_MonsterData["Monster"][2][1]["GenId"] = 27892
	tTexasMomoAct_MonsterData["Monster"][2][1]["Num"] = 55
	tTexasMomoAct_MonsterData["Monster"][2][2] = {}
	tTexasMomoAct_MonsterData["Monster"][2][2]["MonsterId"] = 5434
	tTexasMomoAct_MonsterData["Monster"][2][2]["GenId"] = 27893
	tTexasMomoAct_MonsterData["Monster"][2][2]["Num"] = 2
	
	tTexasMomoAct_MonsterData["Monster"][3] = {}
	tTexasMomoAct_MonsterData["Monster"][3][1] = {}
	tTexasMomoAct_MonsterData["Monster"][3][1]["MonsterId"] = 5433
	tTexasMomoAct_MonsterData["Monster"][3][1]["GenId"] = 27892
	tTexasMomoAct_MonsterData["Monster"][3][1]["Num"] = 50
	tTexasMomoAct_MonsterData["Monster"][3][2] = {}
	tTexasMomoAct_MonsterData["Monster"][3][2]["MonsterId"] = 5434
	tTexasMomoAct_MonsterData["Monster"][3][2]["GenId"] = 27893
	tTexasMomoAct_MonsterData["Monster"][3][2]["Num"] = 2
	tTexasMomoAct_MonsterData["Monster"][3][3] = {}
	tTexasMomoAct_MonsterData["Monster"][3][3]["MonsterId"] = 5435
	tTexasMomoAct_MonsterData["Monster"][3][3]["GenId"] = 27894
	tTexasMomoAct_MonsterData["Monster"][3][3]["Num"] = 1

	
--坐标
	local tTexasMomoAct_Pos = {}
	tTexasMomoAct_Pos["MonsterPos"] = {}
	tTexasMomoAct_Pos["MonsterPos"][1] = {41,73}
	tTexasMomoAct_Pos["MonsterPos"][2] = {44,69}
	tTexasMomoAct_Pos["MonsterPos"][3] = {48,64}
	tTexasMomoAct_Pos["MonsterPos"][4] = {52,59}
	tTexasMomoAct_Pos["MonsterPos"][5] = {57,54}
	tTexasMomoAct_Pos["MonsterPos"][6] = {62,50}
	tTexasMomoAct_Pos["MonsterPos"][7] = {67,45}
	tTexasMomoAct_Pos["MonsterPos"][8] = {73,42}
	tTexasMomoAct_Pos["MonsterPos"][9] = {56,70}
	tTexasMomoAct_Pos["MonsterPos"][10] = {66,66}
	tTexasMomoAct_Pos["MonsterPos"][11] = {30,56}
	tTexasMomoAct_Pos["MonsterPos"][12] = {30,47}
	tTexasMomoAct_Pos["MonsterPos"][13] = {27,40}
	tTexasMomoAct_Pos["MonsterPos"][14] = {29,34}
	tTexasMomoAct_Pos["MonsterPos"][15] = {32,30}
	tTexasMomoAct_Pos["MonsterPos"][16] = {49,49}
	tTexasMomoAct_Pos["MonsterPos"][17] = {77,48}
	tTexasMomoAct_Pos["MonsterPos"][18] = {76,56}
	tTexasMomoAct_Pos["MonsterPos"][19] = {62,31}
	tTexasMomoAct_Pos["MonsterPos"][20] = {53,27}
	tTexasMomoAct_Pos["MonsterPos"][21] = {47,30}
	tTexasMomoAct_Pos["MonsterPos"][22] = {43,36}
	tTexasMomoAct_Pos["MonsterPos"][23] = {54,38}
	tTexasMomoAct_Pos["MonsterPos"][24] = {59,32}
	tTexasMomoAct_Pos["MonsterPos"][25] = {39,31}
	tTexasMomoAct_Pos["MonsterPos"][26] = {38,43}
	tTexasMomoAct_Pos["MonsterPos"][27] = {49,37}

	
--Log
local tTexasMomoAct_Log = {}
	-- 玩家进入副本 350 22025
	tTexasMomoAct_Log["EmoneyMoMoLog"] = "350	22403	0	0	1	"
	tTexasMomoAct_Log["DelAllItem"] = "0,0,%d,%d,10002459,2,0,0"	
	
----------------------------------逻辑部分---------------------------------------------

--过期判断
function TexasMomoAct_CheckTime(nItemId)
	
	--判断时间
	if  CommonFunc_GetBeforeActivityTime(tActivityTime["TexasMomoAct"]["ActivityTime"]) then
		return
	end
	
	if not Sys_ChkFullTime(tActivityTime["TexasMomoAct"]["ActivityTime"]) then
		local nCount = Get_CountItemType(nItemId,0)
		if nCount > 0 then
			if Item_DelAllItemByType(nItemId) then
				local sDelItemLog = string.format(tTexasMomoAct_Log["DelAllItem"],nItemId,nCount)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tTexasMomoAct_Text["Sys"]["OverTime"])
			end
		end	
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")

end

--删除所有怪物
function TexasMomoAct_DelMonsterAll(nUserId)
	local nMapId = Get_UserMapId(nUserId)
	
	for i = 1 , #tTexasMomoAct_MonsterId do
		Monster_DelMonster(nMapId,tTexasMomoAct_MonsterId[i])
		Sys_SetTempData(1,nMapId,tTexasMomoAct_MonsterId[i],0)
	end

end 

--进入副本
function TexasMomoAct_EnterInstance(nItemId)
	local nUserId = Get_UserId()
	--判断时间
	if  CommonFunc_GetBeforeActivityTime(tActivityTime["TexasMomoAct"]["ActivityTime"]) then
		return
	end
	
	if not Sys_ChkFullTime(tActivityTime["TexasMomoAct"]["ActivityTime"]) then
		return
	end
	
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(tTexasMomoAct_Text["MsgBox"]["NoTiket"])
		return 
	end 
	--组队无法进入副本
	if Get_UserTeamNumbers() > 0 then  
		Sys_MsgBox(tTexasMomoAct_Text["MsgBox"]["TeamTip"])
		return
	end
	
	local nMapId = Get_UserMapId(nUserId)
	--检查地图属性
	if Get_MapDoc(nMapId) == tTexasMomoAct_Data["MapDoc"] then
		return
	end
	
	local nDataType = tTexasMomoAct_Stc[1]["DataType"]
	local nEventType =tTexasMomoAct_Stc[1]["EventType"]
	if Task_StcInterval(nDataType,nEventType,1,4,nUserId) then
		Task_SetStatistic(nDataType,nEventType,0,1,nUserId)
		Task_SetStcTimestamp(nDataType,nEventType,0,nUserId)
	end
	local nData = Get_UserStatisticValue(nDataType,nEventType,nUserId)
	if nData > 0 then 
		Sys_MsgBox(tTexasMomoAct_Text["MsgBox"]["HaveEnter"])
		return
	end 
	
	-- 移动到副本
	if User_EnterInstance(tTexasMomoAct_Data["InstanceType"]) then
		if tIndex[nUserId] ~= nil then 
			tIndex[nUserId] = 0
		end
		--播光效
		local sSzObj = tTexasMomoAct_Effect[1]["SzObj"]
		local sEffect = tTexasMomoAct_Effect[1]["Effect"]
		User_EffectAdd(sSzObj,sEffect,nUserId)
		--屏幕抖动
		User_Screffect(1,nUserId)
		--屏幕变暗变亮
		User_Screffect(4,nUserId)
	
		--删除所有的怪
		TexasMomoAct_DelMonsterAll(nUserId)
		local nNowMapId = Get_UserMapId(nUserId)
		Task_SetStatistic(nDataType,nEventType,1,1,nUserId)
		Task_SetStcTimestamp(nDataType,nEventType,0,nUserId)
		Sys_SaveEmoneyBuy(tTexasMomoAct_Log["EmoneyMoMoLog"])

		--刷第一波怪
		for i=1,#tTexasMomoAct_MonsterData["Monster"][1] do
			local nMonsterId = tTexasMomoAct_MonsterData["Monster"][1][i]["MonsterId"]
			local nGenId = tTexasMomoAct_MonsterData["Monster"][1][i]["GenId"]
			local nNum = tTexasMomoAct_MonsterData["Monster"][1][i]["Num"]
			
			for j =1,nNum do 
				-- 随机一个区域
				local tNewRandom = tTexasMomoAct_Pos["MonsterPos"]
				local nRandomIndex = math.random(1,#tNewRandom)
				local tRandom = tTexasMomoAct_Pos["MonsterPos"][nRandomIndex]
				local nPosX = tRandom[1]
				local nPosY = tRandom[2]
				Monster_AddAndCount(nNowMapId,nPosX,nPosY,nGenId,nMonsterId)
					
			end 
		end
		Sys_MsgBox(tTexasMomoAct_Text["Sys"]["EterSuccess"],"TexasMomoAct_FindMonster</N>"..nUserId)

	end
	
end
--导航寻找怪物
function TexasMomoAct_FindMonster(nUserId)
	local nUserId = nUserId or Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	
	if Get_MapDoc(nMapId) ~= tTexasMomoAct_Data["MapDoc"] then
		return
	end
	
	local nPosXGo = tTexasMomoAct_Data["PosX"]
	local nPosYGo = tTexasMomoAct_Data["PosY"] 	
	Sys_GotoSomeWhere(nPosXGo,nPosYGo,nMapId)
		
end 

--判断是否还有怪物
function TexasMomoAct_CheckMonster(nMapId)

	local nFlag = 0
	for i=1,#tTexasMomoAct_MonsterId do
		local nMonsterId = tTexasMomoAct_MonsterId[i]
		local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
		if nMonsterNum > 0 then 
			nFlag = nFlag + 1
		end 
	end 

	return nFlag
end 

function TexasMomoAct_KillMonster(nMonsterId)
	
	--判断时间
	if  CommonFunc_GetBeforeActivityTime(tActivityTime["TexasMomoAct"]["ActivityTime"]) then
		return
	end
	
	if not Sys_ChkFullTime(tActivityTime["TexasMomoAct"]["ActivityTime"]) then
		return
	end
	
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)

	if Get_MapDoc(nMapId) ~= tTexasMomoAct_Data["MapDoc"] then
		return
	end

	Monster_Death(nMonsterId,nMapId)
	local nPosX = Get_MonsterPosX()
	local nPosY = Get_MonsterPosY()

	TexasMomoAct_MapDropItem(nPosX,nPosY,nMapId,nMonsterId)

	--获取怪物数量
	local nMonsterNum =  TexasMomoAct_CheckMonster(nMapId)

	if nMonsterNum == 0 then
		if tIndex[nUserId] == nil then 
			tIndex[nUserId] = 2
		else
			tIndex[nUserId] = 1 + tIndex[nUserId] 
		end 

		local nIndex = tIndex[nUserId] 
		if nIndex <= 3 then 
			if tTexasMomoAct_MonsterData["Monster"][nIndex] ~= nil then 
				for i=1,#tTexasMomoAct_MonsterData["Monster"][nIndex] do
					local nNewMonsterId = tTexasMomoAct_MonsterData["Monster"][nIndex][i]["MonsterId"]
					local nGenId = tTexasMomoAct_MonsterData["Monster"][nIndex][i]["GenId"]
					local nNum = tTexasMomoAct_MonsterData["Monster"][nIndex][i]["Num"]
					
					for j =1,nNum do 
						-- 随机一个区域
						local tNewRandom = tTexasMomoAct_Pos["MonsterPos"]
						local nRandomIndex = math.random(1,#tNewRandom)
						local tRandom = tTexasMomoAct_Pos["MonsterPos"][nRandomIndex]
						local nPosX = tRandom[1]
						local nPosY = tRandom[2]
						Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nNewMonsterId)
							
					end 
				end 
			end 
			if nIndex >= 2 then 
				Sys_MsgBox(tTexasMomoAct_Text["MsgBox"][nIndex])
			end 
		else

			TexasMomoAct_FindToExit(nUserId)
		end 
	end

end 

--陷阱触发离开
function TexasMomoAct_TrapLeave(nTrapType)
	Sys_MsgBox(tTexasMomoAct_Text["MsgBox"]["Leave"],"TexasMomoAct_LeaveOut")
end

--离开
function TexasMomoAct_LeaveOut()
	TexasMomoAct_Leave(Get_UserId())
end
--离开副本
function TexasMomoAct_Leave(nUserId)
	local nUserMapId = Get_UserMapId(nUserId)

	if Get_MapDoc(nUserMapId) == tTexasMomoAct_Data["MapDoc"] then
		-- 重置地图怪物数
		TexasMomoAct_ResetMapMonsterNum(nUserId)
		TexasMomoAct_Out()
	end
	
end

--传送出去
function TexasMomoAct_Out(nUserId)
	-- local nFlag = ShuraBattleGround_CheckSever()
	local nMapId = tTexasMomoAct_Data["Trans"][1]["MapId"]
	local nPosX = tTexasMomoAct_Data["Trans"][1]["PosX"]
	local nPosY = tTexasMomoAct_Data["Trans"][1]["PosY"]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,2,2,1,nUserId)
end

--杀怪地面奖励
function TexasMomoAct_MapDropItem(nPosX,nPosY,nMapId,nMonsterId)
	
	local nCellx = tTexasMomoAct_Data["Cellx"]
	local nCelly = tTexasMomoAct_Data["Celly"]
	local nExistTime = tTexasMomoAct_Data["ExistTime"]
	for i,v in pairs(tTexasMomoAct_Data["BossDrop"][nMonsterId]) do
		if Sys_Random(v["ItemChanceSum"],v["ItemChanceNum"]) then
			local nItemId = v["ItemId"]
			local nItemNum = v["Num"]
			Map_DropMultiItems(nMapId, nItemId, nPosX-12, nPosY-10, nCellx, nCelly, nItemNum, nExistTime)
		end
	end
end


--获取当前地图某只怪的数量
-- function ShuraBattleGround_GetMapMonsterNum(nMonsterId,nUserId)
	
	-- local nMapId = Get_UserMapId(nUserId)
	-- return Get_SysTempData(1,nMapId,nMonsterId)
-- end

--重置地图怪物数量
function TexasMomoAct_ResetMapMonsterNum(nUserId)
	local nMapId = Get_UserMapId(nUserId)
	for k,v in pairs(tTexasMomoAct_MonsterId) do
		Sys_SetTempData(1,nMapId,v,0)
	end
end

--寻路到出口
function TexasMomoAct_FindToExit(nUserId)
	local nUserId = nUserId or Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	
	if Get_MapDoc(nMapId) ~= tTexasMomoAct_Data["MapDoc"] then
		return
	end
	
	local nPosX = Get_TrapPosX(995672)
	local nPosY = Get_TrapPosY(995672)
	
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId)
end
function TexasMomoAct_Option(nItemId,nOption)
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(tTexasMomoAct_Text["MsgBox"]["Noitem"])
		return 
	end 
	
	if Item_DelItem(nItemId) then
		local sDelItemLog = string.format(tTexasMomoAct_Log["DelAllItem"],nItemId,1)
		Sys_SaveActionFestivalLog(sDelItemLog)
		RewardTemplate_UseItemAndMsg(tTexasMomoAct_Award[nItemId][nOption])
	end
end 

---------------------------------物品部分---------------------------------------------
-- 3322011,'赏金区传送令'

tItem[3322011] = tItem[3322011] or {}
tItem[3322011]["Function"] = function(nItemId,sItemName)
	TexasMomoAct_CheckTime(nItemId)
end

tItemFace[3322011] = 1604
tItem[3322011]["Text1-1"] = {111}
tItem[3322011]["Text111"] = tTexasMomoAct_Text[3322011]["Text111"]

tItem[3322011]["tOption1-1"] = {111,112}
tItem[3322011]["Option111"] = tTexasMomoAct_Text[3322011]["Option111"]
tItem[3322011]["Option112"] = tTexasMomoAct_Text[3322011]["Option112"]
tItem[3322011]["OptionFunc111"] = "TexasMomoAct_EnterInstance</N>3322011"


-- 3322018,'70级极品武器可选包（赠）
tItem[3322018] = tItem[3322018] or {}

tItemFace[3322018] = 1165
tItem[3322018]["Text1-1"] = {111}
tItem[3322018]["Text111"] = tTexasMomoAct_Text[3322018]["Text111"]

tItem[3322018]["tOption1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126,1127,1128,1129,1130}
tItem[3322018]["Option111"] = tTexasMomoAct_Text[3322018]["Option111"]
tItem[3322018]["Option112"] = tTexasMomoAct_Text[3322018]["Option112"]
tItem[3322018]["Option113"] = tTexasMomoAct_Text[3322018]["Option113"]
tItem[3322018]["Option114"] = tTexasMomoAct_Text[3322018]["Option114"]
tItem[3322018]["Option115"] = tTexasMomoAct_Text[3322018]["Option115"]
tItem[3322018]["Option116"] = tTexasMomoAct_Text[3322018]["Option116"]
tItem[3322018]["Option117"] = tTexasMomoAct_Text[3322018]["Option117"]
tItem[3322018]["Option118"] = tTexasMomoAct_Text[3322018]["Option118"]
tItem[3322018]["Option119"] = tTexasMomoAct_Text[3322018]["Option119"]
tItem[3322018]["Option1110"] = tTexasMomoAct_Text[3322018]["Option1110"]
tItem[3322018]["Option1111"] = tTexasMomoAct_Text[3322018]["Option1111"]
tItem[3322018]["Option1112"] = tTexasMomoAct_Text[3322018]["Option1112"]
tItem[3322018]["Option1113"] = tTexasMomoAct_Text[3322018]["Option1113"]
tItem[3322018]["Option1114"] = tTexasMomoAct_Text[3322018]["Option1114"]
tItem[3322018]["Option1115"] = tTexasMomoAct_Text[3322018]["Option1115"]
tItem[3322018]["Option1116"] = tTexasMomoAct_Text[3322018]["Option1116"]
tItem[3322018]["Option1117"] = tTexasMomoAct_Text[3322018]["Option1117"]
tItem[3322018]["Option1118"] = tTexasMomoAct_Text[3322018]["Option1118"]
tItem[3322018]["Option1119"] = tTexasMomoAct_Text[3322018]["Option1119"]
tItem[3322018]["Option1120"] = tTexasMomoAct_Text[3322018]["Option1120"]
tItem[3322018]["Option1121"] = tTexasMomoAct_Text[3322018]["Option1121"]
tItem[3322018]["Option1122"] = tTexasMomoAct_Text[3322018]["Option1122"]
tItem[3322018]["Option1123"] = tTexasMomoAct_Text[3322018]["Option1123"]
tItem[3322018]["Option1124"] = tTexasMomoAct_Text[3322018]["Option1124"]
tItem[3322018]["Option1125"] = tTexasMomoAct_Text[3322018]["Option1125"]
tItem[3322018]["Option1126"] = tTexasMomoAct_Text[3322018]["Option1126"]
tItem[3322018]["Option1127"] = tTexasMomoAct_Text[3322018]["Option1127"]
tItem[3322018]["Option1128"] = tTexasMomoAct_Text[3322018]["Option1128"]
tItem[3322018]["Option1129"] = tTexasMomoAct_Text[3322018]["Option1129"]
tItem[3322018]["Option1130"] = tTexasMomoAct_Text[3322018]["Option1130"]

tItem[3322018]["OptionFunc111"] = "TexasMomoAct_Option</N>3322018</N>1"
tItem[3322018]["OptionFunc112"] = "TexasMomoAct_Option</N>3322018</N>2"
tItem[3322018]["OptionFunc113"] = "TexasMomoAct_Option</N>3322018</N>3"
tItem[3322018]["OptionFunc114"] = "TexasMomoAct_Option</N>3322018</N>4"
tItem[3322018]["OptionFunc115"] = "TexasMomoAct_Option</N>3322018</N>5"
tItem[3322018]["OptionFunc116"] = "TexasMomoAct_Option</N>3322018</N>6"
tItem[3322018]["OptionFunc117"] = "TexasMomoAct_Option</N>3322018</N>7"
tItem[3322018]["OptionFunc118"] = "TexasMomoAct_Option</N>3322018</N>8"
tItem[3322018]["OptionFunc119"] = "TexasMomoAct_Option</N>3322018</N>9"
tItem[3322018]["OptionFunc1110"] = "TexasMomoAct_Option</N>3322018</N>10"
tItem[3322018]["OptionFunc1111"] = "TexasMomoAct_Option</N>3322018</N>11"
tItem[3322018]["OptionFunc1112"] = "TexasMomoAct_Option</N>3322018</N>12"
tItem[3322018]["OptionFunc1113"] = "TexasMomoAct_Option</N>3322018</N>13"
tItem[3322018]["OptionFunc1114"] = "TexasMomoAct_Option</N>3322018</N>14"
tItem[3322018]["OptionFunc1115"] = "TexasMomoAct_Option</N>3322018</N>15"
tItem[3322018]["OptionFunc1116"] = "TexasMomoAct_Option</N>3322018</N>16"
tItem[3322018]["OptionFunc1117"] = "TexasMomoAct_Option</N>3322018</N>17"
tItem[3322018]["OptionFunc1118"] = "TexasMomoAct_Option</N>3322018</N>18"
tItem[3322018]["OptionFunc1119"] = "TexasMomoAct_Option</N>3322018</N>19"
tItem[3322018]["OptionFunc1120"] = "TexasMomoAct_Option</N>3322018</N>20"
tItem[3322018]["OptionFunc1121"] = "TexasMomoAct_Option</N>3322018</N>21"
tItem[3322018]["OptionFunc1122"] = "TexasMomoAct_Option</N>3322018</N>22"
tItem[3322018]["OptionFunc1123"] = "TexasMomoAct_Option</N>3322018</N>23"
tItem[3322018]["OptionFunc1124"] = "TexasMomoAct_Option</N>3322018</N>24"
tItem[3322018]["OptionFunc1125"] = "TexasMomoAct_Option</N>3322018</N>25"
tItem[3322018]["OptionFunc1126"] = "TexasMomoAct_Option</N>3322018</N>26"
tItem[3322018]["OptionFunc1127"] = "TexasMomoAct_Option</N>3322018</N>27"
tItem[3322018]["OptionFunc1128"] = "TexasMomoAct_Option</N>3322018</N>28"
tItem[3322018]["OptionFunc1129"] = "TexasMomoAct_Option</N>3322018</N>29"
tItem[3322018]["OptionFunc1130"] = "TexasMomoAct_Option</N>3322018</N>30"

-- 3322012,'装备法宝大礼盒',11,9847
-- 3322013,'70级极品头盔礼包（赠）'
-- 3322014,'70级极品水晶项链包（赠）                               
-- 3322015,'70级极品白玉戒指包（赠）
-- 3322016,'70级极品衣服礼包（赠）'
-- 3322017,'70级极品云锦靴包（赠）
-- 3322019,'炼气修行提升包',11,9847
-- 3322020,'流星卷（赠）*7包',11,98
-- 3322021,'+3赤炼石（赠）*12包',11                               
-- 3322022,'微光星陨石礼包',11,9847
-- 3322023,'+1赤炼石（赠）礼包',11,
-- 3322024,'+3赤炼石（赠）礼包',11,
-- 3322025,'明亮星陨石礼包',11,9847
-- 3322026,'流星（赠）礼包',11,9847

tItem[3322012] = tItem[3322012] or {}
tItem[3322012]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tTexasMomoAct_Award[nItemId])
end
tItem[3322013] = tItem[3322012] or {}
tItem[3322014] = tItem[3322012] or {}
tItem[3322015] = tItem[3322012] or {}
tItem[3322016] = tItem[3322012] or {}
tItem[3322017] = tItem[3322012] or {}
tItem[3322019] = tItem[3322012] or {}
tItem[3322020] = tItem[3322012] or {}
tItem[3322021] = tItem[3322012] or {}
tItem[3322022] = tItem[3322012] or {}
tItem[3322023] = tItem[3322012] or {}
tItem[3322024] = tItem[3322012] or {}
tItem[3322025] = tItem[3322012] or {}
tItem[3322026] = tItem[3322012] or {}



---------------------------------怪物部分---------------------------------------------
local tTexasMomoAct_KillMonster = {}

tTexasMomoAct_KillMonster[1] = {}
tTexasMomoAct_KillMonster[1]["Function"]= TexasMomoAct_KillMonster
tTexasMomoAct_KillMonster[1]["MonsterId"] = {5433}
table.insert(tMonsterDrop_AreaLoad,tTexasMomoAct_KillMonster[1])

tTexasMomoAct_KillMonster[2] = {}
tTexasMomoAct_KillMonster[2]["Function"]= TexasMomoAct_KillMonster
tTexasMomoAct_KillMonster[2]["MonsterId"] = {5434}
table.insert(tMonsterDrop_AreaLoad,tTexasMomoAct_KillMonster[2])

tTexasMomoAct_KillMonster[3] = {}
tTexasMomoAct_KillMonster[3]["Function"]= TexasMomoAct_KillMonster
tTexasMomoAct_KillMonster[3]["MonsterId"] = {5435}
table.insert(tMonsterDrop_AreaLoad,tTexasMomoAct_KillMonster[3])

---------------------------------陷阱部分---------------------------------------------

tTrap[2440] = tTrap[2440] or {}
tTrap[2440]["Function"] = function(nTrapId,nTrapType)
	TexasMomoAct_TrapLeave(nTrapType)
end







