------------------------------------------------------------------------------------
--Name：            190116[英文征服][活动脚本]道士强化节促销及发奖action(2.21-3.6)
--Creator:      蔡颖静
--Created:     2019/01/16
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--前缀：
-- tTaoistImproveSales_

--logid:12001281

-- stc掩码说明 
-- stc (189,85) --背包信掩码

-- 全局表说明
-- global 
----------------------------------表配置部分--------------------------------------------
local tTaoistImproveSales_Data={}

	--等级判断
	tTaoistImproveSales_Data["LevelJudge"]={}
	tTaoistImproveSales_Data["LevelJudge"]["Level"]=80
	tTaoistImproveSales_Data["LevelJudge"]["Metempsychosis"]=0
-----------------------------------------------------道士专区---------------------------------------------

	--道士专购赤炼石+8包 买赠品+8赤炼石（730008）*1，送非赠普通玄晶（3311629）*3
	tTaoistImproveSales_Data[3319382]={}
	tTaoistImproveSales_Data[3319382]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319382]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319382]["DeleteItem"][1]["Id"] = 3319382
	tTaoistImproveSales_Data[3319382]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319382]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319382]["RewardItem"][1]["Id"] = 730008
	tTaoistImproveSales_Data[3319382]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319382]["RewardItem"][2] = {}
	tTaoistImproveSales_Data[3319382]["RewardItem"][2]["Id"] = 3311629
	tTaoistImproveSales_Data[3319382]["RewardItem"][2]["Attr"] = "0 3"
	tTaoistImproveSales_Data[3319382]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319382]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319382]["LogId"] = 12001281

	--道士专购赤炼石+6包 买赠品+6赤炼石（730006）*1，送非赠普通玄晶（3311629）*1
	tTaoistImproveSales_Data[3319383]={}
	tTaoistImproveSales_Data[3319383]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319383]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319383]["DeleteItem"][1]["Id"] = 3319383
	tTaoistImproveSales_Data[3319383]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319383]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319383]["RewardItem"][1]["Id"] = 730006
	tTaoistImproveSales_Data[3319383]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319383]["RewardItem"][2] = {}
	tTaoistImproveSales_Data[3319383]["RewardItem"][2]["Id"] = 3311629
	tTaoistImproveSales_Data[3319383]["RewardItem"][2]["Attr"] = "0 1"
	tTaoistImproveSales_Data[3319383]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319383]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319383]["LogId"] = 12001281
	
	--道士专购开洞包A 买非赠良品玄晶（3311630）*1，送非赠普通玄晶（3311629）*1
	tTaoistImproveSales_Data[3319384]={}
	tTaoistImproveSales_Data[3319384]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319384]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319384]["DeleteItem"][1]["Id"] = 3319384
	tTaoistImproveSales_Data[3319384]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319384]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319384]["RewardItem"][1]["Id"] = 3311630
	tTaoistImproveSales_Data[3319384]["RewardItem"][1]["Attr"] = "0 1"
	tTaoistImproveSales_Data[3319384]["RewardItem"][2] = {}
	tTaoistImproveSales_Data[3319384]["RewardItem"][2]["Id"] = 3311629
	tTaoistImproveSales_Data[3319384]["RewardItem"][2]["Attr"] = "0 1"
	tTaoistImproveSales_Data[3319384]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319384]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319384]["LogId"] = 12001281
	
	--道士专购开洞包B 买非赠极品玄晶（3311633）*1，送非赠普通玄晶（3311629）*3
	tTaoistImproveSales_Data[3319385]={}
	tTaoistImproveSales_Data[3319385]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319385]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319385]["DeleteItem"][1]["Id"] = 3319385
	tTaoistImproveSales_Data[3319385]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319385]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319385]["RewardItem"][1]["Id"] = 3311633
	tTaoistImproveSales_Data[3319385]["RewardItem"][1]["Attr"] = "0 1"
	tTaoistImproveSales_Data[3319385]["RewardItem"][2] = {}
	tTaoistImproveSales_Data[3319385]["RewardItem"][2]["Id"] = 3311629
	tTaoistImproveSales_Data[3319385]["RewardItem"][2]["Attr"] = "0 3"
	tTaoistImproveSales_Data[3319385]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319385]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319385]["LogId"] = 12001281

	--道士专购真武宝石包 买非赠优质真武宝石（700133），送非赠普通玄晶（3311629）*6
	tTaoistImproveSales_Data[3319386]={}
	tTaoistImproveSales_Data[3319386]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319386]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319386]["DeleteItem"][1]["Id"] = 3319386
	tTaoistImproveSales_Data[3319386]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319386]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319386]["RewardItem"][1]["Id"] = 700133
	tTaoistImproveSales_Data[3319386]["RewardItem"][1]["Attr"] = "0 1"
	tTaoistImproveSales_Data[3319386]["RewardItem"][2] = {}
	tTaoistImproveSales_Data[3319386]["RewardItem"][2]["Id"] = 3311629
	tTaoistImproveSales_Data[3319386]["RewardItem"][2]["Attr"] = "0 6"
	tTaoistImproveSales_Data[3319386]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319386]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319386]["LogId"] = 12001281

	--道士专购大固化石包 买赠大固化石(723695)*1，送非赠普通玄晶（3311629）*1
	tTaoistImproveSales_Data[3319387]={}
	tTaoistImproveSales_Data[3319387]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319387]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319387]["DeleteItem"][1]["Id"] = 3319387
	tTaoistImproveSales_Data[3319387]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319387]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319387]["RewardItem"][1]["Id"] = 723695
	tTaoistImproveSales_Data[3319387]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319387]["RewardItem"][2] = {}
	tTaoistImproveSales_Data[3319387]["RewardItem"][2]["Id"] = 3311629
	tTaoistImproveSales_Data[3319387]["RewardItem"][2]["Attr"] = "0 1"
	tTaoistImproveSales_Data[3319387]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319387]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319387]["LogId"] = 12001281
	
	--道士专购马匹包 买赠+12马匹，送非赠普通玄晶（3311629）*5
	tTaoistImproveSales_Data[3319388]={}
	tTaoistImproveSales_Data[3319388]["ItemChanceSum"] = 3000
	
	--枣红马
	tTaoistImproveSales_Data[3319388][1]={}
	tTaoistImproveSales_Data[3319388][1]["RandomItemChanceType"] = 2
	tTaoistImproveSales_Data[3319388][1]["ItemChance"] = 1000
	tTaoistImproveSales_Data[3319388][1]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319388][1]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319388][1]["RewardItem"][1]["Id"] = 300000
	tTaoistImproveSales_Data[3319388][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 12"
	tTaoistImproveSales_Data[3319388][1]["RewardItem"][2] = {}
	tTaoistImproveSales_Data[3319388][1]["RewardItem"][2]["Id"] = 3311629
	tTaoistImproveSales_Data[3319388][1]["RewardItem"][2]["Attr"] = "0 5"
	tTaoistImproveSales_Data[3319388][1]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319388][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319388][1]["LogId"] = 12001281
	
	--雪脂马
	tTaoistImproveSales_Data[3319388][2]={}
	tTaoistImproveSales_Data[3319388][2]["RandomItemChanceType"] = 2
	tTaoistImproveSales_Data[3319388][2]["ItemChance"] = 1000
	tTaoistImproveSales_Data[3319388][2]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319388][2]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319388][2]["RewardItem"][1]["Id"] = 300000
	tTaoistImproveSales_Data[3319388][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 65430 0 255 0 12 0 0 0 0 0 0 150"
	tTaoistImproveSales_Data[3319388][2]["RewardItem"][2] = {}
	tTaoistImproveSales_Data[3319388][2]["RewardItem"][2]["Id"] = 3311629
	tTaoistImproveSales_Data[3319388][2]["RewardItem"][2]["Attr"] = "0 5"
	tTaoistImproveSales_Data[3319388][2]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319388][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319388][2]["LogId"] = 12001281
	
	--黑颈马
	tTaoistImproveSales_Data[3319388][3]={}
	tTaoistImproveSales_Data[3319388][3]["RandomItemChanceType"] = 2
	tTaoistImproveSales_Data[3319388][3]["ItemChance"] = 1000
	tTaoistImproveSales_Data[3319388][3]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319388][3]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319388][3]["RewardItem"][1]["Id"] = 300000
	tTaoistImproveSales_Data[3319388][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 9830655 150 0 0 12 0 0 0 0 0 0 255"
	tTaoistImproveSales_Data[3319388][3]["RewardItem"][2] = {}
	tTaoistImproveSales_Data[3319388][3]["RewardItem"][2]["Id"] = 3311629
	tTaoistImproveSales_Data[3319388][3]["RewardItem"][2]["Attr"] = "0 5"
	tTaoistImproveSales_Data[3319388][3]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319388][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319388][3]["LogId"] = 12001281
	
	--道士专购散功丹包 买非赠散功丹（3005412）*10，送非赠普通玄晶（3311629）*2
	tTaoistImproveSales_Data[3319389]={}
	tTaoistImproveSales_Data[3319389]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319389]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319389]["DeleteItem"][1]["Id"] = 3319389
	tTaoistImproveSales_Data[3319389]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319389]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319389]["RewardItem"][1]["Id"] = 3005412
	tTaoistImproveSales_Data[3319389]["RewardItem"][1]["Attr"] = "0 10"
	tTaoistImproveSales_Data[3319389]["RewardItem"][2] = {}
	tTaoistImproveSales_Data[3319389]["RewardItem"][2]["Id"] = 3311629
	tTaoistImproveSales_Data[3319389]["RewardItem"][2]["Attr"] = "0 2"
	tTaoistImproveSales_Data[3319389]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319389]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319389]["LogId"] = 12001281
	
	--道士专购气力包 买赠10W气力值礼包（3303242），送非赠普通玄晶（3311629）*6
	tTaoistImproveSales_Data[3319390]={}
	tTaoistImproveSales_Data[3319390]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319390]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319390]["DeleteItem"][1]["Id"] = 3319390
	tTaoistImproveSales_Data[3319390]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319390]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319390]["RewardItem"][1]["Id"] = 3303242
	tTaoistImproveSales_Data[3319390]["RewardItem"][1]["Attr"] = "0 1"
	tTaoistImproveSales_Data[3319390]["RewardItem"][2] = {}
	tTaoistImproveSales_Data[3319390]["RewardItem"][2]["Id"] = 3311629
	tTaoistImproveSales_Data[3319390]["RewardItem"][2]["Attr"] = "0 6"
	tTaoistImproveSales_Data[3319390]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319390]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319390]["LogId"] = 12001281
	
	--道士专购抽奖包 买非赠小抽奖券礼包*100，送非赠普通玄晶（3311629）*1
	tTaoistImproveSales_Data[3319391]={}
	tTaoistImproveSales_Data[3319391]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319391]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319391]["DeleteItem"][1]["Id"] = 3319391
	tTaoistImproveSales_Data[3319391]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319391]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319391]["RewardItem"][1]["Id"] = 711504
	tTaoistImproveSales_Data[3319391]["RewardItem"][1]["Attr"] = "0 300"
	tTaoistImproveSales_Data[3319391]["RewardItem"][2] = {}
	tTaoistImproveSales_Data[3319391]["RewardItem"][2]["Id"] = 3311629
	tTaoistImproveSales_Data[3319391]["RewardItem"][2]["Attr"] = "0 1"
	tTaoistImproveSales_Data[3319391]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319391]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319391]["LogId"] = 12001281
	
