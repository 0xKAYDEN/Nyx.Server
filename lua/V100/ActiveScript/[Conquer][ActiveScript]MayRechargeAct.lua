------------------------------------------------------------------------------------
--Name：           190512[英文征服][活动脚本]充值返利活动
--Creator:      杨艳
--Created:     2019/05/12
------------------------------------------------------------------------------------
--任务需求：


-- logid :12001424
--命名规范： MayRechargeAct_


------------------------------------------------------------------------------------

--奖励	
local tMayRechargeAct_Award = {}
	-- ===赤练石+5礼包
	-- ===索引: 3321594
	-- ===删除: 3321594,1
	-- ===
	tMayRechargeAct_Award[3321594] = {}
	tMayRechargeAct_Award[3321594]["LogId"] = 12001424
	tMayRechargeAct_Award[3321594]["DeleteItem"] = {}
	tMayRechargeAct_Award[3321594]["DeleteItem"][1] = {}
	tMayRechargeAct_Award[3321594]["DeleteItem"][1]["Id"] = 3321594 -- 【库】+5赤炼石（赠）礼包[属性:9]
	tMayRechargeAct_Award[3321594]["RewardItem"] = {}
	tMayRechargeAct_Award[3321594]["RewardItem"][1] = {}
	tMayRechargeAct_Award[3321594]["RewardItem"][1]["Id"] = 730005 -- 【库】+5Stone[属性:0]【表格】赠赤炼石+5*2（实际得到3个）
	tMayRechargeAct_Award[3321594]["RewardItem"][1]["Attr"] = "0 3 3" -- +5Stone(赠)*3
	tMayRechargeAct_Award[3321594]["RewardEffect"] = {}
	tMayRechargeAct_Award[3321594]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayRechargeAct_Award[3321594]["RewardEffect"]["Effect"] = "angelwing"


	-- ===晶莹星陨石返利包
	-- ===索引: 3321595
	-- ===删除: 3321595,1
	-- ===
	tMayRechargeAct_Award[3321595] = {}
	
	tMayRechargeAct_Award[3321595][1] = {}
	tMayRechargeAct_Award[3321595][1]["LogId"] = 12001424
	tMayRechargeAct_Award[3321595][1]["DeleteItem"] = {}
	tMayRechargeAct_Award[3321595][1]["DeleteItem"][1] = {}
	tMayRechargeAct_Award[3321595][1]["DeleteItem"][1]["Id"] = 3321595 -- 【库】晶莹星陨石返利包[属性:9]
	tMayRechargeAct_Award[3321595][1]["RewardItem"] = {}
	tMayRechargeAct_Award[3321595][1]["RewardItem"][1] = {}
	tMayRechargeAct_Award[3321595][1]["RewardItem"][1]["Id"] = 3304583 -- 【库】10RadiantStarStonesBox[属性:11]【表格】晶莹星陨石*20
	tMayRechargeAct_Award[3321595][1]["RewardItem"][1]["Attr"] = "0 2" -- 10RadiantStarStonesBox*2
	tMayRechargeAct_Award[3321595][1]["RewardEffect"] = {}
	tMayRechargeAct_Award[3321595][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayRechargeAct_Award[3321595][1]["RewardEffect"]["Effect"] = "angelwing"
	
	tMayRechargeAct_Award[3321595][2] = {}
	tMayRechargeAct_Award[3321595][2]["LogId"] = 12001424
	tMayRechargeAct_Award[3321595][2]["DeleteItem"] = {}
	tMayRechargeAct_Award[3321595][2]["DeleteItem"][1] = {}
	tMayRechargeAct_Award[3321595][2]["DeleteItem"][1]["Id"] = 3321595 -- 【库】晶莹星陨石返利包[属性:9]
	tMayRechargeAct_Award[3321595][2]["RewardItem"] = {}
	tMayRechargeAct_Award[3321595][2]["RewardItem"][1] = {}
	tMayRechargeAct_Award[3321595][2]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9]【表格】万能神纹精粹*800
	tMayRechargeAct_Award[3321595][2]["RewardItem"][1]["Attr"] = "0 800" -- UniversalRuneEssence*800
	tMayRechargeAct_Award[3321595][2]["RewardEffect"] = {}
	tMayRechargeAct_Award[3321595][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayRechargeAct_Award[3321595][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===晶莹星陨石豪华返利包
	-- ===索引: 3321596
	-- ===删除: 3321596,1
	-- ===
	tMayRechargeAct_Award[3321596] = {}
	tMayRechargeAct_Award[3321596][1] = {}
	tMayRechargeAct_Award[3321596][1]["LogId"] = 12001424
	tMayRechargeAct_Award[3321596][1]["DeleteItem"] = {}
	tMayRechargeAct_Award[3321596][1]["DeleteItem"][1] = {}
	tMayRechargeAct_Award[3321596][1]["DeleteItem"][1]["Id"] = 3321596 -- 【库】晶莹星陨石豪华返利包[属性:9]
	tMayRechargeAct_Award[3321596][1]["RewardItem"] = {}
	tMayRechargeAct_Award[3321596][1]["RewardItem"][1] = {}
	tMayRechargeAct_Award[3321596][1]["RewardItem"][1]["Id"] = 3304583 -- 【库】10RadiantStarStonesBox[属性:11]【表格】晶莹星陨石*30
	tMayRechargeAct_Award[3321596][1]["RewardItem"][1]["Attr"] = "0 3" -- 10RadiantStarStonesBox*3
	tMayRechargeAct_Award[3321596][1]["RewardEffect"] = {}
	tMayRechargeAct_Award[3321596][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayRechargeAct_Award[3321596][1]["RewardEffect"]["Effect"] = "angelwing"
	
	tMayRechargeAct_Award[3321596][2] = {}
	tMayRechargeAct_Award[3321596][2]["LogId"] = 12001424
	tMayRechargeAct_Award[3321596][2]["DeleteItem"] = {}
	tMayRechargeAct_Award[3321596][2]["DeleteItem"][1] = {}
	tMayRechargeAct_Award[3321596][2]["DeleteItem"][1]["Id"] = 3321596 -- 【库】晶莹星陨石豪华返利包[属性:9]
	tMayRechargeAct_Award[3321596][2]["RewardStrengthValue"] = {}
	tMayRechargeAct_Award[3321596][2]["RewardStrengthValue"]["Value"] = 200000 -- 气力值
	tMayRechargeAct_Award[3321596][2]["RewardEffect"] = {}
	tMayRechargeAct_Award[3321596][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayRechargeAct_Award[3321596][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===神纹源晶返利包
	-- ===索引: 3321597
	-- ===删除: 3321597,1
	-- ===
	tMayRechargeAct_Award[3321597] = {}
	tMayRechargeAct_Award[3321597]["LogId"] = 12001424
	tMayRechargeAct_Award[3321597]["DeleteItem"] = {}
	tMayRechargeAct_Award[3321597]["DeleteItem"][1] = {}
	tMayRechargeAct_Award[3321597]["DeleteItem"][1]["Id"] = 3321597 -- 【库】神纹源晶返利包[属性:9]
	tMayRechargeAct_Award[3321597]["RewardStrengthValue"] = {}
	tMayRechargeAct_Award[3321597]["RewardStrengthValue"]["Value"] = 100000 -- 气力值
	tMayRechargeAct_Award[3321597]["RewardItem"] = {}
	tMayRechargeAct_Award[3321597]["RewardItem"][1] = {}
	tMayRechargeAct_Award[3321597]["RewardItem"][1]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9]【表格】良品神纹源晶*27
	tMayRechargeAct_Award[3321597]["RewardItem"][1]["Attr"] = "0 27" -- MysticRuneStone*27
	tMayRechargeAct_Award[3321597]["RewardEffect"] = {}
	tMayRechargeAct_Award[3321597]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayRechargeAct_Award[3321597]["RewardEffect"]["Effect"] = "angelwing"


	-- ===神纹源晶豪华返利包
	-- ===索引: 3321598
	-- ===删除: 3321598,1
	-- ===
	tMayRechargeAct_Award[3321598] = {}
	tMayRechargeAct_Award[3321598]["LogId"] = 12001424
	tMayRechargeAct_Award[3321598]["DeleteItem"] = {}
	tMayRechargeAct_Award[3321598]["DeleteItem"][1] = {}
	tMayRechargeAct_Award[3321598]["DeleteItem"][1]["Id"] = 3321598 -- 【库】神纹源晶豪华返利包[属性:9]
	tMayRechargeAct_Award[3321598]["RewardItem"] = {}
	tMayRechargeAct_Award[3321598]["RewardItem"][1] = {}
	tMayRechargeAct_Award[3321598]["RewardItem"][1]["Id"] = 3311821 -- 【库】DivineRuneStone[属性:9]【表格】优质神纹源晶*7（实际得到10个）
	tMayRechargeAct_Award[3321598]["RewardItem"][1]["Attr"] = "0 10" -- DivineRuneStone*10
	tMayRechargeAct_Award[3321598]["RewardEffect"] = {}
	tMayRechargeAct_Award[3321598]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayRechargeAct_Award[3321598]["RewardEffect"]["Effect"] = "angelwing"


	-- ===璀璨星陨石返利包
	-- ===索引: 3321599
	-- ===删除: 3321599,1
	-- ===
	tMayRechargeAct_Award[3321599] = {}
	tMayRechargeAct_Award[3321599]["LogId"] = 12001424
	tMayRechargeAct_Award[3321599]["DeleteItem"] = {}
	tMayRechargeAct_Award[3321599]["DeleteItem"][1] = {}
	tMayRechargeAct_Award[3321599]["DeleteItem"][1]["Id"] = 3321599 -- 【库】璀璨星陨石返利包[属性:9]
	tMayRechargeAct_Award[3321599]["RewardItem"] = {}
	tMayRechargeAct_Award[3321599]["RewardItem"][1] = {}
	tMayRechargeAct_Award[3321599]["RewardItem"][1]["Id"] = 3009003 -- 【库】SplendidStarStone[属性:9]【表格】璀璨星陨石*5
	tMayRechargeAct_Award[3321599]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的SplendidStarStone*5
	tMayRechargeAct_Award[3321599]["RewardItem"][2] = {}
	tMayRechargeAct_Award[3321599]["RewardItem"][2]["Id"] = 4200008 -- 【库】P8Anima[属性:72]【表格】6阶灵珠*2（实际得到8阶灵珠*2）
	tMayRechargeAct_Award[3321599]["RewardItem"][2]["Attr"] = "0 2" -- P8Anima*2
	tMayRechargeAct_Award[3321599]["RewardEffect"] = {}
	tMayRechargeAct_Award[3321599]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayRechargeAct_Award[3321599]["RewardEffect"]["Effect"] = "angelwing"


	-- ===万能神纹精粹返利包
	-- ===索引: 3321600
	-- ===删除: 3321600,1
	-- ===
	tMayRechargeAct_Award[3321600] = {}
	tMayRechargeAct_Award[3321600]["LogId"] = 12001424
	tMayRechargeAct_Award[3321600]["DeleteItem"] = {}
	tMayRechargeAct_Award[3321600]["DeleteItem"][1] = {}
	tMayRechargeAct_Award[3321600]["DeleteItem"][1]["Id"] = 3321600 -- 【库】万能神纹精粹返利包[属性:9]
	tMayRechargeAct_Award[3321600]["RewardItem"] = {}
	tMayRechargeAct_Award[3321600]["RewardItem"][1] = {}
	tMayRechargeAct_Award[3321600]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9]【表格】万能神纹精粹*3000
	tMayRechargeAct_Award[3321600]["RewardItem"][1]["Attr"] = "0 3000" -- UniversalRuneEssence*3000
	tMayRechargeAct_Award[3321600]["RewardItem"][2] = {}
	tMayRechargeAct_Award[3321600]["RewardItem"][2]["Id"] = 1200005 -- 【库】ToughDrill[属性:0]【表格】非赠金刚坚钻*3
	tMayRechargeAct_Award[3321600]["RewardItem"][2]["Attr"] = "0 3" -- ToughDrill*3
	tMayRechargeAct_Award[3321600]["RewardEffect"] = {}
	tMayRechargeAct_Award[3321600]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayRechargeAct_Award[3321600]["RewardEffect"]["Effect"] = "angelwing"


	-- ===抽奖券返利包
	-- ===索引: 3321601
	-- ===删除: 3321601,1
	-- ===
	tMayRechargeAct_Award[3321601] = {}
	tMayRechargeAct_Award[3321601]["LogId"] = 12001424
	tMayRechargeAct_Award[3321601]["DeleteItem"] = {}
	tMayRechargeAct_Award[3321601]["DeleteItem"][1] = {}
	tMayRechargeAct_Award[3321601]["DeleteItem"][1]["Id"] = 3321601 -- 【库】抽奖券返利包[属性:9]
	tMayRechargeAct_Award[3321601]["RewardItem"] = {}
	tMayRechargeAct_Award[3321601]["RewardItem"][1] = {}
	tMayRechargeAct_Award[3321601]["RewardItem"][1]["Id"] = 711504 -- 【库】SmallLotteryTicket[属性:9]【表格】非赠抽奖券礼包（内含900张小抽奖券，3张抽一次）
	tMayRechargeAct_Award[3321601]["RewardItem"][1]["Attr"] = "0 900" -- SmallLotteryTicket*900
	tMayRechargeAct_Award[3321601]["RewardItem"][2] = {}
	tMayRechargeAct_Award[3321601]["RewardItem"][2]["Id"] = 730008 -- 【库】+8Stone[属性:0]【表格】赠赤炼石+8*4（实际得到5个）
	tMayRechargeAct_Award[3321601]["RewardItem"][2]["Attr"] = "0 5 3" -- +8Stone(赠)*5
	tMayRechargeAct_Award[3321601]["RewardEffect"] = {}
	tMayRechargeAct_Award[3321601]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayRechargeAct_Award[3321601]["RewardEffect"]["Effect"] = "angelwing"


	-- ===散功丹返利包
	-- ===索引: 3321602
	-- ===删除: 3321602,1
	-- ===
	tMayRechargeAct_Award[3321602] = {}
	tMayRechargeAct_Award[3321602][1] = {}
	tMayRechargeAct_Award[3321602][1]["LogId"] = 12001424
	tMayRechargeAct_Award[3321602][1]["DeleteItem"] = {}
	tMayRechargeAct_Award[3321602][1]["DeleteItem"][1] = {}
	tMayRechargeAct_Award[3321602][1]["DeleteItem"][1]["Id"] = 3321602 -- 【库】散功丹返利包[属性:9]
	tMayRechargeAct_Award[3321602][1]["RewardItem"] = {}
	tMayRechargeAct_Award[3321602][1]["RewardItem"][1] = {}
	tMayRechargeAct_Award[3321602][1]["RewardItem"][1]["Id"] = 3005412 -- 【库】PowerEraser[属性:0]【表格】赠散功丹*65
	tMayRechargeAct_Award[3321602][1]["RewardItem"][1]["Attr"] = "0 65 3" -- PowerEraser(赠)*65
	tMayRechargeAct_Award[3321602][1]["RewardEffect"] = {}
	tMayRechargeAct_Award[3321602][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayRechargeAct_Award[3321602][1]["RewardEffect"]["Effect"] = "angelwing"

	tMayRechargeAct_Award[3321602][2] = {}
	tMayRechargeAct_Award[3321602][2]["LogId"] = 12001424
	tMayRechargeAct_Award[3321602][2]["DeleteItem"] = {}
	tMayRechargeAct_Award[3321602][2]["DeleteItem"][1] = {}
	tMayRechargeAct_Award[3321602][2]["DeleteItem"][1]["Id"] = 3321602 -- 【库】散功丹返利包[属性:9]
	tMayRechargeAct_Award[3321602][2]["RewardStrengthValue"] = {}
	tMayRechargeAct_Award[3321602][2]["RewardStrengthValue"]["Value"] = 600000 -- 气力值
	tMayRechargeAct_Award[3321602][2]["RewardEffect"] = {}
	tMayRechargeAct_Award[3321602][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayRechargeAct_Award[3321602][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===15万天石（赠）返利包
	-- ===索引: 3321603
	-- ===删除: 3321603,1
	-- ===
	tMayRechargeAct_Award[3321603] = {}
	tMayRechargeAct_Award[3321603]["LogId"] = 12001424
	tMayRechargeAct_Award[3321603]["DeleteItem"] = {}
	tMayRechargeAct_Award[3321603]["DeleteItem"][1] = {}
	tMayRechargeAct_Award[3321603]["DeleteItem"][1]["Id"] = 3321603 -- 【库】15万天石（赠）返利包[属性:9]
	tMayRechargeAct_Award[3321603]["RewardEMoneyMono"] = {}
	tMayRechargeAct_Award[3321603]["RewardEMoneyMono"]["Value"] = 150000 -- 天石（赠）
--	tMayRechargeAct_Award[3321603]["EmoneyLog"] = "10000	X	0	0	150000	"
	tMayRechargeAct_Award[3321603]["RewardEffect"] = {}
	tMayRechargeAct_Award[3321603]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayRechargeAct_Award[3321603]["RewardEffect"]["Effect"] = "angelwing"


	-- ===稀有黄色神纹（赠）返利包
	-- ===索引: 3321604
	-- ===删除: 3321604,1
	-- ===
	tMayRechargeAct_Award[3321604] = {}
	tMayRechargeAct_Award[3321604]["LogId"] = 12001424
	tMayRechargeAct_Award[3321604]["DeleteItem"] = {}
	tMayRechargeAct_Award[3321604]["DeleteItem"][1] = {}
	tMayRechargeAct_Award[3321604]["DeleteItem"][1]["Id"] = 3321604 -- 【库】稀有黄色神纹（赠）返利包[属性:9]
	tMayRechargeAct_Award[3321604]["RewardItem"] = {}
	tMayRechargeAct_Award[3321604]["RewardItem"][1] = {}
	tMayRechargeAct_Award[3321604]["RewardItem"][1]["Id"] = 3319014 -- 【库】 3319014 【enzf库里没有该物品】[属性:]【表格】赠+2稀有黄色神纹随机包*1
	tMayRechargeAct_Award[3321604]["RewardItem"][1]["Attr"] = "0 1 3" --  3319014 【enzf库里没有该物品】(赠)*1
	tMayRechargeAct_Award[3321604]["RewardItem"][2] = {}
	tMayRechargeAct_Award[3321604]["RewardItem"][2]["Id"] = 723695 -- 【库】BigPermanentStone[属性:0]【表格】非赠大固化石*1
	tMayRechargeAct_Award[3321604]["RewardItem"][2]["Attr"] = "0 1" -- BigPermanentStone*1
	tMayRechargeAct_Award[3321604]["RewardEffect"] = {}
	tMayRechargeAct_Award[3321604]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayRechargeAct_Award[3321604]["RewardEffect"]["Effect"] = "angelwing"


	-- ===血菩提返利包
	-- ===索引: 3321605
	-- ===删除: 3321605,1
	-- ===
	tMayRechargeAct_Award[3321605] = {}
	tMayRechargeAct_Award[3321605]["LogId"] = 12001424
	tMayRechargeAct_Award[3321605]["DeleteItem"] = {}
	tMayRechargeAct_Award[3321605]["DeleteItem"][1] = {}
	tMayRechargeAct_Award[3321605]["DeleteItem"][1]["Id"] = 3321605 -- 【库】血菩提返利包[属性:9]
	tMayRechargeAct_Award[3321605]["RewardItem"] = {}
	tMayRechargeAct_Award[3321605]["RewardItem"][1] = {}
	tMayRechargeAct_Award[3321605]["RewardItem"][1]["Id"] = 3009104 -- 【库】RedBodhiBean[属性:9]【表格】血菩提*40
	tMayRechargeAct_Award[3321605]["RewardItem"][1]["Attr"] = "0 40" -- RedBodhiBean*40
	tMayRechargeAct_Award[3321605]["RewardEffect"] = {}
	tMayRechargeAct_Award[3321605]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayRechargeAct_Award[3321605]["RewardEffect"]["Effect"] = "angelwing"

	
	-- ===神纹源晶至尊返利包
	-- ===索引: 3321606
	-- ===删除: 3321606,1
	-- ===
	tMayRechargeAct_Award[3321606] = {}
	tMayRechargeAct_Award[3321606]["LogId"] = 12001424
	tMayRechargeAct_Award[3321606]["DeleteItem"] = {}
	tMayRechargeAct_Award[3321606]["DeleteItem"][1] = {}
	tMayRechargeAct_Award[3321606]["DeleteItem"][1]["Id"] = 3321606 -- 【库】神纹源晶至尊返利包[属性:9]
	tMayRechargeAct_Award[3321606]["RewardItem"] = {}
	tMayRechargeAct_Award[3321606]["RewardItem"][1] = {}
	tMayRechargeAct_Award[3321606]["RewardItem"][1]["Id"] = 3311821 -- 【库】DivineRuneStone[属性:9]【表格】优质神纹源晶*35
	tMayRechargeAct_Award[3321606]["RewardItem"][1]["Attr"] = "0 35" -- DivineRuneStone*35
	tMayRechargeAct_Award[3321606]["RewardEffect"] = {}
	tMayRechargeAct_Award[3321606]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayRechargeAct_Award[3321606]["RewardEffect"]["Effect"] = "angelwing"


	-- ===爵位捐献道具返利包
	-- ===索引: 3321607
	-- ===删除: 3321607,1
	-- ===
	tMayRechargeAct_Award[3321607] = {}
	tMayRechargeAct_Award[3321607]["LogId"] = 12001424
	tMayRechargeAct_Award[3321607]["DeleteItem"] = {}
	tMayRechargeAct_Award[3321607]["DeleteItem"][1] = {}
	tMayRechargeAct_Award[3321607]["DeleteItem"][1]["Id"] = 3321607 -- 【库】爵位捐献道具返利包[属性:9]
	tMayRechargeAct_Award[3321607]["RewardItem"] = {}
	tMayRechargeAct_Award[3321607]["RewardItem"][1] = {}
	tMayRechargeAct_Award[3321607]["RewardItem"][1]["Id"] = 3320151 -- 【库】DragonBall[属性:0]【表格】爵位捐献道具*13（线下藏宝阁售卖的那个）
	tMayRechargeAct_Award[3321607]["RewardItem"][1]["Attr"] = "0 13" -- DragonBall*13
	tMayRechargeAct_Award[3321607]["RewardEffect"] = {}
	tMayRechargeAct_Award[3321607]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayRechargeAct_Award[3321607]["RewardEffect"]["Effect"] = "angelwing"


	-- ===璀璨星陨石豪华返利包
	-- ===索引: 3321608
	-- ===删除: 3321608,1
	-- ===
	tMayRechargeAct_Award[3321608] = {}
	tMayRechargeAct_Award[3321608]["LogId"] = 12001424
	tMayRechargeAct_Award[3321608]["DeleteItem"] = {}
	tMayRechargeAct_Award[3321608]["DeleteItem"][1] = {}
	tMayRechargeAct_Award[3321608]["DeleteItem"][1]["Id"] = 3321608 -- 【库】璀璨星陨石豪华返利包[属性:9]
	tMayRechargeAct_Award[3321608]["RewardItem"] = {}
	tMayRechargeAct_Award[3321608]["RewardItem"][1] = {}
	tMayRechargeAct_Award[3321608]["RewardItem"][1]["Id"] = 3304580 -- 【库】10SplendidStarStonseBox[属性:11]【表格】璀璨星陨石*20
	tMayRechargeAct_Award[3321608]["RewardItem"][1]["Attr"] = "0 2" -- 10SplendidStarStonseBox*2
	tMayRechargeAct_Award[3321608]["RewardStrengthValue"] = {}
	tMayRechargeAct_Award[3321608]["RewardStrengthValue"]["Value"] = 450000 -- 气力值
	tMayRechargeAct_Award[3321608]["RewardEffect"] = {}
	tMayRechargeAct_Award[3321608]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayRechargeAct_Award[3321608]["RewardEffect"]["Effect"] = "angelwing"


	-- ===豪华外套返利包
	-- ===索引: 3321609
	-- ===删除: 3321609,1
	-- ===
	tMayRechargeAct_Award[3321609] = {}
	tMayRechargeAct_Award[3321609]["LogId"] = 12001424
	tMayRechargeAct_Award[3321609]["DeleteItem"] = {}
	tMayRechargeAct_Award[3321609]["DeleteItem"][1] = {}
	tMayRechargeAct_Award[3321609]["DeleteItem"][1]["Id"] = 3321609 -- 【库】豪华外套返利包[属性:9]
	tMayRechargeAct_Award[3321609]["RewardItem"] = {}
	tMayRechargeAct_Award[3321609]["RewardItem"][1] = {}
	tMayRechargeAct_Award[3321609]["RewardItem"][1]["Id"] = 195605 -- 【库】RockingRomance(Fantasy)[属性:0]【表格】赠永久五星外套神佑-1RockingRomance（Fantasy）*1（其实得到非赠）
	tMayRechargeAct_Award[3321609]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑RockingRomance(Fantasy)*1
	tMayRechargeAct_Award[3321609]["RewardItem"][2] = {}
	tMayRechargeAct_Award[3321609]["RewardItem"][2]["Id"] = 200573 -- 【库】RadiantLotus[属性:0]【表格】赠永久五星外套神佑-1璀璨金莲*1（其实得到非赠）
	tMayRechargeAct_Award[3321609]["RewardItem"][2]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑RadiantLotus*1
	tMayRechargeAct_Award[3321609]["RewardEffect"] = {}
	tMayRechargeAct_Award[3321609]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayRechargeAct_Award[3321609]["RewardEffect"]["Effect"] = "angelwing"


	-- ===稀有黄色神纹（赠）精致返利包
	-- ===索引: 3321610
	-- ===删除: 3321610,1
	-- ===
	tMayRechargeAct_Award[3321610] = {}
	tMayRechargeAct_Award[3321610]["LogId"] = 12001424
	tMayRechargeAct_Award[3321610]["DeleteItem"] = {}
	tMayRechargeAct_Award[3321610]["DeleteItem"][1] = {}
	tMayRechargeAct_Award[3321610]["DeleteItem"][1]["Id"] = 3321610 -- 【库】稀有黄色神纹（赠）精致返利包[属性:9]
	tMayRechargeAct_Award[3321610]["RewardItem"] = {}
	tMayRechargeAct_Award[3321610]["RewardItem"][1] = {}
	tMayRechargeAct_Award[3321610]["RewardItem"][1]["Id"] = 3319014 -- 【库】 3319014 【enzf库里没有该物品】[属性:]【表格】赠+2稀有黄色神纹随机包*2
	tMayRechargeAct_Award[3321610]["RewardItem"][1]["Attr"] = "0 2 3" --  3319014 【enzf库里没有该物品】(赠)*2
	tMayRechargeAct_Award[3321610]["RewardItem"][2] = {}
	tMayRechargeAct_Award[3321610]["RewardItem"][2]["Id"] = 3005412 -- 【库】PowerEraser[属性:0]【表格】非赠散功丹*30
	tMayRechargeAct_Award[3321610]["RewardItem"][2]["Attr"] = "0 30" -- PowerEraser*30
	tMayRechargeAct_Award[3321610]["RewardEffect"] = {}
	tMayRechargeAct_Award[3321610]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayRechargeAct_Award[3321610]["RewardEffect"]["Effect"] = "angelwing"


	-- ===万能神纹精粹豪华返利包
	-- ===索引: 3321611
	-- ===删除: 3321611,1
	-- ===
	tMayRechargeAct_Award[3321611] = {}
	tMayRechargeAct_Award[3321611]["LogId"] = 12001424
	tMayRechargeAct_Award[3321611]["DeleteItem"] = {}
	tMayRechargeAct_Award[3321611]["DeleteItem"][1] = {}
	tMayRechargeAct_Award[3321611]["DeleteItem"][1]["Id"] = 3321611 -- 【库】万能神纹精粹豪华返利包[属性:9]
	tMayRechargeAct_Award[3321611]["RewardItem"] = {}
	tMayRechargeAct_Award[3321611]["RewardItem"][1] = {}
	tMayRechargeAct_Award[3321611]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9]【表格】万能神纹精粹*12500
	tMayRechargeAct_Award[3321611]["RewardItem"][1]["Attr"] = "0 12500" -- UniversalRuneEssence*12500
	tMayRechargeAct_Award[3321611]["RewardEffect"] = {}
	tMayRechargeAct_Award[3321611]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayRechargeAct_Award[3321611]["RewardEffect"]["Effect"] = "angelwing"


	-- ===稀有黄色神纹（赠）豪华返利包
	-- ===索引: 3321612
	-- ===删除: 3321612,1
	-- ===
	tMayRechargeAct_Award[3321612] = {}
	tMayRechargeAct_Award[3321612]["LogId"] = 12001424
	tMayRechargeAct_Award[3321612]["DeleteItem"] = {}
	tMayRechargeAct_Award[3321612]["DeleteItem"][1] = {}
	tMayRechargeAct_Award[3321612]["DeleteItem"][1]["Id"] = 3321612 -- 【库】稀有黄色神纹（赠）豪华返利包[属性:9]
	tMayRechargeAct_Award[3321612]["RewardItem"] = {}
	tMayRechargeAct_Award[3321612]["RewardItem"][1] = {}
	tMayRechargeAct_Award[3321612]["RewardItem"][1]["Id"] = 3319015 -- 【库】 3319015 【enzf库里没有该物品】[属性:]【表格】赠+3稀有黄色神纹随机包*3
	tMayRechargeAct_Award[3321612]["RewardItem"][1]["Attr"] = "0 3 3" --  3319015 【enzf库里没有该物品】*3
	tMayRechargeAct_Award[3321612]["RewardEffect"] = {}
	tMayRechargeAct_Award[3321612]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayRechargeAct_Award[3321612]["RewardEffect"]["Effect"] = "angelwing"


	-- ===稀有黄色神纹（赠）至尊返利包
	-- ===索引: 3321613
	-- ===删除: 3321613,1
	-- ===
	tMayRechargeAct_Award[3321613] = {}
	tMayRechargeAct_Award[3321613]["LogId"] = 12001424
	tMayRechargeAct_Award[3321613]["DeleteItem"] = {}
	tMayRechargeAct_Award[3321613]["DeleteItem"][1] = {}
	tMayRechargeAct_Award[3321613]["DeleteItem"][1]["Id"] = 3321613 -- 【库】稀有黄色神纹（赠）至尊返利包[属性:9]
	tMayRechargeAct_Award[3321613]["RewardItem"] = {}
	tMayRechargeAct_Award[3321613]["RewardItem"][1] = {}
	tMayRechargeAct_Award[3321613]["RewardItem"][1]["Id"] = 3321617 -- 【库】OptionalRareYellowRunePack[属性:9]【表格】赠+3稀有黄色神纹可选包*3
	tMayRechargeAct_Award[3321613]["RewardItem"][1]["Attr"] = "0 3" -- OptionalRareYellowRunePack*3
	tMayRechargeAct_Award[3321613]["RewardEffect"] = {}
	tMayRechargeAct_Award[3321613]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayRechargeAct_Award[3321613]["RewardEffect"]["Effect"] = "angelwing"


	-- ===指定炼气+1券返利包
	-- ===索引: 3321614
	-- ===删除: 3321614,1
	-- ===
	tMayRechargeAct_Award[3321614] = {}
	tMayRechargeAct_Award[3321614]["LogId"] = 12001424
	tMayRechargeAct_Award[3321614]["DeleteItem"] = {}
	tMayRechargeAct_Award[3321614]["DeleteItem"][1] = {}
	tMayRechargeAct_Award[3321614]["DeleteItem"][1]["Id"] = 3321614 -- 【库】指定炼气+1券返利包[属性:9]
	tMayRechargeAct_Award[3321614]["RewardItem"] = {}
	tMayRechargeAct_Award[3321614]["RewardItem"][1] = {}
	tMayRechargeAct_Award[3321614]["RewardItem"][1]["Id"] = 711903 -- 【库】DragonBall[属性:0]【表格】指定炼气+1券
	tMayRechargeAct_Award[3321614]["RewardItem"][1]["Attr"] = "0 1" -- DragonBall*1
	tMayRechargeAct_Award[3321614]["RewardEffect"] = {}
	tMayRechargeAct_Award[3321614]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMayRechargeAct_Award[3321614]["RewardEffect"]["Effect"] = "angelwing"

	
local 	tMayRechargeAct_RunAward = {}
		--(+2)稀有黄色神纹随机包(赠)
	tMayRechargeAct_RunAward[3319014] = {}
	tMayRechargeAct_RunAward[3319014][1] = {}
	tMayRechargeAct_RunAward[3319014][1]["ItemChanceSum"] = 10000
	
	tMayRechargeAct_RunAward[3319014][1][1] = {}
	tMayRechargeAct_RunAward[3319014][1][1]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319014][1][1]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319014][1][1]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319014][1][1]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319014][1][1]["RewardItem"][1]["Id"] = 4032002
	tMayRechargeAct_RunAward[3319014][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319014][1][1]["LogId"] = 12001424
	
	tMayRechargeAct_RunAward[3319014][1][2] = {}
	tMayRechargeAct_RunAward[3319014][1][2]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319014][1][2]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319014][1][2]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319014][1][2]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319014][1][2]["RewardItem"][1]["Id"] = 4032102
	tMayRechargeAct_RunAward[3319014][1][2]["RewardItem"][1]["Attr"] = "0 1 3 "
	tMayRechargeAct_RunAward[3319014][1][2]["LogId"] = 12001424
	
	tMayRechargeAct_RunAward[3319014][1][3] = {}
	tMayRechargeAct_RunAward[3319014][1][3]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319014][1][3]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319014][1][3]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319014][1][3]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319014][1][3]["RewardItem"][1]["Id"] = 4032202
	tMayRechargeAct_RunAward[3319014][1][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319014][1][3]["LogId"] = 12001424
	
	tMayRechargeAct_RunAward[3319014][1][4] = {}
	tMayRechargeAct_RunAward[3319014][1][4]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319014][1][4]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319014][1][4]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319014][1][4]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319014][1][4]["RewardItem"][1]["Id"] = 4032302
	tMayRechargeAct_RunAward[3319014][1][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319014][1][4]["LogId"] = 12001424
	
	tMayRechargeAct_RunAward[3319014][1][5] = {}
	tMayRechargeAct_RunAward[3319014][1][5]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319014][1][5]["ItemChance"] = 150
	tMayRechargeAct_RunAward[3319014][1][5]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319014][1][5]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319014][1][5]["RewardItem"][1]["Id"] = 4032402
	tMayRechargeAct_RunAward[3319014][1][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319014][1][5]["LogId"] = 12001424
	
	tMayRechargeAct_RunAward[3319014][1][6] = {}
	tMayRechargeAct_RunAward[3319014][1][6]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319014][1][6]["ItemChance"] = 150
	tMayRechargeAct_RunAward[3319014][1][6]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319014][1][6]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319014][1][6]["RewardItem"][1]["Id"] = 4032502
	tMayRechargeAct_RunAward[3319014][1][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319014][1][6]["LogId"] = 12001424
	
	tMayRechargeAct_RunAward[3319014][1][7] = {}
	tMayRechargeAct_RunAward[3319014][1][7]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319014][1][7]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319014][1][7]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319014][1][7]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319014][1][7]["RewardItem"][1]["Id"] = 4032602
	tMayRechargeAct_RunAward[3319014][1][7]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319014][1][7]["LogId"] = 12001424
	
	tMayRechargeAct_RunAward[3319014][1][8] = {}
	tMayRechargeAct_RunAward[3319014][1][8]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319014][1][8]["ItemChance"] = 150
	tMayRechargeAct_RunAward[3319014][1][8]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319014][1][8]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319014][1][8]["RewardItem"][1]["Id"] = 4032702
	tMayRechargeAct_RunAward[3319014][1][8]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319014][1][8]["LogId"] = 12001424
	
	tMayRechargeAct_RunAward[3319014][1][9] = {}
	tMayRechargeAct_RunAward[3319014][1][9]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319014][1][9]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319014][1][9]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319014][1][9]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319014][1][9]["RewardItem"][1]["Id"] = 4032802
	tMayRechargeAct_RunAward[3319014][1][9]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319014][1][9]["LogId"] = 12001424
	
	tMayRechargeAct_RunAward[3319014][1][10] = {}
	tMayRechargeAct_RunAward[3319014][1][10]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319014][1][10]["ItemChance"] = 150
	tMayRechargeAct_RunAward[3319014][1][10]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319014][1][10]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319014][1][10]["RewardItem"][1]["Id"] = 4031602
	tMayRechargeAct_RunAward[3319014][1][10]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319014][1][10]["LogId"] = 12001424
	
	tMayRechargeAct_RunAward[3319014][1][11] = {}
	tMayRechargeAct_RunAward[3319014][1][11]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319014][1][11]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319014][1][11]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319014][1][11]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319014][1][11]["RewardItem"][1]["Id"] = 4031502
	tMayRechargeAct_RunAward[3319014][1][11]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319014][1][11]["LogId"] = 12001424
	
	tMayRechargeAct_RunAward[3319014][1][12] = {}
	tMayRechargeAct_RunAward[3319014][1][12]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319014][1][12]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319014][1][12]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319014][1][12]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319014][1][12]["RewardItem"][1]["Id"] = 4031402
	tMayRechargeAct_RunAward[3319014][1][12]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319014][1][12]["LogId"] = 12001424
	
	--5.00%  【[4034001]- 乾坤护法(+2)*1】
	tMayRechargeAct_RunAward[3319014][1][13] = {}
	tMayRechargeAct_RunAward[3319014][1][13]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319014][1][13]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319014][1][13]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319014][1][13]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319014][1][13]["RewardItem"][1]["Id"] = 4034002
	tMayRechargeAct_RunAward[3319014][1][13]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319014][1][13]["LogId"] = 12001424
	
	--5.00%  【[4033901]- 斗转星移(+2)*1】
	tMayRechargeAct_RunAward[3319014][1][14] = {}
	tMayRechargeAct_RunAward[3319014][1][14]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319014][1][14]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319014][1][14]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319014][1][14]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319014][1][14]["RewardItem"][1]["Id"] = 4033902
	tMayRechargeAct_RunAward[3319014][1][14]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319014][1][14]["LogId"] = 12001424
	
	-- 5.00%  【[4033401]- 会心一击(+2)*1】
	tMayRechargeAct_RunAward[3319014][1][15] = {}
	tMayRechargeAct_RunAward[3319014][1][15]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319014][1][15]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319014][1][15]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319014][1][15]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319014][1][15]["RewardItem"][1]["Id"] = 4033402
	tMayRechargeAct_RunAward[3319014][1][15]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319014][1][15]["LogId"] = 12001424
	
	--5.00%  【[4034101]- 威慑(+2)*1】
	tMayRechargeAct_RunAward[3319014][1][16] = {}
	tMayRechargeAct_RunAward[3319014][1][16]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319014][1][16]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319014][1][16]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319014][1][16]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319014][1][16]["RewardItem"][1]["Id"] = 4034102
	tMayRechargeAct_RunAward[3319014][1][16]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319014][1][16]["LogId"] = 12001424
	
	--5.00%  【[4033301]- 致命准星(+2)*1】
	tMayRechargeAct_RunAward[3319014][1][17] = {}
	tMayRechargeAct_RunAward[3319014][1][17]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319014][1][17]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319014][1][17]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319014][1][17]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319014][1][17]["RewardItem"][1]["Id"] = 4033302
	tMayRechargeAct_RunAward[3319014][1][17]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319014][1][17]["LogId"] = 12001424
	
	--5.00%  【[4032901]- 例无虚发(+2)*1】
	tMayRechargeAct_RunAward[3319014][1][18] = {}
	tMayRechargeAct_RunAward[3319014][1][18]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319014][1][18]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319014][1][18]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319014][1][18]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319014][1][18]["RewardItem"][1]["Id"] = 4032902
	tMayRechargeAct_RunAward[3319014][1][18]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319014][1][18]["LogId"] = 12001424
	
	--5.00%  【[4033001]- 审判(+2)*1】
	tMayRechargeAct_RunAward[3319014][1][19] = {}
	tMayRechargeAct_RunAward[3319014][1][19]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319014][1][19]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319014][1][19]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319014][1][19]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319014][1][19]["RewardItem"][1]["Id"] = 4033002
	tMayRechargeAct_RunAward[3319014][1][19]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319014][1][19]["LogId"] = 12001424
	
	-- 4034202	乾坤妙法(+2)	2.75%
	tMayRechargeAct_RunAward[3319014][1][20] = {}
	tMayRechargeAct_RunAward[3319014][1][20]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319014][1][20]["ItemChance"] = 275
	tMayRechargeAct_RunAward[3319014][1][20]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319014][1][20]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319014][1][20]["RewardItem"][1]["Id"] = 4034202
	tMayRechargeAct_RunAward[3319014][1][20]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319014][1][20]["LogId"] = 12001424
