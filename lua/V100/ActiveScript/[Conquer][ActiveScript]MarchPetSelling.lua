------------------------------------------------------------------------------------
--Name:		170309[简体征服][活动脚本]3月份骑宠活动天石商店部分(3.16-3.29)
--Creator: 	兰瑞妹
--Created:	2017/03/09
------------------------------------------------------------------------------------
-- 命名前缀
-- March_PetSelling_

-- logid	12000656



-- 常量表
local tMarch_PetSelling_Count = {}
	-- 物品使用时限
	tMarch_PetSelling_Count["ActivityTime"] = "2017-04-18 00:00 2017-05-01 23:59"
	
-- 物品打开获得表
local tMarch_PetSelling_Reward = {}
	-- 青丘服饰豪华礼包
	tMarch_PetSelling_Reward[3302575] = {}
	tMarch_PetSelling_Reward[3302575]["Log"] = "0,0,3302575,1,12000656,2,200596[194405][3302451],1"
	tMarch_PetSelling_Reward[3302575]["DeleteItem"] = {}
	tMarch_PetSelling_Reward[3302575]["DeleteItem"][1] = {}
	tMarch_PetSelling_Reward[3302575]["DeleteItem"][1]["Id"] = 3302575
	tMarch_PetSelling_Reward[3302575]["DeleteItem"][1]["Attr"] = "0 1"
	tMarch_PetSelling_Reward[3302575]["RewardItem"] = {}
	tMarch_PetSelling_Reward[3302575]["RewardItem"][1] = {}
	tMarch_PetSelling_Reward[3302575]["RewardItem"][1]["Id"] = 200596
	tMarch_PetSelling_Reward[3302575]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tMarch_PetSelling_Reward[3302575]["RewardItem"][2] = {}
	tMarch_PetSelling_Reward[3302575]["RewardItem"][2]["Id"] = 194405
	tMarch_PetSelling_Reward[3302575]["RewardItem"][2]["Attr"] = "0 1 0 0 0 0 0 1"
	tMarch_PetSelling_Reward[3302575]["RewardItem"][3] = {}
	tMarch_PetSelling_Reward[3302575]["RewardItem"][3]["Id"] = 3302451
	tMarch_PetSelling_Reward[3302575]["RewardItem"][3]["Attr"] = "0 1"
	tMarch_PetSelling_Reward[3302575]["Talk"] = tMarch_PetSelling_Text[3302575]["Talk"]
	tMarch_PetSelling_Reward[3302575]["RewardEffect"] = {}
	tMarch_PetSelling_Reward[3302575]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 九尾天狐赠礼包
	tMarch_PetSelling_Reward[3302576] = {}
	tMarch_PetSelling_Reward[3302576][1] = {}
	tMarch_PetSelling_Reward[3302576][1]["Log"] = "0,0,3302576,1,12000656,2,3302458[200539],1"
	tMarch_PetSelling_Reward[3302576][1]["DeleteItem"] = {}
	tMarch_PetSelling_Reward[3302576][1]["DeleteItem"][1] = {}
	tMarch_PetSelling_Reward[3302576][1]["DeleteItem"][1]["Id"] = 3302576
	tMarch_PetSelling_Reward[3302576][1]["DeleteItem"][1]["Attr"] = "0 1"
	tMarch_PetSelling_Reward[3302576][1]["RewardItem"] = {}
	tMarch_PetSelling_Reward[3302576][1]["RewardItem"][1] = {}
	tMarch_PetSelling_Reward[3302576][1]["RewardItem"][1]["Id"] = 3302311
	tMarch_PetSelling_Reward[3302576][1]["RewardItem"][1]["Attr"] = "0 100"
	tMarch_PetSelling_Reward[3302576][1]["RewardItem"][2] = {}
	tMarch_PetSelling_Reward[3302576][1]["RewardItem"][2]["Id"] = 200539
	tMarch_PetSelling_Reward[3302576][1]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 1"
	tMarch_PetSelling_Reward[3302576][1]["Talk"] = tMarch_PetSelling_Text[3302576][1]["Talk"]
	tMarch_PetSelling_Reward[3302576][1]["RewardEffect"] = {}
	tMarch_PetSelling_Reward[3302576][1]["RewardEffect"]["Effect"] = "angelwing"
	tMarch_PetSelling_Reward[3302576][2] = {}
	tMarch_PetSelling_Reward[3302576][2]["Log"] = "0,0,3302576,1,12000656,2,200539,1"
	tMarch_PetSelling_Reward[3302576][2]["DeleteItem"] = {}
	tMarch_PetSelling_Reward[3302576][2]["DeleteItem"][1] = {}
	tMarch_PetSelling_Reward[3302576][2]["DeleteItem"][1]["Id"] = 3302576
	tMarch_PetSelling_Reward[3302576][2]["DeleteItem"][1]["Attr"] = "0 1"
	tMarch_PetSelling_Reward[3302576][2]["RewardItem"] = {}
	tMarch_PetSelling_Reward[3302576][2]["RewardItem"][1] = {}
	tMarch_PetSelling_Reward[3302576][2]["RewardItem"][1]["Id"] = 200539
	tMarch_PetSelling_Reward[3302576][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tMarch_PetSelling_Reward[3302576][2]["Talk"] = tMarch_PetSelling_Text[3302576][2]["Talk"]
	tMarch_PetSelling_Reward[3302576][2]["RewardEffect"] = {}
	tMarch_PetSelling_Reward[3302576][2]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 永久昊天玄狐礼包
	tMarch_PetSelling_Reward[3302585] = {}
	tMarch_PetSelling_Reward[3302585]["Log"] = "0,0,3302585,1,12000656,2,200595,1"
	tMarch_PetSelling_Reward[3302585]["DeleteItem"] = {}
	tMarch_PetSelling_Reward[3302585]["DeleteItem"][1] = {}
	tMarch_PetSelling_Reward[3302585]["DeleteItem"][1]["Id"] = 3302585
	tMarch_PetSelling_Reward[3302585]["DeleteItem"][1]["Attr"] = "0 1"
	tMarch_PetSelling_Reward[3302585]["RewardItem"] = {}
	tMarch_PetSelling_Reward[3302585]["RewardItem"][1] = {}
	tMarch_PetSelling_Reward[3302585]["RewardItem"][1]["Id"] = 200595
	tMarch_PetSelling_Reward[3302585]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tMarch_PetSelling_Reward[3302585]["RewardEffect"] = {}
	tMarch_PetSelling_Reward[3302585]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 永久狐妖装【魅彩版】礼包
	tMarch_PetSelling_Reward[3302676] = {}
	tMarch_PetSelling_Reward[3302676]["Log"] = "0,0,3302676,1,12000656,2,194405,1"
	tMarch_PetSelling_Reward[3302676]["DeleteItem"] = {}
	tMarch_PetSelling_Reward[3302676]["DeleteItem"][1] = {}
	tMarch_PetSelling_Reward[3302676]["DeleteItem"][1]["Id"] = 3302676
	tMarch_PetSelling_Reward[3302676]["DeleteItem"][1]["Attr"] = "0 1"
	tMarch_PetSelling_Reward[3302676]["RewardItem"] = {}
	tMarch_PetSelling_Reward[3302676]["RewardItem"][1] = {}
	tMarch_PetSelling_Reward[3302676]["RewardItem"][1]["Id"] = 194405
	tMarch_PetSelling_Reward[3302676]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tMarch_PetSelling_Reward[3302676]["RewardEffect"] = {}
	tMarch_PetSelling_Reward[3302676]["RewardEffect"]["Effect"] = "angelwing"
	
--------------------------------------逻辑部分-------------------------------------------
-- 物品使用
-- 青丘服饰豪华礼包
function March_PetSelling_UseNoTimeItem(nItemId)
	if not User_CheckLeftSpace(2) then
		Sys_MsgBox(tMarch_PetSelling_Text[nItemId]["NoSpace"])
		return
	end
	
	RewardTemplate_UseItem(tMarch_PetSelling_Reward[nItemId])
end

-- 九尾天狐赠礼包
function March_PetSelling_UseItem(nItemId)
	local nOpenIndex = 1
	if not Sys_ChkFullTime(tMarch_PetSelling_Count["ActivityTime"]) then
		nOpenIndex = 2
	end
	
	if nOpenIndex == 1 then
		if not User_CheckLeftSpace(1) then
			Sys_MsgBox(tMarch_PetSelling_Text[nItemId][nOpenIndex]["NoSpace"])
			return
		end
	end
	
	RewardTemplate_UseItem(tMarch_PetSelling_Reward[nItemId][nOpenIndex])
end
--------------------------------------物品模块-------------------------------------------
-- 青丘服饰豪华礼包
tItem[3302575] = tItem[3302575] or {}
tItem[3302575]["Function"] = function(nItemId,sItemName)
	March_PetSelling_UseNoTimeItem(nItemId)
end

-- 九尾天狐赠礼包
tItem[3302576] = tItem[3302576] or {}
tItem[3302576]["Function"] = function(nItemId,sItemName)
	March_PetSelling_UseItem(nItemId)
end

-- 永久昊天玄狐礼包
tItem[3302585] = tItem[3302585] or {}
tItem[3302585]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tMarch_PetSelling_Reward[nItemId])
end

