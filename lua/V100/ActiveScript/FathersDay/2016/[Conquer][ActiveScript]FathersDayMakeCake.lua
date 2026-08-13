------------------------------------------------------------------------------------
--Name:			160405[简体征服][活动脚本]2016父亲节之皇帝的礼物（6.18-6.22）
--Purpose:		父亲节之皇帝的礼物（6.18-6.22）
--Creator:		张世超
--Created:		2016/04/05
------------------------------------------------------------------------------------
-- 40210 = V100\活动脚本\父亲节\2016\[征服][活动脚本]父亲节之皇帝的礼物.lua
-- 40210 = V100\ActiveScript\FathersDay\2016\[Conquer][ActiveScript]FathersDayMakeCake.lua

--前缀	FathersDay_MakeCake_

-- ##stc(69,26)    一天制作蛋糕的次数
-- ##stc(69,27)    一天上交蛋糕的次数
--------------------------------------------------------------------------------------相关数据表定义

local tFathersDay_MakeCake_Data = {}
	--活动时间相关
	tFathersDay_MakeCake_Data["BeforeActivityTime"] = "2017-01-01 00:00 2017-06-14 23:59"
	tFathersDay_MakeCake_Data["ActivityTime"] = "2017-06-15 00:00 2017-06-21 23:59"
	
	
	tFathersDay_MakeCake_Data["Metempsychosis"] = 0
	tFathersDay_MakeCake_Data["Level"] = 80
	tFathersDay_MakeCake_Data["Space"] = 1
	tFathersDay_MakeCake_Data["Effect"] = "zf2-e280"

	
local tFathersDay_MakeCake_Data_Log = {}
	tFathersDay_MakeCake_Data_Log["StartMisson"] = "0,0,0,0,10000168,1[1],0,0"
	tFathersDay_MakeCake_Data_Log["EndMisson"] = "0,0,0,0,10000168,1[2],0,0"
	tFathersDay_MakeCake_Data_Log["FestivalGeneralPackage"] = "0,0,%s,1,10000168,2,3003625,1"
	tFathersDay_MakeCake_Data_Log["GetNorGift"] = "0,0,%s,1,10000168,2,%s,1"
	
	tFathersDay_MakeCake_Data_Log["LogId"] = 10000168
	tFathersDay_MakeCake_Data_Log["FestivalId"] = 994	--未定，整合后修改


--掩码记录
local tFathersDay_MakeCake_Stc = {}
	tFathersDay_MakeCake_Stc["EventType"] = 69
	tFathersDay_MakeCake_Stc["DataType"] = {}
	tFathersDay_MakeCake_Stc["DataType"]["MakeTimes"] = 26
	tFathersDay_MakeCake_Stc["DataType"]["HandInTimes"] = 27
	
	tFathersDay_MakeCake_Stc["MakeMaxTimes"] = 20
	tFathersDay_MakeCake_Stc["HandInMaxTimes"] = 10
	
local tFathersDay_MakeCake_Award = {}
	tFathersDay_MakeCake_Award[725062] = 3003731
	tFathersDay_MakeCake_Award[725063] = 3003732
	tFathersDay_MakeCake_Award[725064] = 3003733
	
	

local tFathersDay_MakeCake_MonsterDrop = {}
tFathersDay_MakeCake_MonsterDrop[1] = {}
tFathersDay_MakeCake_MonsterDrop[1]["ItemChanceSum"] = 10000						

tFathersDay_MakeCake_MonsterDrop[1][1] = {}
tFathersDay_MakeCake_MonsterDrop[1][1]["RandomItemChanceType"] = 2			
tFathersDay_MakeCake_MonsterDrop[1][1]["ItemChance"] = 900						
tFathersDay_MakeCake_MonsterDrop[1][1]["Item_1"] = 711204							

tFathersDay_MakeCake_MonsterDrop[1][2] = {}
tFathersDay_MakeCake_MonsterDrop[1][2]["RandomItemChanceType"] = 2
tFathersDay_MakeCake_MonsterDrop[1][2]["ItemChance"] = 900
tFathersDay_MakeCake_MonsterDrop[1][2]["Item_1"] = 711208

