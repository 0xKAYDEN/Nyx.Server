------------------------------------------------------------------------------------
--Name:		190523[英文征服][活动脚本]6月灵珠觅宝活动制作6.04-7.01
--Creator: 	戴鑫海
--Created:	2019/05/23
------------------------------------------------------------------------------------
----------------------------------数据部分配置----------------------------------
----lua.ini 41309
----3321691 普通寻龙积分
----3321692 高级寻龙积分
----3321693 罗伯特的邀请函
----3321702 苍龙夜帝包
----3321703 花之吻包
----24297 5045罗伯特
----24298 5046普通兑换使
----24299 5048高级兑换使
----24300 神龙宝箱
----24307 5048高级兑换使二期
----stc掩码19731-19734
--19731--背包信
--19732--二次确认
--19733 =1普通宝箱
--		=2高级宝箱
----mapid 10663-10664
----lookface 2581-2584
----goodsID 1398-1407
----ShopId 121-122
---- 995671 trap 2439 traptype
local tDragonSoul_data = {}
	tDragonSoul_data["NormalMap"] = {}
	tDragonSoul_data["NormalMap"]["MapId"] = 10663
	tDragonSoul_data["NormalMap"]["PosX"] = 52
	tDragonSoul_data["NormalMap"]["PosY"] = 52
	tDragonSoul_data["MainNpc"]= {}
	tDragonSoul_data["MainNpc"]["NpcId"] = 24297
	tDragonSoul_data["MainNpc"]["PosX"] = 323
	tDragonSoul_data["MainNpc"]["PosY"] = 452
	tDragonSoul_data["MainNpc2"]= {}
	tDragonSoul_data["MainNpc2"]["NpcId"] = 24298
	tDragonSoul_data["MainNpc2"]["PosX"] = 327
	tDragonSoul_data["MainNpc2"]["PosY"] = 452
	tDragonSoul_data["MainNpc3"]= {}
	tDragonSoul_data["MainNpc3"]["NpcId"] = 24299
	tDragonSoul_data["MainNpc3"]["PosX"] = 331
	tDragonSoul_data["MainNpc3"]["PosY"] = 452
	tDragonSoul_data["MainNpc4"]= {}
	tDragonSoul_data["MainNpc4"]["NpcId"] = 24307
	tDragonSoul_data["MainNpc4"]["PosX"] = 331
	tDragonSoul_data["MainNpc4"]["PosY"] = 452
	tDragonSoul_data["MainMap"] = {}
	tDragonSoul_data["MainMap"]["MapId"] =1002
	tDragonSoul_data["MainMap"]["PosX"] = 323
	tDragonSoul_data["MainMap"]["PosY"] = 449
	tDragonSoul_data["GiftServer"] = {}
	tDragonSoul_data["GiftServer"]["MapId"] =1036
	tDragonSoul_data["GiftServer"]["PosX"] = 268
	tDragonSoul_data["GiftServer"]["PosY"] = 232
	tDragonSoul_data["RareMap"] = {}
	tDragonSoul_data["RareMap"]["MapId"] =10664
	tDragonSoul_data["RareMap"]["PosX"] = 52
	tDragonSoul_data["RareMap"]["PosY"] = 52
	tDragonSoul_data["Ticket"]={}
	tDragonSoul_data["Ticket"][1] = 4200006
	tDragonSoul_data["Ticket"][2] = 4200010
local tDragonSoul_stc = {}
	tDragonSoul_stc["GetLetter"] = {}
	tDragonSoul_stc["GetLetter"]["EventType"] = 197
	tDragonSoul_stc["GetLetter"]["DataType"] = 31
	
	tDragonSoul_stc["Twicecheck"] = {}
	tDragonSoul_stc["Twicecheck"]["EventType"] = 197
	tDragonSoul_stc["Twicecheck"]["DataType"] = 32
	
	tDragonSoul_stc["Rank"] = {}
	tDragonSoul_stc["Rank"]["EventType"] = 197
	tDragonSoul_stc["Rank"]["DataType"] = 33