-----------------------------------------------------非赠专区---------------------------------------------
	--+6赤练石包
	tTaoistImproveSales_Data[3319392] = {}
	tTaoistImproveSales_Data[3319392]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319392]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319392]["DeleteItem"][1]["Id"] = 3319392
	tTaoistImproveSales_Data[3319392]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319392]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319392]["RewardItem"][1]["Id"] = 730006
	tTaoistImproveSales_Data[3319392]["RewardItem"][1]["Attr"] = "0 1"
	tTaoistImproveSales_Data[3319392]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319392]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319392]["LogId"] = 12001281
	
		--++8StonePack
	tTaoistImproveSales_Data[3319393] = {}
	tTaoistImproveSales_Data[3319393]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319393]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319393]["DeleteItem"][1]["Id"] = 3319393
	tTaoistImproveSales_Data[3319393]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319393]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319393]["RewardItem"][1]["Id"] = 730008
	tTaoistImproveSales_Data[3319393]["RewardItem"][1]["Attr"] = "0 1"
	tTaoistImproveSales_Data[3319393]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319393]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319393]["LogId"] = 12001281
	
	--'大固化石
	tTaoistImproveSales_Data[3319394] = {}
	tTaoistImproveSales_Data[3319394]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319394]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319394]["DeleteItem"][1]["Id"] = 3319394
	tTaoistImproveSales_Data[3319394]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319394]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319394]["RewardItem"][1]["Id"] = 723695
	tTaoistImproveSales_Data[3319394]["RewardItem"][1]["Attr"] = "0 1"
	tTaoistImproveSales_Data[3319394]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319394]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319394]["LogId"] = 12001281
	
	
	tTaoistImproveSales_Data[3319395] = {}
	-- 极品天怒
	tTaoistImproveSales_Data[3319395][700103] = {}
	tTaoistImproveSales_Data[3319395][700103]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319395][700103]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319395][700103]["DeleteItem"][1]["Id"] = 3319395
	tTaoistImproveSales_Data[3319395][700103]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319395][700103]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319395][700103]["RewardItem"][1]["Id"] = 700103
	tTaoistImproveSales_Data[3319395][700103]["RewardItem"][1]["Attr"] = "0 1"
	tTaoistImproveSales_Data[3319395][700103]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319395][700103]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319395][700103]["LogId"] = 12001281
	-- 极品地灵
	tTaoistImproveSales_Data[3319395][700123] = {}
	tTaoistImproveSales_Data[3319395][700123]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319395][700123]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319395][700123]["DeleteItem"][1]["Id"] = 3319395
	tTaoistImproveSales_Data[3319395][700123]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319395][700123]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319395][700123]["RewardItem"][1]["Id"] = 700123
	tTaoistImproveSales_Data[3319395][700123]["RewardItem"][1]["Attr"] = "0 1"
	tTaoistImproveSales_Data[3319395][700123]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319395][700123]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319395][700123]["LogId"] = 12001281
	
	-- 极品天怒/地灵+金刚尖钻可选包
	tTaoistImproveSales_Data[3319396] = {}
	-- 极品天怒+金刚尖钻
	tTaoistImproveSales_Data[3319396][700103] = {}
	tTaoistImproveSales_Data[3319396][700103]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319396][700103]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319396][700103]["DeleteItem"][1]["Id"] = 3319396
	tTaoistImproveSales_Data[3319396][700103]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319396][700103]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319396][700103]["RewardItem"][1]["Id"] = 700103
	tTaoistImproveSales_Data[3319396][700103]["RewardItem"][1]["Attr"] = "0 1"
	tTaoistImproveSales_Data[3319396][700103]["RewardItem"][2] = {}
	tTaoistImproveSales_Data[3319396][700103]["RewardItem"][2]["Id"] = 1200005
	tTaoistImproveSales_Data[3319396][700103]["RewardItem"][2]["Attr"] = "0 1"
	tTaoistImproveSales_Data[3319396][700103]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319396][700103]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319396][700103]["LogId"] = 12001281
	-- 极品地灵+金刚尖钻
	tTaoistImproveSales_Data[3319396][700123] = {}
	tTaoistImproveSales_Data[3319396][700123]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319396][700123]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319396][700123]["DeleteItem"][1]["Id"] = 3319396
	tTaoistImproveSales_Data[3319396][700123]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319396][700123]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319396][700123]["RewardItem"][1]["Id"] = 700123
	tTaoistImproveSales_Data[3319396][700123]["RewardItem"][1]["Attr"] = "0 1"
	tTaoistImproveSales_Data[3319396][700123]["RewardItem"][2] = {}
	tTaoistImproveSales_Data[3319396][700123]["RewardItem"][2]["Id"] = 1200005
	tTaoistImproveSales_Data[3319396][700123]["RewardItem"][2]["Attr"] = "0 1"
	tTaoistImproveSales_Data[3319396][700123]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319396][700123]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319396][700123]["LogId"] = 12001281
	
	--'金刚尖钻
	tTaoistImproveSales_Data[3319397] = {}
	tTaoistImproveSales_Data[3319397]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319397]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319397]["DeleteItem"][1]["Id"] = 3319397
	tTaoistImproveSales_Data[3319397]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319397]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319397]["RewardItem"][1]["Id"] = 1200005
	tTaoistImproveSales_Data[3319397]["RewardItem"][1]["Attr"] = "0 1"
	tTaoistImproveSales_Data[3319397]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319397]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319397]["LogId"] = 12001281
	
	--'晶莹星陨石
	tTaoistImproveSales_Data[3319398] = {}
	tTaoistImproveSales_Data[3319398]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319398]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319398]["DeleteItem"][1]["Id"] = 3319398
	tTaoistImproveSales_Data[3319398]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319398]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319398]["RewardItem"][1]["Id"] = 3009002
	tTaoistImproveSales_Data[3319398]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tTaoistImproveSales_Data[3319398]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319398]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319398]["LogId"] = 12001281
	
	--'晶莹星陨石*2
	tTaoistImproveSales_Data[3319399] = {}
	tTaoistImproveSales_Data[3319399]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319399]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319399]["DeleteItem"][1]["Id"] = 3319399
	tTaoistImproveSales_Data[3319399]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319399]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319399]["RewardItem"][1]["Id"] = 3009002
	tTaoistImproveSales_Data[3319399]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tTaoistImproveSales_Data[3319399]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319399]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319399]["LogId"] = 12001281
	
	--'璀璨星陨石
	tTaoistImproveSales_Data[3319400] = {}
	tTaoistImproveSales_Data[3319400]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319400]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319400]["DeleteItem"][1]["Id"] = 3319400
	tTaoistImproveSales_Data[3319400]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319400]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319400]["RewardItem"][1]["Id"] = 3009003
	tTaoistImproveSales_Data[3319400]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tTaoistImproveSales_Data[3319400]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319400]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319400]["LogId"] = 12001281
	
	--璀璨星陨石*2
	tTaoistImproveSales_Data[3319401] = {}
	tTaoistImproveSales_Data[3319401]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319401]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319401]["DeleteItem"][1]["Id"] = 3319401
	tTaoistImproveSales_Data[3319401]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319401]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319401]["RewardItem"][1]["Id"] = 3009003
	tTaoistImproveSales_Data[3319401]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tTaoistImproveSales_Data[3319401]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319401]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319401]["LogId"] = 12001281
	
	--龙珠卷
	tTaoistImproveSales_Data[3319402] = {}
	tTaoistImproveSales_Data[3319402]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319402]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319402]["DeleteItem"][1]["Id"] = 3319402
	tTaoistImproveSales_Data[3319402]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319402]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319402]["RewardItem"][1]["Id"] = 720028
	tTaoistImproveSales_Data[3319402]["RewardItem"][1]["Attr"] = "0 1"
	tTaoistImproveSales_Data[3319402]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319402]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319402]["LogId"] = 12001281
	
	--小抽奖券礼包*100
	tTaoistImproveSales_Data[3319403] = {}
	tTaoistImproveSales_Data[3319403]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319403]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319403]["DeleteItem"][1]["Id"] = 3319403
	tTaoistImproveSales_Data[3319403]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319403]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319403]["RewardItem"][1]["Id"] = 711504
	tTaoistImproveSales_Data[3319403]["RewardItem"][1]["Attr"] = "0 300"
	tTaoistImproveSales_Data[3319403]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319403]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319403]["LogId"] = 12001281
	
	--小固化石
	tTaoistImproveSales_Data[3319404] = {}
	tTaoistImproveSales_Data[3319404]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319404]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319404]["DeleteItem"][1]["Id"] = 3319404
	tTaoistImproveSales_Data[3319404]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319404]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319404]["RewardItem"][1]["Id"] = 723694
	tTaoistImproveSales_Data[3319404]["RewardItem"][1]["Attr"] = "0 1"
	tTaoistImproveSales_Data[3319404]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319404]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319404]["LogId"] = 12001281
	