-- 4034302	罡气护体(+2)	2.75%
	tMayRechargeAct_RunAward[3319014][1][21] = {}
	tMayRechargeAct_RunAward[3319014][1][21]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319014][1][21]["ItemChance"] = 275
	tMayRechargeAct_RunAward[3319014][1][21]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319014][1][21]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319014][1][21]["RewardItem"][1]["Id"] = 4034302
	tMayRechargeAct_RunAward[3319014][1][21]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319014][1][21]["LogId"] = 12001424
-- 4034402	沧澜破(+2)	2.75%
	tMayRechargeAct_RunAward[3319014][1][22] = {}
	tMayRechargeAct_RunAward[3319014][1][22]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319014][1][22]["ItemChance"] = 275
	tMayRechargeAct_RunAward[3319014][1][22]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319014][1][22]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319014][1][22]["RewardItem"][1]["Id"] = 4034402
	tMayRechargeAct_RunAward[3319014][1][22]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319014][1][22]["LogId"] = 12001424
-- 4034502	妙手回春(+2)	2.750%
	tMayRechargeAct_RunAward[3319014][1][23] = {}
	tMayRechargeAct_RunAward[3319014][1][23]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319014][1][23]["ItemChance"] = 275
	tMayRechargeAct_RunAward[3319014][1][23]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319014][1][23]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319014][1][23]["RewardItem"][1]["Id"] = 4034502
	tMayRechargeAct_RunAward[3319014][1][23]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319014][1][23]["LogId"] = 12001424
