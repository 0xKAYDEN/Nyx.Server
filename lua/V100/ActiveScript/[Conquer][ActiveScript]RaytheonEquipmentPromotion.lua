
------------------------------------------------------------------------------------
--Name：         190227[英文征服][活动脚本]雷神成品装备促销（3.19-4.19）
--Creator:      茅志伟
--Created:     2019/02/27
------------------------------------------------------------------------------------

-- 命名前缀 tRaytheonEquipmentPromotion_

-- lua.ini 41163
-- 41163 = V100\ActiveScript\[Conquer][ActiveScript]RaytheonEquipmentPromotion.lua
-- logId 12001316

local tRaytRaytheonEquipmentPromotion = {}
	-- 极品+6雷神头盔礼包,3320308
	tRaytRaytheonEquipmentPromotion[3320308] = {}
	tRaytRaytheonEquipmentPromotion[3320308]["LogId"] = 12001316
	tRaytRaytheonEquipmentPromotion[3320308]["DeleteItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320308]["DeleteItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320308]["DeleteItem"][1]["Id"] = 3320308 -- 【库】Super+6ThunderstrikerHelmetPack[属性:9]
	tRaytRaytheonEquipmentPromotion[3320308]["RewardItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320308]["RewardItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320308]["RewardItem"][1]["Id"] = 146009 -- 【库】ThunderHelmet[属性:0]【表格】极品15雷鸣战盔
	tRaytRaytheonEquipmentPromotion[3320308]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013" -- 2洞(加持+255)5%神佑(追加+6)ThunderHelmet*1
	tRaytRaytheonEquipmentPromotion[3320308]["RewardItem"][2] = {}
	tRaytRaytheonEquipmentPromotion[3320308]["RewardItem"][2]["Id"] = 820071 -- 【库】SaintHeadgear[属性:0]【表格】九曜玄羽
	tRaytRaytheonEquipmentPromotion[3320308]["RewardItem"][2]["Attr"] = "0 1 3" -- SaintHeadgear(赠)*1
	tRaytRaytheonEquipmentPromotion[3320308]["RewardItem"][3] = {}
	tRaytRaytheonEquipmentPromotion[3320308]["RewardItem"][3]["Id"] = 1088000 -- 【库】DragonBall[属性:0]【表格】龙珠
	tRaytRaytheonEquipmentPromotion[3320308]["RewardItem"][3]["Attr"] = "0 1 3" -- DragonBall(赠)*1
	tRaytRaytheonEquipmentPromotion[3320308]["RewardItem"][4] = {}
	tRaytRaytheonEquipmentPromotion[3320308]["RewardItem"][4]["Id"] = 3308948 -- 【库】10MeteorScrolls(B)Pack[属性:9]【表格】10流星卷(赠)礼包
	tRaytRaytheonEquipmentPromotion[3320308]["RewardItem"][4]["Attr"] = "0 3" -- 10MeteorScrolls(B)Pack*3
	tRaytRaytheonEquipmentPromotion[3320308]["RewardEffect"] = {}
	tRaytRaytheonEquipmentPromotion[3320308]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRaytRaytheonEquipmentPromotion[3320308]["RewardEffect"]["Effect"] = "angelwing"


	-- 极品+6雷神衣服礼包,3320309
	tRaytRaytheonEquipmentPromotion[3320309] = {}
	tRaytRaytheonEquipmentPromotion[3320309]["LogId"] = 12001316
	tRaytRaytheonEquipmentPromotion[3320309]["DeleteItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320309]["DeleteItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320309]["DeleteItem"][1]["Id"] = 3320309 -- 【库】Super+6ThunderstrikerArmorPack[属性:9]
	tRaytRaytheonEquipmentPromotion[3320309]["RewardItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320309]["RewardItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320309]["RewardItem"][1]["Id"] = 102009 -- 【库】RumbleArmor[属性:0]【表格】极品15蛮雷战甲
	tRaytRaytheonEquipmentPromotion[3320309]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013" -- 2洞(加持+255)5%神佑(追加+6)RumbleArmor*1
	tRaytRaytheonEquipmentPromotion[3320309]["RewardItem"][2] = {}
	tRaytRaytheonEquipmentPromotion[3320309]["RewardItem"][2]["Id"] = 822053 -- 【库】WhirlpoolArmor[属性:0]【表格】千漩仙铠
	tRaytRaytheonEquipmentPromotion[3320309]["RewardItem"][2]["Attr"] = "0 1 3" -- WhirlpoolArmor(赠)*1
	tRaytRaytheonEquipmentPromotion[3320309]["RewardItem"][3] = {}
	tRaytRaytheonEquipmentPromotion[3320309]["RewardItem"][3]["Id"] = 1088000 -- 【库】DragonBall[属性:0]【表格】龙珠
	tRaytRaytheonEquipmentPromotion[3320309]["RewardItem"][3]["Attr"] = "0 1 3" -- DragonBall(赠)*1
	tRaytRaytheonEquipmentPromotion[3320309]["RewardItem"][4] = {}
	tRaytRaytheonEquipmentPromotion[3320309]["RewardItem"][4]["Id"] = 3308948 -- 【库】10MeteorScrolls(B)Pack[属性:9]【表格】10流星卷(赠)礼包
	tRaytRaytheonEquipmentPromotion[3320309]["RewardItem"][4]["Attr"] = "0 3" -- 10MeteorScrolls(B)Pack*3
	tRaytRaytheonEquipmentPromotion[3320309]["RewardEffect"] = {}
	tRaytRaytheonEquipmentPromotion[3320309]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRaytRaytheonEquipmentPromotion[3320309]["RewardEffect"]["Effect"] = "angelwing"


	-- 极品+6雷神战锤礼包,3320310
	tRaytRaytheonEquipmentPromotion[3320310] = {}
	tRaytRaytheonEquipmentPromotion[3320310]["LogId"] = 12001316
	tRaytRaytheonEquipmentPromotion[3320310]["DeleteItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320310]["DeleteItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320310]["DeleteItem"][1]["Id"] = 3320310 -- 【库】Super+6StormhammerPack[属性:9]
	tRaytRaytheonEquipmentPromotion[3320310]["RewardItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320310]["RewardItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320310]["RewardItem"][1]["Id"] = 681029 -- 【库】GloryStormhammer[属性:0]【表格】极品15雷光战锤
	tRaytRaytheonEquipmentPromotion[3320310]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013" -- 2洞(加持+255)5%神佑(追加+6)GloryStormhammer*1
	tRaytRaytheonEquipmentPromotion[3320310]["RewardItem"][2] = {}
	tRaytRaytheonEquipmentPromotion[3320310]["RewardItem"][2]["Id"] = 3320448 -- 【库】OptionalP6StormhammerSoulPack[属性:9]【表格】雷神六阶战锤神魂可选包
	tRaytRaytheonEquipmentPromotion[3320310]["RewardItem"][2]["Attr"] = "0 1" -- OptionalP6StormhammerSoulPack*1
	tRaytRaytheonEquipmentPromotion[3320310]["RewardItem"][3] = {}
	tRaytRaytheonEquipmentPromotion[3320310]["RewardItem"][3]["Id"] = 1088000 -- 【库】DragonBall[属性:0]【表格】龙珠
	tRaytRaytheonEquipmentPromotion[3320310]["RewardItem"][3]["Attr"] = "0 1 3" -- DragonBall(赠)*1
	tRaytRaytheonEquipmentPromotion[3320310]["RewardItem"][4] = {}
	tRaytRaytheonEquipmentPromotion[3320310]["RewardItem"][4]["Id"] = 3308948 -- 【库】10MeteorScrolls(B)Pack[属性:9]【表格】10流星卷(赠)礼包
	tRaytRaytheonEquipmentPromotion[3320310]["RewardItem"][4]["Attr"] = "0 3" -- 10MeteorScrolls(B)Pack*3
	tRaytRaytheonEquipmentPromotion[3320310]["RewardEffect"] = {}
	tRaytRaytheonEquipmentPromotion[3320310]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRaytRaytheonEquipmentPromotion[3320310]["RewardEffect"]["Effect"] = "angelwing"


	-- 极品+6雷神战斧礼包,3320311
	tRaytRaytheonEquipmentPromotion[3320311] = {}
	tRaytRaytheonEquipmentPromotion[3320311]["LogId"] = 12001316
	tRaytRaytheonEquipmentPromotion[3320311]["DeleteItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320311]["DeleteItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320311]["DeleteItem"][1]["Id"] = 3320311 -- 【库】Super+6FlashaxePack[属性:9]
	tRaytRaytheonEquipmentPromotion[3320311]["RewardItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320311]["RewardItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320311]["RewardItem"][1]["Id"] = 680029 -- 【库】ShadowFlashaxe[属性:0]【表格】极品15凛风战斧
	tRaytRaytheonEquipmentPromotion[3320311]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 255 0 6 013 013" -- 2洞(加持+255)5%神佑(追加+6)ShadowFlashaxe*1
	tRaytRaytheonEquipmentPromotion[3320311]["RewardItem"][2] = {}
	tRaytRaytheonEquipmentPromotion[3320311]["RewardItem"][2]["Id"] = 3320449 -- 【库】OptionalP6FlashaxeSoulPack[属性:9]【表格】雷神六阶战斧神魂可选包
	tRaytRaytheonEquipmentPromotion[3320311]["RewardItem"][2]["Attr"] = "0 1" -- OptionalP6FlashaxeSoulPack*1
	tRaytRaytheonEquipmentPromotion[3320311]["RewardItem"][3] = {}
	tRaytRaytheonEquipmentPromotion[3320311]["RewardItem"][3]["Id"] = 1088000 -- 【库】DragonBall[属性:0]【表格】龙珠
	tRaytRaytheonEquipmentPromotion[3320311]["RewardItem"][3]["Attr"] = "0 1 3" -- DragonBall(赠)*1
	tRaytRaytheonEquipmentPromotion[3320311]["RewardItem"][4] = {}
	tRaytRaytheonEquipmentPromotion[3320311]["RewardItem"][4]["Id"] = 3308948 -- 【库】10MeteorScrolls(B)Pack[属性:9]【表格】10流星卷(赠)礼包
	tRaytRaytheonEquipmentPromotion[3320311]["RewardItem"][4]["Attr"] = "0 3" -- 10MeteorScrolls(B)Pack*3
	tRaytRaytheonEquipmentPromotion[3320311]["RewardEffect"] = {}
	tRaytRaytheonEquipmentPromotion[3320311]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRaytRaytheonEquipmentPromotion[3320311]["RewardEffect"]["Effect"] = "angelwing"


	-- 极品+8雷神头盔礼包,3320312
	tRaytRaytheonEquipmentPromotion[3320312] = {}
	tRaytRaytheonEquipmentPromotion[3320312]["LogId"] = 12001316
	tRaytRaytheonEquipmentPromotion[3320312]["DeleteItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320312]["DeleteItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320312]["DeleteItem"][1]["Id"] = 3320312 -- 【库】Super+8ThunderstrikerHelmetPack[属性:9]
	tRaytRaytheonEquipmentPromotion[3320312]["RewardItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320312]["RewardItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320312]["RewardItem"][1]["Id"] = 146009 -- 【库】ThunderHelmet[属性:0]【表格】极品15级雷鸣战盔
	tRaytRaytheonEquipmentPromotion[3320312]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013" -- 2洞(加持+255)7%神佑(追加+8)ThunderHelmet*1
	tRaytRaytheonEquipmentPromotion[3320312]["RewardItem"][2] = {}
	tRaytRaytheonEquipmentPromotion[3320312]["RewardItem"][2]["Id"] = 3320452 -- 【库】OptionalP7HeadgearSoulPack[属性:9]【表格】七阶头部神魂可选包
	tRaytRaytheonEquipmentPromotion[3320312]["RewardItem"][2]["Attr"] = "0 1" -- OptionalP7HeadgearSoulPack*1
	tRaytRaytheonEquipmentPromotion[3320312]["RewardItem"][3] = {}
	tRaytRaytheonEquipmentPromotion[3320312]["RewardItem"][3]["Id"] = 1088000 -- 【库】DragonBall[属性:0]【表格】龙珠
	tRaytRaytheonEquipmentPromotion[3320312]["RewardItem"][3]["Attr"] = "0 1 3" -- DragonBall(赠)*1
	tRaytRaytheonEquipmentPromotion[3320312]["RewardItem"][4] = {}
	tRaytRaytheonEquipmentPromotion[3320312]["RewardItem"][4]["Id"] = 3308948 -- 【库】10MeteorScrolls(B)Pack[属性:9]【表格】10流星卷(赠)礼包
	tRaytRaytheonEquipmentPromotion[3320312]["RewardItem"][4]["Attr"] = "0 3" -- 10MeteorScrolls(B)Pack*3
	tRaytRaytheonEquipmentPromotion[3320312]["RewardEffect"] = {}
	tRaytRaytheonEquipmentPromotion[3320312]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRaytRaytheonEquipmentPromotion[3320312]["RewardEffect"]["Effect"] = "angelwing"


	-- 极品+8雷神衣服礼包,3320313
	tRaytRaytheonEquipmentPromotion[3320313] = {}
	tRaytRaytheonEquipmentPromotion[3320313]["LogId"] = 12001316
	tRaytRaytheonEquipmentPromotion[3320313]["DeleteItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320313]["DeleteItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320313]["DeleteItem"][1]["Id"] = 3320313 -- 【库】Super+8ThunderstrikerArmorPack[属性:9]
	tRaytRaytheonEquipmentPromotion[3320313]["RewardItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320313]["RewardItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320313]["RewardItem"][1]["Id"] = 102009 -- 【库】RumbleArmor[属性:0]【表格】极品15蛮雷战甲
	tRaytRaytheonEquipmentPromotion[3320313]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013" -- 2洞(加持+255)7%神佑(追加+8)RumbleArmor*1
	tRaytRaytheonEquipmentPromotion[3320313]["RewardItem"][2] = {}
	tRaytRaytheonEquipmentPromotion[3320313]["RewardItem"][2]["Id"] = 822071 -- 【库】NetherArmor[属性:0]【表格】幽冥魔铠
	tRaytRaytheonEquipmentPromotion[3320313]["RewardItem"][2]["Attr"] = "0 1 3" -- NetherArmor(赠)*1
	tRaytRaytheonEquipmentPromotion[3320313]["RewardItem"][3] = {}
	tRaytRaytheonEquipmentPromotion[3320313]["RewardItem"][3]["Id"] = 1088000 -- 【库】DragonBall[属性:0]【表格】龙珠
	tRaytRaytheonEquipmentPromotion[3320313]["RewardItem"][3]["Attr"] = "0 1 3" -- DragonBall(赠)*1
	tRaytRaytheonEquipmentPromotion[3320313]["RewardItem"][4] = {}
	tRaytRaytheonEquipmentPromotion[3320313]["RewardItem"][4]["Id"] = 3308948 -- 【库】10MeteorScrolls(B)Pack[属性:9]【表格】10流星卷(赠)礼包
	tRaytRaytheonEquipmentPromotion[3320313]["RewardItem"][4]["Attr"] = "0 3" -- 10MeteorScrolls(B)Pack*3
	tRaytRaytheonEquipmentPromotion[3320313]["RewardEffect"] = {}
	tRaytRaytheonEquipmentPromotion[3320313]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRaytRaytheonEquipmentPromotion[3320313]["RewardEffect"]["Effect"] = "angelwing"


	-- 极品+8雷神战锤礼包,3320314
	tRaytRaytheonEquipmentPromotion[3320314] = {}
	tRaytRaytheonEquipmentPromotion[3320314]["LogId"] = 12001316
	tRaytRaytheonEquipmentPromotion[3320314]["DeleteItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320314]["DeleteItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320314]["DeleteItem"][1]["Id"] = 3320314 -- 【库】Super+8StormhammerPack[属性:9]
	tRaytRaytheonEquipmentPromotion[3320314]["RewardItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320314]["RewardItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320314]["RewardItem"][1]["Id"] = 681029 -- 【库】GloryStormhammer[属性:0]【表格】极品15雷光战锤
	tRaytRaytheonEquipmentPromotion[3320314]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013" -- 2洞(加持+255)7%神佑(追加+8)GloryStormhammer*1
	tRaytRaytheonEquipmentPromotion[3320314]["RewardItem"][2] = {}
	tRaytRaytheonEquipmentPromotion[3320314]["RewardItem"][2]["Id"] = 3320450 -- 【库】OptionalP7StormhammerSoulPack[属性:9]【表格】雷神七阶战锤神魂可选包
	tRaytRaytheonEquipmentPromotion[3320314]["RewardItem"][2]["Attr"] = "0 1" -- OptionalP7StormhammerSoulPack*1
	tRaytRaytheonEquipmentPromotion[3320314]["RewardItem"][3] = {}
	tRaytRaytheonEquipmentPromotion[3320314]["RewardItem"][3]["Id"] = 1088000 -- 【库】DragonBall[属性:0]【表格】龙珠
	tRaytRaytheonEquipmentPromotion[3320314]["RewardItem"][3]["Attr"] = "0 1 3" -- DragonBall(赠)*1
	tRaytRaytheonEquipmentPromotion[3320314]["RewardItem"][4] = {}
	tRaytRaytheonEquipmentPromotion[3320314]["RewardItem"][4]["Id"] = 3308948 -- 【库】10MeteorScrolls(B)Pack[属性:9]【表格】10流星卷(赠)礼包
	tRaytRaytheonEquipmentPromotion[3320314]["RewardItem"][4]["Attr"] = "0 3" -- 10MeteorScrolls(B)Pack*3
	tRaytRaytheonEquipmentPromotion[3320314]["RewardEffect"] = {}
	tRaytRaytheonEquipmentPromotion[3320314]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRaytRaytheonEquipmentPromotion[3320314]["RewardEffect"]["Effect"] = "angelwing"


	-- 极品+8雷神战斧礼包,3320315
	tRaytRaytheonEquipmentPromotion[3320315] = {}
	tRaytRaytheonEquipmentPromotion[3320315]["LogId"] = 12001316
	tRaytRaytheonEquipmentPromotion[3320315]["DeleteItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320315]["DeleteItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320315]["DeleteItem"][1]["Id"] = 3320315 -- 【库】Super+8FlashaxePack[属性:9]
	tRaytRaytheonEquipmentPromotion[3320315]["RewardItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320315]["RewardItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320315]["RewardItem"][1]["Id"] = 680029 -- 【库】ShadowFlashaxe[属性:0]【表格】极品15凛风战斧
	tRaytRaytheonEquipmentPromotion[3320315]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 7 255 0 8 013 013" -- 2洞(加持+255)7%神佑(追加+8)ShadowFlashaxe*1
	tRaytRaytheonEquipmentPromotion[3320315]["RewardItem"][2] = {}
	tRaytRaytheonEquipmentPromotion[3320315]["RewardItem"][2]["Id"] = 3320451 -- 【库】OptionalP7FlashaxeSoulPack[属性:9]【表格】雷神七阶战斧神魂可选包
	tRaytRaytheonEquipmentPromotion[3320315]["RewardItem"][2]["Attr"] = "0 1" -- OptionalP7FlashaxeSoulPack*1
	tRaytRaytheonEquipmentPromotion[3320315]["RewardItem"][3] = {}
	tRaytRaytheonEquipmentPromotion[3320315]["RewardItem"][3]["Id"] = 1088000 -- 【库】DragonBall[属性:0]【表格】龙珠
	tRaytRaytheonEquipmentPromotion[3320315]["RewardItem"][3]["Attr"] = "0 1 3" -- DragonBall(赠)*1
	tRaytRaytheonEquipmentPromotion[3320315]["RewardItem"][4] = {}
	tRaytRaytheonEquipmentPromotion[3320315]["RewardItem"][4]["Id"] = 3308948 -- 【库】10MeteorScrolls(B)Pack[属性:9]【表格】10流星卷(赠)礼包
	tRaytRaytheonEquipmentPromotion[3320315]["RewardItem"][4]["Attr"] = "0 3" -- 10MeteorScrolls(B)Pack*3
	tRaytRaytheonEquipmentPromotion[3320315]["RewardEffect"] = {}
	tRaytRaytheonEquipmentPromotion[3320315]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRaytRaytheonEquipmentPromotion[3320315]["RewardEffect"]["Effect"] = "angelwing"


	-- 极品+6赠品雷神头盔礼包,3320316
	tRaytRaytheonEquipmentPromotion[3320316] = {}
	tRaytRaytheonEquipmentPromotion[3320316]["LogId"] = 12001316
	tRaytRaytheonEquipmentPromotion[3320316]["DeleteItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320316]["DeleteItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320316]["DeleteItem"][1]["Id"] = 3320316 -- 【库】Super+6ThunderstrikerHelmet(B)Pack[属性:9]
	tRaytRaytheonEquipmentPromotion[3320316]["RewardItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320316]["RewardItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320316]["RewardItem"][1]["Id"] = 146009 -- 【库】ThunderHelmet[属性:0]【表格】极品15雷鸣战盔
	tRaytRaytheonEquipmentPromotion[3320316]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013" -- 2洞(加持+255)5%神佑(追加+6)ThunderHelmet(赠)*1
	tRaytRaytheonEquipmentPromotion[3320316]["RewardItem"][2] = {}
	tRaytRaytheonEquipmentPromotion[3320316]["RewardItem"][2]["Id"] = 820071 -- 【库】SaintHeadgear[属性:0]【表格】九曜玄羽
	tRaytRaytheonEquipmentPromotion[3320316]["RewardItem"][2]["Attr"] = "0 1 3" -- SaintHeadgear(赠)*1
	tRaytRaytheonEquipmentPromotion[3320316]["RewardItem"][3] = {}
	tRaytRaytheonEquipmentPromotion[3320316]["RewardItem"][3]["Id"] = 1088000 -- 【库】DragonBall[属性:0]【表格】龙珠
	tRaytRaytheonEquipmentPromotion[3320316]["RewardItem"][3]["Attr"] = "0 1 3" -- DragonBall(赠)*1
	tRaytRaytheonEquipmentPromotion[3320316]["RewardItem"][4] = {}
	tRaytRaytheonEquipmentPromotion[3320316]["RewardItem"][4]["Id"] = 3308948 -- 【库】10MeteorScrolls(B)Pack[属性:9]【表格】10流星卷(赠)礼包
	tRaytRaytheonEquipmentPromotion[3320316]["RewardItem"][4]["Attr"] = "0 3" -- 10MeteorScrolls(B)Pack*3
	tRaytRaytheonEquipmentPromotion[3320316]["RewardEffect"] = {}
	tRaytRaytheonEquipmentPromotion[3320316]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRaytRaytheonEquipmentPromotion[3320316]["RewardEffect"]["Effect"] = "angelwing"


	-- 极品+6赠品雷神衣服礼包,3320317
	tRaytRaytheonEquipmentPromotion[3320317] = {}
	tRaytRaytheonEquipmentPromotion[3320317]["LogId"] = 12001316
	tRaytRaytheonEquipmentPromotion[3320317]["DeleteItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320317]["DeleteItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320317]["DeleteItem"][1]["Id"] = 3320317 -- 【库】Super+6ThunderstrikerArmor(B)Pack[属性:9]
	tRaytRaytheonEquipmentPromotion[3320317]["RewardItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320317]["RewardItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320317]["RewardItem"][1]["Id"] = 102009 -- 【库】RumbleArmor[属性:0]【表格】极品15蛮雷战甲
	tRaytRaytheonEquipmentPromotion[3320317]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013" -- 2洞(加持+255)5%神佑(追加+6)RumbleArmor(赠)*1
	tRaytRaytheonEquipmentPromotion[3320317]["RewardItem"][2] = {}
	tRaytRaytheonEquipmentPromotion[3320317]["RewardItem"][2]["Id"] = 822053 -- 【库】WhirlpoolArmor[属性:0]【表格】千漩仙铠
	tRaytRaytheonEquipmentPromotion[3320317]["RewardItem"][2]["Attr"] = "0 1 3" -- WhirlpoolArmor(赠)*1
	tRaytRaytheonEquipmentPromotion[3320317]["RewardItem"][3] = {}
	tRaytRaytheonEquipmentPromotion[3320317]["RewardItem"][3]["Id"] = 1088000 -- 【库】DragonBall[属性:0]【表格】龙珠
	tRaytRaytheonEquipmentPromotion[3320317]["RewardItem"][3]["Attr"] = "0 1 3" -- DragonBall(赠)*1
	tRaytRaytheonEquipmentPromotion[3320317]["RewardItem"][4] = {}
	tRaytRaytheonEquipmentPromotion[3320317]["RewardItem"][4]["Id"] = 3308948 -- 【库】10MeteorScrolls(B)Pack[属性:9]【表格】10流星卷(赠)礼包
	tRaytRaytheonEquipmentPromotion[3320317]["RewardItem"][4]["Attr"] = "0 3" -- 10MeteorScrolls(B)Pack*3
	tRaytRaytheonEquipmentPromotion[3320317]["RewardEffect"] = {}
	tRaytRaytheonEquipmentPromotion[3320317]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRaytRaytheonEquipmentPromotion[3320317]["RewardEffect"]["Effect"] = "angelwing"


	-- 极品+6赠品雷神战锤礼包,3320318
	tRaytRaytheonEquipmentPromotion[3320318] = {}
	tRaytRaytheonEquipmentPromotion[3320318]["LogId"] = 12001316
	tRaytRaytheonEquipmentPromotion[3320318]["DeleteItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320318]["DeleteItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320318]["DeleteItem"][1]["Id"] = 3320318 -- 【库】Super+6Stormhammer(B)Pack[属性:9]
	tRaytRaytheonEquipmentPromotion[3320318]["RewardItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320318]["RewardItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320318]["RewardItem"][1]["Id"] = 681029 -- 【库】GloryStormhammer[属性:0]【表格】极品15雷光战锤
	tRaytRaytheonEquipmentPromotion[3320318]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013" -- 2洞(加持+255)5%神佑(追加+6)GloryStormhammer(赠)*1
	tRaytRaytheonEquipmentPromotion[3320318]["RewardItem"][2] = {}
	tRaytRaytheonEquipmentPromotion[3320318]["RewardItem"][2]["Id"] = 3320448 -- 【库】OptionalP6StormhammerSoulPack[属性:9]【表格】雷神六阶战锤神魂可选包
	tRaytRaytheonEquipmentPromotion[3320318]["RewardItem"][2]["Attr"] = "0 1" -- OptionalP6StormhammerSoulPack*1
	tRaytRaytheonEquipmentPromotion[3320318]["RewardItem"][3] = {}
	tRaytRaytheonEquipmentPromotion[3320318]["RewardItem"][3]["Id"] = 1088000 -- 【库】DragonBall[属性:0]【表格】龙珠
	tRaytRaytheonEquipmentPromotion[3320318]["RewardItem"][3]["Attr"] = "0 1 3" -- DragonBall(赠)*1
	tRaytRaytheonEquipmentPromotion[3320318]["RewardItem"][4] = {}
	tRaytRaytheonEquipmentPromotion[3320318]["RewardItem"][4]["Id"] = 3308948 -- 【库】10MeteorScrolls(B)Pack[属性:9]【表格】10流星卷(赠)礼包
	tRaytRaytheonEquipmentPromotion[3320318]["RewardItem"][4]["Attr"] = "0 3" -- 10MeteorScrolls(B)Pack*3
	tRaytRaytheonEquipmentPromotion[3320318]["RewardEffect"] = {}
	tRaytRaytheonEquipmentPromotion[3320318]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRaytRaytheonEquipmentPromotion[3320318]["RewardEffect"]["Effect"] = "angelwing"


	-- 极品+6赠品雷神战斧礼包,3320319
	tRaytRaytheonEquipmentPromotion[3320319] = {}
	tRaytRaytheonEquipmentPromotion[3320319]["LogId"] = 12001316
	tRaytRaytheonEquipmentPromotion[3320319]["DeleteItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320319]["DeleteItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320319]["DeleteItem"][1]["Id"] = 3320319 -- 【库】Super+6Flashaxe(B)Pack[属性:9]
	tRaytRaytheonEquipmentPromotion[3320319]["RewardItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320319]["RewardItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320319]["RewardItem"][1]["Id"] = 680029 -- 【库】ShadowFlashaxe[属性:0]【表格】极品15凛风战斧
	tRaytRaytheonEquipmentPromotion[3320319]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 255 0 6 013 013" -- 2洞(加持+255)5%神佑(追加+6)ShadowFlashaxe(赠)*1
	tRaytRaytheonEquipmentPromotion[3320319]["RewardItem"][2] = {}
	tRaytRaytheonEquipmentPromotion[3320319]["RewardItem"][2]["Id"] = 3320449 -- 【库】OptionalP6FlashaxeSoulPack[属性:9]【表格】雷神六阶战斧神魂可选包
	tRaytRaytheonEquipmentPromotion[3320319]["RewardItem"][2]["Attr"] = "0 1" -- OptionalP6FlashaxeSoulPack*1
	tRaytRaytheonEquipmentPromotion[3320319]["RewardItem"][3] = {}
	tRaytRaytheonEquipmentPromotion[3320319]["RewardItem"][3]["Id"] = 1088000 -- 【库】DragonBall[属性:0]【表格】龙珠
	tRaytRaytheonEquipmentPromotion[3320319]["RewardItem"][3]["Attr"] = "0 1 3" -- DragonBall(赠)*1
	tRaytRaytheonEquipmentPromotion[3320319]["RewardItem"][4] = {}
	tRaytRaytheonEquipmentPromotion[3320319]["RewardItem"][4]["Id"] = 3308948 -- 【库】10MeteorScrolls(B)Pack[属性:9]【表格】10流星卷(赠)礼包
	tRaytRaytheonEquipmentPromotion[3320319]["RewardItem"][4]["Attr"] = "0 3" -- 10MeteorScrolls(B)Pack*3
	tRaytRaytheonEquipmentPromotion[3320319]["RewardEffect"] = {}
	tRaytRaytheonEquipmentPromotion[3320319]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRaytRaytheonEquipmentPromotion[3320319]["RewardEffect"]["Effect"] = "angelwing"


	-- 极品+8赠品雷神头盔礼包,3320320
	tRaytRaytheonEquipmentPromotion[3320320] = {}
	tRaytRaytheonEquipmentPromotion[3320320]["LogId"] = 12001316
	tRaytRaytheonEquipmentPromotion[3320320]["DeleteItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320320]["DeleteItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320320]["DeleteItem"][1]["Id"] = 3320320 -- 【库】Super+8ThunderstrikerHelmet(B)Pack[属性:9]
	tRaytRaytheonEquipmentPromotion[3320320]["RewardItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320320]["RewardItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320320]["RewardItem"][1]["Id"] = 146009 -- 【库】ThunderHelmet[属性:0]【表格】极品15级雷鸣战盔
	tRaytRaytheonEquipmentPromotion[3320320]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013" -- 2洞(加持+255)7%神佑(追加+8)ThunderHelmet(赠)*1
	tRaytRaytheonEquipmentPromotion[3320320]["RewardItem"][2] = {}
	tRaytRaytheonEquipmentPromotion[3320320]["RewardItem"][2]["Id"] = 3320452 -- 【库】OptionalP7HeadgearSoulPack[属性:9]【表格】七阶头部神魂可选包
	tRaytRaytheonEquipmentPromotion[3320320]["RewardItem"][2]["Attr"] = "0 1" -- OptionalP7HeadgearSoulPack*1
	tRaytRaytheonEquipmentPromotion[3320320]["RewardItem"][3] = {}
	tRaytRaytheonEquipmentPromotion[3320320]["RewardItem"][3]["Id"] = 1088000 -- 【库】DragonBall[属性:0]【表格】龙珠
	tRaytRaytheonEquipmentPromotion[3320320]["RewardItem"][3]["Attr"] = "0 1 3" -- DragonBall(赠)*1
	tRaytRaytheonEquipmentPromotion[3320320]["RewardItem"][4] = {}
	tRaytRaytheonEquipmentPromotion[3320320]["RewardItem"][4]["Id"] = 3308948 -- 【库】10MeteorScrolls(B)Pack[属性:9]【表格】10流星卷(赠)礼包
	tRaytRaytheonEquipmentPromotion[3320320]["RewardItem"][4]["Attr"] = "0 3" -- 10MeteorScrolls(B)Pack*3
	tRaytRaytheonEquipmentPromotion[3320320]["RewardEffect"] = {}
	tRaytRaytheonEquipmentPromotion[3320320]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRaytRaytheonEquipmentPromotion[3320320]["RewardEffect"]["Effect"] = "angelwing"


	-- 极品+8赠品雷神衣服礼包,3320321
	tRaytRaytheonEquipmentPromotion[3320321] = {}
	tRaytRaytheonEquipmentPromotion[3320321]["LogId"] = 12001316
	tRaytRaytheonEquipmentPromotion[3320321]["DeleteItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320321]["DeleteItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320321]["DeleteItem"][1]["Id"] = 3320321 -- 【库】Super+8ThunderstrikerArmor(B)Pack[属性:9]
	tRaytRaytheonEquipmentPromotion[3320321]["RewardItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320321]["RewardItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320321]["RewardItem"][1]["Id"] = 102009 -- 【库】RumbleArmor[属性:0]【表格】极品15蛮雷战甲
	tRaytRaytheonEquipmentPromotion[3320321]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013" -- 2洞(加持+255)7%神佑(追加+8)RumbleArmor(赠)*1
	tRaytRaytheonEquipmentPromotion[3320321]["RewardItem"][2] = {}
	tRaytRaytheonEquipmentPromotion[3320321]["RewardItem"][2]["Id"] = 822071 -- 【库】NetherArmor[属性:0]【表格】幽冥魔铠
	tRaytRaytheonEquipmentPromotion[3320321]["RewardItem"][2]["Attr"] = "0 1 3" -- NetherArmor(赠)*1
	tRaytRaytheonEquipmentPromotion[3320321]["RewardItem"][3] = {}
	tRaytRaytheonEquipmentPromotion[3320321]["RewardItem"][3]["Id"] = 1088000 -- 【库】DragonBall[属性:0]【表格】龙珠
	tRaytRaytheonEquipmentPromotion[3320321]["RewardItem"][3]["Attr"] = "0 1 3" -- DragonBall(赠)*1
	tRaytRaytheonEquipmentPromotion[3320321]["RewardItem"][4] = {}
	tRaytRaytheonEquipmentPromotion[3320321]["RewardItem"][4]["Id"] = 3308948 -- 【库】10MeteorScrolls(B)Pack[属性:9]【表格】10流星卷(赠)礼包
	tRaytRaytheonEquipmentPromotion[3320321]["RewardItem"][4]["Attr"] = "0 3" -- 10MeteorScrolls(B)Pack*3
	tRaytRaytheonEquipmentPromotion[3320321]["RewardEffect"] = {}
	tRaytRaytheonEquipmentPromotion[3320321]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRaytRaytheonEquipmentPromotion[3320321]["RewardEffect"]["Effect"] = "angelwing"


	-- 极品+8赠品雷神战锤礼包,3320322
	tRaytRaytheonEquipmentPromotion[3320322] = {}
	tRaytRaytheonEquipmentPromotion[3320322]["LogId"] = 12001316
	tRaytRaytheonEquipmentPromotion[3320322]["DeleteItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320322]["DeleteItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320322]["DeleteItem"][1]["Id"] = 3320322 -- 【库】Super+8Stormhammer(B)Pack[属性:9]
	tRaytRaytheonEquipmentPromotion[3320322]["RewardItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320322]["RewardItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320322]["RewardItem"][1]["Id"] = 681029 -- 【库】GloryStormhammer[属性:0]【表格】极品15雷光战锤
	tRaytRaytheonEquipmentPromotion[3320322]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013" -- 2洞(加持+255)7%神佑(追加+8)GloryStormhammer(赠)*1
	tRaytRaytheonEquipmentPromotion[3320322]["RewardItem"][2] = {}
	tRaytRaytheonEquipmentPromotion[3320322]["RewardItem"][2]["Id"] = 3320450 -- 【库】OptionalP7StormhammerSoulPack[属性:9]【表格】雷神七阶战锤神魂可选包
	tRaytRaytheonEquipmentPromotion[3320322]["RewardItem"][2]["Attr"] = "0 1" -- OptionalP7StormhammerSoulPack*1
	tRaytRaytheonEquipmentPromotion[3320322]["RewardItem"][3] = {}
	tRaytRaytheonEquipmentPromotion[3320322]["RewardItem"][3]["Id"] = 1088000 -- 【库】DragonBall[属性:0]【表格】龙珠
	tRaytRaytheonEquipmentPromotion[3320322]["RewardItem"][3]["Attr"] = "0 1 3" -- DragonBall(赠)*1
	tRaytRaytheonEquipmentPromotion[3320322]["RewardItem"][4] = {}
	tRaytRaytheonEquipmentPromotion[3320322]["RewardItem"][4]["Id"] = 3308948 -- 【库】10MeteorScrolls(B)Pack[属性:9]【表格】10流星卷(赠)礼包
	tRaytRaytheonEquipmentPromotion[3320322]["RewardItem"][4]["Attr"] = "0 3" -- 10MeteorScrolls(B)Pack*3
	tRaytRaytheonEquipmentPromotion[3320322]["RewardEffect"] = {}
	tRaytRaytheonEquipmentPromotion[3320322]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRaytRaytheonEquipmentPromotion[3320322]["RewardEffect"]["Effect"] = "angelwing"


	-- 极品+8赠品雷神战斧礼包,3320323
	tRaytRaytheonEquipmentPromotion[3320323] = {}
	tRaytRaytheonEquipmentPromotion[3320323]["LogId"] = 12001316
	tRaytRaytheonEquipmentPromotion[3320323]["DeleteItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320323]["DeleteItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320323]["DeleteItem"][1]["Id"] = 3320323 -- 【库】Super+8Flashaxe(B)Pack[属性:9]
	tRaytRaytheonEquipmentPromotion[3320323]["RewardItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320323]["RewardItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320323]["RewardItem"][1]["Id"] = 680029 -- 【库】ShadowFlashaxe[属性:0]【表格】极品15凛风战斧
	tRaytRaytheonEquipmentPromotion[3320323]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 8 013 013" -- 2洞(加持+255)7%神佑(追加+8)ShadowFlashaxe(赠)*1
	tRaytRaytheonEquipmentPromotion[3320323]["RewardItem"][2] = {}
	tRaytRaytheonEquipmentPromotion[3320323]["RewardItem"][2]["Id"] = 3320451 -- 【库】OptionalP7FlashaxeSoulPack[属性:9]【表格】雷神七阶战斧神魂可选包
	tRaytRaytheonEquipmentPromotion[3320323]["RewardItem"][2]["Attr"] = "0 1" -- OptionalP7FlashaxeSoulPack*1
	tRaytRaytheonEquipmentPromotion[3320323]["RewardItem"][3] = {}
	tRaytRaytheonEquipmentPromotion[3320323]["RewardItem"][3]["Id"] = 1088000 -- 【库】DragonBall[属性:0]【表格】龙珠
	tRaytRaytheonEquipmentPromotion[3320323]["RewardItem"][3]["Attr"] = "0 1 3" -- DragonBall(赠)*1
	tRaytRaytheonEquipmentPromotion[3320323]["RewardItem"][4] = {}
	tRaytRaytheonEquipmentPromotion[3320323]["RewardItem"][4]["Id"] = 3308948 -- 【库】10MeteorScrolls(B)Pack[属性:9]【表格】10流星卷(赠)礼包
	tRaytRaytheonEquipmentPromotion[3320323]["RewardItem"][4]["Attr"] = "0 3" -- 10MeteorScrolls(B)Pack*3
	tRaytRaytheonEquipmentPromotion[3320323]["RewardEffect"] = {}
	tRaytRaytheonEquipmentPromotion[3320323]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRaytRaytheonEquipmentPromotion[3320323]["RewardEffect"]["Effect"] = "angelwing"