-----------------------------------------------------赠品专区---------------------------------------------
--清心符礼包
	tTaoistImproveSales_Data[3319405] = {}
	tTaoistImproveSales_Data[3319405]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319405]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319405]["DeleteItem"][1]["Id"] = 3319405
	tTaoistImproveSales_Data[3319405]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319405]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319405]["RewardItem"][1]["Id"] = 723727
	tTaoistImproveSales_Data[3319405]["RewardItem"][1]["Attr"] = "0 50 3"
	tTaoistImproveSales_Data[3319405]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319405]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319405]["LogId"] = 12001281
	
--5000气力值
	tTaoistImproveSales_Data[3319406] = {}
	tTaoistImproveSales_Data[3319406]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319406]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319406]["DeleteItem"][1]["Id"] = 3319406
	tTaoistImproveSales_Data[3319406]["RewardStrengthValue"] = {} 
	tTaoistImproveSales_Data[3319406]["RewardStrengthValue"]["Value"] = 5000
	tTaoistImproveSales_Data[3319406]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319406]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319406]["LogId"] = 12001281
	
	--修行值10000点
	tTaoistImproveSales_Data[3319407] = {}
	tTaoistImproveSales_Data[3319407]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319407]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319407]["DeleteItem"][1]["Id"] = 3319407
	tTaoistImproveSales_Data[3319407]["RewardCultivation"] = {} 
	tTaoistImproveSales_Data[3319407]["RewardCultivation"]["Value"] = 10000
	tTaoistImproveSales_Data[3319407]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319407]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319407]["LogId"] = 12001281
	
	--修为值10000点
	tTaoistImproveSales_Data[3319408] = {}
	tTaoistImproveSales_Data[3319408]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319408]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319408]["DeleteItem"][1]["Id"] = 3319408
	tTaoistImproveSales_Data[3319408]["RewardRepairValue"] = {} 
	tTaoistImproveSales_Data[3319408]["RewardRepairValue"]["Value"] = 10000
	tTaoistImproveSales_Data[3319408]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319408]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319408]["LogId"] = 12001281
	
	--大爆丹10颗
	tTaoistImproveSales_Data[3319409] = {}
	tTaoistImproveSales_Data[3319409]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319409]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319409]["DeleteItem"][1]["Id"] = 3319409
	tTaoistImproveSales_Data[3319409]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319409]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319409]["RewardItem"][1]["Id"] = 3003126
	tTaoistImproveSales_Data[3319409]["RewardItem"][1]["Attr"] = "0 10 3"
	tTaoistImproveSales_Data[3319409]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319409]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319409]["LogId"] = 12001281
	
	--强练丹50颗
	tTaoistImproveSales_Data[3319410] = {}
	tTaoistImproveSales_Data[3319410]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319410]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319410]["DeleteItem"][1]["Id"] = 3319410
	tTaoistImproveSales_Data[3319410]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319410]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319410]["RewardItem"][1]["Id"] = 3003124
	tTaoistImproveSales_Data[3319410]["RewardItem"][1]["Attr"] = "0 50 3"
	tTaoistImproveSales_Data[3319410]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319410]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319410]["LogId"] = 12001281
	
	--小爆丹50颗
	tTaoistImproveSales_Data[3319411] = {}
	tTaoistImproveSales_Data[3319411]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319411]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319411]["DeleteItem"][1]["Id"] = 3319411
	tTaoistImproveSales_Data[3319411]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319411]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319411]["RewardItem"][1]["Id"] = 3003125
	tTaoistImproveSales_Data[3319411]["RewardItem"][1]["Attr"] = "0 50 3"
	tTaoistImproveSales_Data[3319411]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319411]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319411]["LogId"] = 12001281
	
	--超级经验丹
	tTaoistImproveSales_Data[3319412] = {}
	tTaoistImproveSales_Data[3319412]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319412]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319412]["DeleteItem"][1]["Id"] = 3319412
	tTaoistImproveSales_Data[3319412]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319412]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319412]["RewardItem"][1]["Id"] = 722057
	tTaoistImproveSales_Data[3319412]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319412]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319412]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319412]["LogId"] = 12001281
	
	--3000分钟经验
	tTaoistImproveSales_Data[3319413] = {}
	tTaoistImproveSales_Data[3319413]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319413]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319413]["DeleteItem"][1]["Id"] = 3319413
	tTaoistImproveSales_Data[3319413]["RewardExpTime"] = {}
	tTaoistImproveSales_Data[3319413]["RewardExpTime"]["Value"] = 3000
	tTaoistImproveSales_Data[3319413]["RewardExpTime"]["FullIndex"] = "RewardStrengthValue"
	tTaoistImproveSales_Data[3319413]["RewardExpTime"]["FullValue"] = 1500
	tTaoistImproveSales_Data[3319413]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319413]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319413]["LogId"] = 12001281
	
	--100,000气力值赠
	tTaoistImproveSales_Data[3319414] = {}
	tTaoistImproveSales_Data[3319414]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319414]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319414]["DeleteItem"][1]["Id"] = 3319414
	tTaoistImproveSales_Data[3319414]["RewardStrengthValue"] = {} 
	tTaoistImproveSales_Data[3319414]["RewardStrengthValue"]["Value"] = 100000
	tTaoistImproveSales_Data[3319414]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319414]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319414]["LogId"] = 12001281

	--赠品龙珠*1
	tTaoistImproveSales_Data[3319415] = {}
	tTaoistImproveSales_Data[3319415]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319415]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319415]["DeleteItem"][1]["Id"] = 3319415
	tTaoistImproveSales_Data[3319415]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319415]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319415]["RewardItem"][1]["Id"] = 1088000
	tTaoistImproveSales_Data[3319415]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319415]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319415]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319415]["LogId"] = 12001281
	
	--赠品赤练石+3*1
	tTaoistImproveSales_Data[3319416] = {}
	tTaoistImproveSales_Data[3319416]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319416]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319416]["DeleteItem"][1]["Id"] = 3319416
	tTaoistImproveSales_Data[3319416]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319416]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319416]["RewardItem"][1]["Id"] = 730003
	tTaoistImproveSales_Data[3319416]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319416]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319416]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319416]["LogId"] = 12001281
	
	--赠品赤练石+6*1
	tTaoistImproveSales_Data[3319417] = {}
	tTaoistImproveSales_Data[3319417]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319417]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319417]["DeleteItem"][1]["Id"] = 3319417
	tTaoistImproveSales_Data[3319417]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319417]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319417]["RewardItem"][1]["Id"] = 730006
	tTaoistImproveSales_Data[3319417]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319417]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319417]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319417]["LogId"] = 12001281
	
	--赠品赤练石+8*1
	tTaoistImproveSales_Data[3319418] = {}
	tTaoistImproveSales_Data[3319418]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319418]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319418]["DeleteItem"][1]["Id"] = 3319418
	tTaoistImproveSales_Data[3319418]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319418]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319418]["RewardItem"][1]["Id"] = 730008
	tTaoistImproveSales_Data[3319418]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319418]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319418]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319418]["LogId"] = 12001281
	
	--赠品小固化石*1
	tTaoistImproveSales_Data[3319419] = {}
	tTaoistImproveSales_Data[3319419]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319419]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319419]["DeleteItem"][1]["Id"] = 3319419
	tTaoistImproveSales_Data[3319419]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319419]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319419]["RewardItem"][1]["Id"] = 723694
	tTaoistImproveSales_Data[3319419]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319419]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319419]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319419]["LogId"] = 12001281
	
	--赠品大固化石*1
	tTaoistImproveSales_Data[3319420] = {}
	tTaoistImproveSales_Data[3319420]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319420]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319420]["DeleteItem"][1]["Id"] = 3319420
	tTaoistImproveSales_Data[3319420]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319420]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319420]["RewardItem"][1]["Id"] = 723695
	tTaoistImproveSales_Data[3319420]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319420]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319420]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319420]["LogId"] = 12001281
	
	--赠品金刚尖钻*1
	tTaoistImproveSales_Data[3319421] = {}
	tTaoistImproveSales_Data[3319421]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319421]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319421]["DeleteItem"][1]["Id"] = 3319421
	tTaoistImproveSales_Data[3319421]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319421]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319421]["RewardItem"][1]["Id"] = 1200005
	tTaoistImproveSales_Data[3319421]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319421]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319421]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319421]["LogId"] = 12001281
	
	--赠品七星宝钻*1
	tTaoistImproveSales_Data[3319422] = {}
	tTaoistImproveSales_Data[3319422]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319422]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319422]["DeleteItem"][1]["Id"] = 3319422
	tTaoistImproveSales_Data[3319422]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319422]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319422]["RewardItem"][1]["Id"] = 1200006
	tTaoistImproveSales_Data[3319422]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319422]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319422]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319422]["LogId"] = 12001281
	
	--P7武器神魂可选包
	tTaoistImproveSales_Data[3319423] = {}
	tTaoistImproveSales_Data[3319423][21] = {}
	tTaoistImproveSales_Data[3319423][21]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319423][21]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319423][21]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319423][21]["RewardItem"][1]["Id"] = 800020
	tTaoistImproveSales_Data[3319423][21]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319423][21]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319423][21]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319423][21]["DeleteItem"][1]["Id"] = 3319423
	
	tTaoistImproveSales_Data[3319423][22] = {}
	tTaoistImproveSales_Data[3319423][22]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319423][22]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319423][22]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319423][22]["RewardItem"][1]["Id"] = 800111
	tTaoistImproveSales_Data[3319423][22]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319423][22]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319423][22]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319423][22]["DeleteItem"][1]["Id"] = 3319423
	
	tTaoistImproveSales_Data[3319423][23] = {}
	tTaoistImproveSales_Data[3319423][23]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319423][23]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319423][23]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319423][23]["RewardItem"][1]["Id"] = 800215
	tTaoistImproveSales_Data[3319423][23]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319423][23]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319423][23]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319423][23]["DeleteItem"][1]["Id"] = 3319423
	
	tTaoistImproveSales_Data[3319423][24] = {}
	tTaoistImproveSales_Data[3319423][24]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319423][24]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319423][24]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319423][24]["RewardItem"][1]["Id"] = 800811
	tTaoistImproveSales_Data[3319423][24]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319423][24]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319423][24]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319423][24]["DeleteItem"][1]["Id"] = 3319423
	
	tTaoistImproveSales_Data[3319423][25] = {}
	tTaoistImproveSales_Data[3319423][25]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319423][25]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319423][25]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319423][25]["RewardItem"][1]["Id"] = 800810
	tTaoistImproveSales_Data[3319423][25]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319423][25]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319423][25]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319423][25]["DeleteItem"][1]["Id"] = 3319423
	
	tTaoistImproveSales_Data[3319423][26] = {}
	tTaoistImproveSales_Data[3319423][26]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319423][26]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319423][26]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319423][26]["RewardItem"][1]["Id"] = 800142
	tTaoistImproveSales_Data[3319423][26]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319423][26]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319423][26]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319423][26]["DeleteItem"][1]["Id"] = 3319423
	
	tTaoistImproveSales_Data[3319423][31] = {}
	tTaoistImproveSales_Data[3319423][31]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319423][31]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319423][31]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319423][31]["RewardItem"][1]["Id"] = 800917
	tTaoistImproveSales_Data[3319423][31]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319423][31]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319423][31]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319423][31]["DeleteItem"][1]["Id"] = 3319423
	
	tTaoistImproveSales_Data[3319423][32] = {}
	tTaoistImproveSales_Data[3319423][32]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319423][32]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319423][32]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319423][32]["RewardItem"][1]["Id"] = 800255
	tTaoistImproveSales_Data[3319423][32]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319423][32]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319423][32]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319423][32]["DeleteItem"][1]["Id"] = 3319423
	
	tTaoistImproveSales_Data[3319423][33] = {}
	tTaoistImproveSales_Data[3319423][33]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319423][33]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319423][33]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319423][33]["RewardItem"][1]["Id"] = 800422
	tTaoistImproveSales_Data[3319423][33]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319423][33]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319423][33]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319423][33]["DeleteItem"][1]["Id"] = 3319423
	
	tTaoistImproveSales_Data[3319423][34] = {}
	tTaoistImproveSales_Data[3319423][34]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319423][34]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319423][34]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319423][34]["RewardItem"][1]["Id"] = 800522
	tTaoistImproveSales_Data[3319423][34]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319423][34]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319423][34]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319423][34]["DeleteItem"][1]["Id"] = 3319423
	
	tTaoistImproveSales_Data[3319423][35] = {}
	tTaoistImproveSales_Data[3319423][35]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319423][35]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319423][35]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319423][35]["RewardItem"][1]["Id"] = 800618
	tTaoistImproveSales_Data[3319423][35]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319423][35]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319423][35]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319423][35]["DeleteItem"][1]["Id"] = 3319423
	
	tTaoistImproveSales_Data[3319423][41] = {}
	tTaoistImproveSales_Data[3319423][41]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319423][41]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319423][41]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319423][41]["RewardItem"][1]["Id"] = 800725
	tTaoistImproveSales_Data[3319423][41]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319423][41]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319423][41]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319423][41]["DeleteItem"][1]["Id"] = 3319423
	
	tTaoistImproveSales_Data[3319423][42] = {}
	tTaoistImproveSales_Data[3319423][42]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319423][42]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319423][42]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319423][42]["RewardItem"][1]["Id"] = 801004
	tTaoistImproveSales_Data[3319423][42]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319423][42]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319423][42]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319423][42]["DeleteItem"][1]["Id"] = 3319423
	
	tTaoistImproveSales_Data[3319423][43] = {}
	tTaoistImproveSales_Data[3319423][43]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319423][43]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319423][43]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319423][43]["RewardItem"][1]["Id"] = 801104
	tTaoistImproveSales_Data[3319423][43]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319423][43]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319423][43]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319423][43]["DeleteItem"][1]["Id"] = 3319423
	
	tTaoistImproveSales_Data[3319423][44] = {}
	tTaoistImproveSales_Data[3319423][44]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319423][44]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319423][44]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319423][44]["RewardItem"][1]["Id"] = 801216
	tTaoistImproveSales_Data[3319423][44]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319423][44]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319423][44]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319423][44]["DeleteItem"][1]["Id"] = 3319423
	
	tTaoistImproveSales_Data[3319423][45] = {}
	tTaoistImproveSales_Data[3319423][45]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319423][45]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319423][45]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319423][45]["RewardItem"][1]["Id"] = 801218
	tTaoistImproveSales_Data[3319423][45]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319423][45]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319423][45]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319423][45]["DeleteItem"][1]["Id"] = 3319423
	
	tTaoistImproveSales_Data[3319423][46] = {}
	tTaoistImproveSales_Data[3319423][46]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319423][46]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319423][46]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319423][46]["RewardItem"][1]["Id"] = 801308
	tTaoistImproveSales_Data[3319423][46]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319423][46]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319423][46]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319423][46]["DeleteItem"][1]["Id"] = 3319423
	
	
	-- P7防具神魂可选包
	tTaoistImproveSales_Data[3319424] = {}
	tTaoistImproveSales_Data[3319424][31] = {}
	tTaoistImproveSales_Data[3319424][31]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319424][31]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319424][31]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319424][31]["RewardItem"][1]["Id"] = 820073
	tTaoistImproveSales_Data[3319424][31]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319424][31]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319424][31]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319424][31]["DeleteItem"][1]["Id"] = 3319424
	
	tTaoistImproveSales_Data[3319424][32] = {}
	tTaoistImproveSales_Data[3319424][32]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319424][32]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319424][32]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319424][32]["RewardItem"][1]["Id"] = 820074
	tTaoistImproveSales_Data[3319424][32]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319424][32]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319424][32]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319424][32]["DeleteItem"][1]["Id"] = 3319424
	
	tTaoistImproveSales_Data[3319424][33] = {}
	tTaoistImproveSales_Data[3319424][33]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319424][33]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319424][33]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319424][33]["RewardItem"][1]["Id"] = 820075
	tTaoistImproveSales_Data[3319424][33]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319424][33]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319424][33]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319424][33]["DeleteItem"][1]["Id"] = 3319424
	
	tTaoistImproveSales_Data[3319424][34] = {}
	tTaoistImproveSales_Data[3319424][34]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319424][34]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319424][34]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319424][34]["RewardItem"][1]["Id"] = 820076
	tTaoistImproveSales_Data[3319424][34]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319424][34]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319424][34]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319424][34]["DeleteItem"][1]["Id"] = 3319424
	
	tTaoistImproveSales_Data[3319424][41] = {}
	tTaoistImproveSales_Data[3319424][41]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319424][41]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319424][41]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319424][41]["RewardItem"][1]["Id"] = 822071
	tTaoistImproveSales_Data[3319424][41]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319424][41]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319424][41]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319424][41]["DeleteItem"][1]["Id"] = 3319424
	
	tTaoistImproveSales_Data[3319424][42] = {}
	tTaoistImproveSales_Data[3319424][42]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319424][42]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319424][42]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319424][42]["RewardItem"][1]["Id"] = 822072
	tTaoistImproveSales_Data[3319424][42]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319424][42]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319424][42]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319424][42]["DeleteItem"][1]["Id"] = 3319424
	
	tTaoistImproveSales_Data[3319424][51] = {}
	tTaoistImproveSales_Data[3319424][51]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319424][51]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319424][51]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319424][51]["RewardItem"][1]["Id"] = 821034
	tTaoistImproveSales_Data[3319424][51]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319424][51]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319424][51]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319424][51]["DeleteItem"][1]["Id"] = 3319424
	
	tTaoistImproveSales_Data[3319424][52] = {}
	tTaoistImproveSales_Data[3319424][52]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319424][52]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319424][52]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319424][52]["RewardItem"][1]["Id"] = 821033
	tTaoistImproveSales_Data[3319424][52]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319424][52]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319424][52]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319424][52]["DeleteItem"][1]["Id"] = 3319424
	
	tTaoistImproveSales_Data[3319424][61] = {}
	tTaoistImproveSales_Data[3319424][61]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319424][61]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319424][61]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319424][61]["RewardItem"][1]["Id"] = 823058
	tTaoistImproveSales_Data[3319424][61]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319424][61]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319424][61]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319424][61]["DeleteItem"][1]["Id"] = 3319424
	
	tTaoistImproveSales_Data[3319424][62] = {}
	tTaoistImproveSales_Data[3319424][62]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319424][62]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319424][62]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319424][62]["RewardItem"][1]["Id"] = 823059
	tTaoistImproveSales_Data[3319424][62]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319424][62]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319424][62]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319424][62]["DeleteItem"][1]["Id"] = 3319424
	
	tTaoistImproveSales_Data[3319424][63] = {}
	tTaoistImproveSales_Data[3319424][63]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319424][63]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319424][63]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319424][63]["RewardItem"][1]["Id"] = 823061
	tTaoistImproveSales_Data[3319424][63]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319424][63]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319424][63]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319424][63]["DeleteItem"][1]["Id"] = 3319424
	
	tTaoistImproveSales_Data[3319424][64] = {}
	tTaoistImproveSales_Data[3319424][64]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319424][64]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319424][64]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319424][64]["RewardItem"][1]["Id"] = 823062
	tTaoistImproveSales_Data[3319424][64]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319424][64]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319424][64]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319424][64]["DeleteItem"][1]["Id"] = 3319424
	
	tTaoistImproveSales_Data[3319424][65] = {}
	tTaoistImproveSales_Data[3319424][65]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319424][65]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319424][65]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319424][65]["RewardItem"][1]["Id"] = 823060
	tTaoistImproveSales_Data[3319424][65]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319424][65]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319424][65]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319424][65]["DeleteItem"][1]["Id"] = 3319424
	
	tTaoistImproveSales_Data[3319424][71] = {}
	tTaoistImproveSales_Data[3319424][71]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319424][71]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319424][71]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319424][71]["RewardItem"][1]["Id"] = 824018
	tTaoistImproveSales_Data[3319424][71]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319424][71]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319424][71]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319424][71]["DeleteItem"][1]["Id"] = 3319424
	
	tTaoistImproveSales_Data[3319424][72] = {}
	tTaoistImproveSales_Data[3319424][72]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319424][72]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319424][72]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319424][72]["RewardItem"][1]["Id"] = 824019
	tTaoistImproveSales_Data[3319424][72]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319424][72]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319424][72]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319424][72]["DeleteItem"][1]["Id"] = 3319424
	
	tTaoistImproveSales_Data[3319424][73] = {}
	tTaoistImproveSales_Data[3319424][73]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319424][73]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319424][73]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319424][73]["RewardItem"][1]["Id"] = 824020
	tTaoistImproveSales_Data[3319424][73]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319424][73]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319424][73]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319424][73]["DeleteItem"][1]["Id"] = 3319424
	
	-- 10000赠品天石
	tTaoistImproveSales_Data[3319425] = {}
	tTaoistImproveSales_Data[3319425]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319425]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319425]["DeleteItem"][1]["Id"] = 3319425
	tTaoistImproveSales_Data[3319425]["RewardEMoneyMono"] = {} 
	tTaoistImproveSales_Data[3319425]["RewardEMoneyMono"]["Value"] = 10000
	tTaoistImproveSales_Data[3319425]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319425]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319425]["LogId"] = 12001281
	tTaoistImproveSales_Data[3319425]["EmoneyLog"] = "10000	0140	0	0	10000	"
	
	-- 二转券
	tTaoistImproveSales_Data[3319426] = {}
	tTaoistImproveSales_Data[3319426]["DeleteItem"] = {}
	tTaoistImproveSales_Data[3319426]["DeleteItem"][1] = {}
	tTaoistImproveSales_Data[3319426]["DeleteItem"][1]["Id"] = 3319426
	tTaoistImproveSales_Data[3319426]["RewardItem"] = {}
	tTaoistImproveSales_Data[3319426]["RewardItem"][1] = {}
	tTaoistImproveSales_Data[3319426]["RewardItem"][1]["Id"] = 723701
	tTaoistImproveSales_Data[3319426]["RewardItem"][1]["Attr"] = "0 1 3"
	tTaoistImproveSales_Data[3319426]["RewardEffect"] = {}
	tTaoistImproveSales_Data[3319426]["RewardEffect"]["Effect"] = "zf2-e128"
	tTaoistImproveSales_Data[3319426]["LogId"] = 12001281
	
	--log
	tTaoistImproveSales_Data["Log"]={}
	tTaoistImproveSales_Data["Log"][3319388]="0,0,3319388,%d,12001281,1,0,0"
