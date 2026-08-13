---Name:[阿语征服][活动脚本]宰牲节活动制作——先知遗物(9.23-9.30)
--Creator: 	陈莺
--Created:	2015/06/04
--------------------------------------------------------------------------------
--ID号分配如下：
--npc:16897 16884
--itemtype: 3004455 3004456 1088001  1088000       
--LOGid 10002248

--掩码说明
---stc(127,65) --任务进度掩码，1表示领取物品，2表示完成任务
---stc(127,67) --记录坐标
---stc(127,89) --记录任务数量
---stc(127,95) --记录所有任务

--命名规范
-- EidalAdha2015_AllahSacrifice_

----------------------------------------------------------------------------------------------
-- 活动时间
local tEidalAdha2015_AllahSacrifice_Data= {}
	tEidalAdha2015_AllahSacrifice_Data["Bef_Time"]= "2014-05-18 00:00 2017-09-01 23:59"
	tEidalAdha2015_AllahSacrifice_Data["Now_Time"] = "2017-09-02 00:00 2017-09-08 23:59"
	tEidalAdha2015_AllahSacrifice_Data["Aft_Time"]= "2017-09-09 00:00 2018-10-01 23:59"
--等级
	tEidalAdha2015_AllahSacrifice_Data["Level"] = 80
	tEidalAdha2015_AllahSacrifice_Data["Metempsychosis"] = 0
	
--背包资源
	tEidalAdha2015_AllahSacrifice_Data["Space"] = 1
	tEidalAdha2015_AllahSacrifice_Data["GlobalId"] = 50609
	tEidalAdha2015_AllahSacrifice_Data["MapId"] = 1000
	tEidalAdha2015_AllahSacrifice_Data["BoundX"] = 474
	tEidalAdha2015_AllahSacrifice_Data["BoundY"] = 411
	
	
	tEidalAdha2015_AllahSacrifice_Data[16897] = {}
	tEidalAdha2015_AllahSacrifice_Data[16897]["Map"] = 1002
	tEidalAdha2015_AllahSacrifice_Data[16897]["PosX"] = 276
	tEidalAdha2015_AllahSacrifice_Data[16897]["PosY"] = 382
--STC掩码
local tEidalAdha2015_AllahSacrifice_Stc = {}

--任务进度掩码，1表示领取物品，2表示完成任务
	tEidalAdha2015_AllahSacrifice_Stc["Reward"] = {}
	tEidalAdha2015_AllahSacrifice_Stc["Reward"]["EventType"] = 127
	tEidalAdha2015_AllahSacrifice_Stc["Reward"]["DataType"] = 67

-- (127 65)记录坐标
	tEidalAdha2015_AllahSacrifice_Stc["Position"] = {}
	tEidalAdha2015_AllahSacrifice_Stc["Position"]["EventType"] = 127
	tEidalAdha2015_AllahSacrifice_Stc["Position"]["DataType"] = 65

--物品id
local tEidalAdha2015_AllahSacrifice_ItemId= {}
	tEidalAdha2015_AllahSacrifice_ItemId[3004455] = 3004455
	tEidalAdha2015_AllahSacrifice_ItemId[3004456] = 3004456
	tEidalAdha2015_AllahSacrifice_ItemId[1088001] = 1088001
	tEidalAdha2015_AllahSacrifice_ItemId[1088000] = 1088000
	
--log表
local tEidalAdha2015_AllahSacrifice_Log = {}
--获得地图
	tEidalAdha2015_AllahSacrifice_Log["Map"] = "0,0,0,0,10002248,1,3004456,1"
	tEidalAdha2015_AllahSacrifice_Log["Reward"] = "0,0,3004455,1,10002248,2,3003625,1"
	tEidalAdha2015_AllahSacrifice_Log["AfterDel"] = "0,0,%d,1,10002248,3,0,0"
	tEidalAdha2015_AllahSacrifice_Log["Treasure_Log"] = "0,0,3004456,1,10002248,2,3004455,1"
	tEidalAdha2015_AllahSacrifice_Log["Get_Log"] = "0,0,0,0,10002248,2,%d,1"
	tEidalAdha2015_AllahSacrifice_Log["LogId"] = 10002248
	tEidalAdha2015_AllahSacrifice_Log["FestivalId"] = 3307
	