-- 4034602	最终法伤免疫(+2)	2.750%
	tMayRechargeAct_RunAward[3319014][1][24] = {}
	tMayRechargeAct_RunAward[3319014][1][24]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319014][1][24]["ItemChance"] = 275
	tMayRechargeAct_RunAward[3319014][1][24]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319014][1][24]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319014][1][24]["RewardItem"][1]["Id"] = 4034602
	tMayRechargeAct_RunAward[3319014][1][24]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319014][1][24]["LogId"] = 12001424
-- 4034702	最终物伤免疫(+2)	2.750%
	tMayRechargeAct_RunAward[3319014][1][25] = {}
	tMayRechargeAct_RunAward[3319014][1][25]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319014][1][25]["ItemChance"] = 275
	tMayRechargeAct_RunAward[3319014][1][25]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319014][1][25]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319014][1][25]["RewardItem"][1]["Id"] = 4034702
	tMayRechargeAct_RunAward[3319014][1][25]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319014][1][25]["LogId"] = 12001424
-- 4034802	碎玄元(+2)	2.50%
	tMayRechargeAct_RunAward[3319014][1][26] = {}
	tMayRechargeAct_RunAward[3319014][1][26]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319014][1][26]["ItemChance"] = 250
	tMayRechargeAct_RunAward[3319014][1][26]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319014][1][26]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319014][1][26]["RewardItem"][1]["Id"] = 4034802
	tMayRechargeAct_RunAward[3319014][1][26]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319014][1][26]["LogId"] = 12001424
