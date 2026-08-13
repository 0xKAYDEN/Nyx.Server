------------------------------------------------------------------------------------
--Name:			190613[英文征服][任务脚本]7月抽奖功能优化
--Creator:		洪聪敏
--Created:		2019/06/13
------------------------------------------------------------------------------------
--命名前缀：AdjustLottery_
--logid：12001462
--luaini：41343


------------------------------------------------------------------------------------
local tAdjustLottery_Cont = {}
--所有稀有神纹ID

------------------------------------------奖励配置------------------------------------------
local tAdjustLottery_RidGift = {}
	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021301]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021301] = {}
	tAdjustLottery_RidGift[4021301]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021301]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021301]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021301]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021301]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021301]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021301]["RewardItem"][1]["Id"] = 4021301 -- 【库】ShadowFist(+1)[属性:8], 【表格】ShadowFist
	tAdjustLottery_RidGift[4021301]["RewardItem"][1]["Attr"] = "0 1" -- ShadowFist(+1)*1
	tAdjustLottery_RidGift[4021301]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021301]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021301]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021302]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021302] = {}
	tAdjustLottery_RidGift[4021302]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021302]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021302]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021302]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021302]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021302]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021302]["RewardItem"][1]["Id"] = 4021302 -- 【库】ShadowFist(+2)[属性:8], 【表格】ShadowFist
	tAdjustLottery_RidGift[4021302]["RewardItem"][1]["Attr"] = "0 1" -- ShadowFist(+2)*1
	tAdjustLottery_RidGift[4021302]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021302]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021302]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021303]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021303] = {}
	tAdjustLottery_RidGift[4021303]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021303]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021303]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021303]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021303]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021303]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021303]["RewardItem"][1]["Id"] = 4021303 -- 【库】ShadowFist(+3)[属性:8], 【表格】ShadowFist
	tAdjustLottery_RidGift[4021303]["RewardItem"][1]["Attr"] = "0 1" -- ShadowFist(+3)*1
	tAdjustLottery_RidGift[4021303]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021303]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021303]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021304]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021304] = {}
	tAdjustLottery_RidGift[4021304]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021304]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021304]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021304]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021304]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021304]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021304]["RewardItem"][1]["Id"] = 4021304 -- 【库】ShadowFist(+4)[属性:8], 【表格】ShadowFist
	tAdjustLottery_RidGift[4021304]["RewardItem"][1]["Attr"] = "0 1" -- ShadowFist(+4)*1
	tAdjustLottery_RidGift[4021304]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021304]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021304]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021305]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021305] = {}
	tAdjustLottery_RidGift[4021305]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021305]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021305]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021305]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021305]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021305]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021305]["RewardItem"][1]["Id"] = 4021305 -- 【库】ShadowFist(+5)[属性:8], 【表格】ShadowFist
	tAdjustLottery_RidGift[4021305]["RewardItem"][1]["Attr"] = "0 1" -- ShadowFist(+5)*1
	tAdjustLottery_RidGift[4021305]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021305]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021305]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021306]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021306] = {}
	tAdjustLottery_RidGift[4021306]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021306]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021306]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021306]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021306]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021306]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021306]["RewardItem"][1]["Id"] = 4021306 -- 【库】ShadowFist(+6)[属性:8], 【表格】ShadowFist
	tAdjustLottery_RidGift[4021306]["RewardItem"][1]["Attr"] = "0 1" -- ShadowFist(+6)*1
	tAdjustLottery_RidGift[4021306]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021306]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021306]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021307]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021307] = {}
	tAdjustLottery_RidGift[4021307]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021307]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021307]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021307]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021307]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021307]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021307]["RewardItem"][1]["Id"] = 4021307 -- 【库】ShadowFist(+7)[属性:8], 【表格】ShadowFist
	tAdjustLottery_RidGift[4021307]["RewardItem"][1]["Attr"] = "0 1" -- ShadowFist(+7)*1
	tAdjustLottery_RidGift[4021307]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021307]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021307]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021308]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021308] = {}
	tAdjustLottery_RidGift[4021308]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021308]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021308]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021308]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021308]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021308]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021308]["RewardItem"][1]["Id"] = 4021308 -- 【库】ShadowFist(+8)[属性:8], 【表格】ShadowFist
	tAdjustLottery_RidGift[4021308]["RewardItem"][1]["Attr"] = "0 1" -- ShadowFist(+8)*1
	tAdjustLottery_RidGift[4021308]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021308]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021308]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021309]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021309] = {}
	tAdjustLottery_RidGift[4021309]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021309]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021309]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021309]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021309]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021309]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021309]["RewardItem"][1]["Id"] = 4021309 -- 【库】ShadowFist(+9)[属性:8], 【表格】ShadowFist
	tAdjustLottery_RidGift[4021309]["RewardItem"][1]["Attr"] = "0 1" -- ShadowFist(+9)*1
	tAdjustLottery_RidGift[4021309]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021309]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021309]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021310]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021310] = {}
	tAdjustLottery_RidGift[4021310]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021310]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021310]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021310]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021310]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021310]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021310]["RewardItem"][1]["Id"] = 4021310 -- 【库】ShadowFist(+10)[属性:8], 【表格】ShadowFist
	tAdjustLottery_RidGift[4021310]["RewardItem"][1]["Attr"] = "0 1" -- ShadowFist(+10)*1
	tAdjustLottery_RidGift[4021310]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021310]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021310]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021311]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021311] = {}
	tAdjustLottery_RidGift[4021311]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021311]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021311]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021311]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021311]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021311]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021311]["RewardItem"][1]["Id"] = 4021311 -- 【库】ShadowFist(+11)[属性:8], 【表格】ShadowFist
	tAdjustLottery_RidGift[4021311]["RewardItem"][1]["Attr"] = "0 1" -- ShadowFist(+11)*1
	tAdjustLottery_RidGift[4021311]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021311]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021311]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021312]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021312] = {}
	tAdjustLottery_RidGift[4021312]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021312]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021312]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021312]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021312]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021312]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021312]["RewardItem"][1]["Id"] = 4021312 -- 【库】ShadowFist(+12)[属性:8], 【表格】ShadowFist
	tAdjustLottery_RidGift[4021312]["RewardItem"][1]["Attr"] = "0 1" -- ShadowFist(+12)*1
	tAdjustLottery_RidGift[4021312]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021312]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021312]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021313]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021313] = {}
	tAdjustLottery_RidGift[4021313]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021313]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021313]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021313]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021313]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021313]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021313]["RewardItem"][1]["Id"] = 4021313 -- 【库】ShadowFist(+13)[属性:8], 【表格】ShadowFist
	tAdjustLottery_RidGift[4021313]["RewardItem"][1]["Attr"] = "0 1" -- ShadowFist(+13)*1
	tAdjustLottery_RidGift[4021313]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021313]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021313]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021314]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021314] = {}
	tAdjustLottery_RidGift[4021314]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021314]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021314]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021314]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021314]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021314]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021314]["RewardItem"][1]["Id"] = 4021314 -- 【库】ShadowFist(+14)[属性:8], 【表格】ShadowFist
	tAdjustLottery_RidGift[4021314]["RewardItem"][1]["Attr"] = "0 1" -- ShadowFist(+14)*1
	tAdjustLottery_RidGift[4021314]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021314]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021314]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021315]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021315] = {}
	tAdjustLottery_RidGift[4021315]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021315]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021315]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021315]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021315]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021315]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021315]["RewardItem"][1]["Id"] = 4021315 -- 【库】ShadowFist(+15)[属性:8], 【表格】ShadowFist
	tAdjustLottery_RidGift[4021315]["RewardItem"][1]["Attr"] = "0 1" -- ShadowFist(+15)*1
	tAdjustLottery_RidGift[4021315]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021315]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021315]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021316]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021316] = {}
	tAdjustLottery_RidGift[4021316]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021316]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021316]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021316]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021316]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021316]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021316]["RewardItem"][1]["Id"] = 4021316 -- 【库】ShadowFist(+16)[属性:8], 【表格】ShadowFist
	tAdjustLottery_RidGift[4021316]["RewardItem"][1]["Attr"] = "0 1" -- ShadowFist(+16)*1
	tAdjustLottery_RidGift[4021316]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021316]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021316]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021317]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021317] = {}
	tAdjustLottery_RidGift[4021317]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021317]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021317]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021317]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021317]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021317]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021317]["RewardItem"][1]["Id"] = 4021317 -- 【库】ShadowFist(+17)[属性:8], 【表格】ShadowFist
	tAdjustLottery_RidGift[4021317]["RewardItem"][1]["Attr"] = "0 1" -- ShadowFist(+17)*1
	tAdjustLottery_RidGift[4021317]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021317]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021317]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021318]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021318] = {}
	tAdjustLottery_RidGift[4021318]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021318]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021318]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021318]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021318]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021318]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021318]["RewardItem"][1]["Id"] = 4021318 -- 【库】ShadowFist(+18)[属性:8], 【表格】ShadowFist
	tAdjustLottery_RidGift[4021318]["RewardItem"][1]["Attr"] = "0 1" -- ShadowFist(+18)*1
	tAdjustLottery_RidGift[4021318]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021318]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021318]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021319]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021319] = {}
	tAdjustLottery_RidGift[4021319]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021319]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021319]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021319]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021319]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021319]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021319]["RewardItem"][1]["Id"] = 4021319 -- 【库】ShadowFist(+19)[属性:8], 【表格】ShadowFist
	tAdjustLottery_RidGift[4021319]["RewardItem"][1]["Attr"] = "0 1" -- ShadowFist(+19)*1
	tAdjustLottery_RidGift[4021319]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021319]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021319]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021320]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021320] = {}
	tAdjustLottery_RidGift[4021320]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021320]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021320]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021320]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021320]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021320]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021320]["RewardItem"][1]["Id"] = 4021320 -- 【库】ShadowFist(+20)[属性:8], 【表格】ShadowFist
	tAdjustLottery_RidGift[4021320]["RewardItem"][1]["Attr"] = "0 1" -- ShadowFist(+20)*1
	tAdjustLottery_RidGift[4021320]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021320]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021320]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021321]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021321] = {}
	tAdjustLottery_RidGift[4021321]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021321]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021321]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021321]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021321]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021321]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021321]["RewardItem"][1]["Id"] = 4021321 -- 【库】ShadowFist(+21)[属性:8], 【表格】ShadowFist
	tAdjustLottery_RidGift[4021321]["RewardItem"][1]["Attr"] = "0 1" -- ShadowFist(+21)*1
	tAdjustLottery_RidGift[4021321]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021321]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021321]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021322]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021322] = {}
	tAdjustLottery_RidGift[4021322]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021322]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021322]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021322]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021322]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021322]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021322]["RewardItem"][1]["Id"] = 4021322 -- 【库】ShadowFist(+22)[属性:8], 【表格】ShadowFist
	tAdjustLottery_RidGift[4021322]["RewardItem"][1]["Attr"] = "0 1" -- ShadowFist(+22)*1
	tAdjustLottery_RidGift[4021322]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021322]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021322]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021323]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021323] = {}
	tAdjustLottery_RidGift[4021323]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021323]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021323]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021323]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021323]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021323]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021323]["RewardItem"][1]["Id"] = 4021323 -- 【库】ShadowFist(+23)[属性:8], 【表格】ShadowFist
	tAdjustLottery_RidGift[4021323]["RewardItem"][1]["Attr"] = "0 1" -- ShadowFist(+23)*1
	tAdjustLottery_RidGift[4021323]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021323]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021323]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021324]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021324] = {}
	tAdjustLottery_RidGift[4021324]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021324]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021324]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021324]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021324]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021324]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021324]["RewardItem"][1]["Id"] = 4021324 -- 【库】ShadowFist(+24)[属性:8], 【表格】ShadowFist
	tAdjustLottery_RidGift[4021324]["RewardItem"][1]["Attr"] = "0 1" -- ShadowFist(+24)*1
	tAdjustLottery_RidGift[4021324]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021324]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021324]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021325]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021325] = {}
	tAdjustLottery_RidGift[4021325]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021325]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021325]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021325]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021325]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021325]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021325]["RewardItem"][1]["Id"] = 4021325 -- 【库】ShadowFist(+25)[属性:8], 【表格】ShadowFist
	tAdjustLottery_RidGift[4021325]["RewardItem"][1]["Attr"] = "0 1" -- ShadowFist(+25)*1
	tAdjustLottery_RidGift[4021325]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021325]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021325]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021326]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021326] = {}
	tAdjustLottery_RidGift[4021326]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021326]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021326]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021326]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021326]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021326]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021326]["RewardItem"][1]["Id"] = 4021326 -- 【库】ShadowFist(+26)[属性:8], 【表格】ShadowFist
	tAdjustLottery_RidGift[4021326]["RewardItem"][1]["Attr"] = "0 1" -- ShadowFist(+26)*1
	tAdjustLottery_RidGift[4021326]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021326]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021326]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021327]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021327] = {}
	tAdjustLottery_RidGift[4021327]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021327]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021327]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021327]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021327]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021327]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021327]["RewardItem"][1]["Id"] = 4021327 -- 【库】ShadowFist(+27)[属性:8], 【表格】ShadowFist
	tAdjustLottery_RidGift[4021327]["RewardItem"][1]["Attr"] = "0 1" -- ShadowFist(+27)*1
	tAdjustLottery_RidGift[4021327]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021327]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021327]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021401]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021401] = {}
	tAdjustLottery_RidGift[4021401]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021401]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021401]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021401]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021401]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021401]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021401]["RewardItem"][1]["Id"] = 4021401 -- 【库】Retaliation(+1)[属性:8], 【表格】Retaliation
	tAdjustLottery_RidGift[4021401]["RewardItem"][1]["Attr"] = "0 1" -- Retaliation(+1)*1
	tAdjustLottery_RidGift[4021401]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021401]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021401]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021402]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021402] = {}
	tAdjustLottery_RidGift[4021402]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021402]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021402]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021402]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021402]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021402]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021402]["RewardItem"][1]["Id"] = 4021402 -- 【库】Retaliation(+2)[属性:8], 【表格】Retaliation
	tAdjustLottery_RidGift[4021402]["RewardItem"][1]["Attr"] = "0 1" -- Retaliation(+2)*1
	tAdjustLottery_RidGift[4021402]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021402]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021402]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021403]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021403] = {}
	tAdjustLottery_RidGift[4021403]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021403]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021403]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021403]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021403]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021403]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021403]["RewardItem"][1]["Id"] = 4021403 -- 【库】Retaliation(+3)[属性:8], 【表格】Retaliation
	tAdjustLottery_RidGift[4021403]["RewardItem"][1]["Attr"] = "0 1" -- Retaliation(+3)*1
	tAdjustLottery_RidGift[4021403]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021403]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021403]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021404]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021404] = {}
	tAdjustLottery_RidGift[4021404]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021404]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021404]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021404]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021404]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021404]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021404]["RewardItem"][1]["Id"] = 4021404 -- 【库】Retaliation(+4)[属性:8], 【表格】Retaliation
	tAdjustLottery_RidGift[4021404]["RewardItem"][1]["Attr"] = "0 1" -- Retaliation(+4)*1
	tAdjustLottery_RidGift[4021404]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021404]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021404]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021405]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021405] = {}
	tAdjustLottery_RidGift[4021405]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021405]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021405]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021405]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021405]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021405]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021405]["RewardItem"][1]["Id"] = 4021405 -- 【库】Retaliation(+5)[属性:8], 【表格】Retaliation
	tAdjustLottery_RidGift[4021405]["RewardItem"][1]["Attr"] = "0 1" -- Retaliation(+5)*1
	tAdjustLottery_RidGift[4021405]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021405]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021405]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021406]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021406] = {}
	tAdjustLottery_RidGift[4021406]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021406]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021406]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021406]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021406]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021406]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021406]["RewardItem"][1]["Id"] = 4021406 -- 【库】Retaliation(+6)[属性:8], 【表格】Retaliation
	tAdjustLottery_RidGift[4021406]["RewardItem"][1]["Attr"] = "0 1" -- Retaliation(+6)*1
	tAdjustLottery_RidGift[4021406]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021406]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021406]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021407]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021407] = {}
	tAdjustLottery_RidGift[4021407]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021407]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021407]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021407]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021407]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021407]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021407]["RewardItem"][1]["Id"] = 4021407 -- 【库】Retaliation(+7)[属性:8], 【表格】Retaliation
	tAdjustLottery_RidGift[4021407]["RewardItem"][1]["Attr"] = "0 1" -- Retaliation(+7)*1
	tAdjustLottery_RidGift[4021407]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021407]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021407]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021408]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021408] = {}
	tAdjustLottery_RidGift[4021408]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021408]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021408]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021408]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021408]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021408]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021408]["RewardItem"][1]["Id"] = 4021408 -- 【库】Retaliation(+8)[属性:8], 【表格】Retaliation
	tAdjustLottery_RidGift[4021408]["RewardItem"][1]["Attr"] = "0 1" -- Retaliation(+8)*1
	tAdjustLottery_RidGift[4021408]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021408]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021408]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021409]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021409] = {}
	tAdjustLottery_RidGift[4021409]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021409]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021409]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021409]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021409]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021409]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021409]["RewardItem"][1]["Id"] = 4021409 -- 【库】Retaliation(+9)[属性:8], 【表格】Retaliation
	tAdjustLottery_RidGift[4021409]["RewardItem"][1]["Attr"] = "0 1" -- Retaliation(+9)*1
	tAdjustLottery_RidGift[4021409]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021409]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021409]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021410]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021410] = {}
	tAdjustLottery_RidGift[4021410]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021410]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021410]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021410]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021410]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021410]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021410]["RewardItem"][1]["Id"] = 4021410 -- 【库】Retaliation(+10)[属性:8], 【表格】Retaliation
	tAdjustLottery_RidGift[4021410]["RewardItem"][1]["Attr"] = "0 1" -- Retaliation(+10)*1
	tAdjustLottery_RidGift[4021410]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021410]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021410]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021411]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021411] = {}
	tAdjustLottery_RidGift[4021411]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021411]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021411]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021411]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021411]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021411]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021411]["RewardItem"][1]["Id"] = 4021411 -- 【库】Retaliation(+11)[属性:8], 【表格】Retaliation
	tAdjustLottery_RidGift[4021411]["RewardItem"][1]["Attr"] = "0 1" -- Retaliation(+11)*1
	tAdjustLottery_RidGift[4021411]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021411]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021411]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021412]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021412] = {}
	tAdjustLottery_RidGift[4021412]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021412]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021412]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021412]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021412]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021412]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021412]["RewardItem"][1]["Id"] = 4021412 -- 【库】Retaliation(+12)[属性:8], 【表格】Retaliation
	tAdjustLottery_RidGift[4021412]["RewardItem"][1]["Attr"] = "0 1" -- Retaliation(+12)*1
	tAdjustLottery_RidGift[4021412]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021412]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021412]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021413]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021413] = {}
	tAdjustLottery_RidGift[4021413]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021413]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021413]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021413]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021413]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021413]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021413]["RewardItem"][1]["Id"] = 4021413 -- 【库】Retaliation(+13)[属性:8], 【表格】Retaliation
	tAdjustLottery_RidGift[4021413]["RewardItem"][1]["Attr"] = "0 1" -- Retaliation(+13)*1
	tAdjustLottery_RidGift[4021413]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021413]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021413]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021414]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021414] = {}
	tAdjustLottery_RidGift[4021414]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021414]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021414]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021414]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021414]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021414]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021414]["RewardItem"][1]["Id"] = 4021414 -- 【库】Retaliation(+14)[属性:8], 【表格】Retaliation
	tAdjustLottery_RidGift[4021414]["RewardItem"][1]["Attr"] = "0 1" -- Retaliation(+14)*1
	tAdjustLottery_RidGift[4021414]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021414]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021414]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021415]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021415] = {}
	tAdjustLottery_RidGift[4021415]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021415]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021415]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021415]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021415]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021415]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021415]["RewardItem"][1]["Id"] = 4021415 -- 【库】Retaliation(+15)[属性:8], 【表格】Retaliation
	tAdjustLottery_RidGift[4021415]["RewardItem"][1]["Attr"] = "0 1" -- Retaliation(+15)*1
	tAdjustLottery_RidGift[4021415]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021415]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021415]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021416]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021416] = {}
	tAdjustLottery_RidGift[4021416]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021416]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021416]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021416]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021416]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021416]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021416]["RewardItem"][1]["Id"] = 4021416 -- 【库】Retaliation(+16)[属性:8], 【表格】Retaliation
	tAdjustLottery_RidGift[4021416]["RewardItem"][1]["Attr"] = "0 1" -- Retaliation(+16)*1
	tAdjustLottery_RidGift[4021416]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021416]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021416]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021417]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021417] = {}
	tAdjustLottery_RidGift[4021417]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021417]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021417]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021417]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021417]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021417]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021417]["RewardItem"][1]["Id"] = 4021417 -- 【库】Retaliation(+17)[属性:8], 【表格】Retaliation
	tAdjustLottery_RidGift[4021417]["RewardItem"][1]["Attr"] = "0 1" -- Retaliation(+17)*1
	tAdjustLottery_RidGift[4021417]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021417]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021417]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021418]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021418] = {}
	tAdjustLottery_RidGift[4021418]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021418]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021418]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021418]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021418]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021418]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021418]["RewardItem"][1]["Id"] = 4021418 -- 【库】Retaliation(+18)[属性:8], 【表格】Retaliation
	tAdjustLottery_RidGift[4021418]["RewardItem"][1]["Attr"] = "0 1" -- Retaliation(+18)*1
	tAdjustLottery_RidGift[4021418]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021418]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021418]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021419]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021419] = {}
	tAdjustLottery_RidGift[4021419]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021419]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021419]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021419]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021419]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021419]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021419]["RewardItem"][1]["Id"] = 4021419 -- 【库】Retaliation(+19)[属性:8], 【表格】Retaliation
	tAdjustLottery_RidGift[4021419]["RewardItem"][1]["Attr"] = "0 1" -- Retaliation(+19)*1
	tAdjustLottery_RidGift[4021419]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021419]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021419]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021420]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021420] = {}
	tAdjustLottery_RidGift[4021420]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021420]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021420]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021420]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021420]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021420]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021420]["RewardItem"][1]["Id"] = 4021420 -- 【库】Retaliation(+20)[属性:8], 【表格】Retaliation
	tAdjustLottery_RidGift[4021420]["RewardItem"][1]["Attr"] = "0 1" -- Retaliation(+20)*1
	tAdjustLottery_RidGift[4021420]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021420]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021420]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021421]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021421] = {}
	tAdjustLottery_RidGift[4021421]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021421]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021421]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021421]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021421]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021421]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021421]["RewardItem"][1]["Id"] = 4021421 -- 【库】Retaliation(+21)[属性:8], 【表格】Retaliation
	tAdjustLottery_RidGift[4021421]["RewardItem"][1]["Attr"] = "0 1" -- Retaliation(+21)*1
	tAdjustLottery_RidGift[4021421]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021421]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021421]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021422]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021422] = {}
	tAdjustLottery_RidGift[4021422]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021422]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021422]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021422]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021422]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021422]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021422]["RewardItem"][1]["Id"] = 4021422 -- 【库】Retaliation(+22)[属性:8], 【表格】Retaliation
	tAdjustLottery_RidGift[4021422]["RewardItem"][1]["Attr"] = "0 1" -- Retaliation(+22)*1
	tAdjustLottery_RidGift[4021422]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021422]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021422]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021423]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021423] = {}
	tAdjustLottery_RidGift[4021423]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021423]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021423]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021423]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021423]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021423]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021423]["RewardItem"][1]["Id"] = 4021423 -- 【库】Retaliation(+23)[属性:8], 【表格】Retaliation
	tAdjustLottery_RidGift[4021423]["RewardItem"][1]["Attr"] = "0 1" -- Retaliation(+23)*1
	tAdjustLottery_RidGift[4021423]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021423]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021423]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021424]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021424] = {}
	tAdjustLottery_RidGift[4021424]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021424]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021424]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021424]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021424]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021424]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021424]["RewardItem"][1]["Id"] = 4021424 -- 【库】Retaliation(+24)[属性:8], 【表格】Retaliation
	tAdjustLottery_RidGift[4021424]["RewardItem"][1]["Attr"] = "0 1" -- Retaliation(+24)*1
	tAdjustLottery_RidGift[4021424]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021424]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021424]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021425]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021425] = {}
	tAdjustLottery_RidGift[4021425]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021425]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021425]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021425]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021425]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021425]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021425]["RewardItem"][1]["Id"] = 4021425 -- 【库】Retaliation(+25)[属性:8], 【表格】Retaliation
	tAdjustLottery_RidGift[4021425]["RewardItem"][1]["Attr"] = "0 1" -- Retaliation(+25)*1
	tAdjustLottery_RidGift[4021425]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021425]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021425]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021426]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021426] = {}
	tAdjustLottery_RidGift[4021426]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021426]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021426]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021426]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021426]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021426]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021426]["RewardItem"][1]["Id"] = 4021426 -- 【库】Retaliation(+26)[属性:8], 【表格】Retaliation
	tAdjustLottery_RidGift[4021426]["RewardItem"][1]["Attr"] = "0 1" -- Retaliation(+26)*1
	tAdjustLottery_RidGift[4021426]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021426]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021426]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021427]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021427] = {}
	tAdjustLottery_RidGift[4021427]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021427]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021427]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021427]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021427]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021427]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021427]["RewardItem"][1]["Id"] = 4021427 -- 【库】Retaliation(+27)[属性:8], 【表格】Retaliation
	tAdjustLottery_RidGift[4021427]["RewardItem"][1]["Attr"] = "0 1" -- Retaliation(+27)*1
	tAdjustLottery_RidGift[4021427]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021427]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021427]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021501]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021501] = {}
	tAdjustLottery_RidGift[4021501]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021501]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021501]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021501]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021501]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021501]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021501]["RewardItem"][1]["Id"] = 4021501 -- 【库】StarRaid(+1)[属性:8], 【表格】StarRaid
	tAdjustLottery_RidGift[4021501]["RewardItem"][1]["Attr"] = "0 1" -- StarRaid(+1)*1
	tAdjustLottery_RidGift[4021501]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021501]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021501]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021502]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021502] = {}
	tAdjustLottery_RidGift[4021502]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021502]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021502]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021502]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021502]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021502]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021502]["RewardItem"][1]["Id"] = 4021502 -- 【库】StarRaid(+2)[属性:8], 【表格】StarRaid
	tAdjustLottery_RidGift[4021502]["RewardItem"][1]["Attr"] = "0 1" -- StarRaid(+2)*1
	tAdjustLottery_RidGift[4021502]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021502]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021502]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021503]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021503] = {}
	tAdjustLottery_RidGift[4021503]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021503]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021503]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021503]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021503]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021503]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021503]["RewardItem"][1]["Id"] = 4021503 -- 【库】StarRaid(+3)[属性:8], 【表格】StarRaid
	tAdjustLottery_RidGift[4021503]["RewardItem"][1]["Attr"] = "0 1" -- StarRaid(+3)*1
	tAdjustLottery_RidGift[4021503]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021503]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021503]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021504]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021504] = {}
	tAdjustLottery_RidGift[4021504]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021504]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021504]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021504]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021504]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021504]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021504]["RewardItem"][1]["Id"] = 4021504 -- 【库】StarRaid(+4)[属性:8], 【表格】StarRaid
	tAdjustLottery_RidGift[4021504]["RewardItem"][1]["Attr"] = "0 1" -- StarRaid(+4)*1
	tAdjustLottery_RidGift[4021504]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021504]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021504]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021505]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021505] = {}
	tAdjustLottery_RidGift[4021505]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021505]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021505]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021505]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021505]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021505]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021505]["RewardItem"][1]["Id"] = 4021505 -- 【库】StarRaid(+5)[属性:8], 【表格】StarRaid
	tAdjustLottery_RidGift[4021505]["RewardItem"][1]["Attr"] = "0 1" -- StarRaid(+5)*1
	tAdjustLottery_RidGift[4021505]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021505]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021505]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021506]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021506] = {}
	tAdjustLottery_RidGift[4021506]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021506]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021506]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021506]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021506]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021506]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021506]["RewardItem"][1]["Id"] = 4021506 -- 【库】StarRaid(+6)[属性:8], 【表格】StarRaid
	tAdjustLottery_RidGift[4021506]["RewardItem"][1]["Attr"] = "0 1" -- StarRaid(+6)*1
	tAdjustLottery_RidGift[4021506]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021506]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021506]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021507]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021507] = {}
	tAdjustLottery_RidGift[4021507]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021507]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021507]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021507]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021507]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021507]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021507]["RewardItem"][1]["Id"] = 4021507 -- 【库】StarRaid(+7)[属性:8], 【表格】StarRaid
	tAdjustLottery_RidGift[4021507]["RewardItem"][1]["Attr"] = "0 1" -- StarRaid(+7)*1
	tAdjustLottery_RidGift[4021507]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021507]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021507]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021508]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021508] = {}
	tAdjustLottery_RidGift[4021508]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021508]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021508]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021508]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021508]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021508]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021508]["RewardItem"][1]["Id"] = 4021508 -- 【库】StarRaid(+8)[属性:8], 【表格】StarRaid
	tAdjustLottery_RidGift[4021508]["RewardItem"][1]["Attr"] = "0 1" -- StarRaid(+8)*1
	tAdjustLottery_RidGift[4021508]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021508]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021508]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021509]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021509] = {}
	tAdjustLottery_RidGift[4021509]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021509]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021509]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021509]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021509]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021509]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021509]["RewardItem"][1]["Id"] = 4021509 -- 【库】StarRaid(+9)[属性:8], 【表格】StarRaid
	tAdjustLottery_RidGift[4021509]["RewardItem"][1]["Attr"] = "0 1" -- StarRaid(+9)*1
	tAdjustLottery_RidGift[4021509]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021509]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021509]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021510]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021510] = {}
	tAdjustLottery_RidGift[4021510]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021510]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021510]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021510]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021510]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021510]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021510]["RewardItem"][1]["Id"] = 4021510 -- 【库】StarRaid(+10)[属性:8], 【表格】StarRaid
	tAdjustLottery_RidGift[4021510]["RewardItem"][1]["Attr"] = "0 1" -- StarRaid(+10)*1
	tAdjustLottery_RidGift[4021510]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021510]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021510]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021511]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021511] = {}
	tAdjustLottery_RidGift[4021511]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021511]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021511]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021511]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021511]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021511]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021511]["RewardItem"][1]["Id"] = 4021511 -- 【库】StarRaid(+11)[属性:8], 【表格】StarRaid
	tAdjustLottery_RidGift[4021511]["RewardItem"][1]["Attr"] = "0 1" -- StarRaid(+11)*1
	tAdjustLottery_RidGift[4021511]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021511]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021511]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021512]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021512] = {}
	tAdjustLottery_RidGift[4021512]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021512]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021512]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021512]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021512]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021512]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021512]["RewardItem"][1]["Id"] = 4021512 -- 【库】StarRaid(+12)[属性:8], 【表格】StarRaid
	tAdjustLottery_RidGift[4021512]["RewardItem"][1]["Attr"] = "0 1" -- StarRaid(+12)*1
	tAdjustLottery_RidGift[4021512]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021512]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021512]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021513]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021513] = {}
	tAdjustLottery_RidGift[4021513]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021513]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021513]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021513]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021513]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021513]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021513]["RewardItem"][1]["Id"] = 4021513 -- 【库】StarRaid(+13)[属性:8], 【表格】StarRaid
	tAdjustLottery_RidGift[4021513]["RewardItem"][1]["Attr"] = "0 1" -- StarRaid(+13)*1
	tAdjustLottery_RidGift[4021513]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021513]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021513]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021514]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021514] = {}
	tAdjustLottery_RidGift[4021514]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021514]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021514]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021514]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021514]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021514]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021514]["RewardItem"][1]["Id"] = 4021514 -- 【库】StarRaid(+14)[属性:8], 【表格】StarRaid
	tAdjustLottery_RidGift[4021514]["RewardItem"][1]["Attr"] = "0 1" -- StarRaid(+14)*1
	tAdjustLottery_RidGift[4021514]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021514]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021514]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021515]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021515] = {}
	tAdjustLottery_RidGift[4021515]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021515]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021515]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021515]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021515]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021515]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021515]["RewardItem"][1]["Id"] = 4021515 -- 【库】StarRaid(+15)[属性:8], 【表格】StarRaid
	tAdjustLottery_RidGift[4021515]["RewardItem"][1]["Attr"] = "0 1" -- StarRaid(+15)*1
	tAdjustLottery_RidGift[4021515]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021515]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021515]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021516]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021516] = {}
	tAdjustLottery_RidGift[4021516]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021516]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021516]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021516]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021516]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021516]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021516]["RewardItem"][1]["Id"] = 4021516 -- 【库】StarRaid(+16)[属性:8], 【表格】StarRaid
	tAdjustLottery_RidGift[4021516]["RewardItem"][1]["Attr"] = "0 1" -- StarRaid(+16)*1
	tAdjustLottery_RidGift[4021516]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021516]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021516]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021517]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021517] = {}
	tAdjustLottery_RidGift[4021517]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021517]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021517]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021517]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021517]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021517]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021517]["RewardItem"][1]["Id"] = 4021517 -- 【库】StarRaid(+17)[属性:8], 【表格】StarRaid
	tAdjustLottery_RidGift[4021517]["RewardItem"][1]["Attr"] = "0 1" -- StarRaid(+17)*1
	tAdjustLottery_RidGift[4021517]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021517]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021517]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021518]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021518] = {}
	tAdjustLottery_RidGift[4021518]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021518]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021518]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021518]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021518]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021518]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021518]["RewardItem"][1]["Id"] = 4021518 -- 【库】StarRaid(+18)[属性:8], 【表格】StarRaid
	tAdjustLottery_RidGift[4021518]["RewardItem"][1]["Attr"] = "0 1" -- StarRaid(+18)*1
	tAdjustLottery_RidGift[4021518]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021518]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021518]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021519]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021519] = {}
	tAdjustLottery_RidGift[4021519]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021519]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021519]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021519]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021519]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021519]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021519]["RewardItem"][1]["Id"] = 4021519 -- 【库】StarRaid(+19)[属性:8], 【表格】StarRaid
	tAdjustLottery_RidGift[4021519]["RewardItem"][1]["Attr"] = "0 1" -- StarRaid(+19)*1
	tAdjustLottery_RidGift[4021519]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021519]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021519]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021520]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021520] = {}
	tAdjustLottery_RidGift[4021520]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021520]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021520]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021520]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021520]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021520]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021520]["RewardItem"][1]["Id"] = 4021520 -- 【库】StarRaid(+20)[属性:8], 【表格】StarRaid
	tAdjustLottery_RidGift[4021520]["RewardItem"][1]["Attr"] = "0 1" -- StarRaid(+20)*1
	tAdjustLottery_RidGift[4021520]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021520]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021520]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021521]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021521] = {}
	tAdjustLottery_RidGift[4021521]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021521]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021521]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021521]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021521]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021521]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021521]["RewardItem"][1]["Id"] = 4021521 -- 【库】StarRaid(+21)[属性:8], 【表格】StarRaid
	tAdjustLottery_RidGift[4021521]["RewardItem"][1]["Attr"] = "0 1" -- StarRaid(+21)*1
	tAdjustLottery_RidGift[4021521]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021521]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021521]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021522]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021522] = {}
	tAdjustLottery_RidGift[4021522]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021522]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021522]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021522]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021522]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021522]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021522]["RewardItem"][1]["Id"] = 4021522 -- 【库】StarRaid(+22)[属性:8], 【表格】StarRaid
	tAdjustLottery_RidGift[4021522]["RewardItem"][1]["Attr"] = "0 1" -- StarRaid(+22)*1
	tAdjustLottery_RidGift[4021522]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021522]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021522]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021523]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021523] = {}
	tAdjustLottery_RidGift[4021523]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021523]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021523]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021523]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021523]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021523]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021523]["RewardItem"][1]["Id"] = 4021523 -- 【库】StarRaid(+23)[属性:8], 【表格】StarRaid
	tAdjustLottery_RidGift[4021523]["RewardItem"][1]["Attr"] = "0 1" -- StarRaid(+23)*1
	tAdjustLottery_RidGift[4021523]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021523]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021523]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021524]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021524] = {}
	tAdjustLottery_RidGift[4021524]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021524]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021524]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021524]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021524]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021524]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021524]["RewardItem"][1]["Id"] = 4021524 -- 【库】StarRaid(+24)[属性:8], 【表格】StarRaid
	tAdjustLottery_RidGift[4021524]["RewardItem"][1]["Attr"] = "0 1" -- StarRaid(+24)*1
	tAdjustLottery_RidGift[4021524]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021524]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021524]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021525]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021525] = {}
	tAdjustLottery_RidGift[4021525]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021525]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021525]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021525]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021525]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021525]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021525]["RewardItem"][1]["Id"] = 4021525 -- 【库】StarRaid(+25)[属性:8], 【表格】StarRaid
	tAdjustLottery_RidGift[4021525]["RewardItem"][1]["Attr"] = "0 1" -- StarRaid(+25)*1
	tAdjustLottery_RidGift[4021525]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021525]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021525]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021526]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021526] = {}
	tAdjustLottery_RidGift[4021526]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021526]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021526]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021526]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021526]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021526]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021526]["RewardItem"][1]["Id"] = 4021526 -- 【库】StarRaid(+26)[属性:8], 【表格】StarRaid
	tAdjustLottery_RidGift[4021526]["RewardItem"][1]["Attr"] = "0 1" -- StarRaid(+26)*1
	tAdjustLottery_RidGift[4021526]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021526]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021526]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021527]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021527] = {}
	tAdjustLottery_RidGift[4021527]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021527]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021527]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021527]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021527]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021527]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021527]["RewardItem"][1]["Id"] = 4021527 -- 【库】StarRaid(+27)[属性:8], 【表格】StarRaid
	tAdjustLottery_RidGift[4021527]["RewardItem"][1]["Attr"] = "0 1" -- StarRaid(+27)*1
	tAdjustLottery_RidGift[4021527]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021527]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021527]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021601]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021601] = {}
	tAdjustLottery_RidGift[4021601]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021601]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021601]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021601]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021601]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021601]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021601]["RewardItem"][1]["Id"] = 4021601 -- 【库】Duel(+1)[属性:8], 【表格】Duel
	tAdjustLottery_RidGift[4021601]["RewardItem"][1]["Attr"] = "0 1" -- Duel(+1)*1
	tAdjustLottery_RidGift[4021601]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021601]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021601]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021602]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021602] = {}
	tAdjustLottery_RidGift[4021602]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021602]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021602]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021602]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021602]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021602]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021602]["RewardItem"][1]["Id"] = 4021602 -- 【库】Duel(+2)[属性:8], 【表格】Duel
	tAdjustLottery_RidGift[4021602]["RewardItem"][1]["Attr"] = "0 1" -- Duel(+2)*1
	tAdjustLottery_RidGift[4021602]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021602]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021602]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021603]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021603] = {}
	tAdjustLottery_RidGift[4021603]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021603]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021603]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021603]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021603]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021603]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021603]["RewardItem"][1]["Id"] = 4021603 -- 【库】Duel(+3)[属性:8], 【表格】Duel
	tAdjustLottery_RidGift[4021603]["RewardItem"][1]["Attr"] = "0 1" -- Duel(+3)*1
	tAdjustLottery_RidGift[4021603]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021603]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021603]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021604]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021604] = {}
	tAdjustLottery_RidGift[4021604]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021604]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021604]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021604]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021604]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021604]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021604]["RewardItem"][1]["Id"] = 4021604 -- 【库】Duel(+4)[属性:8], 【表格】Duel
	tAdjustLottery_RidGift[4021604]["RewardItem"][1]["Attr"] = "0 1" -- Duel(+4)*1
	tAdjustLottery_RidGift[4021604]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021604]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021604]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021605]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021605] = {}
	tAdjustLottery_RidGift[4021605]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021605]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021605]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021605]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021605]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021605]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021605]["RewardItem"][1]["Id"] = 4021605 -- 【库】Duel(+5)[属性:8], 【表格】Duel
	tAdjustLottery_RidGift[4021605]["RewardItem"][1]["Attr"] = "0 1" -- Duel(+5)*1
	tAdjustLottery_RidGift[4021605]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021605]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021605]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021606]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021606] = {}
	tAdjustLottery_RidGift[4021606]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021606]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021606]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021606]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021606]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021606]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021606]["RewardItem"][1]["Id"] = 4021606 -- 【库】Duel(+6)[属性:8], 【表格】Duel
	tAdjustLottery_RidGift[4021606]["RewardItem"][1]["Attr"] = "0 1" -- Duel(+6)*1
	tAdjustLottery_RidGift[4021606]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021606]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021606]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021607]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021607] = {}
	tAdjustLottery_RidGift[4021607]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021607]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021607]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021607]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021607]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021607]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021607]["RewardItem"][1]["Id"] = 4021607 -- 【库】Duel(+7)[属性:8], 【表格】Duel
	tAdjustLottery_RidGift[4021607]["RewardItem"][1]["Attr"] = "0 1" -- Duel(+7)*1
	tAdjustLottery_RidGift[4021607]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021607]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021607]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021608]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021608] = {}
	tAdjustLottery_RidGift[4021608]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021608]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021608]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021608]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021608]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021608]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021608]["RewardItem"][1]["Id"] = 4021608 -- 【库】Duel(+8)[属性:8], 【表格】Duel
	tAdjustLottery_RidGift[4021608]["RewardItem"][1]["Attr"] = "0 1" -- Duel(+8)*1
	tAdjustLottery_RidGift[4021608]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021608]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021608]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021609]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021609] = {}
	tAdjustLottery_RidGift[4021609]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021609]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021609]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021609]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021609]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021609]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021609]["RewardItem"][1]["Id"] = 4021609 -- 【库】Duel(+9)[属性:8], 【表格】Duel
	tAdjustLottery_RidGift[4021609]["RewardItem"][1]["Attr"] = "0 1" -- Duel(+9)*1
	tAdjustLottery_RidGift[4021609]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021609]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021609]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021610]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021610] = {}
	tAdjustLottery_RidGift[4021610]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021610]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021610]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021610]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021610]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021610]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021610]["RewardItem"][1]["Id"] = 4021610 -- 【库】Duel(+10)[属性:8], 【表格】Duel
	tAdjustLottery_RidGift[4021610]["RewardItem"][1]["Attr"] = "0 1" -- Duel(+10)*1
	tAdjustLottery_RidGift[4021610]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021610]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021610]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021611]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021611] = {}
	tAdjustLottery_RidGift[4021611]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021611]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021611]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021611]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021611]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021611]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021611]["RewardItem"][1]["Id"] = 4021611 -- 【库】Duel(+11)[属性:8], 【表格】Duel
	tAdjustLottery_RidGift[4021611]["RewardItem"][1]["Attr"] = "0 1" -- Duel(+11)*1
	tAdjustLottery_RidGift[4021611]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021611]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021611]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021612]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021612] = {}
	tAdjustLottery_RidGift[4021612]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021612]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021612]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021612]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021612]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021612]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021612]["RewardItem"][1]["Id"] = 4021612 -- 【库】Duel(+12)[属性:8], 【表格】Duel
	tAdjustLottery_RidGift[4021612]["RewardItem"][1]["Attr"] = "0 1" -- Duel(+12)*1
	tAdjustLottery_RidGift[4021612]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021612]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021612]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021613]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021613] = {}
	tAdjustLottery_RidGift[4021613]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021613]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021613]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021613]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021613]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021613]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021613]["RewardItem"][1]["Id"] = 4021613 -- 【库】Duel(+13)[属性:8], 【表格】Duel
	tAdjustLottery_RidGift[4021613]["RewardItem"][1]["Attr"] = "0 1" -- Duel(+13)*1
	tAdjustLottery_RidGift[4021613]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021613]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021613]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021614]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021614] = {}
	tAdjustLottery_RidGift[4021614]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021614]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021614]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021614]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021614]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021614]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021614]["RewardItem"][1]["Id"] = 4021614 -- 【库】Duel(+14)[属性:8], 【表格】Duel
	tAdjustLottery_RidGift[4021614]["RewardItem"][1]["Attr"] = "0 1" -- Duel(+14)*1
	tAdjustLottery_RidGift[4021614]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021614]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021614]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021615]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021615] = {}
	tAdjustLottery_RidGift[4021615]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021615]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021615]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021615]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021615]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021615]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021615]["RewardItem"][1]["Id"] = 4021615 -- 【库】Duel(+15)[属性:8], 【表格】Duel
	tAdjustLottery_RidGift[4021615]["RewardItem"][1]["Attr"] = "0 1" -- Duel(+15)*1
	tAdjustLottery_RidGift[4021615]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021615]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021615]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021616]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021616] = {}
	tAdjustLottery_RidGift[4021616]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021616]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021616]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021616]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021616]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021616]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021616]["RewardItem"][1]["Id"] = 4021616 -- 【库】Duel(+16)[属性:8], 【表格】Duel
	tAdjustLottery_RidGift[4021616]["RewardItem"][1]["Attr"] = "0 1" -- Duel(+16)*1
	tAdjustLottery_RidGift[4021616]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021616]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021616]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021617]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021617] = {}
	tAdjustLottery_RidGift[4021617]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021617]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021617]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021617]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021617]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021617]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021617]["RewardItem"][1]["Id"] = 4021617 -- 【库】Duel(+17)[属性:8], 【表格】Duel
	tAdjustLottery_RidGift[4021617]["RewardItem"][1]["Attr"] = "0 1" -- Duel(+17)*1
	tAdjustLottery_RidGift[4021617]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021617]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021617]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021618]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021618] = {}
	tAdjustLottery_RidGift[4021618]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021618]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021618]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021618]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021618]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021618]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021618]["RewardItem"][1]["Id"] = 4021618 -- 【库】Duel(+18)[属性:8], 【表格】Duel
	tAdjustLottery_RidGift[4021618]["RewardItem"][1]["Attr"] = "0 1" -- Duel(+18)*1
	tAdjustLottery_RidGift[4021618]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021618]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021618]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021619]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021619] = {}
	tAdjustLottery_RidGift[4021619]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021619]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021619]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021619]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021619]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021619]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021619]["RewardItem"][1]["Id"] = 4021619 -- 【库】Duel(+19)[属性:8], 【表格】Duel
	tAdjustLottery_RidGift[4021619]["RewardItem"][1]["Attr"] = "0 1" -- Duel(+19)*1
	tAdjustLottery_RidGift[4021619]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021619]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021619]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021620]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021620] = {}
	tAdjustLottery_RidGift[4021620]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021620]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021620]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021620]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021620]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021620]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021620]["RewardItem"][1]["Id"] = 4021620 -- 【库】Duel(+20)[属性:8], 【表格】Duel
	tAdjustLottery_RidGift[4021620]["RewardItem"][1]["Attr"] = "0 1" -- Duel(+20)*1
	tAdjustLottery_RidGift[4021620]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021620]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021620]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021621]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021621] = {}
	tAdjustLottery_RidGift[4021621]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021621]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021621]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021621]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021621]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021621]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021621]["RewardItem"][1]["Id"] = 4021621 -- 【库】Duel(+21)[属性:8], 【表格】Duel
	tAdjustLottery_RidGift[4021621]["RewardItem"][1]["Attr"] = "0 1" -- Duel(+21)*1
	tAdjustLottery_RidGift[4021621]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021621]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021621]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021622]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021622] = {}
	tAdjustLottery_RidGift[4021622]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021622]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021622]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021622]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021622]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021622]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021622]["RewardItem"][1]["Id"] = 4021622 -- 【库】Duel(+22)[属性:8], 【表格】Duel
	tAdjustLottery_RidGift[4021622]["RewardItem"][1]["Attr"] = "0 1" -- Duel(+22)*1
	tAdjustLottery_RidGift[4021622]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021622]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021622]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021623]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021623] = {}
	tAdjustLottery_RidGift[4021623]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021623]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021623]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021623]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021623]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021623]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021623]["RewardItem"][1]["Id"] = 4021623 -- 【库】Duel(+23)[属性:8], 【表格】Duel
	tAdjustLottery_RidGift[4021623]["RewardItem"][1]["Attr"] = "0 1" -- Duel(+23)*1
	tAdjustLottery_RidGift[4021623]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021623]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021623]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021624]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021624] = {}
	tAdjustLottery_RidGift[4021624]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021624]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021624]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021624]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021624]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021624]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021624]["RewardItem"][1]["Id"] = 4021624 -- 【库】Duel(+24)[属性:8], 【表格】Duel
	tAdjustLottery_RidGift[4021624]["RewardItem"][1]["Attr"] = "0 1" -- Duel(+24)*1
	tAdjustLottery_RidGift[4021624]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021624]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021624]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021625]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021625] = {}
	tAdjustLottery_RidGift[4021625]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021625]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021625]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021625]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021625]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021625]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021625]["RewardItem"][1]["Id"] = 4021625 -- 【库】Duel(+25)[属性:8], 【表格】Duel
	tAdjustLottery_RidGift[4021625]["RewardItem"][1]["Attr"] = "0 1" -- Duel(+25)*1
	tAdjustLottery_RidGift[4021625]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021625]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021625]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021626]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021626] = {}
	tAdjustLottery_RidGift[4021626]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021626]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021626]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021626]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021626]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021626]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021626]["RewardItem"][1]["Id"] = 4021626 -- 【库】Duel(+26)[属性:8], 【表格】Duel
	tAdjustLottery_RidGift[4021626]["RewardItem"][1]["Attr"] = "0 1" -- Duel(+26)*1
	tAdjustLottery_RidGift[4021626]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021626]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021626]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021627]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021627] = {}
	tAdjustLottery_RidGift[4021627]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021627]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021627]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021627]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021627]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021627]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021627]["RewardItem"][1]["Id"] = 4021627 -- 【库】Duel(+27)[属性:8], 【表格】Duel
	tAdjustLottery_RidGift[4021627]["RewardItem"][1]["Attr"] = "0 1" -- Duel(+27)*1
	tAdjustLottery_RidGift[4021627]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021627]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021627]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021701]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021701] = {}
	tAdjustLottery_RidGift[4021701]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021701]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021701]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021701]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021701]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021701]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021701]["RewardItem"][1]["Id"] = 4021701 -- 【库】Neptune`sCurse(+1)[属性:8], 【表格】Neptune`sCurse
	tAdjustLottery_RidGift[4021701]["RewardItem"][1]["Attr"] = "0 1" -- Neptune`sCurse(+1)*1
	tAdjustLottery_RidGift[4021701]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021701]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021701]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021702]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021702] = {}
	tAdjustLottery_RidGift[4021702]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021702]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021702]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021702]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021702]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021702]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021702]["RewardItem"][1]["Id"] = 4021702 -- 【库】Neptune`sCurse(+2)[属性:8], 【表格】Neptune`sCurse
	tAdjustLottery_RidGift[4021702]["RewardItem"][1]["Attr"] = "0 1" -- Neptune`sCurse(+2)*1
	tAdjustLottery_RidGift[4021702]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021702]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021702]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021703]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021703] = {}
	tAdjustLottery_RidGift[4021703]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021703]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021703]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021703]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021703]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021703]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021703]["RewardItem"][1]["Id"] = 4021703 -- 【库】Neptune`sCurse(+3)[属性:8], 【表格】Neptune`sCurse
	tAdjustLottery_RidGift[4021703]["RewardItem"][1]["Attr"] = "0 1" -- Neptune`sCurse(+3)*1
	tAdjustLottery_RidGift[4021703]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021703]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021703]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021704]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021704] = {}
	tAdjustLottery_RidGift[4021704]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021704]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021704]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021704]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021704]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021704]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021704]["RewardItem"][1]["Id"] = 4021704 -- 【库】Neptune`sCurse(+4)[属性:8], 【表格】Neptune`sCurse
	tAdjustLottery_RidGift[4021704]["RewardItem"][1]["Attr"] = "0 1" -- Neptune`sCurse(+4)*1
	tAdjustLottery_RidGift[4021704]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021704]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021704]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021705]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021705] = {}
	tAdjustLottery_RidGift[4021705]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021705]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021705]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021705]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021705]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021705]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021705]["RewardItem"][1]["Id"] = 4021705 -- 【库】Neptune`sCurse(+5)[属性:8], 【表格】Neptune`sCurse
	tAdjustLottery_RidGift[4021705]["RewardItem"][1]["Attr"] = "0 1" -- Neptune`sCurse(+5)*1
	tAdjustLottery_RidGift[4021705]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021705]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021705]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021706]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021706] = {}
	tAdjustLottery_RidGift[4021706]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021706]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021706]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021706]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021706]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021706]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021706]["RewardItem"][1]["Id"] = 4021706 -- 【库】Neptune`sCurse(+6)[属性:8], 【表格】Neptune`sCurse
	tAdjustLottery_RidGift[4021706]["RewardItem"][1]["Attr"] = "0 1" -- Neptune`sCurse(+6)*1
	tAdjustLottery_RidGift[4021706]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021706]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021706]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021707]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021707] = {}
	tAdjustLottery_RidGift[4021707]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021707]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021707]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021707]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021707]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021707]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021707]["RewardItem"][1]["Id"] = 4021707 -- 【库】Neptune`sCurse(+7)[属性:8], 【表格】Neptune`sCurse
	tAdjustLottery_RidGift[4021707]["RewardItem"][1]["Attr"] = "0 1" -- Neptune`sCurse(+7)*1
	tAdjustLottery_RidGift[4021707]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021707]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021707]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021708]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021708] = {}
	tAdjustLottery_RidGift[4021708]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021708]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021708]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021708]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021708]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021708]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021708]["RewardItem"][1]["Id"] = 4021708 -- 【库】Neptune`sCurse(+8)[属性:8], 【表格】Neptune`sCurse
	tAdjustLottery_RidGift[4021708]["RewardItem"][1]["Attr"] = "0 1" -- Neptune`sCurse(+8)*1
	tAdjustLottery_RidGift[4021708]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021708]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021708]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021709]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021709] = {}
	tAdjustLottery_RidGift[4021709]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021709]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021709]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021709]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021709]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021709]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021709]["RewardItem"][1]["Id"] = 4021709 -- 【库】Neptune`sCurse(+9)[属性:8], 【表格】Neptune`sCurse
	tAdjustLottery_RidGift[4021709]["RewardItem"][1]["Attr"] = "0 1" -- Neptune`sCurse(+9)*1
	tAdjustLottery_RidGift[4021709]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021709]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021709]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021710]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021710] = {}
	tAdjustLottery_RidGift[4021710]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021710]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021710]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021710]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021710]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021710]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021710]["RewardItem"][1]["Id"] = 4021710 -- 【库】Neptune`sCurse(+10)[属性:8], 【表格】Neptune`sCurse
	tAdjustLottery_RidGift[4021710]["RewardItem"][1]["Attr"] = "0 1" -- Neptune`sCurse(+10)*1
	tAdjustLottery_RidGift[4021710]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021710]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021710]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021711]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021711] = {}
	tAdjustLottery_RidGift[4021711]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021711]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021711]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021711]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021711]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021711]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021711]["RewardItem"][1]["Id"] = 4021711 -- 【库】Neptune`sCurse(+11)[属性:8], 【表格】Neptune`sCurse
	tAdjustLottery_RidGift[4021711]["RewardItem"][1]["Attr"] = "0 1" -- Neptune`sCurse(+11)*1
	tAdjustLottery_RidGift[4021711]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021711]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021711]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021712]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021712] = {}
	tAdjustLottery_RidGift[4021712]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021712]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021712]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021712]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021712]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021712]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021712]["RewardItem"][1]["Id"] = 4021712 -- 【库】Neptune`sCurse(+12)[属性:8], 【表格】Neptune`sCurse
	tAdjustLottery_RidGift[4021712]["RewardItem"][1]["Attr"] = "0 1" -- Neptune`sCurse(+12)*1
	tAdjustLottery_RidGift[4021712]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021712]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021712]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021713]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021713] = {}
	tAdjustLottery_RidGift[4021713]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021713]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021713]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021713]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021713]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021713]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021713]["RewardItem"][1]["Id"] = 4021713 -- 【库】Neptune`sCurse(+13)[属性:8], 【表格】Neptune`sCurse
	tAdjustLottery_RidGift[4021713]["RewardItem"][1]["Attr"] = "0 1" -- Neptune`sCurse(+13)*1
	tAdjustLottery_RidGift[4021713]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021713]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021713]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021714]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021714] = {}
	tAdjustLottery_RidGift[4021714]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021714]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021714]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021714]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021714]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021714]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021714]["RewardItem"][1]["Id"] = 4021714 -- 【库】Neptune`sCurse(+14)[属性:8], 【表格】Neptune`sCurse
	tAdjustLottery_RidGift[4021714]["RewardItem"][1]["Attr"] = "0 1" -- Neptune`sCurse(+14)*1
	tAdjustLottery_RidGift[4021714]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021714]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021714]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021715]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021715] = {}
	tAdjustLottery_RidGift[4021715]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021715]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021715]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021715]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021715]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021715]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021715]["RewardItem"][1]["Id"] = 4021715 -- 【库】Neptune`sCurse(+15)[属性:8], 【表格】Neptune`sCurse
	tAdjustLottery_RidGift[4021715]["RewardItem"][1]["Attr"] = "0 1" -- Neptune`sCurse(+15)*1
	tAdjustLottery_RidGift[4021715]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021715]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021715]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021716]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021716] = {}
	tAdjustLottery_RidGift[4021716]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021716]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021716]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021716]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021716]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021716]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021716]["RewardItem"][1]["Id"] = 4021716 -- 【库】Neptune`sCurse(+16)[属性:8], 【表格】Neptune`sCurse
	tAdjustLottery_RidGift[4021716]["RewardItem"][1]["Attr"] = "0 1" -- Neptune`sCurse(+16)*1
	tAdjustLottery_RidGift[4021716]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021716]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021716]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021717]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021717] = {}
	tAdjustLottery_RidGift[4021717]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021717]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021717]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021717]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021717]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021717]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021717]["RewardItem"][1]["Id"] = 4021717 -- 【库】Neptune`sCurse(+17)[属性:8], 【表格】Neptune`sCurse
	tAdjustLottery_RidGift[4021717]["RewardItem"][1]["Attr"] = "0 1" -- Neptune`sCurse(+17)*1
	tAdjustLottery_RidGift[4021717]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021717]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021717]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021718]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021718] = {}
	tAdjustLottery_RidGift[4021718]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021718]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021718]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021718]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021718]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021718]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021718]["RewardItem"][1]["Id"] = 4021718 -- 【库】Neptune`sCurse(+18)[属性:8], 【表格】Neptune`sCurse
	tAdjustLottery_RidGift[4021718]["RewardItem"][1]["Attr"] = "0 1" -- Neptune`sCurse(+18)*1
	tAdjustLottery_RidGift[4021718]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021718]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021718]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021719]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021719] = {}
	tAdjustLottery_RidGift[4021719]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021719]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021719]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021719]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021719]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021719]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021719]["RewardItem"][1]["Id"] = 4021719 -- 【库】Neptune`sCurse(+19)[属性:8], 【表格】Neptune`sCurse
	tAdjustLottery_RidGift[4021719]["RewardItem"][1]["Attr"] = "0 1" -- Neptune`sCurse(+19)*1
	tAdjustLottery_RidGift[4021719]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021719]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021719]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021720]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021720] = {}
	tAdjustLottery_RidGift[4021720]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021720]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021720]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021720]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021720]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021720]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021720]["RewardItem"][1]["Id"] = 4021720 -- 【库】Neptune`sCurse(+20)[属性:8], 【表格】Neptune`sCurse
	tAdjustLottery_RidGift[4021720]["RewardItem"][1]["Attr"] = "0 1" -- Neptune`sCurse(+20)*1
	tAdjustLottery_RidGift[4021720]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021720]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021720]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021721]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021721] = {}
	tAdjustLottery_RidGift[4021721]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021721]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021721]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021721]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021721]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021721]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021721]["RewardItem"][1]["Id"] = 4021721 -- 【库】Neptune`sCurse(+21)[属性:8], 【表格】Neptune`sCurse
	tAdjustLottery_RidGift[4021721]["RewardItem"][1]["Attr"] = "0 1" -- Neptune`sCurse(+21)*1
	tAdjustLottery_RidGift[4021721]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021721]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021721]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021722]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021722] = {}
	tAdjustLottery_RidGift[4021722]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021722]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021722]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021722]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021722]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021722]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021722]["RewardItem"][1]["Id"] = 4021722 -- 【库】Neptune`sCurse(+22)[属性:8], 【表格】Neptune`sCurse
	tAdjustLottery_RidGift[4021722]["RewardItem"][1]["Attr"] = "0 1" -- Neptune`sCurse(+22)*1
	tAdjustLottery_RidGift[4021722]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021722]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021722]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021723]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021723] = {}
	tAdjustLottery_RidGift[4021723]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021723]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021723]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021723]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021723]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021723]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021723]["RewardItem"][1]["Id"] = 4021723 -- 【库】Neptune`sCurse(+23)[属性:8], 【表格】Neptune`sCurse
	tAdjustLottery_RidGift[4021723]["RewardItem"][1]["Attr"] = "0 1" -- Neptune`sCurse(+23)*1
	tAdjustLottery_RidGift[4021723]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021723]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021723]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021724]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021724] = {}
	tAdjustLottery_RidGift[4021724]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021724]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021724]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021724]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021724]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021724]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021724]["RewardItem"][1]["Id"] = 4021724 -- 【库】Neptune`sCurse(+24)[属性:8], 【表格】Neptune`sCurse
	tAdjustLottery_RidGift[4021724]["RewardItem"][1]["Attr"] = "0 1" -- Neptune`sCurse(+24)*1
	tAdjustLottery_RidGift[4021724]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021724]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021724]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021725]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021725] = {}
	tAdjustLottery_RidGift[4021725]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021725]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021725]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021725]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021725]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021725]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021725]["RewardItem"][1]["Id"] = 4021725 -- 【库】Neptune`sCurse(+25)[属性:8], 【表格】Neptune`sCurse
	tAdjustLottery_RidGift[4021725]["RewardItem"][1]["Attr"] = "0 1" -- Neptune`sCurse(+25)*1
	tAdjustLottery_RidGift[4021725]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021725]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021725]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021726]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021726] = {}
	tAdjustLottery_RidGift[4021726]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021726]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021726]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021726]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021726]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021726]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021726]["RewardItem"][1]["Id"] = 4021726 -- 【库】Neptune`sCurse(+26)[属性:8], 【表格】Neptune`sCurse
	tAdjustLottery_RidGift[4021726]["RewardItem"][1]["Attr"] = "0 1" -- Neptune`sCurse(+26)*1
	tAdjustLottery_RidGift[4021726]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021726]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021726]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021727]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021727] = {}
	tAdjustLottery_RidGift[4021727]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021727]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021727]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021727]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021727]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021727]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021727]["RewardItem"][1]["Id"] = 4021727 -- 【库】Neptune`sCurse(+27)[属性:8], 【表格】Neptune`sCurse
	tAdjustLottery_RidGift[4021727]["RewardItem"][1]["Attr"] = "0 1" -- Neptune`sCurse(+27)*1
	tAdjustLottery_RidGift[4021727]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021727]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021727]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021801]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021801] = {}
	tAdjustLottery_RidGift[4021801]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021801]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021801]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021801]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021801]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021801]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021801]["RewardItem"][1]["Id"] = 4021801 -- 【库】SpaceLeap(+1)[属性:8], 【表格】SpaceLeap
	tAdjustLottery_RidGift[4021801]["RewardItem"][1]["Attr"] = "0 1" -- SpaceLeap(+1)*1
	tAdjustLottery_RidGift[4021801]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021801]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021801]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021802]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021802] = {}
	tAdjustLottery_RidGift[4021802]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021802]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021802]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021802]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021802]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021802]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021802]["RewardItem"][1]["Id"] = 4021802 -- 【库】SpaceLeap(+2)[属性:8], 【表格】SpaceLeap
	tAdjustLottery_RidGift[4021802]["RewardItem"][1]["Attr"] = "0 1" -- SpaceLeap(+2)*1
	tAdjustLottery_RidGift[4021802]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021802]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021802]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021803]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021803] = {}
	tAdjustLottery_RidGift[4021803]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021803]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021803]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021803]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021803]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021803]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021803]["RewardItem"][1]["Id"] = 4021803 -- 【库】SpaceLeap(+3)[属性:8], 【表格】SpaceLeap
	tAdjustLottery_RidGift[4021803]["RewardItem"][1]["Attr"] = "0 1" -- SpaceLeap(+3)*1
	tAdjustLottery_RidGift[4021803]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021803]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021803]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021804]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021804] = {}
	tAdjustLottery_RidGift[4021804]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021804]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021804]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021804]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021804]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021804]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021804]["RewardItem"][1]["Id"] = 4021804 -- 【库】SpaceLeap(+4)[属性:8], 【表格】SpaceLeap
	tAdjustLottery_RidGift[4021804]["RewardItem"][1]["Attr"] = "0 1" -- SpaceLeap(+4)*1
	tAdjustLottery_RidGift[4021804]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021804]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021804]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021805]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021805] = {}
	tAdjustLottery_RidGift[4021805]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021805]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021805]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021805]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021805]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021805]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021805]["RewardItem"][1]["Id"] = 4021805 -- 【库】SpaceLeap(+5)[属性:8], 【表格】SpaceLeap
	tAdjustLottery_RidGift[4021805]["RewardItem"][1]["Attr"] = "0 1" -- SpaceLeap(+5)*1
	tAdjustLottery_RidGift[4021805]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021805]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021805]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021806]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021806] = {}
	tAdjustLottery_RidGift[4021806]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021806]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021806]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021806]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021806]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021806]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021806]["RewardItem"][1]["Id"] = 4021806 -- 【库】SpaceLeap(+6)[属性:8], 【表格】SpaceLeap
	tAdjustLottery_RidGift[4021806]["RewardItem"][1]["Attr"] = "0 1" -- SpaceLeap(+6)*1
	tAdjustLottery_RidGift[4021806]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021806]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021806]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021807]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021807] = {}
	tAdjustLottery_RidGift[4021807]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021807]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021807]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021807]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021807]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021807]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021807]["RewardItem"][1]["Id"] = 4021807 -- 【库】SpaceLeap(+7)[属性:8], 【表格】SpaceLeap
	tAdjustLottery_RidGift[4021807]["RewardItem"][1]["Attr"] = "0 1" -- SpaceLeap(+7)*1
	tAdjustLottery_RidGift[4021807]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021807]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021807]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021808]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021808] = {}
	tAdjustLottery_RidGift[4021808]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021808]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021808]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021808]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021808]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021808]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021808]["RewardItem"][1]["Id"] = 4021808 -- 【库】SpaceLeap(+8)[属性:8], 【表格】SpaceLeap
	tAdjustLottery_RidGift[4021808]["RewardItem"][1]["Attr"] = "0 1" -- SpaceLeap(+8)*1
	tAdjustLottery_RidGift[4021808]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021808]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021808]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021809]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021809] = {}
	tAdjustLottery_RidGift[4021809]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021809]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021809]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021809]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021809]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021809]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021809]["RewardItem"][1]["Id"] = 4021809 -- 【库】SpaceLeap(+9)[属性:8], 【表格】SpaceLeap
	tAdjustLottery_RidGift[4021809]["RewardItem"][1]["Attr"] = "0 1" -- SpaceLeap(+9)*1
	tAdjustLottery_RidGift[4021809]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021809]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021809]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021810]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021810] = {}
	tAdjustLottery_RidGift[4021810]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021810]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021810]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021810]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021810]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021810]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021810]["RewardItem"][1]["Id"] = 4021810 -- 【库】SpaceLeap(+10)[属性:8], 【表格】SpaceLeap
	tAdjustLottery_RidGift[4021810]["RewardItem"][1]["Attr"] = "0 1" -- SpaceLeap(+10)*1
	tAdjustLottery_RidGift[4021810]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021810]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021810]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021811]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021811] = {}
	tAdjustLottery_RidGift[4021811]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021811]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021811]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021811]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021811]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021811]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021811]["RewardItem"][1]["Id"] = 4021811 -- 【库】SpaceLeap(+11)[属性:8], 【表格】SpaceLeap
	tAdjustLottery_RidGift[4021811]["RewardItem"][1]["Attr"] = "0 1" -- SpaceLeap(+11)*1
	tAdjustLottery_RidGift[4021811]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021811]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021811]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021812]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021812] = {}
	tAdjustLottery_RidGift[4021812]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021812]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021812]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021812]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021812]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021812]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021812]["RewardItem"][1]["Id"] = 4021812 -- 【库】SpaceLeap(+12)[属性:8], 【表格】SpaceLeap
	tAdjustLottery_RidGift[4021812]["RewardItem"][1]["Attr"] = "0 1" -- SpaceLeap(+12)*1
	tAdjustLottery_RidGift[4021812]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021812]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021812]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021813]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021813] = {}
	tAdjustLottery_RidGift[4021813]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021813]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021813]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021813]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021813]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021813]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021813]["RewardItem"][1]["Id"] = 4021813 -- 【库】SpaceLeap(+13)[属性:8], 【表格】SpaceLeap
	tAdjustLottery_RidGift[4021813]["RewardItem"][1]["Attr"] = "0 1" -- SpaceLeap(+13)*1
	tAdjustLottery_RidGift[4021813]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021813]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021813]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021814]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021814] = {}
	tAdjustLottery_RidGift[4021814]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021814]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021814]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021814]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021814]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021814]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021814]["RewardItem"][1]["Id"] = 4021814 -- 【库】SpaceLeap(+14)[属性:8], 【表格】SpaceLeap
	tAdjustLottery_RidGift[4021814]["RewardItem"][1]["Attr"] = "0 1" -- SpaceLeap(+14)*1
	tAdjustLottery_RidGift[4021814]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021814]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021814]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021815]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021815] = {}
	tAdjustLottery_RidGift[4021815]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021815]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021815]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021815]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021815]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021815]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021815]["RewardItem"][1]["Id"] = 4021815 -- 【库】SpaceLeap(+15)[属性:8], 【表格】SpaceLeap
	tAdjustLottery_RidGift[4021815]["RewardItem"][1]["Attr"] = "0 1" -- SpaceLeap(+15)*1
	tAdjustLottery_RidGift[4021815]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021815]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021815]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021816]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021816] = {}
	tAdjustLottery_RidGift[4021816]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021816]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021816]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021816]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021816]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021816]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021816]["RewardItem"][1]["Id"] = 4021816 -- 【库】SpaceLeap(+16)[属性:8], 【表格】SpaceLeap
	tAdjustLottery_RidGift[4021816]["RewardItem"][1]["Attr"] = "0 1" -- SpaceLeap(+16)*1
	tAdjustLottery_RidGift[4021816]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021816]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021816]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021817]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021817] = {}
	tAdjustLottery_RidGift[4021817]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021817]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021817]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021817]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021817]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021817]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021817]["RewardItem"][1]["Id"] = 4021817 -- 【库】SpaceLeap(+17)[属性:8], 【表格】SpaceLeap
	tAdjustLottery_RidGift[4021817]["RewardItem"][1]["Attr"] = "0 1" -- SpaceLeap(+17)*1
	tAdjustLottery_RidGift[4021817]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021817]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021817]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021818]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021818] = {}
	tAdjustLottery_RidGift[4021818]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021818]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021818]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021818]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021818]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021818]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021818]["RewardItem"][1]["Id"] = 4021818 -- 【库】SpaceLeap(+18)[属性:8], 【表格】SpaceLeap
	tAdjustLottery_RidGift[4021818]["RewardItem"][1]["Attr"] = "0 1" -- SpaceLeap(+18)*1
	tAdjustLottery_RidGift[4021818]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021818]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021818]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021819]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021819] = {}
	tAdjustLottery_RidGift[4021819]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021819]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021819]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021819]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021819]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021819]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021819]["RewardItem"][1]["Id"] = 4021819 -- 【库】SpaceLeap(+19)[属性:8], 【表格】SpaceLeap
	tAdjustLottery_RidGift[4021819]["RewardItem"][1]["Attr"] = "0 1" -- SpaceLeap(+19)*1
	tAdjustLottery_RidGift[4021819]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021819]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021819]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021820]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021820] = {}
	tAdjustLottery_RidGift[4021820]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021820]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021820]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021820]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021820]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021820]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021820]["RewardItem"][1]["Id"] = 4021820 -- 【库】SpaceLeap(+20)[属性:8], 【表格】SpaceLeap
	tAdjustLottery_RidGift[4021820]["RewardItem"][1]["Attr"] = "0 1" -- SpaceLeap(+20)*1
	tAdjustLottery_RidGift[4021820]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021820]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021820]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021821]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021821] = {}
	tAdjustLottery_RidGift[4021821]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021821]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021821]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021821]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021821]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021821]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021821]["RewardItem"][1]["Id"] = 4021821 -- 【库】SpaceLeap(+21)[属性:8], 【表格】SpaceLeap
	tAdjustLottery_RidGift[4021821]["RewardItem"][1]["Attr"] = "0 1" -- SpaceLeap(+21)*1
	tAdjustLottery_RidGift[4021821]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021821]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021821]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021822]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021822] = {}
	tAdjustLottery_RidGift[4021822]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021822]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021822]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021822]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021822]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021822]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021822]["RewardItem"][1]["Id"] = 4021822 -- 【库】SpaceLeap(+22)[属性:8], 【表格】SpaceLeap
	tAdjustLottery_RidGift[4021822]["RewardItem"][1]["Attr"] = "0 1" -- SpaceLeap(+22)*1
	tAdjustLottery_RidGift[4021822]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021822]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021822]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021823]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021823] = {}
	tAdjustLottery_RidGift[4021823]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021823]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021823]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021823]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021823]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021823]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021823]["RewardItem"][1]["Id"] = 4021823 -- 【库】SpaceLeap(+23)[属性:8], 【表格】SpaceLeap
	tAdjustLottery_RidGift[4021823]["RewardItem"][1]["Attr"] = "0 1" -- SpaceLeap(+23)*1
	tAdjustLottery_RidGift[4021823]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021823]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021823]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021824]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021824] = {}
	tAdjustLottery_RidGift[4021824]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021824]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021824]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021824]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021824]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021824]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021824]["RewardItem"][1]["Id"] = 4021824 -- 【库】SpaceLeap(+24)[属性:8], 【表格】SpaceLeap
	tAdjustLottery_RidGift[4021824]["RewardItem"][1]["Attr"] = "0 1" -- SpaceLeap(+24)*1
	tAdjustLottery_RidGift[4021824]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021824]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021824]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021825]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021825] = {}
	tAdjustLottery_RidGift[4021825]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021825]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021825]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021825]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021825]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021825]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021825]["RewardItem"][1]["Id"] = 4021825 -- 【库】SpaceLeap(+25)[属性:8], 【表格】SpaceLeap
	tAdjustLottery_RidGift[4021825]["RewardItem"][1]["Attr"] = "0 1" -- SpaceLeap(+25)*1
	tAdjustLottery_RidGift[4021825]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021825]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021825]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021826]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021826] = {}
	tAdjustLottery_RidGift[4021826]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021826]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021826]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021826]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021826]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021826]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021826]["RewardItem"][1]["Id"] = 4021826 -- 【库】SpaceLeap(+26)[属性:8], 【表格】SpaceLeap
	tAdjustLottery_RidGift[4021826]["RewardItem"][1]["Attr"] = "0 1" -- SpaceLeap(+26)*1
	tAdjustLottery_RidGift[4021826]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021826]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021826]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021827]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021827] = {}
	tAdjustLottery_RidGift[4021827]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021827]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021827]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021827]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021827]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021827]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021827]["RewardItem"][1]["Id"] = 4021827 -- 【库】SpaceLeap(+27)[属性:8], 【表格】SpaceLeap
	tAdjustLottery_RidGift[4021827]["RewardItem"][1]["Attr"] = "0 1" -- SpaceLeap(+27)*1
	tAdjustLottery_RidGift[4021827]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021827]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021827]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021901]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021901] = {}
	tAdjustLottery_RidGift[4021901]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021901]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021901]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021901]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021901]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021901]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021901]["RewardItem"][1]["Id"] = 4021901 -- 【库】RiseofTaoism(+1)[属性:8], 【表格】RiseofTaoism
	tAdjustLottery_RidGift[4021901]["RewardItem"][1]["Attr"] = "0 1" -- RiseofTaoism(+1)*1
	tAdjustLottery_RidGift[4021901]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021901]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021901]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021902]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021902] = {}
	tAdjustLottery_RidGift[4021902]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021902]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021902]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021902]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021902]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021902]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021902]["RewardItem"][1]["Id"] = 4021902 -- 【库】RiseofTaoism(+2)[属性:8], 【表格】RiseofTaoism
	tAdjustLottery_RidGift[4021902]["RewardItem"][1]["Attr"] = "0 1" -- RiseofTaoism(+2)*1
	tAdjustLottery_RidGift[4021902]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021902]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021902]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021903]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021903] = {}
	tAdjustLottery_RidGift[4021903]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021903]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021903]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021903]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021903]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021903]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021903]["RewardItem"][1]["Id"] = 4021903 -- 【库】RiseofTaoism(+3)[属性:8], 【表格】RiseofTaoism
	tAdjustLottery_RidGift[4021903]["RewardItem"][1]["Attr"] = "0 1" -- RiseofTaoism(+3)*1
	tAdjustLottery_RidGift[4021903]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021903]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021903]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021904]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021904] = {}
	tAdjustLottery_RidGift[4021904]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021904]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021904]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021904]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021904]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021904]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021904]["RewardItem"][1]["Id"] = 4021904 -- 【库】RiseofTaoism(+4)[属性:8], 【表格】RiseofTaoism
	tAdjustLottery_RidGift[4021904]["RewardItem"][1]["Attr"] = "0 1" -- RiseofTaoism(+4)*1
	tAdjustLottery_RidGift[4021904]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021904]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021904]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021905]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021905] = {}
	tAdjustLottery_RidGift[4021905]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021905]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021905]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021905]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021905]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021905]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021905]["RewardItem"][1]["Id"] = 4021905 -- 【库】RiseofTaoism(+5)[属性:8], 【表格】RiseofTaoism
	tAdjustLottery_RidGift[4021905]["RewardItem"][1]["Attr"] = "0 1" -- RiseofTaoism(+5)*1
	tAdjustLottery_RidGift[4021905]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021905]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021905]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021906]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021906] = {}
	tAdjustLottery_RidGift[4021906]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021906]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021906]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021906]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021906]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021906]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021906]["RewardItem"][1]["Id"] = 4021906 -- 【库】RiseofTaoism(+6)[属性:8], 【表格】RiseofTaoism
	tAdjustLottery_RidGift[4021906]["RewardItem"][1]["Attr"] = "0 1" -- RiseofTaoism(+6)*1
	tAdjustLottery_RidGift[4021906]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021906]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021906]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021907]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021907] = {}
	tAdjustLottery_RidGift[4021907]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021907]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021907]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021907]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021907]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021907]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021907]["RewardItem"][1]["Id"] = 4021907 -- 【库】RiseofTaoism(+7)[属性:8], 【表格】RiseofTaoism
	tAdjustLottery_RidGift[4021907]["RewardItem"][1]["Attr"] = "0 1" -- RiseofTaoism(+7)*1
	tAdjustLottery_RidGift[4021907]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021907]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021907]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021908]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021908] = {}
	tAdjustLottery_RidGift[4021908]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021908]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021908]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021908]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021908]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021908]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021908]["RewardItem"][1]["Id"] = 4021908 -- 【库】RiseofTaoism(+8)[属性:8], 【表格】RiseofTaoism
	tAdjustLottery_RidGift[4021908]["RewardItem"][1]["Attr"] = "0 1" -- RiseofTaoism(+8)*1
	tAdjustLottery_RidGift[4021908]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021908]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021908]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021909]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021909] = {}
	tAdjustLottery_RidGift[4021909]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021909]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021909]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021909]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021909]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021909]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021909]["RewardItem"][1]["Id"] = 4021909 -- 【库】RiseofTaoism(+9)[属性:8], 【表格】RiseofTaoism
	tAdjustLottery_RidGift[4021909]["RewardItem"][1]["Attr"] = "0 1" -- RiseofTaoism(+9)*1
	tAdjustLottery_RidGift[4021909]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021909]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021909]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021910]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021910] = {}
	tAdjustLottery_RidGift[4021910]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021910]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021910]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021910]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021910]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021910]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021910]["RewardItem"][1]["Id"] = 4021910 -- 【库】RiseofTaoism(+10)[属性:8], 【表格】RiseofTaoism
	tAdjustLottery_RidGift[4021910]["RewardItem"][1]["Attr"] = "0 1" -- RiseofTaoism(+10)*1
	tAdjustLottery_RidGift[4021910]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021910]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021910]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021911]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021911] = {}
	tAdjustLottery_RidGift[4021911]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021911]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021911]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021911]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021911]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021911]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021911]["RewardItem"][1]["Id"] = 4021911 -- 【库】RiseofTaoism(+11)[属性:8], 【表格】RiseofTaoism
	tAdjustLottery_RidGift[4021911]["RewardItem"][1]["Attr"] = "0 1" -- RiseofTaoism(+11)*1
	tAdjustLottery_RidGift[4021911]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021911]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021911]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021912]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021912] = {}
	tAdjustLottery_RidGift[4021912]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021912]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021912]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021912]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021912]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021912]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021912]["RewardItem"][1]["Id"] = 4021912 -- 【库】RiseofTaoism(+12)[属性:8], 【表格】RiseofTaoism
	tAdjustLottery_RidGift[4021912]["RewardItem"][1]["Attr"] = "0 1" -- RiseofTaoism(+12)*1
	tAdjustLottery_RidGift[4021912]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021912]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021912]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021913]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021913] = {}
	tAdjustLottery_RidGift[4021913]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021913]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021913]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021913]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021913]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021913]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021913]["RewardItem"][1]["Id"] = 4021913 -- 【库】RiseofTaoism(+13)[属性:8], 【表格】RiseofTaoism
	tAdjustLottery_RidGift[4021913]["RewardItem"][1]["Attr"] = "0 1" -- RiseofTaoism(+13)*1
	tAdjustLottery_RidGift[4021913]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021913]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021913]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021914]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021914] = {}
	tAdjustLottery_RidGift[4021914]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021914]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021914]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021914]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021914]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021914]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021914]["RewardItem"][1]["Id"] = 4021914 -- 【库】RiseofTaoism(+14)[属性:8], 【表格】RiseofTaoism
	tAdjustLottery_RidGift[4021914]["RewardItem"][1]["Attr"] = "0 1" -- RiseofTaoism(+14)*1
	tAdjustLottery_RidGift[4021914]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021914]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021914]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021915]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021915] = {}
	tAdjustLottery_RidGift[4021915]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021915]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021915]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021915]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021915]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021915]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021915]["RewardItem"][1]["Id"] = 4021915 -- 【库】RiseofTaoism(+15)[属性:8], 【表格】RiseofTaoism
	tAdjustLottery_RidGift[4021915]["RewardItem"][1]["Attr"] = "0 1" -- RiseofTaoism(+15)*1
	tAdjustLottery_RidGift[4021915]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021915]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021915]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021916]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021916] = {}
	tAdjustLottery_RidGift[4021916]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021916]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021916]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021916]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021916]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021916]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021916]["RewardItem"][1]["Id"] = 4021916 -- 【库】RiseofTaoism(+16)[属性:8], 【表格】RiseofTaoism
	tAdjustLottery_RidGift[4021916]["RewardItem"][1]["Attr"] = "0 1" -- RiseofTaoism(+16)*1
	tAdjustLottery_RidGift[4021916]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021916]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021916]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021917]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021917] = {}
	tAdjustLottery_RidGift[4021917]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021917]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021917]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021917]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021917]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021917]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021917]["RewardItem"][1]["Id"] = 4021917 -- 【库】RiseofTaoism(+17)[属性:8], 【表格】RiseofTaoism
	tAdjustLottery_RidGift[4021917]["RewardItem"][1]["Attr"] = "0 1" -- RiseofTaoism(+17)*1
	tAdjustLottery_RidGift[4021917]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021917]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021917]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021918]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021918] = {}
	tAdjustLottery_RidGift[4021918]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021918]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021918]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021918]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021918]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021918]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021918]["RewardItem"][1]["Id"] = 4021918 -- 【库】RiseofTaoism(+18)[属性:8], 【表格】RiseofTaoism
	tAdjustLottery_RidGift[4021918]["RewardItem"][1]["Attr"] = "0 1" -- RiseofTaoism(+18)*1
	tAdjustLottery_RidGift[4021918]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021918]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021918]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021919]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021919] = {}
	tAdjustLottery_RidGift[4021919]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021919]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021919]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021919]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021919]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021919]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021919]["RewardItem"][1]["Id"] = 4021919 -- 【库】RiseofTaoism(+19)[属性:8], 【表格】RiseofTaoism
	tAdjustLottery_RidGift[4021919]["RewardItem"][1]["Attr"] = "0 1" -- RiseofTaoism(+19)*1
	tAdjustLottery_RidGift[4021919]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021919]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021919]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021920]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021920] = {}
	tAdjustLottery_RidGift[4021920]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021920]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021920]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021920]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021920]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021920]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021920]["RewardItem"][1]["Id"] = 4021920 -- 【库】RiseofTaoism(+20)[属性:8], 【表格】RiseofTaoism
	tAdjustLottery_RidGift[4021920]["RewardItem"][1]["Attr"] = "0 1" -- RiseofTaoism(+20)*1
	tAdjustLottery_RidGift[4021920]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021920]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021920]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021921]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021921] = {}
	tAdjustLottery_RidGift[4021921]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021921]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021921]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021921]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021921]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021921]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021921]["RewardItem"][1]["Id"] = 4021921 -- 【库】RiseofTaoism(+21)[属性:8], 【表格】RiseofTaoism
	tAdjustLottery_RidGift[4021921]["RewardItem"][1]["Attr"] = "0 1" -- RiseofTaoism(+21)*1
	tAdjustLottery_RidGift[4021921]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021921]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021921]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021922]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021922] = {}
	tAdjustLottery_RidGift[4021922]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021922]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021922]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021922]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021922]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021922]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021922]["RewardItem"][1]["Id"] = 4021922 -- 【库】RiseofTaoism(+22)[属性:8], 【表格】RiseofTaoism
	tAdjustLottery_RidGift[4021922]["RewardItem"][1]["Attr"] = "0 1" -- RiseofTaoism(+22)*1
	tAdjustLottery_RidGift[4021922]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021922]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021922]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021923]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021923] = {}
	tAdjustLottery_RidGift[4021923]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021923]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021923]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021923]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021923]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021923]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021923]["RewardItem"][1]["Id"] = 4021923 -- 【库】RiseofTaoism(+23)[属性:8], 【表格】RiseofTaoism
	tAdjustLottery_RidGift[4021923]["RewardItem"][1]["Attr"] = "0 1" -- RiseofTaoism(+23)*1
	tAdjustLottery_RidGift[4021923]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021923]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021923]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021924]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021924] = {}
	tAdjustLottery_RidGift[4021924]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021924]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021924]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021924]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021924]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021924]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021924]["RewardItem"][1]["Id"] = 4021924 -- 【库】RiseofTaoism(+24)[属性:8], 【表格】RiseofTaoism
	tAdjustLottery_RidGift[4021924]["RewardItem"][1]["Attr"] = "0 1" -- RiseofTaoism(+24)*1
	tAdjustLottery_RidGift[4021924]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021924]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021924]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021925]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021925] = {}
	tAdjustLottery_RidGift[4021925]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021925]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021925]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021925]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021925]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021925]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021925]["RewardItem"][1]["Id"] = 4021925 -- 【库】RiseofTaoism(+25)[属性:8], 【表格】RiseofTaoism
	tAdjustLottery_RidGift[4021925]["RewardItem"][1]["Attr"] = "0 1" -- RiseofTaoism(+25)*1
	tAdjustLottery_RidGift[4021925]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021925]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021925]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021926]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021926] = {}
	tAdjustLottery_RidGift[4021926]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021926]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021926]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021926]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021926]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021926]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021926]["RewardItem"][1]["Id"] = 4021926 -- 【库】RiseofTaoism(+26)[属性:8], 【表格】RiseofTaoism
	tAdjustLottery_RidGift[4021926]["RewardItem"][1]["Attr"] = "0 1" -- RiseofTaoism(+26)*1
	tAdjustLottery_RidGift[4021926]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021926]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021926]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4021927]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4021927] = {}
	tAdjustLottery_RidGift[4021927]["LogId"] = 12001462
	tAdjustLottery_RidGift[4021927]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4021927]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4021927]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4021927]["RewardItem"] = {}
	tAdjustLottery_RidGift[4021927]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4021927]["RewardItem"][1]["Id"] = 4021927 -- 【库】RiseofTaoism(+27)[属性:8], 【表格】RiseofTaoism
	tAdjustLottery_RidGift[4021927]["RewardItem"][1]["Attr"] = "0 1" -- RiseofTaoism(+27)*1
	tAdjustLottery_RidGift[4021927]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4021927]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4021927]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4022001]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4022001] = {}
	tAdjustLottery_RidGift[4022001]["LogId"] = 12001462
	tAdjustLottery_RidGift[4022001]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4022001]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4022001]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4022001]["RewardItem"] = {}
	tAdjustLottery_RidGift[4022001]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4022001]["RewardItem"][1]["Id"] = 4022001 -- 【库】FuryStrike(+1)[属性:8], 【表格】FuryStrike
	tAdjustLottery_RidGift[4022001]["RewardItem"][1]["Attr"] = "0 1" -- FuryStrike(+1)*1
	tAdjustLottery_RidGift[4022001]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4022001]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4022001]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4022002]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4022002] = {}
	tAdjustLottery_RidGift[4022002]["LogId"] = 12001462
	tAdjustLottery_RidGift[4022002]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4022002]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4022002]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4022002]["RewardItem"] = {}
	tAdjustLottery_RidGift[4022002]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4022002]["RewardItem"][1]["Id"] = 4022002 -- 【库】FuryStrike(+2)[属性:8], 【表格】FuryStrike
	tAdjustLottery_RidGift[4022002]["RewardItem"][1]["Attr"] = "0 1" -- FuryStrike(+2)*1
	tAdjustLottery_RidGift[4022002]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4022002]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4022002]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4022003]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4022003] = {}
	tAdjustLottery_RidGift[4022003]["LogId"] = 12001462
	tAdjustLottery_RidGift[4022003]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4022003]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4022003]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4022003]["RewardItem"] = {}
	tAdjustLottery_RidGift[4022003]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4022003]["RewardItem"][1]["Id"] = 4022003 -- 【库】FuryStrike(+3)[属性:8], 【表格】FuryStrike
	tAdjustLottery_RidGift[4022003]["RewardItem"][1]["Attr"] = "0 1" -- FuryStrike(+3)*1
	tAdjustLottery_RidGift[4022003]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4022003]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4022003]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4022004]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4022004] = {}
	tAdjustLottery_RidGift[4022004]["LogId"] = 12001462
	tAdjustLottery_RidGift[4022004]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4022004]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4022004]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4022004]["RewardItem"] = {}
	tAdjustLottery_RidGift[4022004]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4022004]["RewardItem"][1]["Id"] = 4022004 -- 【库】FuryStrike(+4)[属性:8], 【表格】FuryStrike
	tAdjustLottery_RidGift[4022004]["RewardItem"][1]["Attr"] = "0 1" -- FuryStrike(+4)*1
	tAdjustLottery_RidGift[4022004]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4022004]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4022004]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4022005]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4022005] = {}
	tAdjustLottery_RidGift[4022005]["LogId"] = 12001462
	tAdjustLottery_RidGift[4022005]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4022005]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4022005]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4022005]["RewardItem"] = {}
	tAdjustLottery_RidGift[4022005]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4022005]["RewardItem"][1]["Id"] = 4022005 -- 【库】FuryStrike(+5)[属性:8], 【表格】FuryStrike
	tAdjustLottery_RidGift[4022005]["RewardItem"][1]["Attr"] = "0 1" -- FuryStrike(+5)*1
	tAdjustLottery_RidGift[4022005]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4022005]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4022005]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4022006]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4022006] = {}
	tAdjustLottery_RidGift[4022006]["LogId"] = 12001462
	tAdjustLottery_RidGift[4022006]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4022006]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4022006]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4022006]["RewardItem"] = {}
	tAdjustLottery_RidGift[4022006]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4022006]["RewardItem"][1]["Id"] = 4022006 -- 【库】FuryStrike(+6)[属性:8], 【表格】FuryStrike
	tAdjustLottery_RidGift[4022006]["RewardItem"][1]["Attr"] = "0 1" -- FuryStrike(+6)*1
	tAdjustLottery_RidGift[4022006]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4022006]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4022006]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4022007]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4022007] = {}
	tAdjustLottery_RidGift[4022007]["LogId"] = 12001462
	tAdjustLottery_RidGift[4022007]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4022007]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4022007]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4022007]["RewardItem"] = {}
	tAdjustLottery_RidGift[4022007]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4022007]["RewardItem"][1]["Id"] = 4022007 -- 【库】FuryStrike(+7)[属性:8], 【表格】FuryStrike
	tAdjustLottery_RidGift[4022007]["RewardItem"][1]["Attr"] = "0 1" -- FuryStrike(+7)*1
	tAdjustLottery_RidGift[4022007]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4022007]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4022007]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4022008]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4022008] = {}
	tAdjustLottery_RidGift[4022008]["LogId"] = 12001462
	tAdjustLottery_RidGift[4022008]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4022008]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4022008]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4022008]["RewardItem"] = {}
	tAdjustLottery_RidGift[4022008]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4022008]["RewardItem"][1]["Id"] = 4022008 -- 【库】FuryStrike(+8)[属性:8], 【表格】FuryStrike
	tAdjustLottery_RidGift[4022008]["RewardItem"][1]["Attr"] = "0 1" -- FuryStrike(+8)*1
	tAdjustLottery_RidGift[4022008]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4022008]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4022008]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4022009]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4022009] = {}
	tAdjustLottery_RidGift[4022009]["LogId"] = 12001462
	tAdjustLottery_RidGift[4022009]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4022009]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4022009]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4022009]["RewardItem"] = {}
	tAdjustLottery_RidGift[4022009]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4022009]["RewardItem"][1]["Id"] = 4022009 -- 【库】FuryStrike(+9)[属性:8], 【表格】FuryStrike
	tAdjustLottery_RidGift[4022009]["RewardItem"][1]["Attr"] = "0 1" -- FuryStrike(+9)*1
	tAdjustLottery_RidGift[4022009]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4022009]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4022009]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4022010]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4022010] = {}
	tAdjustLottery_RidGift[4022010]["LogId"] = 12001462
	tAdjustLottery_RidGift[4022010]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4022010]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4022010]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4022010]["RewardItem"] = {}
	tAdjustLottery_RidGift[4022010]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4022010]["RewardItem"][1]["Id"] = 4022010 -- 【库】FuryStrike(+10)[属性:8], 【表格】FuryStrike
	tAdjustLottery_RidGift[4022010]["RewardItem"][1]["Attr"] = "0 1" -- FuryStrike(+10)*1
	tAdjustLottery_RidGift[4022010]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4022010]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4022010]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4022011]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4022011] = {}
	tAdjustLottery_RidGift[4022011]["LogId"] = 12001462
	tAdjustLottery_RidGift[4022011]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4022011]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4022011]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4022011]["RewardItem"] = {}
	tAdjustLottery_RidGift[4022011]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4022011]["RewardItem"][1]["Id"] = 4022011 -- 【库】FuryStrike(+11)[属性:8], 【表格】FuryStrike
	tAdjustLottery_RidGift[4022011]["RewardItem"][1]["Attr"] = "0 1" -- FuryStrike(+11)*1
	tAdjustLottery_RidGift[4022011]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4022011]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4022011]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4022012]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4022012] = {}
	tAdjustLottery_RidGift[4022012]["LogId"] = 12001462
	tAdjustLottery_RidGift[4022012]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4022012]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4022012]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4022012]["RewardItem"] = {}
	tAdjustLottery_RidGift[4022012]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4022012]["RewardItem"][1]["Id"] = 4022012 -- 【库】FuryStrike(+12)[属性:8], 【表格】FuryStrike
	tAdjustLottery_RidGift[4022012]["RewardItem"][1]["Attr"] = "0 1" -- FuryStrike(+12)*1
	tAdjustLottery_RidGift[4022012]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4022012]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4022012]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4022013]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4022013] = {}
	tAdjustLottery_RidGift[4022013]["LogId"] = 12001462
	tAdjustLottery_RidGift[4022013]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4022013]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4022013]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4022013]["RewardItem"] = {}
	tAdjustLottery_RidGift[4022013]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4022013]["RewardItem"][1]["Id"] = 4022013 -- 【库】FuryStrike(+13)[属性:8], 【表格】FuryStrike
	tAdjustLottery_RidGift[4022013]["RewardItem"][1]["Attr"] = "0 1" -- FuryStrike(+13)*1
	tAdjustLottery_RidGift[4022013]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4022013]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4022013]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4022014]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4022014] = {}
	tAdjustLottery_RidGift[4022014]["LogId"] = 12001462
	tAdjustLottery_RidGift[4022014]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4022014]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4022014]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4022014]["RewardItem"] = {}
	tAdjustLottery_RidGift[4022014]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4022014]["RewardItem"][1]["Id"] = 4022014 -- 【库】FuryStrike(+14)[属性:8], 【表格】FuryStrike
	tAdjustLottery_RidGift[4022014]["RewardItem"][1]["Attr"] = "0 1" -- FuryStrike(+14)*1
	tAdjustLottery_RidGift[4022014]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4022014]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4022014]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4022015]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4022015] = {}
	tAdjustLottery_RidGift[4022015]["LogId"] = 12001462
	tAdjustLottery_RidGift[4022015]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4022015]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4022015]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4022015]["RewardItem"] = {}
	tAdjustLottery_RidGift[4022015]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4022015]["RewardItem"][1]["Id"] = 4022015 -- 【库】FuryStrike(+15)[属性:8], 【表格】FuryStrike
	tAdjustLottery_RidGift[4022015]["RewardItem"][1]["Attr"] = "0 1" -- FuryStrike(+15)*1
	tAdjustLottery_RidGift[4022015]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4022015]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4022015]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4022016]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4022016] = {}
	tAdjustLottery_RidGift[4022016]["LogId"] = 12001462
	tAdjustLottery_RidGift[4022016]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4022016]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4022016]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4022016]["RewardItem"] = {}
	tAdjustLottery_RidGift[4022016]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4022016]["RewardItem"][1]["Id"] = 4022016 -- 【库】FuryStrike(+16)[属性:8], 【表格】FuryStrike
	tAdjustLottery_RidGift[4022016]["RewardItem"][1]["Attr"] = "0 1" -- FuryStrike(+16)*1
	tAdjustLottery_RidGift[4022016]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4022016]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4022016]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4022017]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4022017] = {}
	tAdjustLottery_RidGift[4022017]["LogId"] = 12001462
	tAdjustLottery_RidGift[4022017]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4022017]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4022017]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4022017]["RewardItem"] = {}
	tAdjustLottery_RidGift[4022017]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4022017]["RewardItem"][1]["Id"] = 4022017 -- 【库】FuryStrike(+17)[属性:8], 【表格】FuryStrike
	tAdjustLottery_RidGift[4022017]["RewardItem"][1]["Attr"] = "0 1" -- FuryStrike(+17)*1
	tAdjustLottery_RidGift[4022017]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4022017]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4022017]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4022018]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4022018] = {}
	tAdjustLottery_RidGift[4022018]["LogId"] = 12001462
	tAdjustLottery_RidGift[4022018]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4022018]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4022018]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4022018]["RewardItem"] = {}
	tAdjustLottery_RidGift[4022018]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4022018]["RewardItem"][1]["Id"] = 4022018 -- 【库】FuryStrike(+18)[属性:8], 【表格】FuryStrike
	tAdjustLottery_RidGift[4022018]["RewardItem"][1]["Attr"] = "0 1" -- FuryStrike(+18)*1
	tAdjustLottery_RidGift[4022018]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4022018]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4022018]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4022019]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4022019] = {}
	tAdjustLottery_RidGift[4022019]["LogId"] = 12001462
	tAdjustLottery_RidGift[4022019]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4022019]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4022019]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4022019]["RewardItem"] = {}
	tAdjustLottery_RidGift[4022019]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4022019]["RewardItem"][1]["Id"] = 4022019 -- 【库】FuryStrike(+19)[属性:8], 【表格】FuryStrike
	tAdjustLottery_RidGift[4022019]["RewardItem"][1]["Attr"] = "0 1" -- FuryStrike(+19)*1
	tAdjustLottery_RidGift[4022019]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4022019]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4022019]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4022020]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4022020] = {}
	tAdjustLottery_RidGift[4022020]["LogId"] = 12001462
	tAdjustLottery_RidGift[4022020]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4022020]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4022020]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4022020]["RewardItem"] = {}
	tAdjustLottery_RidGift[4022020]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4022020]["RewardItem"][1]["Id"] = 4022020 -- 【库】FuryStrike(+20)[属性:8], 【表格】FuryStrike
	tAdjustLottery_RidGift[4022020]["RewardItem"][1]["Attr"] = "0 1" -- FuryStrike(+20)*1
	tAdjustLottery_RidGift[4022020]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4022020]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4022020]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4022021]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4022021] = {}
	tAdjustLottery_RidGift[4022021]["LogId"] = 12001462
	tAdjustLottery_RidGift[4022021]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4022021]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4022021]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4022021]["RewardItem"] = {}
	tAdjustLottery_RidGift[4022021]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4022021]["RewardItem"][1]["Id"] = 4022021 -- 【库】FuryStrike(+21)[属性:8], 【表格】FuryStrike
	tAdjustLottery_RidGift[4022021]["RewardItem"][1]["Attr"] = "0 1" -- FuryStrike(+21)*1
	tAdjustLottery_RidGift[4022021]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4022021]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4022021]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4022022]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4022022] = {}
	tAdjustLottery_RidGift[4022022]["LogId"] = 12001462
	tAdjustLottery_RidGift[4022022]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4022022]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4022022]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4022022]["RewardItem"] = {}
	tAdjustLottery_RidGift[4022022]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4022022]["RewardItem"][1]["Id"] = 4022022 -- 【库】FuryStrike(+22)[属性:8], 【表格】FuryStrike
	tAdjustLottery_RidGift[4022022]["RewardItem"][1]["Attr"] = "0 1" -- FuryStrike(+22)*1
	tAdjustLottery_RidGift[4022022]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4022022]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4022022]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4022023]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4022023] = {}
	tAdjustLottery_RidGift[4022023]["LogId"] = 12001462
	tAdjustLottery_RidGift[4022023]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4022023]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4022023]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4022023]["RewardItem"] = {}
	tAdjustLottery_RidGift[4022023]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4022023]["RewardItem"][1]["Id"] = 4022023 -- 【库】FuryStrike(+23)[属性:8], 【表格】FuryStrike
	tAdjustLottery_RidGift[4022023]["RewardItem"][1]["Attr"] = "0 1" -- FuryStrike(+23)*1
	tAdjustLottery_RidGift[4022023]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4022023]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4022023]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4022024]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4022024] = {}
	tAdjustLottery_RidGift[4022024]["LogId"] = 12001462
	tAdjustLottery_RidGift[4022024]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4022024]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4022024]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4022024]["RewardItem"] = {}
	tAdjustLottery_RidGift[4022024]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4022024]["RewardItem"][1]["Id"] = 4022024 -- 【库】FuryStrike(+24)[属性:8], 【表格】FuryStrike
	tAdjustLottery_RidGift[4022024]["RewardItem"][1]["Attr"] = "0 1" -- FuryStrike(+24)*1
	tAdjustLottery_RidGift[4022024]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4022024]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4022024]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4022025]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4022025] = {}
	tAdjustLottery_RidGift[4022025]["LogId"] = 12001462
	tAdjustLottery_RidGift[4022025]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4022025]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4022025]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4022025]["RewardItem"] = {}
	tAdjustLottery_RidGift[4022025]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4022025]["RewardItem"][1]["Id"] = 4022025 -- 【库】FuryStrike(+25)[属性:8], 【表格】FuryStrike
	tAdjustLottery_RidGift[4022025]["RewardItem"][1]["Attr"] = "0 1" -- FuryStrike(+25)*1
	tAdjustLottery_RidGift[4022025]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4022025]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4022025]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4022026]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4022026] = {}
	tAdjustLottery_RidGift[4022026]["LogId"] = 12001462
	tAdjustLottery_RidGift[4022026]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4022026]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4022026]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4022026]["RewardItem"] = {}
	tAdjustLottery_RidGift[4022026]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4022026]["RewardItem"][1]["Id"] = 4022026 -- 【库】FuryStrike(+26)[属性:8], 【表格】FuryStrike
	tAdjustLottery_RidGift[4022026]["RewardItem"][1]["Attr"] = "0 1" -- FuryStrike(+26)*1
	tAdjustLottery_RidGift[4022026]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4022026]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4022026]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4022027]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4022027] = {}
	tAdjustLottery_RidGift[4022027]["LogId"] = 12001462
	tAdjustLottery_RidGift[4022027]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4022027]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4022027]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4022027]["RewardItem"] = {}
	tAdjustLottery_RidGift[4022027]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4022027]["RewardItem"][1]["Id"] = 4022027 -- 【库】FuryStrike(+27)[属性:8], 【表格】FuryStrike
	tAdjustLottery_RidGift[4022027]["RewardItem"][1]["Attr"] = "0 1" -- FuryStrike(+27)*1
	tAdjustLottery_RidGift[4022027]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4022027]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4022027]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4023001]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4023001] = {}
	tAdjustLottery_RidGift[4023001]["LogId"] = 12001462
	tAdjustLottery_RidGift[4023001]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4023001]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4023001]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4023001]["RewardItem"] = {}
	tAdjustLottery_RidGift[4023001]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4023001]["RewardItem"][1]["Id"] = 4023001 -- 【库】BloodTide(+1)[属性:8], 【表格】BloodTide
	tAdjustLottery_RidGift[4023001]["RewardItem"][1]["Attr"] = "0 1" -- BloodTide(+1)*1
	tAdjustLottery_RidGift[4023001]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4023001]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4023001]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4023002]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4023002] = {}
	tAdjustLottery_RidGift[4023002]["LogId"] = 12001462
	tAdjustLottery_RidGift[4023002]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4023002]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4023002]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4023002]["RewardItem"] = {}
	tAdjustLottery_RidGift[4023002]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4023002]["RewardItem"][1]["Id"] = 4023002 -- 【库】BloodTide(+2)[属性:8], 【表格】BloodTide
	tAdjustLottery_RidGift[4023002]["RewardItem"][1]["Attr"] = "0 1" -- BloodTide(+2)*1
	tAdjustLottery_RidGift[4023002]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4023002]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4023002]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4023003]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4023003] = {}
	tAdjustLottery_RidGift[4023003]["LogId"] = 12001462
	tAdjustLottery_RidGift[4023003]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4023003]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4023003]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4023003]["RewardItem"] = {}
	tAdjustLottery_RidGift[4023003]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4023003]["RewardItem"][1]["Id"] = 4023003 -- 【库】BloodTide(+3)[属性:8], 【表格】BloodTide
	tAdjustLottery_RidGift[4023003]["RewardItem"][1]["Attr"] = "0 1" -- BloodTide(+3)*1
	tAdjustLottery_RidGift[4023003]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4023003]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4023003]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4023004]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4023004] = {}
	tAdjustLottery_RidGift[4023004]["LogId"] = 12001462
	tAdjustLottery_RidGift[4023004]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4023004]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4023004]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4023004]["RewardItem"] = {}
	tAdjustLottery_RidGift[4023004]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4023004]["RewardItem"][1]["Id"] = 4023004 -- 【库】BloodTide(+4)[属性:8], 【表格】BloodTide
	tAdjustLottery_RidGift[4023004]["RewardItem"][1]["Attr"] = "0 1" -- BloodTide(+4)*1
	tAdjustLottery_RidGift[4023004]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4023004]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4023004]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4023005]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4023005] = {}
	tAdjustLottery_RidGift[4023005]["LogId"] = 12001462
	tAdjustLottery_RidGift[4023005]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4023005]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4023005]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4023005]["RewardItem"] = {}
	tAdjustLottery_RidGift[4023005]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4023005]["RewardItem"][1]["Id"] = 4023005 -- 【库】BloodTide(+5)[属性:8], 【表格】BloodTide
	tAdjustLottery_RidGift[4023005]["RewardItem"][1]["Attr"] = "0 1" -- BloodTide(+5)*1
	tAdjustLottery_RidGift[4023005]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4023005]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4023005]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4023006]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4023006] = {}
	tAdjustLottery_RidGift[4023006]["LogId"] = 12001462
	tAdjustLottery_RidGift[4023006]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4023006]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4023006]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4023006]["RewardItem"] = {}
	tAdjustLottery_RidGift[4023006]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4023006]["RewardItem"][1]["Id"] = 4023006 -- 【库】BloodTide(+6)[属性:8], 【表格】BloodTide
	tAdjustLottery_RidGift[4023006]["RewardItem"][1]["Attr"] = "0 1" -- BloodTide(+6)*1
	tAdjustLottery_RidGift[4023006]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4023006]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4023006]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4023007]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4023007] = {}
	tAdjustLottery_RidGift[4023007]["LogId"] = 12001462
	tAdjustLottery_RidGift[4023007]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4023007]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4023007]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4023007]["RewardItem"] = {}
	tAdjustLottery_RidGift[4023007]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4023007]["RewardItem"][1]["Id"] = 4023007 -- 【库】BloodTide(+7)[属性:8], 【表格】BloodTide
	tAdjustLottery_RidGift[4023007]["RewardItem"][1]["Attr"] = "0 1" -- BloodTide(+7)*1
	tAdjustLottery_RidGift[4023007]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4023007]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4023007]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4023008]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4023008] = {}
	tAdjustLottery_RidGift[4023008]["LogId"] = 12001462
	tAdjustLottery_RidGift[4023008]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4023008]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4023008]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4023008]["RewardItem"] = {}
	tAdjustLottery_RidGift[4023008]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4023008]["RewardItem"][1]["Id"] = 4023008 -- 【库】BloodTide(+8)[属性:8], 【表格】BloodTide
	tAdjustLottery_RidGift[4023008]["RewardItem"][1]["Attr"] = "0 1" -- BloodTide(+8)*1
	tAdjustLottery_RidGift[4023008]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4023008]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4023008]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4023009]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4023009] = {}
	tAdjustLottery_RidGift[4023009]["LogId"] = 12001462
	tAdjustLottery_RidGift[4023009]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4023009]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4023009]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4023009]["RewardItem"] = {}
	tAdjustLottery_RidGift[4023009]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4023009]["RewardItem"][1]["Id"] = 4023009 -- 【库】BloodTide(+9)[属性:8], 【表格】BloodTide
	tAdjustLottery_RidGift[4023009]["RewardItem"][1]["Attr"] = "0 1" -- BloodTide(+9)*1
	tAdjustLottery_RidGift[4023009]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4023009]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4023009]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4023010]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4023010] = {}
	tAdjustLottery_RidGift[4023010]["LogId"] = 12001462
	tAdjustLottery_RidGift[4023010]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4023010]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4023010]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4023010]["RewardItem"] = {}
	tAdjustLottery_RidGift[4023010]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4023010]["RewardItem"][1]["Id"] = 4023010 -- 【库】BloodTide(+10)[属性:8], 【表格】BloodTide
	tAdjustLottery_RidGift[4023010]["RewardItem"][1]["Attr"] = "0 1" -- BloodTide(+10)*1
	tAdjustLottery_RidGift[4023010]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4023010]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4023010]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4023011]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4023011] = {}
	tAdjustLottery_RidGift[4023011]["LogId"] = 12001462
	tAdjustLottery_RidGift[4023011]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4023011]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4023011]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4023011]["RewardItem"] = {}
	tAdjustLottery_RidGift[4023011]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4023011]["RewardItem"][1]["Id"] = 4023011 -- 【库】BloodTide(+11)[属性:8], 【表格】BloodTide
	tAdjustLottery_RidGift[4023011]["RewardItem"][1]["Attr"] = "0 1" -- BloodTide(+11)*1
	tAdjustLottery_RidGift[4023011]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4023011]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4023011]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4023012]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4023012] = {}
	tAdjustLottery_RidGift[4023012]["LogId"] = 12001462
	tAdjustLottery_RidGift[4023012]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4023012]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4023012]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4023012]["RewardItem"] = {}
	tAdjustLottery_RidGift[4023012]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4023012]["RewardItem"][1]["Id"] = 4023012 -- 【库】BloodTide(+12)[属性:8], 【表格】BloodTide
	tAdjustLottery_RidGift[4023012]["RewardItem"][1]["Attr"] = "0 1" -- BloodTide(+12)*1
	tAdjustLottery_RidGift[4023012]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4023012]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4023012]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4023013]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4023013] = {}
	tAdjustLottery_RidGift[4023013]["LogId"] = 12001462
	tAdjustLottery_RidGift[4023013]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4023013]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4023013]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4023013]["RewardItem"] = {}
	tAdjustLottery_RidGift[4023013]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4023013]["RewardItem"][1]["Id"] = 4023013 -- 【库】BloodTide(+13)[属性:8], 【表格】BloodTide
	tAdjustLottery_RidGift[4023013]["RewardItem"][1]["Attr"] = "0 1" -- BloodTide(+13)*1
	tAdjustLottery_RidGift[4023013]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4023013]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4023013]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4023014]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4023014] = {}
	tAdjustLottery_RidGift[4023014]["LogId"] = 12001462
	tAdjustLottery_RidGift[4023014]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4023014]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4023014]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4023014]["RewardItem"] = {}
	tAdjustLottery_RidGift[4023014]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4023014]["RewardItem"][1]["Id"] = 4023014 -- 【库】BloodTide(+14)[属性:8], 【表格】BloodTide
	tAdjustLottery_RidGift[4023014]["RewardItem"][1]["Attr"] = "0 1" -- BloodTide(+14)*1
	tAdjustLottery_RidGift[4023014]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4023014]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4023014]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4023015]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4023015] = {}
	tAdjustLottery_RidGift[4023015]["LogId"] = 12001462
	tAdjustLottery_RidGift[4023015]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4023015]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4023015]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4023015]["RewardItem"] = {}
	tAdjustLottery_RidGift[4023015]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4023015]["RewardItem"][1]["Id"] = 4023015 -- 【库】BloodTide(+15)[属性:8], 【表格】BloodTide
	tAdjustLottery_RidGift[4023015]["RewardItem"][1]["Attr"] = "0 1" -- BloodTide(+15)*1
	tAdjustLottery_RidGift[4023015]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4023015]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4023015]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4023016]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4023016] = {}
	tAdjustLottery_RidGift[4023016]["LogId"] = 12001462
	tAdjustLottery_RidGift[4023016]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4023016]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4023016]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4023016]["RewardItem"] = {}
	tAdjustLottery_RidGift[4023016]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4023016]["RewardItem"][1]["Id"] = 4023016 -- 【库】BloodTide(+16)[属性:8], 【表格】BloodTide
	tAdjustLottery_RidGift[4023016]["RewardItem"][1]["Attr"] = "0 1" -- BloodTide(+16)*1
	tAdjustLottery_RidGift[4023016]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4023016]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4023016]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4023017]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4023017] = {}
	tAdjustLottery_RidGift[4023017]["LogId"] = 12001462
	tAdjustLottery_RidGift[4023017]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4023017]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4023017]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4023017]["RewardItem"] = {}
	tAdjustLottery_RidGift[4023017]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4023017]["RewardItem"][1]["Id"] = 4023017 -- 【库】BloodTide(+17)[属性:8], 【表格】BloodTide
	tAdjustLottery_RidGift[4023017]["RewardItem"][1]["Attr"] = "0 1" -- BloodTide(+17)*1
	tAdjustLottery_RidGift[4023017]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4023017]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4023017]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4023018]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4023018] = {}
	tAdjustLottery_RidGift[4023018]["LogId"] = 12001462
	tAdjustLottery_RidGift[4023018]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4023018]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4023018]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4023018]["RewardItem"] = {}
	tAdjustLottery_RidGift[4023018]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4023018]["RewardItem"][1]["Id"] = 4023018 -- 【库】BloodTide(+18)[属性:8], 【表格】BloodTide
	tAdjustLottery_RidGift[4023018]["RewardItem"][1]["Attr"] = "0 1" -- BloodTide(+18)*1
	tAdjustLottery_RidGift[4023018]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4023018]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4023018]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4023019]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4023019] = {}
	tAdjustLottery_RidGift[4023019]["LogId"] = 12001462
	tAdjustLottery_RidGift[4023019]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4023019]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4023019]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4023019]["RewardItem"] = {}
	tAdjustLottery_RidGift[4023019]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4023019]["RewardItem"][1]["Id"] = 4023019 -- 【库】BloodTide(+19)[属性:8], 【表格】BloodTide
	tAdjustLottery_RidGift[4023019]["RewardItem"][1]["Attr"] = "0 1" -- BloodTide(+19)*1
	tAdjustLottery_RidGift[4023019]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4023019]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4023019]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4023020]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4023020] = {}
	tAdjustLottery_RidGift[4023020]["LogId"] = 12001462
	tAdjustLottery_RidGift[4023020]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4023020]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4023020]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4023020]["RewardItem"] = {}
	tAdjustLottery_RidGift[4023020]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4023020]["RewardItem"][1]["Id"] = 4023020 -- 【库】BloodTide(+20)[属性:8], 【表格】BloodTide
	tAdjustLottery_RidGift[4023020]["RewardItem"][1]["Attr"] = "0 1" -- BloodTide(+20)*1
	tAdjustLottery_RidGift[4023020]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4023020]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4023020]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4023021]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4023021] = {}
	tAdjustLottery_RidGift[4023021]["LogId"] = 12001462
	tAdjustLottery_RidGift[4023021]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4023021]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4023021]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4023021]["RewardItem"] = {}
	tAdjustLottery_RidGift[4023021]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4023021]["RewardItem"][1]["Id"] = 4023021 -- 【库】BloodTide(+21)[属性:8], 【表格】BloodTide
	tAdjustLottery_RidGift[4023021]["RewardItem"][1]["Attr"] = "0 1" -- BloodTide(+21)*1
	tAdjustLottery_RidGift[4023021]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4023021]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4023021]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4023022]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4023022] = {}
	tAdjustLottery_RidGift[4023022]["LogId"] = 12001462
	tAdjustLottery_RidGift[4023022]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4023022]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4023022]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4023022]["RewardItem"] = {}
	tAdjustLottery_RidGift[4023022]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4023022]["RewardItem"][1]["Id"] = 4023022 -- 【库】BloodTide(+22)[属性:8], 【表格】BloodTide
	tAdjustLottery_RidGift[4023022]["RewardItem"][1]["Attr"] = "0 1" -- BloodTide(+22)*1
	tAdjustLottery_RidGift[4023022]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4023022]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4023022]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4023023]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4023023] = {}
	tAdjustLottery_RidGift[4023023]["LogId"] = 12001462
	tAdjustLottery_RidGift[4023023]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4023023]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4023023]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4023023]["RewardItem"] = {}
	tAdjustLottery_RidGift[4023023]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4023023]["RewardItem"][1]["Id"] = 4023023 -- 【库】BloodTide(+23)[属性:8], 【表格】BloodTide
	tAdjustLottery_RidGift[4023023]["RewardItem"][1]["Attr"] = "0 1" -- BloodTide(+23)*1
	tAdjustLottery_RidGift[4023023]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4023023]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4023023]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4023024]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4023024] = {}
	tAdjustLottery_RidGift[4023024]["LogId"] = 12001462
	tAdjustLottery_RidGift[4023024]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4023024]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4023024]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4023024]["RewardItem"] = {}
	tAdjustLottery_RidGift[4023024]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4023024]["RewardItem"][1]["Id"] = 4023024 -- 【库】BloodTide(+24)[属性:8], 【表格】BloodTide
	tAdjustLottery_RidGift[4023024]["RewardItem"][1]["Attr"] = "0 1" -- BloodTide(+24)*1
	tAdjustLottery_RidGift[4023024]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4023024]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4023024]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4023025]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4023025] = {}
	tAdjustLottery_RidGift[4023025]["LogId"] = 12001462
	tAdjustLottery_RidGift[4023025]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4023025]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4023025]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4023025]["RewardItem"] = {}
	tAdjustLottery_RidGift[4023025]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4023025]["RewardItem"][1]["Id"] = 4023025 -- 【库】BloodTide(+25)[属性:8], 【表格】BloodTide
	tAdjustLottery_RidGift[4023025]["RewardItem"][1]["Attr"] = "0 1" -- BloodTide(+25)*1
	tAdjustLottery_RidGift[4023025]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4023025]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4023025]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4023026]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4023026] = {}
	tAdjustLottery_RidGift[4023026]["LogId"] = 12001462
	tAdjustLottery_RidGift[4023026]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4023026]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4023026]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4023026]["RewardItem"] = {}
	tAdjustLottery_RidGift[4023026]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4023026]["RewardItem"][1]["Id"] = 4023026 -- 【库】BloodTide(+26)[属性:8], 【表格】BloodTide
	tAdjustLottery_RidGift[4023026]["RewardItem"][1]["Attr"] = "0 1" -- BloodTide(+26)*1
	tAdjustLottery_RidGift[4023026]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4023026]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4023026]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4023027]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4023027] = {}
	tAdjustLottery_RidGift[4023027]["LogId"] = 12001462
	tAdjustLottery_RidGift[4023027]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4023027]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4023027]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4023027]["RewardItem"] = {}
	tAdjustLottery_RidGift[4023027]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4023027]["RewardItem"][1]["Id"] = 4023027 -- 【库】BloodTide(+27)[属性:8], 【表格】BloodTide
	tAdjustLottery_RidGift[4023027]["RewardItem"][1]["Attr"] = "0 1" -- BloodTide(+27)*1
	tAdjustLottery_RidGift[4023027]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4023027]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4023027]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4031401]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4031401] = {}
	tAdjustLottery_RidGift[4031401]["LogId"] = 12001462
	tAdjustLottery_RidGift[4031401]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4031401]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4031401]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4031401]["RewardItem"] = {}
	tAdjustLottery_RidGift[4031401]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4031401]["RewardItem"][1]["Id"] = 4031401 -- 【库】QuickMount(+1)[属性:8], 【表格】QuickMount
	tAdjustLottery_RidGift[4031401]["RewardItem"][1]["Attr"] = "0 1" -- QuickMount(+1)*1
	tAdjustLottery_RidGift[4031401]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4031401]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4031401]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4031402]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4031402] = {}
	tAdjustLottery_RidGift[4031402]["LogId"] = 12001462
	tAdjustLottery_RidGift[4031402]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4031402]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4031402]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4031402]["RewardItem"] = {}
	tAdjustLottery_RidGift[4031402]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4031402]["RewardItem"][1]["Id"] = 4031402 -- 【库】QuickMount(+2)[属性:8], 【表格】QuickMount
	tAdjustLottery_RidGift[4031402]["RewardItem"][1]["Attr"] = "0 1" -- QuickMount(+2)*1
	tAdjustLottery_RidGift[4031402]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4031402]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4031402]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4031403]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4031403] = {}
	tAdjustLottery_RidGift[4031403]["LogId"] = 12001462
	tAdjustLottery_RidGift[4031403]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4031403]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4031403]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4031403]["RewardItem"] = {}
	tAdjustLottery_RidGift[4031403]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4031403]["RewardItem"][1]["Id"] = 4031403 -- 【库】QuickMount(+3)[属性:8], 【表格】QuickMount
	tAdjustLottery_RidGift[4031403]["RewardItem"][1]["Attr"] = "0 1" -- QuickMount(+3)*1
	tAdjustLottery_RidGift[4031403]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4031403]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4031403]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4031404]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4031404] = {}
	tAdjustLottery_RidGift[4031404]["LogId"] = 12001462
	tAdjustLottery_RidGift[4031404]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4031404]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4031404]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4031404]["RewardItem"] = {}
	tAdjustLottery_RidGift[4031404]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4031404]["RewardItem"][1]["Id"] = 4031404 -- 【库】QuickMount(+4)[属性:8], 【表格】QuickMount
	tAdjustLottery_RidGift[4031404]["RewardItem"][1]["Attr"] = "0 1" -- QuickMount(+4)*1
	tAdjustLottery_RidGift[4031404]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4031404]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4031404]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4031405]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4031405] = {}
	tAdjustLottery_RidGift[4031405]["LogId"] = 12001462
	tAdjustLottery_RidGift[4031405]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4031405]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4031405]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4031405]["RewardItem"] = {}
	tAdjustLottery_RidGift[4031405]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4031405]["RewardItem"][1]["Id"] = 4031405 -- 【库】QuickMount(+5)[属性:8], 【表格】QuickMount
	tAdjustLottery_RidGift[4031405]["RewardItem"][1]["Attr"] = "0 1" -- QuickMount(+5)*1
	tAdjustLottery_RidGift[4031405]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4031405]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4031405]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4031406]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4031406] = {}
	tAdjustLottery_RidGift[4031406]["LogId"] = 12001462
	tAdjustLottery_RidGift[4031406]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4031406]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4031406]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4031406]["RewardItem"] = {}
	tAdjustLottery_RidGift[4031406]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4031406]["RewardItem"][1]["Id"] = 4031406 -- 【库】QuickMount(+6)[属性:8], 【表格】QuickMount
	tAdjustLottery_RidGift[4031406]["RewardItem"][1]["Attr"] = "0 1" -- QuickMount(+6)*1
	tAdjustLottery_RidGift[4031406]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4031406]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4031406]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4031407]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4031407] = {}
	tAdjustLottery_RidGift[4031407]["LogId"] = 12001462
	tAdjustLottery_RidGift[4031407]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4031407]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4031407]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4031407]["RewardItem"] = {}
	tAdjustLottery_RidGift[4031407]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4031407]["RewardItem"][1]["Id"] = 4031407 -- 【库】QuickMount(+7)[属性:8], 【表格】QuickMount
	tAdjustLottery_RidGift[4031407]["RewardItem"][1]["Attr"] = "0 1" -- QuickMount(+7)*1
	tAdjustLottery_RidGift[4031407]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4031407]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4031407]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4031408]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4031408] = {}
	tAdjustLottery_RidGift[4031408]["LogId"] = 12001462
	tAdjustLottery_RidGift[4031408]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4031408]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4031408]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4031408]["RewardItem"] = {}
	tAdjustLottery_RidGift[4031408]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4031408]["RewardItem"][1]["Id"] = 4031408 -- 【库】QuickMount(+8)[属性:8], 【表格】QuickMount
	tAdjustLottery_RidGift[4031408]["RewardItem"][1]["Attr"] = "0 1" -- QuickMount(+8)*1
	tAdjustLottery_RidGift[4031408]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4031408]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4031408]["RewardEffect"]["Effect"] = "angelwing"

	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4031409]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4031409] = {}
	tAdjustLottery_RidGift[4031409]["LogId"] = 12001462
	tAdjustLottery_RidGift[4031409]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4031409]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4031409]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4031409]["RewardItem"] = {}
	tAdjustLottery_RidGift[4031409]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4031409]["RewardItem"][1]["Id"] = 4031409 -- 【库】QuickMount(+9)[属性:8], 【表格】QuickMount
	tAdjustLottery_RidGift[4031409]["RewardItem"][1]["Attr"] = "0 1" -- QuickMount(+9)*1
	tAdjustLottery_RidGift[4031409]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4031409]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4031409]["RewardEffect"]["Effect"] = "angelwing"

	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4031501]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4031501] = {}
	tAdjustLottery_RidGift[4031501]["LogId"] = 12001462
	tAdjustLottery_RidGift[4031501]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4031501]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4031501]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4031501]["RewardItem"] = {}
	tAdjustLottery_RidGift[4031501]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4031501]["RewardItem"][1]["Id"] = 4031501 -- 【库】Breakdown(+1)[属性:8], 【表格】Breakdown
	tAdjustLottery_RidGift[4031501]["RewardItem"][1]["Attr"] = "0 1" -- Breakdown(+1)*1
	tAdjustLottery_RidGift[4031501]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4031501]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4031501]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4031502]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4031502] = {}
	tAdjustLottery_RidGift[4031502]["LogId"] = 12001462
	tAdjustLottery_RidGift[4031502]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4031502]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4031502]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4031502]["RewardItem"] = {}
	tAdjustLottery_RidGift[4031502]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4031502]["RewardItem"][1]["Id"] = 4031502 -- 【库】Breakdown(+2)[属性:8], 【表格】Breakdown
	tAdjustLottery_RidGift[4031502]["RewardItem"][1]["Attr"] = "0 1" -- Breakdown(+2)*1
	tAdjustLottery_RidGift[4031502]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4031502]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4031502]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4031503]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4031503] = {}
	tAdjustLottery_RidGift[4031503]["LogId"] = 12001462
	tAdjustLottery_RidGift[4031503]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4031503]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4031503]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4031503]["RewardItem"] = {}
	tAdjustLottery_RidGift[4031503]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4031503]["RewardItem"][1]["Id"] = 4031503 -- 【库】Breakdown(+3)[属性:8], 【表格】Breakdown
	tAdjustLottery_RidGift[4031503]["RewardItem"][1]["Attr"] = "0 1" -- Breakdown(+3)*1
	tAdjustLottery_RidGift[4031503]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4031503]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4031503]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4031504]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4031504] = {}
	tAdjustLottery_RidGift[4031504]["LogId"] = 12001462
	tAdjustLottery_RidGift[4031504]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4031504]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4031504]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4031504]["RewardItem"] = {}
	tAdjustLottery_RidGift[4031504]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4031504]["RewardItem"][1]["Id"] = 4031504 -- 【库】Breakdown(+4)[属性:8], 【表格】Breakdown
	tAdjustLottery_RidGift[4031504]["RewardItem"][1]["Attr"] = "0 1" -- Breakdown(+4)*1
	tAdjustLottery_RidGift[4031504]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4031504]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4031504]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4031505]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4031505] = {}
	tAdjustLottery_RidGift[4031505]["LogId"] = 12001462
	tAdjustLottery_RidGift[4031505]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4031505]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4031505]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4031505]["RewardItem"] = {}
	tAdjustLottery_RidGift[4031505]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4031505]["RewardItem"][1]["Id"] = 4031505 -- 【库】Breakdown(+5)[属性:8], 【表格】Breakdown
	tAdjustLottery_RidGift[4031505]["RewardItem"][1]["Attr"] = "0 1" -- Breakdown(+5)*1
	tAdjustLottery_RidGift[4031505]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4031505]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4031505]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4031506]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4031506] = {}
	tAdjustLottery_RidGift[4031506]["LogId"] = 12001462
	tAdjustLottery_RidGift[4031506]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4031506]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4031506]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4031506]["RewardItem"] = {}
	tAdjustLottery_RidGift[4031506]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4031506]["RewardItem"][1]["Id"] = 4031506 -- 【库】Breakdown(+6)[属性:8], 【表格】Breakdown
	tAdjustLottery_RidGift[4031506]["RewardItem"][1]["Attr"] = "0 1" -- Breakdown(+6)*1
	tAdjustLottery_RidGift[4031506]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4031506]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4031506]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4031507]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4031507] = {}
	tAdjustLottery_RidGift[4031507]["LogId"] = 12001462
	tAdjustLottery_RidGift[4031507]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4031507]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4031507]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4031507]["RewardItem"] = {}
	tAdjustLottery_RidGift[4031507]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4031507]["RewardItem"][1]["Id"] = 4031507 -- 【库】Breakdown(+7)[属性:8], 【表格】Breakdown
	tAdjustLottery_RidGift[4031507]["RewardItem"][1]["Attr"] = "0 1" -- Breakdown(+7)*1
	tAdjustLottery_RidGift[4031507]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4031507]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4031507]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4031508]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4031508] = {}
	tAdjustLottery_RidGift[4031508]["LogId"] = 12001462
	tAdjustLottery_RidGift[4031508]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4031508]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4031508]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4031508]["RewardItem"] = {}
	tAdjustLottery_RidGift[4031508]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4031508]["RewardItem"][1]["Id"] = 4031508 -- 【库】Breakdown(+8)[属性:8], 【表格】Breakdown
	tAdjustLottery_RidGift[4031508]["RewardItem"][1]["Attr"] = "0 1" -- Breakdown(+8)*1
	tAdjustLottery_RidGift[4031508]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4031508]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4031508]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4031509]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4031509] = {}
	tAdjustLottery_RidGift[4031509]["LogId"] = 12001462
	tAdjustLottery_RidGift[4031509]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4031509]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4031509]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4031509]["RewardItem"] = {}
	tAdjustLottery_RidGift[4031509]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4031509]["RewardItem"][1]["Id"] = 4031509 -- 【库】Breakdown(+9)[属性:8], 【表格】Breakdown
	tAdjustLottery_RidGift[4031509]["RewardItem"][1]["Attr"] = "0 1" -- Breakdown(+9)*1
	tAdjustLottery_RidGift[4031509]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4031509]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4031509]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4031601]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4031601] = {}
	tAdjustLottery_RidGift[4031601]["LogId"] = 12001462
	tAdjustLottery_RidGift[4031601]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4031601]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4031601]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4031601]["RewardItem"] = {}
	tAdjustLottery_RidGift[4031601]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4031601]["RewardItem"][1]["Id"] = 4031601 -- 【库】Barrier(+1)[属性:8], 【表格】Barrier
	tAdjustLottery_RidGift[4031601]["RewardItem"][1]["Attr"] = "0 1" -- Barrier(+1)*1
	tAdjustLottery_RidGift[4031601]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4031601]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4031601]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4031602]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4031602] = {}
	tAdjustLottery_RidGift[4031602]["LogId"] = 12001462
	tAdjustLottery_RidGift[4031602]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4031602]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4031602]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4031602]["RewardItem"] = {}
	tAdjustLottery_RidGift[4031602]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4031602]["RewardItem"][1]["Id"] = 4031602 -- 【库】Barrier(+2)[属性:8], 【表格】Barrier
	tAdjustLottery_RidGift[4031602]["RewardItem"][1]["Attr"] = "0 1" -- Barrier(+2)*1
	tAdjustLottery_RidGift[4031602]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4031602]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4031602]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4031603]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4031603] = {}
	tAdjustLottery_RidGift[4031603]["LogId"] = 12001462
	tAdjustLottery_RidGift[4031603]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4031603]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4031603]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4031603]["RewardItem"] = {}
	tAdjustLottery_RidGift[4031603]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4031603]["RewardItem"][1]["Id"] = 4031603 -- 【库】Barrier(+3)[属性:8], 【表格】Barrier
	tAdjustLottery_RidGift[4031603]["RewardItem"][1]["Attr"] = "0 1" -- Barrier(+3)*1
	tAdjustLottery_RidGift[4031603]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4031603]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4031603]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4031604]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4031604] = {}
	tAdjustLottery_RidGift[4031604]["LogId"] = 12001462
	tAdjustLottery_RidGift[4031604]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4031604]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4031604]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4031604]["RewardItem"] = {}
	tAdjustLottery_RidGift[4031604]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4031604]["RewardItem"][1]["Id"] = 4031604 -- 【库】Barrier(+4)[属性:8], 【表格】Barrier
	tAdjustLottery_RidGift[4031604]["RewardItem"][1]["Attr"] = "0 1" -- Barrier(+4)*1
	tAdjustLottery_RidGift[4031604]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4031604]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4031604]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4031605]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4031605] = {}
	tAdjustLottery_RidGift[4031605]["LogId"] = 12001462
	tAdjustLottery_RidGift[4031605]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4031605]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4031605]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4031605]["RewardItem"] = {}
	tAdjustLottery_RidGift[4031605]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4031605]["RewardItem"][1]["Id"] = 4031605 -- 【库】Barrier(+5)[属性:8], 【表格】Barrier
	tAdjustLottery_RidGift[4031605]["RewardItem"][1]["Attr"] = "0 1" -- Barrier(+5)*1
	tAdjustLottery_RidGift[4031605]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4031605]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4031605]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4031606]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4031606] = {}
	tAdjustLottery_RidGift[4031606]["LogId"] = 12001462
	tAdjustLottery_RidGift[4031606]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4031606]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4031606]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4031606]["RewardItem"] = {}
	tAdjustLottery_RidGift[4031606]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4031606]["RewardItem"][1]["Id"] = 4031606 -- 【库】Barrier(+6)[属性:8], 【表格】Barrier
	tAdjustLottery_RidGift[4031606]["RewardItem"][1]["Attr"] = "0 1" -- Barrier(+6)*1
	tAdjustLottery_RidGift[4031606]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4031606]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4031606]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4031607]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4031607] = {}
	tAdjustLottery_RidGift[4031607]["LogId"] = 12001462
	tAdjustLottery_RidGift[4031607]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4031607]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4031607]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4031607]["RewardItem"] = {}
	tAdjustLottery_RidGift[4031607]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4031607]["RewardItem"][1]["Id"] = 4031607 -- 【库】Barrier(+7)[属性:8], 【表格】Barrier
	tAdjustLottery_RidGift[4031607]["RewardItem"][1]["Attr"] = "0 1" -- Barrier(+7)*1
	tAdjustLottery_RidGift[4031607]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4031607]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4031607]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4031608]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4031608] = {}
	tAdjustLottery_RidGift[4031608]["LogId"] = 12001462
	tAdjustLottery_RidGift[4031608]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4031608]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4031608]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4031608]["RewardItem"] = {}
	tAdjustLottery_RidGift[4031608]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4031608]["RewardItem"][1]["Id"] = 4031608 -- 【库】Barrier(+8)[属性:8], 【表格】Barrier
	tAdjustLottery_RidGift[4031608]["RewardItem"][1]["Attr"] = "0 1" -- Barrier(+8)*1
	tAdjustLottery_RidGift[4031608]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4031608]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4031608]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4031609]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4031609] = {}
	tAdjustLottery_RidGift[4031609]["LogId"] = 12001462
	tAdjustLottery_RidGift[4031609]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4031609]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4031609]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4031609]["RewardItem"] = {}
	tAdjustLottery_RidGift[4031609]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4031609]["RewardItem"][1]["Id"] = 4031609 -- 【库】Barrier(+9)[属性:8], 【表格】Barrier
	tAdjustLottery_RidGift[4031609]["RewardItem"][1]["Attr"] = "0 1" -- Barrier(+9)*1
	tAdjustLottery_RidGift[4031609]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4031609]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4031609]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032001]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032001] = {}
	tAdjustLottery_RidGift[4032001]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032001]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032001]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032001]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032001]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032001]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032001]["RewardItem"][1]["Id"] = 4032001 -- 【库】Sanctity(+1)[属性:8], 【表格】Sanctity
	tAdjustLottery_RidGift[4032001]["RewardItem"][1]["Attr"] = "0 1" -- Sanctity(+1)*1
	tAdjustLottery_RidGift[4032001]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032001]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032001]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032002]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032002] = {}
	tAdjustLottery_RidGift[4032002]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032002]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032002]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032002]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032002]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032002]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032002]["RewardItem"][1]["Id"] = 4032002 -- 【库】Sanctity(+2)[属性:8], 【表格】Sanctity
	tAdjustLottery_RidGift[4032002]["RewardItem"][1]["Attr"] = "0 1" -- Sanctity(+2)*1
	tAdjustLottery_RidGift[4032002]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032002]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032002]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032003]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032003] = {}
	tAdjustLottery_RidGift[4032003]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032003]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032003]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032003]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032003]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032003]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032003]["RewardItem"][1]["Id"] = 4032003 -- 【库】Sanctity(+3)[属性:8], 【表格】Sanctity
	tAdjustLottery_RidGift[4032003]["RewardItem"][1]["Attr"] = "0 1" -- Sanctity(+3)*1
	tAdjustLottery_RidGift[4032003]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032003]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032003]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032004]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032004] = {}
	tAdjustLottery_RidGift[4032004]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032004]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032004]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032004]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032004]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032004]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032004]["RewardItem"][1]["Id"] = 4032004 -- 【库】Sanctity(+4)[属性:8], 【表格】Sanctity
	tAdjustLottery_RidGift[4032004]["RewardItem"][1]["Attr"] = "0 1" -- Sanctity(+4)*1
	tAdjustLottery_RidGift[4032004]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032004]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032004]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032005]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032005] = {}
	tAdjustLottery_RidGift[4032005]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032005]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032005]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032005]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032005]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032005]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032005]["RewardItem"][1]["Id"] = 4032005 -- 【库】Sanctity(+5)[属性:8], 【表格】Sanctity
	tAdjustLottery_RidGift[4032005]["RewardItem"][1]["Attr"] = "0 1" -- Sanctity(+5)*1
	tAdjustLottery_RidGift[4032005]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032005]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032005]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032006]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032006] = {}
	tAdjustLottery_RidGift[4032006]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032006]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032006]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032006]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032006]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032006]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032006]["RewardItem"][1]["Id"] = 4032006 -- 【库】Sanctity(+6)[属性:8], 【表格】Sanctity
	tAdjustLottery_RidGift[4032006]["RewardItem"][1]["Attr"] = "0 1" -- Sanctity(+6)*1
	tAdjustLottery_RidGift[4032006]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032006]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032006]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032007]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032007] = {}
	tAdjustLottery_RidGift[4032007]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032007]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032007]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032007]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032007]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032007]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032007]["RewardItem"][1]["Id"] = 4032007 -- 【库】Sanctity(+7)[属性:8], 【表格】Sanctity
	tAdjustLottery_RidGift[4032007]["RewardItem"][1]["Attr"] = "0 1" -- Sanctity(+7)*1
	tAdjustLottery_RidGift[4032007]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032007]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032007]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032008]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032008] = {}
	tAdjustLottery_RidGift[4032008]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032008]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032008]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032008]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032008]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032008]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032008]["RewardItem"][1]["Id"] = 4032008 -- 【库】Sanctity(+8)[属性:8], 【表格】Sanctity
	tAdjustLottery_RidGift[4032008]["RewardItem"][1]["Attr"] = "0 1" -- Sanctity(+8)*1
	tAdjustLottery_RidGift[4032008]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032008]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032008]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032009]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032009] = {}
	tAdjustLottery_RidGift[4032009]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032009]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032009]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032009]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032009]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032009]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032009]["RewardItem"][1]["Id"] = 4032009 -- 【库】Sanctity(+9)[属性:8], 【表格】Sanctity
	tAdjustLottery_RidGift[4032009]["RewardItem"][1]["Attr"] = "0 1" -- Sanctity(+9)*1
	tAdjustLottery_RidGift[4032009]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032009]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032009]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032101]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032101] = {}
	tAdjustLottery_RidGift[4032101]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032101]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032101]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032101]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032101]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032101]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032101]["RewardItem"][1]["Id"] = 4032101 -- 【库】FireBlast(+1)[属性:8], 【表格】FireBlast
	tAdjustLottery_RidGift[4032101]["RewardItem"][1]["Attr"] = "0 1" -- FireBlast(+1)*1
	tAdjustLottery_RidGift[4032101]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032101]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032101]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032102]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032102] = {}
	tAdjustLottery_RidGift[4032102]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032102]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032102]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032102]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032102]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032102]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032102]["RewardItem"][1]["Id"] = 4032102 -- 【库】FireBlast(+2)[属性:8], 【表格】FireBlast
	tAdjustLottery_RidGift[4032102]["RewardItem"][1]["Attr"] = "0 1" -- FireBlast(+2)*1
	tAdjustLottery_RidGift[4032102]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032102]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032102]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032103]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032103] = {}
	tAdjustLottery_RidGift[4032103]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032103]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032103]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032103]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032103]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032103]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032103]["RewardItem"][1]["Id"] = 4032103 -- 【库】FireBlast(+3)[属性:8], 【表格】FireBlast
	tAdjustLottery_RidGift[4032103]["RewardItem"][1]["Attr"] = "0 1" -- FireBlast(+3)*1
	tAdjustLottery_RidGift[4032103]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032103]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032103]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032104]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032104] = {}
	tAdjustLottery_RidGift[4032104]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032104]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032104]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032104]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032104]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032104]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032104]["RewardItem"][1]["Id"] = 4032104 -- 【库】FireBlast(+4)[属性:8], 【表格】FireBlast
	tAdjustLottery_RidGift[4032104]["RewardItem"][1]["Attr"] = "0 1" -- FireBlast(+4)*1
	tAdjustLottery_RidGift[4032104]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032104]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032104]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032105]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032105] = {}
	tAdjustLottery_RidGift[4032105]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032105]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032105]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032105]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032105]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032105]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032105]["RewardItem"][1]["Id"] = 4032105 -- 【库】FireBlast(+5)[属性:8], 【表格】FireBlast
	tAdjustLottery_RidGift[4032105]["RewardItem"][1]["Attr"] = "0 1" -- FireBlast(+5)*1
	tAdjustLottery_RidGift[4032105]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032105]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032105]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032106]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032106] = {}
	tAdjustLottery_RidGift[4032106]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032106]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032106]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032106]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032106]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032106]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032106]["RewardItem"][1]["Id"] = 4032106 -- 【库】FireBlast(+6)[属性:8], 【表格】FireBlast
	tAdjustLottery_RidGift[4032106]["RewardItem"][1]["Attr"] = "0 1" -- FireBlast(+6)*1
	tAdjustLottery_RidGift[4032106]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032106]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032106]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032107]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032107] = {}
	tAdjustLottery_RidGift[4032107]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032107]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032107]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032107]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032107]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032107]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032107]["RewardItem"][1]["Id"] = 4032107 -- 【库】FireBlast(+7)[属性:8], 【表格】FireBlast
	tAdjustLottery_RidGift[4032107]["RewardItem"][1]["Attr"] = "0 1" -- FireBlast(+7)*1
	tAdjustLottery_RidGift[4032107]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032107]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032107]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032108]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032108] = {}
	tAdjustLottery_RidGift[4032108]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032108]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032108]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032108]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032108]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032108]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032108]["RewardItem"][1]["Id"] = 4032108 -- 【库】FireBlast(+8)[属性:8], 【表格】FireBlast
	tAdjustLottery_RidGift[4032108]["RewardItem"][1]["Attr"] = "0 1" -- FireBlast(+8)*1
	tAdjustLottery_RidGift[4032108]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032108]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032108]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032109]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032109] = {}
	tAdjustLottery_RidGift[4032109]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032109]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032109]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032109]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032109]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032109]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032109]["RewardItem"][1]["Id"] = 4032109 -- 【库】FireBlast(+9)[属性:8], 【表格】FireBlast
	tAdjustLottery_RidGift[4032109]["RewardItem"][1]["Attr"] = "0 1" -- FireBlast(+9)*1
	tAdjustLottery_RidGift[4032109]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032109]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032109]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032201]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032201] = {}
	tAdjustLottery_RidGift[4032201]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032201]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032201]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032201]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032201]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032201]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032201]["RewardItem"][1]["Id"] = 4032201 -- 【库】Serenity(+1)[属性:8], 【表格】Serenity
	tAdjustLottery_RidGift[4032201]["RewardItem"][1]["Attr"] = "0 1" -- Serenity(+1)*1
	tAdjustLottery_RidGift[4032201]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032201]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032201]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032202]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032202] = {}
	tAdjustLottery_RidGift[4032202]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032202]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032202]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032202]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032202]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032202]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032202]["RewardItem"][1]["Id"] = 4032202 -- 【库】Serenity(+2)[属性:8], 【表格】Serenity
	tAdjustLottery_RidGift[4032202]["RewardItem"][1]["Attr"] = "0 1" -- Serenity(+2)*1
	tAdjustLottery_RidGift[4032202]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032202]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032202]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032203]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032203] = {}
	tAdjustLottery_RidGift[4032203]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032203]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032203]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032203]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032203]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032203]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032203]["RewardItem"][1]["Id"] = 4032203 -- 【库】Serenity(+3)[属性:8], 【表格】Serenity
	tAdjustLottery_RidGift[4032203]["RewardItem"][1]["Attr"] = "0 1" -- Serenity(+3)*1
	tAdjustLottery_RidGift[4032203]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032203]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032203]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032204]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032204] = {}
	tAdjustLottery_RidGift[4032204]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032204]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032204]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032204]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032204]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032204]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032204]["RewardItem"][1]["Id"] = 4032204 -- 【库】Serenity(+4)[属性:8], 【表格】Serenity
	tAdjustLottery_RidGift[4032204]["RewardItem"][1]["Attr"] = "0 1" -- Serenity(+4)*1
	tAdjustLottery_RidGift[4032204]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032204]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032204]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032205]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032205] = {}
	tAdjustLottery_RidGift[4032205]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032205]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032205]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032205]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032205]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032205]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032205]["RewardItem"][1]["Id"] = 4032205 -- 【库】Serenity(+5)[属性:8], 【表格】Serenity
	tAdjustLottery_RidGift[4032205]["RewardItem"][1]["Attr"] = "0 1" -- Serenity(+5)*1
	tAdjustLottery_RidGift[4032205]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032205]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032205]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032206]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032206] = {}
	tAdjustLottery_RidGift[4032206]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032206]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032206]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032206]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032206]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032206]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032206]["RewardItem"][1]["Id"] = 4032206 -- 【库】Serenity(+6)[属性:8], 【表格】Serenity
	tAdjustLottery_RidGift[4032206]["RewardItem"][1]["Attr"] = "0 1" -- Serenity(+6)*1
	tAdjustLottery_RidGift[4032206]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032206]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032206]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032207]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032207] = {}
	tAdjustLottery_RidGift[4032207]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032207]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032207]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032207]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032207]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032207]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032207]["RewardItem"][1]["Id"] = 4032207 -- 【库】Serenity(+7)[属性:8], 【表格】Serenity
	tAdjustLottery_RidGift[4032207]["RewardItem"][1]["Attr"] = "0 1" -- Serenity(+7)*1
	tAdjustLottery_RidGift[4032207]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032207]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032207]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032208]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032208] = {}
	tAdjustLottery_RidGift[4032208]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032208]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032208]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032208]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032208]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032208]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032208]["RewardItem"][1]["Id"] = 4032208 -- 【库】Serenity(+8)[属性:8], 【表格】Serenity
	tAdjustLottery_RidGift[4032208]["RewardItem"][1]["Attr"] = "0 1" -- Serenity(+8)*1
	tAdjustLottery_RidGift[4032208]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032208]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032208]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032209]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032209] = {}
	tAdjustLottery_RidGift[4032209]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032209]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032209]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032209]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032209]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032209]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032209]["RewardItem"][1]["Id"] = 4032209 -- 【库】Serenity(+9)[属性:8], 【表格】Serenity
	tAdjustLottery_RidGift[4032209]["RewardItem"][1]["Attr"] = "0 1" -- Serenity(+9)*1
	tAdjustLottery_RidGift[4032209]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032209]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032209]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032301]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032301] = {}
	tAdjustLottery_RidGift[4032301]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032301]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032301]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032301]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032301]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032301]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032301]["RewardItem"][1]["Id"] = 4032301 -- 【库】Wonder(+1)[属性:8], 【表格】Wonder
	tAdjustLottery_RidGift[4032301]["RewardItem"][1]["Attr"] = "0 1" -- Wonder(+1)*1
	tAdjustLottery_RidGift[4032301]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032301]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032301]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032302]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032302] = {}
	tAdjustLottery_RidGift[4032302]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032302]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032302]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032302]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032302]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032302]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032302]["RewardItem"][1]["Id"] = 4032302 -- 【库】Wonder(+2)[属性:8], 【表格】Wonder
	tAdjustLottery_RidGift[4032302]["RewardItem"][1]["Attr"] = "0 1" -- Wonder(+2)*1
	tAdjustLottery_RidGift[4032302]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032302]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032302]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032303]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032303] = {}
	tAdjustLottery_RidGift[4032303]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032303]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032303]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032303]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032303]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032303]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032303]["RewardItem"][1]["Id"] = 4032303 -- 【库】Wonder(+3)[属性:8], 【表格】Wonder
	tAdjustLottery_RidGift[4032303]["RewardItem"][1]["Attr"] = "0 1" -- Wonder(+3)*1
	tAdjustLottery_RidGift[4032303]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032303]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032303]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032304]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032304] = {}
	tAdjustLottery_RidGift[4032304]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032304]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032304]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032304]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032304]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032304]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032304]["RewardItem"][1]["Id"] = 4032304 -- 【库】Wonder(+4)[属性:8], 【表格】Wonder
	tAdjustLottery_RidGift[4032304]["RewardItem"][1]["Attr"] = "0 1" -- Wonder(+4)*1
	tAdjustLottery_RidGift[4032304]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032304]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032304]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032305]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032305] = {}
	tAdjustLottery_RidGift[4032305]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032305]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032305]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032305]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032305]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032305]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032305]["RewardItem"][1]["Id"] = 4032305 -- 【库】Wonder(+5)[属性:8], 【表格】Wonder
	tAdjustLottery_RidGift[4032305]["RewardItem"][1]["Attr"] = "0 1" -- Wonder(+5)*1
	tAdjustLottery_RidGift[4032305]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032305]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032305]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032306]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032306] = {}
	tAdjustLottery_RidGift[4032306]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032306]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032306]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032306]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032306]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032306]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032306]["RewardItem"][1]["Id"] = 4032306 -- 【库】Wonder(+6)[属性:8], 【表格】Wonder
	tAdjustLottery_RidGift[4032306]["RewardItem"][1]["Attr"] = "0 1" -- Wonder(+6)*1
	tAdjustLottery_RidGift[4032306]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032306]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032306]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032307]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032307] = {}
	tAdjustLottery_RidGift[4032307]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032307]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032307]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032307]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032307]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032307]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032307]["RewardItem"][1]["Id"] = 4032307 -- 【库】Wonder(+7)[属性:8], 【表格】Wonder
	tAdjustLottery_RidGift[4032307]["RewardItem"][1]["Attr"] = "0 1" -- Wonder(+7)*1
	tAdjustLottery_RidGift[4032307]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032307]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032307]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032308]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032308] = {}
	tAdjustLottery_RidGift[4032308]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032308]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032308]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032308]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032308]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032308]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032308]["RewardItem"][1]["Id"] = 4032308 -- 【库】Wonder(+8)[属性:8], 【表格】Wonder
	tAdjustLottery_RidGift[4032308]["RewardItem"][1]["Attr"] = "0 1" -- Wonder(+8)*1
	tAdjustLottery_RidGift[4032308]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032308]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032308]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032309]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032309] = {}
	tAdjustLottery_RidGift[4032309]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032309]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032309]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032309]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032309]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032309]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032309]["RewardItem"][1]["Id"] = 4032309 -- 【库】Wonder(+9)[属性:8], 【表格】Wonder
	tAdjustLottery_RidGift[4032309]["RewardItem"][1]["Attr"] = "0 1" -- Wonder(+9)*1
	tAdjustLottery_RidGift[4032309]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032309]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032309]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032401]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032401] = {}
	tAdjustLottery_RidGift[4032401]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032401]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032401]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032401]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032401]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032401]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032401]["RewardItem"][1]["Id"] = 4032401 -- 【库】SoulChant(+1)[属性:8], 【表格】SoulChant
	tAdjustLottery_RidGift[4032401]["RewardItem"][1]["Attr"] = "0 1" -- SoulChant(+1)*1
	tAdjustLottery_RidGift[4032401]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032401]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032401]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032402]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032402] = {}
	tAdjustLottery_RidGift[4032402]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032402]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032402]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032402]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032402]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032402]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032402]["RewardItem"][1]["Id"] = 4032402 -- 【库】SoulChant(+2)[属性:8], 【表格】SoulChant
	tAdjustLottery_RidGift[4032402]["RewardItem"][1]["Attr"] = "0 1" -- SoulChant(+2)*1
	tAdjustLottery_RidGift[4032402]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032402]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032402]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032403]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032403] = {}
	tAdjustLottery_RidGift[4032403]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032403]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032403]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032403]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032403]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032403]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032403]["RewardItem"][1]["Id"] = 4032403 -- 【库】SoulChant(+3)[属性:8], 【表格】SoulChant
	tAdjustLottery_RidGift[4032403]["RewardItem"][1]["Attr"] = "0 1" -- SoulChant(+3)*1
	tAdjustLottery_RidGift[4032403]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032403]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032403]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032404]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032404] = {}
	tAdjustLottery_RidGift[4032404]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032404]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032404]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032404]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032404]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032404]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032404]["RewardItem"][1]["Id"] = 4032404 -- 【库】SoulChant(+4)[属性:8], 【表格】SoulChant
	tAdjustLottery_RidGift[4032404]["RewardItem"][1]["Attr"] = "0 1" -- SoulChant(+4)*1
	tAdjustLottery_RidGift[4032404]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032404]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032404]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032405]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032405] = {}
	tAdjustLottery_RidGift[4032405]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032405]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032405]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032405]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032405]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032405]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032405]["RewardItem"][1]["Id"] = 4032405 -- 【库】SoulChant(+5)[属性:8], 【表格】SoulChant
	tAdjustLottery_RidGift[4032405]["RewardItem"][1]["Attr"] = "0 1" -- SoulChant(+5)*1
	tAdjustLottery_RidGift[4032405]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032405]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032405]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032406]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032406] = {}
	tAdjustLottery_RidGift[4032406]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032406]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032406]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032406]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032406]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032406]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032406]["RewardItem"][1]["Id"] = 4032406 -- 【库】SoulChant(+6)[属性:8], 【表格】SoulChant
	tAdjustLottery_RidGift[4032406]["RewardItem"][1]["Attr"] = "0 1" -- SoulChant(+6)*1
	tAdjustLottery_RidGift[4032406]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032406]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032406]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032407]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032407] = {}
	tAdjustLottery_RidGift[4032407]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032407]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032407]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032407]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032407]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032407]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032407]["RewardItem"][1]["Id"] = 4032407 -- 【库】SoulChant(+7)[属性:8], 【表格】SoulChant
	tAdjustLottery_RidGift[4032407]["RewardItem"][1]["Attr"] = "0 1" -- SoulChant(+7)*1
	tAdjustLottery_RidGift[4032407]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032407]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032407]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032408]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032408] = {}
	tAdjustLottery_RidGift[4032408]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032408]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032408]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032408]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032408]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032408]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032408]["RewardItem"][1]["Id"] = 4032408 -- 【库】SoulChant(+8)[属性:8], 【表格】SoulChant
	tAdjustLottery_RidGift[4032408]["RewardItem"][1]["Attr"] = "0 1" -- SoulChant(+8)*1
	tAdjustLottery_RidGift[4032408]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032408]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032408]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032409]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032409] = {}
	tAdjustLottery_RidGift[4032409]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032409]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032409]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032409]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032409]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032409]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032409]["RewardItem"][1]["Id"] = 4032409 -- 【库】SoulChant(+9)[属性:8], 【表格】SoulChant
	tAdjustLottery_RidGift[4032409]["RewardItem"][1]["Attr"] = "0 1" -- SoulChant(+9)*1
	tAdjustLottery_RidGift[4032409]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032409]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032409]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032501]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032501] = {}
	tAdjustLottery_RidGift[4032501]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032501]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032501]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032501]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032501]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032501]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032501]["RewardItem"][1]["Id"] = 4032501 -- 【库】WideSwipe(+1)[属性:8], 【表格】WideSwipe
	tAdjustLottery_RidGift[4032501]["RewardItem"][1]["Attr"] = "0 1" -- WideSwipe(+1)*1
	tAdjustLottery_RidGift[4032501]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032501]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032501]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032502]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032502] = {}
	tAdjustLottery_RidGift[4032502]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032502]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032502]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032502]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032502]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032502]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032502]["RewardItem"][1]["Id"] = 4032502 -- 【库】WideSwipe(+2)[属性:8], 【表格】WideSwipe
	tAdjustLottery_RidGift[4032502]["RewardItem"][1]["Attr"] = "0 1" -- WideSwipe(+2)*1
	tAdjustLottery_RidGift[4032502]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032502]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032502]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032503]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032503] = {}
	tAdjustLottery_RidGift[4032503]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032503]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032503]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032503]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032503]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032503]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032503]["RewardItem"][1]["Id"] = 4032503 -- 【库】WideSwipe(+3)[属性:8], 【表格】WideSwipe
	tAdjustLottery_RidGift[4032503]["RewardItem"][1]["Attr"] = "0 1" -- WideSwipe(+3)*1
	tAdjustLottery_RidGift[4032503]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032503]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032503]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032504]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032504] = {}
	tAdjustLottery_RidGift[4032504]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032504]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032504]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032504]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032504]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032504]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032504]["RewardItem"][1]["Id"] = 4032504 -- 【库】WideSwipe(+4)[属性:8], 【表格】WideSwipe
	tAdjustLottery_RidGift[4032504]["RewardItem"][1]["Attr"] = "0 1" -- WideSwipe(+4)*1
	tAdjustLottery_RidGift[4032504]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032504]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032504]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032505]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032505] = {}
	tAdjustLottery_RidGift[4032505]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032505]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032505]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032505]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032505]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032505]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032505]["RewardItem"][1]["Id"] = 4032505 -- 【库】WideSwipe(+5)[属性:8], 【表格】WideSwipe
	tAdjustLottery_RidGift[4032505]["RewardItem"][1]["Attr"] = "0 1" -- WideSwipe(+5)*1
	tAdjustLottery_RidGift[4032505]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032505]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032505]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032506]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032506] = {}
	tAdjustLottery_RidGift[4032506]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032506]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032506]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032506]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032506]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032506]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032506]["RewardItem"][1]["Id"] = 4032506 -- 【库】WideSwipe(+6)[属性:8], 【表格】WideSwipe
	tAdjustLottery_RidGift[4032506]["RewardItem"][1]["Attr"] = "0 1" -- WideSwipe(+6)*1
	tAdjustLottery_RidGift[4032506]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032506]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032506]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032507]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032507] = {}
	tAdjustLottery_RidGift[4032507]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032507]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032507]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032507]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032507]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032507]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032507]["RewardItem"][1]["Id"] = 4032507 -- 【库】WideSwipe(+7)[属性:8], 【表格】WideSwipe
	tAdjustLottery_RidGift[4032507]["RewardItem"][1]["Attr"] = "0 1" -- WideSwipe(+7)*1
	tAdjustLottery_RidGift[4032507]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032507]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032507]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032508]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032508] = {}
	tAdjustLottery_RidGift[4032508]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032508]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032508]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032508]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032508]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032508]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032508]["RewardItem"][1]["Id"] = 4032508 -- 【库】WideSwipe(+8)[属性:8], 【表格】WideSwipe
	tAdjustLottery_RidGift[4032508]["RewardItem"][1]["Attr"] = "0 1" -- WideSwipe(+8)*1
	tAdjustLottery_RidGift[4032508]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032508]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032508]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032509]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032509] = {}
	tAdjustLottery_RidGift[4032509]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032509]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032509]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032509]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032509]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032509]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032509]["RewardItem"][1]["Id"] = 4032509 -- 【库】WideSwipe(+9)[属性:8], 【表格】WideSwipe
	tAdjustLottery_RidGift[4032509]["RewardItem"][1]["Attr"] = "0 1" -- WideSwipe(+9)*1
	tAdjustLottery_RidGift[4032509]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032509]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032509]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032601]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032601] = {}
	tAdjustLottery_RidGift[4032601]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032601]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032601]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032601]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032601]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032601]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032601]["RewardItem"][1]["Id"] = 4032601 -- 【库】Nirvana(+1)[属性:8], 【表格】Nirvana
	tAdjustLottery_RidGift[4032601]["RewardItem"][1]["Attr"] = "0 1" -- Nirvana(+1)*1
	tAdjustLottery_RidGift[4032601]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032601]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032601]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032602]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032602] = {}
	tAdjustLottery_RidGift[4032602]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032602]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032602]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032602]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032602]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032602]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032602]["RewardItem"][1]["Id"] = 4032602 -- 【库】Nirvana(+2)[属性:8], 【表格】Nirvana
	tAdjustLottery_RidGift[4032602]["RewardItem"][1]["Attr"] = "0 1" -- Nirvana(+2)*1
	tAdjustLottery_RidGift[4032602]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032602]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032602]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032603]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032603] = {}
	tAdjustLottery_RidGift[4032603]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032603]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032603]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032603]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032603]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032603]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032603]["RewardItem"][1]["Id"] = 4032603 -- 【库】Nirvana(+3)[属性:8], 【表格】Nirvana
	tAdjustLottery_RidGift[4032603]["RewardItem"][1]["Attr"] = "0 1" -- Nirvana(+3)*1
	tAdjustLottery_RidGift[4032603]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032603]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032603]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032604]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032604] = {}
	tAdjustLottery_RidGift[4032604]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032604]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032604]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032604]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032604]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032604]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032604]["RewardItem"][1]["Id"] = 4032604 -- 【库】Nirvana(+4)[属性:8], 【表格】Nirvana
	tAdjustLottery_RidGift[4032604]["RewardItem"][1]["Attr"] = "0 1" -- Nirvana(+4)*1
	tAdjustLottery_RidGift[4032604]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032604]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032604]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032605]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032605] = {}
	tAdjustLottery_RidGift[4032605]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032605]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032605]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032605]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032605]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032605]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032605]["RewardItem"][1]["Id"] = 4032605 -- 【库】Nirvana(+5)[属性:8], 【表格】Nirvana
	tAdjustLottery_RidGift[4032605]["RewardItem"][1]["Attr"] = "0 1" -- Nirvana(+5)*1
	tAdjustLottery_RidGift[4032605]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032605]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032605]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032606]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032606] = {}
	tAdjustLottery_RidGift[4032606]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032606]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032606]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032606]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032606]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032606]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032606]["RewardItem"][1]["Id"] = 4032606 -- 【库】Nirvana(+6)[属性:8], 【表格】Nirvana
	tAdjustLottery_RidGift[4032606]["RewardItem"][1]["Attr"] = "0 1" -- Nirvana(+6)*1
	tAdjustLottery_RidGift[4032606]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032606]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032606]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032607]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032607] = {}
	tAdjustLottery_RidGift[4032607]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032607]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032607]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032607]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032607]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032607]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032607]["RewardItem"][1]["Id"] = 4032607 -- 【库】Nirvana(+7)[属性:8], 【表格】Nirvana
	tAdjustLottery_RidGift[4032607]["RewardItem"][1]["Attr"] = "0 1" -- Nirvana(+7)*1
	tAdjustLottery_RidGift[4032607]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032607]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032607]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032608]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032608] = {}
	tAdjustLottery_RidGift[4032608]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032608]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032608]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032608]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032608]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032608]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032608]["RewardItem"][1]["Id"] = 4032608 -- 【库】Nirvana(+8)[属性:8], 【表格】Nirvana
	tAdjustLottery_RidGift[4032608]["RewardItem"][1]["Attr"] = "0 1" -- Nirvana(+8)*1
	tAdjustLottery_RidGift[4032608]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032608]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032608]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032609]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032609] = {}
	tAdjustLottery_RidGift[4032609]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032609]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032609]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032609]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032609]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032609]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032609]["RewardItem"][1]["Id"] = 4032609 -- 【库】Nirvana(+9)[属性:8], 【表格】Nirvana
	tAdjustLottery_RidGift[4032609]["RewardItem"][1]["Attr"] = "0 1" -- Nirvana(+9)*1
	tAdjustLottery_RidGift[4032609]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032609]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032609]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032701]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032701] = {}
	tAdjustLottery_RidGift[4032701]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032701]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032701]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032701]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032701]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032701]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032701]["RewardItem"][1]["Id"] = 4032701 -- 【库】Sharpness(+1)[属性:8], 【表格】Sharpness
	tAdjustLottery_RidGift[4032701]["RewardItem"][1]["Attr"] = "0 1" -- Sharpness(+1)*1
	tAdjustLottery_RidGift[4032701]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032701]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032701]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032702]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032702] = {}
	tAdjustLottery_RidGift[4032702]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032702]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032702]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032702]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032702]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032702]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032702]["RewardItem"][1]["Id"] = 4032702 -- 【库】Sharpness(+2)[属性:8], 【表格】Sharpness
	tAdjustLottery_RidGift[4032702]["RewardItem"][1]["Attr"] = "0 1" -- Sharpness(+2)*1
	tAdjustLottery_RidGift[4032702]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032702]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032702]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032703]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032703] = {}
	tAdjustLottery_RidGift[4032703]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032703]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032703]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032703]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032703]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032703]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032703]["RewardItem"][1]["Id"] = 4032703 -- 【库】Sharpness(+3)[属性:8], 【表格】Sharpness
	tAdjustLottery_RidGift[4032703]["RewardItem"][1]["Attr"] = "0 1" -- Sharpness(+3)*1
	tAdjustLottery_RidGift[4032703]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032703]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032703]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032704]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032704] = {}
	tAdjustLottery_RidGift[4032704]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032704]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032704]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032704]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032704]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032704]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032704]["RewardItem"][1]["Id"] = 4032704 -- 【库】Sharpness(+4)[属性:8], 【表格】Sharpness
	tAdjustLottery_RidGift[4032704]["RewardItem"][1]["Attr"] = "0 1" -- Sharpness(+4)*1
	tAdjustLottery_RidGift[4032704]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032704]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032704]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032705]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032705] = {}
	tAdjustLottery_RidGift[4032705]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032705]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032705]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032705]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032705]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032705]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032705]["RewardItem"][1]["Id"] = 4032705 -- 【库】Sharpness(+5)[属性:8], 【表格】Sharpness
	tAdjustLottery_RidGift[4032705]["RewardItem"][1]["Attr"] = "0 1" -- Sharpness(+5)*1
	tAdjustLottery_RidGift[4032705]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032705]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032705]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032706]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032706] = {}
	tAdjustLottery_RidGift[4032706]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032706]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032706]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032706]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032706]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032706]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032706]["RewardItem"][1]["Id"] = 4032706 -- 【库】Sharpness(+6)[属性:8], 【表格】Sharpness
	tAdjustLottery_RidGift[4032706]["RewardItem"][1]["Attr"] = "0 1" -- Sharpness(+6)*1
	tAdjustLottery_RidGift[4032706]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032706]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032706]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032707]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032707] = {}
	tAdjustLottery_RidGift[4032707]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032707]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032707]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032707]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032707]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032707]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032707]["RewardItem"][1]["Id"] = 4032707 -- 【库】Sharpness(+7)[属性:8], 【表格】Sharpness
	tAdjustLottery_RidGift[4032707]["RewardItem"][1]["Attr"] = "0 1" -- Sharpness(+7)*1
	tAdjustLottery_RidGift[4032707]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032707]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032707]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032708]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032708] = {}
	tAdjustLottery_RidGift[4032708]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032708]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032708]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032708]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032708]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032708]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032708]["RewardItem"][1]["Id"] = 4032708 -- 【库】Sharpness(+8)[属性:8], 【表格】Sharpness
	tAdjustLottery_RidGift[4032708]["RewardItem"][1]["Attr"] = "0 1" -- Sharpness(+8)*1
	tAdjustLottery_RidGift[4032708]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032708]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032708]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032709]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032709] = {}
	tAdjustLottery_RidGift[4032709]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032709]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032709]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032709]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032709]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032709]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032709]["RewardItem"][1]["Id"] = 4032709 -- 【库】Sharpness(+9)[属性:8], 【表格】Sharpness
	tAdjustLottery_RidGift[4032709]["RewardItem"][1]["Attr"] = "0 1" -- Sharpness(+9)*1
	tAdjustLottery_RidGift[4032709]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032709]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032709]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032801]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032801] = {}
	tAdjustLottery_RidGift[4032801]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032801]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032801]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032801]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032801]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032801]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032801]["RewardItem"][1]["Id"] = 4032801 -- 【库】Evocation(+1)[属性:8], 【表格】Evocation
	tAdjustLottery_RidGift[4032801]["RewardItem"][1]["Attr"] = "0 1" -- Evocation(+1)*1
	tAdjustLottery_RidGift[4032801]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032801]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032801]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032802]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032802] = {}
	tAdjustLottery_RidGift[4032802]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032802]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032802]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032802]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032802]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032802]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032802]["RewardItem"][1]["Id"] = 4032802 -- 【库】Evocation(+2)[属性:8], 【表格】Evocation
	tAdjustLottery_RidGift[4032802]["RewardItem"][1]["Attr"] = "0 1" -- Evocation(+2)*1
	tAdjustLottery_RidGift[4032802]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032802]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032802]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032803]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032803] = {}
	tAdjustLottery_RidGift[4032803]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032803]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032803]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032803]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032803]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032803]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032803]["RewardItem"][1]["Id"] = 4032803 -- 【库】Evocation(+3)[属性:8], 【表格】Evocation
	tAdjustLottery_RidGift[4032803]["RewardItem"][1]["Attr"] = "0 1" -- Evocation(+3)*1
	tAdjustLottery_RidGift[4032803]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032803]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032803]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032804]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032804] = {}
	tAdjustLottery_RidGift[4032804]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032804]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032804]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032804]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032804]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032804]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032804]["RewardItem"][1]["Id"] = 4032804 -- 【库】Evocation(+4)[属性:8], 【表格】Evocation
	tAdjustLottery_RidGift[4032804]["RewardItem"][1]["Attr"] = "0 1" -- Evocation(+4)*1
	tAdjustLottery_RidGift[4032804]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032804]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032804]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032805]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032805] = {}
	tAdjustLottery_RidGift[4032805]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032805]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032805]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032805]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032805]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032805]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032805]["RewardItem"][1]["Id"] = 4032805 -- 【库】Evocation(+5)[属性:8], 【表格】Evocation
	tAdjustLottery_RidGift[4032805]["RewardItem"][1]["Attr"] = "0 1" -- Evocation(+5)*1
	tAdjustLottery_RidGift[4032805]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032805]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032805]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032806]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032806] = {}
	tAdjustLottery_RidGift[4032806]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032806]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032806]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032806]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032806]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032806]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032806]["RewardItem"][1]["Id"] = 4032806 -- 【库】Evocation(+6)[属性:8], 【表格】Evocation
	tAdjustLottery_RidGift[4032806]["RewardItem"][1]["Attr"] = "0 1" -- Evocation(+6)*1
	tAdjustLottery_RidGift[4032806]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032806]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032806]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032807]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032807] = {}
	tAdjustLottery_RidGift[4032807]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032807]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032807]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032807]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032807]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032807]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032807]["RewardItem"][1]["Id"] = 4032807 -- 【库】Evocation(+7)[属性:8], 【表格】Evocation
	tAdjustLottery_RidGift[4032807]["RewardItem"][1]["Attr"] = "0 1" -- Evocation(+7)*1
	tAdjustLottery_RidGift[4032807]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032807]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032807]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032808]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032808] = {}
	tAdjustLottery_RidGift[4032808]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032808]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032808]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032808]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032808]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032808]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032808]["RewardItem"][1]["Id"] = 4032808 -- 【库】Evocation(+8)[属性:8], 【表格】Evocation
	tAdjustLottery_RidGift[4032808]["RewardItem"][1]["Attr"] = "0 1" -- Evocation(+8)*1
	tAdjustLottery_RidGift[4032808]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032808]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032808]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹
	-- ===索引: tAdjustLottery_RidGift[4032809]
	-- ===删除: 3312928,1
	tAdjustLottery_RidGift[4032809] = {}
	tAdjustLottery_RidGift[4032809]["LogId"] = 12001462
	tAdjustLottery_RidGift[4032809]["DeleteItem"] = {}
	tAdjustLottery_RidGift[4032809]["DeleteItem"][1] = {}
	tAdjustLottery_RidGift[4032809]["DeleteItem"][1]["Id"] = 3312928 -- 【库】RuneConversionToken[属性:9]
	tAdjustLottery_RidGift[4032809]["RewardItem"] = {}
	tAdjustLottery_RidGift[4032809]["RewardItem"][1] = {}
	tAdjustLottery_RidGift[4032809]["RewardItem"][1]["Id"] = 4032809 -- 【库】Evocation(+9)[属性:8], 【表格】Evocation
	tAdjustLottery_RidGift[4032809]["RewardItem"][1]["Attr"] = "0 1" -- Evocation(+9)*1
	tAdjustLottery_RidGift[4032809]["RewardEffect"] = {}
	tAdjustLottery_RidGift[4032809]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAdjustLottery_RidGift[4032809]["RewardEffect"]["Effect"] = "angelwing"



------------------------------------------逻辑部分---------------------------------
--确认洗赠
function AdjustLottery_Chg(nItemId)
	--检测背包中是否存在可洗的赠品
	if not Item_ChkMulItem(nItemId,nItemId,1,2,0,0,0) then
		local sItemName = Get_ItemtypeName(nItemId)
		tItem[3312928]["Text213"] = string.format(tAdjustLottery_Text[3312928]["Text213"],sItemName)
		LinkItemGossipFunc_New(3312928,"2-1")
		return
	end
	if Item_DelMulItem(nItemId,nItemId,1,2,0,nUserId,0) then
		RewardTemplate_UseItemAndMsg(tAdjustLottery_RidGift[nItemId])
	end
end


------------------------------------------------------------------------------------
tItemFace[3312928]=2372
tItem[3312928]=tItem[3312928]or{}
tItem[3312928]["DialogueText"]=tAdjustLottery_Text[3312928]
tItem[3312928]["Text1-1"]={111,112,113,114}
tItem[3312928]["tOption1-1"]={562,563,564,565,566,567,568,569,570,571,572,573,574,575,576,577,578,579,580,581,582}

tItem[3312928]["OptionPoint562"] = "3-1"
tItem[3312928]["OptionPoint563"] = "4-1"
tItem[3312928]["OptionPoint564"] = "5-1"
tItem[3312928]["OptionPoint565"] = "6-1"
tItem[3312928]["OptionPoint566"] = "7-1"
tItem[3312928]["OptionPoint567"] = "8-1"
tItem[3312928]["OptionPoint568"] = "9-1"
tItem[3312928]["OptionPoint569"] = "10-1"
tItem[3312928]["OptionPoint570"] = "11-1"
tItem[3312928]["OptionPoint571"] = "12-1"
tItem[3312928]["OptionPoint572"] = "13-1"
tItem[3312928]["OptionPoint573"] = "14-1"
tItem[3312928]["OptionPoint574"] = "15-1"
tItem[3312928]["OptionPoint575"] = "16-1"
tItem[3312928]["OptionPoint576"] = "17-1"
tItem[3312928]["OptionPoint577"] = "18-1"
tItem[3312928]["OptionPoint578"] = "19-1"
tItem[3312928]["OptionPoint579"] = "20-1"
tItem[3312928]["OptionPoint580"] = "21-1"
tItem[3312928]["OptionPoint581"] = "22-1"
tItem[3312928]["OptionPoint582"] = "23-1"





--没有物品
tItem[3312928]["Text2-1"]={211,212,213,214}
tItem[3312928]["tOption2-1"]={111}




--ShadowFist
tItem[3312928]["Text3-1"]={311,312,313,314,315}
tItem[3312928]["tOption3-1"] = {211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237}
tItem[3312928]["OptionChkFunc211"]  = function()
	if Item_ChkMulItem(4021301,4021301,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc212"]  = function()
	if Item_ChkMulItem(4021302,4021302,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc213"]  = function()
	if Item_ChkMulItem(4021303,4021303,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc214"]  = function()
	if Item_ChkMulItem(4021304,4021304,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc215"]  = function()
	if Item_ChkMulItem(4021305,4021305,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc216"]  = function()
	if Item_ChkMulItem(4021306,4021306,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc217"]  = function()
	if Item_ChkMulItem(4021307,4021307,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc218"]  = function()
	if Item_ChkMulItem(4021308,4021308,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc219"]  = function()
	if Item_ChkMulItem(4021309,4021309,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc220"]  = function()
	if Item_ChkMulItem(4021310,4021310,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc221"]  = function()
	if Item_ChkMulItem(4021311,4021311,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc222"]  = function()
	if Item_ChkMulItem(4021312,4021312,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc223"]  = function()
	if Item_ChkMulItem(4021313,4021313,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc224"]  = function()
	if Item_ChkMulItem(4021314,4021314,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc225"]  = function()
	if Item_ChkMulItem(4021315,4021315,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc226"]  = function()
	if Item_ChkMulItem(4021316,4021316,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc227"]  = function()
	if Item_ChkMulItem(4021317,4021317,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc228"]  = function()
	if Item_ChkMulItem(4021318,4021318,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc229"]  = function()
	if Item_ChkMulItem(4021319,4021319,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc230"]  = function()
	if Item_ChkMulItem(4021320,4021320,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc231"]  = function()
	if Item_ChkMulItem(4021321,4021321,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc232"]  = function()
	if Item_ChkMulItem(4021322,4021322,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc233"]  = function()
	if Item_ChkMulItem(4021323,4021323,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc234"]  = function()
	if Item_ChkMulItem(4021324,4021324,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc235"]  = function()
	if Item_ChkMulItem(4021325,4021325,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc236"]  = function()
	if Item_ChkMulItem(4021326,4021326,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc237"]  = function()
	if Item_ChkMulItem(4021327,4021327,1,2,0,0,0) then
		return true
	end
	return false
end

--Retaliation
tItem[3312928]["Text4-1"]={311,312,313,314,315}
tItem[3312928]["tOption4-1"] = {238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264}
tItem[3312928]["OptionChkFunc238"]  = function()
	if Item_ChkMulItem(4021401,4021401,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc239"]  = function()
	if Item_ChkMulItem(4021402,4021402,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc240"]  = function()
	if Item_ChkMulItem(4021403,4021403,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc241"]  = function()
	if Item_ChkMulItem(4021404,4021404,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc242"]  = function()
	if Item_ChkMulItem(4021405,4021405,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc243"]  = function()
	if Item_ChkMulItem(4021406,4021406,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc244"]  = function()
	if Item_ChkMulItem(4021407,4021407,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc245"]  = function()
	if Item_ChkMulItem(4021408,4021408,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc246"]  = function()
	if Item_ChkMulItem(4021409,4021409,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc247"]  = function()
	if Item_ChkMulItem(4021410,4021410,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc248"]  = function()
	if Item_ChkMulItem(4021411,4021411,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc249"]  = function()
	if Item_ChkMulItem(4021412,4021412,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc250"]  = function()
	if Item_ChkMulItem(4021413,4021413,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc251"]  = function()
	if Item_ChkMulItem(4021414,4021414,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc252"]  = function()
	if Item_ChkMulItem(4021415,4021415,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc253"]  = function()
	if Item_ChkMulItem(4021416,4021416,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc254"]  = function()
	if Item_ChkMulItem(4021417,4021417,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc255"]  = function()
	if Item_ChkMulItem(4021418,4021418,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc256"]  = function()
	if Item_ChkMulItem(4021419,4021419,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc257"]  = function()
	if Item_ChkMulItem(4021420,4021420,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc258"]  = function()
	if Item_ChkMulItem(4021421,4021421,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc259"]  = function()
	if Item_ChkMulItem(4021422,4021422,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc260"]  = function()
	if Item_ChkMulItem(4021423,4021423,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc261"]  = function()
	if Item_ChkMulItem(4021424,4021424,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc262"]  = function()
	if Item_ChkMulItem(4021425,4021425,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc263"]  = function()
	if Item_ChkMulItem(4021426,4021426,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc264"]  = function()
	if Item_ChkMulItem(4021427,4021427,1,2,0,0,0) then
		return true
	end
	return false
end

--StarRaid
tItem[3312928]["Text5-1"]={311,312,313,314,315}
tItem[3312928]["tOption5-1"] = {265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291}
tItem[3312928]["OptionChkFunc265"]  = function()
	if Item_ChkMulItem(4021501,4021501,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc266"]  = function()
	if Item_ChkMulItem(4021502,4021502,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc267"]  = function()
	if Item_ChkMulItem(4021503,4021503,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc268"]  = function()
	if Item_ChkMulItem(4021504,4021504,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc269"]  = function()
	if Item_ChkMulItem(4021505,4021505,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc270"]  = function()
	if Item_ChkMulItem(4021506,4021506,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc271"]  = function()
	if Item_ChkMulItem(4021507,4021507,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc272"]  = function()
	if Item_ChkMulItem(4021508,4021508,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc273"]  = function()
	if Item_ChkMulItem(4021509,4021509,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc274"]  = function()
	if Item_ChkMulItem(4021510,4021510,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc275"]  = function()
	if Item_ChkMulItem(4021511,4021511,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc276"]  = function()
	if Item_ChkMulItem(4021512,4021512,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc277"]  = function()
	if Item_ChkMulItem(4021513,4021513,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc278"]  = function()
	if Item_ChkMulItem(4021514,4021514,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc279"]  = function()
	if Item_ChkMulItem(4021515,4021515,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc280"]  = function()
	if Item_ChkMulItem(4021516,4021516,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc281"]  = function()
	if Item_ChkMulItem(4021517,4021517,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc282"]  = function()
	if Item_ChkMulItem(4021518,4021518,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc283"]  = function()
	if Item_ChkMulItem(4021519,4021519,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc284"]  = function()
	if Item_ChkMulItem(4021520,4021520,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc285"]  = function()
	if Item_ChkMulItem(4021521,4021521,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc286"]  = function()
	if Item_ChkMulItem(4021522,4021522,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc287"]  = function()
	if Item_ChkMulItem(4021523,4021523,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc288"]  = function()
	if Item_ChkMulItem(4021524,4021524,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc289"]  = function()
	if Item_ChkMulItem(4021525,4021525,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc290"]  = function()
	if Item_ChkMulItem(4021526,4021526,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc291"]  = function()
	if Item_ChkMulItem(4021527,4021527,1,2,0,0,0) then
		return true
	end
	return false
end


--Duel
tItem[3312928]["Text6-1"]={311,312,313,314,315}
tItem[3312928]["tOption6-1"] = {292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318}
tItem[3312928]["OptionChkFunc292"]  = function()
	if Item_ChkMulItem(4021601,4021601,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc293"]  = function()
	if Item_ChkMulItem(4021602,4021602,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc294"]  = function()
	if Item_ChkMulItem(4021603,4021603,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc295"]  = function()
	if Item_ChkMulItem(4021604,4021604,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc296"]  = function()
	if Item_ChkMulItem(4021605,4021605,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc297"]  = function()
	if Item_ChkMulItem(4021606,4021606,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc298"]  = function()
	if Item_ChkMulItem(4021607,4021607,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc299"]  = function()
	if Item_ChkMulItem(4021608,4021608,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc300"]  = function()
	if Item_ChkMulItem(4021609,4021609,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc301"]  = function()
	if Item_ChkMulItem(4021610,4021610,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc302"]  = function()
	if Item_ChkMulItem(4021611,4021611,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc303"]  = function()
	if Item_ChkMulItem(4021612,4021612,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc304"]  = function()
	if Item_ChkMulItem(4021613,4021613,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc305"]  = function()
	if Item_ChkMulItem(4021614,4021614,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc306"]  = function()
	if Item_ChkMulItem(4021615,4021615,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc307"]  = function()
	if Item_ChkMulItem(4021616,4021616,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc308"]  = function()
	if Item_ChkMulItem(4021617,4021617,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc309"]  = function()
	if Item_ChkMulItem(4021618,4021618,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc310"]  = function()
	if Item_ChkMulItem(4021619,4021619,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc311"]  = function()
	if Item_ChkMulItem(4021620,4021620,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc312"]  = function()
	if Item_ChkMulItem(4021621,4021621,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc313"]  = function()
	if Item_ChkMulItem(4021622,4021622,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc314"]  = function()
	if Item_ChkMulItem(4021623,4021623,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc315"]  = function()
	if Item_ChkMulItem(4021624,4021624,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc316"]  = function()
	if Item_ChkMulItem(4021625,4021625,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc317"]  = function()
	if Item_ChkMulItem(4021626,4021626,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc318"]  = function()
	if Item_ChkMulItem(4021627,4021627,1,2,0,0,0) then
		return true
	end
	return false
end




--Neptune`sCurse
tItem[3312928]["Text7-1"]={311,312,313,314,315}
tItem[3312928]["tOption7-1"] = {319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345}