-- 雷神六阶战锤神魂可选包
	tRaytRaytheonEquipmentPromotion[3320448] = {}
	-- 神锤·吞天,1
	tRaytRaytheonEquipmentPromotion[3320448][1] = {}
	tRaytRaytheonEquipmentPromotion[3320448][1]["LogId"] = 12001316
	tRaytRaytheonEquipmentPromotion[3320448][1]["DeleteItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320448][1]["DeleteItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320448][1]["DeleteItem"][1]["Id"] = 3320448 -- 【库】 1 【enzf库里没有该物品】[属性:]
	tRaytRaytheonEquipmentPromotion[3320448][1]["RewardItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320448][1]["RewardItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320448][1]["RewardItem"][1]["Id"] = 827006 -- 【库】 827006 【enzf库里没有该物品】[属性:]【表格】神锤·吞天
	tRaytRaytheonEquipmentPromotion[3320448][1]["RewardItem"][1]["Attr"] = "0 1 3" --  827006 【enzf库里没有该物品】(赠)*1
	tRaytRaytheonEquipmentPromotion[3320448][1]["RewardEffect"] = {}
	tRaytRaytheonEquipmentPromotion[3320448][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRaytRaytheonEquipmentPromotion[3320448][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 神锤·噬日,2
	tRaytRaytheonEquipmentPromotion[3320448][2] = {}
	tRaytRaytheonEquipmentPromotion[3320448][2]["LogId"] = 12001316
	tRaytRaytheonEquipmentPromotion[3320448][2]["DeleteItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320448][2]["DeleteItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320448][2]["DeleteItem"][1]["Id"] = 3320448 -- 【库】 2 【enzf库里没有该物品】[属性:]
	tRaytRaytheonEquipmentPromotion[3320448][2]["RewardItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320448][2]["RewardItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320448][2]["RewardItem"][1]["Id"] = 827008 -- 【库】 827008 【enzf库里没有该物品】[属性:]【表格】神锤·噬日
	tRaytRaytheonEquipmentPromotion[3320448][2]["RewardItem"][1]["Attr"] = "0 1 3" --  827008 【enzf库里没有该物品】(赠)*1
	tRaytRaytheonEquipmentPromotion[3320448][2]["RewardEffect"] = {}
	tRaytRaytheonEquipmentPromotion[3320448][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRaytRaytheonEquipmentPromotion[3320448][2]["RewardEffect"]["Effect"] = "angelwing"

-- 雷神六阶战斧神魂可选包
	tRaytRaytheonEquipmentPromotion[3320449] = {}
	-- 神斧·吞天,1
	tRaytRaytheonEquipmentPromotion[3320449][1] = {}
	tRaytRaytheonEquipmentPromotion[3320449][1]["LogId"] = 12001316
	tRaytRaytheonEquipmentPromotion[3320449][1]["DeleteItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320449][1]["DeleteItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320449][1]["DeleteItem"][1]["Id"] = 3320449 -- 【库】 1 【enzf库里没有该物品】[属性:]
	tRaytRaytheonEquipmentPromotion[3320449][1]["RewardItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320449][1]["RewardItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320449][1]["RewardItem"][1]["Id"] = 827007 -- 【库】 827007 【enzf库里没有该物品】[属性:]【表格】神斧·吞天
	tRaytRaytheonEquipmentPromotion[3320449][1]["RewardItem"][1]["Attr"] = "0 1 3" --  827007 【enzf库里没有该物品】(赠)*1
	tRaytRaytheonEquipmentPromotion[3320449][1]["RewardEffect"] = {}
	tRaytRaytheonEquipmentPromotion[3320449][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRaytRaytheonEquipmentPromotion[3320449][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 神斧·噬日,2
	tRaytRaytheonEquipmentPromotion[3320449][2] = {}
	tRaytRaytheonEquipmentPromotion[3320449][2]["LogId"] = 12001316
	tRaytRaytheonEquipmentPromotion[3320449][2]["DeleteItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320449][2]["DeleteItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320449][2]["DeleteItem"][1]["Id"] = 3320449 -- 【库】 2 【enzf库里没有该物品】[属性:]
	tRaytRaytheonEquipmentPromotion[3320449][2]["RewardItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320449][2]["RewardItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320449][2]["RewardItem"][1]["Id"] = 827009 -- 【库】 827009 【enzf库里没有该物品】[属性:]【表格】神斧·噬日
	tRaytRaytheonEquipmentPromotion[3320449][2]["RewardItem"][1]["Attr"] = "0 1 3" --  827009 【enzf库里没有该物品】(赠)*1
	tRaytRaytheonEquipmentPromotion[3320449][2]["RewardEffect"] = {}
	tRaytRaytheonEquipmentPromotion[3320449][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRaytRaytheonEquipmentPromotion[3320449][2]["RewardEffect"]["Effect"] = "angelwing"

-- 雷神七阶战锤神魂可选包
	tRaytRaytheonEquipmentPromotion[3320450] = {}
	-- 圣锤·震环宇,1
	tRaytRaytheonEquipmentPromotion[3320450][1] = {}
	tRaytRaytheonEquipmentPromotion[3320450][1]["LogId"] = 12001316
	tRaytRaytheonEquipmentPromotion[3320450][1]["DeleteItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320450][1]["DeleteItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320450][1]["DeleteItem"][1]["Id"] = 3320450 -- 【库】 1 【enzf库里没有该物品】[属性:]
	tRaytRaytheonEquipmentPromotion[3320450][1]["RewardItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320450][1]["RewardItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320450][1]["RewardItem"][1]["Id"] = 827010 -- 【库】 827010 【enzf库里没有该物品】[属性:]【表格】圣锤·震环宇
	tRaytRaytheonEquipmentPromotion[3320450][1]["RewardItem"][1]["Attr"] = "0 1 3" --  827010 【enzf库里没有该物品】(赠)*1
	tRaytRaytheonEquipmentPromotion[3320450][1]["RewardEffect"] = {}
	tRaytRaytheonEquipmentPromotion[3320450][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRaytRaytheonEquipmentPromotion[3320450][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 圣锤·裂虚空,2
	tRaytRaytheonEquipmentPromotion[3320450][2] = {}
	tRaytRaytheonEquipmentPromotion[3320450][2]["LogId"] = 12001316
	tRaytRaytheonEquipmentPromotion[3320450][2]["DeleteItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320450][2]["DeleteItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320450][2]["DeleteItem"][1]["Id"] = 3320450 -- 【库】 2 【enzf库里没有该物品】[属性:]
	tRaytRaytheonEquipmentPromotion[3320450][2]["RewardItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320450][2]["RewardItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320450][2]["RewardItem"][1]["Id"] = 827012 -- 【库】 827012 【enzf库里没有该物品】[属性:]【表格】圣锤·裂虚空
	tRaytRaytheonEquipmentPromotion[3320450][2]["RewardItem"][1]["Attr"] = "0 1 3" --  827012 【enzf库里没有该物品】(赠)*1
	tRaytRaytheonEquipmentPromotion[3320450][2]["RewardEffect"] = {}
	tRaytRaytheonEquipmentPromotion[3320450][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRaytRaytheonEquipmentPromotion[3320450][2]["RewardEffect"]["Effect"] = "angelwing"

-- 雷神七阶战斧神魂可选包
	tRaytRaytheonEquipmentPromotion[3320451] = {}
	-- 圣斧·震环宇,1
	tRaytRaytheonEquipmentPromotion[3320451][1] = {}
	tRaytRaytheonEquipmentPromotion[3320451][1]["LogId"] = 12001316
	tRaytRaytheonEquipmentPromotion[3320451][1]["DeleteItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320451][1]["DeleteItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320451][1]["DeleteItem"][1]["Id"] = 3320451 -- 【库】 1 【enzf库里没有该物品】[属性:]
	tRaytRaytheonEquipmentPromotion[3320451][1]["RewardItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320451][1]["RewardItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320451][1]["RewardItem"][1]["Id"] = 827011 -- 【库】 827011 【enzf库里没有该物品】[属性:]【表格】圣斧·震环宇
	tRaytRaytheonEquipmentPromotion[3320451][1]["RewardItem"][1]["Attr"] = "0 1 3" --  827011 【enzf库里没有该物品】(赠)*1
	tRaytRaytheonEquipmentPromotion[3320451][1]["RewardEffect"] = {}
	tRaytRaytheonEquipmentPromotion[3320451][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRaytRaytheonEquipmentPromotion[3320451][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 圣斧·裂虚空,2
	tRaytRaytheonEquipmentPromotion[3320451][2] = {}
	tRaytRaytheonEquipmentPromotion[3320451][2]["LogId"] = 12001316
	tRaytRaytheonEquipmentPromotion[3320451][2]["DeleteItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320451][2]["DeleteItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320451][2]["DeleteItem"][1]["Id"] = 3320451 -- 【库】 2 【enzf库里没有该物品】[属性:]
	tRaytRaytheonEquipmentPromotion[3320451][2]["RewardItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320451][2]["RewardItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320451][2]["RewardItem"][1]["Id"] = 827013 -- 【库】 827013 【enzf库里没有该物品】[属性:]【表格】圣斧·裂虚空
	tRaytRaytheonEquipmentPromotion[3320451][2]["RewardItem"][1]["Attr"] = "0 1 3" --  827013 【enzf库里没有该物品】(赠)*1
	tRaytRaytheonEquipmentPromotion[3320451][2]["RewardEffect"] = {}
	tRaytRaytheonEquipmentPromotion[3320451][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRaytRaytheonEquipmentPromotion[3320451][2]["RewardEffect"]["Effect"] = "angelwing"


-- 七阶头部神魂可选包
	tRaytRaytheonEquipmentPromotion[3320452] = {}
	-- 斩日魔冠,1
	tRaytRaytheonEquipmentPromotion[3320452][1] = {}
	tRaytRaytheonEquipmentPromotion[3320452][1]["LogId"] = 12001316
	tRaytRaytheonEquipmentPromotion[3320452][1]["DeleteItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320452][1]["DeleteItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320452][1]["DeleteItem"][1]["Id"] = 3320452 -- 【库】 1 【enzf库里没有该物品】[属性:]
	tRaytRaytheonEquipmentPromotion[3320452][1]["RewardItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320452][1]["RewardItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320452][1]["RewardItem"][1]["Id"] = 820074 -- 【库】SunHeadgear[属性:0]【表格】斩日魔冠
	tRaytRaytheonEquipmentPromotion[3320452][1]["RewardItem"][1]["Attr"] = "0 1 3" -- SunHeadgear(赠)*1
	tRaytRaytheonEquipmentPromotion[3320452][1]["RewardEffect"] = {}
	tRaytRaytheonEquipmentPromotion[3320452][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRaytRaytheonEquipmentPromotion[3320452][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 摧月魔冠,2
	tRaytRaytheonEquipmentPromotion[3320452][2] = {}
	tRaytRaytheonEquipmentPromotion[3320452][2]["LogId"] = 12001316
	tRaytRaytheonEquipmentPromotion[3320452][2]["DeleteItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320452][2]["DeleteItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320452][2]["DeleteItem"][1]["Id"] = 3320452 -- 【库】 2 【enzf库里没有该物品】[属性:]
	tRaytRaytheonEquipmentPromotion[3320452][2]["RewardItem"] = {}
	tRaytRaytheonEquipmentPromotion[3320452][2]["RewardItem"][1] = {}
	tRaytRaytheonEquipmentPromotion[3320452][2]["RewardItem"][1]["Id"] = 820073 -- 【库】MoonHeadgear[属性:0]【表格】摧月魔冠
	tRaytRaytheonEquipmentPromotion[3320452][2]["RewardItem"][1]["Attr"] = "0 1 3" -- MoonHeadgear(赠)*1
	tRaytRaytheonEquipmentPromotion[3320452][2]["RewardEffect"] = {}
	tRaytRaytheonEquipmentPromotion[3320452][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRaytRaytheonEquipmentPromotion[3320452][2]["RewardEffect"]["Effect"] = "angelwing"








----------------------------------------------逻辑
--打开天石商店
function RaytheonEquipmentPromotion_OpenShop(nNpcId)
	if CommonFunc_GetBeforeActivityTime(tActivityTime["RaytheonEquipmentPromotion"]["ActivityTime"]) then 
		-- LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	if CommonFunc_GetAfterActivityTime(tActivityTime["RaytheonEquipmentPromotion"]["ActivityTime"]) then 
		-- LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	User_OpenDialog(0,nNpcId)
end

--可选包使用逻辑
function RaytheonEquipmentPromotion_ChoiceOpenPack(nItemId,nNum)
	local nCount = 1
	if not Item_ChkMulItem(nItemId,nItemId,nCount) then
		return
	end 
	RewardTemplate_UseItemAndMsg(tRaytRaytheonEquipmentPromotion[nItemId][nNum])
end 







------------------------------------------------物品逻辑
--雷神六阶战锤神魂可选包
tItemFace[3320448] = 1448
tItem[3320448] = tItem[3320448] or {}
tItem[3320448]["DialogueText"] = tRaytheonEquipmentPromotion_Text[3320448]
tItem[3320448]["Text1-1"] = {111}
tItem[3320448]["tOption1-1"] = {111,112,113}
tItem[3320448]["OptionFunc111"] = "RaytheonEquipmentPromotion_ChoiceOpenPack</N>3320448</N>1"
tItem[3320448]["OptionFunc112"] = "RaytheonEquipmentPromotion_ChoiceOpenPack</N>3320448</N>2"

--雷神六阶战斧神魂可选包
tItemFace[3320449] = 1448
tItem[3320449] = tItem[3320449] or {}
tItem[3320449]["DialogueText"] = tRaytheonEquipmentPromotion_Text[3320449]
tItem[3320449]["Text1-1"] = {111}
tItem[3320449]["tOption1-1"] = {111,112,113}
tItem[3320449]["OptionFunc111"] = "RaytheonEquipmentPromotion_ChoiceOpenPack</N>3320449</N>1"
tItem[3320449]["OptionFunc112"] = "RaytheonEquipmentPromotion_ChoiceOpenPack</N>3320449</N>2"

--雷神七阶战锤神魂可选包
tItemFace[3320450] = 1448
tItem[3320450] = tItem[3320450] or {}
tItem[3320450]["DialogueText"] = tRaytheonEquipmentPromotion_Text[3320450]
tItem[3320450]["Text1-1"] = {111}
tItem[3320450]["tOption1-1"] = {111,112,113}
tItem[3320450]["OptionFunc111"] = "RaytheonEquipmentPromotion_ChoiceOpenPack</N>3320450</N>1"
tItem[3320450]["OptionFunc112"] = "RaytheonEquipmentPromotion_ChoiceOpenPack</N>3320450</N>2"

--雷神七阶战斧神魂可选包
tItemFace[3320451] = 1448
tItem[3320451] = tItem[3320451] or {}
tItem[3320451]["DialogueText"] = tRaytheonEquipmentPromotion_Text[3320451]
tItem[3320451]["Text1-1"] = {111}
tItem[3320451]["tOption1-1"] = {111,112,113}
tItem[3320451]["OptionFunc111"] = "RaytheonEquipmentPromotion_ChoiceOpenPack</N>3320451</N>1"
tItem[3320451]["OptionFunc112"] = "RaytheonEquipmentPromotion_ChoiceOpenPack</N>3320451</N>2"

--七阶头部神魂可选包
tItemFace[3320452] = 1448
tItem[3320452] = tItem[3320452] or {}
tItem[3320452]["DialogueText"] = tRaytheonEquipmentPromotion_Text[3320452]
tItem[3320452]["Text1-1"] = {111}
tItem[3320452]["tOption1-1"] = {111,112,113}
tItem[3320452]["OptionFunc111"] = "RaytheonEquipmentPromotion_ChoiceOpenPack</N>3320452</N>1"
tItem[3320452]["OptionFunc112"] = "RaytheonEquipmentPromotion_ChoiceOpenPack</N>3320452</N>2"



tItem[3320308] = tItem[3320308] or {}
tItem[3320308]["Function"] = function(nItemId,sItemName)
	-- RewardTemplate_UseItemAndMsg(tRaytRaytheonEquipmentPromotion[nItemId])
	RewardTemplate_UseItemAndMsg(tRaytRaytheonEquipmentPromotion[nItemId])
end
tItem[3320309] = tItem[3320308] or {}
tItem[3320310] = tItem[3320308] or {}
tItem[3320311] = tItem[3320308] or {}
tItem[3320312] = tItem[3320308] or {}
tItem[3320313] = tItem[3320308] or {}
tItem[3320314] = tItem[3320308] or {}
tItem[3320315] = tItem[3320308] or {}
tItem[3320316] = tItem[3320308] or {}
tItem[3320317] = tItem[3320308] or {}
tItem[3320318] = tItem[3320308] or {}
tItem[3320319] = tItem[3320308] or {}
tItem[3320320] = tItem[3320308] or {}
tItem[3320321] = tItem[3320308] or {}
tItem[3320322] = tItem[3320308] or {}
tItem[3320323] = tItem[3320308] or {}