-- 4034902	不死之身(+2)	0%
	tMayRechargeAct_RunAward[3319014][1][27] = {}
	tMayRechargeAct_RunAward[3319014][1][27]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319014][1][27]["ItemChance"] = 0
	tMayRechargeAct_RunAward[3319014][1][27]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319014][1][27]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319014][1][27]["RewardItem"][1]["Id"] = 4034902
	tMayRechargeAct_RunAward[3319014][1][27]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319014][1][27]["LogId"] = 12001424
	
	--(+3)稀有黄色神纹随机包(赠))
	tMayRechargeAct_RunAward[3319015] = {}
	tMayRechargeAct_RunAward[3319015][1] = {}
	tMayRechargeAct_RunAward[3319015][1]["ItemChanceSum"] = 10000
	
	tMayRechargeAct_RunAward[3319015][1][1] = {}
	tMayRechargeAct_RunAward[3319015][1][1]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319015][1][1]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319015][1][1]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319015][1][1]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319015][1][1]["RewardItem"][1]["Id"] = 4032003
	tMayRechargeAct_RunAward[3319015][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319015][1][1]["LogId"] = 12001424
	
	tMayRechargeAct_RunAward[3319015][1][2] = {}
	tMayRechargeAct_RunAward[3319015][1][2]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319015][1][2]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319015][1][2]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319015][1][2]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319015][1][2]["RewardItem"][1]["Id"] = 4032103
	tMayRechargeAct_RunAward[3319015][1][2]["RewardItem"][1]["Attr"] = "0 1 3 "
	tMayRechargeAct_RunAward[3319015][1][2]["LogId"] = 12001424
	
	tMayRechargeAct_RunAward[3319015][1][3] = {}
	tMayRechargeAct_RunAward[3319015][1][3]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319015][1][3]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319015][1][3]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319015][1][3]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319015][1][3]["RewardItem"][1]["Id"] = 4032203
	tMayRechargeAct_RunAward[3319015][1][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319015][1][3]["LogId"] = 12001424
	
	tMayRechargeAct_RunAward[3319015][1][4] = {}
	tMayRechargeAct_RunAward[3319015][1][4]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319015][1][4]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319015][1][4]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319015][1][4]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319015][1][4]["RewardItem"][1]["Id"] = 4032303
	tMayRechargeAct_RunAward[3319015][1][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319015][1][4]["LogId"] = 12001424
	
	tMayRechargeAct_RunAward[3319015][1][5] = {}
	tMayRechargeAct_RunAward[3319015][1][5]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319015][1][5]["ItemChance"] = 150
	tMayRechargeAct_RunAward[3319015][1][5]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319015][1][5]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319015][1][5]["RewardItem"][1]["Id"] = 4032403
	tMayRechargeAct_RunAward[3319015][1][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319015][1][5]["LogId"] = 12001424
	
	tMayRechargeAct_RunAward[3319015][1][6] = {}
	tMayRechargeAct_RunAward[3319015][1][6]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319015][1][6]["ItemChance"] = 150
	tMayRechargeAct_RunAward[3319015][1][6]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319015][1][6]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319015][1][6]["RewardItem"][1]["Id"] = 4032503
	tMayRechargeAct_RunAward[3319015][1][6]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319015][1][6]["LogId"] = 12001424
	
	tMayRechargeAct_RunAward[3319015][1][7] = {}
	tMayRechargeAct_RunAward[3319015][1][7]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319015][1][7]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319015][1][7]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319015][1][7]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319015][1][7]["RewardItem"][1]["Id"] = 4032603
	tMayRechargeAct_RunAward[3319015][1][7]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319015][1][7]["LogId"] = 12001424
	
	tMayRechargeAct_RunAward[3319015][1][8] = {}
	tMayRechargeAct_RunAward[3319015][1][8]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319015][1][8]["ItemChance"] = 150
	tMayRechargeAct_RunAward[3319015][1][8]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319015][1][8]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319015][1][8]["RewardItem"][1]["Id"] = 4032703
	tMayRechargeAct_RunAward[3319015][1][8]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319015][1][8]["LogId"] = 12001424
	
	tMayRechargeAct_RunAward[3319015][1][9] = {}
	tMayRechargeAct_RunAward[3319015][1][9]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319015][1][9]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319015][1][9]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319015][1][9]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319015][1][9]["RewardItem"][1]["Id"] = 4032803
	tMayRechargeAct_RunAward[3319015][1][9]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319015][1][9]["LogId"] = 12001424
	
	tMayRechargeAct_RunAward[3319015][1][10] = {}
	tMayRechargeAct_RunAward[3319015][1][10]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319015][1][10]["ItemChance"] = 150
	tMayRechargeAct_RunAward[3319015][1][10]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319015][1][10]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319015][1][10]["RewardItem"][1]["Id"] = 4031603
	tMayRechargeAct_RunAward[3319015][1][10]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319015][1][10]["LogId"] = 12001424
	
	tMayRechargeAct_RunAward[3319015][1][11] = {}
	tMayRechargeAct_RunAward[3319015][1][11]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319015][1][11]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319015][1][11]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319015][1][11]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319015][1][11]["RewardItem"][1]["Id"] = 4031503
	tMayRechargeAct_RunAward[3319015][1][11]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319015][1][11]["LogId"] = 12001424
	
	tMayRechargeAct_RunAward[3319015][1][12] = {}
	tMayRechargeAct_RunAward[3319015][1][12]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319015][1][12]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319015][1][12]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319015][1][12]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319015][1][12]["RewardItem"][1]["Id"] = 4031403
	tMayRechargeAct_RunAward[3319015][1][12]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319015][1][12]["LogId"] = 12001424
	
	--5.00%  【[4034001]- 乾坤护法(+3)*1】
	tMayRechargeAct_RunAward[3319015][1][13] = {}
	tMayRechargeAct_RunAward[3319015][1][13]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319015][1][13]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319015][1][13]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319015][1][13]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319015][1][13]["RewardItem"][1]["Id"] = 4034003
	tMayRechargeAct_RunAward[3319015][1][13]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319015][1][13]["LogId"] = 12001424
	
	--5.00%  【[4033901]- 斗转星移(+3)*1】
	tMayRechargeAct_RunAward[3319015][1][14] = {}
	tMayRechargeAct_RunAward[3319015][1][14]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319015][1][14]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319015][1][14]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319015][1][14]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319015][1][14]["RewardItem"][1]["Id"] = 4033903
	tMayRechargeAct_RunAward[3319015][1][14]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319015][1][14]["LogId"] = 12001424
	
	-- 5.00%  【[4033401]- 会心一击(+3)*1】
	tMayRechargeAct_RunAward[3319015][1][15] = {}
	tMayRechargeAct_RunAward[3319015][1][15]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319015][1][15]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319015][1][15]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319015][1][15]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319015][1][15]["RewardItem"][1]["Id"] = 4033403
	tMayRechargeAct_RunAward[3319015][1][15]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319015][1][15]["LogId"] = 12001424
	
	--5.00%  【[4034101]- 威慑(+3)*1】
	tMayRechargeAct_RunAward[3319015][1][16] = {}
	tMayRechargeAct_RunAward[3319015][1][16]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319015][1][16]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319015][1][16]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319015][1][16]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319015][1][16]["RewardItem"][1]["Id"] = 4034103
	tMayRechargeAct_RunAward[3319015][1][16]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319015][1][16]["LogId"] = 12001424
	
	--5.00%  【[4033301]- 致命准星(+3)*1】
	tMayRechargeAct_RunAward[3319015][1][17] = {}
	tMayRechargeAct_RunAward[3319015][1][17]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319015][1][17]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319015][1][17]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319015][1][17]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319015][1][17]["RewardItem"][1]["Id"] = 4033303
	tMayRechargeAct_RunAward[3319015][1][17]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319015][1][17]["LogId"] = 12001424
	
	--5.00%  【[4032901]- 例无虚发(+3)*1】
	tMayRechargeAct_RunAward[3319015][1][18] = {}
	tMayRechargeAct_RunAward[3319015][1][18]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319015][1][18]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319015][1][18]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319015][1][18]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319015][1][18]["RewardItem"][1]["Id"] = 4032903
	tMayRechargeAct_RunAward[3319015][1][18]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319015][1][18]["LogId"] = 12001424
	
	--5.00%  【[4033001]- 审判(+3)*1】
	tMayRechargeAct_RunAward[3319015][1][19] = {}
	tMayRechargeAct_RunAward[3319015][1][19]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319015][1][19]["ItemChance"] = 500
	tMayRechargeAct_RunAward[3319015][1][19]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319015][1][19]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319015][1][19]["RewardItem"][1]["Id"] = 4033003
	tMayRechargeAct_RunAward[3319015][1][19]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319015][1][19]["LogId"] = 12001424
	
	-- 4034203	乾坤妙法(+3)	2.75%
	tMayRechargeAct_RunAward[3319015][1][20] = {}
	tMayRechargeAct_RunAward[3319015][1][20]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319015][1][20]["ItemChance"] = 275
	tMayRechargeAct_RunAward[3319015][1][20]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319015][1][20]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319015][1][20]["RewardItem"][1]["Id"] = 4034203
	tMayRechargeAct_RunAward[3319015][1][20]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319015][1][20]["LogId"] = 12001424