----------------------------------逻辑部分---------------------------------------------
-- 可选包逻辑
function TaoistImproveSales_Select(nItemId,nIndex)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tTaoistImproveSales_Data[nItemId][nIndex])
	if not User_CheckLeftSpace(nSpace) then
		local sMsg=string.format(tTaoistImproveSales_Text[105]["FullBag"],nSpace)
		Sys_MsgBox(sMsg)
		return false
	end
	
	RewardTemplate_UseItemAndMsg(tTaoistImproveSales_Data[nItemId][nIndex])
	return true
end

-- 神魂可选包逻辑
function TaoistImproveSales_P7SoulSelect(nItemId,nIndex)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tTaoistImproveSales_Data[nItemId][nIndex])
	if not bJudge then
		return
	end
	RewardTemplate_UseItemAndMsg(tTaoistImproveSales_Data[nItemId][nIndex],nUserId,bJudge)
end


-- 打开世外高人商店
function TaoistImproveSales_Shop(nNpcId)
	-- 活动过期
	if not Sys_ChkFullTime(tActivityTime["TaoistImproveSales"]["ActTime"]) then
		LinkNpcGossipFunc_New(23707,"1-2")
		return false
	end
	
	-- 打开天石商店
	local nUserId = Get_UserId()
	User_OpenDialog(0,nNpcId,nUserId)
	return true
