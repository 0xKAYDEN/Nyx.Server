------------------------------------------------------------------------------------
--Name：            170918[英文征服][活动脚本]新服预约礼包及发奖action制作
--Creator:      王贤
--Created:     2017/09/18
------------------------------------------------------------------------------------
--任务需求：
-- 请安排制作新服预约礼包和礼包发奖action，用于线下页面发奖到线上，制作3个礼包和礼包的发奖action，具体需求在附件中。如有问题，请及时沟通，谢谢！

-- 活动9月29日开始，需提前几天更新安排测试，请安排尽早制作完成以供线下页面程序使用。
------------------------------------------------------------------------------------
-- 前缀
-- NewServerOrderGift_
-- logid： 12000873

----------------------------------表配置部分--------------------------------------------
local tNewServerOrderGift_Data = {}
-- 礼包价格
tNewServerOrderGift_Data["EMoney"] = {}
tNewServerOrderGift_Data["EMoney"][3305453] = 3999
tNewServerOrderGift_Data["EMoney"][3305454] = 9999

-- 装备ID
tNewServerOrderGift_Data["ItemId"] = {}
-- 勇士
tNewServerOrderGift_Data["ItemId"][1] = {}
tNewServerOrderGift_Data["ItemId"][1][1] = 410029  --修罗刀
tNewServerOrderGift_Data["ItemId"][1][2] = 420029  --青冥剑
tNewServerOrderGift_Data["ItemId"][1][3] = 118009  --护首铁
tNewServerOrderGift_Data["ItemId"][1][4] = 130009  --皮护甲
-- 战士
tNewServerOrderGift_Data["ItemId"][2] = {}
tNewServerOrderGift_Data["ItemId"][2][1] = 624029  --苍之怒焰
tNewServerOrderGift_Data["ItemId"][2][2] = 624029  --苍之怒焰
tNewServerOrderGift_Data["ItemId"][2][3] = 111009  --浑铁盔
tNewServerOrderGift_Data["ItemId"][2][4] = 131009  --牛皮铠
-- 射手
tNewServerOrderGift_Data["ItemId"][3] = {}
tNewServerOrderGift_Data["ItemId"][3][1] = 613019  --狼牙飞刀
tNewServerOrderGift_Data["ItemId"][3][2] = 613019  --狼牙飞刀
tNewServerOrderGift_Data["ItemId"][3][3] = 142009  --夷情之羽
tNewServerOrderGift_Data["ItemId"][3][4] = 133009  --鹿皮猎褂
-- 忍者
tNewServerOrderGift_Data["ItemId"][4] = {}
tNewServerOrderGift_Data["ItemId"][4][1] = 601029  --精钢切
tNewServerOrderGift_Data["ItemId"][4][2] = 601029  --精钢切
tNewServerOrderGift_Data["ItemId"][4][3] = 123009  --蓝布护额
tNewServerOrderGift_Data["ItemId"][4][4] = 135009  --下忍服
-- 武僧
tNewServerOrderGift_Data["ItemId"][5] = {}
tNewServerOrderGift_Data["ItemId"][5][1] = 610029  --金蝉念珠
tNewServerOrderGift_Data["ItemId"][5][2] = 610029  --金蝉念珠
tNewServerOrderGift_Data["ItemId"][5][3] = 143009  --黄铜法箍
tNewServerOrderGift_Data["ItemId"][5][4] = 136009  --粗葛布袍
-- 海盗
tNewServerOrderGift_Data["ItemId"][6] = {}
tNewServerOrderGift_Data["ItemId"][6][1] = 612029  --中级火枪
tNewServerOrderGift_Data["ItemId"][6][2] = 611029  --勇者佩剑
tNewServerOrderGift_Data["ItemId"][6][3] = 144009  --巡海者头饰
tNewServerOrderGift_Data["ItemId"][6][4] = 139009  --淘浪裳
-- 拳师
tNewServerOrderGift_Data["ItemId"][7] = {}
tNewServerOrderGift_Data["ItemId"][7][1] = 617029  --枣木双截棍
tNewServerOrderGift_Data["ItemId"][7][2] = 617029  --枣木双截棍
tNewServerOrderGift_Data["ItemId"][7][3] = 148009  --棉麻头巾
tNewServerOrderGift_Data["ItemId"][7][4] = 138009  --连身战衣
-- 道士
tNewServerOrderGift_Data["ItemId"][8] = {}
tNewServerOrderGift_Data["ItemId"][8][1] = 619029  --御龙
tNewServerOrderGift_Data["ItemId"][8][2] = 421029  --祛邪剑
tNewServerOrderGift_Data["ItemId"][8][3] = 114009  --阴阳冠
tNewServerOrderGift_Data["ItemId"][8][4] = 134009  --混元道袍
-- 铁扇门
tNewServerOrderGift_Data["ItemId"][9] = {}
tNewServerOrderGift_Data["ItemId"][9][1] = 626029  --傲雪凌霜扇
tNewServerOrderGift_Data["ItemId"][9][2] = 626029  --傲雪凌霜扇
tNewServerOrderGift_Data["ItemId"][9][3] = 170009  --墨云冠
tNewServerOrderGift_Data["ItemId"][9][4] = 101009  --玄素袍