-- 4034303	罡气护体(+3)	2.75%
	tMayRechargeAct_RunAward[3319015][1][21] = {}
	tMayRechargeAct_RunAward[3319015][1][21]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319015][1][21]["ItemChance"] = 275
	tMayRechargeAct_RunAward[3319015][1][21]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319015][1][21]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319015][1][21]["RewardItem"][1]["Id"] = 4034303
	tMayRechargeAct_RunAward[3319015][1][21]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319015][1][21]["LogId"] = 12001424
-- 4034403	沧澜破(+3)	2.75%
	tMayRechargeAct_RunAward[3319015][1][22] = {}
	tMayRechargeAct_RunAward[3319015][1][22]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319015][1][22]["ItemChance"] = 275
	tMayRechargeAct_RunAward[3319015][1][22]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319015][1][22]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319015][1][22]["RewardItem"][1]["Id"] = 4034403
	tMayRechargeAct_RunAward[3319015][1][22]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319015][1][22]["LogId"] = 12001424
-- 4034503	妙手回春(+3)	2.750%
	tMayRechargeAct_RunAward[3319015][1][23] = {}
	tMayRechargeAct_RunAward[3319015][1][23]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319015][1][23]["ItemChance"] = 275
	tMayRechargeAct_RunAward[3319015][1][23]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319015][1][23]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319015][1][23]["RewardItem"][1]["Id"] = 4034503
	tMayRechargeAct_RunAward[3319015][1][23]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319015][1][23]["LogId"] = 12001424
