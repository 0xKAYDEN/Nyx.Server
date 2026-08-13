------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]12月萌宠外套活动(12.15-12.28)
--Purpose:	12月萌宠外套活动
--Creator: 	兰瑞妹
--Created:	2015/12/01
------------------------------------------------------------------------------------

-- 命名前缀
-- DecemberCutePet_Coat_

-- 掩码说明

-- 常量表
local tDecemberCutePet_Coat_Count = {}
	tDecemberCutePet_Coat_Count["BeforeActivityTime"] = "2015-01-22 00:00 2016-04-13 23:59"
	tDecemberCutePet_Coat_Count["ActivityTime"] = "2016-04-14 00:00 2016-04-27 23:59"
	
	-- 玩家等级要求
	tDecemberCutePet_Coat_Count["Metempsychosis"] = 0
	tDecemberCutePet_Coat_Count["Level"] = 100

	-- 使用的物品
	-- 7天喵喵武器碎片
	tDecemberCutePet_Coat_Count["SevenWeaponPieces"] = 3008038
	-- 7天喵喵时装碎片
	tDecemberCutePet_Coat_Count["SevenFashionPieces"] = 3008039
	-- 7天喵喵骑宠碎片
	tDecemberCutePet_Coat_Count["SevenPetPieces"] = 3008040
	-- 7天喵喵武器礼包
	tDecemberCutePet_Coat_Count["SevenWeaponBag"] = 3008041
	-- 7天喵喵时装礼包
	tDecemberCutePet_Coat_Count["SevenFashionBag"] = 3008042
	-- 7天喵喵骑宠礼包
	tDecemberCutePet_Coat_Count["SevenPetBag"] = 3008043
	-- 30天喵喵武器碎片
	tDecemberCutePet_Coat_Count["ThirtyWeaponPieces"] = 3008044
	-- 永久喵喵时装碎片
	tDecemberCutePet_Coat_Count["PermanentFashionPieces"] = 3008045
	-- 永久喵喵骑宠碎片
	tDecemberCutePet_Coat_Count["PermanentPetPieces"] = 3008046
	-- 30天喵喵武器礼包
	tDecemberCutePet_Coat_Count["ThirtyWeaponBag"] = 3008047
	
	--tDecemberCutePet_Coat_Count["LogId"] = 12000271

-- Log表
local tDecemberCutePet_Coat_Log = {}
	-- 物品过期
	tDecemberCutePet_Coat_Log["ItemOverdue"] = "0,0,%d,1,12000271,0,0,0"
	-- 打赌成功翻倍
	tDecemberCutePet_Coat_Log["BetSuccessAdd"] = "0,0,%d,1,12000271,2,%d,2"
	-- 打赌成功翻倍 永久碎片单个赌翻倍
	tDecemberCutePet_Coat_Log["BetSuccessFashion"] = "0,0,3008045,1,12000271,1[13],3008045,2"
	tDecemberCutePet_Coat_Log["BetSuccessPet"] = "0,0,3008046,1,12000271,1[14],3008046,2"
	-- 打赌失败物品消失
	tDecemberCutePet_Coat_Log["BetFailDel"] = "0,0,%d,1,12000271,0,0,0"
	-- 打赌失败 永久碎片单个赌
	tDecemberCutePet_Coat_Log["BetFailDelFashion"] = "0,0,3008045,1,12000271,1[13],0,0"
	tDecemberCutePet_Coat_Log["BetFailDelPet"] = "0,0,3008046,1,12000271,1[14],0,0"
	-- 合成礼包/外套
	tDecemberCutePet_Coat_Log["CompoundItem"] = "0,0,%d,%d,12000271,2,%d,1"
	-- 礼包打开
	tDecemberCutePet_Coat_Log["OpenBagGetItem"] = "0,0,%d,1,12000271,2,%d,1"
	-- Emoney log
	tDecemberCutePet_Coat_Log["EMoneyCoat"] = "250	%d	0	0	1	"