-- 装备礼包ID
tNewServerOrderGift_Data["PackageId"] = {}
tNewServerOrderGift_Data["PackageId"][1] = 3305453
tNewServerOrderGift_Data["PackageId"][2] = 3305454

local tNewServerOrderGift_RewardPackage = {}
-- 极品装备包（赠）
tNewServerOrderGift_RewardPackage[3305453] = {}
tNewServerOrderGift_RewardPackage[3305453][1] = {}
tNewServerOrderGift_RewardPackage[3305453][1]["DeleteItem"] = {}
tNewServerOrderGift_RewardPackage[3305453][1]["DeleteItem"][1] = {}
tNewServerOrderGift_RewardPackage[3305453][1]["DeleteItem"][1]["Id"] = 3305453
tNewServerOrderGift_RewardPackage[3305453][1]["RewardItem"] = {}
tNewServerOrderGift_RewardPackage[3305453][1]["RewardItem"][1] = {}
tNewServerOrderGift_RewardPackage[3305453][1]["RewardItem"][1]["Id"] = 0
tNewServerOrderGift_RewardPackage[3305453][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 0 0 6"
tNewServerOrderGift_RewardPackage[3305453][1]["RewardItem"][2] = {}
tNewServerOrderGift_RewardPackage[3305453][1]["RewardItem"][2]["Id"] = 0
tNewServerOrderGift_RewardPackage[3305453][1]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 5 0 0 6"
tNewServerOrderGift_RewardPackage[3305453][1]["RewardItem"][3] = {}
tNewServerOrderGift_RewardPackage[3305453][1]["RewardItem"][3]["Id"] = 0
tNewServerOrderGift_RewardPackage[3305453][1]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 5 0 0 6"
tNewServerOrderGift_RewardPackage[3305453][1]["RewardItem"][4] = {}
tNewServerOrderGift_RewardPackage[3305453][1]["RewardItem"][4]["Id"] = 0
tNewServerOrderGift_RewardPackage[3305453][1]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 5 0 0 6"
tNewServerOrderGift_RewardPackage[3305453][1]["LogId"] = 12000873
tNewServerOrderGift_RewardPackage[3305453][1]["EmoneyLog"] = "350	20769	3999	3999	1	"
tNewServerOrderGift_RewardPackage[3305453][1]["RewardEffect"] = {}
tNewServerOrderGift_RewardPackage[3305453][1]["RewardEffect"]["Effect"] = "zf2-e128"

-- 极品装备包
tNewServerOrderGift_RewardPackage[3305454] = {}
tNewServerOrderGift_RewardPackage[3305454][1] = {}
tNewServerOrderGift_RewardPackage[3305454][1]["DeleteItem"] = {}
tNewServerOrderGift_RewardPackage[3305454][1]["DeleteItem"][1] = {}
tNewServerOrderGift_RewardPackage[3305454][1]["DeleteItem"][1]["Id"] = 3305454
tNewServerOrderGift_RewardPackage[3305454][1]["RewardItem"] = {}
tNewServerOrderGift_RewardPackage[3305454][1]["RewardItem"][1] = {}
tNewServerOrderGift_RewardPackage[3305454][1]["RewardItem"][1]["Id"] = 0
tNewServerOrderGift_RewardPackage[3305454][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 0 0 6"
tNewServerOrderGift_RewardPackage[3305454][1]["RewardItem"][2] = {}
tNewServerOrderGift_RewardPackage[3305454][1]["RewardItem"][2]["Id"] = 0
tNewServerOrderGift_RewardPackage[3305454][1]["RewardItem"][2]["Attr"] = "0 1 0 0 0 0 0 5 0 0 6"
tNewServerOrderGift_RewardPackage[3305454][1]["RewardItem"][3] = {}
tNewServerOrderGift_RewardPackage[3305454][1]["RewardItem"][3]["Id"] = 0
tNewServerOrderGift_RewardPackage[3305454][1]["RewardItem"][3]["Attr"] = "0 1 0 0 0 0 0 5 0 0 6"
tNewServerOrderGift_RewardPackage[3305454][1]["RewardItem"][4] = {}
tNewServerOrderGift_RewardPackage[3305454][1]["RewardItem"][4]["Id"] = 0
tNewServerOrderGift_RewardPackage[3305454][1]["RewardItem"][4]["Attr"] = "0 1 0 0 0 0 0 5 0 0 6"
tNewServerOrderGift_RewardPackage[3305454][1]["LogId"] = 12000873
tNewServerOrderGift_RewardPackage[3305454][1]["EmoneyLog"] = "350	20770	9999	9999	1	"
tNewServerOrderGift_RewardPackage[3305454][1]["RewardEffect"] = {}
tNewServerOrderGift_RewardPackage[3305454][1]["RewardEffect"]["Effect"] = "zf2-e128"

----------------------------------逻辑部分---------------------------------------------
-- 判断天石跟背包空间是否满足
function NewServerOrderGift_Judge(nItemId)
	-- 判断天石是否满足
	local nEmoney = tNewServerOrderGift_Data["EMoney"][nItemId]
	local nUserEmoney = Get_UserEMoney()
	if nUserEmoney < nEmoney then
		User_TalkChannel2005(tNewServerOrderGift_Text["System"]["NoEmoney"])
		return true
	end
	
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tNewServerOrderGift_RewardPackage[nItemId][1]) then
		local nNeedSpace = RewardTemplate_GetRewardSpace(tNewServerOrderGift_RewardPackage[nItemId][1])
		local sNoSpace = string.format(tNewServerOrderGift_Text["System"]["NoSpace"], nNeedSpace)
		User_TalkChannel2005(sNoSpace)
		return true
	end
	
	return false
end

-- 使用极品装备包
-- 使用极品装备包（赠）
function NewServerOrderGift_UseEquippedPackage(nItemId, nProNum)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	tNewServerOrderGift_RewardPackage[nItemId][1]["RewardItem"][1]["Id"] = tNewServerOrderGift_Data["ItemId"][nProNum][1]
	tNewServerOrderGift_RewardPackage[nItemId][1]["RewardItem"][2]["Id"] = tNewServerOrderGift_Data["ItemId"][nProNum][2]
	tNewServerOrderGift_RewardPackage[nItemId][1]["RewardItem"][3]["Id"] = tNewServerOrderGift_Data["ItemId"][nProNum][3]
	tNewServerOrderGift_RewardPackage[nItemId][1]["RewardItem"][4]["Id"] = tNewServerOrderGift_Data["ItemId"][nProNum][4]
	if nProNum == 8 then
		if nItemId == tNewServerOrderGift_Data["PackageId"][1] then
			tNewServerOrderGift_RewardPackage[nItemId][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 6"
		elseif nItemId == tNewServerOrderGift_Data["PackageId"][2] then
			tNewServerOrderGift_RewardPackage[nItemId][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 0 0 0 6"
		end
	else
		if nItemId == tNewServerOrderGift_Data["PackageId"][1] then
			tNewServerOrderGift_RewardPackage[nItemId][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 5 0 0 6"
		elseif nItemId == tNewServerOrderGift_Data["PackageId"][2] then
			tNewServerOrderGift_RewardPackage[nItemId][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 5 0 0 6"
		end
	end
	
	if NewServerOrderGift_Judge(nItemId) then
		return
	end
	
	local nEmoney = tNewServerOrderGift_Data["EMoney"][nItemId]
	if User_AddEMoney(-nEmoney) then
		RewardTemplate_UseItem(tNewServerOrderGift_RewardPackage[nItemId][1])
	end
end

-- 购买物品接二次判断
function NewServerOrderGift_BuyEquippedJudge(nItemId, nProNum)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	local sText = string.format(tNewServerOrderGift_Text[nItemId]["Text211"], tNewServerOrderGift_Text["ProName"][nProNum])
	tItem[nItemId]["Text211"] = sText
	tItem[nItemId]["OptionFunc211"] = "NewServerOrderGift_UseEquippedPackage</N>" .. nItemId .. "</N>" .. nProNum
	
	LinkItemGossipFunc_New(nItemId, "2-1")
end

---------------------------------物品部分---------------------------------------------
-- 使用极品装备包（赠）
tItemFace[3305453] = 424
tItem[3305453] = tItem[3305453] or {}
tItem[3305453]["Text1-1"] = {111}
tItem[3305453]["Text111"] = tNewServerOrderGift_Text[3305453]["Text111"]
tItem[3305453]["tOption1-1"] = {111, 112, 113, 114, 115, 116}
tItem[3305453]["Option111"] = tNewServerOrderGift_Text[3305453]["Option111"]
tItem[3305453]["OptionFunc111"] = "NewServerOrderGift_BuyEquippedJudge</N>3305453</N>1"
tItem[3305453]["Option112"] = tNewServerOrderGift_Text[3305453]["Option112"]
tItem[3305453]["OptionFunc112"] = "NewServerOrderGift_BuyEquippedJudge</N>3305453</N>2"
tItem[3305453]["Option113"] = tNewServerOrderGift_Text[3305453]["Option113"]
tItem[3305453]["OptionFunc113"] = "NewServerOrderGift_BuyEquippedJudge</N>3305453</N>3"
tItem[3305453]["Option114"] = tNewServerOrderGift_Text[3305453]["Option114"]
tItem[3305453]["OptionFunc114"] = "NewServerOrderGift_BuyEquippedJudge</N>3305453</N>4"
tItem[3305453]["Option115"] = tNewServerOrderGift_Text[3305453]["Option115"]
tItem[3305453]["OptionFunc115"] = "NewServerOrderGift_BuyEquippedJudge</N>3305453</N>5"
tItem[3305453]["Option116"] = tNewServerOrderGift_Text[3305453]["Option116"]
tItem[3305453]["OptionPoint116"] = "1-2"

tItem[3305453]["Text1-2"] = {121}
tItem[3305453]["Text121"] = tNewServerOrderGift_Text[3305453]["Text121"]
tItem[3305453]["tOption1-2"] = {121, 122, 123, 124, 125}
tItem[3305453]["Option121"] = tNewServerOrderGift_Text[3305453]["Option121"]
tItem[3305453]["OptionFunc121"] = "NewServerOrderGift_BuyEquippedJudge</N>3305453</N>6"
tItem[3305453]["Option122"] = tNewServerOrderGift_Text[3305453]["Option122"]
tItem[3305453]["OptionFunc122"] = "NewServerOrderGift_BuyEquippedJudge</N>3305453</N>7"
tItem[3305453]["Option123"] = tNewServerOrderGift_Text[3305453]["Option123"]
tItem[3305453]["OptionFunc123"] = "NewServerOrderGift_BuyEquippedJudge</N>3305453</N>8"
tItem[3305453]["Option124"] = tNewServerOrderGift_Text[3305453]["Option124"]
tItem[3305453]["OptionFunc124"] = "NewServerOrderGift_BuyEquippedJudge</N>3305453</N>9"
tItem[3305453]["Option125"] = tNewServerOrderGift_Text[3305453]["Option125"]
tItem[3305453]["OptionPoint125"] = "1-1"
-- 购买二段确认
-- 武器确认
tItem[3305453]["Text2-1"] = {211}
tItem[3305453]["Text211"] = tNewServerOrderGift_Text[3305453]["Text211"]
tItem[3305453]["tOption2-1"] = {211, 212}
tItem[3305453]["Option211"] = tNewServerOrderGift_Text[3305453]["Option211"]
tItem[3305453]["Option212"] = tNewServerOrderGift_Text[3305453]["Option212"]

-- 使用极品装备包
tItemFace[3305454] = 843
tItem[3305454] = tItem[3305454] or {}
tItem[3305454]["Text1-1"] = {111}
tItem[3305454]["Text111"] = tNewServerOrderGift_Text[3305454]["Text111"]
tItem[3305454]["tOption1-1"] = {111, 112, 113, 114, 115, 116}
tItem[3305454]["Option111"] = tNewServerOrderGift_Text[3305454]["Option111"]
tItem[3305454]["OptionFunc111"] = "NewServerOrderGift_BuyEquippedJudge</N>3305454</N>1"
tItem[3305454]["Option112"] = tNewServerOrderGift_Text[3305454]["Option112"]
tItem[3305454]["OptionFunc112"] = "NewServerOrderGift_BuyEquippedJudge</N>3305454</N>2"
tItem[3305454]["Option113"] = tNewServerOrderGift_Text[3305454]["Option113"]
tItem[3305454]["OptionFunc113"] = "NewServerOrderGift_BuyEquippedJudge</N>3305454</N>3"
tItem[3305454]["Option114"] = tNewServerOrderGift_Text[3305454]["Option114"]
tItem[3305454]["OptionFunc114"] = "NewServerOrderGift_BuyEquippedJudge</N>3305454</N>4"
tItem[3305454]["Option115"] = tNewServerOrderGift_Text[3305454]["Option115"]
tItem[3305454]["OptionFunc115"] = "NewServerOrderGift_BuyEquippedJudge</N>3305454</N>5"
tItem[3305454]["Option116"] = tNewServerOrderGift_Text[3305454]["Option116"]
tItem[3305454]["OptionPoint116"] = "1-2"

tItem[3305454]["Text1-2"] = {121}
tItem[3305454]["Text121"] = tNewServerOrderGift_Text[3305454]["Text121"]
tItem[3305454]["tOption1-2"] = {121, 122, 123, 124, 125}
tItem[3305454]["Option121"] = tNewServerOrderGift_Text[3305454]["Option121"]
tItem[3305454]["OptionFunc121"] = "NewServerOrderGift_BuyEquippedJudge</N>3305454</N>6"
tItem[3305454]["Option122"] = tNewServerOrderGift_Text[3305454]["Option122"]
tItem[3305454]["OptionFunc122"] = "NewServerOrderGift_BuyEquippedJudge</N>3305454</N>7"
tItem[3305454]["Option123"] = tNewServerOrderGift_Text[3305454]["Option123"]
tItem[3305454]["OptionFunc123"] = "NewServerOrderGift_BuyEquippedJudge</N>3305454</N>8"
tItem[3305454]["Option124"] = tNewServerOrderGift_Text[3305454]["Option124"]
tItem[3305454]["OptionFunc124"] = "NewServerOrderGift_BuyEquippedJudge</N>3305454</N>9"
tItem[3305454]["Option125"] = tNewServerOrderGift_Text[3305454]["Option125"]
tItem[3305454]["OptionPoint125"] = "1-1"
-- 购买二段确认
-- 武器确认
tItem[3305454]["Text2-1"] = {211}
tItem[3305454]["Text211"] = tNewServerOrderGift_Text[3305454]["Text211"]
tItem[3305454]["tOption2-1"] = {211, 212}
tItem[3305454]["Option211"] = tNewServerOrderGift_Text[3305454]["Option211"]
tItem[3305454]["Option212"] = tNewServerOrderGift_Text[3305454]["Option212"]
