------------------------------------------------------------------------------------
--Name:		180423[英文征服][活动脚本]5月赠品转盘活动制作
--Purpose:	5月赠品转盘活动制作
--Creator: 	傅伟龙
--Created:	2018/04/23
------------------------------------------------------------------------------------

-- 前缀：MayCoronaProduction
-- logid:12001062
-- 掩码
-- 176 20 领取的轮盘的次数
-- 全局表：
-- 52636 
-- data1：金刚尖钻（赠）限量50
-- data1：赤练石+6（赠）限量30     

 

------------------------------------------------------------------------------------
local tMayCoronaProduction_Cont = {}

--活动时间
tMayCoronaProduction_Cont["BefTime"] = tActivityTime["MayCoronaProduction"]["BefTime"]
tMayCoronaProduction_Cont["ActTime"] = tActivityTime["MayCoronaProduction"]["ActTime"]

tMayCoronaProduction_Cont["GlobalId"] = 52636

local tMayCoronaProduction_Stc = {}
tMayCoronaProduction_Stc[1] = {}
tMayCoronaProduction_Stc[1]["EventType"] = 176
tMayCoronaProduction_Stc[1]["DataType"] = 20

local tMayCoronaProduction_ItemId = {}
tMayCoronaProduction_ItemId[1] = 3308586
tMayCoronaProduction_ItemId[2] = 3308615
tMayCoronaProduction_ItemId[3] = 3308616
tMayCoronaProduction_ItemId[4] = 3308617

local tMayCoronaProduction_RewandItem = {}

	tMayCoronaProduction_RewandItem["RewardCorana"] = {}
	tMayCoronaProduction_RewandItem["RewardCorana"][1] = {}
	tMayCoronaProduction_RewandItem["RewardCorana"][1]["ItemChanceSum"] = 10000
	
	tMayCoronaProduction_RewandItem["RewardCorana"][1][1] = {}
	tMayCoronaProduction_RewandItem["RewardCorana"][1][1]["RandomItemChanceType"] = 2
	tMayCoronaProduction_RewandItem["RewardCorana"][1][1]["ItemChance"] = 9980
	tMayCoronaProduction_RewandItem["RewardCorana"][1][1]["RewardItem"] = {}
	tMayCoronaProduction_RewandItem["RewardCorana"][1][1]["RewardItem"][1] = {}
	tMayCoronaProduction_RewandItem["RewardCorana"][1][1]["RewardItem"][1]["Id"] = 3308586
	tMayCoronaProduction_RewandItem["RewardCorana"][1][1]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tMayCoronaProduction_RewandItem["RewardCorana"][1][1]["Log"] = "0,0,0,0,12001062,2,3308586,1"
	
	tMayCoronaProduction_RewandItem["RewardCorana"][1][2] = {}
	tMayCoronaProduction_RewandItem["RewardCorana"][1][2]["RandomItemChanceType"] = 2
	tMayCoronaProduction_RewandItem["RewardCorana"][1][2]["ItemChance"] = 10
	tMayCoronaProduction_RewandItem["RewardCorana"][1][2]["RewardItem"] = {}
	tMayCoronaProduction_RewandItem["RewardCorana"][1][2]["RewardItem"][1] = {}
	tMayCoronaProduction_RewandItem["RewardCorana"][1][2]["RewardItem"][1]["Id"] = 3308615
	tMayCoronaProduction_RewandItem["RewardCorana"][1][2]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tMayCoronaProduction_RewandItem["RewardCorana"][1][2]["GlobalId"] = 52636
	tMayCoronaProduction_RewandItem["RewardCorana"][1][2]["Pos"] = 1
	tMayCoronaProduction_RewandItem["RewardCorana"][1][2]["MaxData"] = 50
	tMayCoronaProduction_RewandItem["RewardCorana"][1][2]["FullIndex"] = 4
	tMayCoronaProduction_RewandItem["RewardCorana"][1][2]["Log"] = "0,0,0,0,12001062,2,3308615,1"
	
	tMayCoronaProduction_RewandItem["RewardCorana"][1][3] = {}
	tMayCoronaProduction_RewandItem["RewardCorana"][1][3]["RandomItemChanceType"] = 2
	tMayCoronaProduction_RewandItem["RewardCorana"][1][3]["ItemChance"] = 10
	tMayCoronaProduction_RewandItem["RewardCorana"][1][3]["RewardItem"] = {}
	tMayCoronaProduction_RewandItem["RewardCorana"][1][3]["RewardItem"][1] = {}
	tMayCoronaProduction_RewandItem["RewardCorana"][1][3]["RewardItem"][1]["Id"] = 3308616
	tMayCoronaProduction_RewandItem["RewardCorana"][1][3]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tMayCoronaProduction_RewandItem["RewardCorana"][1][3]["GlobalId"] = 52636
	tMayCoronaProduction_RewandItem["RewardCorana"][1][3]["Pos"] = 2
	tMayCoronaProduction_RewandItem["RewardCorana"][1][3]["MaxData"] = 30
	tMayCoronaProduction_RewandItem["RewardCorana"][1][3]["FullIndex"] = 4
	tMayCoronaProduction_RewandItem["RewardCorana"][1][3]["Log"] = "0,0,0,0,12001062,2,3308616,1"
	
	tMayCoronaProduction_RewandItem["RewardCorana"][1][4] = {}
	tMayCoronaProduction_RewandItem["RewardCorana"][1][4]["RandomItemChanceType"] = 2
	tMayCoronaProduction_RewandItem["RewardCorana"][1][4]["ItemChance"] = 0
	tMayCoronaProduction_RewandItem["RewardCorana"][1][4]["RewardItem"] = {}
	tMayCoronaProduction_RewandItem["RewardCorana"][1][4]["RewardItem"][1] = {}
	tMayCoronaProduction_RewandItem["RewardCorana"][1][4]["RewardItem"][1]["Id"] = 3308617
	tMayCoronaProduction_RewandItem["RewardCorana"][1][4]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tMayCoronaProduction_RewandItem["RewardCorana"][1][4]["Log"] = "0,0,0,0,12001062,2,3308617,1"
	
	--
	tMayCoronaProduction_RewandItem[3308766]={}
	tMayCoronaProduction_RewandItem[3308766][1]={}
	tMayCoronaProduction_RewandItem[3308766][1]["LogId"] = 12001062
	tMayCoronaProduction_RewandItem[3308766][1]["DeleteItem"] = {}
	tMayCoronaProduction_RewandItem[3308766][1]["DeleteItem"][1] = {}
	tMayCoronaProduction_RewandItem[3308766][1]["DeleteItem"][1]["Id"] = 3308766
	tMayCoronaProduction_RewandItem[3308766][1]["RewardItem"] = {}
	tMayCoronaProduction_RewandItem[3308766][1]["RewardItem"][1] = {}
	tMayCoronaProduction_RewandItem[3308766][1]["RewardItem"][1]["Id"] = 4050001
	tMayCoronaProduction_RewandItem[3308766][1]["RewardItem"][1]["Attr"] = "0 20 3"
	tMayCoronaProduction_RewandItem[3308766][1]["RewardEffect"] = {}
	tMayCoronaProduction_RewandItem[3308766][1]["RewardEffect"]["Effect"] = "zf2-e128"