-- 特效
local tDecemberCutePet_Coat_Effect = {}
	-- 碎片单个赌失败
	tDecemberCutePet_Coat_Effect[1] = {}
	tDecemberCutePet_Coat_Effect[1]["EffectObj"] = "self"
	tDecemberCutePet_Coat_Effect[1]["Effect"] = "BodyDisapear"
	
	-- 碎片单个赌成功/集齐碎片合成成功
	tDecemberCutePet_Coat_Effect[2] = {}
	tDecemberCutePet_Coat_Effect[2]["EffectObj"] = "self"
	tDecemberCutePet_Coat_Effect[2]["Effect"] = "zf2-e280"
	
-- 获得奖励
local tDecemberCutePet_Coat_Award= {}
	tDecemberCutePet_Coat_Award[1] = {}
	tDecemberCutePet_Coat_Award[1]["Exp"] = 75
	tDecemberCutePet_Coat_Award[1]["Time"] = 15
	
-- 需求碎片和获得物品
local tDecemberCutePet_Coat_UseItem= {}
	tDecemberCutePet_Coat_UseItem[3008038] = {}
	--需求数量/碎片概率
	tDecemberCutePet_Coat_UseItem[3008038]["RegNum"] = 5
	tDecemberCutePet_Coat_UseItem[3008038]["CompoundItem"] = 3008041
	tDecemberCutePet_Coat_UseItem[3008038]["Random"] = 50
	
	tDecemberCutePet_Coat_UseItem[3008039] = {}
	tDecemberCutePet_Coat_UseItem[3008039]["RegNum"] = 5
	tDecemberCutePet_Coat_UseItem[3008039]["CompoundItem"] = 3008042
	tDecemberCutePet_Coat_UseItem[3008039]["Random"] = 50
	
	tDecemberCutePet_Coat_UseItem[3008040] = {}
	tDecemberCutePet_Coat_UseItem[3008040]["RegNum"] = 5
	tDecemberCutePet_Coat_UseItem[3008040]["CompoundItem"] = 3008043
	tDecemberCutePet_Coat_UseItem[3008040]["Random"] = 50

	tDecemberCutePet_Coat_UseItem[3008042] = {}
	tDecemberCutePet_Coat_UseItem[3008042]["OpenBagGetItemID"] = 193535
	tDecemberCutePet_Coat_UseItem[3008042]["OpenBagGetItemAttr"] = "0 1 3 10080 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	
	tDecemberCutePet_Coat_UseItem[3008043] = {}
	tDecemberCutePet_Coat_UseItem[3008043]["OpenBagGetItemID"] = 200541
	tDecemberCutePet_Coat_UseItem[3008043]["OpenBagGetItemAttr"] = "0 1 3 10080 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	
	tDecemberCutePet_Coat_UseItem[3008044] = {}
	tDecemberCutePet_Coat_UseItem[3008044]["RegNum"] = 15
	tDecemberCutePet_Coat_UseItem[3008044]["CompoundItem"] = 3008047
	tDecemberCutePet_Coat_UseItem[3008044]["Random"] = 48
	
	tDecemberCutePet_Coat_UseItem[3008045] = {}
	tDecemberCutePet_Coat_UseItem[3008045]["RegNum"] = 15
	tDecemberCutePet_Coat_UseItem[3008045]["CompoundItemID"] = 193545
	tDecemberCutePet_Coat_UseItem[3008045]["CompoundItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tDecemberCutePet_Coat_UseItem[3008045]["Random"] = 48
	tDecemberCutePet_Coat_UseItem[3008045]["EmoneybuyID"] = 4034
	
	tDecemberCutePet_Coat_UseItem[3008046] = {}
	tDecemberCutePet_Coat_UseItem[3008046]["RegNum"] = 15
	tDecemberCutePet_Coat_UseItem[3008046]["CompoundItemID"] = 200542
	tDecemberCutePet_Coat_UseItem[3008046]["CompoundItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tDecemberCutePet_Coat_UseItem[3008046]["Random"] = 48
	tDecemberCutePet_Coat_UseItem[3008046]["EmoneybuyID"] = 4040

-- 武器外套礼包随机概率(7天和30天)
local tDecemberCutePet_CoatArmsPackage = {}	
	-- 给的物品属性
	tDecemberCutePet_CoatArmsPackage[3008041] = "0 1 3 10080 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tDecemberCutePet_CoatArmsPackage[3008047] = "0 1 0 43200 1 0 0 1"
	
	-- 随机概率
	tDecemberCutePet_CoatArmsPackage[1] = {} 
	tDecemberCutePet_CoatArmsPackage[1]["ItemChanceSum"] = 10000
	
	tDecemberCutePet_CoatArmsPackage[1][1] = {}
	tDecemberCutePet_CoatArmsPackage[1][1]["RandomItemChanceType"] = 2
	tDecemberCutePet_CoatArmsPackage[1][1]["ItemChance"] = 3000
	tDecemberCutePet_CoatArmsPackage[1][1]["Item_1"] = 360175

	tDecemberCutePet_CoatArmsPackage[1][2] = {}
	tDecemberCutePet_CoatArmsPackage[1][2]["RandomItemChanceType"] = 2
	tDecemberCutePet_CoatArmsPackage[1][2]["ItemChance"] = 2000
	tDecemberCutePet_CoatArmsPackage[1][2]["Item_1"] = 350089
	
	tDecemberCutePet_CoatArmsPackage[1][3] = {}
	tDecemberCutePet_CoatArmsPackage[1][3]["RandomItemChanceType"] = 2
	tDecemberCutePet_CoatArmsPackage[1][3]["ItemChance"] = 1500
	tDecemberCutePet_CoatArmsPackage[1][3]["Item_1"] = 360185
	
	tDecemberCutePet_CoatArmsPackage[1][4] = {}
	tDecemberCutePet_CoatArmsPackage[1][4]["RandomItemChanceType"] = 2
	tDecemberCutePet_CoatArmsPackage[1][4]["ItemChance"] = 1000
	tDecemberCutePet_CoatArmsPackage[1][4]["Item_1"] = 350094
	
	tDecemberCutePet_CoatArmsPackage[1][5] = {}
	tDecemberCutePet_CoatArmsPackage[1][5]["RandomItemChanceType"] = 2
	tDecemberCutePet_CoatArmsPackage[1][5]["ItemChance"] = 1500
	tDecemberCutePet_CoatArmsPackage[1][5]["Item_1"] = 370039
	
	tDecemberCutePet_CoatArmsPackage[1][6] = {}
	tDecemberCutePet_CoatArmsPackage[1][6]["RandomItemChanceType"] = 2
	tDecemberCutePet_CoatArmsPackage[1][6]["ItemChance"] = 1000
	tDecemberCutePet_CoatArmsPackage[1][6]["Item_1"] = 380045
	

--------------------------------------逻辑部分-------------------------------------------
-- 物品时间过期删除
function DecemberCutePet_Coat_DelOverDue(nItemId)
	if not Sys_ChkFullTime(tDecemberCutePet_Coat_Count["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tDecemberCutePet_Coat_Log["ItemOverdue"],nItemId))
			local sDelOverdue = tDecemberCutePet_Coat_Text["ItemOverdue"]
			User_TalkChannel2005(string.format(sDelOverdue,tDecemberCutePet_Coat_Text[nItemId]["ItemName"]))
			return
		end
	end
end

-- 物品使用
function DecemberCutePet_Coat_UseItem(nItemId)
	-- 判断是否在活动时间
	if nItemId ~= tDecemberCutePet_Coat_Count["ThirtyWeaponBag"] then
		DecemberCutePet_Coat_DelOverDue(nItemId)
	end
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end

-- 碎片赌翻倍
function DecemberCutePet_Coat_Bet(nItemId)
	-- 背包判断
	if not User_CheckLeftSpace(1) then
		local sBagFull = tDecemberCutePet_Coat_Text["UsePieces"]["BagFull"]
		User_TalkChannel2005(string.format(sBagFull,tDecemberCutePet_Coat_Text[nItemId]["PieceType"]))
		return
	end
	
	if not (Item_ChkItem(nItemId) and Item_DelItem(nItemId)) then
		User_TalkChannel2005(string.format(tDecemberCutePet_Coat_Text["Fail"],tDecemberCutePet_Coat_Text[nItemId]["ItemName"]))
		return
	end
	
	local nRandomNum = tDecemberCutePet_Coat_UseItem[nItemId]["Random"]
	if Sys_Random(nRandomNum,100) then
		--成功获得2个
		Item_AddItem(nItemId,0,2)
		User_EffectAdd(tDecemberCutePet_Coat_Effect[2]["EffectObj"],tDecemberCutePet_Coat_Effect[2]["Effect"])
		if nItemId == tDecemberCutePet_Coat_Count["PermanentFashionPieces"] then
			Sys_SaveActionFestivalLog(tDecemberCutePet_Coat_Log["BetSuccessFashion"])
		elseif nItemId == tDecemberCutePet_Coat_Count["PermanentPetPieces"] then
			Sys_SaveActionFestivalLog(tDecemberCutePet_Coat_Log["BetSuccessPet"])
		else
			Sys_SaveActionFestivalLog(string.format(tDecemberCutePet_Coat_Log["BetSuccessAdd"],nItemId,nItemId))
		end
		LinkItemGossipFunc_New(nItemId,"1-2")
		return
	else
		-- 失败删除
		-- if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_EffectAdd(tDecemberCutePet_Coat_Effect[1]["EffectObj"],tDecemberCutePet_Coat_Effect[1]["Effect"])
			if nItemId == tDecemberCutePet_Coat_Count["PermanentFashionPieces"] then
				Sys_SaveActionFestivalLog(tDecemberCutePet_Coat_Log["BetFailDelFashion"])
			elseif nItemId == tDecemberCutePet_Coat_Count["PermanentPetPieces"] then
				Sys_SaveActionFestivalLog(tDecemberCutePet_Coat_Log["BetFailDelPet"])
			else
				Sys_SaveActionFestivalLog(string.format(tDecemberCutePet_Coat_Log["BetFailDel"],nItemId))
			end
			-- local sBetFail = tDecemberCutePet_Coat_Text["UsePieces"]["BetFail"]
			-- Sys_MsgBox(string.format(sBetFail,tDecemberCutePet_Coat_Text[nItemId]["PieceType"]))
			LinkItemGossipFunc_New(nItemId,"1-3")
			return
		-- end
	end
end

-- 碎片赌失败确定之后关闭对话框
function DecemberCutePet_Coat_BetFail(nItemId)
	if Item_ChkItem(nItemId) then
		LinkItemGossipFunc_New(nItemId,"1-1")
		return
	end
end


-- 合成礼包
function DecemberCutePet_Coat_Compound(nItemId)
	-- 背包判断
	if not User_CheckLeftSpace(1) then
		local sBagFull = tDecemberCutePet_Coat_Text["UsePieces"]["BagFull"]
		User_TalkChannel2005(string.format(sBagFull,tDecemberCutePet_Coat_Text[nItemId]["PieceType"]))
		return
	end
	
	-- 数量检测
	local nRegNum = tDecemberCutePet_Coat_UseItem[nItemId]["RegNum"]
	if not Item_ChkMulItem(nItemId,nItemId,nRegNum) then
		local sNoEnoughAmount = string.format(tDecemberCutePet_Coat_Text["UsePieces"]["NoEnoughAmount"],tDecemberCutePet_Coat_Text[nItemId]["PieceType"],nRegNum)
		User_TalkChannel2005(sNoEnoughAmount)
		return
	end
	
	--成功合成
	if Item_ChkMulItem(nItemId,nItemId,nRegNum) and Item_DelMulItem(nItemId,nItemId,nRegNum) then
		User_EffectAdd(tDecemberCutePet_Coat_Effect[2]["EffectObj"],tDecemberCutePet_Coat_Effect[2]["Effect"])
		-- 合成7天/30天礼包
		local nCompoundItemID = tDecemberCutePet_Coat_UseItem[nItemId]["CompoundItem"]
		if nCompoundItemID ~= nil then
			Item_AddItem(nCompoundItemID)
			Sys_SaveActionFestivalLog(string.format(tDecemberCutePet_Coat_Log["CompoundItem"],nItemId,nRegNum,nCompoundItemID))
			Sys_MsgBox(tDecemberCutePet_Coat_Text[nItemId]["CompoundSuccess"])
			return
		end
		
		-- 合成时装/武器外套
		local nCompoundCoatID = tDecemberCutePet_Coat_UseItem[nItemId]["CompoundItemID"]
		local nEmoneyID = tDecemberCutePet_Coat_UseItem[nItemId]["EmoneybuyID"]
		if nCompoundCoatID ~= nil then
			Item_AddNewItem(nCompoundCoatID,tDecemberCutePet_Coat_UseItem[nItemId]["CompoundItemAttr"])
			Sys_SaveActionFestivalLog(string.format(tDecemberCutePet_Coat_Log["CompoundItem"],nItemId,nRegNum,nCompoundCoatID))
			--Emoney记录
			Sys_SaveEmoneyBuy(string.format(tDecemberCutePet_Coat_Log["EMoneyCoat"],nEmoneyID))
			Sys_MsgBox(tDecemberCutePet_Coat_Text[nItemId]["CompoundSuccess"])
			return
		end
	end
end

-- 打开礼包
function DecemberCutePet_Coat_OpenBag(nItemId,nOption)
	-- 判断是否在活动时间
	if nItemId ~= tDecemberCutePet_Coat_Count["ThirtyWeaponBag"] then
		DecemberCutePet_Coat_DelOverDue(nItemId)
	end

	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local nGetItemID = tDecemberCutePet_Coat_UseItem[nItemId]["OpenBagGetItemID"]
		local sGetItemAttr = tDecemberCutePet_Coat_UseItem[nItemId]["OpenBagGetItemAttr"]
		Item_AddNewItem(nGetItemID,sGetItemAttr)
		Sys_SaveActionFestivalLog(string.format(tDecemberCutePet_Coat_Log["OpenBagGetItem"],nItemId,nGetItemID))
		Sys_MsgBox(tDecemberCutePet_Coat_Text[nItemId]["OpenBagGetItem"])
		return
	end
end

-- 武器礼包获得物品
function DecemberCutePet_CoatArms(nItemId)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local nFlag,tAward = Probabil_RandomAward(tDecemberCutePet_CoatArmsPackage,1)
		local nAddItemId = tAward[1]["tAward"][1]["Item_1"]
		local nAddItemAttr = tDecemberCutePet_CoatArmsPackage[nItemId]
		local sItemName = Get_ItemtypeName(nAddItemId)
		
		Item_AddNewItem(nAddItemId,nAddItemAttr)
		Sys_SaveActionFestivalLog(string.format(tDecemberCutePet_Coat_Log["OpenBagGetItem"],nItemId,nAddItemId))
		Sys_MsgBox(string.format(tDecemberCutePet_Coat_Text[nItemId]["OpenBagGetItem"],sItemName))
	end
end

-------------------------------------物品使用模块-----------------------------------
-- 7天武器外套礼包（碎片）
tItem[3008038] = tItem[3008038] or {}
tItem[3008038]["Function"] = function(nItemId,sItemName)
	local nItemId = tDecemberCutePet_Coat_Count["SevenWeaponPieces"]
	
	DecemberCutePet_Coat_UseItem(nItemId)
end
tItem[3008038]["Text1-1"] = {111,112}
tItem[3008038]["Text111"] = tDecemberCutePet_Coat_Text[3008038]["111"]
tItem[3008038]["Text112"] = tDecemberCutePet_Coat_Text[3008038]["112"]
tItem[3008038]["tOption1-1"] = {1,2}
tItem[3008038]["Option1"] = tDecemberCutePet_Coat_Text[3008038]["Option1"]
tItem[3008038]["OptionFunc1"] = "DecemberCutePet_Coat_Bet</N>3008038"
tItem[3008038]["Option2"] = tDecemberCutePet_Coat_Text[3008038]["Option2"]
tItem[3008038]["OptionFunc2"] = "DecemberCutePet_Coat_Compound</N>3008038"
tItem[3008038]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tDecemberCutePet_Coat_Count["ActivityTime"])
end

tItem[3008038]["Text1-2"] = {121}
tItem[3008038]["Text121"] = tDecemberCutePet_Coat_Text[3008038]["121"]
tItem[3008038]["tOption1-2"] = {3}
tItem[3008038]["Option3"] = tDecemberCutePet_Coat_Text[3008038]["Option3"]
tItem[3008038]["OptionPoint3"] = "1-1"

tItem[3008038]["Text1-3"] = {131}
tItem[3008038]["Text131"] = tDecemberCutePet_Coat_Text[3008038]["131"]
tItem[3008038]["tOption1-3"] = {4}
tItem[3008038]["Option4"] = tDecemberCutePet_Coat_Text[3008038]["Option4"]
tItem[3008038]["OptionFunc4"] = "DecemberCutePet_Coat_BetFail</N>3008038"

-- 7天时装外套礼包（碎片）
tItem[3008039] = tItem[3008039] or {}
tItem[3008039]["Function"] = function(nItemId,sItemName)
	local nItemId = tDecemberCutePet_Coat_Count["SevenFashionPieces"]
	
	DecemberCutePet_Coat_UseItem(nItemId)
end
tItem[3008039]["Text1-1"] = {111,112}
tItem[3008039]["Text111"] = tDecemberCutePet_Coat_Text[3008039]["111"]
tItem[3008039]["Text112"] = tDecemberCutePet_Coat_Text[3008039]["112"]
tItem[3008039]["tOption1-1"] = {1,2}
tItem[3008039]["Option1"] = tDecemberCutePet_Coat_Text[3008039]["Option1"]
tItem[3008039]["OptionFunc1"] = "DecemberCutePet_Coat_Bet</N>3008039"
tItem[3008039]["Option2"] = tDecemberCutePet_Coat_Text[3008039]["Option2"]
tItem[3008039]["OptionFunc2"] = "DecemberCutePet_Coat_Compound</N>3008039"
tItem[3008039]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tDecemberCutePet_Coat_Count["ActivityTime"])
end

tItem[3008039]["Text1-2"] = {121}
tItem[3008039]["Text121"] = tDecemberCutePet_Coat_Text[3008039]["121"]
tItem[3008039]["tOption1-2"] = {3}
tItem[3008039]["Option3"] = tDecemberCutePet_Coat_Text[3008039]["Option3"]
tItem[3008039]["OptionPoint3"] = "1-1"

tItem[3008039]["Text1-3"] = {131}
tItem[3008039]["Text131"] = tDecemberCutePet_Coat_Text[3008039]["131"]
tItem[3008039]["tOption1-3"] = {4}
tItem[3008039]["Option4"] = tDecemberCutePet_Coat_Text[3008039]["Option4"]
tItem[3008039]["OptionFunc4"] = "DecemberCutePet_Coat_BetFail</N>3008039"

-- 7天坐骑外套礼包（碎片）
tItem[3008040] = tItem[3008040] or {}
tItem[3008040]["Function"] = function(nItemId,sItemName)
	local nItemId = tDecemberCutePet_Coat_Count["SevenPetPieces"]
	
	DecemberCutePet_Coat_UseItem(nItemId)
end
tItem[3008040]["Text1-1"] = {111,112}
tItem[3008040]["Text111"] = tDecemberCutePet_Coat_Text[3008040]["111"]
tItem[3008040]["Text112"] = tDecemberCutePet_Coat_Text[3008040]["112"]
tItem[3008040]["tOption1-1"] = {1,2}
tItem[3008040]["Option1"] = tDecemberCutePet_Coat_Text[3008040]["Option1"]
tItem[3008040]["OptionFunc1"] = "DecemberCutePet_Coat_Bet</N>3008040"
tItem[3008040]["Option2"] = tDecemberCutePet_Coat_Text[3008040]["Option2"]
tItem[3008040]["OptionFunc2"] = "DecemberCutePet_Coat_Compound</N>3008040"
tItem[3008040]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tDecemberCutePet_Coat_Count["ActivityTime"])
end

tItem[3008040]["Text1-2"] = {121}
tItem[3008040]["Text121"] = tDecemberCutePet_Coat_Text[3008040]["121"]
tItem[3008040]["tOption1-2"] = {3}
tItem[3008040]["Option3"] = tDecemberCutePet_Coat_Text[3008040]["Option3"]
tItem[3008040]["OptionPoint3"] = "1-1"

tItem[3008040]["Text1-3"] = {131}
tItem[3008040]["Text131"] = tDecemberCutePet_Coat_Text[3008040]["131"]
tItem[3008040]["tOption1-3"] = {4}
tItem[3008040]["Option4"] = tDecemberCutePet_Coat_Text[3008040]["Option4"]
tItem[3008040]["OptionFunc4"] = "DecemberCutePet_Coat_BetFail</N>3008040"

-- 7天武器外套礼包
tItem[3008041] = tItem[3008041] or {}
tItem[3008041]["Function"] = function(nItemId,sItemName)
	DecemberCutePet_Coat_UseItem(nItemId)
end
tItem[3008041]["Text1-1"] = {111}
tItem[3008041]["Text111"] = tDecemberCutePet_Coat_Text[3008041]["111"]
tItem[3008041]["tOption1-1"] = {1}
tItem[3008041]["Option1"] = tDecemberCutePet_Coat_Text[3008041]["Option1"]
tItem[3008041]["OptionFunc1"] = "DecemberCutePet_CoatArms</N>3008041"
tItem[3008041]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tDecemberCutePet_Coat_Count["ActivityTime"])
end