-- 4034603	最终法伤免疫(+3)	2.750%
	tMayRechargeAct_RunAward[3319015][1][24] = {}
	tMayRechargeAct_RunAward[3319015][1][24]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319015][1][24]["ItemChance"] = 275
	tMayRechargeAct_RunAward[3319015][1][24]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319015][1][24]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319015][1][24]["RewardItem"][1]["Id"] = 4034603
	tMayRechargeAct_RunAward[3319015][1][24]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319015][1][24]["LogId"] = 12001424
-- 4034703	最终物伤免疫(+3)	2.750%
	tMayRechargeAct_RunAward[3319015][1][25] = {}
	tMayRechargeAct_RunAward[3319015][1][25]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319015][1][25]["ItemChance"] = 275
	tMayRechargeAct_RunAward[3319015][1][25]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319015][1][25]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319015][1][25]["RewardItem"][1]["Id"] = 4034703
	tMayRechargeAct_RunAward[3319015][1][25]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319015][1][25]["LogId"] = 12001424
-- 4034803	碎玄元(+3)	2.50%
	tMayRechargeAct_RunAward[3319015][1][26] = {}
	tMayRechargeAct_RunAward[3319015][1][26]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319015][1][26]["ItemChance"] = 250
	tMayRechargeAct_RunAward[3319015][1][26]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319015][1][26]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319015][1][26]["RewardItem"][1]["Id"] = 4034803
	tMayRechargeAct_RunAward[3319015][1][26]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319015][1][26]["LogId"] = 12001424
