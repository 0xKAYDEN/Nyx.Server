------------------------------------------------------------------------------------
--Name：        190703[英文征服][活动脚本]COP宣传NPC和背包信制作
--Creator:      茅志伟
--Created:     2019/07/03
------------------------------------------------------------------------------------

--命名前缀 tCOPBackpackLetter_
--lua.ini = 41387
-- 41387 = V100\ActiveScript\[Conquer][ActiveScript]COPBackpackLetter.lua
-- 41387 = V100\活动脚本\[征服][活动脚本]COP宣传NPC和背包信制作.lua

--------------------------------------逻辑部分
--跳转线下页面
function COPBackpackLetter_SendWebPage(COPBackpackLetter_Index)
	if COPBackpackLetter_Index == nil then
		User_SendWebPage("https://coevent.99.com/ipad/copegproulette/")
	else
		User_SendWebPage("https://play.google.com/store/apps/details?id=com.Tq.CQPokerClub")
	end
end 


---------------------------------------------------Npc对白
tNpcFace[2032] = 42
tNpcGossip[24475] = tNpcGossip[24475] or DefaultNpc:new{}
tNpcGossip[24475]["OptionHidden"] = 1
tNpcGossip[24475]["DialogueText"] = tCOPBackpackLetter_Text[24475]
--活动前
tNpcGossip[24475]["Text1-1"] = {111,112,113,114}
tNpcGossip[24475]["tOption1-1"] = {111}
tNpcGossip[24475]["ChkFunc1-1"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["COPBackpackLetter"]["ActionTime"])
end
-- --活动后
-- tNpcGossip[24475]["Text1-2"] = {121}
-- tNpcGossip[24475]["tOption1-2"] = {121}
-- tNpcGossip[24475]["ChkFunc1-2"] = function ()
	-- return CommonFunc_GetAfterActivityTime(tActivityTime["COPBackpackLetter"]["ActionTime"])
-- end
--活动中
tNpcGossip[24475]["Text1-2"] = {121,122}
tNpcGossip[24475]["tOption1-2"] = {121,123,122}
tNpcGossip[24475]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tActivityTime["COPBackpackLetter"]["ActionTime"])
end
tNpcGossip[24475]["OptionFunc121"] = "COPBackpackLetter_SendWebPage"
tNpcGossip[24475]["OptionFunc123"] = "COPBackpackLetter_SendWebPage</N>1"

tNpcGossip[26708] = tNpcGossip[24475]
tNpcGossip[26724] = tNpcGossip[24475]
tNpcGossip[26725] = tNpcGossip[24475]
tNpcGossip[26726] = tNpcGossip[24475]
tNpcGossip[26727] = tNpcGossip[24475]
tNpcGossip[26728] = tNpcGossip[24475]
tNpcGossip[26729] = tNpcGossip[24475]
tNpcGossip[26730] = tNpcGossip[24475]
tNpcGossip[26731] = tNpcGossip[24475]
tNpcGossip[26732] = tNpcGossip[24475]
tNpcGossip[26733] = tNpcGossip[24475]
tNpcGossip[26734] = tNpcGossip[24475]
tNpcGossip[26735] = tNpcGossip[24475]
tNpcGossip[26736] = tNpcGossip[24475]
tNpcGossip[26737] = tNpcGossip[24475]
tNpcGossip[26738] = tNpcGossip[24475]
tNpcGossip[26739] = tNpcGossip[24475]
tNpcGossip[26740] = tNpcGossip[24475]
tNpcGossip[26741] = tNpcGossip[24475]
tNpcGossip[26742] = tNpcGossip[24475]
tNpcGossip[26743] = tNpcGossip[24475]

--背包信
tItemFace[3322453] = 795
tItem[3322453] = tItem[3322453] or {}
tItem[3322453]["DialogueText"] = tCOPBackpackLetter_Text[3322453]
tItem[3322453]["Text1-1"] = {111,112,113,114,115}
tItem[3322453]["tOption1-1"] = {111}
tItem[3322453]["OptionFunc111"] = "COPBackpackLetter_SendWebPage"

-- tItem[3322197]["Function"] = function(nItemId,sItemName)
	-- COPGoOnlinePack_ChkTime(nItemId)
-- end