-- 永久狐妖装【魅彩版】礼包
tItem[3302676] = tItem[3302676] or {}
tItem[3302676]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tMarch_PetSelling_Reward[nItemId])
end

-- 3月狐狸外套活动称号制作
local tMarch_PetSelling_CoatID = {}
	tMarch_PetSelling_CoatID[146] = 2050
	tMarch_PetSelling_CoatID[147] = 2051
	
-- 仙狐奇缘
-- local tMarch_PetSelling_Reward = {}
	tMarch_PetSelling_Reward[146]={}
	tMarch_PetSelling_Reward[146]["RewardTitle"] = {}
	tMarch_PetSelling_Reward[146]["RewardTitle"]["TitleType"] = 2050
	tMarch_PetSelling_Reward[146]["RewardTitle"]["TitleId"] = 2050
	tMarch_PetSelling_Reward[146]["RewardTitle"]["SaveTime"] = 0
-- 青丘传奇
	tMarch_PetSelling_Reward[147]={}
	tMarch_PetSelling_Reward[147]["RewardTitle"] = {}
	tMarch_PetSelling_Reward[147]["RewardTitle"]["TitleType"] = 2051
	tMarch_PetSelling_Reward[147]["RewardTitle"]["TitleId"] = 2051
	tMarch_PetSelling_Reward[147]["RewardTitle"]["SaveTime"] = 0
	
