------------------------------------------------------------------------------------
--Name：            190508[英文征服][活动脚本]6月线下活动相关发奖action(5.27)
--Creator:      蔡颖静
--Created:     2019/05/08
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--logid:12001415

----------------------------------表配置部分--------------------------------------------
local tJuneOffLineActivity_Data = {}
	-- ===100积分赠礼包
	-- ===索引:tJuneOffLineActivity_Data[3321491]
	-- ===删除: 3321491,1
	-- ===
	tJuneOffLineActivity_Data[3321491] = {}
	tJuneOffLineActivity_Data[3321491]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321491]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321491]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321491]["DeleteItem"][1]["Id"] = 3321491 -- 【库】 3321491 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321491]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321491]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321491]["RewardItem"][1]["Id"] = 730003 -- 【库】+3Stone[属性:0], 【表格】赠品+3赤练石（赠）
	tJuneOffLineActivity_Data[3321491]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+3Stone（赠）*1
	tJuneOffLineActivity_Data[3321491]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321491]["RewardItem"][2]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tJuneOffLineActivity_Data[3321491]["RewardItem"][2]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tJuneOffLineActivity_Data[3321491]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321491]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321491]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321492] = {}
	-- ===500积分赠礼包
	-- ===索引:tJuneOffLineActivity_Data[3321492]
	-- ===删除: 3321492,1
	-- ===
	tJuneOffLineActivity_Data[3321492]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321492]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321492]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321492]["DeleteItem"][1]["Id"] = 3321492 -- 【库】 3321492 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321492]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321492]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321492]["RewardItem"][1]["Id"] = 1088000 -- 【库】DragonBall[属性:0], 【表格】龙珠（赠）
	tJuneOffLineActivity_Data[3321492]["RewardItem"][1]["Attr"] = "0 5 3" -- DragonBall（赠）*5
	tJuneOffLineActivity_Data[3321492]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321492]["RewardItem"][2]["Id"] = 3001407 -- 【库】EndeavorScroll[属性:0], 【表格】日常任务重置符（赠）
	tJuneOffLineActivity_Data[3321492]["RewardItem"][2]["Attr"] = "0 5 3" -- EndeavorScroll（赠）*5
	tJuneOffLineActivity_Data[3321492]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321492]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321492]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321493] = {}
	-- ===2000积分赠礼包
	-- ===索引:tJuneOffLineActivity_Data[3321493]
	-- ===删除: 3321493,1
	-- ===
	tJuneOffLineActivity_Data[3321493]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321493]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321493]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321493]["DeleteItem"][1]["Id"] = 3321493 -- 【库】 3321493 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321493]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321493]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321493]["RewardItem"][1]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tJuneOffLineActivity_Data[3321493]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的RadiantStarStone*5
	tJuneOffLineActivity_Data[3321493]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321493]["RewardItem"][2]["Id"] = 3003126 -- 【库】SeniorTrainingPill[属性:0], 【表格】究极通神丹（赠）
	tJuneOffLineActivity_Data[3321493]["RewardItem"][2]["Attr"] = "0 30 3" -- SeniorTrainingPill（赠）*30
	tJuneOffLineActivity_Data[3321493]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321493]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321493]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321494] = {}
	-- ===10000积分赠礼包
	-- ===索引:tJuneOffLineActivity_Data[3321494]
	-- ===删除: 3321494,1
	-- ===
	tJuneOffLineActivity_Data[3321494]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321494]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321494]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321494]["DeleteItem"][1]["Id"] = 3321494 -- 【库】 3321494 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321494]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321494]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321494]["RewardItem"][1]["Id"] = 3304583 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tJuneOffLineActivity_Data[3321494]["RewardItem"][1]["Attr"] = "0 2" -- 2天时效(激活)的RadiantStarStone*20
	tJuneOffLineActivity_Data[3321494]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321494]["RewardItem"][2]["Id"] = 3200822 -- 【库】DBScroll[属性:9], 【表格】龙珠卷（赠）
	tJuneOffLineActivity_Data[3321494]["RewardItem"][2]["Attr"] = "0 2" -- DBScroll*2
	tJuneOffLineActivity_Data[3321494]["RewardItem"][3] = {}
	tJuneOffLineActivity_Data[3321494]["RewardItem"][3]["Id"] = 723695 -- 【库】BigPermanentStone[属性:0], 【表格】大固化石（赠）
	tJuneOffLineActivity_Data[3321494]["RewardItem"][3]["Attr"] = "0 1 3" -- BigPermanentStone（赠）*1
	tJuneOffLineActivity_Data[3321494]["RewardItem"][4] = {}
	tJuneOffLineActivity_Data[3321494]["RewardItem"][4]["Id"] = 1200005 -- 【库】ToughDrill[属性:0], 【表格】金刚坚钻（赠）
	tJuneOffLineActivity_Data[3321494]["RewardItem"][4]["Attr"] = "0 1 3" -- ToughDrill（赠）*1
	tJuneOffLineActivity_Data[3321494]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321494]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321494]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321495] = {}
	-- ===100级鼓励包
	-- ===索引:tJuneOffLineActivity_Data[3321495]
	-- ===删除: 3321495,1
	-- ===
	tJuneOffLineActivity_Data[3321495]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321495]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321495]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321495]["DeleteItem"][1]["Id"] = 3321495 -- 【库】 3321495 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321495]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321495]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321495]["RewardItem"][1]["Id"] = 730004 -- 【库】+4Stone[属性:0], 【表格】 +4赤练石（赠）
	tJuneOffLineActivity_Data[3321495]["RewardItem"][1]["Attr"] = "0 2 3" -- +4Stone（赠）*2
	tJuneOffLineActivity_Data[3321495]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321495]["RewardItem"][2]["Id"] = 3311108 -- 【库】+4SteedPack[属性:9], 【表格】 +4马匹（赠）
	tJuneOffLineActivity_Data[3321495]["RewardItem"][2]["Attr"] = "0 1" -- +4SteedPack*1
	tJuneOffLineActivity_Data[3321495]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321495]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321495]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321496] = {}
	-- ===1转120级鼓励包
	-- ===索引:tJuneOffLineActivity_Data[3321496]
	-- ===删除: 3321496,1
	-- ===
	tJuneOffLineActivity_Data[3321496]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321496]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321496]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321496]["DeleteItem"][1]["Id"] = 3321496 -- 【库】 3321496 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321496]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321496]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321496]["RewardItem"][1]["Id"] = 3001407 -- 【库】EndeavorScroll[属性:0], 【表格】日常任务重置符（赠）
	tJuneOffLineActivity_Data[3321496]["RewardItem"][1]["Attr"] = "0 5 3" -- EndeavorScroll（赠）*5
	tJuneOffLineActivity_Data[3321496]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321496]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321496]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321497] = {}
	-- ===2转15级鼓励包
	-- ===索引:tJuneOffLineActivity_Data[3321497]
	-- ===删除: 3321497,1
	-- ===EMoneyLog: 10000,0435
	-- ===
	tJuneOffLineActivity_Data[3321497]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321497]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321497]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321497]["DeleteItem"][1]["Id"] = 3321497 -- 【库】 3321497 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321497]["RewardEMoneyMono"] = {}
	tJuneOffLineActivity_Data[3321497]["RewardEMoneyMono"]["Value"] = 5000 -- 天石（赠）, 【需求】5000赠品天石（赠）
	tJuneOffLineActivity_Data[3321497]["EmoneyLog"] = "10000	435	0	0	-5000	"
	tJuneOffLineActivity_Data[3321497]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321497]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321497]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321498] = {}
	-- ===神器评分500分嘉奖包
	-- ===索引:tJuneOffLineActivity_Data[3321498]
	-- ===删除: 3321498,1
	-- ===
	tJuneOffLineActivity_Data[3321498]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321498]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321498]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321498]["DeleteItem"][1]["Id"] = 3321498 -- 【库】 3321498 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321498]["RewardStrengthValue"] = {}
	tJuneOffLineActivity_Data[3321498]["RewardStrengthValue"]["Value"] = 500 -- 气力值, 【需求】500气力值
	tJuneOffLineActivity_Data[3321498]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321498]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321498]["RewardItem"][1]["Id"] = 3009000 -- 【库】TwilightStarStone[属性:9], 【表格】微光星陨石
	tJuneOffLineActivity_Data[3321498]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的TwilightStarStone*3
	tJuneOffLineActivity_Data[3321498]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321498]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321498]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321499] = {}
	-- ===神器评分1000分嘉奖包
	-- ===索引:tJuneOffLineActivity_Data[3321499]
	-- ===删除: 3321499,1
	-- ===
	tJuneOffLineActivity_Data[3321499]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321499]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321499]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321499]["DeleteItem"][1]["Id"] = 3321499 -- 【库】 3321499 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321499]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321499]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321499]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tJuneOffLineActivity_Data[3321499]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tJuneOffLineActivity_Data[3321499]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321499]["RewardItem"][2]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tJuneOffLineActivity_Data[3321499]["RewardItem"][2]["Attr"] = "0 10 3" -- YellowRuneEssence*10
	tJuneOffLineActivity_Data[3321499]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321499]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321499]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321500] = {}
	-- ===神器评分1500分嘉奖包
	-- ===索引:tJuneOffLineActivity_Data[3321500]
	-- ===删除: 3321500,1
	-- ===
	tJuneOffLineActivity_Data[3321500]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321500]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321500]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321500]["DeleteItem"][1]["Id"] = 3321500 -- 【库】 3321500 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321500]["RewardStrengthValue"] = {}
	tJuneOffLineActivity_Data[3321500]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000气力值
	tJuneOffLineActivity_Data[3321500]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321500]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321500]["RewardItem"][1]["Id"] = 3308948 -- 【库】10MeteorScrolls(B)Pack[属性:9], 【表格】赠品流星卷大礼包
	tJuneOffLineActivity_Data[3321500]["RewardItem"][1]["Attr"] = "0 1" -- 10MeteorScrolls(B)Pack*1
	tJuneOffLineActivity_Data[3321500]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321500]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321500]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321501] = {}
	-- ===神器评分2000分嘉奖包
	-- ===索引:tJuneOffLineActivity_Data[3321501]
	-- ===删除: 3321501,1
	-- ===
	tJuneOffLineActivity_Data[3321501]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321501]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321501]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321501]["DeleteItem"][1]["Id"] = 3321501 -- 【库】 3321501 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321501]["RewardCultivation"] = {}
	tJuneOffLineActivity_Data[3321501]["RewardCultivation"]["Value"] = 2000 -- 修行值, 【需求】2000修行值
	tJuneOffLineActivity_Data[3321501]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321501]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321501]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tJuneOffLineActivity_Data[3321501]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的BrightStarStone*3
	tJuneOffLineActivity_Data[3321501]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321501]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321501]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321502] = {}
	-- ===神器评分2200分嘉奖包
	-- ===索引:tJuneOffLineActivity_Data[3321502]
	-- ===删除: 3321502,1
	-- ===
	tJuneOffLineActivity_Data[3321502]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321502]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321502]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321502]["DeleteItem"][1]["Id"] = 3321502 -- 【库】 3321502 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321502]["RewardRepairValue"] = {}
	tJuneOffLineActivity_Data[3321502]["RewardRepairValue"]["Value"] = 2000 -- 修为值, 【需求】2000修为值
	tJuneOffLineActivity_Data[3321502]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321502]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321502]["RewardItem"][1]["Id"] = 1088000 -- 【库】DragonBall[属性:0], 【表格】龙珠（赠）
	tJuneOffLineActivity_Data[3321502]["RewardItem"][1]["Attr"] = "0 3 3" -- DragonBall（赠）*3
	tJuneOffLineActivity_Data[3321502]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321502]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321502]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321503] = {}
	-- ===神器评分2400分嘉奖包
	-- ===索引:tJuneOffLineActivity_Data[3321503]
	-- ===删除: 3321503,1
	-- ===
	tJuneOffLineActivity_Data[3321503]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321503]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321503]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321503]["DeleteItem"][1]["Id"] = 3321503 -- 【库】 3321503 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321503]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321503]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321503]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tJuneOffLineActivity_Data[3321503]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tJuneOffLineActivity_Data[3321503]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321503]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】神纹源晶（赠）
	tJuneOffLineActivity_Data[3321503]["RewardItem"][2]["Attr"] = "0 2 3" -- RuneCrystal（赠）*2
	tJuneOffLineActivity_Data[3321503]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321503]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321503]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321504] = {}
	-- ===神器评分2600分嘉奖包
	-- ===索引:tJuneOffLineActivity_Data[3321504]
	-- ===删除: 3321504,1
	-- ===
	tJuneOffLineActivity_Data[3321504]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321504]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321504]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321504]["DeleteItem"][1]["Id"] = 3321504 -- 【库】 3321504 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321504]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321504]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321504]["RewardItem"][1]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tJuneOffLineActivity_Data[3321504]["RewardItem"][1]["Attr"] = "0 50 3" -- YellowRuneEssence*50
	tJuneOffLineActivity_Data[3321504]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321504]["RewardItem"][2]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tJuneOffLineActivity_Data[3321504]["RewardItem"][2]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的RadiantStarStone*1
	tJuneOffLineActivity_Data[3321504]["RewardItem"][3] = {}
	tJuneOffLineActivity_Data[3321504]["RewardItem"][3]["Id"] = 3303373 -- 【库】KnowledgePill[属性:9], 【表格】魔武通玄丹
	tJuneOffLineActivity_Data[3321504]["RewardItem"][3]["Attr"] = "0 3" -- KnowledgePill*3
	tJuneOffLineActivity_Data[3321504]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321504]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321504]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321505] = {}
	-- ===神器评分2800分嘉奖包
	-- ===索引:tJuneOffLineActivity_Data[3321505]
	-- ===删除: 3321505,1
	-- ===
	tJuneOffLineActivity_Data[3321505]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321505]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321505]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321505]["DeleteItem"][1]["Id"] = 3321505 -- 【库】 3321505 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321505]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321505]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321505]["RewardItem"][1]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tJuneOffLineActivity_Data[3321505]["RewardItem"][1]["Attr"] = "0 100 3" -- YellowRuneEssence*100
	tJuneOffLineActivity_Data[3321505]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321505]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】神纹源晶（赠）
	tJuneOffLineActivity_Data[3321505]["RewardItem"][2]["Attr"] = "0 5 3" -- RuneCrystal（赠）*5
	tJuneOffLineActivity_Data[3321505]["RewardItem"][3] = {}
	tJuneOffLineActivity_Data[3321505]["RewardItem"][3]["Id"] = 3303373 -- 【库】KnowledgePill[属性:9], 【表格】魔武通玄丹
	tJuneOffLineActivity_Data[3321505]["RewardItem"][3]["Attr"] = "0 5" -- KnowledgePill*5
	tJuneOffLineActivity_Data[3321505]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321505]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321505]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321506] = {}
	-- ===神器评分3000分嘉奖包
	-- ===索引:tJuneOffLineActivity_Data[3321506]
	-- ===删除: 3321506,1
	-- ===
	tJuneOffLineActivity_Data[3321506]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321506]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321506]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321506]["DeleteItem"][1]["Id"] = 3321506 -- 【库】 3321506 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321506]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321506]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321506]["RewardItem"][1]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tJuneOffLineActivity_Data[3321506]["RewardItem"][1]["Attr"] = "0 150 3" -- YellowRuneEssence*150
	tJuneOffLineActivity_Data[3321506]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321506]["RewardItem"][2]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tJuneOffLineActivity_Data[3321506]["RewardItem"][2]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的RadiantStarStone*3
	tJuneOffLineActivity_Data[3321506]["RewardItem"][3] = {}
	tJuneOffLineActivity_Data[3321506]["RewardItem"][3]["Id"] = 3303373 -- 【库】KnowledgePill[属性:9], 【表格】魔武通玄丹
	tJuneOffLineActivity_Data[3321506]["RewardItem"][3]["Attr"] = "0 10" -- KnowledgePill*10
	tJuneOffLineActivity_Data[3321506]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321506]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321506]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321507] = {}
	-- ===昆仑镜冠军礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321507]
	-- ===删除: 3321507,1
	tJuneOffLineActivity_Data[3321507]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321507]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321507]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321507]["DeleteItem"][1]["Id"] = 3321507 -- 【库】 3321507 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321507]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321507]["RewardTitle"]["TitleType"] = 2077 -- 【库】MirrorMaster, 【表格】永久昆仑镜称号
	tJuneOffLineActivity_Data[3321507]["RewardTitle"]["TitleId"] = 2077
	tJuneOffLineActivity_Data[3321507]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:MirrorMaster, 【需求】永久昆仑镜称号
	tJuneOffLineActivity_Data[3321507]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321507]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321507]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹（赠）
	tJuneOffLineActivity_Data[3321507]["RewardItem"][1]["Attr"] = "0 3000 3" -- UniversalRuneEssence（赠）*3000
	tJuneOffLineActivity_Data[3321507]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321507]["RewardItem"][2]["Id"] = 3311821 -- 【库】DivineRuneStone[属性:9], 【表格】优质神纹源晶
	tJuneOffLineActivity_Data[3321507]["RewardItem"][2]["Attr"] = "0 10" -- DivineRuneStone*10
	tJuneOffLineActivity_Data[3321507]["RewardItem"][3] = {}
	tJuneOffLineActivity_Data[3321507]["RewardItem"][3]["Id"] = 3311748 -- 【库】RareYellowRune(B)Fragment[属性:9], 【表格】稀有黄色神纹碎片（赠）
	tJuneOffLineActivity_Data[3321507]["RewardItem"][3]["Attr"] = "0 10" -- RareYellowRune(B)Fragment*10
	tJuneOffLineActivity_Data[3321507]["RewardItem"][4] = {}
	tJuneOffLineActivity_Data[3321507]["RewardItem"][4]["Id"] = 3304583 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tJuneOffLineActivity_Data[3321507]["RewardItem"][4]["Attr"] = "0 1" -- 2天时效(激活)的RadiantStarStone*10
	tJuneOffLineActivity_Data[3321507]["RewardItem"][5] = {}
	tJuneOffLineActivity_Data[3321507]["RewardItem"][5]["Id"] = 3321547 -- 【库】 3321547 【库里没有该物品】[属性:], 【表格】勇士觉醒道具兑换票
	tJuneOffLineActivity_Data[3321507]["RewardItem"][5]["Attr"] = "0 3" --  3321547 【库里没有该物品】*3
	tJuneOffLineActivity_Data[3321507]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321507]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321507]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321508] = {}
	-- ===神农鼎冠军礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321508]
	-- ===删除: 3321508,1
	tJuneOffLineActivity_Data[3321508]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321508]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321508]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321508]["DeleteItem"][1]["Id"] = 3321508 -- 【库】 3321508 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321508]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321508]["RewardTitle"]["TitleType"] = 2078 -- 【库】TripodMaster, 【表格】永久神农鼎称号
	tJuneOffLineActivity_Data[3321508]["RewardTitle"]["TitleId"] = 2078
	tJuneOffLineActivity_Data[3321508]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:TripodMaster, 【需求】永久神农鼎称号
	tJuneOffLineActivity_Data[3321508]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321508]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321508]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹（赠）
	tJuneOffLineActivity_Data[3321508]["RewardItem"][1]["Attr"] = "0 3000 3" -- UniversalRuneEssence（赠）*3000
	tJuneOffLineActivity_Data[3321508]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321508]["RewardItem"][2]["Id"] = 3311821 -- 【库】DivineRuneStone[属性:9], 【表格】优质神纹源晶
	tJuneOffLineActivity_Data[3321508]["RewardItem"][2]["Attr"] = "0 10" -- DivineRuneStone*10
	tJuneOffLineActivity_Data[3321508]["RewardItem"][3] = {}
	tJuneOffLineActivity_Data[3321508]["RewardItem"][3]["Id"] = 3311748 -- 【库】RareYellowRune(B)Fragment[属性:9], 【表格】稀有黄色神纹碎片（赠）
	tJuneOffLineActivity_Data[3321508]["RewardItem"][3]["Attr"] = "0 10" -- RareYellowRune(B)Fragment*10
	tJuneOffLineActivity_Data[3321508]["RewardItem"][4] = {}
	tJuneOffLineActivity_Data[3321508]["RewardItem"][4]["Id"] = 3304583 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tJuneOffLineActivity_Data[3321508]["RewardItem"][4]["Attr"] = "0 1" -- 2天时效(激活)的RadiantStarStone*10
	tJuneOffLineActivity_Data[3321508]["RewardItem"][5] = {}
	tJuneOffLineActivity_Data[3321508]["RewardItem"][5]["Id"] = 3321547 -- 【库】 3321547 【库里没有该物品】[属性:], 【表格】勇士觉醒道具兑换票
	tJuneOffLineActivity_Data[3321508]["RewardItem"][5]["Attr"] = "0 3" --  3321547 【库里没有该物品】*3
	tJuneOffLineActivity_Data[3321508]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321508]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321508]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321509] = {}
	-- ===定海珠冠军礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321509]
	-- ===删除: 3321509,1
	tJuneOffLineActivity_Data[3321509]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321509]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321509]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321509]["DeleteItem"][1]["Id"] = 3321509 -- 【库】 3321509 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321509]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321509]["RewardTitle"]["TitleType"] = 2079 -- 【库】BeadsMaster, 【表格】永久定海珠称号
	tJuneOffLineActivity_Data[3321509]["RewardTitle"]["TitleId"] = 2079
	tJuneOffLineActivity_Data[3321509]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:BeadsMaster, 【需求】永久定海珠称号
	tJuneOffLineActivity_Data[3321509]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321509]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321509]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹（赠）
	tJuneOffLineActivity_Data[3321509]["RewardItem"][1]["Attr"] = "0 3000 3" -- UniversalRuneEssence（赠）*3000
	tJuneOffLineActivity_Data[3321509]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321509]["RewardItem"][2]["Id"] = 3311821 -- 【库】DivineRuneStone[属性:9], 【表格】优质神纹源晶
	tJuneOffLineActivity_Data[3321509]["RewardItem"][2]["Attr"] = "0 10" -- DivineRuneStone*10
	tJuneOffLineActivity_Data[3321509]["RewardItem"][3] = {}
	tJuneOffLineActivity_Data[3321509]["RewardItem"][3]["Id"] = 3311748 -- 【库】RareYellowRune(B)Fragment[属性:9], 【表格】稀有黄色神纹碎片（赠）
	tJuneOffLineActivity_Data[3321509]["RewardItem"][3]["Attr"] = "0 10" -- RareYellowRune(B)Fragment*10
	tJuneOffLineActivity_Data[3321509]["RewardItem"][4] = {}
	tJuneOffLineActivity_Data[3321509]["RewardItem"][4]["Id"] = 3304583 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tJuneOffLineActivity_Data[3321509]["RewardItem"][4]["Attr"] = "0 1" -- 2天时效(激活)的RadiantStarStone*10
	tJuneOffLineActivity_Data[3321509]["RewardItem"][5] = {}
	tJuneOffLineActivity_Data[3321509]["RewardItem"][5]["Id"] = 3321547 -- 【库】 3321547 【库里没有该物品】[属性:], 【表格】勇士觉醒道具兑换票
	tJuneOffLineActivity_Data[3321509]["RewardItem"][5]["Attr"] = "0 3" --  3321547 【库里没有该物品】*3
	tJuneOffLineActivity_Data[3321509]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321509]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321509]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321510] = {}
	-- ===番天印冠军礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321510]
	-- ===删除: 3321510,1
	tJuneOffLineActivity_Data[3321510]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321510]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321510]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321510]["DeleteItem"][1]["Id"] = 3321510 -- 【库】 3321510 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321510]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321510]["RewardTitle"]["TitleType"] = 2080 -- 【库】SealMaster, 【表格】永久番天印称号
	tJuneOffLineActivity_Data[3321510]["RewardTitle"]["TitleId"] = 2080
	tJuneOffLineActivity_Data[3321510]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:SealMaster, 【需求】永久番天印称号
	tJuneOffLineActivity_Data[3321510]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321510]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321510]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹（赠）
	tJuneOffLineActivity_Data[3321510]["RewardItem"][1]["Attr"] = "0 3000 3" -- UniversalRuneEssence（赠）*3000
	tJuneOffLineActivity_Data[3321510]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321510]["RewardItem"][2]["Id"] = 3311821 -- 【库】DivineRuneStone[属性:9], 【表格】优质神纹源晶
	tJuneOffLineActivity_Data[3321510]["RewardItem"][2]["Attr"] = "0 10" -- DivineRuneStone*10
	tJuneOffLineActivity_Data[3321510]["RewardItem"][3] = {}
	tJuneOffLineActivity_Data[3321510]["RewardItem"][3]["Id"] = 3311748 -- 【库】RareYellowRune(B)Fragment[属性:9], 【表格】稀有黄色神纹碎片（赠）
	tJuneOffLineActivity_Data[3321510]["RewardItem"][3]["Attr"] = "0 10" -- RareYellowRune(B)Fragment*10
	tJuneOffLineActivity_Data[3321510]["RewardItem"][4] = {}
	tJuneOffLineActivity_Data[3321510]["RewardItem"][4]["Id"] = 3304583 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tJuneOffLineActivity_Data[3321510]["RewardItem"][4]["Attr"] = "0 1" -- 2天时效(激活)的RadiantStarStone*10
	tJuneOffLineActivity_Data[3321510]["RewardItem"][5] = {}
	tJuneOffLineActivity_Data[3321510]["RewardItem"][5]["Id"] = 3321547 -- 【库】 3321547 【库里没有该物品】[属性:], 【表格】勇士觉醒道具兑换票
	tJuneOffLineActivity_Data[3321510]["RewardItem"][5]["Attr"] = "0 3" --  3321547 【库里没有该物品】*3
	tJuneOffLineActivity_Data[3321510]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321510]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321510]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321511] = {}
	-- ===东皇钟冠军礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321511]
	-- ===删除: 3321511,1
	tJuneOffLineActivity_Data[3321511]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321511]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321511]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321511]["DeleteItem"][1]["Id"] = 3321511 -- 【库】 3321511 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321511]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321511]["RewardTitle"]["TitleType"] = 2081 -- 【库】BellMaster, 【表格】永久东皇钟称号
	tJuneOffLineActivity_Data[3321511]["RewardTitle"]["TitleId"] = 2081
	tJuneOffLineActivity_Data[3321511]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:BellMaster, 【需求】永久东皇钟称号
	tJuneOffLineActivity_Data[3321511]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321511]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321511]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹（赠）
	tJuneOffLineActivity_Data[3321511]["RewardItem"][1]["Attr"] = "0 3000 3" -- UniversalRuneEssence（赠）*3000
	tJuneOffLineActivity_Data[3321511]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321511]["RewardItem"][2]["Id"] = 3311821 -- 【库】DivineRuneStone[属性:9], 【表格】优质神纹源晶
	tJuneOffLineActivity_Data[3321511]["RewardItem"][2]["Attr"] = "0 10" -- DivineRuneStone*10
	tJuneOffLineActivity_Data[3321511]["RewardItem"][3] = {}
	tJuneOffLineActivity_Data[3321511]["RewardItem"][3]["Id"] = 3311748 -- 【库】RareYellowRune(B)Fragment[属性:9], 【表格】稀有黄色神纹碎片（赠）
	tJuneOffLineActivity_Data[3321511]["RewardItem"][3]["Attr"] = "0 10" -- RareYellowRune(B)Fragment*10
	tJuneOffLineActivity_Data[3321511]["RewardItem"][4] = {}
	tJuneOffLineActivity_Data[3321511]["RewardItem"][4]["Id"] = 3304583 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tJuneOffLineActivity_Data[3321511]["RewardItem"][4]["Attr"] = "0 1" -- 2天时效(激活)的RadiantStarStone*10
	tJuneOffLineActivity_Data[3321511]["RewardItem"][5] = {}
	tJuneOffLineActivity_Data[3321511]["RewardItem"][5]["Id"] = 3321547 -- 【库】 3321547 【库里没有该物品】[属性:], 【表格】勇士觉醒道具兑换票
	tJuneOffLineActivity_Data[3321511]["RewardItem"][5]["Attr"] = "0 3" --  3321547 【库里没有该物品】*3
	tJuneOffLineActivity_Data[3321511]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321511]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321511]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321512] = {}
	-- ===昆仑镜亚军礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321512]
	-- ===删除: 3321512,1
	tJuneOffLineActivity_Data[3321512]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321512]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321512]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321512]["DeleteItem"][1]["Id"] = 3321512 -- 【库】 3321512 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321512]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321512]["RewardTitle"]["TitleType"] = 2077 -- 【库】MirrorMaster, 【表格】360天昆仑镜称号
	tJuneOffLineActivity_Data[3321512]["RewardTitle"]["TitleId"] = 2077
	tJuneOffLineActivity_Data[3321512]["RewardTitle"]["SaveTime"] = 518400 -- 360天时效的[称号]:MirrorMaster, 【需求】360天昆仑镜称号
	tJuneOffLineActivity_Data[3321512]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321512]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321512]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹（赠）
	tJuneOffLineActivity_Data[3321512]["RewardItem"][1]["Attr"] = "0 2000 3" -- UniversalRuneEssence（赠）*2000
	tJuneOffLineActivity_Data[3321512]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321512]["RewardItem"][2]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9], 【表格】良品神纹源晶
	tJuneOffLineActivity_Data[3321512]["RewardItem"][2]["Attr"] = "0 10" -- MysticRuneStone*10
	tJuneOffLineActivity_Data[3321512]["RewardItem"][3] = {}
	tJuneOffLineActivity_Data[3321512]["RewardItem"][3]["Id"] = 3311748 -- 【库】RareYellowRune(B)Fragment[属性:9], 【表格】稀有黄色神纹碎片（赠）
	tJuneOffLineActivity_Data[3321512]["RewardItem"][3]["Attr"] = "0 5" -- RareYellowRune(B)Fragment*5
	tJuneOffLineActivity_Data[3321512]["RewardItem"][4] = {}
	tJuneOffLineActivity_Data[3321512]["RewardItem"][4]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tJuneOffLineActivity_Data[3321512]["RewardItem"][4]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的RadiantStarStone*5
	tJuneOffLineActivity_Data[3321512]["RewardItem"][5] = {}
	tJuneOffLineActivity_Data[3321512]["RewardItem"][5]["Id"] = 3321547 -- 【库】 3321547 【库里没有该物品】[属性:], 【表格】勇士觉醒道具兑换票
	tJuneOffLineActivity_Data[3321512]["RewardItem"][5]["Attr"] = "0 2" --  3321547 【库里没有该物品】*2
	tJuneOffLineActivity_Data[3321512]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321512]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321512]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321513] = {}
	-- ===神农鼎亚军礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321513]
	-- ===删除: 3321513,1
	tJuneOffLineActivity_Data[3321513]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321513]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321513]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321513]["DeleteItem"][1]["Id"] = 3321513 -- 【库】 3321513 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321513]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321513]["RewardTitle"]["TitleType"] = 2078 -- 【库】TripodMaster, 【表格】360天神农鼎称号
	tJuneOffLineActivity_Data[3321513]["RewardTitle"]["TitleId"] = 2078
	tJuneOffLineActivity_Data[3321513]["RewardTitle"]["SaveTime"] = 518400 -- 360天时效的[称号]:TripodMaster, 【需求】360天神农鼎称号
	tJuneOffLineActivity_Data[3321513]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321513]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321513]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹（赠）
	tJuneOffLineActivity_Data[3321513]["RewardItem"][1]["Attr"] = "0 2000 3" -- UniversalRuneEssence（赠）*2000
	tJuneOffLineActivity_Data[3321513]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321513]["RewardItem"][2]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9], 【表格】良品神纹源晶
	tJuneOffLineActivity_Data[3321513]["RewardItem"][2]["Attr"] = "0 10" -- MysticRuneStone*10
	tJuneOffLineActivity_Data[3321513]["RewardItem"][3] = {}
	tJuneOffLineActivity_Data[3321513]["RewardItem"][3]["Id"] = 3311748 -- 【库】RareYellowRune(B)Fragment[属性:9], 【表格】稀有黄色神纹碎片（赠）
	tJuneOffLineActivity_Data[3321513]["RewardItem"][3]["Attr"] = "0 5" -- RareYellowRune(B)Fragment*5
	tJuneOffLineActivity_Data[3321513]["RewardItem"][4] = {}
	tJuneOffLineActivity_Data[3321513]["RewardItem"][4]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tJuneOffLineActivity_Data[3321513]["RewardItem"][4]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的RadiantStarStone*5
	tJuneOffLineActivity_Data[3321513]["RewardItem"][5] = {}
	tJuneOffLineActivity_Data[3321513]["RewardItem"][5]["Id"] = 3321547 -- 【库】 3321547 【库里没有该物品】[属性:], 【表格】勇士觉醒道具兑换票
	tJuneOffLineActivity_Data[3321513]["RewardItem"][5]["Attr"] = "0 2" --  3321547 【库里没有该物品】*2
	tJuneOffLineActivity_Data[3321513]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321513]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321513]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321514] = {}
	-- ===定海珠亚军礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321514]
	-- ===删除: 3321514,1
	tJuneOffLineActivity_Data[3321514]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321514]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321514]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321514]["DeleteItem"][1]["Id"] = 3321514 -- 【库】 3321514 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321514]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321514]["RewardTitle"]["TitleType"] = 2079 -- 【库】BeadsMaster, 【表格】360天定海珠称号
	tJuneOffLineActivity_Data[3321514]["RewardTitle"]["TitleId"] = 2079
	tJuneOffLineActivity_Data[3321514]["RewardTitle"]["SaveTime"] = 518400 -- 360天时效的[称号]:BeadsMaster, 【需求】360天定海珠称号
	tJuneOffLineActivity_Data[3321514]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321514]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321514]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹（赠）
	tJuneOffLineActivity_Data[3321514]["RewardItem"][1]["Attr"] = "0 2000 3" -- UniversalRuneEssence（赠）*2000
	tJuneOffLineActivity_Data[3321514]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321514]["RewardItem"][2]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9], 【表格】良品神纹源晶
	tJuneOffLineActivity_Data[3321514]["RewardItem"][2]["Attr"] = "0 10" -- MysticRuneStone*10
	tJuneOffLineActivity_Data[3321514]["RewardItem"][3] = {}
	tJuneOffLineActivity_Data[3321514]["RewardItem"][3]["Id"] = 3311748 -- 【库】RareYellowRune(B)Fragment[属性:9], 【表格】稀有黄色神纹碎片（赠）
	tJuneOffLineActivity_Data[3321514]["RewardItem"][3]["Attr"] = "0 5" -- RareYellowRune(B)Fragment*5
	tJuneOffLineActivity_Data[3321514]["RewardItem"][4] = {}
	tJuneOffLineActivity_Data[3321514]["RewardItem"][4]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tJuneOffLineActivity_Data[3321514]["RewardItem"][4]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的RadiantStarStone*5
	tJuneOffLineActivity_Data[3321514]["RewardItem"][5] = {}
	tJuneOffLineActivity_Data[3321514]["RewardItem"][5]["Id"] = 3321547 -- 【库】 3321547 【库里没有该物品】[属性:], 【表格】勇士觉醒道具兑换票
	tJuneOffLineActivity_Data[3321514]["RewardItem"][5]["Attr"] = "0 2" --  3321547 【库里没有该物品】*2
	tJuneOffLineActivity_Data[3321514]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321514]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321514]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321515] = {}
	-- ===番天印亚军礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321515]
	-- ===删除: 3321515,1
	tJuneOffLineActivity_Data[3321515]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321515]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321515]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321515]["DeleteItem"][1]["Id"] = 3321515 -- 【库】 3321515 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321515]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321515]["RewardTitle"]["TitleType"] = 2080 -- 【库】SealMaster, 【表格】360天番天印称号
	tJuneOffLineActivity_Data[3321515]["RewardTitle"]["TitleId"] = 2080
	tJuneOffLineActivity_Data[3321515]["RewardTitle"]["SaveTime"] = 518400 -- 360天时效的[称号]:SealMaster, 【需求】360天番天印称号
	tJuneOffLineActivity_Data[3321515]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321515]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321515]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹（赠）
	tJuneOffLineActivity_Data[3321515]["RewardItem"][1]["Attr"] = "0 2000 3" -- UniversalRuneEssence（赠）*2000
	tJuneOffLineActivity_Data[3321515]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321515]["RewardItem"][2]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9], 【表格】良品神纹源晶
	tJuneOffLineActivity_Data[3321515]["RewardItem"][2]["Attr"] = "0 10" -- MysticRuneStone*10
	tJuneOffLineActivity_Data[3321515]["RewardItem"][3] = {}
	tJuneOffLineActivity_Data[3321515]["RewardItem"][3]["Id"] = 3311748 -- 【库】RareYellowRune(B)Fragment[属性:9], 【表格】稀有黄色神纹碎片（赠）
	tJuneOffLineActivity_Data[3321515]["RewardItem"][3]["Attr"] = "0 5" -- RareYellowRune(B)Fragment*5
	tJuneOffLineActivity_Data[3321515]["RewardItem"][4] = {}
	tJuneOffLineActivity_Data[3321515]["RewardItem"][4]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tJuneOffLineActivity_Data[3321515]["RewardItem"][4]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的RadiantStarStone*5
	tJuneOffLineActivity_Data[3321515]["RewardItem"][5] = {}
	tJuneOffLineActivity_Data[3321515]["RewardItem"][5]["Id"] = 3321547 -- 【库】 3321547 【库里没有该物品】[属性:], 【表格】勇士觉醒道具兑换票
	tJuneOffLineActivity_Data[3321515]["RewardItem"][5]["Attr"] = "0 2" --  3321547 【库里没有该物品】*2
	tJuneOffLineActivity_Data[3321515]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321515]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321515]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321516] = {}
	-- ===东皇钟亚军礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321516]
	-- ===删除: 3321516,1
	tJuneOffLineActivity_Data[3321516]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321516]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321516]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321516]["DeleteItem"][1]["Id"] = 3321516 -- 【库】 3321516 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321516]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321516]["RewardTitle"]["TitleType"] = 2081 -- 【库】BellMaster, 【表格】360天东皇钟称号
	tJuneOffLineActivity_Data[3321516]["RewardTitle"]["TitleId"] = 2081
	tJuneOffLineActivity_Data[3321516]["RewardTitle"]["SaveTime"] = 518400 -- 360天时效的[称号]:BellMaster, 【需求】360天东皇钟称号
	tJuneOffLineActivity_Data[3321516]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321516]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321516]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹（赠）
	tJuneOffLineActivity_Data[3321516]["RewardItem"][1]["Attr"] = "0 2000 3" -- UniversalRuneEssence（赠）*2000
	tJuneOffLineActivity_Data[3321516]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321516]["RewardItem"][2]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9], 【表格】良品神纹源晶
	tJuneOffLineActivity_Data[3321516]["RewardItem"][2]["Attr"] = "0 10" -- MysticRuneStone*10
	tJuneOffLineActivity_Data[3321516]["RewardItem"][3] = {}
	tJuneOffLineActivity_Data[3321516]["RewardItem"][3]["Id"] = 3311748 -- 【库】RareYellowRune(B)Fragment[属性:9], 【表格】稀有黄色神纹碎片（赠）
	tJuneOffLineActivity_Data[3321516]["RewardItem"][3]["Attr"] = "0 5" -- RareYellowRune(B)Fragment*5
	tJuneOffLineActivity_Data[3321516]["RewardItem"][4] = {}
	tJuneOffLineActivity_Data[3321516]["RewardItem"][4]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tJuneOffLineActivity_Data[3321516]["RewardItem"][4]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的RadiantStarStone*5
	tJuneOffLineActivity_Data[3321516]["RewardItem"][5] = {}
	tJuneOffLineActivity_Data[3321516]["RewardItem"][5]["Id"] = 3321547 -- 【库】 3321547 【库里没有该物品】[属性:], 【表格】勇士觉醒道具兑换票
	tJuneOffLineActivity_Data[3321516]["RewardItem"][5]["Attr"] = "0 2" --  3321547 【库里没有该物品】*2
	tJuneOffLineActivity_Data[3321516]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321516]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321516]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321517] = {}
	-- ===昆仑镜季军礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321517]
	-- ===删除: 3321517,1
	tJuneOffLineActivity_Data[3321517]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321517]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321517]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321517]["DeleteItem"][1]["Id"] = 3321517 -- 【库】 3321517 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321517]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321517]["RewardTitle"]["TitleType"] = 2077 -- 【库】MirrorMaster, 【表格】270天昆仑镜称号
	tJuneOffLineActivity_Data[3321517]["RewardTitle"]["TitleId"] = 2077
	tJuneOffLineActivity_Data[3321517]["RewardTitle"]["SaveTime"] = 388800 -- 270天时效的[称号]:MirrorMaster, 【需求】270天昆仑镜称号
	tJuneOffLineActivity_Data[3321517]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321517]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321517]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹（赠）
	tJuneOffLineActivity_Data[3321517]["RewardItem"][1]["Attr"] = "0 1000 3" -- UniversalRuneEssence（赠）*1000
	tJuneOffLineActivity_Data[3321517]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321517]["RewardItem"][2]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9], 【表格】良品神纹源晶
	tJuneOffLineActivity_Data[3321517]["RewardItem"][2]["Attr"] = "0 5" -- MysticRuneStone*5
	tJuneOffLineActivity_Data[3321517]["RewardItem"][3] = {}
	tJuneOffLineActivity_Data[3321517]["RewardItem"][3]["Id"] = 3311748 -- 【库】RareYellowRune(B)Fragment[属性:9], 【表格】稀有黄色神纹碎片（赠）
	tJuneOffLineActivity_Data[3321517]["RewardItem"][3]["Attr"] = "0 3" -- RareYellowRune(B)Fragment*3
	tJuneOffLineActivity_Data[3321517]["RewardItem"][4] = {}
	tJuneOffLineActivity_Data[3321517]["RewardItem"][4]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tJuneOffLineActivity_Data[3321517]["RewardItem"][4]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的RadiantStarStone*3
	tJuneOffLineActivity_Data[3321517]["RewardItem"][5] = {}
	tJuneOffLineActivity_Data[3321517]["RewardItem"][5]["Id"] = 3321547 -- 【库】 3321547 【库里没有该物品】[属性:], 【表格】勇士觉醒道具兑换票
	tJuneOffLineActivity_Data[3321517]["RewardItem"][5]["Attr"] = "0 1" --  3321547 【库里没有该物品】*1
	tJuneOffLineActivity_Data[3321517]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321517]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321517]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321518] = {}
	-- ===神农鼎季军礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321518]
	-- ===删除: 3321518,1
	tJuneOffLineActivity_Data[3321518]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321518]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321518]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321518]["DeleteItem"][1]["Id"] = 3321518 -- 【库】 3321518 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321518]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321518]["RewardTitle"]["TitleType"] = 2078 -- 【库】TripodMaster, 【表格】270天神农鼎称号
	tJuneOffLineActivity_Data[3321518]["RewardTitle"]["TitleId"] = 2078
	tJuneOffLineActivity_Data[3321518]["RewardTitle"]["SaveTime"] = 388800 -- 270天时效的[称号]:TripodMaster, 【需求】270天神农鼎称号
	tJuneOffLineActivity_Data[3321518]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321518]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321518]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹（赠）
	tJuneOffLineActivity_Data[3321518]["RewardItem"][1]["Attr"] = "0 1000 3" -- UniversalRuneEssence（赠）*1000
	tJuneOffLineActivity_Data[3321518]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321518]["RewardItem"][2]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9], 【表格】良品神纹源晶
	tJuneOffLineActivity_Data[3321518]["RewardItem"][2]["Attr"] = "0 5" -- MysticRuneStone*5
	tJuneOffLineActivity_Data[3321518]["RewardItem"][3] = {}
	tJuneOffLineActivity_Data[3321518]["RewardItem"][3]["Id"] = 3311748 -- 【库】RareYellowRune(B)Fragment[属性:9], 【表格】稀有黄色神纹碎片（赠）
	tJuneOffLineActivity_Data[3321518]["RewardItem"][3]["Attr"] = "0 3" -- RareYellowRune(B)Fragment*3
	tJuneOffLineActivity_Data[3321518]["RewardItem"][4] = {}
	tJuneOffLineActivity_Data[3321518]["RewardItem"][4]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tJuneOffLineActivity_Data[3321518]["RewardItem"][4]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的RadiantStarStone*3
	tJuneOffLineActivity_Data[3321518]["RewardItem"][5] = {}
	tJuneOffLineActivity_Data[3321518]["RewardItem"][5]["Id"] = 3321547 -- 【库】 3321547 【库里没有该物品】[属性:], 【表格】勇士觉醒道具兑换票
	tJuneOffLineActivity_Data[3321518]["RewardItem"][5]["Attr"] = "0 1" --  3321547 【库里没有该物品】*1
	tJuneOffLineActivity_Data[3321518]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321518]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321518]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321519] = {}
	-- ===定海珠季军礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321519]
	-- ===删除: 3321519,1
	tJuneOffLineActivity_Data[3321519]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321519]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321519]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321519]["DeleteItem"][1]["Id"] = 3321519 -- 【库】 3321519 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321519]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321519]["RewardTitle"]["TitleType"] = 2079 -- 【库】BeadsMaster, 【表格】270天定海珠称号
	tJuneOffLineActivity_Data[3321519]["RewardTitle"]["TitleId"] = 2079
	tJuneOffLineActivity_Data[3321519]["RewardTitle"]["SaveTime"] = 388800 -- 270天时效的[称号]:BeadsMaster, 【需求】270天定海珠称号
	tJuneOffLineActivity_Data[3321519]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321519]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321519]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹（赠）
	tJuneOffLineActivity_Data[3321519]["RewardItem"][1]["Attr"] = "0 1000 3" -- UniversalRuneEssence（赠）*1000
	tJuneOffLineActivity_Data[3321519]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321519]["RewardItem"][2]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9], 【表格】良品神纹源晶
	tJuneOffLineActivity_Data[3321519]["RewardItem"][2]["Attr"] = "0 5" -- MysticRuneStone*5
	tJuneOffLineActivity_Data[3321519]["RewardItem"][3] = {}
	tJuneOffLineActivity_Data[3321519]["RewardItem"][3]["Id"] = 3311748 -- 【库】RareYellowRune(B)Fragment[属性:9], 【表格】稀有黄色神纹碎片（赠）
	tJuneOffLineActivity_Data[3321519]["RewardItem"][3]["Attr"] = "0 3" -- RareYellowRune(B)Fragment*3
	tJuneOffLineActivity_Data[3321519]["RewardItem"][4] = {}
	tJuneOffLineActivity_Data[3321519]["RewardItem"][4]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tJuneOffLineActivity_Data[3321519]["RewardItem"][4]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的RadiantStarStone*3
	tJuneOffLineActivity_Data[3321519]["RewardItem"][5] = {}
	tJuneOffLineActivity_Data[3321519]["RewardItem"][5]["Id"] = 3321547 -- 【库】 3321547 【库里没有该物品】[属性:], 【表格】勇士觉醒道具兑换票
	tJuneOffLineActivity_Data[3321519]["RewardItem"][5]["Attr"] = "0 1" --  3321547 【库里没有该物品】*1
	tJuneOffLineActivity_Data[3321519]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321519]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321519]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321520] = {}
	-- ===番天印季军礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321520]
	-- ===删除: 3321520,1
	tJuneOffLineActivity_Data[3321520]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321520]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321520]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321520]["DeleteItem"][1]["Id"] = 3321520 -- 【库】 3321520 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321520]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321520]["RewardTitle"]["TitleType"] = 2080 -- 【库】SealMaster, 【表格】270天番天印称号
	tJuneOffLineActivity_Data[3321520]["RewardTitle"]["TitleId"] = 2080
	tJuneOffLineActivity_Data[3321520]["RewardTitle"]["SaveTime"] = 388800 -- 270天时效的[称号]:SealMaster, 【需求】270天番天印称号
	tJuneOffLineActivity_Data[3321520]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321520]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321520]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹（赠）
	tJuneOffLineActivity_Data[3321520]["RewardItem"][1]["Attr"] = "0 1000 3" -- UniversalRuneEssence（赠）*1000
	tJuneOffLineActivity_Data[3321520]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321520]["RewardItem"][2]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9], 【表格】良品神纹源晶
	tJuneOffLineActivity_Data[3321520]["RewardItem"][2]["Attr"] = "0 5" -- MysticRuneStone*5
	tJuneOffLineActivity_Data[3321520]["RewardItem"][3] = {}
	tJuneOffLineActivity_Data[3321520]["RewardItem"][3]["Id"] = 3311748 -- 【库】RareYellowRune(B)Fragment[属性:9], 【表格】稀有黄色神纹碎片（赠）
	tJuneOffLineActivity_Data[3321520]["RewardItem"][3]["Attr"] = "0 3" -- RareYellowRune(B)Fragment*3
	tJuneOffLineActivity_Data[3321520]["RewardItem"][4] = {}
	tJuneOffLineActivity_Data[3321520]["RewardItem"][4]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tJuneOffLineActivity_Data[3321520]["RewardItem"][4]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的RadiantStarStone*3
	tJuneOffLineActivity_Data[3321520]["RewardItem"][5] = {}
	tJuneOffLineActivity_Data[3321520]["RewardItem"][5]["Id"] = 3321547 -- 【库】 3321547 【库里没有该物品】[属性:], 【表格】勇士觉醒道具兑换票
	tJuneOffLineActivity_Data[3321520]["RewardItem"][5]["Attr"] = "0 1" --  3321547 【库里没有该物品】*1
	tJuneOffLineActivity_Data[3321520]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321520]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321520]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321521] = {}
	-- ===东皇钟季军礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321521]
	-- ===删除: 3321521,1
	tJuneOffLineActivity_Data[3321521]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321521]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321521]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321521]["DeleteItem"][1]["Id"] = 3321521 -- 【库】 3321521 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321521]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321521]["RewardTitle"]["TitleType"] = 2081 -- 【库】BellMaster, 【表格】270天东皇钟称号
	tJuneOffLineActivity_Data[3321521]["RewardTitle"]["TitleId"] = 2081
	tJuneOffLineActivity_Data[3321521]["RewardTitle"]["SaveTime"] = 388800 -- 270天时效的[称号]:BellMaster, 【需求】270天东皇钟称号
	tJuneOffLineActivity_Data[3321521]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321521]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321521]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹（赠）
	tJuneOffLineActivity_Data[3321521]["RewardItem"][1]["Attr"] = "0 1000 3" -- UniversalRuneEssence（赠）*1000
	tJuneOffLineActivity_Data[3321521]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321521]["RewardItem"][2]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9], 【表格】良品神纹源晶
	tJuneOffLineActivity_Data[3321521]["RewardItem"][2]["Attr"] = "0 5" -- MysticRuneStone*5
	tJuneOffLineActivity_Data[3321521]["RewardItem"][3] = {}
	tJuneOffLineActivity_Data[3321521]["RewardItem"][3]["Id"] = 3311748 -- 【库】RareYellowRune(B)Fragment[属性:9], 【表格】稀有黄色神纹碎片（赠）
	tJuneOffLineActivity_Data[3321521]["RewardItem"][3]["Attr"] = "0 3" -- RareYellowRune(B)Fragment*3
	tJuneOffLineActivity_Data[3321521]["RewardItem"][4] = {}
	tJuneOffLineActivity_Data[3321521]["RewardItem"][4]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tJuneOffLineActivity_Data[3321521]["RewardItem"][4]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的RadiantStarStone*3
	tJuneOffLineActivity_Data[3321521]["RewardItem"][5] = {}
	tJuneOffLineActivity_Data[3321521]["RewardItem"][5]["Id"] = 3321547 -- 【库】 3321547 【库里没有该物品】[属性:], 【表格】勇士觉醒道具兑换票
	tJuneOffLineActivity_Data[3321521]["RewardItem"][5]["Attr"] = "0 1" --  3321547 【库里没有该物品】*1
	tJuneOffLineActivity_Data[3321521]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321521]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321521]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321522] = {}
	-- ===昆仑镜10强礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321522]
	-- ===删除: 3321522,1
	tJuneOffLineActivity_Data[3321522]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321522]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321522]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321522]["DeleteItem"][1]["Id"] = 3321522 -- 【库】 3321522 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321522]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321522]["RewardTitle"]["TitleType"] = 2077 -- 【库】MirrorMaster, 【表格】180天昆仑镜称号
	tJuneOffLineActivity_Data[3321522]["RewardTitle"]["TitleId"] = 2077
	tJuneOffLineActivity_Data[3321522]["RewardTitle"]["SaveTime"] = 259200 -- 180天时效的[称号]:MirrorMaster, 【需求】180天昆仑镜称号
	tJuneOffLineActivity_Data[3321522]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321522]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321522]["RewardItem"][1]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tJuneOffLineActivity_Data[3321522]["RewardItem"][1]["Attr"] = "0 100 3" -- YellowRuneEssence*100
	tJuneOffLineActivity_Data[3321522]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321522]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】神纹源晶（赠）
	tJuneOffLineActivity_Data[3321522]["RewardItem"][2]["Attr"] = "0 10 3" -- RuneCrystal（赠）*10
	tJuneOffLineActivity_Data[3321522]["RewardItem"][3] = {}
	tJuneOffLineActivity_Data[3321522]["RewardItem"][3]["Id"] = 3311748 -- 【库】RareYellowRune(B)Fragment[属性:9], 【表格】稀有黄色神纹碎片（赠）
	tJuneOffLineActivity_Data[3321522]["RewardItem"][3]["Attr"] = "0 1" -- RareYellowRune(B)Fragment*1
	tJuneOffLineActivity_Data[3321522]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321522]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321522]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321523] = {}
	-- ===神农鼎10强礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321523]
	-- ===删除: 3321523,1
	tJuneOffLineActivity_Data[3321523]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321523]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321523]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321523]["DeleteItem"][1]["Id"] = 3321523 -- 【库】 3321523 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321523]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321523]["RewardTitle"]["TitleType"] = 2078 -- 【库】TripodMaster, 【表格】180天神农鼎称号
	tJuneOffLineActivity_Data[3321523]["RewardTitle"]["TitleId"] = 2078
	tJuneOffLineActivity_Data[3321523]["RewardTitle"]["SaveTime"] = 259200 -- 180天时效的[称号]:TripodMaster, 【需求】180天神农鼎称号
	tJuneOffLineActivity_Data[3321523]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321523]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321523]["RewardItem"][1]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tJuneOffLineActivity_Data[3321523]["RewardItem"][1]["Attr"] = "0 100 3" -- YellowRuneEssence*100
	tJuneOffLineActivity_Data[3321523]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321523]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】神纹源晶（赠）
	tJuneOffLineActivity_Data[3321523]["RewardItem"][2]["Attr"] = "0 10 3" -- RuneCrystal（赠）*10
	tJuneOffLineActivity_Data[3321523]["RewardItem"][3] = {}
	tJuneOffLineActivity_Data[3321523]["RewardItem"][3]["Id"] = 3311748 -- 【库】RareYellowRune(B)Fragment[属性:9], 【表格】稀有黄色神纹碎片（赠）
	tJuneOffLineActivity_Data[3321523]["RewardItem"][3]["Attr"] = "0 1" -- RareYellowRune(B)Fragment*1
	tJuneOffLineActivity_Data[3321523]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321523]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321523]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321524] = {}
	-- ===定海珠10强礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321524]
	-- ===删除: 3321524,1
	tJuneOffLineActivity_Data[3321524]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321524]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321524]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321524]["DeleteItem"][1]["Id"] = 3321524 -- 【库】 3321524 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321524]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321524]["RewardTitle"]["TitleType"] = 2079 -- 【库】BeadsMaster, 【表格】180天定海珠称号
	tJuneOffLineActivity_Data[3321524]["RewardTitle"]["TitleId"] = 2079
	tJuneOffLineActivity_Data[3321524]["RewardTitle"]["SaveTime"] = 259200 -- 180天时效的[称号]:BeadsMaster, 【需求】180天定海珠称号
	tJuneOffLineActivity_Data[3321524]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321524]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321524]["RewardItem"][1]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tJuneOffLineActivity_Data[3321524]["RewardItem"][1]["Attr"] = "0 100 3" -- YellowRuneEssence*100
	tJuneOffLineActivity_Data[3321524]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321524]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】神纹源晶（赠）
	tJuneOffLineActivity_Data[3321524]["RewardItem"][2]["Attr"] = "0 10 3" -- RuneCrystal（赠）*10
	tJuneOffLineActivity_Data[3321524]["RewardItem"][3] = {}
	tJuneOffLineActivity_Data[3321524]["RewardItem"][3]["Id"] = 3311748 -- 【库】RareYellowRune(B)Fragment[属性:9], 【表格】稀有黄色神纹碎片（赠）
	tJuneOffLineActivity_Data[3321524]["RewardItem"][3]["Attr"] = "0 1" -- RareYellowRune(B)Fragment*1
	tJuneOffLineActivity_Data[3321524]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321524]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321524]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321525] = {}
	-- ===番天印10强礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321525]
	-- ===删除: 3321525,1
	tJuneOffLineActivity_Data[3321525]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321525]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321525]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321525]["DeleteItem"][1]["Id"] = 3321525 -- 【库】 3321525 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321525]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321525]["RewardTitle"]["TitleType"] = 2080 -- 【库】SealMaster, 【表格】180天番天印称号
	tJuneOffLineActivity_Data[3321525]["RewardTitle"]["TitleId"] = 2080
	tJuneOffLineActivity_Data[3321525]["RewardTitle"]["SaveTime"] = 259200 -- 180天时效的[称号]:SealMaster, 【需求】180天番天印称号
	tJuneOffLineActivity_Data[3321525]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321525]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321525]["RewardItem"][1]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tJuneOffLineActivity_Data[3321525]["RewardItem"][1]["Attr"] = "0 100 3" -- YellowRuneEssence*100
	tJuneOffLineActivity_Data[3321525]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321525]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】神纹源晶（赠）
	tJuneOffLineActivity_Data[3321525]["RewardItem"][2]["Attr"] = "0 10 3" -- RuneCrystal（赠）*10
	tJuneOffLineActivity_Data[3321525]["RewardItem"][3] = {}
	tJuneOffLineActivity_Data[3321525]["RewardItem"][3]["Id"] = 3311748 -- 【库】RareYellowRune(B)Fragment[属性:9], 【表格】稀有黄色神纹碎片（赠）
	tJuneOffLineActivity_Data[3321525]["RewardItem"][3]["Attr"] = "0 1" -- RareYellowRune(B)Fragment*1
	tJuneOffLineActivity_Data[3321525]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321525]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321525]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321526] = {}
	-- ===东皇钟10强礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321526]
	-- ===删除: 3321526,1
	tJuneOffLineActivity_Data[3321526]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321526]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321526]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321526]["DeleteItem"][1]["Id"] = 3321526 -- 【库】 3321526 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321526]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321526]["RewardTitle"]["TitleType"] = 2081 -- 【库】BellMaster, 【表格】180天东皇钟称号
	tJuneOffLineActivity_Data[3321526]["RewardTitle"]["TitleId"] = 2081
	tJuneOffLineActivity_Data[3321526]["RewardTitle"]["SaveTime"] = 259200 -- 180天时效的[称号]:BellMaster, 【需求】180天东皇钟称号
	tJuneOffLineActivity_Data[3321526]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321526]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321526]["RewardItem"][1]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tJuneOffLineActivity_Data[3321526]["RewardItem"][1]["Attr"] = "0 100 3" -- YellowRuneEssence*100
	tJuneOffLineActivity_Data[3321526]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321526]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】神纹源晶（赠）
	tJuneOffLineActivity_Data[3321526]["RewardItem"][2]["Attr"] = "0 10 3" -- RuneCrystal（赠）*10
	tJuneOffLineActivity_Data[3321526]["RewardItem"][3] = {}
	tJuneOffLineActivity_Data[3321526]["RewardItem"][3]["Id"] = 3311748 -- 【库】RareYellowRune(B)Fragment[属性:9], 【表格】稀有黄色神纹碎片（赠）
	tJuneOffLineActivity_Data[3321526]["RewardItem"][3]["Attr"] = "0 1" -- RareYellowRune(B)Fragment*1
	tJuneOffLineActivity_Data[3321526]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321526]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321526]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321527] = {}
	-- ===昆仑镜20强礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321527]
	-- ===删除: 3321527,1
	tJuneOffLineActivity_Data[3321527]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321527]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321527]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321527]["DeleteItem"][1]["Id"] = 3321527 -- 【库】 3321527 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321527]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321527]["RewardTitle"]["TitleType"] = 2077 -- 【库】MirrorMaster, 【表格】60天昆仑镜称号
	tJuneOffLineActivity_Data[3321527]["RewardTitle"]["TitleId"] = 2077
	tJuneOffLineActivity_Data[3321527]["RewardTitle"]["SaveTime"] = 86400 -- 60天时效的[称号]:MirrorMaster, 【需求】60天昆仑镜称号
	tJuneOffLineActivity_Data[3321527]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321527]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321527]["RewardItem"][1]["Id"] = 3304571 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tJuneOffLineActivity_Data[3321527]["RewardItem"][1]["Attr"] = "0 2" -- 2天时效(激活)的BrightStarStone*10
	tJuneOffLineActivity_Data[3321527]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321527]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】神纹源晶（赠）
	tJuneOffLineActivity_Data[3321527]["RewardItem"][2]["Attr"] = "0 5 3" -- RuneCrystal（赠）*5
	tJuneOffLineActivity_Data[3321527]["RewardItem"][3] = {}
	tJuneOffLineActivity_Data[3321527]["RewardItem"][3]["Id"] = 3306510 -- 【库】RandomYellowRune(B)Pack[属性:9], 【表格】非稀有随机黄色神纹
	tJuneOffLineActivity_Data[3321527]["RewardItem"][3]["Attr"] = "0 2" -- RandomYellowRune(B)Pack*2
	tJuneOffLineActivity_Data[3321527]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321527]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321527]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321528] = {}
	-- ===神农鼎20强礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321528]
	-- ===删除: 3321528,1
	tJuneOffLineActivity_Data[3321528]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321528]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321528]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321528]["DeleteItem"][1]["Id"] = 3321528 -- 【库】 3321528 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321528]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321528]["RewardTitle"]["TitleType"] = 2078 -- 【库】TripodMaster, 【表格】60天神农鼎称号
	tJuneOffLineActivity_Data[3321528]["RewardTitle"]["TitleId"] = 2078
	tJuneOffLineActivity_Data[3321528]["RewardTitle"]["SaveTime"] = 86400 -- 60天时效的[称号]:TripodMaster, 【需求】60天神农鼎称号
	tJuneOffLineActivity_Data[3321528]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321528]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321528]["RewardItem"][1]["Id"] = 3304571 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tJuneOffLineActivity_Data[3321528]["RewardItem"][1]["Attr"] = "0 2" -- 2天时效(激活)的BrightStarStone*10
	tJuneOffLineActivity_Data[3321528]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321528]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】神纹源晶（赠）
	tJuneOffLineActivity_Data[3321528]["RewardItem"][2]["Attr"] = "0 5 3" -- RuneCrystal（赠）*5
	tJuneOffLineActivity_Data[3321528]["RewardItem"][3] = {}
	tJuneOffLineActivity_Data[3321528]["RewardItem"][3]["Id"] = 3306510 -- 【库】RandomYellowRune(B)Pack[属性:9], 【表格】非稀有随机黄色神纹
	tJuneOffLineActivity_Data[3321528]["RewardItem"][3]["Attr"] = "0 2" -- RandomYellowRune(B)Pack*2
	tJuneOffLineActivity_Data[3321528]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321528]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321528]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321529] = {}
	-- ===定海珠20强礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321529]
	-- ===删除: 3321529,1
	tJuneOffLineActivity_Data[3321529]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321529]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321529]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321529]["DeleteItem"][1]["Id"] = 3321529 -- 【库】 3321529 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321529]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321529]["RewardTitle"]["TitleType"] = 2079 -- 【库】BeadsMaster, 【表格】60天定海珠称号
	tJuneOffLineActivity_Data[3321529]["RewardTitle"]["TitleId"] = 2079
	tJuneOffLineActivity_Data[3321529]["RewardTitle"]["SaveTime"] = 86400 -- 60天时效的[称号]:BeadsMaster, 【需求】60天定海珠称号
	tJuneOffLineActivity_Data[3321529]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321529]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321529]["RewardItem"][1]["Id"] = 3304571 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tJuneOffLineActivity_Data[3321529]["RewardItem"][1]["Attr"] = "0 2" -- 2天时效(激活)的BrightStarStone*10
	tJuneOffLineActivity_Data[3321529]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321529]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】神纹源晶（赠）
	tJuneOffLineActivity_Data[3321529]["RewardItem"][2]["Attr"] = "0 5 3" -- RuneCrystal（赠）*5
	tJuneOffLineActivity_Data[3321529]["RewardItem"][3] = {}
	tJuneOffLineActivity_Data[3321529]["RewardItem"][3]["Id"] = 3306510 -- 【库】RandomYellowRune(B)Pack[属性:9], 【表格】非稀有随机黄色神纹
	tJuneOffLineActivity_Data[3321529]["RewardItem"][3]["Attr"] = "0 2" -- RandomYellowRune(B)Pack*2
	tJuneOffLineActivity_Data[3321529]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321529]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321529]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321530] = {}
	-- ===番天印20强礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321530]
	-- ===删除: 3321530,1
	tJuneOffLineActivity_Data[3321530]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321530]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321530]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321530]["DeleteItem"][1]["Id"] = 3321530 -- 【库】 3321530 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321530]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321530]["RewardTitle"]["TitleType"] = 2080 -- 【库】SealMaster, 【表格】60天番天印称号
	tJuneOffLineActivity_Data[3321530]["RewardTitle"]["TitleId"] = 2080
	tJuneOffLineActivity_Data[3321530]["RewardTitle"]["SaveTime"] = 86400 -- 60天时效的[称号]:SealMaster, 【需求】60天番天印称号
	tJuneOffLineActivity_Data[3321530]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321530]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321530]["RewardItem"][1]["Id"] = 3304571 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tJuneOffLineActivity_Data[3321530]["RewardItem"][1]["Attr"] = "0 2" -- 2天时效(激活)的BrightStarStone*10
	tJuneOffLineActivity_Data[3321530]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321530]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】神纹源晶（赠）
	tJuneOffLineActivity_Data[3321530]["RewardItem"][2]["Attr"] = "0 5 3" -- RuneCrystal（赠）*5
	tJuneOffLineActivity_Data[3321530]["RewardItem"][3] = {}
	tJuneOffLineActivity_Data[3321530]["RewardItem"][3]["Id"] = 3306510 -- 【库】RandomYellowRune(B)Pack[属性:9], 【表格】非稀有随机黄色神纹
	tJuneOffLineActivity_Data[3321530]["RewardItem"][3]["Attr"] = "0 2" -- RandomYellowRune(B)Pack*2
	tJuneOffLineActivity_Data[3321530]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321530]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321530]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321531] = {}
	-- ===东皇钟20强礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321531]
	-- ===删除: 3321531,1
	tJuneOffLineActivity_Data[3321531]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321531]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321531]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321531]["DeleteItem"][1]["Id"] = 3321531 -- 【库】 3321531 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321531]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321531]["RewardTitle"]["TitleType"] = 2081 -- 【库】BellMaster, 【表格】60天东皇钟称号
	tJuneOffLineActivity_Data[3321531]["RewardTitle"]["TitleId"] = 2081
	tJuneOffLineActivity_Data[3321531]["RewardTitle"]["SaveTime"] = 86400 -- 60天时效的[称号]:BellMaster, 【需求】60天东皇钟称号
	tJuneOffLineActivity_Data[3321531]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321531]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321531]["RewardItem"][1]["Id"] = 3304571 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tJuneOffLineActivity_Data[3321531]["RewardItem"][1]["Attr"] = "0 2" -- 2天时效(激活)的BrightStarStone*10
	tJuneOffLineActivity_Data[3321531]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321531]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】神纹源晶（赠）
	tJuneOffLineActivity_Data[3321531]["RewardItem"][2]["Attr"] = "0 5 3" -- RuneCrystal（赠）*5
	tJuneOffLineActivity_Data[3321531]["RewardItem"][3] = {}
	tJuneOffLineActivity_Data[3321531]["RewardItem"][3]["Id"] = 3306510 -- 【库】RandomYellowRune(B)Pack[属性:9], 【表格】非稀有随机黄色神纹
	tJuneOffLineActivity_Data[3321531]["RewardItem"][3]["Attr"] = "0 2" -- RandomYellowRune(B)Pack*2
	tJuneOffLineActivity_Data[3321531]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321531]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321531]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321532] = {}
	-- ===昆仑镜40强礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321532]
	-- ===删除: 3321532,1
	tJuneOffLineActivity_Data[3321532]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321532]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321532]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321532]["DeleteItem"][1]["Id"] = 3321532 -- 【库】 3321532 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321532]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321532]["RewardTitle"]["TitleType"] = 2077 -- 【库】MirrorMaster, 【表格】60天昆仑镜称号
	tJuneOffLineActivity_Data[3321532]["RewardTitle"]["TitleId"] = 2077
	tJuneOffLineActivity_Data[3321532]["RewardTitle"]["SaveTime"] = 86400 -- 60天时效的[称号]:MirrorMaster, 【需求】60天昆仑镜称号
	tJuneOffLineActivity_Data[3321532]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321532]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321532]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tJuneOffLineActivity_Data[3321532]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tJuneOffLineActivity_Data[3321532]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321532]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】神纹源晶（赠）
	tJuneOffLineActivity_Data[3321532]["RewardItem"][2]["Attr"] = "0 2 3" -- RuneCrystal（赠）*2
	tJuneOffLineActivity_Data[3321532]["RewardStrengthValue"] = {}
	tJuneOffLineActivity_Data[3321532]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】5000气力值
	tJuneOffLineActivity_Data[3321532]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321532]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321532]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321533] = {}
	-- ===神农鼎40强礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321533]
	-- ===删除: 3321533,1
	tJuneOffLineActivity_Data[3321533]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321533]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321533]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321533]["DeleteItem"][1]["Id"] = 3321533 -- 【库】 3321533 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321533]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321533]["RewardTitle"]["TitleType"] = 2078 -- 【库】TripodMaster, 【表格】60天神农鼎称号
	tJuneOffLineActivity_Data[3321533]["RewardTitle"]["TitleId"] = 2078
	tJuneOffLineActivity_Data[3321533]["RewardTitle"]["SaveTime"] = 86400 -- 60天时效的[称号]:TripodMaster, 【需求】60天神农鼎称号
	tJuneOffLineActivity_Data[3321533]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321533]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321533]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tJuneOffLineActivity_Data[3321533]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tJuneOffLineActivity_Data[3321533]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321533]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】神纹源晶（赠）
	tJuneOffLineActivity_Data[3321533]["RewardItem"][2]["Attr"] = "0 2 3" -- RuneCrystal（赠）*2
	tJuneOffLineActivity_Data[3321533]["RewardStrengthValue"] = {}
	tJuneOffLineActivity_Data[3321533]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】5000气力值
	tJuneOffLineActivity_Data[3321533]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321533]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321533]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321534] = {}
	-- ===定海珠40强礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321534]
	-- ===删除: 3321534,1
	tJuneOffLineActivity_Data[3321534]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321534]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321534]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321534]["DeleteItem"][1]["Id"] = 3321534 -- 【库】 3321534 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321534]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321534]["RewardTitle"]["TitleType"] = 2079 -- 【库】BeadsMaster, 【表格】60天定海珠称号
	tJuneOffLineActivity_Data[3321534]["RewardTitle"]["TitleId"] = 2079
	tJuneOffLineActivity_Data[3321534]["RewardTitle"]["SaveTime"] = 86400 -- 60天时效的[称号]:BeadsMaster, 【需求】60天定海珠称号
	tJuneOffLineActivity_Data[3321534]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321534]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321534]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tJuneOffLineActivity_Data[3321534]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tJuneOffLineActivity_Data[3321534]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321534]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】神纹源晶（赠）
	tJuneOffLineActivity_Data[3321534]["RewardItem"][2]["Attr"] = "0 2 3" -- RuneCrystal（赠）*2
	tJuneOffLineActivity_Data[3321534]["RewardStrengthValue"] = {}
	tJuneOffLineActivity_Data[3321534]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】5000气力值
	tJuneOffLineActivity_Data[3321534]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321534]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321534]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321535] = {}
	-- ===番天印40强礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321535]
	-- ===删除: 3321535,1
	tJuneOffLineActivity_Data[3321535]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321535]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321535]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321535]["DeleteItem"][1]["Id"] = 3321535 -- 【库】 3321535 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321535]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321535]["RewardTitle"]["TitleType"] = 2080 -- 【库】SealMaster, 【表格】60天番天印称号
	tJuneOffLineActivity_Data[3321535]["RewardTitle"]["TitleId"] = 2080
	tJuneOffLineActivity_Data[3321535]["RewardTitle"]["SaveTime"] = 86400 -- 60天时效的[称号]:SealMaster, 【需求】60天番天印称号
	tJuneOffLineActivity_Data[3321535]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321535]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321535]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tJuneOffLineActivity_Data[3321535]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tJuneOffLineActivity_Data[3321535]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321535]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】神纹源晶（赠）
	tJuneOffLineActivity_Data[3321535]["RewardItem"][2]["Attr"] = "0 2 3" -- RuneCrystal（赠）*2
	tJuneOffLineActivity_Data[3321535]["RewardStrengthValue"] = {}
	tJuneOffLineActivity_Data[3321535]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】5000气力值
	tJuneOffLineActivity_Data[3321535]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321535]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321535]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321536] = {}
	-- ===东皇钟40强礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321536]
	-- ===删除: 3321536,1
	tJuneOffLineActivity_Data[3321536]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321536]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321536]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321536]["DeleteItem"][1]["Id"] = 3321536 -- 【库】 3321536 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321536]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321536]["RewardTitle"]["TitleType"] = 2081 -- 【库】BellMaster, 【表格】60天东皇钟称号
	tJuneOffLineActivity_Data[3321536]["RewardTitle"]["TitleId"] = 2081
	tJuneOffLineActivity_Data[3321536]["RewardTitle"]["SaveTime"] = 86400 -- 60天时效的[称号]:BellMaster, 【需求】60天东皇钟称号
	tJuneOffLineActivity_Data[3321536]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321536]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321536]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tJuneOffLineActivity_Data[3321536]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tJuneOffLineActivity_Data[3321536]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321536]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】神纹源晶（赠）
	tJuneOffLineActivity_Data[3321536]["RewardItem"][2]["Attr"] = "0 2 3" -- RuneCrystal（赠）*2
	tJuneOffLineActivity_Data[3321536]["RewardStrengthValue"] = {}
	tJuneOffLineActivity_Data[3321536]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】5000气力值
	tJuneOffLineActivity_Data[3321536]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321536]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321536]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321537] = {}
	-- ===昆仑镜70强礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321537]
	-- ===删除: 3321537,1
	tJuneOffLineActivity_Data[3321537]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321537]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321537]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321537]["DeleteItem"][1]["Id"] = 3321537 -- 【库】 3321537 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321537]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321537]["RewardTitle"]["TitleType"] = 2077 -- 【库】MirrorMaster, 【表格】30天昆仑镜称号
	tJuneOffLineActivity_Data[3321537]["RewardTitle"]["TitleId"] = 2077
	tJuneOffLineActivity_Data[3321537]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:MirrorMaster, 【需求】30天昆仑镜称号
	tJuneOffLineActivity_Data[3321537]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321537]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321537]["RewardItem"][1]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tJuneOffLineActivity_Data[3321537]["RewardItem"][1]["Attr"] = "0 30 3" -- YellowRuneEssence*30
	tJuneOffLineActivity_Data[3321537]["RewardStrengthValue"] = {}
	tJuneOffLineActivity_Data[3321537]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000气力值（赠）
	tJuneOffLineActivity_Data[3321537]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321537]["RewardItem"][2]["Id"] = 3306510 -- 【库】RandomYellowRune(B)Pack[属性:9], 【表格】非稀有随机黄色神纹
	tJuneOffLineActivity_Data[3321537]["RewardItem"][2]["Attr"] = "0 1" -- RandomYellowRune(B)Pack*1
	tJuneOffLineActivity_Data[3321537]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321537]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321537]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321538] = {}
	-- ===神农鼎70强礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321538]
	-- ===删除: 3321538,1
	tJuneOffLineActivity_Data[3321538]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321538]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321538]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321538]["DeleteItem"][1]["Id"] = 3321538 -- 【库】 3321538 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321538]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321538]["RewardTitle"]["TitleType"] = 2078 -- 【库】TripodMaster, 【表格】30天神农鼎称号
	tJuneOffLineActivity_Data[3321538]["RewardTitle"]["TitleId"] = 2078
	tJuneOffLineActivity_Data[3321538]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:TripodMaster, 【需求】30天神农鼎称号
	tJuneOffLineActivity_Data[3321538]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321538]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321538]["RewardItem"][1]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tJuneOffLineActivity_Data[3321538]["RewardItem"][1]["Attr"] = "0 30 3" -- YellowRuneEssence*30
	tJuneOffLineActivity_Data[3321538]["RewardStrengthValue"] = {}
	tJuneOffLineActivity_Data[3321538]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000气力值
	tJuneOffLineActivity_Data[3321538]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321538]["RewardItem"][2]["Id"] = 3306510 -- 【库】RandomYellowRune(B)Pack[属性:9], 【表格】非稀有随机黄色神纹
	tJuneOffLineActivity_Data[3321538]["RewardItem"][2]["Attr"] = "0 1" -- RandomYellowRune(B)Pack*1
	tJuneOffLineActivity_Data[3321538]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321538]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321538]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321539] = {}
	-- ===定海珠70强礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321539]
	-- ===删除: 3321539,1
	tJuneOffLineActivity_Data[3321539]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321539]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321539]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321539]["DeleteItem"][1]["Id"] = 3321539 -- 【库】 3321539 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321539]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321539]["RewardTitle"]["TitleType"] = 2079 -- 【库】BeadsMaster, 【表格】30天定海珠称号
	tJuneOffLineActivity_Data[3321539]["RewardTitle"]["TitleId"] = 2079
	tJuneOffLineActivity_Data[3321539]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:BeadsMaster, 【需求】30天定海珠称号
	tJuneOffLineActivity_Data[3321539]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321539]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321539]["RewardItem"][1]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tJuneOffLineActivity_Data[3321539]["RewardItem"][1]["Attr"] = "0 30 3" -- YellowRuneEssence*30
	tJuneOffLineActivity_Data[3321539]["RewardStrengthValue"] = {}
	tJuneOffLineActivity_Data[3321539]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000气力值
	tJuneOffLineActivity_Data[3321539]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321539]["RewardItem"][2]["Id"] = 3306510 -- 【库】RandomYellowRune(B)Pack[属性:9], 【表格】非稀有随机黄色神纹
	tJuneOffLineActivity_Data[3321539]["RewardItem"][2]["Attr"] = "0 1" -- RandomYellowRune(B)Pack*1
	tJuneOffLineActivity_Data[3321539]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321539]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321539]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321540] = {}
	-- ===番天印70强礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321540]
	-- ===删除: 3321540,1
	tJuneOffLineActivity_Data[3321540]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321540]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321540]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321540]["DeleteItem"][1]["Id"] = 3321540 -- 【库】 3321540 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321540]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321540]["RewardTitle"]["TitleType"] = 2080 -- 【库】SealMaster, 【表格】30天番天印称号
	tJuneOffLineActivity_Data[3321540]["RewardTitle"]["TitleId"] = 2080
	tJuneOffLineActivity_Data[3321540]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:SealMaster, 【需求】30天番天印称号
	tJuneOffLineActivity_Data[3321540]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321540]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321540]["RewardItem"][1]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tJuneOffLineActivity_Data[3321540]["RewardItem"][1]["Attr"] = "0 30 3" -- YellowRuneEssence*30
	tJuneOffLineActivity_Data[3321540]["RewardStrengthValue"] = {}
	tJuneOffLineActivity_Data[3321540]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000气力值
	tJuneOffLineActivity_Data[3321540]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321540]["RewardItem"][2]["Id"] = 3306510 -- 【库】RandomYellowRune(B)Pack[属性:9], 【表格】非稀有随机黄色神纹
	tJuneOffLineActivity_Data[3321540]["RewardItem"][2]["Attr"] = "0 1" -- RandomYellowRune(B)Pack*1
	tJuneOffLineActivity_Data[3321540]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321540]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321540]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321541] = {}
	-- ===东皇钟70强礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321541]
	-- ===删除: 3321541,1
	tJuneOffLineActivity_Data[3321541]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321541]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321541]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321541]["DeleteItem"][1]["Id"] = 3321541 -- 【库】 3321541 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321541]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321541]["RewardTitle"]["TitleType"] = 2081 -- 【库】BellMaster, 【表格】30天东皇钟称号
	tJuneOffLineActivity_Data[3321541]["RewardTitle"]["TitleId"] = 2081
	tJuneOffLineActivity_Data[3321541]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:BellMaster, 【需求】30天东皇钟称号
	tJuneOffLineActivity_Data[3321541]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321541]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321541]["RewardItem"][1]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tJuneOffLineActivity_Data[3321541]["RewardItem"][1]["Attr"] = "0 30 3" -- YellowRuneEssence*30
	tJuneOffLineActivity_Data[3321541]["RewardStrengthValue"] = {}
	tJuneOffLineActivity_Data[3321541]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000气力值
	tJuneOffLineActivity_Data[3321541]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321541]["RewardItem"][2]["Id"] = 3306510 -- 【库】RandomYellowRune(B)Pack[属性:9], 【表格】非稀有随机黄色神纹
	tJuneOffLineActivity_Data[3321541]["RewardItem"][2]["Attr"] = "0 1" -- RandomYellowRune(B)Pack*1
	tJuneOffLineActivity_Data[3321541]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321541]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321541]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321542] = {}
	-- ===昆仑镜百强礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321542]
	-- ===删除: 3321542,1
	tJuneOffLineActivity_Data[3321542]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321542]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321542]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321542]["DeleteItem"][1]["Id"] = 3321542 -- 【库】 3321542 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321542]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321542]["RewardTitle"]["TitleType"] = 2077 -- 【库】MirrorMaster, 【表格】30天昆仑镜称号
	tJuneOffLineActivity_Data[3321542]["RewardTitle"]["TitleId"] = 2077
	tJuneOffLineActivity_Data[3321542]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:MirrorMaster, 【需求】30天昆仑镜称号
	tJuneOffLineActivity_Data[3321542]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321542]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321542]["RewardItem"][1]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tJuneOffLineActivity_Data[3321542]["RewardItem"][1]["Attr"] = "0 20 3" -- YellowRuneEssence*20
	tJuneOffLineActivity_Data[3321542]["RewardStrengthValue"] = {}
	tJuneOffLineActivity_Data[3321542]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000气力值
	tJuneOffLineActivity_Data[3321542]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321542]["RewardItem"][2]["Id"] = 3306370 -- 【库】YellowRuneFragment[属性:9], 【表格】非稀有黄色神纹碎片
	tJuneOffLineActivity_Data[3321542]["RewardItem"][2]["Attr"] = "0 10" -- YellowRuneFragment*10
	tJuneOffLineActivity_Data[3321542]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321542]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321542]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321543] = {}
	-- ===神农鼎百强礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321543]
	-- ===删除: 3321543,1
	tJuneOffLineActivity_Data[3321543]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321543]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321543]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321543]["DeleteItem"][1]["Id"] = 3321543 -- 【库】 3321543 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321543]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321543]["RewardTitle"]["TitleType"] = 2078 -- 【库】TripodMaster, 【表格】30天神农鼎称号
	tJuneOffLineActivity_Data[3321543]["RewardTitle"]["TitleId"] = 2078
	tJuneOffLineActivity_Data[3321543]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:TripodMaster, 【需求】30天神农鼎称号
	tJuneOffLineActivity_Data[3321543]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321543]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321543]["RewardItem"][1]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tJuneOffLineActivity_Data[3321543]["RewardItem"][1]["Attr"] = "0 20 3" -- YellowRuneEssence*20
	tJuneOffLineActivity_Data[3321543]["RewardStrengthValue"] = {}
	tJuneOffLineActivity_Data[3321543]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000气力值
	tJuneOffLineActivity_Data[3321543]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321543]["RewardItem"][2]["Id"] = 3306370 -- 【库】YellowRuneFragment[属性:9], 【表格】非稀有黄色神纹碎片
	tJuneOffLineActivity_Data[3321543]["RewardItem"][2]["Attr"] = "0 10" -- YellowRuneFragment*10
	tJuneOffLineActivity_Data[3321543]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321543]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321543]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321544] = {}
	-- ===定海珠百强礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321544]
	-- ===删除: 3321544,1
	tJuneOffLineActivity_Data[3321544]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321544]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321544]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321544]["DeleteItem"][1]["Id"] = 3321544 -- 【库】 3321544 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321544]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321544]["RewardTitle"]["TitleType"] = 2079 -- 【库】BeadsMaster, 【表格】30天定海珠称号
	tJuneOffLineActivity_Data[3321544]["RewardTitle"]["TitleId"] = 2079
	tJuneOffLineActivity_Data[3321544]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:BeadsMaster, 【需求】30天定海珠称号
	tJuneOffLineActivity_Data[3321544]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321544]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321544]["RewardItem"][1]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tJuneOffLineActivity_Data[3321544]["RewardItem"][1]["Attr"] = "0 20 3" -- YellowRuneEssence*20
	tJuneOffLineActivity_Data[3321544]["RewardStrengthValue"] = {}
	tJuneOffLineActivity_Data[3321544]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000气力值
	tJuneOffLineActivity_Data[3321544]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321544]["RewardItem"][2]["Id"] = 3306370 -- 【库】YellowRuneFragment[属性:9], 【表格】非稀有黄色神纹碎片
	tJuneOffLineActivity_Data[3321544]["RewardItem"][2]["Attr"] = "0 10" -- YellowRuneFragment*10
	tJuneOffLineActivity_Data[3321544]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321544]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321544]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321545] = {}
	-- ===番天印百强礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321545]
	-- ===删除: 3321545,1
	tJuneOffLineActivity_Data[3321545]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321545]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321545]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321545]["DeleteItem"][1]["Id"] = 3321545 -- 【库】 3321545 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321545]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321545]["RewardTitle"]["TitleType"] = 2080 -- 【库】SealMaster, 【表格】30天番天印称号
	tJuneOffLineActivity_Data[3321545]["RewardTitle"]["TitleId"] = 2080
	tJuneOffLineActivity_Data[3321545]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:SealMaster, 【需求】30天番天印称号
	tJuneOffLineActivity_Data[3321545]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321545]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321545]["RewardItem"][1]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tJuneOffLineActivity_Data[3321545]["RewardItem"][1]["Attr"] = "0 20 3" -- YellowRuneEssence*20
	tJuneOffLineActivity_Data[3321545]["RewardStrengthValue"] = {}
	tJuneOffLineActivity_Data[3321545]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000气力值
	tJuneOffLineActivity_Data[3321545]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321545]["RewardItem"][2]["Id"] = 3306370 -- 【库】YellowRuneFragment[属性:9], 【表格】非稀有黄色神纹碎片
	tJuneOffLineActivity_Data[3321545]["RewardItem"][2]["Attr"] = "0 10" -- YellowRuneFragment*10
	tJuneOffLineActivity_Data[3321545]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321545]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321545]["RewardEffect"]["Effect"] = "angelwing"


	tJuneOffLineActivity_Data[3321546] = {}
	-- ===东皇钟百强礼盒
	-- ===索引:tJuneOffLineActivity_Data[3321546]
	-- ===删除: 3321546,1
	tJuneOffLineActivity_Data[3321546]["LogId"] = 12001415
	tJuneOffLineActivity_Data[3321546]["DeleteItem"] = {}
	tJuneOffLineActivity_Data[3321546]["DeleteItem"][1] = {}
	tJuneOffLineActivity_Data[3321546]["DeleteItem"][1]["Id"] = 3321546 -- 【库】 3321546 【库里没有该物品】[属性:]
	tJuneOffLineActivity_Data[3321546]["RewardTitle"] = {}
	tJuneOffLineActivity_Data[3321546]["RewardTitle"]["TitleType"] = 2081 -- 【库】BellMaster, 【表格】30天东皇钟称号
	tJuneOffLineActivity_Data[3321546]["RewardTitle"]["TitleId"] = 2081
	tJuneOffLineActivity_Data[3321546]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:BellMaster, 【需求】30天东皇钟称号
	tJuneOffLineActivity_Data[3321546]["RewardItem"] = {}
	tJuneOffLineActivity_Data[3321546]["RewardItem"][1] = {}
	tJuneOffLineActivity_Data[3321546]["RewardItem"][1]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tJuneOffLineActivity_Data[3321546]["RewardItem"][1]["Attr"] = "0 20 3" -- YellowRuneEssence*20
	tJuneOffLineActivity_Data[3321546]["RewardStrengthValue"] = {}
	tJuneOffLineActivity_Data[3321546]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000气力值
	tJuneOffLineActivity_Data[3321546]["RewardItem"][2] = {}
	tJuneOffLineActivity_Data[3321546]["RewardItem"][2]["Id"] = 3306370 -- 【库】YellowRuneFragment[属性:9], 【表格】非稀有黄色神纹碎片
	tJuneOffLineActivity_Data[3321546]["RewardItem"][2]["Attr"] = "0 10" -- YellowRuneFragment*10
	tJuneOffLineActivity_Data[3321546]["RewardEffect"] = {}
	tJuneOffLineActivity_Data[3321546]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneOffLineActivity_Data[3321546]["RewardEffect"]["Effect"] = "angelwing"







