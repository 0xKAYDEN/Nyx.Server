------------------------------------------------------------------------------------
--Name：            190612[英文征服][活动脚本]首充礼包优化（7.2-长期）
--Creator:      林嘉鑫
--Created:     2019-06-12
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tFirstRechargePackage_Pack = {}
	-- ===良品龙恨宝石*2包
	-- ===索引: tFirstRechargePackage_Pack[3322056]
	-- ===删除: 3322056,1
	tFirstRechargePackage_Pack[3322056] = {}
	tFirstRechargePackage_Pack[3322056]["LogId"] = 12001464
	tFirstRechargePackage_Pack[3322056]["DeleteItem"] = {}
	tFirstRechargePackage_Pack[3322056]["DeleteItem"][1] = {}
	tFirstRechargePackage_Pack[3322056]["DeleteItem"][1]["Id"] = 3322056 -- 【库】DragonGemPack(2)[属性:9]
	tFirstRechargePackage_Pack[3322056]["RewardItem"] = {}
	tFirstRechargePackage_Pack[3322056]["RewardItem"][1] = {}
	tFirstRechargePackage_Pack[3322056]["RewardItem"][1]["Id"] = 700012 -- 【库】DragonGem[属性:0], 【表格】良品龙恨宝石
	tFirstRechargePackage_Pack[3322056]["RewardItem"][1]["Attr"] = "0 2 3" -- DragonGem（赠）*2
	tFirstRechargePackage_Pack[3322056]["RewardNoNeedTip"] = 1
	tFirstRechargePackage_Pack[3322056]["RewardEffect"] = {}
	tFirstRechargePackage_Pack[3322056]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFirstRechargePackage_Pack[3322056]["RewardEffect"]["Effect"] = "angelwing"


	tFirstRechargePackage_Pack[3322057] = {}
	-- ===炫舞者修行包
	-- ===索引: tFirstRechargePackage_Pack[3322057]
	-- ===删除: 3322057,1
	tFirstRechargePackage_Pack[3322057]["LogId"] = 12001464
	tFirstRechargePackage_Pack[3322057]["EmoneyLog"] = "350	22251	0	0	1	"
	tFirstRechargePackage_Pack[3322057]["DeleteItem"] = {}
	tFirstRechargePackage_Pack[3322057]["DeleteItem"][1] = {}
	tFirstRechargePackage_Pack[3322057]["DeleteItem"][1]["Id"] = 3322057 -- 【库】PerformerStudyPack[属性:9]
	tFirstRechargePackage_Pack[3322057]["RewardCultivation"] = {}
	tFirstRechargePackage_Pack[3322057]["RewardCultivation"]["Value"] = 5000 -- 修行值, 【需求】5000修行值
	tFirstRechargePackage_Pack[3322057]["RewardItem"] = {}
	tFirstRechargePackage_Pack[3322057]["RewardItem"][1] = {}
	tFirstRechargePackage_Pack[3322057]["RewardItem"][1]["Id"] = 711679 -- 【库】PerformerCard[属性:0], 【表格】炫舞者就职公文
	tFirstRechargePackage_Pack[3322057]["RewardItem"][1]["Attr"] = "0 1 3" -- PerformerCard（赠）*1
	tFirstRechargePackage_Pack[3322057]["RewardNoNeedTip"] = 1
	tFirstRechargePackage_Pack[3322057]["RewardEffect"] = {}
	tFirstRechargePackage_Pack[3322057]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFirstRechargePackage_Pack[3322057]["RewardEffect"]["Effect"] = "angelwing"


	tFirstRechargePackage_Pack[3322058] = {}
	-- ===30天福星天降时装外套包
	-- ===索引: tFirstRechargePackage_Pack[3322058]
	-- ===删除: 3322058,1
	tFirstRechargePackage_Pack[3322058]["LogId"] = 12001464
	tFirstRechargePackage_Pack[3322058]["DeleteItem"] = {}
	tFirstRechargePackage_Pack[3322058]["DeleteItem"][1] = {}
	tFirstRechargePackage_Pack[3322058]["DeleteItem"][1]["Id"] = 3322058 -- 【库】30-dayBlessedStarGarmentPack[属性:9]
	tFirstRechargePackage_Pack[3322058]["RewardItem"] = {}
	tFirstRechargePackage_Pack[3322058]["RewardItem"][1] = {}
	tFirstRechargePackage_Pack[3322058]["RewardItem"][1]["Id"] = 195065 -- 【库】BlessedStar[属性:0], 【表格】30天神佑%1福星天降人物外套*1
	tFirstRechargePackage_Pack[3322058]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑BlessedStar（赠）*1
	tFirstRechargePackage_Pack[3322058]["RewardNoNeedTip"] = 1
	tFirstRechargePackage_Pack[3322058]["RewardEffect"] = {}
	tFirstRechargePackage_Pack[3322058]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFirstRechargePackage_Pack[3322058]["RewardEffect"]["Effect"] = "angelwing"


	tFirstRechargePackage_Pack[3322059] = {}
	-- ===百炼天机果*3包
	-- ===索引: tFirstRechargePackage_Pack[3322059]
	-- ===删除: 3322059,1
	tFirstRechargePackage_Pack[3322059]["LogId"] = 12001464
	tFirstRechargePackage_Pack[3322059]["DeleteItem"] = {}
	tFirstRechargePackage_Pack[3322059]["DeleteItem"][1] = {}
	tFirstRechargePackage_Pack[3322059]["DeleteItem"][1]["Id"] = 3322059 -- 【库】MysteryFruitPack(3)[属性:9]
	tFirstRechargePackage_Pack[3322059]["RewardItem"] = {}
	tFirstRechargePackage_Pack[3322059]["RewardItem"][1] = {}
	tFirstRechargePackage_Pack[3322059]["RewardItem"][1]["Id"] = 3001044 -- 【库】MysteryFruit[属性:9], 【表格】天机果*3
	tFirstRechargePackage_Pack[3322059]["RewardItem"][1]["Attr"] = "0 3" -- MysteryFruit*3
	tFirstRechargePackage_Pack[3322059]["RewardNoNeedTip"] = 1
	tFirstRechargePackage_Pack[3322059]["RewardEffect"] = {}
	tFirstRechargePackage_Pack[3322059]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFirstRechargePackage_Pack[3322059]["RewardEffect"]["Effect"] = "angelwing"


	tFirstRechargePackage_Pack[3322060] = {}
	-- ===30天酒仙熊猫坐骑外套包
	-- ===索引: tFirstRechargePackage_Pack[3322060]
	-- ===删除: 3322060,1
	tFirstRechargePackage_Pack[3322060]["LogId"] = 12001464
	tFirstRechargePackage_Pack[3322060]["DeleteItem"] = {}
	tFirstRechargePackage_Pack[3322060]["DeleteItem"][1] = {}
	tFirstRechargePackage_Pack[3322060]["DeleteItem"][1]["Id"] = 3322060 -- 【库】30-dayWinebibberPandaPack[属性:9]
	tFirstRechargePackage_Pack[3322060]["RewardItem"] = {}
	tFirstRechargePackage_Pack[3322060]["RewardItem"][1] = {}
	tFirstRechargePackage_Pack[3322060]["RewardItem"][1]["Id"] = 200443 -- 【库】WinebibberPanda[属性:0], 【表格】30天神佑%1酒仙熊猫坐骑外套*1
	tFirstRechargePackage_Pack[3322060]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑WinebibberPanda（赠）*1
	tFirstRechargePackage_Pack[3322060]["RewardNoNeedTip"] = 1
	tFirstRechargePackage_Pack[3322060]["RewardEffect"] = {}
	tFirstRechargePackage_Pack[3322060]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFirstRechargePackage_Pack[3322060]["RewardEffect"]["Effect"] = "angelwing"


	tFirstRechargePackage_Pack[3300379] = {}
	-- ===DragonBallPack（3）
	-- ===索引: tFirstRechargePackage_Pack[3300379]
	-- ===删除: 3300379,1
	tFirstRechargePackage_Pack[3300379]["LogId"] = 12001464
	tFirstRechargePackage_Pack[3300379]["DeleteItem"] = {}
	tFirstRechargePackage_Pack[3300379]["DeleteItem"][1] = {}
	tFirstRechargePackage_Pack[3300379]["DeleteItem"][1]["Id"] = 3300379 -- 【库】DragonBallPack(3)[属性:9]
	tFirstRechargePackage_Pack[3300379]["RewardItem"] = {}
	tFirstRechargePackage_Pack[3300379]["RewardItem"][1] = {}
	tFirstRechargePackage_Pack[3300379]["RewardItem"][1]["Id"] = 1088000 -- 【库】DragonBall[属性:0], 【表格】龙珠*3
	tFirstRechargePackage_Pack[3300379]["RewardItem"][1]["Attr"] = "0 3 3" -- DragonBall（赠）*3
	tFirstRechargePackage_Pack[3300379]["RewardNoNeedTip"] = 1
	tFirstRechargePackage_Pack[3300379]["RewardEffect"] = {}
	tFirstRechargePackage_Pack[3300379]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFirstRechargePackage_Pack[3300379]["RewardEffect"]["Effect"] = "angelwing"


	tFirstRechargePackage_Pack[3322164] = {}
	-- ===BigEXPBallPack(10)*2
	-- ===索引: tFirstRechargePackage_Pack[3322164]
	-- ===删除: 3322164,1
	tFirstRechargePackage_Pack[3322164]["LogId"] = 12001464
	tFirstRechargePackage_Pack[3322164]["DeleteItem"] = {}
	tFirstRechargePackage_Pack[3322164]["DeleteItem"][1] = {}
	tFirstRechargePackage_Pack[3322164]["DeleteItem"][1]["Id"] = 3322164 -- 【库】BigEXPBallPack(10)*2[属性:9]
	tFirstRechargePackage_Pack[3322164]["RewardItem"] = {}
	tFirstRechargePackage_Pack[3322164]["RewardItem"][1] = {}
	tFirstRechargePackage_Pack[3322164]["RewardItem"][1]["Id"] = 3300403 -- 【库】BigEXPBallPack(10)[属性:9], 【表格】BigEXPBallPack(10)*2
	tFirstRechargePackage_Pack[3322164]["RewardItem"][1]["Attr"] = "0 2" -- BigEXPBallPack(10)*2
	tFirstRechargePackage_Pack[3322164]["RewardNoNeedTip"] = 1
	tFirstRechargePackage_Pack[3322164]["RewardEffect"] = {}
	tFirstRechargePackage_Pack[3322164]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFirstRechargePackage_Pack[3322164]["RewardEffect"]["Effect"] = "angelwing"

----------------------------------逻辑部分---------------------------------------------


---------------------------------物品部分---------------------------------------------
--------物品无对白模板

tItem[3322056] = tItem[3322056] or {}
tItem[3322056]["Function"] = function(nItemId,sItemName)
	-- 物品检查
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tFirstRechargePackage_Pack[nItemId])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tFirstRechargePackage_Text["Msg"]["NoMoreSpace"],nSpace))
		return
	end
	local bFlag,sRewardStr = RewardTemplate_UseItem(tFirstRechargePackage_Pack[nItemId])
	Sys_MsgBox(string.format(tFirstRechargePackage_Text["Msg"]["Reward"],sRewardStr))
	User_TalkChannel2005(string.format(tFirstRechargePackage_Text["Msg"]["Reward"],sRewardStr))
end
tItem[3322057] = tItem[3322056]
tItem[3322058] = tItem[3322056]
tItem[3322059] = tItem[3322056]
tItem[3322060] = tItem[3322056]
tItem[3300379] = tItem[3322056]
tItem[3322164] = tItem[3322056]