-- 7天时装外套礼包
tItem[3008042] = tItem[3008042] or {}
tItem[3008042]["Function"] = function(nItemId,sItemName)
	local nItemId = tDecemberCutePet_Coat_Count["SevenFashionBag"]
	
	DecemberCutePet_Coat_UseItem(nItemId)
end
tItem[3008042]["Text1-1"] = {111}
tItem[3008042]["Text111"] = tDecemberCutePet_Coat_Text[3008042]["111"]
tItem[3008042]["tOption1-1"] = {1}
tItem[3008042]["Option1"] = tDecemberCutePet_Coat_Text[3008042]["Option1"]
tItem[3008042]["OptionFunc1"] = "DecemberCutePet_Coat_OpenBag</N>3008042"
tItem[3008042]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tDecemberCutePet_Coat_Count["ActivityTime"])
end

-- 7天坐骑外套礼包
tItem[3008043] = tItem[3008043] or {}
tItem[3008043]["Function"] = function(nItemId,sItemName)
	local nItemId = tDecemberCutePet_Coat_Count["SevenPetBag"]
	
	DecemberCutePet_Coat_UseItem(nItemId)
end
tItem[3008043]["Text1-1"] = {111}
tItem[3008043]["Text111"] = tDecemberCutePet_Coat_Text[3008043]["111"]
tItem[3008043]["tOption1-1"] = {1}
tItem[3008043]["Option1"] = tDecemberCutePet_Coat_Text[3008043]["Option1"]
tItem[3008043]["OptionFunc1"] = "DecemberCutePet_Coat_OpenBag</N>3008043"
tItem[3008043]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tDecemberCutePet_Coat_Count["ActivityTime"])
end