-- 4034903	不死之身(+1)	0%
	tMayRechargeAct_RunAward[3319015][1][27] = {}
	tMayRechargeAct_RunAward[3319015][1][27]["RandomItemChanceType"] = 2
	tMayRechargeAct_RunAward[3319015][1][27]["ItemChance"] = 0
	tMayRechargeAct_RunAward[3319015][1][27]["RewardItem"] = {}
	tMayRechargeAct_RunAward[3319015][1][27]["RewardItem"][1] = {}
	tMayRechargeAct_RunAward[3319015][1][27]["RewardItem"][1]["Id"] = 4034903
	tMayRechargeAct_RunAward[3319015][1][27]["RewardItem"][1]["Attr"] = "0 1 3"
	tMayRechargeAct_RunAward[3319015][1][27]["LogId"] = 12001424

local tMayRechargeAct_Log = {}
-- 打开累积10000天石返利礼包 350 22208             3321594
-- 打开累积30000天石返利礼包 350 22209             3321595
-- 打开累积60000天石返利礼包 350 22210             3321596
-- 打开累积90000天石返利礼包 350 22211             3321597
-- 打开累积120000天石返利礼包 350 22212            3321598
-- 打开累积160000天石返利礼包 350 22213            3321599
-- 打开累积220000天石返利礼包 350 22214            3321600
-- 打开累积300000天石返利礼包 350 22215            3321601
-- 打开累积370000天石返利礼包 350 22216            3321602
-- 打开累积470000天石返利礼包 350 22217            3321603
-- 打开累积570000天石返利礼包 350 22218            3321604
-- 打开累积680000天石返利礼包 350 22219            3321605
-- 打开累积800000天石返利礼包 350 22220            3321606
-- 打开累积930000天石返利礼包 350 22221            3321607
-- 打开累积1070000天石返利礼包 350 22222           3321608
-- 打开累积1220000天石返利礼包 350 22223           3321609
-- 打开累积1380000天石返利礼包 350 22224           3321610
-- 打开累积1550000天石返利礼包 350 22225           3321611
-- 打开累积1730000天石返利礼包 350 22226           3321612
-- 打开累积1920000天石返利礼包 350 22227           3321613
-- 打开累积2120000天石返利礼包 350 22228           3321614

	tMayRechargeAct_Log["EmoneyLog"] = {}
	tMayRechargeAct_Log["EmoneyLog"][3321594] = "350	22208	0	0	1	"
	tMayRechargeAct_Log["EmoneyLog"][3321595] = "350	22209	0	0	1	"
	tMayRechargeAct_Log["EmoneyLog"][3321596] = "350	22210	0	0	1	"
	tMayRechargeAct_Log["EmoneyLog"][3321597] = "350	22211	0	0	1	"
	tMayRechargeAct_Log["EmoneyLog"][3321598] = "350	22212	0	0	1	"
	tMayRechargeAct_Log["EmoneyLog"][3321599] = "350	22213	0	0	1	"
	tMayRechargeAct_Log["EmoneyLog"][3321600] = "350	22214	0	0	1	"
	tMayRechargeAct_Log["EmoneyLog"][3321601] = "350	22215	0	0	1	"
	tMayRechargeAct_Log["EmoneyLog"][3321602] = "350	22216	0	0	1	"
	tMayRechargeAct_Log["EmoneyLog"][3321603] = "350	22217	0	0	1	"
	tMayRechargeAct_Log["EmoneyLog"][3321604] = "350	22218	0	0	1	"
	tMayRechargeAct_Log["EmoneyLog"][3321605] = "350	22219	0	0	1	"
	tMayRechargeAct_Log["EmoneyLog"][3321606] = "350	22220	0	0	1	"
	tMayRechargeAct_Log["EmoneyLog"][3321607] = "350	22221	0	0	1	"
	tMayRechargeAct_Log["EmoneyLog"][3321608] = "350	22222	0	0	1	"
	tMayRechargeAct_Log["EmoneyLog"][3321609] = "350	22223	0	0	1	"
	tMayRechargeAct_Log["EmoneyLog"][3321610] = "350	22224	0	0	1	"
	tMayRechargeAct_Log["EmoneyLog"][3321611] = "350	22225	0	0	1	"
	tMayRechargeAct_Log["EmoneyLog"][3321612] = "350	22226	0	0	1	"
	tMayRechargeAct_Log["EmoneyLog"][3321613] = "350	22227	0	0	1	"
	tMayRechargeAct_Log["EmoneyLog"][3321614] = "350	22228	0	0	1	"