end

--打开道士商店
function TaoistImproveSales_OpenTaoistShop(nNpcId)
	-- 活动过期
	if not Sys_ChkFullTime(tActivityTime["TaoistImproveSales"]["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	--道士专区，等级限制
	if not User_JudgeLevelAndMetempsychosis(tTaoistImproveSales_Data["LevelJudge"]["Level"],tTaoistImproveSales_Data["LevelJudge"]["Metempsychosis"]) then
		return Sys_MsgBox(tTaoistImproveSales_Text[105]["Level"])
	end
	
	local nUserId = Get_UserId()
	local nPro=Get_UserProfession()
	if nPro>=100 and nPro <= 145 then
		--道士职业，打开道士专区
		User_OpenDialog(0,nNpcId,nUserId)
	else
		--非道士职业，给提示
		Sys_MsgBox(tTaoistImproveSales_Text[105]["Level"])
	end 
end


--打开随机马包
function TaoistImproveSales_UseHorsePack(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
--背包空间判断
	local nSpace = RewardTemplate_GetRandomSpace(tTaoistImproveSales_Data,nItemId)
	if not User_CheckLeftSpace(nSpace) then
		local sMsg=string.format(tTaoistImproveSales_Text[105]["FullBag"],nSpace)
		Sys_MsgBox(sMsg)
		return 
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		--记删除礼包log
		local sLog = string.format(tTaoistImproveSales_Data["Log"][nItemId],1)
		Sys_SaveActionFestivalLog(sLog)
		--随机获得物品
		if RewardTemplate_NewRandom(tTaoistImproveSales_Data,nItemId) then 
			return 
		end 
	end 
end 
----------------------------------NPC部分---------------------------------------------
-- 道士大使 23706
tNpcFace[6472] = 49
tNpcGossip[23706] = tNpcGossip[23706] or DefaultNpc:new{}
tNpcGossip[23706]["OptionHidden"] = 1
tNpcGossip[23706]["DialogueText"] = tTaoistImproveSales_Text[23706]

-- 活动前
tNpcGossip[23706]["Text1-1"] = {111,112}
tNpcGossip[23706]["tOption1-1"] = {1}
tNpcGossip[23706]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["TaoistImproveSales"]["ActTime"])
end


-- 活动后
tNpcGossip[23706]["Text1-2"] = {121}
tNpcGossip[23706]["tOption1-2"] = {2}
tNpcGossip[23706]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["TaoistImproveSales"]["ActTime"])
end

-- 活动中
tNpcGossip[23706]["Text1-3"] = {131,132}
tNpcGossip[23706]["tOption1-3"] = {3}
tNpcGossip[23706]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["TaoistImproveSales"]["ActTime"])
end