-- 30天武器外套礼包（碎片）
tItem[3008044] = tItem[3008044] or {}
tItem[3008044]["Function"] = function(nItemId,sItemName)
	local nItemId = tDecemberCutePet_Coat_Count["ThirtyWeaponPieces"]
	
	DecemberCutePet_Coat_UseItem(nItemId)
end
tItem[3008044]["Text1-1"] = {111,112}
tItem[3008044]["Text111"] = tDecemberCutePet_Coat_Text[3008044]["111"]
tItem[3008044]["Text112"] = tDecemberCutePet_Coat_Text[3008044]["112"]
tItem[3008044]["tOption1-1"] = {1,2}
tItem[3008044]["Option1"] = tDecemberCutePet_Coat_Text[3008044]["Option1"]
tItem[3008044]["OptionFunc1"] = "DecemberCutePet_Coat_Bet</N>3008044"
tItem[3008044]["Option2"] = tDecemberCutePet_Coat_Text[3008044]["Option2"]
tItem[3008044]["OptionFunc2"] = "DecemberCutePet_Coat_Compound</N>3008044"
tItem[3008044]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tDecemberCutePet_Coat_Count["ActivityTime"])
end

tItem[3008044]["Text1-2"] = {121}
tItem[3008044]["Text121"] = tDecemberCutePet_Coat_Text[3008044]["121"]
tItem[3008044]["tOption1-2"] = {3}
tItem[3008044]["Option3"] = tDecemberCutePet_Coat_Text[3008044]["Option3"]
tItem[3008044]["OptionPoint3"] = "1-1"