local tDragonSoul_Reward = {}
	-- ===普通灵珠秘境
	-- ===索引: tDragonSoul_Reward[1]
	-- ===LogId: 10002455
	tDragonSoul_Reward[1] = {}
	tDragonSoul_Reward[1]["ItemChanceSum"] = 10000
	tDragonSoul_Reward[1]["LogId"] = 10002455
	-- 寻龙积分·凡 - 30.00%
	tDragonSoul_Reward[1][1] = {}
	tDragonSoul_Reward[1][1]["RandomItemChanceType"] = 2
	tDragonSoul_Reward[1][1]["ItemChance"] = 3600
	tDragonSoul_Reward[1][1]["RewardItem"] = {}
	tDragonSoul_Reward[1][1]["RewardItem"][1] = {}
	tDragonSoul_Reward[1][1]["RewardItem"][1]["Id"] = 3321691 -- 【库】 3321691 【库里没有该物品】[属性:], 【表格】寻龙积分·凡
	tDragonSoul_Reward[1][1]["RewardItem"][1]["Attr"] = "0 100 3" --  3321691 【库里没有该物品】（赠）*100
	tDragonSoul_Reward[1][1]["EmoneyLog"] = "350	22266	0	0	1	"
	-- 寻龙积分·凡 - 25.00%
	tDragonSoul_Reward[1][2] = {}
	tDragonSoul_Reward[1][2]["RandomItemChanceType"] = 2
	tDragonSoul_Reward[1][2]["ItemChance"] = 2500
	tDragonSoul_Reward[1][2]["RewardItem"] = {}
	tDragonSoul_Reward[1][2]["RewardItem"][1] = {}
	tDragonSoul_Reward[1][2]["RewardItem"][1]["Id"] = 3321691 -- 【库】 3321691 【库里没有该物品】[属性:], 【表格】寻龙积分·凡
	tDragonSoul_Reward[1][2]["RewardItem"][1]["Attr"] = "0 200 3" --  3321691 【库里没有该物品】（赠）*200
	tDragonSoul_Reward[1][2]["EmoneyLog"] = "350	22267	0	0	1	"
	-- 寻龙积分·凡 - 18.00%
	tDragonSoul_Reward[1][3] = {}
	tDragonSoul_Reward[1][3]["RandomItemChanceType"] = 2
	tDragonSoul_Reward[1][3]["ItemChance"] = 1800
	tDragonSoul_Reward[1][3]["RewardItem"] = {}
	tDragonSoul_Reward[1][3]["RewardItem"][1] = {}
	tDragonSoul_Reward[1][3]["RewardItem"][1]["Id"] = 3321691 -- 【库】 3321691 【库里没有该物品】[属性:], 【表格】寻龙积分·凡
	tDragonSoul_Reward[1][3]["RewardItem"][1]["Attr"] = "0 300 3" --  3321691 【库里没有该物品】（赠）*300
	tDragonSoul_Reward[1][3]["EmoneyLog"] = "350	22268	0	0	1	"
	-- 7阶灵珠 - 26.00%
	tDragonSoul_Reward[1][4] = {}
	tDragonSoul_Reward[1][4]["RandomItemChanceType"] = 2
	tDragonSoul_Reward[1][4]["ItemChance"] = 2000
	tDragonSoul_Reward[1][4]["RewardItem"] = {}
	tDragonSoul_Reward[1][4]["RewardItem"][1] = {}
	tDragonSoul_Reward[1][4]["RewardItem"][1]["Id"] = 4200007 -- 【库】7阶灵珠[属性:72], 【表格】7阶灵珠
	tDragonSoul_Reward[1][4]["RewardItem"][1]["Attr"] = "0 1" -- 7阶灵珠*1
	tDragonSoul_Reward[1][4]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoul_Reward[1][4]["EmoneyLog"] = "350	22269	0	0	1	"
	-- 8阶灵珠 - 0.99%
	tDragonSoul_Reward[1][5] = {}
	tDragonSoul_Reward[1][5]["RandomItemChanceType"] = 2
	tDragonSoul_Reward[1][5]["ItemChance"] = 99
	tDragonSoul_Reward[1][5]["RewardItem"] = {}
	tDragonSoul_Reward[1][5]["RewardItem"][1] = {}
	tDragonSoul_Reward[1][5]["RewardItem"][1]["Id"] = 4200008 -- 【库】8阶灵珠[属性:72], 【表格】8阶灵珠
	tDragonSoul_Reward[1][5]["RewardItem"][1]["Attr"] = "0 1" -- 8阶灵珠*1
	tDragonSoul_Reward[1][5]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoul_Reward[1][5]["EmoneyLog"] = "350	22270	0	0	1	"
	-- 10阶灵珠 - 0.01%
	tDragonSoul_Reward[1][6] = {}
	tDragonSoul_Reward[1][6]["RandomItemChanceType"] = 2
	tDragonSoul_Reward[1][6]["ItemChance"] = 1
	tDragonSoul_Reward[1][6]["RewardItem"] = {}
	tDragonSoul_Reward[1][6]["RewardItem"][1] = {}
	tDragonSoul_Reward[1][6]["RewardItem"][1]["Id"] = 4200010 -- 【库】10阶灵珠[属性:72], 【表格】10阶灵珠
	tDragonSoul_Reward[1][6]["RewardItem"][1]["Attr"] = "0 1" -- 10阶灵珠*1
	tDragonSoul_Reward[1][6]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoul_Reward[1][6]["EmoneyLog"] = "350	22271	0	0	1	"

	tDragonSoul_Reward[2] = {}
	-- ===高级灵珠秘境
	-- ===索引: tDragonSoul_Reward[2]
	-- ===LogId: 10002455
	tDragonSoul_Reward[2]["ItemChanceSum"] = 10000
	tDragonSoul_Reward[2]["LogId"] = 10002455
	-- 寻龙积分·珍 - 30.00%
	tDragonSoul_Reward[2][1] = {}
	tDragonSoul_Reward[2][1]["RandomItemChanceType"] = 2
	tDragonSoul_Reward[2][1]["ItemChance"] = 3600
	tDragonSoul_Reward[2][1]["RewardItem"] = {}
	tDragonSoul_Reward[2][1]["RewardItem"][1] = {}
	tDragonSoul_Reward[2][1]["RewardItem"][1]["Id"] = 3321692 -- 【库】 3321692 【库里没有该物品】[属性:], 【表格】寻龙积分·珍
	tDragonSoul_Reward[2][1]["RewardItem"][1]["Attr"] = "0 100 3" --  3321692 【库里没有该物品】（赠）*100
	tDragonSoul_Reward[2][1]["EmoneyLog"] = "350	22272	0	0	1	"
	-- 寻龙积分·珍 - 25.00%
	tDragonSoul_Reward[2][2] = {}
	tDragonSoul_Reward[2][2]["RandomItemChanceType"] = 2
	tDragonSoul_Reward[2][2]["ItemChance"] = 2500
	tDragonSoul_Reward[2][2]["RewardItem"] = {}
	tDragonSoul_Reward[2][2]["RewardItem"][1] = {}
	tDragonSoul_Reward[2][2]["RewardItem"][1]["Id"] = 3321692 -- 【库】 3321692 【库里没有该物品】[属性:], 【表格】寻龙积分·珍
	tDragonSoul_Reward[2][2]["RewardItem"][1]["Attr"] = "0 200 3" --  3321692 【库里没有该物品】（赠）*200
	tDragonSoul_Reward[2][2]["EmoneyLog"] = "350	22273	0	0	1	"
	-- 寻龙积分·珍 - 18.00%
	tDragonSoul_Reward[2][3] = {}
	tDragonSoul_Reward[2][3]["RandomItemChanceType"] = 2
	tDragonSoul_Reward[2][3]["ItemChance"] = 1800
	tDragonSoul_Reward[2][3]["RewardItem"] = {}
	tDragonSoul_Reward[2][3]["RewardItem"][1] = {}
	tDragonSoul_Reward[2][3]["RewardItem"][1]["Id"] = 3321692 -- 【库】 3321692 【库里没有该物品】[属性:], 【表格】寻龙积分·珍
	tDragonSoul_Reward[2][3]["RewardItem"][1]["Attr"] = "0 300 3" --  3321692 【库里没有该物品】（赠）*300
	tDragonSoul_Reward[2][3]["EmoneyLog"] = "350	22274	0	0	1	"
	-- 11阶灵珠 - 26.00%
	tDragonSoul_Reward[2][4] = {}
	tDragonSoul_Reward[2][4]["RandomItemChanceType"] = 2
	tDragonSoul_Reward[2][4]["ItemChance"] = 2000
	tDragonSoul_Reward[2][4]["RewardItem"] = {}
	tDragonSoul_Reward[2][4]["RewardItem"][1] = {}
	tDragonSoul_Reward[2][4]["RewardItem"][1]["Id"] = 4200011 -- 【库】11阶灵珠[属性:72], 【表格】11阶灵珠
	tDragonSoul_Reward[2][4]["RewardItem"][1]["Attr"] = "0 1" -- 11阶灵珠*1
	tDragonSoul_Reward[2][4]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoul_Reward[2][4]["EmoneyLog"] = "350	22275	0	0	1	"
	-- 12阶灵珠 - 0.99%
	tDragonSoul_Reward[2][5] = {}
	tDragonSoul_Reward[2][5]["RandomItemChanceType"] = 2
	tDragonSoul_Reward[2][5]["ItemChance"] = 99
	tDragonSoul_Reward[2][5]["RewardItem"] = {}
	tDragonSoul_Reward[2][5]["RewardItem"][1] = {}
	tDragonSoul_Reward[2][5]["RewardItem"][1]["Id"] = 4200012 -- 【库】12阶灵珠[属性:72], 【表格】12阶灵珠
	tDragonSoul_Reward[2][5]["RewardItem"][1]["Attr"] = "0 1" -- 12阶灵珠*1
	tDragonSoul_Reward[2][5]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoul_Reward[2][5]["EmoneyLog"] = "350	22276	0	0	1	"
	-- 14阶灵珠 - 0.01%
	tDragonSoul_Reward[2][6] = {}
	tDragonSoul_Reward[2][6]["RandomItemChanceType"] = 2
	tDragonSoul_Reward[2][6]["ItemChance"] = 1
	tDragonSoul_Reward[2][6]["RewardItem"] = {}
	tDragonSoul_Reward[2][6]["RewardItem"][1] = {}
	tDragonSoul_Reward[2][6]["RewardItem"][1]["Id"] = 4200014 -- 【库】14阶灵珠[属性:72], 【表格】14阶灵珠
	tDragonSoul_Reward[2][6]["RewardItem"][1]["Attr"] = "0 1" -- 14阶灵珠*1
	tDragonSoul_Reward[2][6]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tDragonSoul_Reward[2][6]["EmoneyLog"] = "350	22277	0	0	1	"
	tDragonSoul_Reward[3331795] = {}
	-- ===双人坐骑自选包
	-- ===索引: tDragonSoul_Reward[3331795][1]
	-- ===删除:3331795,1
	-- ===
	tDragonSoul_Reward[3331795][1] = {}
	tDragonSoul_Reward[3331795][1]["LogId"] = 10002455
	tDragonSoul_Reward[3331795][1]["DeleteItem"] = {}
	tDragonSoul_Reward[3331795][1]["DeleteItem"][1] = {}
	tDragonSoul_Reward[3331795][1]["DeleteItem"][1]["Id"] = 3331795 -- 【库】 3331795 【enzf库里没有该物品】[属性:]
	tDragonSoul_Reward[3331795][1]["RewardItem"] = {}
	tDragonSoul_Reward[3331795][1]["RewardItem"][1] = {}
	tDragonSoul_Reward[3331795][1]["RewardItem"][1]["Id"] = 205000 -- CelestialDragon(Freedom)[205000][属性:0][叠加:0][金币:0], 【表格】CelestialDragon（Freedom）
	tDragonSoul_Reward[3331795][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑CelestialDragon(Freedom)*1
	tDragonSoul_Reward[3331795][1]["RewardEffect"] = {}
	tDragonSoul_Reward[3331795][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoul_Reward[3331795][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===双人坐骑自选包
	-- ===索引: tDragonSoul_Reward[3331795][2]
	-- ===删除:3331795,1
	-- ===
	tDragonSoul_Reward[3331795][2] = {}
	tDragonSoul_Reward[3331795][2]["LogId"] = 10002455
	tDragonSoul_Reward[3331795][2]["DeleteItem"] = {}
	tDragonSoul_Reward[3331795][2]["DeleteItem"][1] = {}
	tDragonSoul_Reward[3331795][2]["DeleteItem"][1]["Id"] = 3331795 -- 【库】 3331795 【enzf库里没有该物品】[属性:]
	tDragonSoul_Reward[3331795][2]["RewardItem"] = {}
	tDragonSoul_Reward[3331795][2]["RewardItem"][1] = {}
	tDragonSoul_Reward[3331795][2]["RewardItem"][1]["Id"] = 205900 -- PerfectBliss[205900][属性:0][叠加:0][金币:0], 【表格】PerfectBliss
	tDragonSoul_Reward[3331795][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑PerfectBliss*1
	tDragonSoul_Reward[3331795][2]["RewardEffect"] = {}
	tDragonSoul_Reward[3331795][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoul_Reward[3331795][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===双人坐骑自选包
	-- ===索引: tDragonSoul_Reward[3331795][3]
	-- ===删除:3331795,1
	-- ===
	tDragonSoul_Reward[3331795][3] = {}
	tDragonSoul_Reward[3331795][3]["LogId"] = 10002455
	tDragonSoul_Reward[3331795][3]["DeleteItem"] = {}
	tDragonSoul_Reward[3331795][3]["DeleteItem"][1] = {}
	tDragonSoul_Reward[3331795][3]["DeleteItem"][1]["Id"] = 3331795 -- 【库】 3331795 【enzf库里没有该物品】[属性:]
	tDragonSoul_Reward[3331795][3]["RewardItem"] = {}
	tDragonSoul_Reward[3331795][3]["RewardItem"][1] = {}
	tDragonSoul_Reward[3331795][3]["RewardItem"][1]["Id"] = 205901 -- BrightMoon(Wings)[205901][属性:0][叠加:0][金币:0], 【表格】BrightMoon（Wings）
	tDragonSoul_Reward[3331795][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BrightMoon(Wings)*1
	tDragonSoul_Reward[3331795][3]["RewardEffect"] = {}
	tDragonSoul_Reward[3331795][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoul_Reward[3331795][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===双人坐骑自选包
	-- ===索引: tDragonSoul_Reward[3331795][4]
	-- ===删除:3331795,1
	-- ===
	tDragonSoul_Reward[3331795][4] = {}
	tDragonSoul_Reward[3331795][4]["LogId"] = 10002455
	tDragonSoul_Reward[3331795][4]["DeleteItem"] = {}
	tDragonSoul_Reward[3331795][4]["DeleteItem"][1] = {}
	tDragonSoul_Reward[3331795][4]["DeleteItem"][1]["Id"] = 3331795 -- 【库】 3331795 【enzf库里没有该物品】[属性:]
	tDragonSoul_Reward[3331795][4]["RewardItem"] = {}
	tDragonSoul_Reward[3331795][4]["RewardItem"][1] = {}
	tDragonSoul_Reward[3331795][4]["RewardItem"][1]["Id"] = 205003 --  205003 【enzf库里没有该物品】, 【表格】HeavenDragon（Unique）
	tDragonSoul_Reward[3331795][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑 205003 【enzf库里没有该物品】*1
	tDragonSoul_Reward[3331795][4]["RewardEffect"] = {}
	tDragonSoul_Reward[3331795][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDragonSoul_Reward[3331795][4]["RewardEffect"]["Effect"] = "angelwing"

	local ImperialDragonArmorPack = {}
	-- ===ImperialDragonArmorPack
	-- ===索引: ImperialDragonArmorPack[3321702]
	-- ===删除: 3321702,1
	ImperialDragonArmorPack[3321702] = {}
	ImperialDragonArmorPack[3321702]["DeleteItem"] = {}
	ImperialDragonArmorPack[3321702]["DeleteItem"][1] = {}
	ImperialDragonArmorPack[3321702]["DeleteItem"][1]["Id"] = 3321702 -- 【库】 3321702 【库里没有该物品】[属性:]
	ImperialDragonArmorPack[3321702]["RewardItem"] = {}
	ImperialDragonArmorPack[3321702]["RewardItem"][1] = {}
	ImperialDragonArmorPack[3321702]["RewardItem"][1]["Id"] = 195425 -- 【库】ImperialDragonArmor[属性:0], 【表格】ImperialDragonArmor
	ImperialDragonArmorPack[3321702]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑ImperialDragonArmor*1


	local BlossomRomancePack = {}
	-- ===BlossomRomance（Charm）Pack
	-- ===索引: BlossomRomance（Charm）Pack[3006703]
	-- ===删除: 3321703,1
	BlossomRomancePack[3321703] = {}
	BlossomRomancePack[3321703]["DeleteItem"] = {}
	BlossomRomancePack[3321703]["DeleteItem"][1] = {}
	BlossomRomancePack[3321703]["DeleteItem"][1]["Id"] = 3321703 -- 【库】 3321703 【库里没有该物品】[属性:]
	BlossomRomancePack[3321703]["RewardItem"] = {}
	BlossomRomancePack[3321703]["RewardItem"][1] = {}
	BlossomRomancePack[3321703]["RewardItem"][1]["Id"] = 195405 -- 【库】BlossomRomance(Charm)[属性:0], 【表格】BlossomRomance（Charm）
	BlossomRomancePack[3321703]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑BlossomRomance(Charm)*1
	
	local DragonSoul_Log = {}
	DragonSoul_Log["Log"] = "0,0,%d,%d,10002455,2,0,0"
	DragonSoul_Log["EMoneyLog"]={}
	DragonSoul_Log["EMoneyLog"][1]= {}
	DragonSoul_Log["EMoneyLog"][1][1] = "350	22266	0	0	1	"
	DragonSoul_Log["EMoneyLog"][1][2] = "350	22267	0	0	1	"
	DragonSoul_Log["EMoneyLog"][1][3] = "350	22268	0	0	1	"
	DragonSoul_Log["EMoneyLog"][1][4] = "350	22269	0	0	1	"
	DragonSoul_Log["EMoneyLog"][1][5] = "350	22270	0	0	1	"
	DragonSoul_Log["EMoneyLog"][1][6] = "350	22271	0	0	1	"
	DragonSoul_Log["EMoneyLog"][2] = {}
	DragonSoul_Log["EMoneyLog"][2][1] = "350	22272	0	0	1	"
	DragonSoul_Log["EMoneyLog"][2][2] = "350	22273	0	0	1	"
	DragonSoul_Log["EMoneyLog"][2][3] = "350	22274	0	0	1	"
	DragonSoul_Log["EMoneyLog"][2][4] = "350	22275	0	0	1	"
	DragonSoul_Log["EMoneyLog"][2][5] = "350	22276	0	0	1	"
	DragonSoul_Log["EMoneyLog"][2][6] = "350	22277	0	0	1	"
	DragonSoul_Log["EMoneyLog"][4200006] = "350	22264	0	0	1	"
	DragonSoul_Log["EMoneyLog"][4200010] = "350	22265	0	0	1	"
	
----------------------------------上线触发----------------------------------
function DragonSoul_Login()
	local nEventType = tDragonSoul_stc["Twicecheck"]["EventType"]
	local nDataType = tDragonSoul_stc["Twicecheck"]["DataType"]
	Task_SetStatistic(nEventType,nDataType,0,1)
	Task_SetStcTimestamp(nEventType,nDataType,0)
end
-- function DragonSoul_GetLetter()
	-- local nEventType = tDragonSoul_stc["GetLetter"]["EventType"]
	-- local nDataType = tDragonSoul_stc["GetLetter"]["DataType"]
	-- local nItemId = 3321693
-- ----判断时间
	-- if not Sys_ChkFullTime(tActivityTime["Pearl"]["ActivityTime"]) then
		-- return
	-- end
-- ----判断掩码
	-- if Task_ChkStcValue(nEventType,nDataType,">=",1) then
		-- return
	-- end
-- ----判断背包
	-- if not User_CheckLeftSpace(1) then
		-- User_TalkChannel2005(tBackpackLetter_Text[3321693]["NoSpace"])
		-- return
	-- end
	-- Task_SetStatistic(nEventType,nDataType,1,1)
	-- RewardTemplate_UseItemAndMsg(tBackpackLetter_Activity[nItemId])
	-- User_TalkChannel2005(tBackpackLetter_Text[3321693]["Reward"])
-- end
function DragonSoul_OpenPack(nItemId,nIndex)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tDragonSoul_Reward[nItemId][nIndex])
	
	if not bJudge then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tDragonSoul_Reward[nItemId][nIndex],nUserId,bJudge)

end
----------------------------------模块部分配置----------------------------------
--NPC 24297 罗伯特
tNpcFace[5045] = 235
tNpcGossip[24297] = tNpcGossip[24297] or DefaultNpc:new{}
tNpcGossip[24297]["OptionHidden"] = 1
tNpcGossip[24297]["DialogueText"] = tDragonSoul_Text[24297]
-- tNpcGossip[24297]["Function"] = function(nNpcId)
	-- if CommonFunc_GetAfterActivityTime(tActivityTime["Pearl"]["ActivityTime"]) then
	-- LinkNpcGossipFunc_New(nNpcId,"1-3")
	-- return
	-- end
	-- if CommonFunc_GetBeforeActivityTime(tActivityTime["Pearl"]["ActivityTime"]) then
	-- LinkNpcGossipFunc_New(nNpcId,"1-2")
	-- return
	-- end
	-- LinkNpcGossipFunc_New(nNpcId,"1-1")
-- end

tNpcGossip[24297]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[24297]["tOption1-2"] = {121}
tNpcGossip[24297]["ChkFunc1-2"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["Pearl"]["ActivityTime"])
end

tNpcGossip[24297]["Text1-3"] = {131}
tNpcGossip[24297]["tOption1-3"] = {41}
tNpcGossip[24297]["ChkFunc1-3"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["Pearl"]["ActivityTime2"])
end

tNpcGossip[24297]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[24297]["tOption1-1"] = {1,2,3}
tNpcGossip[24297]["ChkFunc1-1"] = function()
	local Ret = tDragonSoul_stc["Rank"]["EventType"]
	local Rdt = tDragonSoul_stc["Rank"]["DataType"]
	if not Sys_ChkFullTime(tActivityTime["Pearl"]["ActivityTime"]) and not Sys_ChkFullTime(tActivityTime["Pearl"]["ActivityTime2"]) then
		return false
	end
	if Sys_ChkFullTime(tActivityTime["Pearl"]["ActivityTime2"]) then
		tNpcGossip[24297]["Text115"] = tDragonSoul_Text[24297]["Text116"]
		tNpcGossip[24297]["Text114"] = tDragonSoul_Text[24297]["Text117"]
	end

	return true
end
tNpcGossip[24297]["OptionPoint1"] = "2-1"
tNpcGossip[24297]["OptionChkFunc1"] = function ()
	local Ret = tDragonSoul_stc["Rank"]["EventType"]
	local Rdt = tDragonSoul_stc["Rank"]["DataType"]
	return not Task_ChkStcValue(Ret,Rdt,"==",2)
end
tNpcGossip[24297]["OptionPoint2"] = "2-2"
tNpcGossip[24297]["OptionChkFunc2"] = function ()
	local Ret = tDragonSoul_stc["Rank"]["EventType"]
	local Rdt = tDragonSoul_stc["Rank"]["DataType"]
	return not Task_ChkStcValue(Ret,Rdt,"==",1)
end
tNpcGossip[24297]["OptionPoint3"] = "2-3"

tNpcGossip[24297]["Text2-1"] = {211,212,213,215,212,216}
tNpcGossip[24297]["tOption2-1"] = {4,5}
tNpcGossip[24297]["OptionFunc4"] = "DragonSoulGotoNormal"
tNpcGossip[24297]["OptionPoint5"] = 1

tNpcGossip[24297]["Text2-2"] = {211,212,223,224,212,216}
tNpcGossip[24297]["tOption2-2"] = {6,5}
tNpcGossip[24297]["OptionFunc6"] = "DragonSoulGotoRare"
tNpcGossip[24297]["OptionPoint5"] = 1

tNpcGossip[24297]["Text2-3"] = {231,212,233,234,235}
tNpcGossip[24297]["tOption2-3"] = {7}

tNpcGossip[24297]["Text2-4"] = {241}
tNpcGossip[24297]["tOption2-4"] = {41}

tNpcGossip[24297]["Text2-5"] = {251}
tNpcGossip[24297]["tOption2-5"] = {41}

tNpcGossip[24297]["Text3-1"] = {311}
tNpcGossip[24297]["tOption3-1"] = {8,9,10}
tNpcGossip[24297]["OptionFunc8"] = "DragonSoulGotoNormal2"


tNpcGossip[24297]["OptionPoint10"] = "4-1"

tNpcGossip[24297]["Text3-2"] = {321}
tNpcGossip[24297]["tOption3-2"] = {12,9,10}
tNpcGossip[24297]["OptionFunc12"] = "DragonSoulGotoRare2"

tNpcGossip[24297]["Text4-1"] = {411}
tNpcGossip[24297]["tOption4-1"] = {11,9}
tNpcGossip[24297]["OptionFunc11"] = "CancelTwiceConfirm"



--NPC 24300 神龙宝箱
tNpcFace[2584] = 744
tNpcGossip[24300] = tNpcGossip[24300] or DefaultNpc:new{}
tNpcGossip[24300]["OptionHidden"] = 1
tNpcGossip[24300]["DialogueText"] = tDragonSoul_Text[24300]
tNpcGossip[24300]["Text1-1"] = {111}
tNpcGossip[24300]["tOption1-1"] = {1,2,3}
tNpcGossip[24300]["ChkFunc1-1"] = function()
	local Ret = tDragonSoul_stc["Rank"]["EventType"]
	local Rdt = tDragonSoul_stc["Rank"]["DataType"]
	if Task_ChkStcValue(Ret,Rdt,">=",1) then
		return true
	end
	return false
end
tNpcGossip[24300]["Text1-2"] = {111}
tNpcGossip[24300]["tOption1-2"] = {3}
tNpcGossip[24300]["ChkFunc1-2"] = function()
	local Ret = tDragonSoul_stc["Rank"]["EventType"]
	local Rdt = tDragonSoul_stc["Rank"]["DataType"]
	if Task_ChkStcValue(Ret,Rdt,"==",0) then
		return true
	end
	return false
end
tNpcGossip[24300]["OptionFunc1"] = "DragonSoulOpenBox"
tNpcGossip[24300]["OptionFunc3"] = "ChgmaptoTwin"

tTrap[2439] = tTrap[2439] or {}
tTrap[2439]["Function"] = function(nTrapId,nTrapType)
	ChgmaptoTwin(nTrapId,nTrapType)
end

tItem[3321702] = tItem[3321702] or {}
tItem[3321702]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(ImperialDragonArmorPack[nItemId])
end

tItem[3321703] = tItem[3321703] or {}
tItem[3321703]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(BlossomRomancePack[nItemId])
end

tItem[3321691] = tItem[3321691] or {}
tItem[3321691]["Function"] = function(nItemId,sItemName)
	local nNpcId = tDragonSoul_data["MainNpc2"]["NpcId"]
	NpcPosition_PathFind(nNpcId)
end

tItem[3321692] = tItem[3321692] or {}
tItem[3321692]["Function"] = function(nItemId,sItemName)
	local nNpcId = tDragonSoul_data["MainNpc3"]["NpcId"]
	NpcPosition_PathFind(nNpcId)
end
tItemFace[3331795] = 521
tItem[3331795] = tItem[3331795] or {}
tItem[3331795]["DialogueText"] = tDragonSoul_Text[3331795]
tItem[3331795]["Text1-1"] = {111}
tItem[3331795]["tOption1-1"] = {1,2,3,4}
tItem[3331795]["OptionFunc1"] = "DragonSoul_OpenPack</N>3331795</N>1"
tItem[3331795]["OptionFunc2"] = "DragonSoul_OpenPack</N>3331795</N>2"
tItem[3331795]["OptionFunc3"] = "DragonSoul_OpenPack</N>3331795</N>3"
tItem[3331795]["OptionFunc4"] = "DragonSoul_OpenPack</N>3331795</N>4"
-- tItem[3321693] = tItem[3321693] or {}
-- tItem[3321693]["DialogueText"] = tBackpackLetter_Text[3321693]["Text"]
-- tItem[3321693]["Function"] = function(nItemId,sItemName)
-- ----判断时间后
	-- if CommonFunc_GetAfterActivityTime(tActivityTime["Pearl"]["ActivityTime"]) then
		-- if Item_DelItem(nItemId) then
			-- User_TalkChannel2005(tBackpackLetter_Text[3321693]["Timeout"])
		-- end
		-- return
	-- end
	-- LinkItemGossipFunc_New(nItemId,"1-1")
-- end
-- tItem[3321693]["Text1-1"] = {111,112}
-- tItem[3321693]["tOption1-1"] = {1}
-- tItem[3321693]["OptionFunc1"] = "HeadtoMainNpc</N>3321693"
	

----------------------------------逻辑部分配置----------------------------------
function DragonSoulGotoNormal()
	local nNpcId = tDragonSoul_data["MainNpc"]["NpcId"]
	local nMapId = tDragonSoul_data["NormalMap"]["MapId"]
	local nBoundX = tDragonSoul_data["NormalMap"]["PosX"]
	local nBoundY = tDragonSoul_data["NormalMap"]["PosY"]
	local nEventType = tDragonSoul_stc["Twicecheck"]["EventType"]
	local nDataType = tDragonSoul_stc["Twicecheck"]["DataType"]
	local Ret = tDragonSoul_stc["Rank"]["EventType"]
	local Rdt = tDragonSoul_stc["Rank"]["DataType"]
	local nItemId = tDragonSoul_data["Ticket"][1]
----判断是否屏蔽二次确认
	if Task_ChkStcValue(nEventType,nDataType,"==",0) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
----判断掩码
	if Task_ChkStcValue(Ret,Rdt,"==",2) then
		User_TalkChannel2005(tDragonSoul_Text["StopGetIn10"])
		return
	end
----判断掩码
	if Task_ChkStcValue(Ret,Rdt,"==",1) then
		User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,1,1,1)
		User_TalkChannel2005(tDragonSoul_Text["GotoNormal"])
		return
	end
----判断是否有道具删除
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		Sys_SaveActionFestivalLog(string.format(DragonSoul_Log["Log"],nItemId,1))
		Sys_SaveEmoneyBuy(DragonSoul_Log["EMoneyLog"][nItemId])
		User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,1,1,1)
		User_TalkChannel2005(tDragonSoul_Text["GotoNormal"])
		Task_SetStatistic(Ret,Rdt,1,1)
		Task_SetStcTimestamp(Ret,Rdt,0)
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"2-4")
	User_TalkChannel2005(tDragonSoul_Text[24297]["Text241"])
end
function DragonSoulGotoNormal2()
	local nNpcId = tDragonSoul_data["MainNpc"]["NpcId"]
	local nMapId = tDragonSoul_data["NormalMap"]["MapId"]
	local nBoundX = tDragonSoul_data["NormalMap"]["PosX"]
	local nBoundY = tDragonSoul_data["NormalMap"]["PosY"]
	local Ret = tDragonSoul_stc["Rank"]["EventType"]
	local Rdt = tDragonSoul_stc["Rank"]["DataType"]
	local nItemId = tDragonSoul_data["Ticket"][1]
----判断掩码
	if Task_ChkStcValue(Ret,Rdt,"==",2) then
		User_TalkChannel2005(tDragonSoul_Text["StopGetIn10"])
		return
	end
----判断掩码
	if Task_ChkStcValue(Ret,Rdt,"==",1) then
		User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,1,1,1)
		User_TalkChannel2005(tDragonSoul_Text["GotoNormal"])
		return
	end
----判断是否有道具删除
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		Sys_SaveActionFestivalLog(string.format(DragonSoul_Log["Log"],nItemId,1))
		Sys_SaveEmoneyBuy(DragonSoul_Log["EMoneyLog"][nItemId])
		User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,1,1,1)
		User_TalkChannel2005(tDragonSoul_Text["GotoNormal"])
		Task_SetStatistic(Ret,Rdt,1,1)
		Task_SetStcTimestamp(Ret,Rdt,0)
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"2-4")
	User_TalkChannel2005(tDragonSoul_Text[nNpcId]["Text241"])
end

function DragonSoulGotoRare()
	local nNpcId = tDragonSoul_data["MainNpc"]["NpcId"]
	local nMapId = tDragonSoul_data["NormalMap"]["MapId"]
	local nBoundX = tDragonSoul_data["RareMap"]["PosX"]
	local nBoundY = tDragonSoul_data["RareMap"]["PosY"]
	local nEventType = tDragonSoul_stc["Twicecheck"]["EventType"]
	local nDataType = tDragonSoul_stc["Twicecheck"]["DataType"]
	local Ret = tDragonSoul_stc["Rank"]["EventType"]
	local Rdt = tDragonSoul_stc["Rank"]["DataType"]
	local nItemId = tDragonSoul_data["Ticket"][2]
----判断是否屏蔽二次确认
	if not Task_ChkStcValue(nEventType,nDataType,">=",1) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
----判断掩码
	if Task_ChkStcValue(Ret,Rdt,"==",1) then
		User_TalkChannel2005(tDragonSoul_Text["StopGetIn6"])
		return
	end
----判断掩码
	if Task_ChkStcValue(Ret,Rdt,"==",2) then
		User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,1,1,1)
		User_TalkChannel2005(tDragonSoul_Text["GotoRare"])
		return
	end
----判断是否有道具删除
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		Sys_SaveActionFestivalLog(string.format(DragonSoul_Log["Log"],nItemId,1))
		Sys_SaveEmoneyBuy(DragonSoul_Log["EMoneyLog"][nItemId])
		User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,1,1,1)
		User_TalkChannel2005(tDragonSoul_Text["GotoRare"])
		Task_SetStatistic(Ret,Rdt,2,1)
		Task_SetStcTimestamp(Ret,Rdt,0)
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"2-5")
	User_TalkChannel2005(tDragonSoul_Text[nNpcId]["Text251"])
