--------------------------------------------------------------------------------
---Name:160106[英文征服][活动脚本]2月情人节促销NPC制作(02.04)
--Creator: 	陈莺
--Created:	2016-01-06
--------------------------------------------------------------------------------
--logid:12000297
-- 3008480,双截棍高手礼包
-- 3008481,双截棍宗师礼包
-- 3008482,侠义头带礼包
-- 3008483,英豪头带礼包
-- 3008484,仁杰战衣礼包
-- 3008485,神武战衣礼包
-- 3008486,情人之泪礼包

--命名规范
--ValentinePromote_

----------------------------------------数据部分-------------------------------------------
local tValentinePromote_ItemId= {}
	tValentinePromote_ItemId[3008480] = {617119,"0 1 0 0 0 0 0 3 0 0 4 255 255",1}
	tValentinePromote_ItemId[3008481] = {617119,"0 1 0 0 0 0 0 5 0 0 6 255 255",1}
	tValentinePromote_ItemId[3008482] = {148069,"0 1 0 0 0 0 0 3 0 0 4 255",1}
	tValentinePromote_ItemId[3008483] = {148069,"0 1 0 0 0 0 0 5 0 0 6 255 255",1}
	tValentinePromote_ItemId[3008484] = {138069,"0 1 0 0 0 0 0 3 0 0 4 255",1}
	tValentinePromote_ItemId[3008485] = {138069,"0 1 0 0 0 0 0 5 0 0 6 255 255",1}
	tValentinePromote_ItemId[3008486] = {192565,"0 2",2}

--log表
local tValentinePromote_Log = {}
	tValentinePromote_Log["Get"] = "0,0,%d,1,12000297,2,%d,%d"

local tValentinePromote_Data = {}
	tValentinePromote_Data["Space"] = 1
	tValentinePromote_Data[3008486] = 3008486
----------------------------------------物品逻辑部分-------------------------------------------
function ValentinePromote_UseItem(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	if nItemId == tValentinePromote_Data[3008486] then --情人泪礼包
		if not User_CheckLeftSpace(tValentinePromote_Data["Space"]) then
			User_TalkChannel2005(tValentinePromote_Text["NotSpace"])
			return
		end
	end
	if Item_DelItem(nItemId) then
		local nAddItem = tValentinePromote_ItemId[nItemId][1]
		local sItemAttr = tValentinePromote_ItemId[nItemId][2]
		local nNum = tValentinePromote_ItemId[nItemId][3]
		local sLog = string.format(tValentinePromote_Log["Get"],nItemId,nAddItem,nNum)
		Item_AddNewItem(nAddItem,sItemAttr)
		User_TalkChannel2005(tValentinePromote_Text[nItemId])
		Sys_SaveActionFestivalLog(sLog)
	end
end
--------------------------------------物品模板----------------------------------------------
-- 3008480 双截棍高手礼包
tItem[3008480] = tItem[3008480] or {}
tItem[3008480]["Function"] = function(nItemId,sItemName)
	ValentinePromote_UseItem(nItemId)
end
-- 3008481-3008486
for i = 3008481,3008486 do
	tItem[i] = tItem[3008480]
end