tFathersDay_MakeCake_MonsterDrop[1][3] = {}
tFathersDay_MakeCake_MonsterDrop[1][3]["RandomItemChanceType"] = 2
tFathersDay_MakeCake_MonsterDrop[1][3]["ItemChance"] = 900
tFathersDay_MakeCake_MonsterDrop[1][3]["Item_1"] = 711205

tFathersDay_MakeCake_MonsterDrop[1][4] = {}
tFathersDay_MakeCake_MonsterDrop[1][4]["RandomItemChanceType"] = 2
tFathersDay_MakeCake_MonsterDrop[1][4]["ItemChance"] = 900
tFathersDay_MakeCake_MonsterDrop[1][4]["Item_1"] = 711209

tFathersDay_MakeCake_MonsterDrop[1][5] = {}
tFathersDay_MakeCake_MonsterDrop[1][5]["RandomItemChanceType"] = 2
tFathersDay_MakeCake_MonsterDrop[1][5]["ItemChance"] = 900
tFathersDay_MakeCake_MonsterDrop[1][5]["Item_1"] = 711207

tFathersDay_MakeCake_MonsterDrop[1][6] = {}
tFathersDay_MakeCake_MonsterDrop[1][6]["RandomItemChanceType"] = 2
tFathersDay_MakeCake_MonsterDrop[1][6]["ItemChance"] = 900
tFathersDay_MakeCake_MonsterDrop[1][6]["Item_1"] = 711206

tFathersDay_MakeCake_MonsterDrop[1][7] = {}
tFathersDay_MakeCake_MonsterDrop[1][7]["RandomItemChanceType"] = 2
tFathersDay_MakeCake_MonsterDrop[1][7]["ItemChance"] = 4600
tFathersDay_MakeCake_MonsterDrop[1][7]["Item_1"] = 0





--------------------------------------------------------------------------------------逻辑部分

--怪物掉落
function FathersDay_MakeCake_MonsterDrop()
	if not Sys_ChkFullTime(tFathersDay_MakeCake_Data["ActivityTime"]) then
		return
	end
	
	if not User_JudgeLevelAndMetempsychosis(tFathersDay_MakeCake_Data["Level"],tFathersDay_MakeCake_Data["Metempsychosis"]) then
		return
	end
	
	--等级超过20级减半
	if Get_UserLevel() > Get_MonsterLevel()+20 then
		if Sys_Random(5,10) then
			return
		end
	end
	--弓手减半
	if Get_UserProfession( ) >= 40 and Get_UserProfession( ) <= 45 then
		if Sys_Random(5,10) then
			return
		end
	end	
	
	local flat,tTable = Probabil_RandomAward(tFathersDay_MakeCake_MonsterDrop,1)
	local nDropItem = tTable[1]["tAward"][1]["Item_1"]
	
	if nDropItem == 0 then
		return
	else
		local nMapId = Get_MonsterMapID()
		local nPosX = Get_MonsterPosX()
		local nPosY = Get_MonsterPosY()
		Map_DropItem(nMapId, nPosX, nPosY, nDropItem)
		User_TalkChannel2005(tFathersDay_MakeCake_Text["Msg"]["DropItem"][nDropItem])
	end	
end


--购买巧克力蛋糕配方。（500银两）
function FathersDay_MakeCake_Shop(nNpcId)
		User_OpenDialog(0,nNpcId,0)
end

--上交巧克力蛋糕。
function FathersDay_MakeCake_HandInDialog()
	local nNpcId = Get_NpcId()
	local nEventType = tFathersDay_MakeCake_Stc["EventType"]
	local nDataType = tFathersDay_MakeCake_Stc["DataType"]["HandInTimes"]
	Task_StcReset(nEventType,nDataType)
	local nTimes = Get_UserStatisticValue(nEventType,nDataType)
	
	if nTimes >= tFathersDay_MakeCake_Stc["HandInMaxTimes"] then
		LinkNpcGossipFunc_New(nNpcId,"1-5")
		return
	end
	
	tNpcGossip[7940]["OptionFunc311"] = "FathersDay_MakeCake_HandIn</N>725062</N>"..nNpcId
	tNpcGossip[7940]["OptionFunc312"] = "FathersDay_MakeCake_HandIn</N>725063</N>"..nNpcId
	tNpcGossip[7940]["OptionFunc313"] = "FathersDay_MakeCake_HandIn</N>725064</N>"..nNpcId
	
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end