end
function DragonSoulGotoRare2()
	local nNpcId = tDragonSoul_data["MainNpc"]["NpcId"]
	local nMapId = tDragonSoul_data["NormalMap"]["MapId"]
	local nBoundX = tDragonSoul_data["RareMap"]["PosX"]
	local nBoundY = tDragonSoul_data["RareMap"]["PosY"]
	local Ret = tDragonSoul_stc["Rank"]["EventType"]
	local Rdt = tDragonSoul_stc["Rank"]["DataType"]
	local nItemId = tDragonSoul_data["Ticket"][2]
----判断掩码
	if Task_ChkStcValue(Ret,Rdt,"==",1) then
		User_TalkChannel2005(tDragonSoul_Text["StopGetIn6"])
		return
	end
----判断掩码
	if Task_ChkStcValue(Ret,Rdt,"==",2) then
		User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,1,1,1)
		User_TalkChannel2005(tDragonSoul_Text["GotoRare"])
		return
	end
----判断是否有道具删除
	if Item_ChkItem(nItemId)and Item_DelItem(nItemId) then
		Sys_SaveActionFestivalLog(string.format(DragonSoul_Log["Log"],nItemId,1))
		Sys_SaveEmoneyBuy(DragonSoul_Log["EMoneyLog"][nItemId])
		User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,1,1,1)
		User_TalkChannel2005(tDragonSoul_Text["GotoRare"])
		Task_SetStatistic(Ret,Rdt,2,1)
		Task_SetStcTimestamp(Ret,Rdt,0)
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"2-5")
	User_TalkChannel2005(tDragonSoul_Text[nNpcId]["Text251"])