----------------------------------逻辑部分-------------------------------------------
-- 可选包
function MayRechargeAct_Optional(nItemId,nChoose)
	if not Item_ChkItem(nItemId) then
		return	
	end	
	if tMayRechargeAct_Log["EmoneyLog"][nItemId] ~= nil then
		Sys_SaveEmoneyBuy(tMayRechargeAct_Log["EmoneyLog"][nItemId])
	end
    RewardTemplate_UseItemAndMsg(tMayRechargeAct_Award[nItemId][nChoose]) 
	
end

----------------------------------物品部分---------------------------------------------


-- 3321595,'晶莹星陨石返利包',9,98471500	1412
-- 3321596,'晶莹星陨石豪华返利包',9,9847	2289
-- 3321602,'散功丹返利包',9,98471500,0,0	2073
tItemFace[3321595] = 1412
tItem[3321595] = tItem[3321595] or {}
tItem[3321595]["DialogueText"] = tMayRechargeAct_Text[3321595]
tItem[3321595]["Text1-1"] = {111}
tItem[3321595]["tOption1-1"] = {1,2}
tItem[3321595]["OptionFunc1"] = "MayRechargeAct_Optional</N>3321595</N>1"
tItem[3321595]["OptionFunc2"] = "MayRechargeAct_Optional</N>3321595</N>2"

tItemFace[3321596] = 2289
tItem[3321596] = tItem[3321596] or {}
tItem[3321596]["DialogueText"] = tMayRechargeAct_Text[3321596]
tItem[3321596]["Text1-1"] = {111}
tItem[3321596]["tOption1-1"] = {1,2}
tItem[3321596]["OptionFunc1"] = "MayRechargeAct_Optional</N>3321596</N>1"
tItem[3321596]["OptionFunc2"] = "MayRechargeAct_Optional</N>3321596</N>2"

tItemFace[3321602] = 2073
tItem[3321602] = tItem[3321602] or {}
tItem[3321602]["DialogueText"] = tMayRechargeAct_Text[3321602]
tItem[3321602]["Text1-1"] = {111}
tItem[3321602]["tOption1-1"] = {1,2}
tItem[3321602]["OptionFunc1"] = "MayRechargeAct_Optional</N>3321602</N>1"
tItem[3321602]["OptionFunc2"] = "MayRechargeAct_Optional</N>3321602</N>2"

-- 3321594,'+5赤炼石（赠）礼包',9,984715
-- 3321597,'神纹源晶返利包',9,98471500,0
-- 3321598,'神纹源晶豪华返利包',9,984715
-- 3321599,'璀璨星陨石返利包',9,98471500
-- 3321600,'万能神纹精粹返利包',9,984715
-- 3321601,'抽奖券返利包',9,98471500,0,0
-- 3321603,'15万天石（赠）返利包',9,9847
-- 3321604,'稀有黄色神纹（赠）返利包',9,
-- 3321605,'血菩提返利包',9,98471500,0,0
-- 3321606,'神纹源晶至尊返利包',9,984715
-- 3321607,'爵位捐献道具返利包',9,984715
-- 3321608,'璀璨星陨石豪华返利包',9,9847
-- 3321609,'豪华外套返利包',9,98471500,0
-- 3321610,'稀有黄色神纹（赠）精致返利包
-- 3321611,'万能神纹精粹豪华返利包',9,98
-- 3321612,'稀有黄色神纹（赠）豪华返利包
-- 3321613,'稀有黄色神纹（赠）至尊返利包
-- 3321614,'指定炼气+1券返利包',9,984715


tItem[3321594] = tItem[3321594] or {}
tItem[3321594]["Function"] = function(nItemId,sItemName)
	--判断物品
	if not Item_ChkItem(nItemId) then
		return	
	end	
	if tMayRechargeAct_Log["EmoneyLog"][nItemId] ~= nil then
		Sys_SaveEmoneyBuy(tMayRechargeAct_Log["EmoneyLog"][nItemId])
	end
	
	RewardTemplate_UseItemAndMsg(tMayRechargeAct_Award[nItemId])
	
end
tItem[3321597] = tItem[3321594] or {}
tItem[3321598] = tItem[3321594] or {}
tItem[3321599] = tItem[3321594] or {}
tItem[3321600] = tItem[3321594] or {}
tItem[3321601] = tItem[3321594] or {}
tItem[3321603] = tItem[3321594] or {}
tItem[3321604] = tItem[3321594] or {}
tItem[3321605] = tItem[3321594] or {}
tItem[3321606] = tItem[3321594] or {}
tItem[3321607] = tItem[3321594] or {}
tItem[3321608] = tItem[3321594] or {}
tItem[3321609] = tItem[3321594] or {}
tItem[3321610] = tItem[3321594] or {}
tItem[3321611] = tItem[3321594] or {}
tItem[3321612] = tItem[3321594] or {}
tItem[3321613] = tItem[3321594] or {}
tItem[3321614] = tItem[3321594] or {}

-- 3319014,'(+2)稀有黄色神纹随机包(赠)'
-- 3319015,'(+3)稀有黄色神纹随机包(赠)'
tItem[3319014] = tItem[3319014] or {}
tItem[3319014]["Function"] = function(nItemId,sItemName)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tMayRechargeAct_RunAward[nItemId],1)
	end
end
tItem[3319015] = tItem[3319014]