--坐标
	tEidalAdha2015_AllahSacrifice_Position = {}
	tEidalAdha2015_AllahSacrifice_Position[1] = {590,754}
	tEidalAdha2015_AllahSacrifice_Position[2] = {636,417}
	tEidalAdha2015_AllahSacrifice_Position[3] = {208,412}
	tEidalAdha2015_AllahSacrifice_Position[4] = {167,283}
	tEidalAdha2015_AllahSacrifice_Position[5] = {671,700}
	tEidalAdha2015_AllahSacrifice_Position[6] = {653,505}
	tEidalAdha2015_AllahSacrifice_Position[7] = {362,437}
	tEidalAdha2015_AllahSacrifice_Position[8] = {222,246}
	tEidalAdha2015_AllahSacrifice_Position[9] = {760,660}
	tEidalAdha2015_AllahSacrifice_Position[10] = {704,524}
	tEidalAdha2015_AllahSacrifice_Position[11] = {381,343}
	tEidalAdha2015_AllahSacrifice_Position[12] = {354,205}
	tEidalAdha2015_AllahSacrifice_Position[13] = {875,660}
	tEidalAdha2015_AllahSacrifice_Position[14] = {803,526}
	tEidalAdha2015_AllahSacrifice_Position[15] = {526,304}
	tEidalAdha2015_AllahSacrifice_Position[16] = {444,203}
	
	
--额外获得概率
 local tEidalAdha2015_AllahSacrifice_Get = {}
	tEidalAdha2015_AllahSacrifice_Get["Reward"] = {}
	tEidalAdha2015_AllahSacrifice_Get["Reward"][1] = {}
	tEidalAdha2015_AllahSacrifice_Get["Reward"][1]["ItemChanceSum"] = 100

	tEidalAdha2015_AllahSacrifice_Get["Reward"][1][1] = {}
	tEidalAdha2015_AllahSacrifice_Get["Reward"][1][1]["RandomItemChanceType"] = 2
	tEidalAdha2015_AllahSacrifice_Get["Reward"][1][1]["ItemChance"] = 30
	tEidalAdha2015_AllahSacrifice_Get["Reward"][1][1]["Item_1"] = 1088001
	
	tEidalAdha2015_AllahSacrifice_Get["Reward"][1][2] = {}
	tEidalAdha2015_AllahSacrifice_Get["Reward"][1][2]["RandomItemChanceType"] = 2
	tEidalAdha2015_AllahSacrifice_Get["Reward"][1][2]["ItemChance"] = 1
	tEidalAdha2015_AllahSacrifice_Get["Reward"][1][2]["Item_1"] = 1088000
	
	tEidalAdha2015_AllahSacrifice_Get["Reward"][1][3] = {}
	tEidalAdha2015_AllahSacrifice_Get["Reward"][1][3]["RandomItemChanceType"] = 2
	tEidalAdha2015_AllahSacrifice_Get["Reward"][1][3]["ItemChance"] = 69
	tEidalAdha2015_AllahSacrifice_Get["Reward"][1][3]["Item_1"] = 0
--------------------------------------------------------------逻辑部分---------------------------------------------------------------
--寻路,寻找npc乌依古尔
function EidalAdha2015_AllahSacrifice_GotoNpc(nNpcId)
	Sys_GotoSomeWhere(tEidalAdha2015_AllahSacrifice_Data[nNpcId]["PosX"],tEidalAdha2015_AllahSacrifice_Data[nNpcId]["PosY"],tEidalAdha2015_AllahSacrifice_Data[nNpcId]["Map"],nNpcId)
end

--16897,'乌依古尔'
function EidalAdha2015_AllahSacrifice_Map(nNpcId)
	--判断时间
	if not Sys_ChkFullTime(tEidalAdha2015_AllahSacrifice_Data["Now_Time"]) then
		return
	end