function FathersDay_MakeCake_HandIn(nCake,nNpcId)
	if not Sys_ChkFullTime(tFathersDay_MakeCake_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	--没有对应的蛋糕
	if not Item_ChkItem(nCake) then
		tNpcGossip[7940]["Text321"] = string.format(tFathersDay_MakeCake_Text[7940]["Text321"],Get_ItemtypeName(nCake))
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	local nEventType = tFathersDay_MakeCake_Stc["EventType"]
	local nDataType = tFathersDay_MakeCake_Stc["DataType"]["HandInTimes"]
	Task_StcReset(nEventType,nDataType)
	local nTimes = Get_UserStatisticValue(nEventType,nDataType)+1
	local nSpace = tFathersDay_MakeCake_Data["Space"]

	if nTimes == 5 or nTimes == 10 then
		if not User_CheckLeftSpace(nSpace) then
			tNpcGossip[7940]["Text331"] = string.format(tFathersDay_MakeCake_Text[7940]["Text331"],nSpace)
			LinkNpcGossipFunc_New(nNpcId,"3-3")
			return
		end
	end
	
	if Item_ChkItem(nCake) and Item_DelItem(nCake) then
		local sStr = string.format(tFathersDay_MakeCake_Text["Msg"]["GetNorGift"],Get_ItemtypeName(tFathersDay_MakeCake_Award[nCake]))
		Task_SetStatistic(nEventType,nDataType,nTimes,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
		
		--第一次上交蛋糕，记录完成LOG
		if nTimes == 1 then
			Sys_SaveActionFestivalLog(tFathersDay_MakeCake_Data_Log["EndMisson"])
		end
		--第5、10次上交获得节日礼包
		if nTimes == 5 or nTimes == 10 then
			FestivalGeneralPackage_GetGift(tFathersDay_MakeCake_Data_Log["FestivalId"],tFathersDay_MakeCake_Data_Log["LogId"])
			Sys_SaveActionFestivalLog(string.format(tFathersDay_MakeCake_Data_Log["FestivalGeneralPackage"],nCake))
		end
		
		Item_AddItem(tFathersDay_MakeCake_Award[nCake])
		Sys_SaveActionFestivalLog(string.format(tFathersDay_MakeCake_Data_Log["GetNorGift"],nCake,tFathersDay_MakeCake_Award[nCake]))
		User_EffectAdd("self",tFathersDay_MakeCake_Data["Effect"])	
		User_TalkChannel2005(sStr)
		
		tNpcGossip[7940]["Text341"] = tFathersDay_MakeCake_Text["Item"][nCake]
		LinkNpcGossipFunc_New(nNpcId,"3-4")
	end
end





--------------------------------------------------------------------------------------Npc部分

--御厨曹值江
tNpcFace[482] = 56
tNpcFace[483] = 46
tNpcFace[484] = 46
tNpcFace[485] = 46
tNpcFace[486] = 46

tNpcGossip[7940] = tNpcGossip[7940] or DefaultNpc:new{}
tNpcGossip[7940]["OptionHidden"] = 1


--御厨曹值江
--活动前
tNpcGossip[7940]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[7940]["tOption1-1"] = {111}
tNpcGossip[7940]["Text111"] = tFathersDay_MakeCake_Text[7940]["Text111"]
tNpcGossip[7940]["Text112"] = tFathersDay_MakeCake_Text[7940]["Text112"]
tNpcGossip[7940]["Text113"] = tFathersDay_MakeCake_Text[7940]["Text113"]
tNpcGossip[7940]["Text114"] = tFathersDay_MakeCake_Text[7940]["Text114"]
tNpcGossip[7940]["Text115"] = tFathersDay_MakeCake_Text[7940]["Text115"]
tNpcGossip[7940]["Option111"] = tFathersDay_MakeCake_Text[7940]["Option111"]
tNpcGossip[7940]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tFathersDay_MakeCake_Data["BeforeActivityTime"])
end

--活动后
tNpcGossip[7940]["Text1-2"] = {121}
tNpcGossip[7940]["tOption1-2"] = {121}
tNpcGossip[7940]["Text121"] = tFathersDay_MakeCake_Text[7940]["Text121"]
tNpcGossip[7940]["Option121"] = tFathersDay_MakeCake_Text[7940]["Option121"]
tNpcGossip[7940]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tFathersDay_MakeCake_Data["ActivityTime"])
end

