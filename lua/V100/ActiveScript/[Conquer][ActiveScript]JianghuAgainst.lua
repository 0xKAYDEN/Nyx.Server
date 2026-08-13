------------------------------------------------------------------------------------
--Name：      190428[英文征服][活动脚本]江湖实力比拼赛（5.23-6.12）
--Creator:    吴燕柚
--Created:    2019/04/28
------------------------------------------------------------------------------------
--任务需求：

-- logid 12001409
-- EMoneyLog: 10000,0418
-- luaid 41292

-- 命名规范 JianghuAgainst_

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------




local tJianghuAgainst_Reward = {}
	-- ===200000分学徒礼包
	-- ===索引: tJianghuAgainst_Reward[3312347]
	-- ===删除: 3312347,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312347] = {}
	tJianghuAgainst_Reward[3312347]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312347]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312347]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312347]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312347]["DeleteItem"][1]["Id"] = 3312347 -- 【库】200000PtsTraineePack[属性:9]
	tJianghuAgainst_Reward[3312347]["RewardTitle"] = {}
	tJianghuAgainst_Reward[3312347]["RewardTitle"]["TitleType"] = 2127 -- 【库】Trainee, 【表格】征服学徒
	tJianghuAgainst_Reward[3312347]["RewardTitle"]["TitleId"] = 2127
	tJianghuAgainst_Reward[3312347]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:Trainee, 【需求】征服学徒
	tJianghuAgainst_Reward[3312347]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312347]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312347]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*5
	tJianghuAgainst_Reward[3312347]["RewardItem"][1]["Attr"] = "0 5" -- GinsengFruit*5
	tJianghuAgainst_Reward[3312347]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312347]["RewardItem"][2]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石*3
	tJianghuAgainst_Reward[3312347]["RewardItem"][2]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的BrightStarStone*3
	tJianghuAgainst_Reward[3312347]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312347]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312347]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312348] = {}
	-- ===220000分学徒礼包
	-- ===索引: tJianghuAgainst_Reward[3312348]
	-- ===删除: 3312348,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312348]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312348]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312348]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312348]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312348]["DeleteItem"][1]["Id"] = 3312348 -- 【库】220000PtsTraineePack[属性:9]
	tJianghuAgainst_Reward[3312348]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312348]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312348]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*5
	tJianghuAgainst_Reward[3312348]["RewardItem"][1]["Attr"] = "0 5" -- GinsengFruit*5
	tJianghuAgainst_Reward[3312348]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312348]["RewardItem"][2]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石*3
	tJianghuAgainst_Reward[3312348]["RewardItem"][2]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的BrightStarStone*3
	tJianghuAgainst_Reward[3312348]["RewardItem"][3] = {}
	tJianghuAgainst_Reward[3312348]["RewardItem"][3]["Id"] = 3003879 -- 【库】EliteGemBag[属性:9], 【表格】赠良品随机宝石袋*1
	tJianghuAgainst_Reward[3312348]["RewardItem"][3]["Attr"] = "0 1" -- EliteGemBag*1
	tJianghuAgainst_Reward[3312348]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312348]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312348]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312349] = {}
	-- ===240000分学徒礼包
	-- ===索引:tJianghuAgainst_Reward[3312349]
	-- ===删除: 3312349,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312349]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312349]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312349]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312349]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312349]["DeleteItem"][1]["Id"] = 3312349 -- 【库】240000PtsTraineePack[属性:9]
	tJianghuAgainst_Reward[3312349]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312349]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312349]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*5
	tJianghuAgainst_Reward[3312349]["RewardItem"][1]["Attr"] = "0 5" -- GinsengFruit*5
	tJianghuAgainst_Reward[3312349]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312349]["RewardItem"][2]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石*3
	tJianghuAgainst_Reward[3312349]["RewardItem"][2]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的BrightStarStone*3
	tJianghuAgainst_Reward[3312349]["RewardItem"][3] = {}
	tJianghuAgainst_Reward[3312349]["RewardItem"][3]["Id"] = 3003879 -- 【库】EliteGemBag[属性:9], 【表格】赠良品随机宝石袋*2
	tJianghuAgainst_Reward[3312349]["RewardItem"][3]["Attr"] = "0 2" -- EliteGemBag*2
	tJianghuAgainst_Reward[3312349]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312349]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312349]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312350] = {}
	-- ===260000分学徒礼包
	-- ===索引: tJianghuAgainst_Reward[3312350]
	-- ===删除: 3312350,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312350]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312350]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312350]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312350]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312350]["DeleteItem"][1]["Id"] = 3312350 -- 【库】260000PtsTraineePack[属性:9]
	tJianghuAgainst_Reward[3312350]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312350]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312350]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*5
	tJianghuAgainst_Reward[3312350]["RewardItem"][1]["Attr"] = "0 5" -- GinsengFruit*5
	tJianghuAgainst_Reward[3312350]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312350]["RewardItem"][2]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石*3
	tJianghuAgainst_Reward[3312350]["RewardItem"][2]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的BrightStarStone*3
	tJianghuAgainst_Reward[3312350]["RewardItem"][3] = {}
	tJianghuAgainst_Reward[3312350]["RewardItem"][3]["Id"] = 3003879 -- 【库】EliteGemBag[属性:9], 【表格】赠良品随机宝石袋*3
	tJianghuAgainst_Reward[3312350]["RewardItem"][3]["Attr"] = "0 3" -- EliteGemBag*3
	tJianghuAgainst_Reward[3312350]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312350]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312350]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312351] = {}
	-- ===280000分学徒礼包
	-- ===索引: tJianghuAgainst_Reward[3312351]
	-- ===删除: 3312351,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312351]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312351]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312351]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312351]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312351]["DeleteItem"][1]["Id"] = 3312351 -- 【库】280000PtsTraineePack[属性:9]
	tJianghuAgainst_Reward[3312351]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312351]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312351]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*5
	tJianghuAgainst_Reward[3312351]["RewardItem"][1]["Attr"] = "0 5" -- GinsengFruit*5
	tJianghuAgainst_Reward[3312351]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312351]["RewardItem"][2]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石*3
	tJianghuAgainst_Reward[3312351]["RewardItem"][2]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的BrightStarStone*3
	tJianghuAgainst_Reward[3312351]["RewardItem"][3] = {}
	tJianghuAgainst_Reward[3312351]["RewardItem"][3]["Id"] = 3003879 -- 【库】EliteGemBag[属性:9], 【表格】赠良品随机宝石袋*4
	tJianghuAgainst_Reward[3312351]["RewardItem"][3]["Attr"] = "0 4" -- EliteGemBag*4
	tJianghuAgainst_Reward[3312351]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312351]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312351]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312352] = {}
	-- ===300000分好手礼包
	-- ===索引: tJianghuAgainst_Reward[3312352]
	-- ===删除: 3312352,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312352]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312352]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312352]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312352]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312352]["DeleteItem"][1]["Id"] = 3312352 -- 【库】300000PtsExpertPack[属性:9]
	tJianghuAgainst_Reward[3312352]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312352]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312352]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*10
	tJianghuAgainst_Reward[3312352]["RewardItem"][1]["Attr"] = "0 10" -- GinsengFruit*10
	tJianghuAgainst_Reward[3312352]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312352]["RewardItem"][2]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石*5
	tJianghuAgainst_Reward[3312352]["RewardItem"][2]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tJianghuAgainst_Reward[3312352]["RewardTitle"] = {}
	tJianghuAgainst_Reward[3312352]["RewardTitle"]["TitleType"] = 2128 -- 【库】Expert, 【表格】称号-征服好手
	tJianghuAgainst_Reward[3312352]["RewardTitle"]["TitleId"] = 2128
	tJianghuAgainst_Reward[3312352]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:Expert, 【需求】称号-征服好手
	tJianghuAgainst_Reward[3312352]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312352]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312352]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312353] = {}
	-- ===320000分好手礼包
	-- ===索引: tJianghuAgainst_Reward[3312353]
	-- ===删除: 3312353,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312353]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312353]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312353]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312353]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312353]["DeleteItem"][1]["Id"] = 3312353 -- 【库】320000PtsExpertPack[属性:9]
	tJianghuAgainst_Reward[3312353]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312353]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312353]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*10
	tJianghuAgainst_Reward[3312353]["RewardItem"][1]["Attr"] = "0 10" -- GinsengFruit*10
	tJianghuAgainst_Reward[3312353]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312353]["RewardItem"][2]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石*5
	tJianghuAgainst_Reward[3312353]["RewardItem"][2]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tJianghuAgainst_Reward[3312353]["RewardStrengthValue"] = {}
	tJianghuAgainst_Reward[3312353]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】赠气力1000
	tJianghuAgainst_Reward[3312353]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312353]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312353]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312354] = {}
	-- ===340000分好手礼包
	-- ===索引: tJianghuAgainst_Reward[3312354]
	-- ===删除: 3312354,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312354]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312354]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312354]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312354]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312354]["DeleteItem"][1]["Id"] = 3312354 -- 【库】340000PtsExpertPack[属性:9]
	tJianghuAgainst_Reward[3312354]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312354]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312354]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*10
	tJianghuAgainst_Reward[3312354]["RewardItem"][1]["Attr"] = "0 10" -- GinsengFruit*10
	tJianghuAgainst_Reward[3312354]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312354]["RewardItem"][2]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石*5
	tJianghuAgainst_Reward[3312354]["RewardItem"][2]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tJianghuAgainst_Reward[3312354]["RewardStrengthValue"] = {}
	tJianghuAgainst_Reward[3312354]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】赠气力2000
	tJianghuAgainst_Reward[3312354]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312354]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312354]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312355] = {}
	-- ===360000分好手礼包
	-- ===索引: tJianghuAgainst_Reward[3312355]
	-- ===删除: 3312355,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312355]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312355]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312355]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312355]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312355]["DeleteItem"][1]["Id"] = 3312355 -- 【库】360000PtsExpertPack[属性:9]
	tJianghuAgainst_Reward[3312355]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312355]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312355]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*10
	tJianghuAgainst_Reward[3312355]["RewardItem"][1]["Attr"] = "0 10" -- GinsengFruit*10
	tJianghuAgainst_Reward[3312355]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312355]["RewardItem"][2]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石*5
	tJianghuAgainst_Reward[3312355]["RewardItem"][2]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tJianghuAgainst_Reward[3312355]["RewardStrengthValue"] = {}
	tJianghuAgainst_Reward[3312355]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】赠气力3000
	tJianghuAgainst_Reward[3312355]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312355]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312355]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312356] = {}
	-- ===380000分好手礼包
	-- ===索引: tJianghuAgainst_Reward[3312356]
	-- ===删除: 3312356,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312356]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312356]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312356]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312356]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312356]["DeleteItem"][1]["Id"] = 3312356 -- 【库】380000PtsExpertPack[属性:9]
	tJianghuAgainst_Reward[3312356]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312356]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312356]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*10
	tJianghuAgainst_Reward[3312356]["RewardItem"][1]["Attr"] = "0 10" -- GinsengFruit*10
	tJianghuAgainst_Reward[3312356]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312356]["RewardItem"][2]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石*5
	tJianghuAgainst_Reward[3312356]["RewardItem"][2]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tJianghuAgainst_Reward[3312356]["RewardStrengthValue"] = {}
	tJianghuAgainst_Reward[3312356]["RewardStrengthValue"]["Value"] = 4000 -- 气力值, 【需求】赠气力4000
	tJianghuAgainst_Reward[3312356]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312356]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312356]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312357] = {}
	-- ===400000分高手礼包
	-- ===索引: tJianghuAgainst_Reward[3312357]
	-- ===删除: 3312357,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312357]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312357]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312357]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312357]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312357]["DeleteItem"][1]["Id"] = 3312357 -- 【库】400000PtsElitePack[属性:9]
	tJianghuAgainst_Reward[3312357]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312357]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312357]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*10
	tJianghuAgainst_Reward[3312357]["RewardItem"][1]["Attr"] = "0 10" -- GinsengFruit*10
	tJianghuAgainst_Reward[3312357]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312357]["RewardItem"][2]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石*5
	tJianghuAgainst_Reward[3312357]["RewardItem"][2]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tJianghuAgainst_Reward[3312357]["RewardTitle"] = {}
	tJianghuAgainst_Reward[3312357]["RewardTitle"]["TitleType"] = 2129 -- 【库】Elite, 【表格】称号-征服高手
	tJianghuAgainst_Reward[3312357]["RewardTitle"]["TitleId"] = 2129
	tJianghuAgainst_Reward[3312357]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:Elite, 【需求】称号-征服高手
	tJianghuAgainst_Reward[3312357]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312357]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312357]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312358] = {}
	-- ===420000分高手礼包
	-- ===索引: tJianghuAgainst_Reward[3312358]
	-- ===删除: 3312358,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312358]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312358]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312358]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312358]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312358]["DeleteItem"][1]["Id"] = 3312358 -- 【库】420000PtsElitePack[属性:9]
	tJianghuAgainst_Reward[3312358]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312358]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312358]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*15
	tJianghuAgainst_Reward[3312358]["RewardItem"][1]["Attr"] = "0 15" -- GinsengFruit*15
	tJianghuAgainst_Reward[3312358]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312358]["RewardItem"][2]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石*2
	tJianghuAgainst_Reward[3312358]["RewardItem"][2]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的RadiantStarStone*2
	tJianghuAgainst_Reward[3312358]["RewardStrengthValue"] = {}
	tJianghuAgainst_Reward[3312358]["RewardStrengthValue"]["Value"] = 6000 -- 气力值, 【需求】赠气力6000
	tJianghuAgainst_Reward[3312358]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312358]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312358]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312359] = {}
	-- ===440000分高手礼包
	-- ===索引: tJianghuAgainst_Reward[3312359]
	-- ===删除: 3312359,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312359]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312359]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312359]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312359]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312359]["DeleteItem"][1]["Id"] = 3312359 -- 【库】440000PtsElitePack[属性:9]
	tJianghuAgainst_Reward[3312359]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312359]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312359]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*15
	tJianghuAgainst_Reward[3312359]["RewardItem"][1]["Attr"] = "0 15" -- GinsengFruit*15
	tJianghuAgainst_Reward[3312359]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312359]["RewardItem"][2]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石*2
	tJianghuAgainst_Reward[3312359]["RewardItem"][2]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的RadiantStarStone*2
	tJianghuAgainst_Reward[3312359]["RewardStrengthValue"] = {}
	tJianghuAgainst_Reward[3312359]["RewardStrengthValue"]["Value"] = 7000 -- 气力值, 【需求】赠气力7000
	tJianghuAgainst_Reward[3312359]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312359]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312359]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312360] = {}
	-- ===460000分高手礼包
	-- ===索引: tJianghuAgainst_Reward[3312360]
	-- ===删除: 3312360,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312360]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312360]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312360]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312360]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312360]["DeleteItem"][1]["Id"] = 3312360 -- 【库】460000PtsElitePack[属性:9]
	tJianghuAgainst_Reward[3312360]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312360]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312360]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*15
	tJianghuAgainst_Reward[3312360]["RewardItem"][1]["Attr"] = "0 15" -- GinsengFruit*15
	tJianghuAgainst_Reward[3312360]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312360]["RewardItem"][2]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石*2
	tJianghuAgainst_Reward[3312360]["RewardItem"][2]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的RadiantStarStone*2
	tJianghuAgainst_Reward[3312360]["RewardStrengthValue"] = {}
	tJianghuAgainst_Reward[3312360]["RewardStrengthValue"]["Value"] = 8000 -- 气力值, 【需求】赠气力8000
	tJianghuAgainst_Reward[3312360]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312360]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312360]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312361] = {}
	-- ===480000分高手礼包
	-- ===索引: tJianghuAgainst_Reward[3312361]
	-- ===删除: 3312361,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312361]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312361]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312361]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312361]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312361]["DeleteItem"][1]["Id"] = 3312361 -- 【库】480000PtsElitePack[属性:9]
	tJianghuAgainst_Reward[3312361]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312361]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312361]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*15
	tJianghuAgainst_Reward[3312361]["RewardItem"][1]["Attr"] = "0 15" -- GinsengFruit*15
	tJianghuAgainst_Reward[3312361]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312361]["RewardItem"][2]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石*2
	tJianghuAgainst_Reward[3312361]["RewardItem"][2]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的RadiantStarStone*2
	tJianghuAgainst_Reward[3312361]["RewardStrengthValue"] = {}
	tJianghuAgainst_Reward[3312361]["RewardStrengthValue"]["Value"] = 9000 -- 气力值, 【需求】赠气力9000
	tJianghuAgainst_Reward[3312361]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312361]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312361]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312362] = {}
	-- ===500000分大师礼包
	-- ===索引: tJianghuAgainst_Reward[3312362]
	-- ===删除: 3312362,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312362]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312362]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312362]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312362]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312362]["DeleteItem"][1]["Id"] = 3312362 -- 【库】500000PtsMasterPack[属性:9]
	tJianghuAgainst_Reward[3312362]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312362]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312362]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*15
	tJianghuAgainst_Reward[3312362]["RewardItem"][1]["Attr"] = "0 15" -- GinsengFruit*15
	tJianghuAgainst_Reward[3312362]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312362]["RewardItem"][2]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石*2
	tJianghuAgainst_Reward[3312362]["RewardItem"][2]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的RadiantStarStone*2
	tJianghuAgainst_Reward[3312362]["RewardTitle"] = {}
	tJianghuAgainst_Reward[3312362]["RewardTitle"]["TitleType"] = 2130 -- 【库】Master, 【表格】称号-征服大师
	tJianghuAgainst_Reward[3312362]["RewardTitle"]["TitleId"] = 2130
	tJianghuAgainst_Reward[3312362]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:Master, 【需求】称号-征服大师
	tJianghuAgainst_Reward[3312362]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312362]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312362]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312363] = {}
	-- ===520000分大师礼包
	-- ===索引: tJianghuAgainst_Reward[3312363]
	-- ===删除: 3312363,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312363]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312363]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312363]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312363]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312363]["DeleteItem"][1]["Id"] = 3312363 -- 【库】520000PtsMasterPack[属性:9]
	tJianghuAgainst_Reward[3312363]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312363]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312363]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*20
	tJianghuAgainst_Reward[3312363]["RewardItem"][1]["Attr"] = "0 20" -- GinsengFruit*20
	tJianghuAgainst_Reward[3312363]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312363]["RewardItem"][2]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石*3
	tJianghuAgainst_Reward[3312363]["RewardItem"][2]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的RadiantStarStone*3
	tJianghuAgainst_Reward[3312363]["RewardRepairValue"] = {}
	tJianghuAgainst_Reward[3312363]["RewardRepairValue"]["Value"] = 3000 -- 修为值, 【需求】赠修为值3000
	tJianghuAgainst_Reward[3312363]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312363]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312363]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312364] = {}
	-- ===540000分大师礼包
	-- ===索引: tJianghuAgainst_Reward[3312364]
	-- ===删除: 3312364,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312364]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312364]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312364]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312364]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312364]["DeleteItem"][1]["Id"] = 3312364 -- 【库】540000PtsMasterPack[属性:9]
	tJianghuAgainst_Reward[3312364]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312364]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312364]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*20
	tJianghuAgainst_Reward[3312364]["RewardItem"][1]["Attr"] = "0 20" -- GinsengFruit*20
	tJianghuAgainst_Reward[3312364]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312364]["RewardItem"][2]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石*3
	tJianghuAgainst_Reward[3312364]["RewardItem"][2]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的RadiantStarStone*3
	tJianghuAgainst_Reward[3312364]["RewardRepairValue"] = {}
	tJianghuAgainst_Reward[3312364]["RewardRepairValue"]["Value"] = 3000 -- 修为值, 【需求】赠修为值3000
	tJianghuAgainst_Reward[3312364]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312364]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312364]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312365] = {}
	-- ===560000分大师礼包
	-- ===索引: tJianghuAgainst_Reward[3312365]
	-- ===删除: 3312365,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312365]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312365]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312365]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312365]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312365]["DeleteItem"][1]["Id"] = 3312365 -- 【库】560000PtsMasterPack[属性:9]
	tJianghuAgainst_Reward[3312365]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312365]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312365]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*20
	tJianghuAgainst_Reward[3312365]["RewardItem"][1]["Attr"] = "0 20" -- GinsengFruit*20
	tJianghuAgainst_Reward[3312365]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312365]["RewardItem"][2]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石*5
	tJianghuAgainst_Reward[3312365]["RewardItem"][2]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的RadiantStarStone*5
	tJianghuAgainst_Reward[3312365]["RewardRepairValue"] = {}
	tJianghuAgainst_Reward[3312365]["RewardRepairValue"]["Value"] = 5000 -- 修为值, 【需求】赠修为值5000
	tJianghuAgainst_Reward[3312365]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312365]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312365]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312366] = {}
	-- ===580000分大师礼包
	-- ===索引: tJianghuAgainst_Reward[3312366]
	-- ===删除: 3312366,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312366]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312366]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312366]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312366]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312366]["DeleteItem"][1]["Id"] = 3312366 -- 【库】580000PtsMasterPack[属性:9]
	tJianghuAgainst_Reward[3312366]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312366]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312366]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*20
	tJianghuAgainst_Reward[3312366]["RewardItem"][1]["Attr"] = "0 20" -- GinsengFruit*20
	tJianghuAgainst_Reward[3312366]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312366]["RewardItem"][2]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石*5
	tJianghuAgainst_Reward[3312366]["RewardItem"][2]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的RadiantStarStone*5
	tJianghuAgainst_Reward[3312366]["RewardRepairValue"] = {}
	tJianghuAgainst_Reward[3312366]["RewardRepairValue"]["Value"] = 5000 -- 修为值, 【需求】赠修为值5000
	tJianghuAgainst_Reward[3312366]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312366]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312366]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312367] = {}
	-- ===600000分宗师礼包
	-- ===索引: tJianghuAgainst_Reward[3312367]
	-- ===删除: 3312367,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312367]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312367]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312367]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312367]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312367]["DeleteItem"][1]["Id"] = 3312367 -- 【库】600000PtsGrandmasterPack[属性:9]
	tJianghuAgainst_Reward[3312367]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312367]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312367]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*20
	tJianghuAgainst_Reward[3312367]["RewardItem"][1]["Attr"] = "0 20" -- GinsengFruit*20
	tJianghuAgainst_Reward[3312367]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312367]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】赠神纹源晶*5
	tJianghuAgainst_Reward[3312367]["RewardItem"][2]["Attr"] = "0 5 3" -- RuneCrystal（赠）*5
	tJianghuAgainst_Reward[3312367]["RewardTitle"] = {}
	tJianghuAgainst_Reward[3312367]["RewardTitle"]["TitleType"] = 2131 -- 【库】Grandmaster, 【表格】称号-征服宗师
	tJianghuAgainst_Reward[3312367]["RewardTitle"]["TitleId"] = 2131
	tJianghuAgainst_Reward[3312367]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:Grandmaster, 【需求】称号-征服宗师
	tJianghuAgainst_Reward[3312367]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312367]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312367]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312368] = {}
	-- ===610000分宗师礼包
	-- ===索引: tJianghuAgainst_Reward[3312368]
	-- ===删除: 3312368,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312368]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312368]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312368]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312368]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312368]["DeleteItem"][1]["Id"] = 3312368 -- 【库】610000PtsGrandmasterPack[属性:9]
	tJianghuAgainst_Reward[3312368]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312368]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312368]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*30
	tJianghuAgainst_Reward[3312368]["RewardItem"][1]["Attr"] = "0 30" -- GinsengFruit*30
	tJianghuAgainst_Reward[3312368]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312368]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】赠神纹源晶*10
	tJianghuAgainst_Reward[3312368]["RewardItem"][2]["Attr"] = "0 10 3" -- RuneCrystal（赠）*10
	tJianghuAgainst_Reward[3312368]["RewardRepairValue"] = {}
	tJianghuAgainst_Reward[3312368]["RewardRepairValue"]["Value"] = 7000 -- 修为值, 【需求】赠修为值7000
	tJianghuAgainst_Reward[3312368]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312368]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312368]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312369] = {}
	-- ===620000分宗师礼包
	-- ===索引: tJianghuAgainst_Reward[3312369]
	-- ===删除: 3312369,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312369]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312369]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312369]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312369]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312369]["DeleteItem"][1]["Id"] = 3312369 -- 【库】620000PtsGrandmasterPack[属性:9]
	tJianghuAgainst_Reward[3312369]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312369]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312369]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*30
	tJianghuAgainst_Reward[3312369]["RewardItem"][1]["Attr"] = "0 30" -- GinsengFruit*30
	tJianghuAgainst_Reward[3312369]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312369]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】赠神纹源晶*10
	tJianghuAgainst_Reward[3312369]["RewardItem"][2]["Attr"] = "0 10 3" -- RuneCrystal（赠）*10
	tJianghuAgainst_Reward[3312369]["RewardRepairValue"] = {}
	tJianghuAgainst_Reward[3312369]["RewardRepairValue"]["Value"] = 8000 -- 修为值, 【需求】赠修为值8000
	tJianghuAgainst_Reward[3312369]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312369]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312369]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312370] = {}
	-- ===630000分宗师礼包
	-- ===索引: tJianghuAgainst_Reward[3312370]
	-- ===删除: 3312370,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312370]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312370]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312370]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312370]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312370]["DeleteItem"][1]["Id"] = 3312370 -- 【库】630000PtsGrandmasterPack[属性:9]
	tJianghuAgainst_Reward[3312370]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312370]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312370]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*30
	tJianghuAgainst_Reward[3312370]["RewardItem"][1]["Attr"] = "0 30" -- GinsengFruit*30
	tJianghuAgainst_Reward[3312370]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312370]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】赠神纹源晶*15
	tJianghuAgainst_Reward[3312370]["RewardItem"][2]["Attr"] = "0 15 3" -- RuneCrystal（赠）*15
	tJianghuAgainst_Reward[3312370]["RewardRepairValue"] = {}
	tJianghuAgainst_Reward[3312370]["RewardRepairValue"]["Value"] = 9000 -- 修为值, 【需求】赠修为值9000
	tJianghuAgainst_Reward[3312370]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312370]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312370]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312371] = {}
	-- ===640000分宗师礼包
	-- ===索引: tJianghuAgainst_Reward[3312371]
	-- ===删除: 3312371,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312371]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312371]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312371]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312371]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312371]["DeleteItem"][1]["Id"] = 3312371 -- 【库】640000PtsGrandmasterPack[属性:9]
	tJianghuAgainst_Reward[3312371]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312371]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312371]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*30
	tJianghuAgainst_Reward[3312371]["RewardItem"][1]["Attr"] = "0 30" -- GinsengFruit*30
	tJianghuAgainst_Reward[3312371]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312371]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】赠神纹源晶*20
	tJianghuAgainst_Reward[3312371]["RewardItem"][2]["Attr"] = "0 20 3" -- RuneCrystal（赠）*20
	tJianghuAgainst_Reward[3312371]["RewardRepairValue"] = {}
	tJianghuAgainst_Reward[3312371]["RewardRepairValue"]["Value"] = 10000 -- 修为值, 【需求】赠修为值1W
	tJianghuAgainst_Reward[3312371]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312371]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312371]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312372] = {}
	-- ===650000分宗师礼包
	-- ===索引: tJianghuAgainst_Reward[3312372]
	-- ===删除: 3312372,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312372]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312372]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312372]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312372]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312372]["DeleteItem"][1]["Id"] = 3312372 -- 【库】650000PtsGrandmasterPack[属性:9]
	tJianghuAgainst_Reward[3312372]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312372]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312372]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*30
	tJianghuAgainst_Reward[3312372]["RewardItem"][1]["Attr"] = "0 30" -- GinsengFruit*30
	tJianghuAgainst_Reward[3312372]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312372]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】赠神纹源晶*25
	tJianghuAgainst_Reward[3312372]["RewardItem"][2]["Attr"] = "0 25 3" -- RuneCrystal（赠）*25
	tJianghuAgainst_Reward[3312372]["RewardRepairValue"] = {}
	tJianghuAgainst_Reward[3312372]["RewardRepairValue"]["Value"] = 20000 -- 修为值, 【需求】赠修为值2W
	tJianghuAgainst_Reward[3312372]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312372]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312372]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312373] = {}
	-- ===660000分宗师礼包
	-- ===索引: tJianghuAgainst_Reward[3312373]
	-- ===删除: 3312373,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312373]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312373]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312373]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312373]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312373]["DeleteItem"][1]["Id"] = 3312373 -- 【库】660000PtsGrandmasterPack[属性:9]
	tJianghuAgainst_Reward[3312373]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312373]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312373]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*40
	tJianghuAgainst_Reward[3312373]["RewardItem"][1]["Attr"] = "0 40" -- GinsengFruit*40
	tJianghuAgainst_Reward[3312373]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312373]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】赠神纹源晶*30
	tJianghuAgainst_Reward[3312373]["RewardItem"][2]["Attr"] = "0 30 3" -- RuneCrystal（赠）*30
	tJianghuAgainst_Reward[3312373]["RewardRepairValue"] = {}
	tJianghuAgainst_Reward[3312373]["RewardRepairValue"]["Value"] = 30000 -- 修为值, 【需求】赠修为值3W
	tJianghuAgainst_Reward[3312373]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312373]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312373]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312374] = {}
	-- ===670000分宗师礼包
	-- ===索引: tJianghuAgainst_Reward[3312374]
	-- ===删除: 3312374,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312374]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312374]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312374]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312374]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312374]["DeleteItem"][1]["Id"] = 3312374 -- 【库】670000PtsGrandmasterPack[属性:9]
	tJianghuAgainst_Reward[3312374]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312374]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312374]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*40
	tJianghuAgainst_Reward[3312374]["RewardItem"][1]["Attr"] = "0 40" -- GinsengFruit*40
	tJianghuAgainst_Reward[3312374]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312374]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】赠神纹源晶*35
	tJianghuAgainst_Reward[3312374]["RewardItem"][2]["Attr"] = "0 35 3" -- RuneCrystal（赠）*35
	tJianghuAgainst_Reward[3312374]["RewardRepairValue"] = {}
	tJianghuAgainst_Reward[3312374]["RewardRepairValue"]["Value"] = 40000 -- 修为值, 【需求】赠修为值4W
	tJianghuAgainst_Reward[3312374]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312374]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312374]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312375] = {}
	-- ===680000分宗师礼包
	-- ===索引: tJianghuAgainst_Reward[3312375]
	-- ===删除: 3312375,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312375]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312375]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312375]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312375]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312375]["DeleteItem"][1]["Id"] = 3312375 -- 【库】680000PtsGrandmasterPack[属性:9]
	tJianghuAgainst_Reward[3312375]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312375]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312375]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*40
	tJianghuAgainst_Reward[3312375]["RewardItem"][1]["Attr"] = "0 40" -- GinsengFruit*40
	tJianghuAgainst_Reward[3312375]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312375]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】赠神纹源晶*40
	tJianghuAgainst_Reward[3312375]["RewardItem"][2]["Attr"] = "0 40 3" -- RuneCrystal（赠）*40
	tJianghuAgainst_Reward[3312375]["RewardItem"][3] = {}
	tJianghuAgainst_Reward[3312375]["RewardItem"][3]["Id"] = 3312417 -- 【库】TitleFragment[属性:9], 【表格】赠称号碎片*2
	tJianghuAgainst_Reward[3312375]["RewardItem"][3]["Attr"] = "0 2" -- TitleFragment*2
	tJianghuAgainst_Reward[3312375]["RewardItem"][4] = {}
	tJianghuAgainst_Reward[3312375]["RewardItem"][4]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】赠黄色神纹精粹*50
	tJianghuAgainst_Reward[3312375]["RewardItem"][4]["Attr"] = "0 50 3" -- YellowRuneEssence（赠）*50
	tJianghuAgainst_Reward[3312375]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312375]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312375]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312376] = {}
	-- ===690000分宗师礼包
	-- ===索引: tJianghuAgainst_Reward[3312376]
	-- ===删除: 3312376,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312376]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312376]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312376]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312376]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312376]["DeleteItem"][1]["Id"] = 3312376 -- 【库】690000PtsGrandmasterPack[属性:9]
	tJianghuAgainst_Reward[3312376]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312376]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312376]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*40
	tJianghuAgainst_Reward[3312376]["RewardItem"][1]["Attr"] = "0 40" -- GinsengFruit*40
	tJianghuAgainst_Reward[3312376]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312376]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】赠神纹源晶*50
	tJianghuAgainst_Reward[3312376]["RewardItem"][2]["Attr"] = "0 50 3" -- RuneCrystal（赠）*50
	tJianghuAgainst_Reward[3312376]["RewardItem"][3] = {}
	tJianghuAgainst_Reward[3312376]["RewardItem"][3]["Id"] = 3312417 -- 【库】TitleFragment[属性:9], 【表格】赠称号碎片*2
	tJianghuAgainst_Reward[3312376]["RewardItem"][3]["Attr"] = "0 2" -- TitleFragment*2
	tJianghuAgainst_Reward[3312376]["RewardItem"][4] = {}
	tJianghuAgainst_Reward[3312376]["RewardItem"][4]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】赠黄色神纹精粹*100
	tJianghuAgainst_Reward[3312376]["RewardItem"][4]["Attr"] = "0 100 3" -- YellowRuneEssence（赠）*100
	tJianghuAgainst_Reward[3312376]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312376]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312376]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312377] = {}
	-- ===700000分传说礼包
	-- ===索引: tJianghuAgainst_Reward[3312377]
	-- ===删除: 3312377,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312377]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312377]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312377]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312377]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312377]["DeleteItem"][1]["Id"] = 3312377 -- 【库】700000PtsLegendaryPack[属性:9]
	tJianghuAgainst_Reward[3312377]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312377]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312377]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*50
	tJianghuAgainst_Reward[3312377]["RewardItem"][1]["Attr"] = "0 50" -- GinsengFruit*50
	tJianghuAgainst_Reward[3312377]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312377]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】赠神纹源晶*60
	tJianghuAgainst_Reward[3312377]["RewardItem"][2]["Attr"] = "0 60 3" -- RuneCrystal（赠）*60
	tJianghuAgainst_Reward[3312377]["RewardItem"][3] = {}
	tJianghuAgainst_Reward[3312377]["RewardItem"][3]["Id"] = 3312417 -- 【库】TitleFragment[属性:9], 【表格】赠称号碎片*2
	tJianghuAgainst_Reward[3312377]["RewardItem"][3]["Attr"] = "0 2" -- TitleFragment*2
	tJianghuAgainst_Reward[3312377]["RewardTitle"] = {}
	tJianghuAgainst_Reward[3312377]["RewardTitle"]["TitleType"] = 2132 -- 【库】Legendary, 【表格】称号-征服传说
	tJianghuAgainst_Reward[3312377]["RewardTitle"]["TitleId"] = 2132
	tJianghuAgainst_Reward[3312377]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:Legendary, 【需求】称号-征服传说
	tJianghuAgainst_Reward[3312377]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312377]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312377]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312378] = {}
	-- ===710000分传说礼包
	-- ===索引: tJianghuAgainst_Reward[3312378]
	-- ===删除: 3312378,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312378]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312378]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312378]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312378]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312378]["DeleteItem"][1]["Id"] = 3312378 -- 【库】710000PtsLegendaryPack[属性:9]
	tJianghuAgainst_Reward[3312378]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312378]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312378]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*50
	tJianghuAgainst_Reward[3312378]["RewardItem"][1]["Attr"] = "0 50" -- GinsengFruit*50
	tJianghuAgainst_Reward[3312378]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312378]["RewardItem"][2]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9], 【表格】赠良品神纹源晶*10
	tJianghuAgainst_Reward[3312378]["RewardItem"][2]["Attr"] = "0 10 3" -- MysticRuneStone（赠）*10
	tJianghuAgainst_Reward[3312378]["RewardItem"][3] = {}
	tJianghuAgainst_Reward[3312378]["RewardItem"][3]["Id"] = 3312417 -- 【库】TitleFragment[属性:9], 【表格】赠称号碎片*2
	tJianghuAgainst_Reward[3312378]["RewardItem"][3]["Attr"] = "0 2" -- TitleFragment*2
	tJianghuAgainst_Reward[3312378]["RewardItem"][4] = {}
	tJianghuAgainst_Reward[3312378]["RewardItem"][4]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】赠黄色神纹精粹*150
	tJianghuAgainst_Reward[3312378]["RewardItem"][4]["Attr"] = "0 150 3" -- YellowRuneEssence（赠）*150
	tJianghuAgainst_Reward[3312378]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312378]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312378]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312379] = {}
	-- ===720000分传说礼包
	-- ===索引: tJianghuAgainst_Reward[3312379]
	-- ===删除: 3312379,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312379]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312379]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312379]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312379]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312379]["DeleteItem"][1]["Id"] = 3312379 -- 【库】720000PtsLegendaryPack[属性:9]
	tJianghuAgainst_Reward[3312379]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312379]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312379]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*50
	tJianghuAgainst_Reward[3312379]["RewardItem"][1]["Attr"] = "0 50" -- GinsengFruit*50
	tJianghuAgainst_Reward[3312379]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312379]["RewardItem"][2]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9], 【表格】赠良品神纹源晶*20
	tJianghuAgainst_Reward[3312379]["RewardItem"][2]["Attr"] = "0 20 3" -- MysticRuneStone*20
	tJianghuAgainst_Reward[3312379]["RewardItem"][3] = {}
	tJianghuAgainst_Reward[3312379]["RewardItem"][3]["Id"] = 3312417 -- 【库】TitleFragment[属性:9], 【表格】赠称号碎片*2
	tJianghuAgainst_Reward[3312379]["RewardItem"][3]["Attr"] = "0 2" -- TitleFragment*2
	tJianghuAgainst_Reward[3312379]["RewardItem"][4] = {}
	tJianghuAgainst_Reward[3312379]["RewardItem"][4]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】赠黄色神纹精粹*200
	tJianghuAgainst_Reward[3312379]["RewardItem"][4]["Attr"] = "0 200 3" -- YellowRuneEssence*200
	tJianghuAgainst_Reward[3312379]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312379]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312379]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312380] = {}
	-- ===730000分传说礼包
	-- ===索引: tJianghuAgainst_Reward[3312380]
	-- ===删除: 3312380,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312380]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312380]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312380]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312380]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312380]["DeleteItem"][1]["Id"] = 3312380 -- 【库】730000PtsLegendaryPack[属性:9]
	tJianghuAgainst_Reward[3312380]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312380]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312380]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*80
	tJianghuAgainst_Reward[3312380]["RewardItem"][1]["Attr"] = "0 80" -- GinsengFruit*80
	tJianghuAgainst_Reward[3312380]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312380]["RewardItem"][2]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9], 【表格】赠良品神纹源晶*30
	tJianghuAgainst_Reward[3312380]["RewardItem"][2]["Attr"] = "0 30 3" -- MysticRuneStone（赠）*30
	tJianghuAgainst_Reward[3312380]["RewardItem"][3] = {}
	tJianghuAgainst_Reward[3312380]["RewardItem"][3]["Id"] = 3312417 -- 【库】TitleFragment[属性:9], 【表格】赠称号碎片*2
	tJianghuAgainst_Reward[3312380]["RewardItem"][3]["Attr"] = "0 2" -- TitleFragment*2
	tJianghuAgainst_Reward[3312380]["RewardItem"][4] = {}
	tJianghuAgainst_Reward[3312380]["RewardItem"][4]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】赠黄色神纹精粹*300
	tJianghuAgainst_Reward[3312380]["RewardItem"][4]["Attr"] = "0 300 3" -- YellowRuneEssence（赠）*300
	tJianghuAgainst_Reward[3312380]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312380]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312380]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312381] = {}
	-- ===740000分传说礼包
	-- ===索引: tJianghuAgainst_Reward[3312381]
	-- ===删除: 3312381,1
	-- ===LogStep: 1[1]
	tJianghuAgainst_Reward[3312381]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312381]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312381]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312381]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312381]["DeleteItem"][1]["Id"] = 3312381 -- 【库】740000PtsLegendaryPack[属性:9]
	tJianghuAgainst_Reward[3312381]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312381]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312381]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*100
	tJianghuAgainst_Reward[3312381]["RewardItem"][1]["Attr"] = "0 100" -- GinsengFruit*100
	tJianghuAgainst_Reward[3312381]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312381]["RewardItem"][2]["Id"] = 3311821 -- 【库】DivineRuneStone[属性:9], 【表格】赠优质神纹源晶*50
	tJianghuAgainst_Reward[3312381]["RewardItem"][2]["Attr"] = "0 50 3" -- DivineRuneStone（赠）*50
	tJianghuAgainst_Reward[3312381]["RewardItem"][3] = {}
	tJianghuAgainst_Reward[3312381]["RewardItem"][3]["Id"] = 3312417 -- 【库】TitleFragment[属性:9], 【表格】赠称号碎片*3
	tJianghuAgainst_Reward[3312381]["RewardItem"][3]["Attr"] = "0 3" -- TitleFragment*3
	tJianghuAgainst_Reward[3312381]["RewardItem"][4] = {}
	tJianghuAgainst_Reward[3312381]["RewardItem"][4]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】赠黄色神纹精粹*500
	tJianghuAgainst_Reward[3312381]["RewardItem"][4]["Attr"] = "0 500 3" -- YellowRuneEssence（赠）*500
	tJianghuAgainst_Reward[3312381]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312381]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312381]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312382] = {}
	-- ===称号礼包
	-- ===索引: tJianghuAgainst_Reward[3312382][1]
	-- ===删除: 3312382,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312382][1] = {}
	tJianghuAgainst_Reward[3312382][1]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312382][1]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312382][1]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312382][1]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312382][1]["DeleteItem"][1]["Id"] = 3312382 -- 【库】TitlePack[属性:9]
	tJianghuAgainst_Reward[3312382][1]["RewardTitle"] = {}
	tJianghuAgainst_Reward[3312382][1]["RewardTitle"]["TitleType"] = 2018 -- 【库】Grandmaster, 【表格】Grandmaster
	tJianghuAgainst_Reward[3312382][1]["RewardTitle"]["TitleId"] = 1
	tJianghuAgainst_Reward[3312382][1]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:Grandmaster, 【需求】Grandmaster
	tJianghuAgainst_Reward[3312382][1]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312382][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312382][1]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312382][2] = {}
	-- ===称号礼包
	-- ===索引: tJianghuAgainst_Reward[3312382][2]
	-- ===删除: 3312382,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312382][2]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312382][2]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312382][2]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312382][2]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312382][2]["DeleteItem"][1]["Id"] = 3312382 -- 【库】TitlePack[属性:9]
	tJianghuAgainst_Reward[3312382][2]["RewardTitle"] = {}
	tJianghuAgainst_Reward[3312382][2]["RewardTitle"]["TitleType"] = 2004 -- 【库】Talent, 【表格】Talent
	tJianghuAgainst_Reward[3312382][2]["RewardTitle"]["TitleId"] = 5
	tJianghuAgainst_Reward[3312382][2]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:Talent, 【需求】Talent
	tJianghuAgainst_Reward[3312382][2]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312382][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312382][2]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312382][3] = {}
	-- ===称号礼包
	-- ===索引: tJianghuAgainst_Reward[3312382][3]
	-- ===删除: 3312382,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312382][3]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312382][3]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312382][3]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312382][3]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312382][3]["DeleteItem"][1]["Id"] = 3312382 -- 【库】TitlePack[属性:9]
	tJianghuAgainst_Reward[3312382][3]["RewardTitle"] = {}
	tJianghuAgainst_Reward[3312382][3]["RewardTitle"]["TitleType"] = 9 -- 【库】Chosen~One, 【表格】Chosen One
	tJianghuAgainst_Reward[3312382][3]["RewardTitle"]["TitleId"] = 1
	tJianghuAgainst_Reward[3312382][3]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:Chosen~One, 【需求】Chosen One
	tJianghuAgainst_Reward[3312382][3]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312382][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312382][3]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312385] = {}
	-- ===单服第一钻石宝箱
	-- ===索引: tJianghuAgainst_Reward[3312385]
	-- ===删除: 3312385,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312385]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312385]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312385]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312385]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312385]["DeleteItem"][1]["Id"] = 3312385 -- 【库】ServerNo.1DiamondBox[属性:9]
	tJianghuAgainst_Reward[3312385]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312385]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312385]["RewardItem"][1]["Id"] = 3312386 -- 【库】ServerNo.1TreasureBox[属性:9], 【表格】单日单服第1赠三选一礼包
	tJianghuAgainst_Reward[3312385]["RewardItem"][1]["Attr"] = "0 1" -- ServerNo.1TreasureBox*1
	tJianghuAgainst_Reward[3312385]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312385]["RewardItem"][2]["Id"] = 3312414 -- 【库】1KKTournamentTicket[属性:9], 【表格】100万金币入场费的锦标赛门票*1
	tJianghuAgainst_Reward[3312385]["RewardItem"][2]["Attr"] = "0 1" -- 1KKTournamentTicket*1
	tJianghuAgainst_Reward[3312385]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312385]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312385]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312386] = {}
	-- ===单服第一珍宝可选包
	-- ===索引: tJianghuAgainst_Reward[3312386][1]
	-- ===删除: 3312386,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312386][1] = {}
	tJianghuAgainst_Reward[3312386][1]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312386][1]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312386][1]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312386][1]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312386][1]["DeleteItem"][1]["Id"] = 3312386 -- 【库】ServerNo.1TreasureBox[属性:9]
	tJianghuAgainst_Reward[3312386][1]["RewardStrengthValue"] = {}
	tJianghuAgainst_Reward[3312386][1]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】1W气力值
	tJianghuAgainst_Reward[3312386][1]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312386][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312386][1]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312386][2] = {}
	-- ===单服第一珍宝可选包
	-- ===索引: tJianghuAgainst_Reward[3312386][2]
	-- ===删除: 3312386,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312386][2]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312386][2]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312386][2]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312386][2]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312386][2]["DeleteItem"][1]["Id"] = 3312386 -- 【库】ServerNo.1TreasureBox[属性:9]
	tJianghuAgainst_Reward[3312386][2]["RewardRepairValue"] = {}
	tJianghuAgainst_Reward[3312386][2]["RewardRepairValue"]["Value"] = 10000 -- 修为值, 【需求】1W修为值
	tJianghuAgainst_Reward[3312386][2]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312386][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312386][2]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312386][3] = {}
	-- ===单服第一珍宝可选包
	-- ===索引: tJianghuAgainst_Reward[3312386][3]
	-- ===删除: 3312386,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312386][3]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312386][3]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312386][3]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312386][3]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312386][3]["DeleteItem"][1]["Id"] = 3312386 -- 【库】ServerNo.1TreasureBox[属性:9]
	tJianghuAgainst_Reward[3312386][3]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312386][3]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312386][3]["RewardItem"][1]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】200个黄色神纹精粹
	tJianghuAgainst_Reward[3312386][3]["RewardItem"][1]["Attr"] = "0 200" -- YellowRuneEssence*200
	tJianghuAgainst_Reward[3312386][3]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312386][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312386][3]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312387] = {}
	-- ===单服第二钻石宝箱
	-- ===索引: tJianghuAgainst_Reward[3312387]
	-- ===删除: 3312387,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312387]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312387]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312387]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312387]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312387]["DeleteItem"][1]["Id"] = 3312387 -- 【库】ServerNo.2DiamondBox[属性:9]
	tJianghuAgainst_Reward[3312387]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312387]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312387]["RewardItem"][1]["Id"] = 3312388 -- 【库】ServerNo.2TreasureBox[属性:9], 【表格】单日单服第2赠三选一礼包
	tJianghuAgainst_Reward[3312387]["RewardItem"][1]["Attr"] = "0 1" -- ServerNo.2TreasureBox*1
	tJianghuAgainst_Reward[3312387]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312387]["RewardItem"][2]["Id"] = 3312415 -- 【库】500KTournamentTicket[属性:9], 【表格】50万金币入场费的锦标赛门票*1
	tJianghuAgainst_Reward[3312387]["RewardItem"][2]["Attr"] = "0 1" -- 500KTournamentTicket*1
	tJianghuAgainst_Reward[3312387]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312387]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312387]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312388] = {}
	-- ===单服第二珍宝可选包
	-- ===索引: tJianghuAgainst_Reward[3312388][1]
	-- ===删除: 3312388,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312388][1] = {}
	tJianghuAgainst_Reward[3312388][1]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312388][1]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312388][1]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312388][1]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312388][1]["DeleteItem"][1]["Id"] = 3312388 -- 【库】ServerNo.2TreasureBox[属性:9]
	tJianghuAgainst_Reward[3312388][1]["RewardStrengthValue"] = {}
	tJianghuAgainst_Reward[3312388][1]["RewardStrengthValue"]["Value"] = 8000 -- 气力值, 【需求】8000气力值
	tJianghuAgainst_Reward[3312388][1]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312388][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312388][1]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312388][2] = {}
	-- ===单服第二珍宝可选包
	-- ===索引: tJianghuAgainst_Reward[3312388][2]
	-- ===删除: 3312388,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312388][2]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312388][2]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312388][2]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312388][2]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312388][2]["DeleteItem"][1]["Id"] = 3312388 -- 【库】ServerNo.2TreasureBox[属性:9]
	tJianghuAgainst_Reward[3312388][2]["RewardRepairValue"] = {}
	tJianghuAgainst_Reward[3312388][2]["RewardRepairValue"]["Value"] = 8000 -- 修为值, 【需求】8000修为值
	tJianghuAgainst_Reward[3312388][2]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312388][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312388][2]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312388][3] = {}
	-- ===单服第二珍宝可选包
	-- ===索引: tJianghuAgainst_Reward[3312388][3]
	-- ===删除: 3312388,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312388][3]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312388][3]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312388][3]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312388][3]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312388][3]["DeleteItem"][1]["Id"] = 3312388 -- 【库】ServerNo.2TreasureBox[属性:9]
	tJianghuAgainst_Reward[3312388][3]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312388][3]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312388][3]["RewardItem"][1]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】100个黄色神纹精粹
	tJianghuAgainst_Reward[3312388][3]["RewardItem"][1]["Attr"] = "0 100" -- YellowRuneEssence*100
	tJianghuAgainst_Reward[3312388][3]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312388][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312388][3]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312389] = {}
	-- ===单服第三白银宝箱
	-- ===索引: tJianghuAgainst_Reward[3312389]
	-- ===删除: 3312389,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312389]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312389]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312389]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312389]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312389]["DeleteItem"][1]["Id"] = 3312389 -- 【库】ServerNo.3SilverBox[属性:9]
	tJianghuAgainst_Reward[3312389]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312389]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312389]["RewardItem"][1]["Id"] = 3312390 -- 【库】ServerNo.3TreasureBox[属性:9], 【表格】单日单服第3赠三选一礼包
	tJianghuAgainst_Reward[3312389]["RewardItem"][1]["Attr"] = "0 1" -- ServerNo.3TreasureBox*1
	tJianghuAgainst_Reward[3312389]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312389]["RewardItem"][2]["Id"] = 3312416 -- 【库】100KTournamentTicket[属性:9], 【表格】10万金币入场费的锦标赛门票*3
	tJianghuAgainst_Reward[3312389]["RewardItem"][2]["Attr"] = "0 3" -- 100KTournamentTicket*3
	tJianghuAgainst_Reward[3312389]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312389]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312389]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312390] = {}
	-- ===单服第三珍宝可选包
	-- ===索引: tJianghuAgainst_Reward[3312390][1]
	-- ===删除: 3312390,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312390][1] = {}
	tJianghuAgainst_Reward[3312390][1]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312390][1]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312390][1]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312390][1]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312390][1]["DeleteItem"][1]["Id"] = 3312390 -- 【库】ServerNo.3TreasureBox[属性:9]
	tJianghuAgainst_Reward[3312390][1]["RewardStrengthValue"] = {}
	tJianghuAgainst_Reward[3312390][1]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】5000气力值
	tJianghuAgainst_Reward[3312390][1]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312390][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312390][1]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312390][2] = {}
	-- ===单服第三珍宝可选包
	-- ===索引: tJianghuAgainst_Reward[3312390][2]
	-- ===删除: 3312390,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312390][2]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312390][2]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312390][2]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312390][2]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312390][2]["DeleteItem"][1]["Id"] = 3312390 -- 【库】ServerNo.3TreasureBox[属性:9]
	tJianghuAgainst_Reward[3312390][2]["RewardRepairValue"] = {}
	tJianghuAgainst_Reward[3312390][2]["RewardRepairValue"]["Value"] = 5000 -- 修为值, 【需求】5000修为值
	tJianghuAgainst_Reward[3312390][2]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312390][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312390][2]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312390][3] = {}
	-- ===单服第三珍宝可选包
	-- ===索引: tJianghuAgainst_Reward[3312390][3]
	-- ===删除: 3312390,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312390][3]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312390][3]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312390][3]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312390][3]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312390][3]["DeleteItem"][1]["Id"] = 3312390 -- 【库】ServerNo.3TreasureBox[属性:9]
	tJianghuAgainst_Reward[3312390][3]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312390][3]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312390][3]["RewardItem"][1]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】50个黄色神纹精粹
	tJianghuAgainst_Reward[3312390][3]["RewardItem"][1]["Attr"] = "0 50" -- YellowRuneEssence*50
	tJianghuAgainst_Reward[3312390][3]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312390][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312390][3]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312391] = {}
	-- ===精装珍宝箱（单服4-10）
	-- ===索引: tJianghuAgainst_Reward[3312391]
	-- ===删除: 3312391,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312391]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312391]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312391]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312391]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312391]["DeleteItem"][1]["Id"] = 3312391 -- 【库】EliteTreasureBox(ServerTop4-10)[属性:9]
	tJianghuAgainst_Reward[3312391]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312391]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312391]["RewardItem"][1]["Id"] = 3312392 -- 【库】TreasureBox(ServerTop4-10)[属性:9], 【表格】单日单服4-10赠二选一礼包
	tJianghuAgainst_Reward[3312391]["RewardItem"][1]["Attr"] = "0 1" -- TreasureBox(ServerTop4-10)*1
	tJianghuAgainst_Reward[3312391]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312391]["RewardItem"][2]["Id"] = 3312416 -- 【库】100KTournamentTicket[属性:9], 【表格】10万金币入场费的锦标赛门票*2
	tJianghuAgainst_Reward[3312391]["RewardItem"][2]["Attr"] = "0 2" -- 100KTournamentTicket*2
	tJianghuAgainst_Reward[3312391]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312391]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312391]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312392] = {}
	-- ===珍宝可选包（单服4-10）
	-- ===索引: tJianghuAgainst_Reward[3312392][1]
	-- ===删除: 3312392,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312392][1] = {}
	tJianghuAgainst_Reward[3312392][1]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312392][1]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312392][1]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312392][1]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312392][1]["DeleteItem"][1]["Id"] = 3312392 -- 【库】TreasureBox(ServerTop4-10)[属性:9]
	tJianghuAgainst_Reward[3312392][1]["RewardStrengthValue"] = {}
	tJianghuAgainst_Reward[3312392][1]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】5000气力值
	tJianghuAgainst_Reward[3312392][1]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312392][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312392][1]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312392][2] = {}
	-- ===珍宝可选包（单服4-10）
	-- ===索引: tJianghuAgainst_Reward[3312392][2]
	-- ===删除: 3312392,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312392][2]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312392][2]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312392][2]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312392][2]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312392][2]["DeleteItem"][1]["Id"] = 3312392 -- 【库】TreasureBox(ServerTop4-10)[属性:9]
	tJianghuAgainst_Reward[3312392][2]["RewardRepairValue"] = {}
	tJianghuAgainst_Reward[3312392][2]["RewardRepairValue"]["Value"] = 3000 -- 修为值, 【需求】5000修为值
	tJianghuAgainst_Reward[3312392][2]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312392][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312392][2]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312393] = {}
	-- ===精装珍宝箱（单服11-20）
	-- ===索引: tJianghuAgainst_Reward[3312393]
	-- ===删除: 3312393,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312393]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312393]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312393]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312393]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312393]["DeleteItem"][1]["Id"] = 3312393 -- 【库】EliteTreasureBox(ServerTop11-20)[属性:9]
	tJianghuAgainst_Reward[3312393]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312393]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312393]["RewardItem"][1]["Id"] = 3312394 -- 【库】ServerTop20TreasureBox[属性:9], 【表格】单日单服11-20赠二选一礼包
	tJianghuAgainst_Reward[3312393]["RewardItem"][1]["Attr"] = "0 1" -- ServerTop20TreasureBox*1
	tJianghuAgainst_Reward[3312393]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312393]["RewardItem"][2]["Id"] = 3312416 -- 【库】100KTournamentTicket[属性:9], 【表格】10万金币入场费的锦标赛门票*1
	tJianghuAgainst_Reward[3312393]["RewardItem"][2]["Attr"] = "0 1" -- 100KTournamentTicket*1
	tJianghuAgainst_Reward[3312393]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312393]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312393]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312394] = {}
	-- ===单服前二十珍宝可选包
	-- ===索引: tJianghuAgainst_Reward[3312394][1]
	-- ===删除: 3312394,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312394][1] = {}
	tJianghuAgainst_Reward[3312394][1]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312394][1]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312394][1]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312394][1]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312394][1]["DeleteItem"][1]["Id"] = 3312394 -- 【库】ServerTop20TreasureBox[属性:9]
	tJianghuAgainst_Reward[3312394][1]["RewardStrengthValue"] = {}
	tJianghuAgainst_Reward[3312394][1]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000气力值
	tJianghuAgainst_Reward[3312394][1]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312394][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312394][1]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312394][2] = {}
	-- ===单服前二十珍宝可选包
	-- ===索引: tJianghuAgainst_Reward[3312394][2]
	-- ===删除: 3312394,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312394][2]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312394][2]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312394][2]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312394][2]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312394][2]["DeleteItem"][1]["Id"] = 3312394 -- 【库】ServerTop20TreasureBox[属性:9]
	tJianghuAgainst_Reward[3312394][2]["RewardRepairValue"] = {}
	tJianghuAgainst_Reward[3312394][2]["RewardRepairValue"]["Value"] = 2000 -- 修为值, 【需求】2000修为值
	tJianghuAgainst_Reward[3312394][2]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312394][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312394][2]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312395] = {}
	-- ===全区第一至尊钻石宝箱
	-- ===索引: tJianghuAgainst_Reward[3312395]
	-- ===删除: 3312395,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312395]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312395]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312395]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312395]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312395]["DeleteItem"][1]["Id"] = 3312395 -- 【库】ServerNo.1DiamondBox[属性:9]
	tJianghuAgainst_Reward[3312395]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312395]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312395]["RewardItem"][1]["Id"] = 195425 -- 【库】ImperialDragonArmor[属性:0], 【表格】非赠苍龙夜帝外套神佑-1,永久时效
	tJianghuAgainst_Reward[3312395]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑ImperialDragonArmor*1
	tJianghuAgainst_Reward[3312395]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312395]["RewardItem"][2]["Id"] = 200606 -- 【库】SoulChariot[属性:0], 【表格】非赠灵魂战车外套神佑-1,永久时效
	tJianghuAgainst_Reward[3312395]["RewardItem"][2]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑SoulChariot*1
	tJianghuAgainst_Reward[3312395]["RewardEMoneyMono"] = {}
	tJianghuAgainst_Reward[3312395]["RewardEMoneyMono"]["Value"] = 300000 -- 天石（赠）, 【需求】30W赠点
	tJianghuAgainst_Reward[3312395]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	418"
	tJianghuAgainst_Reward[3312395]["RewardItem"][3] = {}
	tJianghuAgainst_Reward[3312395]["RewardItem"][3]["Id"] = 3000997 -- 【库】BlessedAccessoryPack[属性:11], 【表格】非赠稀有武器外套可选包*10
	tJianghuAgainst_Reward[3312395]["RewardItem"][3]["Attr"] = "0 10" -- BlessedAccessoryPack*10
	tJianghuAgainst_Reward[3312395]["RewardItem"][4] = {}
	tJianghuAgainst_Reward[3312395]["RewardItem"][4]["Id"] = 3312616 -- 【库】SmallLotteryTicketPack[属性:9], 【表格】非赠小抽奖券礼包*3
	tJianghuAgainst_Reward[3312395]["RewardItem"][4]["Attr"] = "0 3" -- SmallLotteryTicketPack*3
	tJianghuAgainst_Reward[3312395]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312395]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312395]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312396] = {}
	-- ===全区第二尊享黄金宝箱
	-- ===索引: tJianghuAgainst_Reward[3312396]
	-- ===删除: 3312396,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312396]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312396]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312396]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312396]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312396]["DeleteItem"][1]["Id"] = 3312396 -- 【库】ServerNo.2GoldBox[属性:9]
	tJianghuAgainst_Reward[3312396]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312396]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312396]["RewardItem"][1]["Id"] = 195425 -- 【库】ImperialDragonArmor[属性:0], 【表格】非赠苍龙夜帝外套神佑-1,360天时效
	tJianghuAgainst_Reward[3312396]["RewardItem"][1]["Attr"] = "0 1 0 518400 1 0 0 1" -- 360天时效(激活)的1%神佑ImperialDragonArmor*1
	tJianghuAgainst_Reward[3312396]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312396]["RewardItem"][2]["Id"] = 200606 -- 【库】SoulChariot[属性:0], 【表格】非赠灵魂战车外套神佑-1,360天时效
	tJianghuAgainst_Reward[3312396]["RewardItem"][2]["Attr"] = "0 1 0 518400 1 0 0 1" -- 360天时效(激活)的1%神佑SoulChariot*1
	tJianghuAgainst_Reward[3312396]["RewardEMoneyMono"] = {}
	tJianghuAgainst_Reward[3312396]["RewardEMoneyMono"]["Value"] = 200000 -- 天石（赠）, 【需求】20W赠点
	tJianghuAgainst_Reward[3312396]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	418"
	tJianghuAgainst_Reward[3312396]["RewardItem"][3] = {}
	tJianghuAgainst_Reward[3312396]["RewardItem"][3]["Id"] = 3000997 -- 【库】BlessedAccessoryPack[属性:11], 【表格】非赠稀有武器外套可选包*5
	tJianghuAgainst_Reward[3312396]["RewardItem"][3]["Attr"] = "0 5" -- BlessedAccessoryPack*5
	tJianghuAgainst_Reward[3312396]["RewardItem"][4] = {}
	tJianghuAgainst_Reward[3312396]["RewardItem"][4]["Id"] = 3312616 -- 【库】SmallLotteryTicketPack[属性:9], 【表格】非赠小抽奖券礼包*2
	tJianghuAgainst_Reward[3312396]["RewardItem"][4]["Attr"] = "0 2" -- SmallLotteryTicketPack*2
	tJianghuAgainst_Reward[3312396]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312396]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312396]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312397] = {}
	-- ===全区第三奢华白银宝箱
	-- ===索引: tJianghuAgainst_Reward[3312397]
	-- ===删除: 3312397,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312397]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312397]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312397]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312397]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312397]["DeleteItem"][1]["Id"] = 3312397 -- 【库】ServerNo.3SilverBox[属性:9]
	tJianghuAgainst_Reward[3312397]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312397]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312397]["RewardItem"][1]["Id"] = 195425 -- 【库】ImperialDragonArmor[属性:0], 【表格】非赠苍龙夜帝外套神佑-1,180天时效
	tJianghuAgainst_Reward[3312397]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑ImperialDragonArmor*1
	tJianghuAgainst_Reward[3312397]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312397]["RewardItem"][2]["Id"] = 200606 -- 【库】SoulChariot[属性:0], 【表格】非赠灵魂战车外套神佑-1,180天时效
	tJianghuAgainst_Reward[3312397]["RewardItem"][2]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的1%神佑SoulChariot*1
	tJianghuAgainst_Reward[3312397]["RewardEMoneyMono"] = {}
	tJianghuAgainst_Reward[3312397]["RewardEMoneyMono"]["Value"] = 100000 -- 天石（赠）, 【需求】10W赠点
	tJianghuAgainst_Reward[3312397]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	418"
 	tJianghuAgainst_Reward[3312397]["RewardItem"][3] = {}
 	tJianghuAgainst_Reward[3312397]["RewardItem"][3]["Id"] = 3000997 -- 【库】BlessedAccessoryPack[属性:11], 【表格】非赠稀有武器外套可选包*3
 	tJianghuAgainst_Reward[3312397]["RewardItem"][3]["Attr"] = "0 3" -- BlessedAccessoryPack*3
	tJianghuAgainst_Reward[3312397]["RewardItem"][4] = {}
	tJianghuAgainst_Reward[3312397]["RewardItem"][4]["Id"] = 3312616 -- 【库】SmallLotteryTicketPack[属性:9], 【表格】小抽奖券礼包*1
	tJianghuAgainst_Reward[3312397]["RewardItem"][4]["Attr"] = "0 1" -- SmallLotteryTicketPack*1
	tJianghuAgainst_Reward[3312397]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312397]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312397]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312398] = {}
	-- ===豪华至宝箱（全服4-8名）
	-- ===索引: tJianghuAgainst_Reward[3312398]
	-- ===删除: 3312398,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312398]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312398]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312398]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312398]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312398]["DeleteItem"][1]["Id"] = 3312398 -- 【库】TreasureBox(All-serverTop4-8)[属性:9]
	tJianghuAgainst_Reward[3312398]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312398]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312398]["RewardItem"][1]["Id"] = 3312399 -- 【库】180-dayGarmentPack[属性:9], 【表格】全区全服4-8赠180天人物外套三选一
	tJianghuAgainst_Reward[3312398]["RewardItem"][1]["Attr"] = "0 1" -- 180-dayGarmentPack*1
	tJianghuAgainst_Reward[3312398]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312398]["RewardItem"][2]["Id"] = 3312400 -- 【库】180-dayMountArmorPack[属性:9], 【表格】全区全服4-8赠180天坐骑外套三选一
	tJianghuAgainst_Reward[3312398]["RewardItem"][2]["Attr"] = "0 1" -- 180-dayMountArmorPack*1
	tJianghuAgainst_Reward[3312398]["RewardEMoneyMono"] = {}
	tJianghuAgainst_Reward[3312398]["RewardEMoneyMono"]["Value"] = 50000 -- 天石（赠）, 【需求】5W赠点
	tJianghuAgainst_Reward[3312398]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	418"
	tJianghuAgainst_Reward[3312398]["RewardItem"][3] = {}
	tJianghuAgainst_Reward[3312398]["RewardItem"][3]["Id"] = 3000997 -- 【库】BlessedAccessoryPack[属性:11], 【表格】非赠稀有武器外套可选包*3
	tJianghuAgainst_Reward[3312398]["RewardItem"][3]["Attr"] = "0 3 3" -- BlessedAccessoryPack(B)*3
	tJianghuAgainst_Reward[3312398]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312398]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312398]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312399] = {}
	-- ===180天时效时装外套可选包
	-- ===索引: tJianghuAgainst_Reward[3312399][1]
	-- ===删除: 3312399,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312399][1] = {}
	tJianghuAgainst_Reward[3312399][1]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312399][1]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312399][1]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312399][1]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312399][1]["DeleteItem"][1]["Id"] = 3312399 -- 【库】180-dayGarmentPack[属性:9]
	tJianghuAgainst_Reward[3312399][1]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312399][1]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312399][1]["RewardItem"][1]["Id"] = 189695 -- 【库】MonkeyKingArmor(Heaven)[属性:0], 【表格】1%神佑赠MonkeyKingArmor（Heaven）
	tJianghuAgainst_Reward[3312399][1]["RewardItem"][1]["Attr"] = "0 1 3 259200 1 0 0 1" -- 180天时效(激活)的1%神佑MonkeyKingArmor(Heaven)（赠）*1
	tJianghuAgainst_Reward[3312399][1]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312399][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312399][1]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312399][2] = {}
	-- ===180天时效时装外套可选包
	-- ===索引: tJianghuAgainst_Reward[3312399][2]
	-- ===删除: 3312399,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312399][2]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312399][2]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312399][2]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312399][2]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312399][2]["DeleteItem"][1]["Id"] = 3312399 -- 【库】180-dayGarmentPack[属性:9]
	tJianghuAgainst_Reward[3312399][2]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312399][2]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312399][2]["RewardItem"][1]["Id"] = 195485 -- 【库】InvincibleEastern(Supreme)[属性:0], 【表格】1%神佑赠Invincible Eastern（Supreme）
	tJianghuAgainst_Reward[3312399][2]["RewardItem"][1]["Attr"] = "0 1 3 259200 1 0 0 1" -- 180天时效(激活)的1%神佑InvincibleEastern(Supreme)（赠）*1
	tJianghuAgainst_Reward[3312399][2]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312399][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312399][2]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312399][3] = {}
	-- ===180天时效时装外套可选包
	-- ===索引: tJianghuAgainst_Reward[3312399][3]
	-- ===删除: 3312399,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312399][3]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312399][3]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312399][3]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312399][3]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312399][3]["DeleteItem"][1]["Id"] = 3312399 -- 【库】180-dayGarmentPack[属性:9]
	tJianghuAgainst_Reward[3312399][3]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312399][3]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312399][3]["RewardItem"][1]["Id"] = 195605 -- 【库】RockingRomance(Fantasy)[属性:0], 【表格】1%神佑赠RockingRomance（Fantasy）
	tJianghuAgainst_Reward[3312399][3]["RewardItem"][1]["Attr"] = "0 1 3 259200 1 0 0 1" -- 180天时效(激活)的1%神佑RockingRomance(Fantasy)（赠）*1
	tJianghuAgainst_Reward[3312399][3]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312399][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312399][3]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312400] = {}
	-- ===180天时效坐骑外套可选包
	-- ===索引: tJianghuAgainst_Reward[3312400][1]
	-- ===删除: 3312400,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312400][1] = {}
	tJianghuAgainst_Reward[3312400][1]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312400][1]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312400][1]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312400][1]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312400][1]["DeleteItem"][1]["Id"] = 3312400 -- 【库】180-dayMountArmorPack[属性:9]
	tJianghuAgainst_Reward[3312400][1]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312400][1]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312400][1]["RewardItem"][1]["Id"] = 200629 -- 【库】AuspiciousCloud[属性:0], 【表格】1%神佑赠AuspiciousCloud
	tJianghuAgainst_Reward[3312400][1]["RewardItem"][1]["Attr"] = "0 1 3 259200 1 0 0 1" -- 180天时效(激活)的1%神佑AuspiciousCloud（赠）*1
	tJianghuAgainst_Reward[3312400][1]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312400][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312400][1]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312400][2] = {}
	-- ===180天时效坐骑外套可选包
	-- ===索引: tJianghuAgainst_Reward[3312400][2]
	-- ===删除: 3312400,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312400][2]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312400][2]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312400][2]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312400][2]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312400][2]["DeleteItem"][1]["Id"] = 3312400 -- 【库】180-dayMountArmorPack[属性:9]
	tJianghuAgainst_Reward[3312400][2]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312400][2]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312400][2]["RewardItem"][1]["Id"] = 200613 -- 【库】FierceCloud[属性:0], 【表格】1%神佑赠FierceCloud
	tJianghuAgainst_Reward[3312400][2]["RewardItem"][1]["Attr"] = "0 1 3 259200 1 0 0 1" -- 180天时效(激活)的1%神佑FierceCloud（赠）*1
	tJianghuAgainst_Reward[3312400][2]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312400][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312400][2]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312400][3] = {}
	-- ===180天时效坐骑外套可选包
	-- ===索引: tJianghuAgainst_Reward[3312400][3]
	-- ===删除: 3312400,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312400][3]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312400][3]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312400][3]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312400][3]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312400][3]["DeleteItem"][1]["Id"] = 3312400 -- 【库】180-dayMountArmorPack[属性:9]
	tJianghuAgainst_Reward[3312400][3]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312400][3]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312400][3]["RewardItem"][1]["Id"] = 200614 -- 【库】PacificCloud[属性:0], 【表格】1%神佑赠PacificCloud
	tJianghuAgainst_Reward[3312400][3]["RewardItem"][1]["Attr"] = "0 1 3 259200 1 0 0 1" -- 180天时效(激活)的1%神佑PacificCloud（赠）*1
	tJianghuAgainst_Reward[3312400][3]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312400][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312400][3]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312401] = {}
	-- ===精装至宝箱（全服9-14名）
	-- ===索引: tJianghuAgainst_Reward[3312401]
	-- ===删除: 3312401,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312401]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312401]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312401]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312401]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312401]["DeleteItem"][1]["Id"] = 3312401 -- 【库】TreasureBox(All-serverTop9-14)[属性:9]
	tJianghuAgainst_Reward[3312401]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312401]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312401]["RewardItem"][1]["Id"] = 3312402 -- 【库】120-dayGarmentPack[属性:9], 【表格】全区全服9-14赠120天人物外套三选一
	tJianghuAgainst_Reward[3312401]["RewardItem"][1]["Attr"] = "0 1" -- 120-dayGarmentPack*1
	tJianghuAgainst_Reward[3312401]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312401]["RewardItem"][2]["Id"] = 3312403 -- 【库】120-dayMountArmorPack[属性:9], 【表格】全区全服9-14赠120天坐骑外套三选一
	tJianghuAgainst_Reward[3312401]["RewardItem"][2]["Attr"] = "0 1" -- 120-dayMountArmorPack*1
	tJianghuAgainst_Reward[3312401]["RewardEMoneyMono"] = {}
	tJianghuAgainst_Reward[3312401]["RewardEMoneyMono"]["Value"] = 30000 -- 天石（赠）, 【需求】3W赠点
	tJianghuAgainst_Reward[3312401]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	418"
	tJianghuAgainst_Reward[3312401]["RewardItem"][3] = {}
	tJianghuAgainst_Reward[3312401]["RewardItem"][3]["Id"] = 3000997 -- 【库】BlessedAccessoryPack[属性:11], 【表格】赠稀有武器外套可选包*3
	tJianghuAgainst_Reward[3312401]["RewardItem"][3]["Attr"] = "0 3 3" -- RareWeaponAccessoryPack*3
	tJianghuAgainst_Reward[3312401]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312401]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312401]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312402] = {}
	-- ===120天时效时装外套可选包
	-- ===索引: tJianghuAgainst_Reward[3312402][1]
	-- ===删除: 3312402,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312402][1] = {}
	tJianghuAgainst_Reward[3312402][1]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312402][1]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312402][1]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312402][1]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312402][1]["DeleteItem"][1]["Id"] = 3312402 -- 【库】120-dayGarmentPack[属性:9]
	tJianghuAgainst_Reward[3312402][1]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312402][1]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312402][1]["RewardItem"][1]["Id"] = 189695 -- 【库】MonkeyKingArmor(Heaven)[属性:0], 【表格】1%神佑赠MonkeyKingArmor（Heaven）
	tJianghuAgainst_Reward[3312402][1]["RewardItem"][1]["Attr"] = "0 1 3 172800 1 0 0 1" -- 120天时效(激活)的1%神佑MonkeyKingArmor(Heaven)（赠）*1
	tJianghuAgainst_Reward[3312402][1]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312402][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312402][1]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312402][2] = {}
	-- ===120天时效时装外套可选包
	-- ===索引: tJianghuAgainst_Reward[3312402][2]
	-- ===删除: 3312402,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312402][2]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312402][2]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312402][2]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312402][2]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312402][2]["DeleteItem"][1]["Id"] = 3312402 -- 【库】120-dayGarmentPack[属性:9]
	tJianghuAgainst_Reward[3312402][2]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312402][2]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312402][2]["RewardItem"][1]["Id"] = 195485 -- 【库】InvincibleEastern(Supreme)[属性:0], 【表格】1%神佑赠Invincible Eastern（Supreme）
	tJianghuAgainst_Reward[3312402][2]["RewardItem"][1]["Attr"] = "0 1 3 172800 1 0 0 1" -- 120天时效(激活)的1%神佑InvincibleEastern(Supreme)（赠）*1
	tJianghuAgainst_Reward[3312402][2]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312402][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312402][2]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312402][3] = {}
	-- ===120天时效时装外套可选包
	-- ===索引: tJianghuAgainst_Reward[3312402][3]
	-- ===删除: 3312402,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312402][3]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312402][3]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312402][3]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312402][3]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312402][3]["DeleteItem"][1]["Id"] = 3312402 -- 【库】120-dayGarmentPack[属性:9]
	tJianghuAgainst_Reward[3312402][3]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312402][3]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312402][3]["RewardItem"][1]["Id"] = 195605 -- 【库】RockingRomance(Fantasy)[属性:0], 【表格】1%神佑赠RockingRomance（Fantasy）
	tJianghuAgainst_Reward[3312402][3]["RewardItem"][1]["Attr"] = "0 1 3 172800 1 0 0 1" -- 120天时效(激活)的1%神佑RockingRomance(Fantasy)（赠）*1
	tJianghuAgainst_Reward[3312402][3]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312402][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312402][3]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312403] = {}
	-- ===120天时效坐骑外套可选包
	-- ===索引: tJianghuAgainst_Reward[3312403][1]
	-- ===删除: 3312403,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312403][1] = {}
	tJianghuAgainst_Reward[3312403][1]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312403][1]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312403][1]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312403][1]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312403][1]["DeleteItem"][1]["Id"] = 3312403 -- 【库】120-dayMountArmorPack[属性:9]
	tJianghuAgainst_Reward[3312403][1]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312403][1]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312403][1]["RewardItem"][1]["Id"] = 200629 -- 【库】AuspiciousCloud[属性:0], 【表格】1%神佑赠AuspiciousCloud
	tJianghuAgainst_Reward[3312403][1]["RewardItem"][1]["Attr"] = "0 1 3 172800 1 0 0 1" -- 120天时效(激活)的1%神佑AuspiciousCloud（赠）*1
	tJianghuAgainst_Reward[3312403][1]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312403][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312403][1]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312403][2] = {}
	-- ===120天时效坐骑外套可选包
	-- ===索引: tJianghuAgainst_Reward[3312403][2]
	-- ===删除: 3312403,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312403][2]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312403][2]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312403][2]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312403][2]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312403][2]["DeleteItem"][1]["Id"] = 3312403 -- 【库】120-dayMountArmorPack[属性:9]
	tJianghuAgainst_Reward[3312403][2]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312403][2]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312403][2]["RewardItem"][1]["Id"] = 200613 -- 【库】FierceCloud[属性:0], 【表格】1%神佑赠FierceCloud
	tJianghuAgainst_Reward[3312403][2]["RewardItem"][1]["Attr"] = "0 1 3 172800 1 0 0 1" -- 120天时效(激活)的1%神佑FierceCloud（赠）*1
	tJianghuAgainst_Reward[3312403][2]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312403][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312403][2]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312403][3] = {}
	-- ===120天时效坐骑外套可选包
	-- ===索引: tJianghuAgainst_Reward[3312403][3]
	-- ===删除: 3312403,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312403][3]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312403][3]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312403][3]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312403][3]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312403][3]["DeleteItem"][1]["Id"] = 3312403 -- 【库】120-dayMountArmorPack[属性:9]
	tJianghuAgainst_Reward[3312403][3]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312403][3]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312403][3]["RewardItem"][1]["Id"] = 200614 -- 【库】PacificCloud[属性:0], 【表格】1%神佑赠PacificCloud
	tJianghuAgainst_Reward[3312403][3]["RewardItem"][1]["Attr"] = "0 1 3 172800 1 0 0 1" -- 120天时效(激活)的1%神佑PacificCloud（赠）*1
	tJianghuAgainst_Reward[3312403][3]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312403][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312403][3]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312404] = {}
	-- ===精装至宝箱（全服15-21名）
	-- ===索引: tJianghuAgainst_Reward[3312404]
	-- ===删除: 3312404,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312404]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312404]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312404]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312404]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312404]["DeleteItem"][1]["Id"] = 3312404 -- 【库】TreasureBox(All-serverTop15-21)[属性:9]
	tJianghuAgainst_Reward[3312404]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312404]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312404]["RewardItem"][1]["Id"] = 3312405 -- 【库】90-dayGarmentPack[属性:9], 【表格】全区全15-21赠90天人物外套三选一
	tJianghuAgainst_Reward[3312404]["RewardItem"][1]["Attr"] = "0 1" -- 90-dayGarmentPack*1
	tJianghuAgainst_Reward[3312404]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312404]["RewardItem"][2]["Id"] = 3312406 -- 【库】90-dayMountArmorPack[属性:9], 【表格】全区全15-21赠90天坐骑外套三选一
	tJianghuAgainst_Reward[3312404]["RewardItem"][2]["Attr"] = "0 1" -- 90-dayMountArmorPack*1
	tJianghuAgainst_Reward[3312404]["RewardEMoneyMono"] = {}
	tJianghuAgainst_Reward[3312404]["RewardEMoneyMono"]["Value"] = 20000 -- 天石（赠）, 【需求】2W赠点
	tJianghuAgainst_Reward[3312404]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	418"
	tJianghuAgainst_Reward[3312404]["RewardItem"][3] = {}
	tJianghuAgainst_Reward[3312404]["RewardItem"][3]["Id"] = 3000997 -- 【库】BlessedAccessoryPack[属性:11], 【表格】赠稀有武器外套可选包*3
	tJianghuAgainst_Reward[3312404]["RewardItem"][3]["Attr"] = "0 3 3" -- BlessedAccessoryPack*3
	tJianghuAgainst_Reward[3312404]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312404]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312404]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312405] = {}
	-- ===90天时效时装外套可选包
	-- ===索引: tJianghuAgainst_Reward[3312405][1]
	-- ===删除: 3312405,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312405][1] = {}
	tJianghuAgainst_Reward[3312405][1]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312405][1]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312405][1]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312405][1]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312405][1]["DeleteItem"][1]["Id"] = 3312405 -- 【库】90-dayGarmentPack[属性:9]
	tJianghuAgainst_Reward[3312405][1]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312405][1]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312405][1]["RewardItem"][1]["Id"] = 189695 -- 【库】MonkeyKingArmor(Heaven)[属性:0], 【表格】1%神佑赠MonkeyKingArmor（Heaven）
	tJianghuAgainst_Reward[3312405][1]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑MonkeyKingArmor(Heaven)（赠）*1
	tJianghuAgainst_Reward[3312405][1]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312405][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312405][1]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312405][2] = {}
	-- ===90天时效时装外套可选包
	-- ===索引: tJianghuAgainst_Reward[3312405][2]
	-- ===删除: 3312405,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312405][2]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312405][2]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312405][2]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312405][2]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312405][2]["DeleteItem"][1]["Id"] = 3312405 -- 【库】90-dayGarmentPack[属性:9]
	tJianghuAgainst_Reward[3312405][2]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312405][2]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312405][2]["RewardItem"][1]["Id"] = 195485 -- 【库】InvincibleEastern(Supreme)[属性:0], 【表格】1%神佑赠Invincible Eastern（Supreme）
	tJianghuAgainst_Reward[3312405][2]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑InvincibleEastern(Supreme)（赠）*1
	tJianghuAgainst_Reward[3312405][2]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312405][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312405][2]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312405][3] = {}
	-- ===90天时效时装外套可选包
	-- ===索引: tJianghuAgainst_Reward[3312405][3]
	-- ===删除: 3312405,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312405][3]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312405][3]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312405][3]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312405][3]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312405][3]["DeleteItem"][1]["Id"] = 3312405 -- 【库】90-dayGarmentPack[属性:9]
	tJianghuAgainst_Reward[3312405][3]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312405][3]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312405][3]["RewardItem"][1]["Id"] = 195605 -- 【库】RockingRomance(Fantasy)[属性:0], 【表格】1%神佑赠RockingRomance（Fantasy）
	tJianghuAgainst_Reward[3312405][3]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑RockingRomance(Fantasy)（赠）*1
	tJianghuAgainst_Reward[3312405][3]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312405][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312405][3]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312406] = {}
	-- ===90天时效坐骑外套可选包
	-- ===索引: tJianghuAgainst_Reward[3312406][1]
	-- ===删除: 3312406,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312406][1] = {}
	tJianghuAgainst_Reward[3312406][1]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312406][1]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312406][1]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312406][1]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312406][1]["DeleteItem"][1]["Id"] = 3312406 -- 【库】90-dayMountArmorPack[属性:9]
	tJianghuAgainst_Reward[3312406][1]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312406][1]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312406][1]["RewardItem"][1]["Id"] = 200629 -- 【库】AuspiciousCloud[属性:0], 【表格】1%神佑赠AuspiciousCloud
	tJianghuAgainst_Reward[3312406][1]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑AuspiciousCloud（赠）*1
	tJianghuAgainst_Reward[3312406][1]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312406][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312406][1]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312406][2] = {}
	-- ===90天时效坐骑外套可选包
	-- ===索引: tJianghuAgainst_Reward[3312406][2]
	-- ===删除: 3312406,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312406][2]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312406][2]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312406][2]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312406][2]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312406][2]["DeleteItem"][1]["Id"] = 3312406 -- 【库】90-dayMountArmorPack[属性:9]
	tJianghuAgainst_Reward[3312406][2]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312406][2]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312406][2]["RewardItem"][1]["Id"] = 200613 -- 【库】FierceCloud[属性:0], 【表格】1%神佑赠FierceCloud
	tJianghuAgainst_Reward[3312406][2]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑FierceCloud（赠）*1
	tJianghuAgainst_Reward[3312406][2]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312406][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312406][2]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312406][3] = {}
	-- ===90天时效坐骑外套可选包
	-- ===索引: tJianghuAgainst_Reward[3312406][3]
	-- ===删除: 3312406,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312406][3]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312406][3]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312406][3]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312406][3]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312406][3]["DeleteItem"][1]["Id"] = 3312406 -- 【库】90-dayMountArmorPack[属性:9]
	tJianghuAgainst_Reward[3312406][3]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312406][3]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312406][3]["RewardItem"][1]["Id"] = 200614 -- 【库】PacificCloud[属性:0], 【表格】1%神佑赠PacificCloud
	tJianghuAgainst_Reward[3312406][3]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑PacificCloud（赠）*1
	tJianghuAgainst_Reward[3312406][3]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312406][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312406][3]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312407] = {}
	-- ===精装至宝箱（全服22-29名）
	-- ===索引: tJianghuAgainst_Reward[3312407]
	-- ===删除: 3312407,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312407]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312407]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312407]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312407]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312407]["DeleteItem"][1]["Id"] = 3312407 -- 【库】TreasureBox(All-serverTop22-29)[属性:9]
	tJianghuAgainst_Reward[3312407]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312407]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312407]["RewardItem"][1]["Id"] = 3312405 -- 【库】90-dayGarmentPack[属性:9], 【表格】全区全22-29赠90天人物外套三选一
	tJianghuAgainst_Reward[3312407]["RewardItem"][1]["Attr"] = "0 1" -- 90-dayGarmentPack*1
	tJianghuAgainst_Reward[3312407]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312407]["RewardItem"][2]["Id"] = 3312406 -- 【库】90-dayMountArmorPack[属性:9], 【表格】全区全22-29赠90天坐骑外套三选一
	tJianghuAgainst_Reward[3312407]["RewardItem"][2]["Attr"] = "0 1" -- 90-dayMountArmorPack*1
	tJianghuAgainst_Reward[3312407]["RewardEMoneyMono"] = {}
	tJianghuAgainst_Reward[3312407]["RewardEMoneyMono"]["Value"] = 10000 -- 天石（赠）, 【需求】1W赠点
	tJianghuAgainst_Reward[3312407]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	418"
	tJianghuAgainst_Reward[3312407]["RewardItem"][3] = {}
	tJianghuAgainst_Reward[3312407]["RewardItem"][3]["Id"] = 3000997 -- 【库】BlessedAccessoryPack[属性:11], 【表格】赠稀有武器外套可选包*3
	tJianghuAgainst_Reward[3312407]["RewardItem"][3]["Attr"] = "0 3 3" -- BlessedAccessoryPack*3
	tJianghuAgainst_Reward[3312407]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312407]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312407]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312408] = {}
	-- ===精装至宝箱（全服30-39名）
	-- ===索引: tJianghuAgainst_Reward[3312408]
	-- ===删除: 3312408,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312408]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312408]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312408]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312408]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312408]["DeleteItem"][1]["Id"] = 3312408 -- 【库】TreasureBox(All-serverTop30-39)[属性:9]
	tJianghuAgainst_Reward[3312408]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312408]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312408]["RewardItem"][1]["Id"] = 3312409 -- 【库】60-dayGarmentPack[属性:9], 【表格】全区全30-39赠60天人物外套二选一
	tJianghuAgainst_Reward[3312408]["RewardItem"][1]["Attr"] = "0 1" -- 60-dayGarmentPack*1
	tJianghuAgainst_Reward[3312408]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312408]["RewardItem"][2]["Id"] = 3312410 -- 【库】60-dayMountArmorPack[属性:9], 【表格】全区全30-39赠60天坐骑外套二选一
	tJianghuAgainst_Reward[3312408]["RewardItem"][2]["Attr"] = "0 1" -- 60-dayMountArmorPack*1
	tJianghuAgainst_Reward[3312408]["RewardEMoneyMono"] = {}
	tJianghuAgainst_Reward[3312408]["RewardEMoneyMono"]["Value"] = 5000 -- 天石（赠）, 【需求】5000赠点
	tJianghuAgainst_Reward[3312408]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	418"
	tJianghuAgainst_Reward[3312408]["RewardItem"][3] = {}
	tJianghuAgainst_Reward[3312408]["RewardItem"][3]["Id"] = 3000997 -- 【库】BlessedAccessoryPack[属性:11], 【表格】赠稀有武器外套可选包*3
	tJianghuAgainst_Reward[3312408]["RewardItem"][3]["Attr"] = "0 3 3" -- BlessedAccessoryPack*3
	tJianghuAgainst_Reward[3312408]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312408]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312408]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312409] = {}
	-- ===60天时效时装外套可选包
	-- ===索引: tJianghuAgainst_Reward[3312409][1]
	-- ===删除: 3312409,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312409][1] = {}
	tJianghuAgainst_Reward[3312409][1]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312409][1]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312409][1]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312409][1]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312409][1]["DeleteItem"][1]["Id"] = 3312409 -- 【库】60-dayGarmentPack[属性:9]
	tJianghuAgainst_Reward[3312409][1]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312409][1]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312409][1]["RewardItem"][1]["Id"] = 195485 -- 【库】InvincibleEastern(Supreme)[属性:0], 【表格】1%神佑赠Invincible Eastern（Supreme）
	tJianghuAgainst_Reward[3312409][1]["RewardItem"][1]["Attr"] = "0 1 3 86400 1 0 0 1" -- 60天时效(激活)的1%神佑InvincibleEastern(Supreme)（赠）*1
	tJianghuAgainst_Reward[3312409][1]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312409][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312409][1]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312409][2] = {}
	-- ===60天时效时装外套可选包
	-- ===索引: tJianghuAgainst_Reward[3312409][2]
	-- ===删除: 3312409,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312409][2]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312409][2]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312409][2]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312409][2]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312409][2]["DeleteItem"][1]["Id"] = 3312409 -- 【库】60-dayGarmentPack[属性:9]
	tJianghuAgainst_Reward[3312409][2]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312409][2]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312409][2]["RewardItem"][1]["Id"] = 195605 -- 【库】RockingRomance(Fantasy)[属性:0], 【表格】1%神佑赠RockingRomance（Fantasy）
	tJianghuAgainst_Reward[3312409][2]["RewardItem"][1]["Attr"] = "0 1 3 86400 1 0 0 1" -- 60天时效(激活)的1%神佑RockingRomance(Fantasy)（赠）*1
	tJianghuAgainst_Reward[3312409][2]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312409][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312409][2]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312410] = {}
	-- ===60天时效坐骑外套可选包
	-- ===索引: tJianghuAgainst_Reward[3312410][1]
	-- ===删除: 3312410,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312410][1] = {}
	tJianghuAgainst_Reward[3312410][1]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312410][1]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312410][1]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312410][1]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312410][1]["DeleteItem"][1]["Id"] = 3312410 -- 【库】60-dayMountArmorPack[属性:9]
	tJianghuAgainst_Reward[3312410][1]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312410][1]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312410][1]["RewardItem"][1]["Id"] = 200613 -- 【库】FierceCloud[属性:0], 【表格】1%神佑赠FierceCloud
	tJianghuAgainst_Reward[3312410][1]["RewardItem"][1]["Attr"] = "0 1 3 86400 1 0 0 1" -- 60天时效(激活)的1%神佑FierceCloud（赠）*1
	tJianghuAgainst_Reward[3312410][1]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312410][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312410][1]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312410][2] = {}
	-- ===60天时效坐骑外套可选包
	-- ===索引: tJianghuAgainst_Reward[3312410][2]
	-- ===删除: 3312410,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312410][2]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312410][2]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312410][2]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312410][2]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312410][2]["DeleteItem"][1]["Id"] = 3312410 -- 【库】60-dayMountArmorPack[属性:9]
	tJianghuAgainst_Reward[3312410][2]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312410][2]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312410][2]["RewardItem"][1]["Id"] = 200614 -- 【库】PacificCloud[属性:0], 【表格】1%神佑赠PacificCloud
	tJianghuAgainst_Reward[3312410][2]["RewardItem"][1]["Attr"] = "0 1 3 86400 1 0 0 1" -- 60天时效(激活)的1%神佑PacificCloud（赠）*1
	tJianghuAgainst_Reward[3312410][2]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312410][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312410][2]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312411] = {}
	-- ===精装至宝箱（全服40-50名）
	-- ===索引: tJianghuAgainst_Reward[3312411]
	-- ===删除: 3312411,1
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312411]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312411]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312411]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312411]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312411]["DeleteItem"][1]["Id"] = 3312411 -- 【库】TreasureBox(All-serverTop40-50)[属性:9]
	tJianghuAgainst_Reward[3312411]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312411]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312411]["RewardItem"][1]["Id"] = 3312409 -- 【库】60-dayGarmentPack[属性:9], 【表格】全区全40-50赠60天人物外套二选一
	tJianghuAgainst_Reward[3312411]["RewardItem"][1]["Attr"] = "0 1" -- 60-dayGarmentPack*1
	tJianghuAgainst_Reward[3312411]["RewardItem"][2] = {}
	tJianghuAgainst_Reward[3312411]["RewardItem"][2]["Id"] = 3312410 -- 【库】60-dayMountArmorPack[属性:9], 【表格】全区全40-50赠60天坐骑外套二选一
	tJianghuAgainst_Reward[3312411]["RewardItem"][2]["Attr"] = "0 1" -- 60-dayMountArmorPack*1
	tJianghuAgainst_Reward[3312411]["RewardEMoneyMono"] = {}
	tJianghuAgainst_Reward[3312411]["RewardEMoneyMono"]["Value"] = 3000 -- 天石（赠）, 【需求】3000赠点
	tJianghuAgainst_Reward[3312411]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	418"
	tJianghuAgainst_Reward[3312411]["RewardItem"][3] = {}
	tJianghuAgainst_Reward[3312411]["RewardItem"][3]["Id"] = 3000997 -- 【库】BlessedAccessoryPack[属性:11], 【表格】赠稀有武器外套可选包*3
	tJianghuAgainst_Reward[3312411]["RewardItem"][3]["Attr"] = "0 3 3" -- BlessedAccessoryPack*3
	tJianghuAgainst_Reward[3312411]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312411]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312411]["RewardEffect"]["Effect"] = "angelwing"


	tJianghuAgainst_Reward[3312417] = {}
	-- ===称号碎片
	-- ===索引: tJianghuAgainst_Reward[3312417]
	-- ===删除: 3312417,15
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312417]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312417]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312417]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312417]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312417]["DeleteItem"][1]["Id"] = 3312417 -- 【库】TitleFragment[属性:9]
	tJianghuAgainst_Reward[3312417]["DeleteItem"][1]["ItemNum"] = 15
	tJianghuAgainst_Reward[3312417]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312417]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312417]["RewardItem"][1]["Id"] = 3312382 -- 【库】TitlePack[属性:9], 【表格】称号礼包
	tJianghuAgainst_Reward[3312417]["RewardItem"][1]["Attr"] = "0 1" -- TitleFragment*1
	tJianghuAgainst_Reward[3312417]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312417]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312417]["RewardEffect"]["Effect"] = "angelwing"

	tJianghuAgainst_Reward[3312412] = {}
	-- ===稀有武器外套包
	-- ===索引: tJianghuAgainst_Reward[3312412]
	-- ===删除: 3312412,15
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312412]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312412]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312412]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312412]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312412]["DeleteItem"][1]["Id"] = 3312412 -- RareWeaponAccessoryPack[属性:9]
	tJianghuAgainst_Reward[3312412]["DeleteItem"][1]["ItemNum"] = 1
	tJianghuAgainst_Reward[3312412]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312412]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312412]["RewardItem"][1]["Id"] = 3000997	-- 【库】BlessedAccessoryPack[属性:11], 【表格】BlessedAccessoryPack*5
	tJianghuAgainst_Reward[3312412]["RewardItem"][1]["Attr"] = "0 5" -- TitleFragment*1
	tJianghuAgainst_Reward[3312412]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312412]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312412]["RewardEffect"]["Effect"] = "angelwing"

	tJianghuAgainst_Reward[3312413] = {}
	-- ===赠稀有武器外套包
	-- ===索引: tJianghuAgainst_Reward[3312413]
	-- ===删除: 3312413,15
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312413]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312413]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312413]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312413]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312413]["DeleteItem"][1]["Id"] = 3312413 -- RareWeaponAccessoryPack(B)[属性:9]
	tJianghuAgainst_Reward[3312413]["DeleteItem"][1]["ItemNum"] = 1
	tJianghuAgainst_Reward[3312413]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312413]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312413]["RewardItem"][1]["Id"] = 3000997 -- 【库】BlessedAccessoryPack[属性:11], 【表格】BlessedAccessoryPack*5
	tJianghuAgainst_Reward[3312413]["RewardItem"][1]["Attr"] = "0 5 3" -- TitleFragment*1
	tJianghuAgainst_Reward[3312413]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312413]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312413]["RewardEffect"]["Effect"] = "angelwing"

	tJianghuAgainst_Reward[3312616] = {}
	-- ===抽奖券包
	-- ===索引: tJianghuAgainst_Reward[3312616]
	-- ===删除: 3312616,15
	-- ===LogStep: 1[1]
	-- ===EMoneyLog: 10000,0418
	tJianghuAgainst_Reward[3312616]["LogId"] = 12001409
	tJianghuAgainst_Reward[3312616]["LogStep"] = "1[1]"
	tJianghuAgainst_Reward[3312616]["DeleteItem"] = {}
	tJianghuAgainst_Reward[3312616]["DeleteItem"][1] = {}
	tJianghuAgainst_Reward[3312616]["DeleteItem"][1]["Id"] = 3312616 -- SmallLotteryTicketPack[属性:9]
	tJianghuAgainst_Reward[3312616]["DeleteItem"][1]["ItemNum"] = 1
	tJianghuAgainst_Reward[3312616]["RewardItem"] = {}
	tJianghuAgainst_Reward[3312616]["RewardItem"][1] = {}
	tJianghuAgainst_Reward[3312616]["RewardItem"][1]["Id"] = 711504 -- 【库】SmallLotteryTicket[属性:9], 【表格】SmallLotteryTicket*30
	tJianghuAgainst_Reward[3312616]["RewardItem"][1]["Attr"] = "0 30" -- 桃源灵玉*30
	tJianghuAgainst_Reward[3312616]["RewardEffect"] = {}
	tJianghuAgainst_Reward[3312616]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJianghuAgainst_Reward[3312616]["RewardEffect"]["Effect"] = "angelwing"