--判断等级
	if not User_JudgeLevelAndMetempsychosis(tEidalAdha2015_AllahSacrifice_Data["Level"],tEidalAdha2015_AllahSacrifice_Data["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	local nRewardEvent = tEidalAdha2015_AllahSacrifice_Stc["Reward"]["EventType"]

	local nRewardType = tEidalAdha2015_AllahSacrifice_Stc["Reward"]["DataType"]
	
--=1 补领
	if  Task_ChkStcValue(nRewardEvent,nRewardType,'>=',1) then
		if Item_ChkItem(tEidalAdha2015_AllahSacrifice_ItemId[3004456]) then 
			--已存在
			LinkNpcGossipFunc_New(nNpcId,"6-2")
			return
		elseif not User_CheckLeftSpace (tEidalAdha2015_AllahSacrifice_Data["Space"]) then
			--空间不足
			LinkNpcGossipFunc_New(nNpcId,"5-1")
			return
		end
	else --=0
		if Item_ChkItem(tEidalAdha2015_AllahSacrifice_ItemId[3004456]) and Item_DelItem(tEidalAdha2015_AllahSacrifice_ItemId[3004456]) then 
			
		end
		if not User_CheckLeftSpace (tEidalAdha2015_AllahSacrifice_Data["Space"]) then
			--空间不足
			LinkNpcGossipFunc_New(nNpcId,"5-1")
			return
		else 
			Task_SetStatistic(nRewardEvent,nRewardType,1,1)
			Task_SetStcTimestamp(nRewardEvent,nRewardType,0)
			Sys_SaveActionFestivalLog(tEidalAdha2015_AllahSacrifice_Log["Map"])
			local nPositionEvent = tEidalAdha2015_AllahSacrifice_Stc["Position"]["EventType"]
			local nPositionType = tEidalAdha2015_AllahSacrifice_Stc["Position"]["DataType"]
			local  nNum = math.random(1,16)
			Task_SetStatistic(nPositionEvent,nPositionType,nNum,1)
			User_TalkChannel2005(tEidalAdha2015_AllahSacrifice_Text["MsgBox"]["Getmap"])

		end
	end
	
	Item_AddItem(tEidalAdha2015_AllahSacrifice_ItemId[3004456])
	LinkNpcGossipFunc_New(nNpcId,"4-1")
end
--自动寻路（1000,500,650）
function EidalAdha2015_AllahSacrifice_GotOTreasure(nNpcId)

	Sys_MsgBox(tEidalAdha2015_AllahSacrifice_Text["MsgBox"]["Transfer"],"EidalAdha2015_AllahSacrifice_Findroad1")

end
function EidalAdha2015_AllahSacrifice_Findroad1()
	if Get_NpcMapID() ~= Get_UserMapId() then
		User_TalkChannel2005(tTransferFail_Text["MsgTip"])
		return
	end
	User_UserRandBoundTrans(tEidalAdha2015_AllahSacrifice_Data["MapId"],tEidalAdha2015_AllahSacrifice_Data["BoundX"],tEidalAdha2015_AllahSacrifice_Data["BoundY"],5,5)
	User_TalkChannel2005(tEidalAdha2015_AllahSacrifice_Text["MsgBox"]["Teleport"])
end

----我把先祖祭品带回来了
function EidalAdha2015_AllahSacrifice_Reward(nNpcId)

	local nRewardEvent = tEidalAdha2015_AllahSacrifice_Stc["Reward"]["EventType"]
	local nRewardType = tEidalAdha2015_AllahSacrifice_Stc["Reward"]["DataType"]
--判断时间
	if not Sys_ChkFullTime(tEidalAdha2015_AllahSacrifice_Data["Now_Time"]) then
		return
	end
	if  Task_ChkStcValue(nRewardEvent,nRewardType,"<",2) then
		if not Task_ChkStcValue(nRewardEvent,nRewardType,"==",1) then
			LinkNpcGossipFunc_New(nNpcId,"6-3")
			return
		end 
--检查物品
		if not Item_ChkItem(tEidalAdha2015_AllahSacrifice_ItemId[3004455]) then
			LinkNpcGossipFunc_New(nNpcId,"8-1")
			return
		end 
		if Item_DelItem(tEidalAdha2015_AllahSacrifice_ItemId[3004455]) then
			Task_SetStatistic(nRewardEvent,nRewardType,2,1)
			Task_SetStcTimestamp(nRewardEvent,nRewardType,0)
			Sys_SaveActionFestivalLog(tEidalAdha2015_AllahSacrifice_Log["Reward"])
			User_EffectAdd("self","zf2-e280")
			FestivalGeneralPackage_GetGift(tEidalAdha2015_AllahSacrifice_Log["FestivalId"],tEidalAdha2015_AllahSacrifice_Log["LogId"])
		
		end
--接到所有活动完成 94347050
		EidalAdha2015_Ceremony_AllComplete()
--出对白
		LinkNpcGossipFunc_New(nNpcId,"9-1")
	else 
		LinkNpcGossipFunc_New(nNpcId,"7-1")	
	end 
end 

---3004455,'真主祭品' 98406300
function EidalAdha2015_AllahSacrifice_ItemSacrif()
--判断时间
	if Sys_ChkFullTime(tEidalAdha2015_AllahSacrifice_Data["Now_Time"]) then
		User_TalkChannel2005(tEidalAdha2015_AllahSacrifice_Text["MsgBox"][3004455])
	else 
		EidalAdha2015_AllahSacrifice_ItemDelete(tEidalAdha2015_AllahSacrifice_ItemId[3004455])
	end 
end
function EidalAdha2015_AllahSacrifice_ItemDelete(tItemId)
	if not Item_ChkItem(tItemId) then
		return
	end 
	if Item_DelItem(tItemId) then
		local slog = string.format(tEidalAdha2015_AllahSacrifice_Log["AfterDel"],tItemId)
		Sys_SaveActionFestivalLog(slog)
		User_TalkChannel2005(tEidalAdha2015_AllahSacrifice_Text["MsgBox"]["Clean"][tItemId])
	end
end

--判断距离=>距离内true,距离外false
function EidalAdha2015_AllahSacrifice_Distance(nUserX,nUserY,nPosX,nPosY)

	local nX_Distance = math.abs(nUserX-nPosX)
	local nY_Distance = math.abs(nUserY-nPosY)
	--比较宝藏的坐标x,y与玩家的坐标差绝对值
	if nX_Distance < 5 and nY_Distance < 5 then
		return true
	else
		return false
	end
end
---3004456,'祭物地图' 98406250
function EidalAdha2015_AllahSacrifice_ItemMap()
--判断时间
	if not Sys_ChkFullTime(tEidalAdha2015_AllahSacrifice_Data["Now_Time"]) then
		EidalAdha2015_AllahSacrifice_ItemDelete(tEidalAdha2015_AllahSacrifice_ItemId[3004456])
	end 
--地图判断
	local nMap = Get_UserMapId(0)
	local nUserX = Get_UserPositionX(0)
	local nUserY = Get_UserPositionY(0)
	local nTemp = Get_UserStatisticValue(tEidalAdha2015_AllahSacrifice_Stc["Position"]["EventType"],tEidalAdha2015_AllahSacrifice_Stc["Position"]["DataType"])
	local nPosX = tEidalAdha2015_AllahSacrifice_Position[nTemp][1]
	local nPosY = tEidalAdha2015_AllahSacrifice_Position[nTemp][2]
	if nMap ~= tEidalAdha2015_AllahSacrifice_Data["MapId"] then
	
		local str = string.format(tEidalAdha2015_AllahSacrifice_Text["MsgBox"]["UseMap"],nPosX,nPosY)
		User_TalkChannel2005(str)
		return
	end
	if not EidalAdha2015_AllahSacrifice_Distance(nUserX,nUserY,nPosX,nPosY) then 
		EidalAdha2015_AllahSacrifice_tip(nUserX,nUserY,nPosX,nPosY)
		return
	end 
	if Item_ChkItem(tEidalAdha2015_AllahSacrifice_ItemId[3004456])and Item_DelItem(tEidalAdha2015_AllahSacrifice_ItemId[3004456]) then
		Item_AddItem(tEidalAdha2015_AllahSacrifice_ItemId[3004455])
		Sys_SaveActionFestivalLog(tEidalAdha2015_AllahSacrifice_Log["Treasure_Log"])
		Map_Effect(tEidalAdha2015_AllahSacrifice_Data["MapId"],nPosX,nPosY,"accession")
		User_TalkChannel2005(tEidalAdha2015_AllahSacrifice_Text["MsgBox"]["FindItem"])
		EidalAdha2015_AllahSacrifice_extra()
	end
	
end
---提示方位
function EidalAdha2015_AllahSacrifice_tip(nUserX,nUserY,nPosX,nPosY)
	if nUserX < nPosX then 
		if  nUserY < nPosY then 
			User_TalkChannel2005(tEidalAdha2015_AllahSacrifice_Text["MsgBox"]["Down"])
		else
			User_TalkChannel2005(tEidalAdha2015_AllahSacrifice_Text["MsgBox"]["Right"])
		end 
		return
	end 
	if  nUserY < nPosY then 
		User_TalkChannel2005(tEidalAdha2015_AllahSacrifice_Text["MsgBox"]["Left"])
	else 
		User_TalkChannel2005(tEidalAdha2015_AllahSacrifice_Text["MsgBox"]["Upward"])
	end 
end

---额外奖励
function EidalAdha2015_AllahSacrifice_extra()
	if not  User_CheckLeftSpace (tEidalAdha2015_AllahSacrifice_Data["Space"]) then 
		return
	end 
	local flat,tNum = Probabil_RandomAward(tEidalAdha2015_AllahSacrifice_Get["Reward"],1)  
	local nItemId = tNum[1]["tAward"][1]["Item_1"]
	
	--流星
	if nItemId == 0 then 
		return
	end
	if nItemId == tEidalAdha2015_AllahSacrifice_ItemId[1088001] then 
		Item_AddItem(nItemId)
		local slog = string.format(tEidalAdha2015_AllahSacrifice_Log["Get_Log"],tEidalAdha2015_AllahSacrifice_ItemId[1088001])
		Sys_SaveActionFestivalLog(slog)
		User_TalkChannel2005(tEidalAdha2015_AllahSacrifice_Text["MsgBox"]["Reward1"])
		return
	end 
	
	if nItemId == tEidalAdha2015_AllahSacrifice_ItemId[1088000] then 
		local ndata = Get_SysDynaGlobalData(tEidalAdha2015_AllahSacrifice_Data["GlobalId"],0)
		if ndata < 1 then 
			ndata = ndata+1
			Sys_SetSynaGlobalData0(tEidalAdha2015_AllahSacrifice_Data["GlobalId"] ,ndata)
			local slog = string.format(tEidalAdha2015_AllahSacrifice_Log["Get_Log"],tEidalAdha2015_AllahSacrifice_ItemId[1088000])
			Sys_SaveActionFestivalLog(slog)
			User_TalkChannel2005(tEidalAdha2015_AllahSacrifice_Text["MsgBox"]["Reward2"])
			local sname = Get_UserName()
			local str = string.format(tEidalAdha2015_AllahSacrifice_Text["MsgBox"]["Reward3"],sname)
			Sys_NormalBroadcast(str)
		end
	end
	
end

-- =2且隔天
function EidalAdha2015_AllahSacrifice_StcReset(nEvent,nType)
		EidalAdha2015_Ceremony_ResetAllStc()

	if Task_ChkStcValue(nEvent,nType,">=",2) then
		if Task_StcInterval(nEvent,nType,1,4) then
	
			Task_SetStatistic(nEvent,nType,0,1)
			Task_SetStcTimestamp(nEvent,nType,0)
			return true
		end
	end 
end
-------------------------------------------------------------npc对白模块---------------------------------------------------------------
---NPC头像
tNpcFace[3112] = 13

---乌依古尔

tNpcGossip[16897] = tNpcGossip[16897] or DefaultNpc:new{}
tNpcGossip[16897]["OptionHidden"] = 1

--活动时间前
tNpcGossip[16897]["Text1-1"] = {111,112,113}
tNpcGossip[16897]["Text111"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Text111"]
tNpcGossip[16897]["Text112"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Text112"]
tNpcGossip[16897]["Text113"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Text113"]
tNpcGossip[16897]["tOption1-1"] = {1}
tNpcGossip[16897]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tEidalAdha2015_AllahSacrifice_Data["Bef_Time"])
end
tNpcGossip[16897]["Option1"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Option1"]


--活动时间中
tNpcGossip[16897]["Text1-2"] = {121,122,123,124}
tNpcGossip[16897]["Text121"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Text121"]
tNpcGossip[16897]["Text122"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Text122"]
tNpcGossip[16897]["Text123"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Text123"]
tNpcGossip[16897]["Text124"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Text124"]
tNpcGossip[16897]["tOption1-2"] = {2,3,4,5}
tNpcGossip[16897]["ChkFunc1-2"] = function()
	return Sys_ChkFullTime(tEidalAdha2015_AllahSacrifice_Data["Now_Time"])
end

tNpcGossip[16897]["Option2"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Option2"]
tNpcGossip[16897]["OptionFunc2"]="EidalAdha2015_AllahSacrifice_Map</N>16897"
tNpcGossip[16897]["OptionChkFunc2"] = function ()
	local nEvent = tEidalAdha2015_AllahSacrifice_Stc["Reward"]["EventType"]
	local nType = tEidalAdha2015_AllahSacrifice_Stc["Reward"]["DataType"]
	
	if (Task_ChkStcValue(nEvent,nType,"<=",1) and not Item_ChkItem(tEidalAdha2015_AllahSacrifice_ItemId[3004455])) or EidalAdha2015_AllahSacrifice_StcReset(nEvent,nType) then
		return true
	end
end

tNpcGossip[16897]["Option3"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Option3"]
tNpcGossip[16897]["OptionFunc3"]="EidalAdha2015_AllahSacrifice_Reward</N>16897"
tNpcGossip[16897]["OptionChkFunc3"] = function ()
	local nEvent = tEidalAdha2015_AllahSacrifice_Stc["Reward"]["EventType"]
	local nType = tEidalAdha2015_AllahSacrifice_Stc["Reward"]["DataType"]
	return not Task_ChkStcValue(nEvent,nType,"==",0)
end

tNpcGossip[16897]["Option4"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Option4"]
tNpcGossip[16897]["OptionPoint4"]="2-1"
tNpcGossip[16897]["Option5"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Option5"]

--活动时间后
tNpcGossip[16897]["Text1-3"] = {131}
tNpcGossip[16897]["Text131"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Text131"]
tNpcGossip[16897]["tOption1-3"] = {6}
tNpcGossip[16897]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tEidalAdha2015_AllahSacrifice_Data["Aft_Time"])
end
tNpcGossip[16897]["Option6"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Option6"]

--我该怎么找到祭品
tNpcGossip[16897]["Text2-1"] = {211,212,213,214}
tNpcGossip[16897]["Text211"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Text211"]
tNpcGossip[16897]["Text212"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Text212"]
tNpcGossip[16897]["Text213"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Text213"]
tNpcGossip[16897]["Text214"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Text214"]
tNpcGossip[16897]["tOption2-1"] = {7}
tNpcGossip[16897]["Option7"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Option7"]
--等级小于80
tNpcGossip[16897]["Text3-1"] = {311}
tNpcGossip[16897]["Text311"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Text311"]
tNpcGossip[16897]["tOption3-1"] = {8}
tNpcGossip[16897]["Option8"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Option8"]
--
tNpcGossip[16897]["Text4-1"] = {411,412,413}
tNpcGossip[16897]["Text411"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Text411"]
tNpcGossip[16897]["Text412"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Text412"]
tNpcGossip[16897]["Text413"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Text413"]
tNpcGossip[16897]["tOption4-1"] = {9}
tNpcGossip[16897]["Option9"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Option9"]
tNpcGossip[16897]["OptionFunc9"]="EidalAdha2015_AllahSacrifice_GotOTreasure</N>16897"
--背包已满
tNpcGossip[16897]["Text5-1"] = {511}
tNpcGossip[16897]["Text511"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Text511"]
tNpcGossip[16897]["tOption5-1"] = {10}
tNpcGossip[16897]["Option10"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Option10"]
--已寻到过宝藏了
tNpcGossip[16897]["Text6-1"] = {611}
tNpcGossip[16897]["Text611"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Text611"]
tNpcGossip[16897]["tOption6-1"] = {11}
tNpcGossip[16897]["Option11"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Option11"]

tNpcGossip[16897]["Text6-2"] = {621}
tNpcGossip[16897]["Text621"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Text621"]
tNpcGossip[16897]["tOption6-2"] = {11}

tNpcGossip[16897]["Text6-3"] = {631}
tNpcGossip[16897]["Text631"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Text631"]
tNpcGossip[16897]["tOption6-3"] = {11}

tNpcGossip[16897]["Text7-1"] = {711}
tNpcGossip[16897]["Text711"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Text711"]
tNpcGossip[16897]["tOption7-1"] = {12}
tNpcGossip[16897]["Option12"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Option12"]

tNpcGossip[16897]["Text8-1"] = {811}
tNpcGossip[16897]["Text811"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Text811"]
tNpcGossip[16897]["tOption8-1"] = {13}
tNpcGossip[16897]["Option13"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Option13"]

tNpcGossip[16897]["Text9-1"] = {911,912,913}
tNpcGossip[16897]["Text911"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Text911"]
tNpcGossip[16897]["Text912"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Text912"]
tNpcGossip[16897]["Text913"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Text913"]
tNpcGossip[16897]["tOption9-1"] = {14}
tNpcGossip[16897]["Option14"] = tEidalAdha2015_AllahSacrifice_Text[16897]["Option14"]

---巴图尔

---NPC头像
tNpcFace[3099] = 9

tNpcGossip[16884] = tNpcGossip[16884] or DefaultNpc:new{}
tNpcGossip[16884]["OptionHidden"] = 1

--活动时间前
tNpcGossip[16884]["Text1-1"] = {111}
tNpcGossip[16884]["Text111"] = tEidalAdha2015_AllahSacrifice_Text[16884]["Text111"]
tNpcGossip[16884]["tOption1-1"] = {1}
tNpcGossip[16884]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tEidalAdha2015_AllahSacrifice_Data["Bef_Time"])
end
tNpcGossip[16884]["Option1"] = tEidalAdha2015_AllahSacrifice_Text[16884]["Option1"]

--活动时间中
tNpcGossip[16884]["Text1-2"] = {121,122,123}
tNpcGossip[16884]["Text121"] = tEidalAdha2015_AllahSacrifice_Text[16884]["Text121"]
tNpcGossip[16884]["Text122"] = tEidalAdha2015_AllahSacrifice_Text[16884]["Text122"]
tNpcGossip[16884]["Text123"] = tEidalAdha2015_AllahSacrifice_Text[16884]["Text123"]
tNpcGossip[16884]["tOption1-2"] = {2,3}
tNpcGossip[16884]["ChkFunc1-2"] = function()
	return Sys_ChkFullTime(tEidalAdha2015_AllahSacrifice_Data["Now_Time"])
end

tNpcGossip[16884]["Option2"] = tEidalAdha2015_AllahSacrifice_Text[16884]["Option2"]
tNpcGossip[16884]["OptionFunc2"]="EidalAdha2015_AllahSacrifice_GotoNpc</N>16897"

tNpcGossip[16884]["Option3"] = tEidalAdha2015_AllahSacrifice_Text[16884]["Option3"]

--活动时间后
tNpcGossip[16884]["Text1-3"] = {131}
tNpcGossip[16884]["Text131"] = tEidalAdha2015_AllahSacrifice_Text[16884]["Text131"]
tNpcGossip[16884]["tOption1-3"] = {4}
tNpcGossip[16884]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tEidalAdha2015_AllahSacrifice_Data["Aft_Time"])
end
tNpcGossip[16884]["Option4"] = tEidalAdha2015_AllahSacrifice_Text[16884]["Option4"]