--等级不满足条件
tNpcGossip[7940]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[7940]["tOption1-3"] = {131}
tNpcGossip[7940]["Text131"] = tFathersDay_MakeCake_Text[7940]["Text131"]
tNpcGossip[7940]["Text132"] = tFathersDay_MakeCake_Text[7940]["Text132"]
tNpcGossip[7940]["Text133"] = tFathersDay_MakeCake_Text[7940]["Text133"]
tNpcGossip[7940]["Text134"] = tFathersDay_MakeCake_Text[7940]["Text134"]
tNpcGossip[7940]["Text135"] = tFathersDay_MakeCake_Text[7940]["Text135"]
tNpcGossip[7940]["Option131"] = tFathersDay_MakeCake_Text[7940]["Option131"]
tNpcGossip[7940]["ChkFunc1-3"] = function ()
	return not User_JudgeLevelAndMetempsychosis(tFathersDay_MakeCake_Data["Level"],tFathersDay_MakeCake_Data["Metempsychosis"])
end

--等级满足条件
tNpcGossip[7940]["Text1-4"] = {141,142,143,144,145}
tNpcGossip[7940]["tOption1-4"] = {141,142,143,144}
tNpcGossip[7940]["Text141"] = tFathersDay_MakeCake_Text[7940]["Text141"]
tNpcGossip[7940]["Text142"] = tFathersDay_MakeCake_Text[7940]["Text142"]
tNpcGossip[7940]["Text143"] = tFathersDay_MakeCake_Text[7940]["Text143"]
tNpcGossip[7940]["Text144"] = tFathersDay_MakeCake_Text[7940]["Text144"]
tNpcGossip[7940]["Text145"] = tFathersDay_MakeCake_Text[7940]["Text145"]
tNpcGossip[7940]["Option141"] = tFathersDay_MakeCake_Text[7940]["Option141"]
tNpcGossip[7940]["Option142"] = tFathersDay_MakeCake_Text[7940]["Option142"]
tNpcGossip[7940]["Option143"] = tFathersDay_MakeCake_Text[7940]["Option143"]
tNpcGossip[7940]["Option144"] = tFathersDay_MakeCake_Text[7940]["Option144"]
tNpcGossip[7940]["OptionFunc141"] = "FathersDay_MakeCake_HandInDialog"
tNpcGossip[7940]["OptionFunc142"] = "FathersDay_MakeCake_Shop</N>7940"
tNpcGossip[7940]["OptionPoint143"] = "2-1"
-- tNpcGossip[7940]["OptionChkFunc142"] = function ()
	-- if Get_NpcId() == 7940 then
		-- return true
	-- else
		-- return false
	-- end
-- end

--上交巧克力蛋糕，失败，本日已经上交过10次
tNpcGossip[7940]["Text1-5"] = {151}
tNpcGossip[7940]["tOption1-5"] = {151}
tNpcGossip[7940]["Text151"] = tFathersDay_MakeCake_Text[7940]["Text151"]
tNpcGossip[7940]["Option151"] = tFathersDay_MakeCake_Text[7940]["Option151"]

--了解活动内容。
tNpcGossip[7940]["Text2-1"] = {211,212,213}
tNpcGossip[7940]["tOption2-1"] = {211}
tNpcGossip[7940]["Text211"] = tFathersDay_MakeCake_Text[7940]["Text211"]
tNpcGossip[7940]["Text212"] = tFathersDay_MakeCake_Text[7940]["Text212"]
tNpcGossip[7940]["Text213"] = tFathersDay_MakeCake_Text[7940]["Text213"]
tNpcGossip[7940]["Option211"] = tFathersDay_MakeCake_Text[7940]["Option211"]
tNpcGossip[7940]["OptionPoint211"] = "2-2"