----------------------------------逻辑部分---------------------------------------------











---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3321491] = tItem[3321491] or {}
tItem[3321491]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tJuneOffLineActivity_Data[nItemId])
	
	if not bJudge then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tJuneOffLineActivity_Data[nItemId],nUserId,bJudge)
end

tItem[3321492] = tItem[3321491]
tItem[3321493] = tItem[3321491]
tItem[3321494] = tItem[3321491]
tItem[3321495] = tItem[3321491]
tItem[3321496] = tItem[3321491]
tItem[3321497] = tItem[3321491]
tItem[3321498] = tItem[3321491]
tItem[3321499] = tItem[3321491]
tItem[3321500] = tItem[3321491]
tItem[3321501] = tItem[3321491]
tItem[3321502] = tItem[3321491]
tItem[3321503] = tItem[3321491]
tItem[3321504] = tItem[3321491]
tItem[3321505] = tItem[3321491]
tItem[3321506] = tItem[3321491]
tItem[3321507] = tItem[3321491]
tItem[3321508] = tItem[3321491]
tItem[3321509] = tItem[3321491]
tItem[3321510] = tItem[3321491]
tItem[3321511] = tItem[3321491]
tItem[3321512] = tItem[3321491]
tItem[3321513] = tItem[3321491]
tItem[3321514] = tItem[3321491]
tItem[3321515] = tItem[3321491]
tItem[3321516] = tItem[3321491]
tItem[3321517] = tItem[3321491]
tItem[3321518] = tItem[3321491]
tItem[3321519] = tItem[3321491]
tItem[3321520] = tItem[3321491]
tItem[3321521] = tItem[3321491]
tItem[3321522] = tItem[3321491]
tItem[3321523] = tItem[3321491]
tItem[3321524] = tItem[3321491]
tItem[3321525] = tItem[3321491]
tItem[3321526] = tItem[3321491]
tItem[3321527] = tItem[3321491]
tItem[3321528] = tItem[3321491]
tItem[3321529] = tItem[3321491]
tItem[3321530] = tItem[3321491]
tItem[3321531] = tItem[3321491]
tItem[3321532] = tItem[3321491]
tItem[3321533] = tItem[3321491]
tItem[3321534] = tItem[3321491]
tItem[3321535] = tItem[3321491]
tItem[3321536] = tItem[3321491]
tItem[3321537] = tItem[3321491]
tItem[3321538] = tItem[3321491]
tItem[3321539] = tItem[3321491]
tItem[3321540] = tItem[3321491]
tItem[3321541] = tItem[3321491]
tItem[3321542] = tItem[3321491]
tItem[3321543] = tItem[3321491]
tItem[3321544] = tItem[3321491]
tItem[3321545] = tItem[3321491]
tItem[3321546] = tItem[3321491]

--------物品有对白模板
tItemFace[3321547] = 2286

tItem[3321547] = tItem[3321547] or {}
tItem[3321547]["DialogueText"] = tJuneOffLineActivity_Text[3321547]
tItem[3321547]["Text1-1"] = {111}
tItem[3321547]["tOption1-1"] = {111}


