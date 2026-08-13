------------------------------------------------------------------------------------
--Name:			160301[简体征服][活动脚本]花神活动资源整合
--Purpose:		花神活动资源整合
--Creator:		严振飞
--Created:		2016/03/09
------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------
-- 命名规范
-- TheGoddess2016Reward_

-- LOG id 12000324
-----------------------------------------------------------------------------------
local tTheGoddess2016Reward_Cont = {}
	tTheGoddess2016Reward_Cont["WingIdBegin"] = 6000

-- 物品对应称号ID
local tTheGoddess2016Reward_Title = {}
	tTheGoddess2016Reward_Title[3008863] = 6005 		-- 翅膀（男）棉花糖之恋
	tTheGoddess2016Reward_Title[3008864] = 6005 		-- 翅膀（女）棉花糖之恋
	tTheGoddess2016Reward_Title[3008865] = 2020 		-- 称号（绝世佳人）
	tTheGoddess2016Reward_Title[3008866] = 2021 		-- 称号（天姿绝色）
	tTheGoddess2016Reward_Title[3008867] = 2022 		-- 称号（楚楚动人）
	tTheGoddess2016Reward_Title[3008868] = 2023 		-- 称号（麒麟才子）
	tTheGoddess2016Reward_Title[3008869] = 2024 		-- 称号（玉树临风）
	tTheGoddess2016Reward_Title[3008870] = 2025 		-- 称号（一表人才）

-- 称号和翅膀的性别
local tTheGoddess2016Reward_Sex = {}
	-- 男性
	tTheGoddess2016Reward_Sex[3008863] = 1
	tTheGoddess2016Reward_Sex[3008868] = 1
	tTheGoddess2016Reward_Sex[3008869] = 1
	tTheGoddess2016Reward_Sex[3008870] = 1
	-- 女性
	tTheGoddess2016Reward_Sex[3008864] = 2
	tTheGoddess2016Reward_Sex[3008865] = 2
	tTheGoddess2016Reward_Sex[3008866] = 2
	tTheGoddess2016Reward_Sex[3008867] = 2

-- 比翼双飞武器外套ID
local tTheGoddess2016Reward_WeaponId = {}
	tTheGoddess2016Reward_WeaponId[1] = {}
	tTheGoddess2016Reward_WeaponId[1]["ItemId"] = 350099 -- 比翼双飞（长武器）
	tTheGoddess2016Reward_WeaponId[1]["ItemAttr"] = "0 0 3 259200 0 0 0 1"
	tTheGoddess2016Reward_WeaponId[2] = {}
	tTheGoddess2016Reward_WeaponId[2]["ItemId"] = 360192 -- 比翼双飞（短武器）
	tTheGoddess2016Reward_WeaponId[2]["ItemAttr"] = "0 0 3 259200 0 0 0 1"

	

local tTheGoddess2016Reward_Log = "0,0,%d,1,12000324,2,%d,1"
	
-----------------------------------------------------------------------------------
function TheGoddess2016Reward_ItemUse(nItemId)
	local nUserId = Get_UserId()
	local nTitleType = tTheGoddess2016Reward_Title[nItemId]
	
	-- 性别判断
	local nUserSex = Get_UserSex(nUserId)
	local nItemSex = tTheGoddess2016Reward_Sex[nItemId]
	if nUserSex ~= nItemSex then
		local sSexText = tTheGoddess2016Reward_Text["Sex"][nItemSex]
		User_TalkChannel2005(string.format(tTheGoddess2016Reward_Text["NoSex"],sSexText),nUserId)
		return
	end
	
	-- 检查是否有该称号
	if User_CheckTitle(nTitleType,nTitleType,nUserId) then
		--nTitleType >= 6000 的为翅膀
		if nTitleType >= tTheGoddess2016Reward_Cont["WingIdBegin"] then
			User_TalkChannel2005(tTheGoddess2016Reward_Text["Have"]["Wing"],nUserId)
		else
			User_TalkChannel2005(tTheGoddess2016Reward_Text["Have"]["Title"],nUserId)
		end
		return
	end
	
	-- 玩家获得称号
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		User_AwardTitle(nTitleType,nTitleType,0,nUserId)
		local sName = tTheGoddess2016Reward_Text["Name"][nTitleType]
		if nTitleType >= tTheGoddess2016Reward_Cont["WingIdBegin"] then
			User_TalkChannel2005(string.format(tTheGoddess2016Reward_Text["Success"]["Wing"],sName),nUserId)
		else
			User_TalkChannel2005(string.format(tTheGoddess2016Reward_Text["Success"]["Title"],sName),nUserId)
		end
		Sys_SaveActionFestivalLog(string.format(tTheGoddess2016Reward_Log,nItemId,nTitleType))
	end
end


-- 比翼双飞礼包选项执行
function TheGoddess2016Reward_OptionInto(nItemId,nType)
	local nNewItemId = tTheGoddess2016Reward_WeaponId[nType]["ItemId"]
	local sItemAttr = tTheGoddess2016Reward_WeaponId[nType]["ItemAttr"]
	local sNewName = Get_ItemtypeName(nNewItemId)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		Item_AddNewItem(nNewItemId,sItemAttr)
		Sys_SaveActionFestivalLog(string.format(tTheGoddess2016Reward_Log,nItemId,nNewItemId))
		User_TalkChannel2005(string.format(tTheGoddess2016Reward_Text[nItemId]["Success"],sNewName))
	end
end

-----------------------------------------------------------------------------------
tItem[3008863] = tItem[3008863] or {}
tItem[3008864] = tItem[3008863] or {}
tItem[3008865] = tItem[3008863] or {}
tItem[3008866] = tItem[3008863] or {}
tItem[3008867] = tItem[3008863] or {}
tItem[3008868] = tItem[3008863] or {}
tItem[3008869] = tItem[3008863] or {}
tItem[3008870] = tItem[3008863] or {}
tItem[3008863]["Function"] = function(nItemId,sItemName)
	TheGoddess2016Reward_ItemUse(nItemId)
end

-- 比翼双飞礼包
tItem[3008913] = tItem[3008913] or {}
tItem[3008913]["Text1-1"] = {111}
tItem[3008913]["Text111"] = tTheGoddess2016Reward_Text[3008913]["Text111"]
tItem[3008913]["tOption1-1"] = {111,112}
tItem[3008913]["Option111"] = tTheGoddess2016Reward_Text[3008913]["Option111"]
tItem[3008913]["Option112"] = tTheGoddess2016Reward_Text[3008913]["Option112"]
tItem[3008913]["OptionFunc111"] = "TheGoddess2016Reward_OptionInto</N>3008913</N>1"
tItem[3008913]["OptionFunc112"] = "TheGoddess2016Reward_OptionInto</N>3008913</N>2"

