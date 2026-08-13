------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]5月新服活动-抱团闯新服礼包及发奖action
--Purpose:	抱团闯新服礼包
--Creator: 	吴文鑫
--Created:	2016/04/20
------------------------------------------------------------------------------------

-- 命名前缀
--NewServicePushingpacks_
--12000366


local tNewServicePushingpacks_Pack = {}

-- 3200016 高手经验礼包

-- 经验球赠*8	ExpBall	723911	8	赠

tNewServicePushingpacks_Pack[3200016] = {}
tNewServicePushingpacks_Pack[3200016]["Item_1"] = 723700
tNewServicePushingpacks_Pack[3200016]["ItemAttr"] = "0 8 3"
tNewServicePushingpacks_Pack[3200016]["Log"] = "0,0,3200016,1,12000366,2,723700,8"


-- 3200017 武林奇侠礼包
-- 100赠点天石	100 CPs(B)
-- 赤炼石+3（赠）*2	Stone(+3)	730003	2

tNewServicePushingpacks_Pack[3200017] = {}
tNewServicePushingpacks_Pack[3200017]["Space"] = 1
tNewServicePushingpacks_Pack[3200017]["Item_1"] = 730003
tNewServicePushingpacks_Pack[3200017]["ItemAttr"] = "0 2 3"
tNewServicePushingpacks_Pack[3200017]["EmoneyMono"] = 100
tNewServicePushingpacks_Pack[3200017]["Log"] = "0,0,3200017,1,12000366,2,730003[3],1[100]"

-- 3200018 炉火纯青礼包
-- 流星卷（赠）*2	MeteorScroll	720027	2
-- 修行值书赠*2	ModestyBook		723342	2
-- 清心符赠*5 PenitenceAmuletPack 	3002706	1

tNewServicePushingpacks_Pack[3200018] = {}
tNewServicePushingpacks_Pack[3200018]["Space"] = 4
tNewServicePushingpacks_Pack[3200018]["Item_1"] = {}
tNewServicePushingpacks_Pack[3200018]["Item_1"][1] = 720027
tNewServicePushingpacks_Pack[3200018]["Item_1"][2] = 723342
tNewServicePushingpacks_Pack[3200018]["Item_1"][3] = 3002706
tNewServicePushingpacks_Pack[3200018]["ItemAttr"] = {}
tNewServicePushingpacks_Pack[3200018]["ItemAttr"][1] = "0 2 3"
tNewServicePushingpacks_Pack[3200018]["ItemAttr"][2] = "0 2 3"
tNewServicePushingpacks_Pack[3200018]["ItemAttr"][3] = ""
tNewServicePushingpacks_Pack[3200018]["Log"] = "0,0,3200018,1,12000366,2,720027[723342][3002706],2[2][1]"

-- 3200019 盖世强者礼包
-- 护心丹（赠）*10	ProtectionPill	3002029		3200020 护心丹大礼包
-- 强炼丹（赠）*10	FavoredTrainingPillBox	3004470
-- 大爆丹（赠）*10	SeniorTrainingPill	3003126

tNewServicePushingpacks_Pack[3200019] = {}
tNewServicePushingpacks_Pack[3200019]["Space"] = 2
tNewServicePushingpacks_Pack[3200019]["Item_1"] = {}
tNewServicePushingpacks_Pack[3200019]["Item_1"][1] = 3200020
tNewServicePushingpacks_Pack[3200019]["Item_1"][2] = 3004470
tNewServicePushingpacks_Pack[3200019]["Item_1"][3] = 3003126
tNewServicePushingpacks_Pack[3200019]["ItemAttr"] = {}
tNewServicePushingpacks_Pack[3200019]["ItemAttr"][1] = ""
tNewServicePushingpacks_Pack[3200019]["ItemAttr"][2] = ""
tNewServicePushingpacks_Pack[3200019]["ItemAttr"][3] = "0 10 3"
tNewServicePushingpacks_Pack[3200019]["Log"] = "0,0,3200019,1,12000366,2,3200020[3004470][3003126],1[1][10]"


-- 3200020 护心丹大礼包
-- 护心丹（赠）*10	ProtectionPill	3002029
tNewServicePushingpacks_Pack[3200020] = {}
tNewServicePushingpacks_Pack[3200020]["Space"] = 9
tNewServicePushingpacks_Pack[3200020]["Item_1"] = 3002029
tNewServicePushingpacks_Pack[3200020]["ItemAttr"] = "0 10 0 0 1"
tNewServicePushingpacks_Pack[3200020]["Log"] = "0,0,3200020,1,12000366,2,3002029,10"

-- 3200021 冰雪奇缘外套包
-- 神佑冰雪奇缘外套【普通版】180天（赠）	FrozenFantasy	193505
-- tNewServicePushingpacks_Pack[3200021] = {}
-- tNewServicePushingpacks_Pack[3200021]["Item_1"] = 193505
-- tNewServicePushingpacks_Pack[3200021]["ItemAttr"] = "0 1 3 259200 0 0 0 1"
-- tNewServicePushingpacks_Pack[3200021]["Log"] = "0,0,3200021,1,12000366,2,193505,1"