----------------------------------逻辑部分---------------------------------------------

--礼包接进主函数
function JianghuAgainst_OpenPack(nItemId, sItemName, nNowUserId)
    local nUserId = nNowUserId or Get_UserId()
    local tReward = tJianghuAgainst_Reward[nItemId]
    if(tReward == nil)then
        return false
    end
    --判断普通礼包或可选包
    if (tReward[1] ~= nil) then--可选包
        --显示可选包对白
        local tText = JianghuAgainst_Text['Dialog'][nItemId]
        for i, v in pairs(tText["Text"]) do
            Sys_DialogText(tText["Text"][i], 1 , nUserId)
        end
        for i, v in pairs(tText["Option"]) do
            Sys_DialogOption(tText["Option"][i], '</F>JianghuAgainst_ChooseReward</N>' .. nItemId .. '</N>' .. i, 0, nUserId)
		end
		Sys_DialogItemFace(nItemId, nUserId)
		Sys_DialogEnd(nUserId)
    else--非可选包
        RewardTemplate_UseItemAndMsg(tReward, nUserId)
    end
end
--可选包开启函数
function JianghuAgainst_ChooseReward(nItemId, nNo)
    local nUserId = Get_UserId()
    local tReward = tJianghuAgainst_Reward[nItemId]
    if(tReward == nil)then
        return false
    end
    if (tReward[nNo] == nil) then--没有该选项的奖励
        return false
    end
    RewardTemplate_UseItemAndMsg(tReward[nNo], nUserId)
