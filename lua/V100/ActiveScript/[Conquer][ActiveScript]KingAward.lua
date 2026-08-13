------------------------------------------------------------------------------------
--Name：            190721[英文征服][活动脚本]王者服新增发奖ID（8.01）
--Creator:      耿力兀
--Created:     2019-07-21
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--前缀：KingAward_
--lua.ini:41410
--logid:12001527

----------------------------------表配置部分--------------------------------------------
local tKingAward_RewardItem = {}
	-- ===王者帮派专享包
	-- ===索引: tKingAward_RewardItem[3313318]
	-- ===删除: 3313318,1
	-- ===
	tKingAward_RewardItem[3313318] = {}
	tKingAward_RewardItem[3313318]["LogId"] = 12001527
	tKingAward_RewardItem[3313318]["DeleteItem"] = {}
	tKingAward_RewardItem[3313318]["DeleteItem"][1] = {}
	tKingAward_RewardItem[3313318]["DeleteItem"][1]["Id"] = 3313318 -- 【库】KingGuildPack[属性:9]
	tKingAward_RewardItem[3313318]["RewardItem"] = {}
	tKingAward_RewardItem[3313318]["RewardItem"][1] = {}
	tKingAward_RewardItem[3313318]["RewardItem"][1]["Id"] = 3313326 -- KingGuildTitleCertificate[3313326][属性:9][叠加:0][金币:0], 【表格】王者服帮派专属定制称号凭证
	tKingAward_RewardItem[3313318]["RewardItem"][1]["Attr"] = "0 1" -- KingGuildTitleCertificate*1
	tKingAward_RewardItem[3313318]["RewardItem"][2] = {}
	tKingAward_RewardItem[3313318]["RewardItem"][2]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】神纹源晶（赠）*10
	tKingAward_RewardItem[3313318]["RewardItem"][2]["Attr"] = "0 10 3" -- RuneCrystal（赠）*10
	tKingAward_RewardItem[3313318]["RewardItem"][3] = {}
	tKingAward_RewardItem[3313318]["RewardItem"][3]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:99][金币:0], 【表格】人参果*10
	tKingAward_RewardItem[3313318]["RewardItem"][3]["Attr"] = "0 10" -- GinsengFruit*10
	tKingAward_RewardItem[3313318]["RewardEffect"] = {}
	tKingAward_RewardItem[3313318]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingAward_RewardItem[3313318]["RewardEffect"]["Effect"] = "angelwing"


	tKingAward_RewardItem[3313319] = {}
	-- ===荣耀帮派专享包
	-- ===索引: tKingAward_RewardItem[3313319]
	-- ===删除: 3313319,1
	-- ===
	tKingAward_RewardItem[3313319]["LogId"] = 12001527
	tKingAward_RewardItem[3313319]["DeleteItem"] = {}
	tKingAward_RewardItem[3313319]["DeleteItem"][1] = {}
	tKingAward_RewardItem[3313319]["DeleteItem"][1]["Id"] = 3313319 -- 【库】HonourGuildPack[属性:9]
	tKingAward_RewardItem[3313319]["RewardItem"] = {}
	tKingAward_RewardItem[3313319]["RewardItem"][1] = {}
	tKingAward_RewardItem[3313319]["RewardItem"][1]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】神纹源晶（赠）*8
	tKingAward_RewardItem[3313319]["RewardItem"][1]["Attr"] = "0 8 3" -- RuneCrystal（赠）*8
	tKingAward_RewardItem[3313319]["RewardItem"][2] = {}
	tKingAward_RewardItem[3313319]["RewardItem"][2]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:99][金币:0], 【表格】人参果*8
	tKingAward_RewardItem[3313319]["RewardItem"][2]["Attr"] = "0 8" -- GinsengFruit*8
	tKingAward_RewardItem[3313319]["RewardEffect"] = {}
	tKingAward_RewardItem[3313319]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingAward_RewardItem[3313319]["RewardEffect"]["Effect"] = "angelwing"


	tKingAward_RewardItem[3313320] = {}
	-- ===英勇帮派专享包
	-- ===索引: tKingAward_RewardItem[3313320]
	-- ===删除: 3313320,1
	-- ===
	tKingAward_RewardItem[3313320]["LogId"] = 12001527
	tKingAward_RewardItem[3313320]["DeleteItem"] = {}
	tKingAward_RewardItem[3313320]["DeleteItem"][1] = {}
	tKingAward_RewardItem[3313320]["DeleteItem"][1]["Id"] = 3313320 -- 【库】ValiantGuildPack[属性:9]
	tKingAward_RewardItem[3313320]["RewardItem"] = {}
	tKingAward_RewardItem[3313320]["RewardItem"][1] = {}
	tKingAward_RewardItem[3313320]["RewardItem"][1]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】神纹源晶（赠）*5
	tKingAward_RewardItem[3313320]["RewardItem"][1]["Attr"] = "0 5 3" -- RuneCrystal（赠）*5
	tKingAward_RewardItem[3313320]["RewardItem"][2] = {}
	tKingAward_RewardItem[3313320]["RewardItem"][2]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:99][金币:0], 【表格】人参果*5
	tKingAward_RewardItem[3313320]["RewardItem"][2]["Attr"] = "0 5" -- GinsengFruit*5
	tKingAward_RewardItem[3313320]["RewardEffect"] = {}
	tKingAward_RewardItem[3313320]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingAward_RewardItem[3313320]["RewardEffect"]["Effect"] = "angelwing"


	tKingAward_RewardItem[3313321] = {}
	-- ===王者帮主尊享包
	-- ===索引: tKingAward_RewardItem[3313321]
	-- ===删除: 3313321,1
	-- ===
	tKingAward_RewardItem[3313321]["LogId"] = 12001527
	tKingAward_RewardItem[3313321]["DeleteItem"] = {}
	tKingAward_RewardItem[3313321]["DeleteItem"][1] = {}
	tKingAward_RewardItem[3313321]["DeleteItem"][1]["Id"] = 3313321 -- 【库】KingGuildLeaderPack[属性:9]
	tKingAward_RewardItem[3313321]["RewardItem"] = {}
	tKingAward_RewardItem[3313321]["RewardItem"][1] = {}
	tKingAward_RewardItem[3313321]["RewardItem"][1]["Id"] = 3313326 -- KingGuildTitleCertificate[3313326][属性:9][叠加:0][金币:0], 【表格】王者服帮派专属定制称号凭证
	tKingAward_RewardItem[3313321]["RewardItem"][1]["Attr"] = "0 1" -- KingGuildTitleCertificate*1
	tKingAward_RewardItem[3313321]["RewardItem"][2] = {}
	tKingAward_RewardItem[3313321]["RewardItem"][2]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】神纹源晶（赠）*10
	tKingAward_RewardItem[3313321]["RewardItem"][2]["Attr"] = "0 10 3" -- RuneCrystal（赠）*10
	tKingAward_RewardItem[3313321]["RewardItem"][3] = {}
	tKingAward_RewardItem[3313321]["RewardItem"][3]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:99][金币:0], 【表格】人参果*110
	tKingAward_RewardItem[3313321]["RewardItem"][3]["Attr"] = "0 110" -- GinsengFruit*110
	tKingAward_RewardItem[3313321]["RewardItem"][4] = {}
	tKingAward_RewardItem[3313321]["RewardItem"][4]["Id"] = 3311747 -- OptionalRareBlueRunePack[3311747][属性:8][叠加:10000][金币:0], 【表格】蓝色稀有神纹可选包*1
	tKingAward_RewardItem[3313321]["RewardItem"][4]["Attr"] = "0 1" -- OptionalRareBlueRunePack*1
	tKingAward_RewardItem[3313321]["RewardEffect"] = {}
	tKingAward_RewardItem[3313321]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingAward_RewardItem[3313321]["RewardEffect"]["Effect"] = "angelwing"


	tKingAward_RewardItem[3313322] = {}
	-- ===荣耀帮主尊享包
	-- ===索引: tKingAward_RewardItem[3313322]
	-- ===删除: 3313322,1
	-- ===
	tKingAward_RewardItem[3313322]["LogId"] = 12001527
	tKingAward_RewardItem[3313322]["DeleteItem"] = {}
	tKingAward_RewardItem[3313322]["DeleteItem"][1] = {}
	tKingAward_RewardItem[3313322]["DeleteItem"][1]["Id"] = 3313322 -- 【库】HonourGuildLeaderPack[属性:9]
	tKingAward_RewardItem[3313322]["RewardItem"] = {}
	tKingAward_RewardItem[3313322]["RewardItem"][1] = {}
	tKingAward_RewardItem[3313322]["RewardItem"][1]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】神纹源晶（赠）*28
	tKingAward_RewardItem[3313322]["RewardItem"][1]["Attr"] = "0 28 3" -- RuneCrystal（赠）*28
	tKingAward_RewardItem[3313322]["RewardItem"][2] = {}
	tKingAward_RewardItem[3313322]["RewardItem"][2]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:99][金币:0], 【表格】人参果*58
	tKingAward_RewardItem[3313322]["RewardItem"][2]["Attr"] = "0 58" -- GinsengFruit*58
	tKingAward_RewardItem[3313322]["RewardEffect"] = {}
	tKingAward_RewardItem[3313322]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingAward_RewardItem[3313322]["RewardEffect"]["Effect"] = "angelwing"


	tKingAward_RewardItem[3313323] = {}
	-- ===英勇帮主尊享包
	-- ===索引: tKingAward_RewardItem[3313323]
	-- ===删除: 3313323,1
	-- ===
	tKingAward_RewardItem[3313323]["LogId"] = 12001527
	tKingAward_RewardItem[3313323]["DeleteItem"] = {}
	tKingAward_RewardItem[3313323]["DeleteItem"][1] = {}
	tKingAward_RewardItem[3313323]["DeleteItem"][1]["Id"] = 3313323 -- 【库】ValiantGuildLeaderPack[属性:9]
	tKingAward_RewardItem[3313323]["RewardItem"] = {}
	tKingAward_RewardItem[3313323]["RewardItem"][1] = {}
	tKingAward_RewardItem[3313323]["RewardItem"][1]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】神纹源晶（赠）*15
	tKingAward_RewardItem[3313323]["RewardItem"][1]["Attr"] = "0 15 3" -- RuneCrystal（赠）*15
	tKingAward_RewardItem[3313323]["RewardItem"][2] = {}
	tKingAward_RewardItem[3313323]["RewardItem"][2]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:99][金币:0], 【表格】人参果*35
	tKingAward_RewardItem[3313323]["RewardItem"][2]["Attr"] = "0 35" -- GinsengFruit*35
	tKingAward_RewardItem[3313323]["RewardEffect"] = {}
	tKingAward_RewardItem[3313323]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingAward_RewardItem[3313323]["RewardEffect"]["Effect"] = "angelwing"


	tKingAward_RewardItem[3313324] = {}
	-- ===90天我最美称号包
	-- ===索引: tKingAward_RewardItem[3313324]
	-- ===删除: 3313324,1
	-- ===
	tKingAward_RewardItem[3313324]["LogId"] = 12001527
	tKingAward_RewardItem[3313324]["DeleteItem"] = {}
	tKingAward_RewardItem[3313324]["DeleteItem"][1] = {}
	tKingAward_RewardItem[3313324]["DeleteItem"][1]["Id"] = 3313324 -- 【库】90-dayMostRadiantTitlePack[属性:9]
	tKingAward_RewardItem[3313324]["RewardTitle"] = {}
	tKingAward_RewardItem[3313324]["RewardTitle"]["TitleType"] = 2044 -- 【库】MostRadiant, 【表格】90天我最美称号
	tKingAward_RewardItem[3313324]["RewardTitle"]["TitleId"] = 2044
	tKingAward_RewardItem[3313324]["RewardTitle"]["SaveTime"] = 129600 -- 90天时效的[称号]:MostRadiant, 【需求】90天我最美称号
	tKingAward_RewardItem[3313324]["RewardEffect"] = {}
	tKingAward_RewardItem[3313324]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingAward_RewardItem[3313324]["RewardEffect"]["Effect"] = "angelwing"


	tKingAward_RewardItem[3313325] = {}
	-- ===90天我最帅称号包
	-- ===索引: tKingAward_RewardItem[3313325]
	-- ===删除: 3313325,1
	-- ===
	tKingAward_RewardItem[3313325]["LogId"] = 12001527
	tKingAward_RewardItem[3313325]["DeleteItem"] = {}
	tKingAward_RewardItem[3313325]["DeleteItem"][1] = {}
	tKingAward_RewardItem[3313325]["DeleteItem"][1]["Id"] = 3313325 -- 【库】90-dayMostAttractiveTitlePack[属性:9]
	tKingAward_RewardItem[3313325]["RewardTitle"] = {}
	tKingAward_RewardItem[3313325]["RewardTitle"]["TitleType"] = 2045 -- 【库】MostAttractive, 【表格】90天我最帅称号
	tKingAward_RewardItem[3313325]["RewardTitle"]["TitleId"] = 2045
	tKingAward_RewardItem[3313325]["RewardTitle"]["SaveTime"] = 129600 -- 90天时效的[称号]:MostAttractive, 【需求】90天我最帅称号
	tKingAward_RewardItem[3313325]["RewardEffect"] = {}
	tKingAward_RewardItem[3313325]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tKingAward_RewardItem[3313325]["RewardEffect"]["Effect"] = "angelwing"





---------------------------------物品部分---------------------------------------------
--------物品无对白模板

tItem[3313318] = tItem[3313318] or {}
tItem[3313318]["Function"] = function(nItemId)
	RewardTemplate_UseItem(tKingAward_RewardItem[nItemId])
end

tItem[3313319] = tItem[3313318] or {}
tItem[3313320] = tItem[3313318] or {}
tItem[3313321] = tItem[3313318] or {}
tItem[3313322] = tItem[3313318] or {}
tItem[3313323] = tItem[3313318] or {}
tItem[3313324] = tItem[3313318] or {}
tItem[3313325] = tItem[3313318] or {}

tItemFace[3313326] = 2433
tItem[3313326] = tItem[3313326] or {}
tItem[3313326]["Text1-1"] = {111}
tItem[3313326]["Text111"] =tKingAward_Text[3313326]["Text111"]
tItem[3313326]["tOption1-1"] = {1}
tItem[3313326]["Option1"] = tKingAward_Text[3313326]["Option1"]