tNpcGossip[23706]["OptionFunc3"] = "TaoistImproveSales_OpenTaoistShop</N>23706" 

--世外高人
tNpcFace[2284] = 6
tNpcGossip[23707] = tNpcGossip[23707] or DefaultNpc:new{}
tNpcGossip[23707]["OptionHidden"] = 1
tNpcGossip[23707]["DialogueText"] = tTaoistImproveSales_Text[23707]

-- 活动前
tNpcGossip[23707]["Text1-1"] = {111,112,113}
tNpcGossip[23707]["tOption1-1"] = {1}
tNpcGossip[23707]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["TaoistImproveSales"]["ActTime"])
end

-- 活动后
tNpcGossip[23707]["Text1-2"] = {121}
tNpcGossip[23707]["tOption1-2"] = {2}
tNpcGossip[23707]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["TaoistImproveSales"]["ActTime"])
end

--活动中
tNpcGossip[23707]["Text1-3"] = {131,132}
tNpcGossip[23707]["tOption1-3"] = {3,4}
tNpcGossip[23707]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["TaoistImproveSales"]["ActTime"])
end

tNpcGossip[23707]["OptionFunc3"] = "TaoistImproveSales_Shop</N>23707" 
tNpcGossip[23707]["OptionFunc4"] = "TaoistImproveSales_Shop</N>23708" 


---------------------------------物品部分---------------------------------------------
-- GemSelectionPack
tItemFace[3319396] = 2073
tItem[3319396] = tItem[3319396] or {}
tItem[3319396]["DialogueText"] = tTaoistImproveSales_Text[3319396]
tItem[3319396]["Text1-1"] = {111}
tItem[3319396]["tOption1-1"] = {111,112,113}
tItem[3319396]["OptionFunc111"] = "TaoistImproveSales_Select</N>3319396</N>700103"
tItem[3319396]["OptionFunc112"] = "TaoistImproveSales_Select</N>3319396</N>700123"