end
function CancelTwiceConfirm()
	local nEventType = tDragonSoul_stc["Twicecheck"]["EventType"]
	local nDataType = tDragonSoul_stc["Twicecheck"]["DataType"]
	Task_SetStatistic(nEventType,nDataType,1,1)
	Task_SetStcTimestamp(nEventType,nDataType,0)
end
function DragonSoulOpenBox()
	local sRewardStr = ""
	local sMsg = tDragonSoul_Text["NoSpace"]
	local Ret = tDragonSoul_stc["Rank"]["EventType"]
	local Rdt = tDragonSoul_stc["Rank"]["DataType"]
	local nRank = Get_UserStatisticValue(Ret,Rdt)
	local nSpace = RewardTemplate_GetRandomSpace(tDragonSoul_Reward,nRank)
	local nNum
--判断掩码
	if Task_ChkStcValue(Ret,Rdt,"==",0) then
		return
	end
--判断背包
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(sMsg)
		Sys_MsgBox(sMsg,nil,nil)
		return
	end
	Task_SetStatistic(Ret,Rdt,0,1)
	Task_SetStcTimestamp(Ret,Rdt,0)
--根据掩码给奖励
	local tReward,sRewardStr = RewardTemplate_RandomReward(tDragonSoul_Reward,nRank)
	Sys_MsgBox(string.format(tDragonSoul_Text[24300]["Reward"],sRewardStr),"ChgmaptoTwin","ChgmaptoTwin")
end
function ChgmaptoTwin()
	local nMapId = tDragonSoul_data["MainMap"]["MapId"]
	local nBoundX = tDragonSoul_data["MainMap"]["PosX"]
	local nBoundY = tDragonSoul_data["MainMap"]["PosY"]
	if SpecialServer_ChkNoGiftServer() then
		nMapId =  tDragonSoul_data["GiftServer"]["MapId"]
		nBoundX = tDragonSoul_data["GiftServer"]["PosX"]
		nBoundY = tDragonSoul_data["GiftServer"]["PosY"]
	end
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,5,5,0)
end

--------------------上线触发----------------------------------
table.insert(tSystem_PlayLogin_Func,DragonSoul_Login)
--table.insert(tSystem_PlayLogin_Func,DragonSoul_GetLetter)