--还有呢？
tNpcGossip[7940]["Text2-2"] = {221,222}
tNpcGossip[7940]["tOption2-2"] = {221}
tNpcGossip[7940]["Text221"] = tFathersDay_MakeCake_Text[7940]["Text221"]
tNpcGossip[7940]["Text222"] = tFathersDay_MakeCake_Text[7940]["Text222"]
tNpcGossip[7940]["Option221"] = tFathersDay_MakeCake_Text[7940]["Option221"]

tNpcGossip[7940]["Text3-1"] = {311,312}
tNpcGossip[7940]["tOption3-1"] = {311,312,313,314}
tNpcGossip[7940]["Text311"] = tFathersDay_MakeCake_Text[7940]["Text311"]
tNpcGossip[7940]["Text312"] = tFathersDay_MakeCake_Text[7940]["Text312"]
tNpcGossip[7940]["Option311"] = tFathersDay_MakeCake_Text[7940]["Option311"]
tNpcGossip[7940]["Option312"] = tFathersDay_MakeCake_Text[7940]["Option312"]
tNpcGossip[7940]["Option313"] = tFathersDay_MakeCake_Text[7940]["Option313"]
tNpcGossip[7940]["Option314"] = tFathersDay_MakeCake_Text[7940]["Option314"]
tNpcGossip[7940]["OptionFunc311"] = "FathersDay_MakeCake_HandIn</N>725062</N>7940"
tNpcGossip[7940]["OptionFunc312"] = "FathersDay_MakeCake_HandIn</N>725063</N>7940"
tNpcGossip[7940]["OptionFunc313"] = "FathersDay_MakeCake_HandIn</N>725064</N>7940"

--失败，没有蛋糕
tNpcGossip[7940]["Text3-2"] = {321}
tNpcGossip[7940]["tOption3-2"] = {321}
tNpcGossip[7940]["Text321"] = tFathersDay_MakeCake_Text[7940]["Text321"]
tNpcGossip[7940]["Option321"] = tFathersDay_MakeCake_Text[7940]["Option321"]

--失败，背包满
tNpcGossip[7940]["Text3-3"] = {331}
tNpcGossip[7940]["tOption3-3"] = {331}
tNpcGossip[7940]["Text331"] = tFathersDay_MakeCake_Text[7940]["Text331"]
tNpcGossip[7940]["Option331"] = tFathersDay_MakeCake_Text[7940]["Option331"]

tNpcGossip[7940]["Text3-4"] = {341}
tNpcGossip[7940]["tOption3-4"] = {342,341}
tNpcGossip[7940]["Text341"] = tFathersDay_MakeCake_Text[7940]["Text341"]
tNpcGossip[7940]["Option341"] = tFathersDay_MakeCake_Text[7940]["Option341"]
tNpcGossip[7940]["Option342"] = tFathersDay_MakeCake_Text[7940]["Option342"]
tNpcGossip[7940]["OptionFunc342"] = "FathersDay_MakeCake_HandInDialog"



tNpcGossip[7936] = tNpcGossip[7940]
tNpcGossip[7937] = tNpcGossip[7940]
tNpcGossip[7938] = tNpcGossip[7940]
tNpcGossip[7939] = tNpcGossip[7940]
tNpcGossip[7936]["OptionHidden"] = 1
tNpcGossip[7937]["OptionHidden"] = 1
tNpcGossip[7938]["OptionHidden"] = 1
tNpcGossip[7939]["OptionHidden"] = 1



--全片区怪物
-- local tFathersDay_MakeCake_MonsterTemplate = {}
-- tFathersDay_MakeCake_MonsterTemplate["ActivityTime"] = tFathersDay_MakeCake_Data["ActivityTime"]
-- tFathersDay_MakeCake_MonsterTemplate["Area"] = {1,2,3,4,5}
-- tFathersDay_MakeCake_MonsterTemplate["Function"] = FathersDay_MakeCake_MonsterDrop
-- table.insert(tMonsterDrop_AreaLoad,tFathersDay_MakeCake_MonsterTemplate)