tItem[3008044]["Text1-3"] = {131}
tItem[3008044]["Text131"] = tDecemberCutePet_Coat_Text[3008044]["131"]
tItem[3008044]["tOption1-3"] = {4}
tItem[3008044]["Option4"] = tDecemberCutePet_Coat_Text[3008044]["Option4"]
tItem[3008044]["OptionFunc4"] = "DecemberCutePet_Coat_BetFail</N>3008044"

-- 永久时装外套（碎片）
tItem[3008045] = tItem[3008045] or {}
tItem[3008045]["Function"] = function(nItemId,sItemName)
	local nItemId = tDecemberCutePet_Coat_Count["PermanentFashionPieces"]
	
	DecemberCutePet_Coat_UseItem(nItemId)
end
tItem[3008045]["Text1-1"] = {111,112}
tItem[3008045]["Text111"] = tDecemberCutePet_Coat_Text[3008045]["111"]
tItem[3008045]["Text112"] = tDecemberCutePet_Coat_Text[3008045]["112"]
tItem[3008045]["tOption1-1"] = {1,2}
tItem[3008045]["Option1"] = tDecemberCutePet_Coat_Text[3008045]["Option1"]
tItem[3008045]["OptionFunc1"] = "DecemberCutePet_Coat_Bet</N>3008045"
tItem[3008045]["Option2"] = tDecemberCutePet_Coat_Text[3008045]["Option2"]
tItem[3008045]["OptionFunc2"] = "DecemberCutePet_Coat_Compound</N>3008045"
tItem[3008045]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tDecemberCutePet_Coat_Count["ActivityTime"])
end