end
--称号碎片使用
function JianghuAgainst_TitleFragment(nItemId)
	local nUserId = Get_UserId()
	local nItemNum = tJianghuAgainst_Reward[nItemId]["DeleteItem"][1]["ItemNum"]
	local tReward = tJianghuAgainst_Reward[nItemId]
	local nUserItemNum = Get_CountItemType(nItemId, 0, 1, nUserId, nUserId)

	--碎片数量不足
	if nUserItemNum < nItemNum then
		User_TalkChannel2005(JianghuAgainst_Text['Talk'][nItemId]['NotEnough'], nUserId)
		return
	else
		RewardTemplate_UseItemAndMsg(tReward, nUserId)
	end

end









---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3312347] = tItem[3312347] or {}
tItem[3312347]["Function"] = function(nItemId,sItemName)
    local nUserId = Get_UserId()
    JianghuAgainst_OpenPack(nItemId, sItemName, nUserId)
end
tItem[3312348] = tItem[3312347] or {}
tItem[3312349] = tItem[3312347] or {}
tItem[3312350] = tItem[3312347] or {}
tItem[3312351] = tItem[3312347] or {}
tItem[3312352] = tItem[3312347] or {}
tItem[3312353] = tItem[3312347] or {}
tItem[3312354] = tItem[3312347] or {}
tItem[3312355] = tItem[3312347] or {}
tItem[3312356] = tItem[3312347] or {}
tItem[3312357] = tItem[3312347] or {}
tItem[3312358] = tItem[3312347] or {}
tItem[3312359] = tItem[3312347] or {}
tItem[3312360] = tItem[3312347] or {}
tItem[3312361] = tItem[3312347] or {}
tItem[3312362] = tItem[3312347] or {}
tItem[3312363] = tItem[3312347] or {}
tItem[3312364] = tItem[3312347] or {}
tItem[3312365] = tItem[3312347] or {}
tItem[3312366] = tItem[3312347] or {}
tItem[3312367] = tItem[3312347] or {}
tItem[3312368] = tItem[3312347] or {}
tItem[3312369] = tItem[3312347] or {}
tItem[3312370] = tItem[3312347] or {}
tItem[3312371] = tItem[3312347] or {}
tItem[3312372] = tItem[3312347] or {}
tItem[3312373] = tItem[3312347] or {}
tItem[3312374] = tItem[3312347] or {}
tItem[3312375] = tItem[3312347] or {}
tItem[3312376] = tItem[3312347] or {}
tItem[3312377] = tItem[3312347] or {}
tItem[3312378] = tItem[3312347] or {}
tItem[3312379] = tItem[3312347] or {}
tItem[3312380] = tItem[3312347] or {}
tItem[3312381] = tItem[3312347] or {}
tItemFace[3312382] = 2270
tItem[3312382] = tItem[3312347] or {}
tItem[3312385] = tItem[3312347] or {}
tItemFace[3312386] = 2271
tItem[3312386] = tItem[3312347] or {}
tItem[3312387] = tItem[3312347] or {}
tItemFace[3312388] = 2272
tItem[3312388] = tItem[3312347] or {}
tItem[3312389] = tItem[3312347] or {}
tItemFace[3312390] = 2273
tItem[3312390] = tItem[3312347] or {}
tItem[3312391] = tItem[3312347] or {}
tItemFace[3312392] = 2274
tItem[3312392] = tItem[3312347] or {}
tItem[3312393] = tItem[3312347] or {}
tItemFace[3312394] = 2275
tItem[3312394] = tItem[3312347] or {}
tItem[3312395] = tItem[3312347] or {}
tItem[3312396] = tItem[3312347] or {}
tItem[3312397] = tItem[3312347] or {}
tItem[3312398] = tItem[3312347] or {}
tItemFace[3312399] = 2276
tItem[3312399] = tItem[3312347] or {}
tItemFace[3312400] = 2277
tItem[3312400] = tItem[3312347] or {}
tItem[3312401] = tItem[3312347] or {}
tItemFace[3312402] = 2278
tItem[3312402] = tItem[3312347] or {}
tItemFace[3312403] = 2279
tItem[3312403] = tItem[3312347] or {}
tItem[3312404] = tItem[3312347] or {}
tItemFace[3312405] = 2280
tItem[3312405] = tItem[3312347] or {}
tItemFace[3312406] = 2281
tItem[3312406] = tItem[3312347] or {}
tItem[3312407] = tItem[3312347] or {}
tItem[3312408] = tItem[3312347] or {}
tItemFace[3312409] = 2282
tItem[3312409] = tItem[3312347] or {}
tItemFace[3312410] = 2283
tItem[3312410] = tItem[3312347] or {}
tItem[3312411] = tItem[3312347] or {}
tItem[3312412] = tItem[3312347] or {}
tItem[3312413] = tItem[3312347] or {}
tItem[3312414] = tItem[3312347] or {}
tItem[3312415] = tItem[3312347] or {}
tItem[3312416] = tItem[3312347] or {}
tItem[3312616] = tItem[3312347] or {}
tItemFace[3312417] = 2284

--称号碎片
tItem[3312417] = tItem[3312417] or {}
tItem[3312417]["Text1-1"] = {111, 112}
tItem[3312417]["Text111"] = JianghuAgainst_Text['Dialog'][3312417]["Text"][1]
tItem[3312417]["Text112"] = JianghuAgainst_Text['Dialog'][3312417]["Text"][2]
tItem[3312417]["tOption1-1"] = {111, 112}
tItem[3312417]["Option111"] = JianghuAgainst_Text['Dialog'][3312417]["Option"][1]
tItem[3312417]["Option112"] = JianghuAgainst_Text['Dialog'][3312417]["Option"][2]
tItem[3312417]["OptionFunc111"] = "JianghuAgainst_TitleFragment</N>3312417"
tItem[3312417]["ChkFunc1-1"] = function()
	return true
end

tItem[3312616] = tItem[3312347] or {}