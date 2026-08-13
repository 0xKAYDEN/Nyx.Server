------------------------------------------------------------------------------------
--Name：        200506[英文征服][活动脚本]6月神兵驾到全民集结（6.2-6.30）
--Creator:      冯子鑫
--Created:     2020-05-08
------------------------------------------------------------------------------------
--任务需求：
-- 制作活动NPC，点击跳转至内嵌页，活动链接稍后提供。
-- 制作背包信，点击后可跳转至线下页面。
------------------------------------------------------------------------------------
--前缀：LegendArrivedWeb_

----------------------------------表配置部分--------------------------------------------
local tLegendArrivedWeb_Web={}
	tLegendArrivedWeb_Web["The_web"]="https://coevent.99.com/composesprintbooster2020"
	
local tLegendArrivedWeb_Log={}
	tLegendArrivedWeb_Log["Overtime"] = "0,0,%d,%d,12001984,2,0,0"

local tLegendArrivedWeb_Cont={}
	--寻路至NPC
	tLegendArrivedWeb_Cont["Npc"] = 26566
	
local tLegendArrivedWeb_Reward = {}
	-- ===初夏应援返利邀请函
	-- ===索引:tLegendArrivedWeb_Reward[3330926]
	-- ===删除: 3330926,1
	tLegendArrivedWeb_Reward[3330926] = {}
	tLegendArrivedWeb_Reward[3330926]["LogId"] = 12001984
	tLegendArrivedWeb_Reward[3330926]["DeleteItem"] = {}
	tLegendArrivedWeb_Reward[3330926]["DeleteItem"][1] = {}
	tLegendArrivedWeb_Reward[3330926]["DeleteItem"][1]["Id"] = 3330926 -- 【库】 3330926 【库里没有该物品】[属性:]
	tLegendArrivedWeb_Reward[3330926]["RewardCultivation"] = {}
	tLegendArrivedWeb_Reward[3330926]["RewardCultivation"]["Value"] = 30 -- 修行值, 【需求】30修行值
	tLegendArrivedWeb_Reward[3330926]["RewardEffect"] = {}
	tLegendArrivedWeb_Reward[3330926]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLegendArrivedWeb_Reward[3330926]["RewardEffect"]["Effect"] = "angelwing"
----------------------------------逻辑部分---------------------------------------------

-------物品打开网页
function LegendArrivedWeb_OpenWeb(nLegendArrivedWeb_ItemId)
	local nLegendArrivedWeb_UserId = Get_UserId()

	--时间判断
	if not Sys_ChkFullTime(tActivityTime["LegendArrivedWeb"]["ActivityTime"]) then
		return
	end
	
	
	if RewardTemplate_UseItemAndMsg(tLegendArrivedWeb_Reward[nLegendArrivedWeb_ItemId]) then
		User_TalkChannel2005(tBackpackLetter_Text[nLegendArrivedWeb_ItemId]["Cultivation"])
		
		User_SendWebDialog(tLegendArrivedWeb_Web["The_web"],nLegendArrivedWeb_UserId)
		NpcPosition_PathFind(tLegendArrivedWeb_Cont["Npc"])
	end
end

-- 过期删除
function LegendArrivedWeb_ChkTimeOut(nLegendArrivedWeb_ItemId,sLegendArrivedWeb_ItemName)
	-- 判断物品在背包
	local nLegendArrivedWeb_UserId = Get_UserId()
	if not Item_ChkItem(nLegendArrivedWeb_ItemId) then
		return
	end

	--时间判断
	if not Sys_ChkFullTime(tActivityTime["LegendArrivedWeb"]["ActivityTime"]) then
		if Item_ChkItem(nLegendArrivedWeb_ItemId) and Item_DelItem(nLegendArrivedWeb_ItemId) then
			User_TalkChannel2005(tBackpackLetter_Text[nLegendArrivedWeb_ItemId]["TimeOut"])
			Sys_MsgBox(tBackpackLetter_Text[nLegendArrivedWeb_ItemId]["TimeOut"])
		end
		return
	end

	LinkItemGossipFunc_New(nLegendArrivedWeb_ItemId,"1-1")
end
-------npc打开网页
function LegendArrivedWeb_NpcOpenWeb()
	local nLegendArrivedWeb_UserId = Get_UserId()

	--时间判断
	if not Sys_ChkFullTime(tActivityTime["LegendArrivedWeb"]["ActivityTime"]) then
		return
	end

	
		
	User_SendWebDialog(tLegendArrivedWeb_Web["The_web"],nLegendArrivedWeb_UserId)
	
end
-----------------------------物品部分---------------------------------------------

-- 3330926,'初夏应援返利邀请函'
tItemFace[3330926] = 2075
tItem[3330926] = tItem[3330926] or {}
tItem[3330926]["DialogueText"] = tLegendArrivedWeb_Text[3330926]
tItem[3330926]["Text1-1"] = {111,112}
tItem[3330926]["Function"]=function(nLegendArrivedWeb_ItemId,sLegendArrivedWeb_ItemName)
	LegendArrivedWeb_ChkTimeOut(nLegendArrivedWeb_ItemId,sLegendArrivedWeb_ItemName)
end
tItem[3330926]["tOption1-1"] = {111}
tItem[3330926]["OptionFunc111"] = "LegendArrivedWeb_OpenWeb</N>3330926"--打开网页

-----------------------------NPC部分---------------------------------------------
tNpcFace[2551] = 57
tNpcGossip[26566]= tNpcGossip[26566] or DefaultNpc:new{}
tNpcGossip[26566]["OptionHidden"] = 1
tNpcGossip[26566]["DialogueText"] = tLegendArrivedWeb_Text[26566]
--活动中
tNpcGossip[26566]["Text1-1"] = {111,112,113,114}
tNpcGossip[26566]["tOption1-1"] = {111,112}
tNpcGossip[26566]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tActivityTime["LegendArrivedWeb"]["ActivityTime"])
end
--打开网页
tNpcGossip[26566]["OptionFunc111"] = "LegendArrivedWeb_NpcOpenWeb"