-- 极品天怒/地灵可选包
tItemFace[3319395] = 955
tItem[3319395] = tItem[3319395] or {}
tItem[3319395]["DialogueText"] = tTaoistImproveSales_Text[3319395]
tItem[3319395]["Text1-1"] = {111}
tItem[3319395]["tOption1-1"] = {111,112,113}
tItem[3319395]["OptionFunc111"] = "TaoistImproveSales_Select</N>3319395</N>700103"
tItem[3319395]["OptionFunc112"] = "TaoistImproveSales_Select</N>3319395</N>700123"

-- P7武器神魂可选包
tItemFace[3319423] = 671
tItem[3319423] = tItem[3319423] or {}
tItem[3319423]["DialogueText"] = tTaoistImproveSales_Text[3319423]

tItem[3319423]["Text1-1"] = {111}
tItem[3319423]["tOption1-1"] = {21,22,23,24,25,26,27,28}
tItem[3319423]["OptionPoint21"] = "2-1"
tItem[3319423]["OptionPoint22"] = "2-2"
tItem[3319423]["OptionPoint23"] = "2-3"
tItem[3319423]["OptionPoint24"] = "2-4"
tItem[3319423]["OptionPoint25"] = "2-5"
tItem[3319423]["OptionPoint26"] = "2-6"
tItem[3319423]["OptionPoint27"] = "1-2"

tItem[3319423]["Text1-2"] = {121}
tItem[3319423]["tOption1-2"] = {31,32,33,34,35,36,37,38}
tItem[3319423]["OptionPoint31"] = "3-1"
tItem[3319423]["OptionPoint32"] = "3-2"
tItem[3319423]["OptionPoint33"] = "3-3"
tItem[3319423]["OptionPoint34"] = "3-4"
tItem[3319423]["OptionPoint35"] = "3-5"
tItem[3319423]["OptionPoint36"] = "1-1"
tItem[3319423]["OptionPoint37"] = "1-3"

tItem[3319423]["Text1-3"] = {131}
tItem[3319423]["tOption1-3"] = {41,42,43,44,45,46,47,48}
tItem[3319423]["OptionPoint41"] = "4-1"
tItem[3319423]["OptionPoint42"] = "4-2"
tItem[3319423]["OptionPoint43"] = "4-3"
tItem[3319423]["OptionPoint44"] = "4-4"
tItem[3319423]["OptionPoint45"] = "4-5"
tItem[3319423]["OptionPoint46"] = "4-6"
tItem[3319423]["OptionPoint47"] = "1-2"

tItem[3319423]["Text2-1"] = {211}
tItem[3319423]["tOption2-1"] = {211,1}
tItem[3319423]["OptionFunc211"] = "TaoistImproveSales_P7SoulSelect</N>3319423</N>21"

tItem[3319423]["Text2-2"] = {221}
tItem[3319423]["tOption2-2"] = {221,1}
tItem[3319423]["OptionFunc221"] = "TaoistImproveSales_P7SoulSelect</N>3319423</N>22"

tItem[3319423]["Text2-3"] = {231}
tItem[3319423]["tOption2-3"] = {231,1}
tItem[3319423]["OptionFunc231"] = "TaoistImproveSales_P7SoulSelect</N>3319423</N>23"

tItem[3319423]["Text2-4"] = {241}
tItem[3319423]["tOption2-4"] = {241,1}
tItem[3319423]["OptionFunc241"] = "TaoistImproveSales_P7SoulSelect</N>3319423</N>24"

tItem[3319423]["Text2-5"] = {251}
tItem[3319423]["tOption2-5"] = {251,1}
tItem[3319423]["OptionFunc251"] = "TaoistImproveSales_P7SoulSelect</N>3319423</N>25"

tItem[3319423]["Text2-6"] = {261}
tItem[3319423]["tOption2-6"] = {261,1}
tItem[3319423]["OptionFunc261"] = "TaoistImproveSales_P7SoulSelect</N>3319423</N>26"

tItem[3319423]["Text3-1"] = {311}
tItem[3319423]["tOption3-1"] = {311,1}
tItem[3319423]["OptionFunc311"] = "TaoistImproveSales_P7SoulSelect</N>3319423</N>31"

tItem[3319423]["Text3-2"] = {321}
tItem[3319423]["tOption3-2"] = {321,1}
tItem[3319423]["OptionFunc321"] = "TaoistImproveSales_P7SoulSelect</N>3319423</N>32"

tItem[3319423]["Text3-3"] = {331}
tItem[3319423]["tOption3-3"] = {331,1}
tItem[3319423]["OptionFunc331"] = "TaoistImproveSales_P7SoulSelect</N>3319423</N>33"

tItem[3319423]["Text3-4"] = {341}
tItem[3319423]["tOption3-4"] = {341,1}
tItem[3319423]["OptionFunc341"] = "TaoistImproveSales_P7SoulSelect</N>3319423</N>34"

tItem[3319423]["Text3-5"] = {351}
tItem[3319423]["tOption3-5"] = {351,1}
tItem[3319423]["OptionFunc351"] = "TaoistImproveSales_P7SoulSelect</N>3319423</N>35"

tItem[3319423]["Text4-1"] = {411}
tItem[3319423]["tOption4-1"] = {411,1}
tItem[3319423]["OptionFunc411"] = "TaoistImproveSales_P7SoulSelect</N>3319423</N>41"

tItem[3319423]["Text4-2"] = {421}
tItem[3319423]["tOption4-2"] = {421,1}
tItem[3319423]["OptionFunc421"] = "TaoistImproveSales_P7SoulSelect</N>3319423</N>42"

tItem[3319423]["Text4-3"] = {431}
tItem[3319423]["tOption4-3"] = {431,1}
tItem[3319423]["OptionFunc431"] = "TaoistImproveSales_P7SoulSelect</N>3319423</N>43"

tItem[3319423]["Text4-4"] = {441}
tItem[3319423]["tOption4-4"] = {441,1}
tItem[3319423]["OptionFunc441"] = "TaoistImproveSales_P7SoulSelect</N>3319423</N>44"

tItem[3319423]["Text4-5"] = {451}
tItem[3319423]["tOption4-5"] = {451,1}
tItem[3319423]["OptionFunc451"] = "TaoistImproveSales_P7SoulSelect</N>3319423</N>45"

tItem[3319423]["Text4-6"] = {461}
tItem[3319423]["tOption4-6"] = {461,1}
tItem[3319423]["OptionFunc461"] = "TaoistImproveSales_P7SoulSelect</N>3319423</N>46"


-- P7防具神魂可选包
tItemFace[3319424] = 672
tItem[3319424] = tItem[3319424] or {}
tItem[3319424]["DialogueText"] = tTaoistImproveSales_Text[3319424]

tItem[3319424]["Text1-1"] = {111}
tItem[3319424]["tOption1-1"] = {11,12,13,14,15,16}
tItem[3319424]["OptionPoint11"] = "2-1"
tItem[3319424]["OptionPoint12"] = "2-2"
tItem[3319424]["OptionPoint13"] = "2-3"
tItem[3319424]["OptionPoint14"] = "2-4"
tItem[3319424]["OptionPoint15"] = "2-5"

tItem[3319424]["Text2-1"] = {211}
tItem[3319424]["tOption2-1"] = {31,32,33,34,35,36}
tItem[3319424]["OptionPoint31"] = "3-1"
tItem[3319424]["OptionPoint32"] = "3-2"
tItem[3319424]["OptionPoint33"] = "3-3"
tItem[3319424]["OptionPoint34"] = "3-4"
tItem[3319424]["OptionPoint35"] = "1-1"

tItem[3319424]["Text2-2"] = {221}
tItem[3319424]["tOption2-2"] = {41,42,43,44}
tItem[3319424]["OptionPoint41"] = "4-1"
tItem[3319424]["OptionPoint42"] = "4-2"
tItem[3319424]["OptionPoint43"] = "1-1"

tItem[3319424]["Text2-3"] = {231}
tItem[3319424]["tOption2-3"] = {51,52,53,54}
tItem[3319424]["OptionPoint51"] = "5-1"
tItem[3319424]["OptionPoint52"] = "5-2"
tItem[3319424]["OptionPoint53"] = "1-1"

