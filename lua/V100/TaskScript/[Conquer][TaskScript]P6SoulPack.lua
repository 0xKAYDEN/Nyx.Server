------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]8月老玩家回归礼包及发奖
--Creator: 		翁清海
--Created:		2016/07/08
------------------------------------------------------------------------------------

--命名前缀
-- P6_Soul_Pack_

local tP6_Soul_Pack_Log = {}
	tP6_Soul_Pack_Log["SoulRefine"] = "0,0,%d,1,12000215,2,%d,1"

local tP6_Soul_Pack_Item = {}
	tP6_Soul_Pack_Item[3300000] = {}
	tP6_Soul_Pack_Item[3300000]["Attr"] = "0 1 3"

function P6_Soul_Pack_Sel(nThisItemId,nAwardItemId,sOptionText)
	
	local sOptionText = tP6_Soul_Pack_Text[nThisItemId][sOptionText]
	
	--重设对白文字
	tItem[nThisItemId]["Text411"] = string.format(tP6_Soul_Pack_Text[nThisItemId]["Text411"],sOptionText)
	--重设选项函数
	tItem[nThisItemId]["OptionFunc411"] = "P6_Soul_Pack_Award</N>"..nThisItemId.."</N>"..nAwardItemId
	
	LinkItemGossipFunc_New(nThisItemId,"4-1")
	
	
end

--确认选择获得物品
function P6_Soul_Pack_Award(nThisItemId,nAwardItemId)
	
	if not Item_ChkItem(nThisItemId) then
		User_TalkChannel2005(tP6_Soul_Pack_Text["NoThisItem"])
		return
	end
	
	if not Item_DelItem(nThisItemId) then
		return
	end
	
	if not Item_AddNewItem(nAwardItemId, tP6_Soul_Pack_Item[nThisItemId]["Attr"]) then
		return
	end
	
	local sLog = string.format(tP6_Soul_Pack_Log["SoulRefine"],nThisItemId,nAwardItemId)
	Sys_SaveActionFestivalLog(sLog)
	
	local sAwardText = string.format(tP6_Soul_Pack_Text["ExchangeSucc"],Get_ItemtypeName(nAwardItemId).."(B)")
	
	User_TalkChannel2005(sAwardText)
	User_EffectAdd("self","angelwing")
end

--六阶防具神魂礼包
tItem[3300000] = tItem[3300000] or {}

tItem[3300000]["Text1-1"] = {111}
tItem[3300000]["Text111"] = tP6_Soul_Pack_Text[3300000]["Text111"]
tItem[3300000]["tOption1-1"] = {111,112,113,114,115,116,117,118}
tItem[3300000]["Option111"] = tP6_Soul_Pack_Text[3300000]["Option111"]
tItem[3300000]["OptionFunc111"] = "P6_Soul_Pack_Sel</N>3300000</N>822053</S>Option111"
tItem[3300000]["Option112"] = tP6_Soul_Pack_Text[3300000]["Option112"]
tItem[3300000]["OptionFunc112"] = "P6_Soul_Pack_Sel</N>3300000</N>822055</S>Option112"
tItem[3300000]["Option113"] = tP6_Soul_Pack_Text[3300000]["Option113"]
tItem[3300000]["OptionFunc113"] = "P6_Soul_Pack_Sel</N>3300000</N>820071</S>Option113"
tItem[3300000]["Option114"] = tP6_Soul_Pack_Text[3300000]["Option114"]
tItem[3300000]["OptionFunc114"] = "P6_Soul_Pack_Sel</N>3300000</N>820072</S>Option114"
tItem[3300000]["Option115"] = tP6_Soul_Pack_Text[3300000]["Option115"]
tItem[3300000]["OptionFunc115"] = "P6_Soul_Pack_Sel</N>3300000</N>824017</S>Option115"
tItem[3300000]["Option116"] = tP6_Soul_Pack_Text[3300000]["Option116"]
tItem[3300000]["OptionFunc116"] = "P6_Soul_Pack_Sel</N>3300000</N>823055</S>Option116"
tItem[3300000]["Option117"] = tP6_Soul_Pack_Text[3300000]["Option117"]
tItem[3300000]["OptionPoint117"] = "2-1"
tItem[3300000]["Option118"] = tP6_Soul_Pack_Text[3300000]["Option118"]

tItem[3300000]["Text2-1"] = {211}
tItem[3300000]["Text211"] = tP6_Soul_Pack_Text[3300000]["Text211"]
tItem[3300000]["tOption2-1"] = {211,212,213,214,215,216}
tItem[3300000]["Option211"] = tP6_Soul_Pack_Text[3300000]["Option211"]
tItem[3300000]["OptionFunc211"] = "P6_Soul_Pack_Sel</N>3300000</N>823057</S>Option211"
tItem[3300000]["Option212"] = tP6_Soul_Pack_Text[3300000]["Option212"]
tItem[3300000]["OptionFunc212"] = "P6_Soul_Pack_Sel</N>3300000</N>823056</S>Option212"
tItem[3300000]["Option213"] = tP6_Soul_Pack_Text[3300000]["Option213"]
tItem[3300000]["OptionFunc213"] = "P6_Soul_Pack_Sel</N>3300000</N>821032</S>Option213"
tItem[3300000]["Option214"] = tP6_Soul_Pack_Text[3300000]["Option214"]
tItem[3300000]["OptionFunc214"] = "P6_Soul_Pack_Sel</N>3300000</N>821031</S>Option214"
tItem[3300000]["Option215"] = tP6_Soul_Pack_Text[3300000]["Option215"]
tItem[3300000]["OptionPoint215"] = "1-1"
tItem[3300000]["Option216"] = tP6_Soul_Pack_Text[3300000]["Option216"]

tItem[3300000]["Text4-1"] = {411}
tItem[3300000]["Text411"] = tP6_Soul_Pack_Text[3300000]["Text411"]
tItem[3300000]["tOption4-1"] = {411,412}
tItem[3300000]["Option411"] = tP6_Soul_Pack_Text[3300000]["Option411"]
tItem[3300000]["OptionFunc411"] = "P6_Soul_Pack_Sel</N>3300000</N>801102"
tItem[3300000]["Option412"] = tP6_Soul_Pack_Text[3300000]["Option412"]