function MayCoronaProduction_RewardItem(nNpcId)
	if not Sys_ChkFullTime(tMayCoronaProduction_Cont["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return 
	end
	
	local nEvent1 = tMayCoronaProduction_Stc[1]["EventType"]
	local nType1 = tMayCoronaProduction_Stc[1]["DataType"]
	
	if Task_StcInterval(nEvent1,nType1,1,4) then
		Task_SetStatistic(nEvent1,nType1,0,1)
		Task_SetStcTimestamp(nEvent1,nType1,0)
	end
	
	if Task_ChkStcValue(nEvent1,nType1,">=",20) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	for i = 1,4 do
		nItemId = tMayCoronaProduction_ItemId[i]
		if Item_ChkItem(nItemId) then
			User_TalkChannel2005(tMayCoronaProduction_Text["TalkExistItem"])
			return
		end
	end
	
	local nSpace = RewardTemplate_GetRandomSpace(tMayCoronaProduction_RewandItem["RewardCorana"],1)
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tMayCoronaProduction_Text["MsgSpace"])
		return
	end
	
	Task_AddStatistic(nEvent1,nType1,1,1)
	Task_SetStcTimestamp(nEvent1,nType1,0)
	RewardTemplate_NewRandom(tMayCoronaProduction_RewandItem["RewardCorana"],1)
end

function MayCoronaProduction_ClearGlobal()
	--活动时间
	if not Sys_ChkFullTime(tMayCoronaProduction_Cont["ActTime"]) then
		return
	end
	
	local nGlobalId = tMayCoronaProduction_Cont["GlobalId"]
	
	Sys_SetSynaGlobalData(nGlobalId,1,0)
	Sys_SetSynaGlobalData(nGlobalId,2,0)

end
----------------------------------NPC模板---------------------------------------
tNpcFace[4160] = 184
tNpcGossip[22777] = tNpcGossip[22777] or DefaultNpc:new{}
tNpcGossip[22777]["OptionHidden"] = 1
tNpcGossip[22777]["DialogueText"] = tMayCoronaProduction_Text[22777]

--活动前
tNpcGossip[22777]["Text1-1"] = {111,112,113}
tNpcGossip[22777]["tOption1-1"] = {111}
tNpcGossip[22777]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tMayCoronaProduction_Cont["BefTime"])
end

--活动后
tNpcGossip[22777]["Text1-2"] = {121}
tNpcGossip[22777]["tOption1-2"] = {121}
tNpcGossip[22777]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tMayCoronaProduction_Cont["ActTime"])
end

--活动中
tNpcGossip[22777]["Text1-3"] = {131,132,133,134}
tNpcGossip[22777]["tOption1-3"] = {131,132}
tNpcGossip[22777]["OptionFunc131"] = "MayCoronaProduction_RewardItem</N>22777"
tNpcGossip[22777]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tMayCoronaProduction_Cont["ActTime"])
end


tNpcGossip[22777]["Text2-1"] = {211}
tNpcGossip[22777]["tOption2-1"] = {211}


tNpcGossip[22777]["Text2-2"] = {221}
tNpcGossip[22777]["tOption2-2"] = {221}

tItem[3308766] = tItem[3308766] or {}
tItem[3308766]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tMayCoronaProduction_RewandItem[3308766][1])
end
--------------------------------时间自检--------------------------------------
-- 清理全局表
local tMayCoronaProduction_ClearGlobal = {}
	tMayCoronaProduction_ClearGlobal[1] = {}
	tMayCoronaProduction_ClearGlobal[1]["TimeType"] = 4
	tMayCoronaProduction_ClearGlobal[1]["Time"] = "00:00 00:00"
	tMayCoronaProduction_ClearGlobal[1]["Func"] = MayCoronaProduction_ClearGlobal
table.insert(tSystemTime_InitialData,tMayCoronaProduction_ClearGlobal[1])