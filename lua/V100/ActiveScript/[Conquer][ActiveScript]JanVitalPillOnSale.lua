------------------------------------------------------------------------------------
--Name:		151213[英文征服][活动脚本]1月回气丹促销(1.14)
--Purpose:	1月回气丹促销
--Creator: 	范琼
--Created:	2015/12/13
------------------------------------------------------------------------------------

-- 命名前缀
-- tJanVitalPillOnSale_

--LOg说明：
--tJanVitalPillOnSale_Item[3008073]["Log"] ：打开喜气洋洋回气包获得气力值
--tJanVitalPillOnSale_Item[3008074]["Log"] ：打开心花怒放回气包获得气力值

local tJanVitalPillOnSale_Item = {}
--喜气洋洋回气包
tJanVitalPillOnSale_Item[3008073] = {}
tJanVitalPillOnSale_Item[3008073]["Power"] = 10000

--心花怒放回气包
tJanVitalPillOnSale_Item[3008074] = {}
tJanVitalPillOnSale_Item[3008074]["Power"] = 25000

--log
tJanVitalPillOnSale_Item[3008073]["Log"] = "0,0,0,0,12000278,1[1],%s,%s" 
tJanVitalPillOnSale_Item[3008074]["Log"] = "0,0,0,0,12000278,1[2],%s,%s" 

-------------------------逻辑------------------------------------------------------
function JanVitalPillOnSale_OpenVitalPillPack(nItemId)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		if tJanVitalPillOnSale_Item[nItemId] and tJanVitalPillOnSale_Item[nItemId]["Power"] then
			User_AddStrengthValue(tJanVitalPillOnSale_Item[nItemId]["Power"])
			Sys_SaveActionFestivalLog(string.format(tJanVitalPillOnSale_Item[nItemId]["Log"],"12",tostring(tJanVitalPillOnSale_Item[nItemId]["Power"])))
			User_TalkChannel2005(string.format(tJanVitalPillOnSale_UseItem["GetPower"],tJanVitalPillOnSale_Item[nItemId]["Power"]))
		end
	else
		local sItemName = Get_ItemtypeName(nItemId)
		User_TalkChannel2005(string.format(tJanVitalPillOnSale_UseItem["NoItem"],sItemName))
	end
end


------------------------物品模版----------------------------------------------------

--喜气洋洋回气包
tItem[3008073] = tItem[3008073] or {}
tItem[3008073]["Function"] = function(nItemId,sItemName)
	local sTips = string.format(tJanVitalPillOnSale_UseItem["Tips"],tJanVitalPillOnSale_Item[3008073]["Power"])
	Sys_MsgBox(sTips,"JanVitalPillOnSale_OpenVitalPillPack</N>"..nItemId)
end

--心花怒放回气包
tItem[3008074] = tItem[3008074] or {}
tItem[3008074]["Function"] = function(nItemId,sItemName)
	local sTips = string.format(tJanVitalPillOnSale_UseItem["Tips"],tJanVitalPillOnSale_Item[3008074]["Power"])
	Sys_MsgBox(sTips,"JanVitalPillOnSale_OpenVitalPillPack</N>"..nItemId)
end