------------------------------------------------------------------------------------
--Name：            180703[英文征服][活动脚本]捐赠冲刺周线上制作
--Creator:      杨艳
--Created:     2018/07/03
------------------------------------------------------------------------------------

--命名前缀
--DonateWeek_

--logid： 12001118

-------------------------------------------数据部分-----------------------------------------
--基本数据
local tDonateWeek_Data = {}
	
	--23080,'捐赠大使
	tDonateWeek_Data["NPC"] = {}
	tDonateWeek_Data["NPC"]["CellX"] = 339 
	tDonateWeek_Data["NPC"]["CellY"] = 485
	tDonateWeek_Data["NPC"]["Mapid"] = 1002
	tDonateWeek_Data["NPC"]["nNpcId"] = 23080
	
-- 3310113,'50份物资',9
-- 3310114,'500份物资',
-- 3310115,'10000份物资
	tDonateWeek_Data["MeritValue"] = {}
	tDonateWeek_Data["MeritValue"][3310113] = 5  --掩码值记录以千万为单位，+5代表5千万
	tDonateWeek_Data["MeritValue"][3310114] = 50
	tDonateWeek_Data["MeritValue"][3310115] = 1000
	
	
	
	tDonateWeek_Data["ItemId"] = {}
	-- tDonateWeek_Data["ItemId"][3310113] = 50
	-- tDonateWeek_Data["ItemId"][3310114] = 500
	-- tDonateWeek_Data["ItemId"][3310115] = 10000
	
	tDonateWeek_Data["ItemId"][3310113] = tDonateWeek_Text[23080]["Option211"]
	tDonateWeek_Data["ItemId"][3310114] = tDonateWeek_Text[23080]["Option212"]
	tDonateWeek_Data["ItemId"][3310115] = tDonateWeek_Text[23080]["Option213"]
	
	tDonateWeek_Data["ItemIdResours"] = {}
	tDonateWeek_Data["ItemIdResours"][3310113] = "37.5 million"
	tDonateWeek_Data["ItemIdResours"][3310114] = "350 million"
	tDonateWeek_Data["ItemIdResours"][3310115] = "6.3 billion"
	

--stc掩码表
local tDonateWeek_Stc = {}
	tDonateWeek_Stc["EventType"] = {}
	tDonateWeek_Stc["DataType"] = {}
	tDonateWeek_Stc["Data"] = {}
	
	--记录玩家上交物资 
	tDonateWeek_Stc["EventType"][1] = 179
	tDonateWeek_Stc["DataType"][1] = 59
	

local tDonateWeek_Log = {}	
	tDonateWeek_Log["DelItem"] = "0,0,%d,1,12001118,2,0,0"	
	tDonateWeek_Log["DelAllItem"] = "0,0,%d,%d,12001118,2,0,0"	
	
	tDonateWeek_Log["EmoneyLog"] = {}
	tDonateWeek_Log["EmoneyLog"][3310113] = "350	21540	0	0	1	"
	tDonateWeek_Log["EmoneyLog"][3310114] = "350	21541	0	0	1	"
	tDonateWeek_Log["EmoneyLog"][3310115] = "350	21542	0	0	1	"
	
--网页
local tDonateWeek_Web = {}
	-- 线下页面
	tDonateWeek_Web[1]="https://coevent.99.com/contribution1807/"

---------------------------------逻辑部分--------------------------------------------- 
function DonateWeek_GoDonating()
	local nUserId = Get_UserId()
	User_SendWebDialog(tDonateWeek_Web[1],nUserId)
end