-- 3200022 降魔英雄礼包
-- "龙珠*1DragonBall"	1088000	1	赠
-- "回气丹赠*2VitalPill"	729481	2	赠
-- 清心符赠*5 PenitenceAmuletPack 	3002706	1	赠
tNewServicePushingpacks_Pack[3200022] = {}
tNewServicePushingpacks_Pack[3200022]["Space"] = 3
tNewServicePushingpacks_Pack[3200022]["Item_1"] = {}
tNewServicePushingpacks_Pack[3200022]["Item_1"][1] = 1088000
tNewServicePushingpacks_Pack[3200022]["Item_1"][2] = 729481
tNewServicePushingpacks_Pack[3200022]["Item_1"][3] = 3002706
tNewServicePushingpacks_Pack[3200022]["ItemAttr"] = {}
tNewServicePushingpacks_Pack[3200022]["ItemAttr"][1] = "0 1 3"
tNewServicePushingpacks_Pack[3200022]["ItemAttr"][2] = "0 2"
tNewServicePushingpacks_Pack[3200022]["ItemAttr"][3] = ""
tNewServicePushingpacks_Pack[3200022]["Log"] = "0,0,3200018,1,12000366,2,1088000[729481][3002706],1[2][1]"


---------------------------------------------礼包逻辑
--礼包打开通用逻辑
function NewServicePushingpacks_OpenPack(nItemId)
	-- 判断背包空间
	if tNewServicePushingpacks_Pack[nItemId]["Space"] ~= nil then
		local nSpace = tNewServicePushingpacks_Pack[nItemId]["Space"]
		if not User_CheckLeftSpace(nSpace) then
			User_TalkChannel2005(string.format(tNewServicePushingpacks_Text["NoSpace"],nSpace))
			return
		end
	end
	
	-- 判断玩家赠品天石是否达到上限
	if tNewServicePushingpacks_Pack[nItemId]["EmoneyMono"] ~= nil then
		local nUserEmoney = Get_UserMonoEMoney()
		if nUserEmoney + tNewServicePushingpacks_Pack[nItemId]["EmoneyMono"] > G_User_MaxEmoneyMono then
			User_TalkChannel2005(tNewServicePushingpacks_Text["EmoneyMonoLimit"])
			return
		end

	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 给赠天石
		if tNewServicePushingpacks_Pack[nItemId]["EmoneyMono"] then
			User_AddEMoneyMono(tNewServicePushingpacks_Pack[nItemId]["EmoneyMono"])
		end
	
		-- 获得物品
		if tNewServicePushingpacks_Pack[nItemId]["Item_1"] then
			if type(tNewServicePushingpacks_Pack[nItemId]["Item_1"]) == "table" then
				for i = 1,#tNewServicePushingpacks_Pack[nItemId]["Item_1"] do
					Item_AddNewItem(tNewServicePushingpacks_Pack[nItemId]["Item_1"][i],tNewServicePushingpacks_Pack[nItemId]["ItemAttr"][i])
				end
			else
				Item_AddNewItem(tNewServicePushingpacks_Pack[nItemId]["Item_1"],tNewServicePushingpacks_Pack[nItemId]["ItemAttr"])
			end
		end
		
		-- 打log
		Sys_SaveActionFestivalLog(tNewServicePushingpacks_Pack[nItemId]["Log"])
		-- 给提示
		User_TalkChannel2005(tNewServicePushingpacks_Text[nItemId])
	end
	
end

----------------------------------------------物品配置
-- 3200016 高手经验礼包
tItem[3200016] = tItem[3200016] or {}
tItem[3200016]["Function"] = function(nItemId,sItemName)
	NewServicePushingpacks_OpenPack(nItemId)
end

-- 3200017 武林奇侠礼包
tItem[3200017] = tItem[3200017] or {}
tItem[3200017]["Function"] = function(nItemId,sItemName)
	NewServicePushingpacks_OpenPack(nItemId)
end


-- 3200018 炉火纯青礼包
tItem[3200018] = tItem[3200018] or {}
tItem[3200018]["Function"] = function(nItemId,sItemName)
	NewServicePushingpacks_OpenPack(nItemId)
end

-- 3200019 盖世强者礼包
tItem[3200019] = tItem[3200019] or {}
tItem[3200019]["Function"] = function(nItemId,sItemName)
	NewServicePushingpacks_OpenPack(nItemId)
end

-- 3200020 护心丹大礼包
tItem[3200020] = tItem[3200020] or {}
tItem[3200020]["Function"] = function(nItemId,sItemName)
	NewServicePushingpacks_OpenPack(nItemId)
end

-- 3200021 冰雪奇缘外套包
-- tItem[3200021] = tItem[3200021] or {}
-- tItem[3200021]["Function"] = function(nItemId,sItemName)
	-- NewServicePushingpacks_OpenPack(nItemId)
-- end

-- 3200022 降魔英雄礼包
tItem[3200022] = tItem[3200022] or {}
tItem[3200022]["Function"] = function(nItemId,sItemName)
	NewServicePushingpacks_OpenPack(nItemId)
end






