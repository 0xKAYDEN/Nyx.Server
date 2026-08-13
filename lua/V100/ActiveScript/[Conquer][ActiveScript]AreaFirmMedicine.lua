------------------------------------------------------------------------------------
--Name:		180514[英文征服][活动脚本]天石商店添加出售打宝区坚固药水
--Purpose:	天石商店添加出售打宝区坚固药水
--Creator: 	傅伟龙
--Created:	2018/05/14
------------------------------------------------------------------------------------
local tAreaFirmMedicine_Cont = {}
-- 古神灵境
tAreaFirmMedicine_Cont["MapId"] = 10250

local tAreaFirmMedicine_Effect = {}
	tAreaFirmMedicine_Effect[1] = "self"
	tAreaFirmMedicine_Effect[2] = "eidolon"



local tAreaFirmMedicine_Medicine = {}
-- 3308935	古神灵境坚固药水	
tAreaFirmMedicine_Medicine["Secs"] = 600
	
tAreaFirmMedicine_Medicine[3308935] = {}
tAreaFirmMedicine_Medicine[3308935]["StatusType"] = {137}
tAreaFirmMedicine_Medicine[3308935]["StatusPower"] = {400}
	
local tAreaFirmMedicine_Log = {}
tAreaFirmMedicine_Log["Medicine"] = "0,0,0,0,18000153,2,3308935,1"

-----------------------------------物品逻辑--------------------------------
-- 药水使用逻辑
function AreaFirmMedicine_AddStatus(nItemId)
	if Item_ChkItem(nItemId) then
		local nMapId = Get_UserMapId()
		if nMapId ~= tAreaFirmMedicine_Cont["MapId"] then
			User_TalkChannel2005(tAreaFirmMedicine_Text["MsgFalse"])
			return
		end
		
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			local nUserId = Get_UserId()
			if tAreaFirmMedicine_Medicine[nItemId] then
				local nSecs = tAreaFirmMedicine_Medicine["Secs"]			
				for i,v in pairs(tAreaFirmMedicine_Medicine[nItemId]["StatusType"]) do
					local nStatus = tAreaFirmMedicine_Medicine[nItemId]["StatusType"][i]
					local nPower = tAreaFirmMedicine_Medicine[nItemId]["StatusPower"][i]
					User_AddRoleStatus(nStatus,nPower,nSecs,0,nSecs,0,0,0,0,nUserId)
				end
			end
			User_EffectAdd(tAreaFirmMedicine_Effect[1],tAreaFirmMedicine_Effect[2])
			Sys_MsgBox(tAreaFirmMedicine_Text["MsgTrue"])
			User_TalkChannel2005(tAreaFirmMedicine_Text["TalkTrue"])
			Sys_SaveActionFestivalLog(tAreaFirmMedicine_Log["Medicine"])
			-- 神纹版本
			Activity2015TheBestHero_DelRoleStatus()
		end
	end
end
	
	
-----------------------------------物品模板--------------------------------
tItemFace[3308935] = 1483
tItem[3308935] = tItem[3308935] or {}
tItem[3308935]["DialogueText"] =tAreaFirmMedicine_Text[3308935]
tItem[3308935]["Text1-1"] = {111,112,113,114}
tItem[3308935]["tOption1-1"] = {111,112}
tItem[3308935]["OptionFunc111"] = "AreaFirmMedicine_AddStatus</N>3308935"