tItem[3319424]["Text2-4"] = {241}
tItem[3319424]["tOption2-4"] = {61,62,63,64,65,66,67}
tItem[3319424]["OptionPoint61"] = "6-1"
tItem[3319424]["OptionPoint62"] = "6-2"
tItem[3319424]["OptionPoint63"] = "6-3"
tItem[3319424]["OptionPoint64"] = "6-4"
tItem[3319424]["OptionPoint65"] = "6-5"
tItem[3319424]["OptionPoint66"] = "1-1"

tItem[3319424]["Text2-5"] = {251}
tItem[3319424]["tOption2-5"] = {71,72,73,74,75}
tItem[3319424]["OptionPoint71"] = "7-1"
tItem[3319424]["OptionPoint72"] = "7-2"
tItem[3319424]["OptionPoint73"] = "7-3"
tItem[3319424]["OptionPoint74"] = "1-1"

tItem[3319424]["Text3-1"] = {311}
tItem[3319424]["tOption3-1"] = {311,1}
tItem[3319424]["OptionFunc311"] = "TaoistImproveSales_P7SoulSelect</N>3319424</N>31"

tItem[3319424]["Text3-2"] = {321}
tItem[3319424]["tOption3-2"] = {321,1}
tItem[3319424]["OptionFunc321"] = "TaoistImproveSales_P7SoulSelect</N>3319424</N>32"

tItem[3319424]["Text3-3"] = {331}
tItem[3319424]["tOption3-3"] = {331,1}
tItem[3319424]["OptionFunc331"] = "TaoistImproveSales_P7SoulSelect</N>3319424</N>33"

tItem[3319424]["Text3-4"] = {341}
tItem[3319424]["tOption3-4"] = {341,1}
tItem[3319424]["OptionFunc341"] = "TaoistImproveSales_P7SoulSelect</N>3319424</N>34"

tItem[3319424]["Text4-1"] = {411}
tItem[3319424]["tOption4-1"] = {411,1}
tItem[3319424]["OptionFunc411"] = "TaoistImproveSales_P7SoulSelect</N>3319424</N>41"

tItem[3319424]["Text4-2"] = {421}
tItem[3319424]["tOption4-2"] = {421,1}
tItem[3319424]["OptionFunc421"] = "TaoistImproveSales_P7SoulSelect</N>3319424</N>42"

tItem[3319424]["Text5-1"] = {511}
tItem[3319424]["tOption5-1"] = {511,1}
tItem[3319424]["OptionFunc511"] = "TaoistImproveSales_P7SoulSelect</N>3319424</N>51"

tItem[3319424]["Text5-2"] = {521}
tItem[3319424]["tOption5-2"] = {521,1}
tItem[3319424]["OptionFunc521"] = "TaoistImproveSales_P7SoulSelect</N>3319424</N>52"

tItem[3319424]["Text6-1"] = {611}
tItem[3319424]["tOption6-1"] = {611,1}
tItem[3319424]["OptionFunc611"] = "TaoistImproveSales_P7SoulSelect</N>3319424</N>61"

tItem[3319424]["Text6-2"] = {621}
tItem[3319424]["tOption6-2"] = {621,1}
tItem[3319424]["OptionFunc621"] = "TaoistImproveSales_P7SoulSelect</N>3319424</N>62"

tItem[3319424]["Text6-3"] = {631}
tItem[3319424]["tOption6-3"] = {631,1}
tItem[3319424]["OptionFunc631"] = "TaoistImproveSales_P7SoulSelect</N>3319424</N>63"

tItem[3319424]["Text6-4"] = {641}
tItem[3319424]["tOption6-4"] = {641,1}
tItem[3319424]["OptionFunc641"] = "TaoistImproveSales_P7SoulSelect</N>3319424</N>64"

tItem[3319424]["Text6-5"] = {651}
tItem[3319424]["tOption6-5"] = {651,1}
tItem[3319424]["OptionFunc651"] = "TaoistImproveSales_P7SoulSelect</N>3319424</N>65"

tItem[3319424]["Text7-1"] = {711}
tItem[3319424]["tOption7-1"] = {711,1}
tItem[3319424]["OptionFunc711"] = "TaoistImproveSales_P7SoulSelect</N>3319424</N>71"

tItem[3319424]["Text7-2"] = {721}
tItem[3319424]["tOption7-2"] = {721,1}
tItem[3319424]["OptionFunc721"] = "TaoistImproveSales_P7SoulSelect</N>3319424</N>72"

tItem[3319424]["Text7-3"] = {731}
tItem[3319424]["tOption7-3"] = {731,1}
tItem[3319424]["OptionFunc731"] = "TaoistImproveSales_P7SoulSelect</N>3319424</N>73"
---------------------------------怪物部分---------------------------------------------
-- 道士专购赤炼石+8包
tItem[3319382] = tItem[3319382] or {}
-- 道士专购赤炼石+6包
tItem[3319383] = tItem[3319382] or {}
-- 道士专购开洞包A
tItem[3319384] = tItem[3319382] or {}
-- 道士专购开洞包B
tItem[3319385] = tItem[3319382] or {}
-- 道士专购真武宝石包
tItem[3319386] = tItem[3319382] or {}
-- 道士专购大固化石包
tItem[3319387] = tItem[3319382] or {}
-- 道士专购散功丹包
tItem[3319389] = tItem[3319382] or {}
-- 道士专购气力包
tItem[3319390] = tItem[3319382] or {}
-- 道士专购抽奖包
tItem[3319391] = tItem[3319382] or {}
-- +6赤练石
tItem[3319392] = tItem[3319382] or {}
--+8赤练石
tItem[3319393] = tItem[3319382] or {}
--大固化石
tItem[3319394] = tItem[3319382] or {}
--金刚尖钻
tItem[3319397] = tItem[3319382] or {}
--晶莹星陨石
tItem[3319398] = tItem[3319382] or {}
--晶莹星陨石*2
tItem[3319399] = tItem[3319382] or {}
--璀璨星陨石
tItem[3319400] = tItem[3319382] or {}
--璀璨星陨石*2
tItem[3319401] = tItem[3319382] or {}
--龙珠卷
tItem[3319402] = tItem[3319382] or {}
--小抽奖券礼包*100
tItem[3319403] = tItem[3319382] or {}
--小固化石
tItem[3319404] = tItem[3319382] or {}
--清心符礼包（内含50张清心符，不可兑换天石）
tItem[3319405] = tItem[3319382] or {}
--5000气力值
tItem[3319406] = tItem[3319382] or {}
--修行值10000点
tItem[3319407] = tItem[3319382] or {}
--修为值10000点
tItem[3319408] = tItem[3319382] or {}
--大爆丹10颗
tItem[3319409] = tItem[3319382] or {}
--强练丹50颗
tItem[3319410] = tItem[3319382] or {}
--小爆丹50颗
tItem[3319411] = tItem[3319382] or {}
--超级经验丹
tItem[3319412] = tItem[3319382] or {}
--3000分钟经验
tItem[3319413] = tItem[3319382] or {}
--100,000气力值赠
tItem[3319414] = tItem[3319382] or {}
--赠品龙珠*1
tItem[3319415] = tItem[3319382] or {}
--赠品赤练石+3*1
tItem[3319416] = tItem[3319382] or {}
--赠品赤练石+6*1
tItem[3319417] = tItem[3319382] or {}
--赠品赤练石+8*1
tItem[3319418] = tItem[3319382] or {}
--赠品小固化石*1
tItem[3319419] = tItem[3319382] or {}
--赠品大固化石*1
tItem[3319420] = tItem[3319382] or {}
--赠品金刚尖钻*1
tItem[3319421] = tItem[3319382] or {}
--赠品七星宝钻*1
tItem[3319422] = tItem[3319382] or {}
--10000赠品天石
tItem[3319425] = tItem[3319382] or {}
--二转券
tItem[3319426] = tItem[3319382] or {}

tItem[3319382]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tTaoistImproveSales_Data[nItemId])
	
	if not bJudge then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tTaoistImproveSales_Data[nItemId],nUserId,bJudge)
end


-- 道士专购马匹包
tItem[3319388] = tItem[3319388] or {}
tItem[3319388]["Function"] = function(nItemId,sItemName)
	TaoistImproveSales_UseHorsePack(nItemId)
end