tItem[3312928]["OptionChkFunc319"]  = function()
	if Item_ChkMulItem(4021701,4021701,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc320"]  = function()
	if Item_ChkMulItem(4021702,4021702,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc321"]  = function()
	if Item_ChkMulItem(4021703,4021703,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc322"]  = function()
	if Item_ChkMulItem(4021704,4021704,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc323"]  = function()
	if Item_ChkMulItem(4021705,4021705,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc324"]  = function()
	if Item_ChkMulItem(4021706,4021706,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc325"]  = function()
	if Item_ChkMulItem(4021707,4021707,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc326"]  = function()
	if Item_ChkMulItem(4021708,4021708,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc327"]  = function()
	if Item_ChkMulItem(4021709,4021709,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc328"]  = function()
	if Item_ChkMulItem(4021710,4021710,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc329"]  = function()
	if Item_ChkMulItem(4021711,4021711,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc330"]  = function()
	if Item_ChkMulItem(4021712,4021712,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc331"]  = function()
	if Item_ChkMulItem(4021713,4021713,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc332"]  = function()
	if Item_ChkMulItem(4021714,4021714,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc333"]  = function()
	if Item_ChkMulItem(4021715,4021715,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc334"]  = function()
	if Item_ChkMulItem(4021716,4021716,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc335"]  = function()
	if Item_ChkMulItem(4021717,4021717,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc336"]  = function()
	if Item_ChkMulItem(4021718,4021718,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc337"]  = function()
	if Item_ChkMulItem(4021719,4021719,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc338"]  = function()
	if Item_ChkMulItem(4021720,4021720,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc339"]  = function()
	if Item_ChkMulItem(4021721,4021721,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc340"]  = function()
	if Item_ChkMulItem(4021722,4021722,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc341"]  = function()
	if Item_ChkMulItem(4021723,4021723,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc342"]  = function()
	if Item_ChkMulItem(4021724,4021724,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc343"]  = function()
	if Item_ChkMulItem(4021725,4021725,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc344"]  = function()
	if Item_ChkMulItem(4021726,4021726,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc345"]  = function()
	if Item_ChkMulItem(4021727,4021727,1,2,0,0,0) then
		return true
	end
	return false
end

--SpaceLeap
tItem[3312928]["Text8-1"]={311,312,313,314,315}
tItem[3312928]["tOption8-1"] = {346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372}

tItem[3312928]["OptionChkFunc346"]  = function()
	if Item_ChkMulItem(4021801,4021801,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc347"]  = function()
	if Item_ChkMulItem(4021802,4021802,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc348"]  = function()
	if Item_ChkMulItem(4021803,4021803,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc349"]  = function()
	if Item_ChkMulItem(4021804,4021804,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc350"]  = function()
	if Item_ChkMulItem(4021805,4021805,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc351"]  = function()
	if Item_ChkMulItem(4021806,4021806,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc352"]  = function()
	if Item_ChkMulItem(4021807,4021807,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc353"]  = function()
	if Item_ChkMulItem(4021808,4021808,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc354"]  = function()
	if Item_ChkMulItem(4021809,4021809,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc355"]  = function()
	if Item_ChkMulItem(4021810,4021810,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc356"]  = function()
	if Item_ChkMulItem(4021811,4021811,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc357"]  = function()
	if Item_ChkMulItem(4021812,4021812,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc358"]  = function()
	if Item_ChkMulItem(4021813,4021813,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc359"]  = function()
	if Item_ChkMulItem(4021814,4021814,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc360"]  = function()
	if Item_ChkMulItem(4021815,4021815,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc361"]  = function()
	if Item_ChkMulItem(4021816,4021816,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc362"]  = function()
	if Item_ChkMulItem(4021817,4021817,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc363"]  = function()
	if Item_ChkMulItem(4021818,4021818,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc364"]  = function()
	if Item_ChkMulItem(4021819,4021819,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc365"]  = function()
	if Item_ChkMulItem(4021820,4021820,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc366"]  = function()
	if Item_ChkMulItem(4021821,4021821,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc367"]  = function()
	if Item_ChkMulItem(4021822,4021822,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc368"]  = function()
	if Item_ChkMulItem(4021823,4021823,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc369"]  = function()
	if Item_ChkMulItem(4021824,4021824,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc370"]  = function()
	if Item_ChkMulItem(4021825,4021825,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc371"]  = function()
	if Item_ChkMulItem(4021826,4021826,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc372"]  = function()
	if Item_ChkMulItem(4021827,4021827,1,2,0,0,0) then
		return true
	end
	return false
end

--RiseofTaoism
tItem[3312928]["Text9-1"]={311,312,313,314,315}
tItem[3312928]["tOption9-1"] = {373,374,375,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,399}

tItem[3312928]["OptionChkFunc373"]  = function()
	if Item_ChkMulItem(4021901,4021901,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc374"]  = function()
	if Item_ChkMulItem(4021902,4021902,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc375"]  = function()
	if Item_ChkMulItem(4021903,4021903,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc376"]  = function()
	if Item_ChkMulItem(4021904,4021904,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc377"]  = function()
	if Item_ChkMulItem(4021905,4021905,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc378"]  = function()
	if Item_ChkMulItem(4021906,4021906,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc379"]  = function()
	if Item_ChkMulItem(4021907,4021907,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc380"]  = function()
	if Item_ChkMulItem(4021908,4021908,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc381"]  = function()
	if Item_ChkMulItem(4021909,4021909,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc382"]  = function()
	if Item_ChkMulItem(4021910,4021910,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc383"]  = function()
	if Item_ChkMulItem(4021911,4021911,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc384"]  = function()
	if Item_ChkMulItem(4021912,4021912,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc385"]  = function()
	if Item_ChkMulItem(4021913,4021913,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc386"]  = function()
	if Item_ChkMulItem(4021914,4021914,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc387"]  = function()
	if Item_ChkMulItem(4021915,4021915,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc388"]  = function()
	if Item_ChkMulItem(4021916,4021916,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc389"]  = function()
	if Item_ChkMulItem(4021917,4021917,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc390"]  = function()
	if Item_ChkMulItem(4021918,4021918,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc391"]  = function()
	if Item_ChkMulItem(4021919,4021919,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc392"]  = function()
	if Item_ChkMulItem(4021920,4021920,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc393"]  = function()
	if Item_ChkMulItem(4021921,4021921,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc394"]  = function()
	if Item_ChkMulItem(4021922,4021922,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc395"]  = function()
	if Item_ChkMulItem(4021923,4021923,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc396"]  = function()
	if Item_ChkMulItem(4021924,4021924,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc397"]  = function()
	if Item_ChkMulItem(4021925,4021925,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc398"]  = function()
	if Item_ChkMulItem(4021926,4021926,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc399"]  = function()
	if Item_ChkMulItem(4021927,4021927,1,2,0,0,0) then
		return true
	end
	return false
end

--FuryStrike
tItem[3312928]["Text10-1"]={311,312,313,314,315}
tItem[3312928]["tOption10-1"] = {400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426}

tItem[3312928]["OptionChkFunc400"]  = function()
	if Item_ChkMulItem(4022001,4022001,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc401"]  = function()
	if Item_ChkMulItem(4022002,4022002,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc402"]  = function()
	if Item_ChkMulItem(4022003,4022003,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc403"]  = function()
	if Item_ChkMulItem(4022004,4022004,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc404"]  = function()
	if Item_ChkMulItem(4022005,4022005,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc405"]  = function()
	if Item_ChkMulItem(4022006,4022006,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc406"]  = function()
	if Item_ChkMulItem(4022007,4022007,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc407"]  = function()
	if Item_ChkMulItem(4022008,4022008,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc408"]  = function()
	if Item_ChkMulItem(4022009,4022009,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc409"]  = function()
	if Item_ChkMulItem(4022010,4022010,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc410"]  = function()
	if Item_ChkMulItem(4022011,4022011,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc411"]  = function()
	if Item_ChkMulItem(4022012,4022012,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc412"]  = function()
	if Item_ChkMulItem(4022013,4022013,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc413"]  = function()
	if Item_ChkMulItem(4022014,4022014,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc414"]  = function()
	if Item_ChkMulItem(4022015,4022015,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc415"]  = function()
	if Item_ChkMulItem(4022016,4022016,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc416"]  = function()
	if Item_ChkMulItem(4022017,4022017,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc417"]  = function()
	if Item_ChkMulItem(4022018,4022018,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc418"]  = function()
	if Item_ChkMulItem(4022019,4022019,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc419"]  = function()
	if Item_ChkMulItem(4022020,4022020,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc420"]  = function()
	if Item_ChkMulItem(4022021,4022021,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc421"]  = function()
	if Item_ChkMulItem(4022022,4022022,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc422"]  = function()
	if Item_ChkMulItem(4022023,4022023,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc423"]  = function()
	if Item_ChkMulItem(4022024,4022024,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc424"]  = function()
	if Item_ChkMulItem(4022025,4022025,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc425"]  = function()
	if Item_ChkMulItem(4022026,4022026,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc426"]  = function()
	if Item_ChkMulItem(4022027,4022027,1,2,0,0,0) then
		return true
	end
	return false
end

--BloodTide
tItem[3312928]["Text11-1"]={311,312,313,314,315}
tItem[3312928]["tOption11-1"] = {427,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453}

tItem[3312928]["OptionChkFunc427"]  = function()
	if Item_ChkMulItem(4023001,4023001,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc428"]  = function()
	if Item_ChkMulItem(4023002,4023002,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc429"]  = function()
	if Item_ChkMulItem(4023003,4023003,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc430"]  = function()
	if Item_ChkMulItem(4023004,4023004,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc431"]  = function()
	if Item_ChkMulItem(4023005,4023005,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc432"]  = function()
	if Item_ChkMulItem(4023006,4023006,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc433"]  = function()
	if Item_ChkMulItem(4023007,4023007,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc434"]  = function()
	if Item_ChkMulItem(4023008,4023008,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc435"]  = function()
	if Item_ChkMulItem(4023009,4023009,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc436"]  = function()
	if Item_ChkMulItem(4023010,4023010,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc437"]  = function()
	if Item_ChkMulItem(4023011,4023011,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc438"]  = function()
	if Item_ChkMulItem(4023012,4023012,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc439"]  = function()
	if Item_ChkMulItem(4023013,4023013,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc440"]  = function()
	if Item_ChkMulItem(4023014,4023014,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc441"]  = function()
	if Item_ChkMulItem(4023015,4023015,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc442"]  = function()
	if Item_ChkMulItem(4023016,4023016,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc443"]  = function()
	if Item_ChkMulItem(4023017,4023017,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc444"]  = function()
	if Item_ChkMulItem(4023018,4023018,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc445"]  = function()
	if Item_ChkMulItem(4023019,4023019,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc446"]  = function()
	if Item_ChkMulItem(4023020,4023020,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc447"]  = function()
	if Item_ChkMulItem(4023021,4023021,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc448"]  = function()
	if Item_ChkMulItem(4023022,4023022,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc449"]  = function()
	if Item_ChkMulItem(4023023,4023023,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc450"]  = function()
	if Item_ChkMulItem(4023024,4023024,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc451"]  = function()
	if Item_ChkMulItem(4023025,4023025,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc452"]  = function()
	if Item_ChkMulItem(4023026,4023026,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc453"]  = function()
	if Item_ChkMulItem(4023027,4023027,1,2,0,0,0) then
		return true
	end
	return false
end

--QuickMount
tItem[3312928]["Text12-1"]={311,312,313,314,315}
tItem[3312928]["tOption12-1"] = {454,455,456,457,458,459,460,461,462}
tItem[3312928]["OptionChkFunc454"]  = function()
	if Item_ChkMulItem(4031401,4031401,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc455"]  = function()
	if Item_ChkMulItem(4031402,4031402,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc456"]  = function()
	if Item_ChkMulItem(4031403,4031403,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc457"]  = function()
	if Item_ChkMulItem(4031404,4031404,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc458"]  = function()
	if Item_ChkMulItem(4031405,4031405,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc459"]  = function()
	if Item_ChkMulItem(4031406,4031406,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc460"]  = function()
	if Item_ChkMulItem(4031407,4031407,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc461"]  = function()
	if Item_ChkMulItem(4031408,4031408,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc462"]  = function()
	if Item_ChkMulItem(4031409,4031409,1,2,0,0,0) then
		return true
	end
	return false
end

--Breakdown
tItem[3312928]["Text13-1"]={311,312,313,314,315}
tItem[3312928]["tOption13-1"] = {463,464,465,466,467,468,469,470,471}
tItem[3312928]["OptionChkFunc463"]  = function()
	if Item_ChkMulItem(4031501,4031501,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc464"]  = function()
	if Item_ChkMulItem(4031502,4031502,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc465"]  = function()
	if Item_ChkMulItem(4031503,4031503,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc466"]  = function()
	if Item_ChkMulItem(4031504,4031504,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc467"]  = function()
	if Item_ChkMulItem(4031505,4031505,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc468"]  = function()
	if Item_ChkMulItem(4031506,4031506,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc469"]  = function()
	if Item_ChkMulItem(4031507,4031507,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc470"]  = function()
	if Item_ChkMulItem(4031508,4031508,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc471"]  = function()
	if Item_ChkMulItem(4031509,4031509,1,2,0,0,0) then
		return true
	end
	return false
end

--Barrier
tItem[3312928]["Text14-1"]={311,312,313,314,315}
tItem[3312928]["tOption14-1"] = {472,473,474,475,476,477,478,479,480}
tItem[3312928]["OptionChkFunc472"]  = function()
	if Item_ChkMulItem(4031601,4031601,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc473"]  = function()
	if Item_ChkMulItem(4031602,4031602,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc474"]  = function()
	if Item_ChkMulItem(4031603,4031603,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc475"]  = function()
	if Item_ChkMulItem(4031604,4031604,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc476"]  = function()
	if Item_ChkMulItem(4031605,4031605,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc477"]  = function()
	if Item_ChkMulItem(4031606,4031606,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc478"]  = function()
	if Item_ChkMulItem(4031607,4031607,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc479"]  = function()
	if Item_ChkMulItem(4031608,4031608,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc480"]  = function()
	if Item_ChkMulItem(4031609,4031609,1,2,0,0,0) then
		return true
	end
	return false
end

--Sanctity
tItem[3312928]["Text15-1"]={311,312,313,314,315}
tItem[3312928]["tOption15-1"] = {481,482,483,484,485,486,487,488,489}
tItem[3312928]["OptionChkFunc481"]  = function()
	if Item_ChkMulItem(4032001,4032001,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc482"]  = function()
	if Item_ChkMulItem(4032002,4032002,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc483"]  = function()
	if Item_ChkMulItem(4032003,4032003,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc484"]  = function()
	if Item_ChkMulItem(4032004,4032004,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc485"]  = function()
	if Item_ChkMulItem(4032005,4032005,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc486"]  = function()
	if Item_ChkMulItem(4032006,4032006,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc487"]  = function()
	if Item_ChkMulItem(4032007,4032007,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc488"]  = function()
	if Item_ChkMulItem(4032008,4032008,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc489"]  = function()
	if Item_ChkMulItem(4032009,4032009,1,2,0,0,0) then
		return true
	end
	return false
end

--FireBlast
tItem[3312928]["Text16-1"]={311,312,313,314,315}
tItem[3312928]["tOption16-1"] = {490,491,492,493,494,495,496,497,498}
tItem[3312928]["OptionChkFunc490"]  = function()
	if Item_ChkMulItem(4032101,4032101,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc491"]  = function()
	if Item_ChkMulItem(4032102,4032102,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc492"]  = function()
	if Item_ChkMulItem(4032103,4032103,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc493"]  = function()
	if Item_ChkMulItem(4032104,4032104,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc494"]  = function()
	if Item_ChkMulItem(4032105,4032105,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc495"]  = function()
	if Item_ChkMulItem(4032106,4032106,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc496"]  = function()
	if Item_ChkMulItem(4032107,4032107,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc497"]  = function()
	if Item_ChkMulItem(4032108,4032108,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc498"]  = function()
	if Item_ChkMulItem(4032109,4032109,1,2,0,0,0) then
		return true
	end
	return false
end

--Serenity
tItem[3312928]["Text17-1"]={311,312,313,314,315}
tItem[3312928]["tOption17-1"] = {499,500,501,502,503,504,505,506,507}
tItem[3312928]["OptionChkFunc499"]  = function()
	if Item_ChkMulItem(4032201,4032201,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc500"]  = function()
	if Item_ChkMulItem(4032202,4032202,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc501"]  = function()
	if Item_ChkMulItem(4032203,4032203,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc502"]  = function()
	if Item_ChkMulItem(4032204,4032204,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc503"]  = function()
	if Item_ChkMulItem(4032205,4032205,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc504"]  = function()
	if Item_ChkMulItem(4032206,4032206,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc505"]  = function()
	if Item_ChkMulItem(4032207,4032207,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc506"]  = function()
	if Item_ChkMulItem(4032208,4032208,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc507"]  = function()
	if Item_ChkMulItem(4032209,4032209,1,2,0,0,0) then
		return true
	end
	return false
end
--Wonder
tItem[3312928]["Text18-1"]={311,312,313,314,315}
tItem[3312928]["tOption18-1"] = {508,509,510,511,512,513,514,515,516}
tItem[3312928]["OptionChkFunc508"]  = function()
	if Item_ChkMulItem(4032301,4032301,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc509"]  = function()
	if Item_ChkMulItem(4032302,4032302,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc510"]  = function()
	if Item_ChkMulItem(4032303,4032303,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc511"]  = function()
	if Item_ChkMulItem(4032304,4032304,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc512"]  = function()
	if Item_ChkMulItem(4032305,4032305,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc513"]  = function()
	if Item_ChkMulItem(4032306,4032306,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc514"]  = function()
	if Item_ChkMulItem(4032307,4032307,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc515"]  = function()
	if Item_ChkMulItem(4032308,4032308,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc516"]  = function()
	if Item_ChkMulItem(4032309,4032309,1,2,0,0,0) then
		return true
	end
	return false
end


--SoulChant
tItem[3312928]["Text19-1"]={311,312,313,314,315}
tItem[3312928]["tOption19-1"] = {517,518,519,520,521,522,523,524,525}
tItem[3312928]["OptionChkFunc517"]  = function()
	if Item_ChkMulItem(4032401,4032401,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc518"]  = function()
	if Item_ChkMulItem(4032402,4032402,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc519"]  = function()
	if Item_ChkMulItem(4032403,4032403,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc520"]  = function()
	if Item_ChkMulItem(4032404,4032404,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc521"]  = function()
	if Item_ChkMulItem(4032405,4032405,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc522"]  = function()
	if Item_ChkMulItem(4032406,4032406,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc523"]  = function()
	if Item_ChkMulItem(4032407,4032407,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc524"]  = function()
	if Item_ChkMulItem(4032408,4032408,1,2,0,0,0) then
		return true
	end
	return false
end

--WideSwipe
tItem[3312928]["Text20-1"]={311,312,313,314,315}
tItem[3312928]["tOption20-1"] = {526,527,528,529,530,531,532,533,534}
tItem[3312928]["OptionChkFunc525"]  = function()
	if Item_ChkMulItem(4032409,4032409,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc526"]  = function()
	if Item_ChkMulItem(4032501,4032501,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc527"]  = function()
	if Item_ChkMulItem(4032502,4032502,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc528"]  = function()
	if Item_ChkMulItem(4032503,4032503,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc529"]  = function()
	if Item_ChkMulItem(4032504,4032504,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc530"]  = function()
	if Item_ChkMulItem(4032505,4032505,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc531"]  = function()
	if Item_ChkMulItem(4032506,4032506,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc532"]  = function()
	if Item_ChkMulItem(4032507,4032507,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc533"]  = function()
	if Item_ChkMulItem(4032508,4032508,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc534"]  = function()
	if Item_ChkMulItem(4032509,4032509,1,2,0,0,0) then
		return true
	end
	return false
end

--Nirvana
tItem[3312928]["Text21-1"]={311,312,313,314,315}
tItem[3312928]["tOption21-1"] = {535,536,537,538,539,540,541,542,543}
tItem[3312928]["OptionChkFunc535"]  = function()
	if Item_ChkMulItem(4032601,4032601,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc536"]  = function()
	if Item_ChkMulItem(4032602,4032602,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc537"]  = function()
	if Item_ChkMulItem(4032603,4032603,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc538"]  = function()
	if Item_ChkMulItem(4032604,4032604,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc539"]  = function()
	if Item_ChkMulItem(4032605,4032605,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc540"]  = function()
	if Item_ChkMulItem(4032606,4032606,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc541"]  = function()
	if Item_ChkMulItem(4032607,4032607,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc542"]  = function()
	if Item_ChkMulItem(4032608,4032608,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc543"]  = function()
	if Item_ChkMulItem(4032609,4032609,1,2,0,0,0) then
		return true
	end
	return false
end

--Sharpness
tItem[3312928]["Text22-1"]={311,312,313,314,315}
tItem[3312928]["tOption22-1"] = {544,545,546,547,548,549,550,551,552}
tItem[3312928]["OptionChkFunc544"]  = function()
	if Item_ChkMulItem(4032701,4032701,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc545"]  = function()
	if Item_ChkMulItem(4032702,4032702,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc546"]  = function()
	if Item_ChkMulItem(4032703,4032703,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc547"]  = function()
	if Item_ChkMulItem(4032704,4032704,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc548"]  = function()
	if Item_ChkMulItem(4032705,4032705,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc549"]  = function()
	if Item_ChkMulItem(4032706,4032706,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc550"]  = function()
	if Item_ChkMulItem(4032707,4032707,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc551"]  = function()
	if Item_ChkMulItem(4032708,4032708,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc552"]  = function()
	if Item_ChkMulItem(4032709,4032709,1,2,0,0,0) then
		return true
	end
	return false
end

--Evocation
tItem[3312928]["Text23-1"]={311,312,313,314,315}
tItem[3312928]["tOption23-1"] = {553,554,555,556,557,558,559,560,561}
tItem[3312928]["OptionChkFunc553"]  = function()
	if Item_ChkMulItem(4032801,4032801,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc554"]  = function()
	if Item_ChkMulItem(4032802,4032802,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc555"]  = function()
	if Item_ChkMulItem(4032803,4032803,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc556"]  = function()
	if Item_ChkMulItem(4032804,4032804,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc557"]  = function()
	if Item_ChkMulItem(4032805,4032805,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc558"]  = function()
	if Item_ChkMulItem(4032806,4032806,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc559"]  = function()
	if Item_ChkMulItem(4032807,4032807,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc560"]  = function()
	if Item_ChkMulItem(4032808,4032808,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionChkFunc561"]  = function()
	if Item_ChkMulItem(4032809,4032809,1,2,0,0,0) then
		return true
	end
	return false
end
tItem[3312928]["OptionFunc211"] = "AdjustLottery_Chg</N>4021301"
tItem[3312928]["OptionFunc212"] = "AdjustLottery_Chg</N>4021302"
tItem[3312928]["OptionFunc213"] = "AdjustLottery_Chg</N>4021303"
tItem[3312928]["OptionFunc214"] = "AdjustLottery_Chg</N>4021304"
tItem[3312928]["OptionFunc215"] = "AdjustLottery_Chg</N>4021305"
tItem[3312928]["OptionFunc216"] = "AdjustLottery_Chg</N>4021306"
tItem[3312928]["OptionFunc217"] = "AdjustLottery_Chg</N>4021307"
tItem[3312928]["OptionFunc218"] = "AdjustLottery_Chg</N>4021308"
tItem[3312928]["OptionFunc219"] = "AdjustLottery_Chg</N>4021309"
tItem[3312928]["OptionFunc220"] = "AdjustLottery_Chg</N>4021310"
tItem[3312928]["OptionFunc221"] = "AdjustLottery_Chg</N>4021311"
tItem[3312928]["OptionFunc222"] = "AdjustLottery_Chg</N>4021312"
tItem[3312928]["OptionFunc223"] = "AdjustLottery_Chg</N>4021313"
tItem[3312928]["OptionFunc224"] = "AdjustLottery_Chg</N>4021314"
tItem[3312928]["OptionFunc225"] = "AdjustLottery_Chg</N>4021315"
tItem[3312928]["OptionFunc226"] = "AdjustLottery_Chg</N>4021316"
tItem[3312928]["OptionFunc227"] = "AdjustLottery_Chg</N>4021317"
tItem[3312928]["OptionFunc228"] = "AdjustLottery_Chg</N>4021318"
tItem[3312928]["OptionFunc229"] = "AdjustLottery_Chg</N>4021319"
tItem[3312928]["OptionFunc230"] = "AdjustLottery_Chg</N>4021320"
tItem[3312928]["OptionFunc231"] = "AdjustLottery_Chg</N>4021321"
tItem[3312928]["OptionFunc232"] = "AdjustLottery_Chg</N>4021322"
tItem[3312928]["OptionFunc233"] = "AdjustLottery_Chg</N>4021323"
tItem[3312928]["OptionFunc234"] = "AdjustLottery_Chg</N>4021324"
tItem[3312928]["OptionFunc235"] = "AdjustLottery_Chg</N>4021325"
tItem[3312928]["OptionFunc236"] = "AdjustLottery_Chg</N>4021326"
tItem[3312928]["OptionFunc237"] = "AdjustLottery_Chg</N>4021327"
tItem[3312928]["OptionFunc238"] = "AdjustLottery_Chg</N>4021401"
tItem[3312928]["OptionFunc239"] = "AdjustLottery_Chg</N>4021402"
tItem[3312928]["OptionFunc240"] = "AdjustLottery_Chg</N>4021403"
tItem[3312928]["OptionFunc241"] = "AdjustLottery_Chg</N>4021404"
tItem[3312928]["OptionFunc242"] = "AdjustLottery_Chg</N>4021405"
tItem[3312928]["OptionFunc243"] = "AdjustLottery_Chg</N>4021406"
tItem[3312928]["OptionFunc244"] = "AdjustLottery_Chg</N>4021407"
tItem[3312928]["OptionFunc245"] = "AdjustLottery_Chg</N>4021408"
tItem[3312928]["OptionFunc246"] = "AdjustLottery_Chg</N>4021409"
tItem[3312928]["OptionFunc247"] = "AdjustLottery_Chg</N>4021410"
tItem[3312928]["OptionFunc248"] = "AdjustLottery_Chg</N>4021411"
tItem[3312928]["OptionFunc249"] = "AdjustLottery_Chg</N>4021412"
tItem[3312928]["OptionFunc250"] = "AdjustLottery_Chg</N>4021413"
tItem[3312928]["OptionFunc251"] = "AdjustLottery_Chg</N>4021414"
tItem[3312928]["OptionFunc252"] = "AdjustLottery_Chg</N>4021415"
tItem[3312928]["OptionFunc253"] = "AdjustLottery_Chg</N>4021416"
tItem[3312928]["OptionFunc254"] = "AdjustLottery_Chg</N>4021417"
tItem[3312928]["OptionFunc255"] = "AdjustLottery_Chg</N>4021418"
tItem[3312928]["OptionFunc256"] = "AdjustLottery_Chg</N>4021419"
tItem[3312928]["OptionFunc257"] = "AdjustLottery_Chg</N>4021420"
tItem[3312928]["OptionFunc258"] = "AdjustLottery_Chg</N>4021421"
tItem[3312928]["OptionFunc259"] = "AdjustLottery_Chg</N>4021422"
tItem[3312928]["OptionFunc260"] = "AdjustLottery_Chg</N>4021423"
tItem[3312928]["OptionFunc261"] = "AdjustLottery_Chg</N>4021424"
tItem[3312928]["OptionFunc262"] = "AdjustLottery_Chg</N>4021425"
tItem[3312928]["OptionFunc263"] = "AdjustLottery_Chg</N>4021426"
tItem[3312928]["OptionFunc264"] = "AdjustLottery_Chg</N>4021427"
tItem[3312928]["OptionFunc265"] = "AdjustLottery_Chg</N>4021501"
tItem[3312928]["OptionFunc266"] = "AdjustLottery_Chg</N>4021502"
tItem[3312928]["OptionFunc267"] = "AdjustLottery_Chg</N>4021503"
tItem[3312928]["OptionFunc268"] = "AdjustLottery_Chg</N>4021504"
tItem[3312928]["OptionFunc269"] = "AdjustLottery_Chg</N>4021505"
tItem[3312928]["OptionFunc270"] = "AdjustLottery_Chg</N>4021506"
tItem[3312928]["OptionFunc271"] = "AdjustLottery_Chg</N>4021507"
tItem[3312928]["OptionFunc272"] = "AdjustLottery_Chg</N>4021508"
tItem[3312928]["OptionFunc273"] = "AdjustLottery_Chg</N>4021509"
tItem[3312928]["OptionFunc274"] = "AdjustLottery_Chg</N>4021510"
tItem[3312928]["OptionFunc275"] = "AdjustLottery_Chg</N>4021511"
tItem[3312928]["OptionFunc276"] = "AdjustLottery_Chg</N>4021512"
tItem[3312928]["OptionFunc277"] = "AdjustLottery_Chg</N>4021513"
tItem[3312928]["OptionFunc278"] = "AdjustLottery_Chg</N>4021514"
tItem[3312928]["OptionFunc279"] = "AdjustLottery_Chg</N>4021515"
tItem[3312928]["OptionFunc280"] = "AdjustLottery_Chg</N>4021516"
tItem[3312928]["OptionFunc281"] = "AdjustLottery_Chg</N>4021517"
tItem[3312928]["OptionFunc282"] = "AdjustLottery_Chg</N>4021518"
tItem[3312928]["OptionFunc283"] = "AdjustLottery_Chg</N>4021519"
tItem[3312928]["OptionFunc284"] = "AdjustLottery_Chg</N>4021520"
tItem[3312928]["OptionFunc285"] = "AdjustLottery_Chg</N>4021521"
tItem[3312928]["OptionFunc286"] = "AdjustLottery_Chg</N>4021522"
tItem[3312928]["OptionFunc287"] = "AdjustLottery_Chg</N>4021523"
tItem[3312928]["OptionFunc288"] = "AdjustLottery_Chg</N>4021524"
tItem[3312928]["OptionFunc289"] = "AdjustLottery_Chg</N>4021525"
tItem[3312928]["OptionFunc290"] = "AdjustLottery_Chg</N>4021526"
tItem[3312928]["OptionFunc291"] = "AdjustLottery_Chg</N>4021527"
tItem[3312928]["OptionFunc292"] = "AdjustLottery_Chg</N>4021601"
tItem[3312928]["OptionFunc293"] = "AdjustLottery_Chg</N>4021602"
tItem[3312928]["OptionFunc294"] = "AdjustLottery_Chg</N>4021603"
tItem[3312928]["OptionFunc295"] = "AdjustLottery_Chg</N>4021604"
tItem[3312928]["OptionFunc296"] = "AdjustLottery_Chg</N>4021605"
tItem[3312928]["OptionFunc297"] = "AdjustLottery_Chg</N>4021606"
tItem[3312928]["OptionFunc298"] = "AdjustLottery_Chg</N>4021607"
tItem[3312928]["OptionFunc299"] = "AdjustLottery_Chg</N>4021608"
tItem[3312928]["OptionFunc300"] = "AdjustLottery_Chg</N>4021609"
tItem[3312928]["OptionFunc301"] = "AdjustLottery_Chg</N>4021610"
tItem[3312928]["OptionFunc302"] = "AdjustLottery_Chg</N>4021611"
tItem[3312928]["OptionFunc303"] = "AdjustLottery_Chg</N>4021612"
tItem[3312928]["OptionFunc304"] = "AdjustLottery_Chg</N>4021613"
tItem[3312928]["OptionFunc305"] = "AdjustLottery_Chg</N>4021614"
tItem[3312928]["OptionFunc306"] = "AdjustLottery_Chg</N>4021615"
tItem[3312928]["OptionFunc307"] = "AdjustLottery_Chg</N>4021616"
tItem[3312928]["OptionFunc308"] = "AdjustLottery_Chg</N>4021617"
tItem[3312928]["OptionFunc309"] = "AdjustLottery_Chg</N>4021618"
tItem[3312928]["OptionFunc310"] = "AdjustLottery_Chg</N>4021619"
tItem[3312928]["OptionFunc311"] = "AdjustLottery_Chg</N>4021620"
tItem[3312928]["OptionFunc312"] = "AdjustLottery_Chg</N>4021621"
tItem[3312928]["OptionFunc313"] = "AdjustLottery_Chg</N>4021622"
tItem[3312928]["OptionFunc314"] = "AdjustLottery_Chg</N>4021623"
tItem[3312928]["OptionFunc315"] = "AdjustLottery_Chg</N>4021624"
tItem[3312928]["OptionFunc316"] = "AdjustLottery_Chg</N>4021625"
tItem[3312928]["OptionFunc317"] = "AdjustLottery_Chg</N>4021626"
tItem[3312928]["OptionFunc318"] = "AdjustLottery_Chg</N>4021627"
tItem[3312928]["OptionFunc319"] = "AdjustLottery_Chg</N>4021701"
tItem[3312928]["OptionFunc320"] = "AdjustLottery_Chg</N>4021702"
tItem[3312928]["OptionFunc321"] = "AdjustLottery_Chg</N>4021703"
tItem[3312928]["OptionFunc322"] = "AdjustLottery_Chg</N>4021704"
tItem[3312928]["OptionFunc323"] = "AdjustLottery_Chg</N>4021705"
tItem[3312928]["OptionFunc324"] = "AdjustLottery_Chg</N>4021706"
tItem[3312928]["OptionFunc325"] = "AdjustLottery_Chg</N>4021707"
tItem[3312928]["OptionFunc326"] = "AdjustLottery_Chg</N>4021708"
tItem[3312928]["OptionFunc327"] = "AdjustLottery_Chg</N>4021709"
tItem[3312928]["OptionFunc328"] = "AdjustLottery_Chg</N>4021710"
tItem[3312928]["OptionFunc329"] = "AdjustLottery_Chg</N>4021711"
tItem[3312928]["OptionFunc330"] = "AdjustLottery_Chg</N>4021712"
tItem[3312928]["OptionFunc331"] = "AdjustLottery_Chg</N>4021713"
tItem[3312928]["OptionFunc332"] = "AdjustLottery_Chg</N>4021714"
tItem[3312928]["OptionFunc333"] = "AdjustLottery_Chg</N>4021715"
tItem[3312928]["OptionFunc334"] = "AdjustLottery_Chg</N>4021716"
tItem[3312928]["OptionFunc335"] = "AdjustLottery_Chg</N>4021717"
tItem[3312928]["OptionFunc336"] = "AdjustLottery_Chg</N>4021718"
tItem[3312928]["OptionFunc337"] = "AdjustLottery_Chg</N>4021719"
tItem[3312928]["OptionFunc338"] = "AdjustLottery_Chg</N>4021720"
tItem[3312928]["OptionFunc339"] = "AdjustLottery_Chg</N>4021721"
tItem[3312928]["OptionFunc340"] = "AdjustLottery_Chg</N>4021722"
tItem[3312928]["OptionFunc341"] = "AdjustLottery_Chg</N>4021723"
tItem[3312928]["OptionFunc342"] = "AdjustLottery_Chg</N>4021724"
tItem[3312928]["OptionFunc343"] = "AdjustLottery_Chg</N>4021725"
tItem[3312928]["OptionFunc344"] = "AdjustLottery_Chg</N>4021726"
tItem[3312928]["OptionFunc345"] = "AdjustLottery_Chg</N>4021727"
tItem[3312928]["OptionFunc346"] = "AdjustLottery_Chg</N>4021801"
tItem[3312928]["OptionFunc347"] = "AdjustLottery_Chg</N>4021802"
tItem[3312928]["OptionFunc348"] = "AdjustLottery_Chg</N>4021803"
tItem[3312928]["OptionFunc349"] = "AdjustLottery_Chg</N>4021804"
tItem[3312928]["OptionFunc350"] = "AdjustLottery_Chg</N>4021805"
tItem[3312928]["OptionFunc351"] = "AdjustLottery_Chg</N>4021806"
tItem[3312928]["OptionFunc352"] = "AdjustLottery_Chg</N>4021807"
tItem[3312928]["OptionFunc353"] = "AdjustLottery_Chg</N>4021808"
tItem[3312928]["OptionFunc354"] = "AdjustLottery_Chg</N>4021809"
tItem[3312928]["OptionFunc355"] = "AdjustLottery_Chg</N>4021810"
tItem[3312928]["OptionFunc356"] = "AdjustLottery_Chg</N>4021811"
tItem[3312928]["OptionFunc357"] = "AdjustLottery_Chg</N>4021812"
tItem[3312928]["OptionFunc358"] = "AdjustLottery_Chg</N>4021813"
tItem[3312928]["OptionFunc359"] = "AdjustLottery_Chg</N>4021814"
tItem[3312928]["OptionFunc360"] = "AdjustLottery_Chg</N>4021815"
tItem[3312928]["OptionFunc361"] = "AdjustLottery_Chg</N>4021816"
tItem[3312928]["OptionFunc362"] = "AdjustLottery_Chg</N>4021817"
tItem[3312928]["OptionFunc363"] = "AdjustLottery_Chg</N>4021818"
tItem[3312928]["OptionFunc364"] = "AdjustLottery_Chg</N>4021819"
tItem[3312928]["OptionFunc365"] = "AdjustLottery_Chg</N>4021820"
tItem[3312928]["OptionFunc366"] = "AdjustLottery_Chg</N>4021821"
tItem[3312928]["OptionFunc367"] = "AdjustLottery_Chg</N>4021822"
tItem[3312928]["OptionFunc368"] = "AdjustLottery_Chg</N>4021823"
tItem[3312928]["OptionFunc369"] = "AdjustLottery_Chg</N>4021824"
tItem[3312928]["OptionFunc370"] = "AdjustLottery_Chg</N>4021825"
tItem[3312928]["OptionFunc371"] = "AdjustLottery_Chg</N>4021826"
tItem[3312928]["OptionFunc372"] = "AdjustLottery_Chg</N>4021827"
tItem[3312928]["OptionFunc373"] = "AdjustLottery_Chg</N>4021901"
tItem[3312928]["OptionFunc374"] = "AdjustLottery_Chg</N>4021902"
tItem[3312928]["OptionFunc375"] = "AdjustLottery_Chg</N>4021903"
tItem[3312928]["OptionFunc376"] = "AdjustLottery_Chg</N>4021904"
tItem[3312928]["OptionFunc377"] = "AdjustLottery_Chg</N>4021905"
tItem[3312928]["OptionFunc378"] = "AdjustLottery_Chg</N>4021906"
tItem[3312928]["OptionFunc379"] = "AdjustLottery_Chg</N>4021907"
tItem[3312928]["OptionFunc380"] = "AdjustLottery_Chg</N>4021908"
tItem[3312928]["OptionFunc381"] = "AdjustLottery_Chg</N>4021909"
tItem[3312928]["OptionFunc382"] = "AdjustLottery_Chg</N>4021910"
tItem[3312928]["OptionFunc383"] = "AdjustLottery_Chg</N>4021911"
tItem[3312928]["OptionFunc384"] = "AdjustLottery_Chg</N>4021912"
tItem[3312928]["OptionFunc385"] = "AdjustLottery_Chg</N>4021913"
tItem[3312928]["OptionFunc386"] = "AdjustLottery_Chg</N>4021914"
tItem[3312928]["OptionFunc387"] = "AdjustLottery_Chg</N>4021915"
tItem[3312928]["OptionFunc388"] = "AdjustLottery_Chg</N>4021916"
tItem[3312928]["OptionFunc389"] = "AdjustLottery_Chg</N>4021917"
tItem[3312928]["OptionFunc390"] = "AdjustLottery_Chg</N>4021918"
tItem[3312928]["OptionFunc391"] = "AdjustLottery_Chg</N>4021919"
tItem[3312928]["OptionFunc392"] = "AdjustLottery_Chg</N>4021920"
tItem[3312928]["OptionFunc393"] = "AdjustLottery_Chg</N>4021921"
tItem[3312928]["OptionFunc394"] = "AdjustLottery_Chg</N>4021922"
tItem[3312928]["OptionFunc395"] = "AdjustLottery_Chg</N>4021923"
tItem[3312928]["OptionFunc396"] = "AdjustLottery_Chg</N>4021924"
tItem[3312928]["OptionFunc397"] = "AdjustLottery_Chg</N>4021925"
tItem[3312928]["OptionFunc398"] = "AdjustLottery_Chg</N>4021926"
tItem[3312928]["OptionFunc399"] = "AdjustLottery_Chg</N>4021927"
tItem[3312928]["OptionFunc400"] = "AdjustLottery_Chg</N>4022001"
tItem[3312928]["OptionFunc401"] = "AdjustLottery_Chg</N>4022002"
tItem[3312928]["OptionFunc402"] = "AdjustLottery_Chg</N>4022003"
tItem[3312928]["OptionFunc403"] = "AdjustLottery_Chg</N>4022004"
tItem[3312928]["OptionFunc404"] = "AdjustLottery_Chg</N>4022005"
tItem[3312928]["OptionFunc405"] = "AdjustLottery_Chg</N>4022006"
tItem[3312928]["OptionFunc406"] = "AdjustLottery_Chg</N>4022007"
tItem[3312928]["OptionFunc407"] = "AdjustLottery_Chg</N>4022008"
tItem[3312928]["OptionFunc408"] = "AdjustLottery_Chg</N>4022009"
tItem[3312928]["OptionFunc409"] = "AdjustLottery_Chg</N>4022010"
tItem[3312928]["OptionFunc410"] = "AdjustLottery_Chg</N>4022011"
tItem[3312928]["OptionFunc411"] = "AdjustLottery_Chg</N>4022012"
tItem[3312928]["OptionFunc412"] = "AdjustLottery_Chg</N>4022013"
tItem[3312928]["OptionFunc413"] = "AdjustLottery_Chg</N>4022014"
tItem[3312928]["OptionFunc414"] = "AdjustLottery_Chg</N>4022015"
tItem[3312928]["OptionFunc415"] = "AdjustLottery_Chg</N>4022016"
tItem[3312928]["OptionFunc416"] = "AdjustLottery_Chg</N>4022017"
tItem[3312928]["OptionFunc417"] = "AdjustLottery_Chg</N>4022018"
tItem[3312928]["OptionFunc418"] = "AdjustLottery_Chg</N>4022019"
tItem[3312928]["OptionFunc419"] = "AdjustLottery_Chg</N>4022020"
tItem[3312928]["OptionFunc420"] = "AdjustLottery_Chg</N>4022021"
tItem[3312928]["OptionFunc421"] = "AdjustLottery_Chg</N>4022022"
tItem[3312928]["OptionFunc422"] = "AdjustLottery_Chg</N>4022023"
tItem[3312928]["OptionFunc423"] = "AdjustLottery_Chg</N>4022024"
tItem[3312928]["OptionFunc424"] = "AdjustLottery_Chg</N>4022025"
tItem[3312928]["OptionFunc425"] = "AdjustLottery_Chg</N>4022026"
tItem[3312928]["OptionFunc426"] = "AdjustLottery_Chg</N>4022027"
tItem[3312928]["OptionFunc427"] = "AdjustLottery_Chg</N>4023001"
tItem[3312928]["OptionFunc428"] = "AdjustLottery_Chg</N>4023002"
tItem[3312928]["OptionFunc429"] = "AdjustLottery_Chg</N>4023003"
tItem[3312928]["OptionFunc430"] = "AdjustLottery_Chg</N>4023004"
tItem[3312928]["OptionFunc431"] = "AdjustLottery_Chg</N>4023005"
tItem[3312928]["OptionFunc432"] = "AdjustLottery_Chg</N>4023006"
tItem[3312928]["OptionFunc433"] = "AdjustLottery_Chg</N>4023007"
tItem[3312928]["OptionFunc434"] = "AdjustLottery_Chg</N>4023008"
tItem[3312928]["OptionFunc435"] = "AdjustLottery_Chg</N>4023009"
tItem[3312928]["OptionFunc436"] = "AdjustLottery_Chg</N>4023010"
tItem[3312928]["OptionFunc437"] = "AdjustLottery_Chg</N>4023011"
tItem[3312928]["OptionFunc438"] = "AdjustLottery_Chg</N>4023012"
tItem[3312928]["OptionFunc439"] = "AdjustLottery_Chg</N>4023013"
tItem[3312928]["OptionFunc440"] = "AdjustLottery_Chg</N>4023014"
tItem[3312928]["OptionFunc441"] = "AdjustLottery_Chg</N>4023015"
tItem[3312928]["OptionFunc442"] = "AdjustLottery_Chg</N>4023016"
tItem[3312928]["OptionFunc443"] = "AdjustLottery_Chg</N>4023017"
tItem[3312928]["OptionFunc444"] = "AdjustLottery_Chg</N>4023018"
tItem[3312928]["OptionFunc445"] = "AdjustLottery_Chg</N>4023019"
tItem[3312928]["OptionFunc446"] = "AdjustLottery_Chg</N>4023020"
tItem[3312928]["OptionFunc447"] = "AdjustLottery_Chg</N>4023021"
tItem[3312928]["OptionFunc448"] = "AdjustLottery_Chg</N>4023022"
tItem[3312928]["OptionFunc449"] = "AdjustLottery_Chg</N>4023023"
tItem[3312928]["OptionFunc450"] = "AdjustLottery_Chg</N>4023024"
tItem[3312928]["OptionFunc451"] = "AdjustLottery_Chg</N>4023025"
tItem[3312928]["OptionFunc452"] = "AdjustLottery_Chg</N>4023026"
tItem[3312928]["OptionFunc453"] = "AdjustLottery_Chg</N>4023027"
tItem[3312928]["OptionFunc454"] = "AdjustLottery_Chg</N>4031401"
tItem[3312928]["OptionFunc455"] = "AdjustLottery_Chg</N>4031402"
tItem[3312928]["OptionFunc456"] = "AdjustLottery_Chg</N>4031403"
tItem[3312928]["OptionFunc457"] = "AdjustLottery_Chg</N>4031404"
tItem[3312928]["OptionFunc458"] = "AdjustLottery_Chg</N>4031405"
tItem[3312928]["OptionFunc459"] = "AdjustLottery_Chg</N>4031406"
tItem[3312928]["OptionFunc460"] = "AdjustLottery_Chg</N>4031407"
tItem[3312928]["OptionFunc461"] = "AdjustLottery_Chg</N>4031408"
tItem[3312928]["OptionFunc462"] = "AdjustLottery_Chg</N>4031409"
tItem[3312928]["OptionFunc463"] = "AdjustLottery_Chg</N>4031501"
tItem[3312928]["OptionFunc464"] = "AdjustLottery_Chg</N>4031502"
tItem[3312928]["OptionFunc465"] = "AdjustLottery_Chg</N>4031503"
tItem[3312928]["OptionFunc466"] = "AdjustLottery_Chg</N>4031504"
tItem[3312928]["OptionFunc467"] = "AdjustLottery_Chg</N>4031505"
tItem[3312928]["OptionFunc468"] = "AdjustLottery_Chg</N>4031506"
tItem[3312928]["OptionFunc469"] = "AdjustLottery_Chg</N>4031507"
tItem[3312928]["OptionFunc470"] = "AdjustLottery_Chg</N>4031508"
tItem[3312928]["OptionFunc471"] = "AdjustLottery_Chg</N>4031509"
tItem[3312928]["OptionFunc472"] = "AdjustLottery_Chg</N>4031601"
tItem[3312928]["OptionFunc473"] = "AdjustLottery_Chg</N>4031602"
tItem[3312928]["OptionFunc474"] = "AdjustLottery_Chg</N>4031603"
tItem[3312928]["OptionFunc475"] = "AdjustLottery_Chg</N>4031604"
tItem[3312928]["OptionFunc476"] = "AdjustLottery_Chg</N>4031605"
tItem[3312928]["OptionFunc477"] = "AdjustLottery_Chg</N>4031606"
tItem[3312928]["OptionFunc478"] = "AdjustLottery_Chg</N>4031607"
tItem[3312928]["OptionFunc479"] = "AdjustLottery_Chg</N>4031608"
tItem[3312928]["OptionFunc480"] = "AdjustLottery_Chg</N>4031609"
tItem[3312928]["OptionFunc481"] = "AdjustLottery_Chg</N>4032001"
tItem[3312928]["OptionFunc482"] = "AdjustLottery_Chg</N>4032002"
tItem[3312928]["OptionFunc483"] = "AdjustLottery_Chg</N>4032003"
tItem[3312928]["OptionFunc484"] = "AdjustLottery_Chg</N>4032004"
tItem[3312928]["OptionFunc485"] = "AdjustLottery_Chg</N>4032005"
tItem[3312928]["OptionFunc486"] = "AdjustLottery_Chg</N>4032006"
tItem[3312928]["OptionFunc487"] = "AdjustLottery_Chg</N>4032007"
tItem[3312928]["OptionFunc488"] = "AdjustLottery_Chg</N>4032008"
tItem[3312928]["OptionFunc489"] = "AdjustLottery_Chg</N>4032009"
tItem[3312928]["OptionFunc490"] = "AdjustLottery_Chg</N>4032101"
tItem[3312928]["OptionFunc491"] = "AdjustLottery_Chg</N>4032102"
tItem[3312928]["OptionFunc492"] = "AdjustLottery_Chg</N>4032103"
tItem[3312928]["OptionFunc493"] = "AdjustLottery_Chg</N>4032104"
tItem[3312928]["OptionFunc494"] = "AdjustLottery_Chg</N>4032105"
tItem[3312928]["OptionFunc495"] = "AdjustLottery_Chg</N>4032106"
tItem[3312928]["OptionFunc496"] = "AdjustLottery_Chg</N>4032107"
tItem[3312928]["OptionFunc497"] = "AdjustLottery_Chg</N>4032108"
tItem[3312928]["OptionFunc498"] = "AdjustLottery_Chg</N>4032109"
tItem[3312928]["OptionFunc499"] = "AdjustLottery_Chg</N>4032201"
tItem[3312928]["OptionFunc500"] = "AdjustLottery_Chg</N>4032202"
tItem[3312928]["OptionFunc501"] = "AdjustLottery_Chg</N>4032203"
tItem[3312928]["OptionFunc502"] = "AdjustLottery_Chg</N>4032204"
tItem[3312928]["OptionFunc503"] = "AdjustLottery_Chg</N>4032205"
tItem[3312928]["OptionFunc504"] = "AdjustLottery_Chg</N>4032206"
tItem[3312928]["OptionFunc505"] = "AdjustLottery_Chg</N>4032207"
tItem[3312928]["OptionFunc506"] = "AdjustLottery_Chg</N>4032208"
tItem[3312928]["OptionFunc507"] = "AdjustLottery_Chg</N>4032209"
tItem[3312928]["OptionFunc508"] = "AdjustLottery_Chg</N>4032301"
tItem[3312928]["OptionFunc509"] = "AdjustLottery_Chg</N>4032302"
tItem[3312928]["OptionFunc510"] = "AdjustLottery_Chg</N>4032303"
tItem[3312928]["OptionFunc511"] = "AdjustLottery_Chg</N>4032304"
tItem[3312928]["OptionFunc512"] = "AdjustLottery_Chg</N>4032305"
tItem[3312928]["OptionFunc513"] = "AdjustLottery_Chg</N>4032306"
tItem[3312928]["OptionFunc514"] = "AdjustLottery_Chg</N>4032307"
tItem[3312928]["OptionFunc515"] = "AdjustLottery_Chg</N>4032308"
tItem[3312928]["OptionFunc516"] = "AdjustLottery_Chg</N>4032309"
tItem[3312928]["OptionFunc517"] = "AdjustLottery_Chg</N>4032401"
tItem[3312928]["OptionFunc518"] = "AdjustLottery_Chg</N>4032402"
tItem[3312928]["OptionFunc519"] = "AdjustLottery_Chg</N>4032403"
tItem[3312928]["OptionFunc520"] = "AdjustLottery_Chg</N>4032404"
tItem[3312928]["OptionFunc521"] = "AdjustLottery_Chg</N>4032405"
tItem[3312928]["OptionFunc522"] = "AdjustLottery_Chg</N>4032406"
tItem[3312928]["OptionFunc523"] = "AdjustLottery_Chg</N>4032407"
tItem[3312928]["OptionFunc524"] = "AdjustLottery_Chg</N>4032408"
tItem[3312928]["OptionFunc525"] = "AdjustLottery_Chg</N>4032409"
tItem[3312928]["OptionFunc526"] = "AdjustLottery_Chg</N>4032501"
tItem[3312928]["OptionFunc527"] = "AdjustLottery_Chg</N>4032502"
tItem[3312928]["OptionFunc528"] = "AdjustLottery_Chg</N>4032503"
tItem[3312928]["OptionFunc529"] = "AdjustLottery_Chg</N>4032504"
tItem[3312928]["OptionFunc530"] = "AdjustLottery_Chg</N>4032505"
tItem[3312928]["OptionFunc531"] = "AdjustLottery_Chg</N>4032506"
tItem[3312928]["OptionFunc532"] = "AdjustLottery_Chg</N>4032507"
tItem[3312928]["OptionFunc533"] = "AdjustLottery_Chg</N>4032508"
tItem[3312928]["OptionFunc534"] = "AdjustLottery_Chg</N>4032509"
tItem[3312928]["OptionFunc535"] = "AdjustLottery_Chg</N>4032601"
tItem[3312928]["OptionFunc536"] = "AdjustLottery_Chg</N>4032602"
tItem[3312928]["OptionFunc537"] = "AdjustLottery_Chg</N>4032603"
tItem[3312928]["OptionFunc538"] = "AdjustLottery_Chg</N>4032604"
tItem[3312928]["OptionFunc539"] = "AdjustLottery_Chg</N>4032605"
tItem[3312928]["OptionFunc540"] = "AdjustLottery_Chg</N>4032606"
tItem[3312928]["OptionFunc541"] = "AdjustLottery_Chg</N>4032607"
tItem[3312928]["OptionFunc542"] = "AdjustLottery_Chg</N>4032608"
tItem[3312928]["OptionFunc543"] = "AdjustLottery_Chg</N>4032609"
tItem[3312928]["OptionFunc544"] = "AdjustLottery_Chg</N>4032701"
tItem[3312928]["OptionFunc545"] = "AdjustLottery_Chg</N>4032702"
tItem[3312928]["OptionFunc546"] = "AdjustLottery_Chg</N>4032703"
tItem[3312928]["OptionFunc547"] = "AdjustLottery_Chg</N>4032704"
tItem[3312928]["OptionFunc548"] = "AdjustLottery_Chg</N>4032705"
tItem[3312928]["OptionFunc549"] = "AdjustLottery_Chg</N>4032706"
tItem[3312928]["OptionFunc550"] = "AdjustLottery_Chg</N>4032707"
tItem[3312928]["OptionFunc551"] = "AdjustLottery_Chg</N>4032708"
tItem[3312928]["OptionFunc552"] = "AdjustLottery_Chg</N>4032709"
tItem[3312928]["OptionFunc553"] = "AdjustLottery_Chg</N>4032801"
tItem[3312928]["OptionFunc554"] = "AdjustLottery_Chg</N>4032802"
tItem[3312928]["OptionFunc555"] = "AdjustLottery_Chg</N>4032803"
tItem[3312928]["OptionFunc556"] = "AdjustLottery_Chg</N>4032804"
tItem[3312928]["OptionFunc557"] = "AdjustLottery_Chg</N>4032805"
tItem[3312928]["OptionFunc558"] = "AdjustLottery_Chg</N>4032806"
tItem[3312928]["OptionFunc559"] = "AdjustLottery_Chg</N>4032807"
tItem[3312928]["OptionFunc560"] = "AdjustLottery_Chg</N>4032808"
tItem[3312928]["OptionFunc561"] = "AdjustLottery_Chg</N>4032809"