--打开商店
function DonateWeek_Open(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["DonateWeek"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end	
    
	User_OpenDialog(0,nNpcId)
end	

--上交物资
function DonateWeek_HandItem(nNpcId,nItemId)
	local nUserId = Get_UserId()
	if CommonFunc_GetBeforeActivityTime(tActivityTime["DonateWeek"]["ActivityTime"]) then
		return
	end
	if not Sys_ChkFullTime(tActivityTime["DonateWeek"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end	
	if not Item_ChkItem(nItemId) then
		User_TalkChannel2005(tDonateWeek_Text["Sys"]["NoItem"])
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	if Item_DelItem(nItemId) then
		local sDelItemLog = string.format(tDonateWeek_Log["DelItem"],nItemId)
		Sys_SaveActionFestivalLog(sDelItemLog)
		Sys_SaveEmoneyBuy(tDonateWeek_Log["EmoneyLog"][nItemId]) 
		
		local nEvent = tDonateWeek_Stc["EventType"][1]
		local nType = tDonateWeek_Stc["DataType"][1]
		local nDate = tDonateWeek_Data["MeritValue"][nItemId]
		Task_AddStatistic(nEvent,nType,nDate,1,nUserId)
		User_TalkChannel2005(string.format(tDonateWeek_Text["Sys"]["GetMeritValue"],tDonateWeek_Data["ItemId"][nItemId],tDonateWeek_Data["ItemIdResours"][nItemId]))
		LinkNpcGossipFunc_New(nNpcId,"2-1")
	end
	
end

function DonateWeek_GoDonate(nNpcId)
	--时间判断
	if CommonFunc_GetBeforeActivityTime(tActivityTime["DonateWeek"]["ActivityTime"]) then
		return
	end
	if not Sys_ChkFullTime(tActivityTime["DonateWeek"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end	
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end


--物品导航
function DonateWeek_GoNpc(nItemId)
	local nUserId = Get_UserId()
	--时间判断
	if  CommonFunc_GetBeforeActivityTime(tActivityTime["DonateWeek"]["ItemUseTime"]) then
		return
	end
	
	if not Sys_ChkFullTime(tActivityTime["DonateWeek"]["ItemUseTime"]) then
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) then
			if Item_DelAllItemByType(nItemId) then
				local sDelItemLog = string.format(tDonateWeek_Log["DelAllItem"],nItemId,nNum)
				Sys_SaveActionFestivalLog(sDelItemLog)
				User_TalkChannel2005(tDonateWeek_Text["Sys"]["OverTime"])
			end
		end	
		return
	end
	
	local nPosX = tDonateWeek_Data["NPC"]["CellX"]
	local nPosY = tDonateWeek_Data["NPC"]["CellY"]
	local nMapId = tDonateWeek_Data["NPC"]["Mapid"]
	local nNpcId = tDonateWeek_Data["NPC"]["nNpcId"]
	
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end


----------------------------------------------------- npc部分----------------------------------------------------------

-- 23080,'捐赠大使
tNpcFace[3622] = 64  --头像

tNpcGossip[23080] = tNpcGossip[23080] or DefaultNpc:new{}
tNpcGossip[23080]["OptionHidden"] = 1

--活动时间前
tNpcGossip[23080]["Text1-1"] = {111,112,113}
tNpcGossip[23080]["Text111"] = tDonateWeek_Text[23080]["Text111"]
tNpcGossip[23080]["Text112"] = tDonateWeek_Text[23080]["Text112"]
tNpcGossip[23080]["Text113"] = tDonateWeek_Text[23080]["Text113"]

tNpcGossip[23080]["tOption1-1"] = {111}
tNpcGossip[23080]["Option111"] = tDonateWeek_Text[23080]["Option111"]
tNpcGossip[23080]["ChkFunc1-1"] = function()
	
	return CommonFunc_GetBeforeActivityTime(tActivityTime["DonateWeek"]["ActivityTime"])
end

--活动时间后
tNpcGossip[23080]["Text1-2"] = {121}
tNpcGossip[23080]["Text121"] = tDonateWeek_Text[23080]["Text121"]
tNpcGossip[23080]["tOption1-2"] = {121}
tNpcGossip[23080]["Option121"] = tDonateWeek_Text[23080]["Option121"]
tNpcGossip[23080]["ChkFunc1-2"] = function()
	return not Sys_ChkFullTime(tActivityTime["DonateWeek"]["ActivityTime"])
end

--活动时间中
tNpcGossip[23080]["Text1-3"] = {131,132,133,134,135,136,137,138,139,1310,1311,1312,1313}
tNpcGossip[23080]["Text131"] = tDonateWeek_Text[23080]["Text131"] 
tNpcGossip[23080]["Text132"] = tDonateWeek_Text[23080]["Text132"] 
tNpcGossip[23080]["Text133"] = tDonateWeek_Text[23080]["Text133"] 
tNpcGossip[23080]["Text134"] = tDonateWeek_Text[23080]["Text134"] 
tNpcGossip[23080]["Text135"] = tDonateWeek_Text[23080]["Text135"] 
tNpcGossip[23080]["Text136"] = tDonateWeek_Text[23080]["Text136"]  
tNpcGossip[23080]["Text137"] = tDonateWeek_Text[23080]["Text137"]  
tNpcGossip[23080]["Text138"] = tDonateWeek_Text[23080]["Text138"]  
tNpcGossip[23080]["Text139"] = tDonateWeek_Text[23080]["Text139"]  
tNpcGossip[23080]["Text1310"] = tDonateWeek_Text[23080]["Text1310"]  
tNpcGossip[23080]["Text1311"] = tDonateWeek_Text[23080]["Text1311"]  
tNpcGossip[23080]["Text1312"] = tDonateWeek_Text[23080]["Text1312"]  
tNpcGossip[23080]["Text1313"] = tDonateWeek_Text[23080]["Text1313"]  
tNpcGossip[23080]["Text1314"] = tDonateWeek_Text[23080]["Text1314"] 
tNpcGossip[23080]["Text1315"] = tDonateWeek_Text[23080]["Text1315"] 
tNpcGossip[23080]["Text1316"] = tDonateWeek_Text[23080]["Text1316"] 

tNpcGossip[23080]["tOption1-3"] = {131,132,133,134}
tNpcGossip[23080]["Option131"] = tDonateWeek_Text[23080]["Option131"]
tNpcGossip[23080]["OptionFunc131"] = "DonateWeek_GoDonate</N>23080"

tNpcGossip[23080]["Option132"] = tDonateWeek_Text[23080]["Option132"]
tNpcGossip[23080]["OptionFunc132"] = "DonateWeek_Open</N>23080"

tNpcGossip[23080]["Option133"] = tDonateWeek_Text[23080]["Option133"]
tNpcGossip[23080]["OptionPoint133"] = "2-2"

tNpcGossip[23080]["Option134"] = tDonateWeek_Text[23080]["Option134"]
tNpcGossip[23080]["OptionFunc134"] = "DonateWeek_GoDonating"

tNpcGossip[23080]["ChkFunc1-3"] = function()

	return  Sys_ChkFullTime(tActivityTime["DonateWeek"]["ActivityTime"])
end

tNpcGossip[23080]["Text2-1"] = {211}
tNpcGossip[23080]["Text211"] = tDonateWeek_Text[23080]["Text211"]

tNpcGossip[23080]["tOption2-1"] = {211,212,213}
tNpcGossip[23080]["Option211"] = tDonateWeek_Text[23080]["Option211"]
tNpcGossip[23080]["Option212"] = tDonateWeek_Text[23080]["Option212"]
tNpcGossip[23080]["Option213"] = tDonateWeek_Text[23080]["Option213"]

tNpcGossip[23080]["OptionFunc211"] = "DonateWeek_HandItem</N>23080</N>3310113"
tNpcGossip[23080]["OptionFunc212"] = "DonateWeek_HandItem</N>23080</N>3310114"
tNpcGossip[23080]["OptionFunc213"] = "DonateWeek_HandItem</N>23080</N>3310115"

--查看捐赠好礼。
tNpcGossip[23080]["Text2-2"] = {221,222,223,224,225,226,227}
tNpcGossip[23080]["Text221"] = tDonateWeek_Text[23080]["Text221"]
tNpcGossip[23080]["Text222"] = tDonateWeek_Text[23080]["Text222"]
tNpcGossip[23080]["Text223"] = tDonateWeek_Text[23080]["Text223"]
tNpcGossip[23080]["Text224"] = tDonateWeek_Text[23080]["Text224"]
tNpcGossip[23080]["Text225"] = tDonateWeek_Text[23080]["Text225"]
tNpcGossip[23080]["Text226"] = tDonateWeek_Text[23080]["Text226"]
tNpcGossip[23080]["Text227"] = tDonateWeek_Text[23080]["Text227"]

tNpcGossip[23080]["tOption2-2"] = {221}
tNpcGossip[23080]["Option221"] = tDonateWeek_Text[23080]["Option221"]
tNpcGossip[23080]["OptionPoint221"] = "1-3"



---------------------------------物品部分---------------------------------------------
-- 3310113,'50份物资',9
-- 3310114,'500份物资',
-- 3310115,'10000份物资

tItem[3310113] = tItem[3310113] or {}
tItem[3310113]["Function"] = function(nItemId,sItemName)
	DonateWeek_GoNpc(nItemId)
end

tItem[3310114] = tItem[3310113] or {}
tItem[3310115] = tItem[3310113] or {}