function March_PetSelling_CheckItemToCoat(nUserId,nFlag)
	local nCoatType = 2 	--坐骑外套
	
	--检测光效狐狸坐骑
	for i = 146 ,147 do
		--检测是否有某个ID的外套
		if User_ChkStorageCoat(nCoatType,i,nUserId) then
			if not User_CheckTitle(tMarch_PetSelling_CoatID[i],tMarch_PetSelling_CoatID[i],nUserId) then
				RewardTemplate_UseItemAndMsg(tMarch_PetSelling_Reward[i],nUserId)
				User_TalkChannel2005(tMarch_PetSelling_Text[i]["Reward"],nUserId)
			end
		else
			if User_CheckTitle(tMarch_PetSelling_CoatID[i],tMarch_PetSelling_CoatID[i],nUserId) then
				User_DeleteTitle(tMarch_PetSelling_CoatID[i],tMarch_PetSelling_CoatID[i],nUserId)
				User_TalkChannel2005(tMarch_PetSelling_Text[i]["Delete"],nUserId)
			end
		end
	end
end
--放进外套
tCheckInItemToCoatStorage["tFunction"] = tCheckInItemToCoatStorage["tFunction"] or {}
table.insert(tCheckInItemToCoatStorage["tFunction"],March_PetSelling_CheckItemToCoat)
--取出外套
tCheckOutItemFromCoatStorage["tFunction"] = tCheckOutItemFromCoatStorage["tFunction"] or {}
table.insert(tCheckOutItemFromCoatStorage["tFunction"],March_PetSelling_CheckItemToCoat)
--外套过时
tDelUserItemFromCoatStorage["tFunction"] = tDelUserItemFromCoatStorage["tFunction"] or {}
table.insert(tDelUserItemFromCoatStorage["tFunction"],March_PetSelling_CheckItemToCoat)