tItem[3008045]["Text1-2"] = {121}
tItem[3008045]["Text121"] = tDecemberCutePet_Coat_Text[3008045]["121"]
tItem[3008045]["tOption1-2"] = {3}
tItem[3008045]["Option3"] = tDecemberCutePet_Coat_Text[3008045]["Option3"]
tItem[3008045]["OptionPoint3"] = "1-1"

tItem[3008045]["Text1-3"] = {131}
tItem[3008045]["Text131"] = tDecemberCutePet_Coat_Text[3008045]["131"]
tItem[3008045]["tOption1-3"] = {4}
tItem[3008045]["Option4"] = tDecemberCutePet_Coat_Text[3008045]["Option4"]
tItem[3008045]["OptionFunc4"] = "DecemberCutePet_Coat_BetFail</N>3008045"

-- 永久坐骑外套（碎片）
tItem[3008046] = tItem[3008046] or {}
tItem[3008046]["Function"] = function(nItemId,sItemName)
	local nItemId = tDecemberCutePet_Coat_Count["PermanentPetPieces"]
	
	DecemberCutePet_Coat_UseItem(nItemId)
end
tItem[3008046]["Text1-1"] = {111,112}
tItem[3008046]["Text111"] = tDecemberCutePet_Coat_Text[3008046]["111"]
tItem[3008046]["Text112"] = tDecemberCutePet_Coat_Text[3008046]["112"]
tItem[3008046]["tOption1-1"] = {1,2}
tItem[3008046]["Option1"] = tDecemberCutePet_Coat_Text[3008046]["Option1"]
tItem[3008046]["OptionFunc1"] = "DecemberCutePet_Coat_Bet</N>3008046"
tItem[3008046]["Option2"] = tDecemberCutePet_Coat_Text[3008046]["Option2"]
tItem[3008046]["OptionFunc2"] = "DecemberCutePet_Coat_Compound</N>3008046"
tItem[3008046]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tDecemberCutePet_Coat_Count["ActivityTime"])
end

tItem[3008046]["Text1-2"] = {121}
tItem[3008046]["Text121"] = tDecemberCutePet_Coat_Text[3008046]["121"]
tItem[3008046]["tOption1-2"] = {3}
tItem[3008046]["Option3"] = tDecemberCutePet_Coat_Text[3008046]["Option3"]
tItem[3008046]["OptionPoint3"] = "1-1"

tItem[3008046]["Text1-3"] = {131}
tItem[3008046]["Text131"] = tDecemberCutePet_Coat_Text[3008046]["131"]
tItem[3008046]["tOption1-3"] = {4}
tItem[3008046]["Option4"] = tDecemberCutePet_Coat_Text[3008046]["Option4"]
tItem[3008046]["OptionFunc4"] = "DecemberCutePet_Coat_BetFail</N>3008046"

-- 30天武器外套礼包
tItem[3008047] = tItem[3008047] or {}
tItem[3008047]["Function"] = function(nItemId,sItemName)
	DecemberCutePet_CoatArms(nItemId)
end