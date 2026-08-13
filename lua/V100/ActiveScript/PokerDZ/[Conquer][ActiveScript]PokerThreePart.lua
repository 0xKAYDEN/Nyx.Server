------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]德州三期版本
--Purpose:	[征服][活动脚本]德州三期版本
--Creator: 	张磊
--Created:	2016/02/01
------------------------------------------------------------------------------------






-- [Conquer][ActiveScript]PokerThreePart




local tPokerThreePart_Cont = {}
	
	tPokerThreePart_Cont["DilagId"] = 878
	
	tPokerThreePart_Cont["EnterSever"] = {}
	
	tPokerThreePart_Cont["EnterSever"]["SeverId"] = 200
	tPokerThreePart_Cont["EnterSever"]["GoldSeverId"] = 108
	tPokerThreePart_Cont["EnterSever"]["Type"] = 12
	tPokerThreePart_Cont["EnterSever"]["ConfigType"] = 134
	tPokerThreePart_Cont["EnterSever"]["ConfigType2"] = 156
	tPokerThreePart_Cont["EnterSever"]["ConfigType3"] = 164
	tPokerThreePart_Cont["EnterSever"]["ConfigType4"] = 169
	
	-- 旧德州地图
	tPokerThreePart_Cont["Record"] = {}
	tPokerThreePart_Cont["Record"]["MapId"] = 1858
	tPokerThreePart_Cont["Record"]["X"] = 164
	tPokerThreePart_Cont["Record"]["Y"] = 139

	-- 新德州地图
	tPokerThreePart_Cont["Record1"] = {}
	tPokerThreePart_Cont["Record1"]["MapId"] = 3053
	tPokerThreePart_Cont["Record1"]["X"] = 203
	tPokerThreePart_Cont["Record1"]["Y"] = 153
	
	-- 判断新旧德州是否开放
	tPokerThreePart_Cont["global"] = 51995
	
	tPokerThreePart_Cont["Room"] = {}
	tPokerThreePart_Cont["Room"]["Dialog"] = 2602
	tPokerThreePart_Cont["Room"][1] = {}
	tPokerThreePart_Cont["Room"][1]["MapId"] = 3053
	tPokerThreePart_Cont["Room"][1]["PosX"] = 203
	tPokerThreePart_Cont["Room"][1]["PosY"] = 153
	tPokerThreePart_Cont["Room"][2] = {}
	tPokerThreePart_Cont["Room"][2]["MapId"] = 3053
	tPokerThreePart_Cont["Room"][2]["PosX"] = 267
	tPokerThreePart_Cont["Room"][2]["PosY"] = 257
	tPokerThreePart_Cont["Room"][3] = {}
	tPokerThreePart_Cont["Room"][3]["MapId"] = 1860
	tPokerThreePart_Cont["Room"][3]["PosX"] = 55
	tPokerThreePart_Cont["Room"][3]["PosY"] = 62
	tPokerThreePart_Cont["Room"][4] = {}
	tPokerThreePart_Cont["Room"][4]["MapId"] = 3852
	tPokerThreePart_Cont["Room"][4]["PosX"] = 55
	tPokerThreePart_Cont["Room"][4]["PosY"] = 62
	
-- 德州数据
local tPokerThreePart_Data = {}
-- 地图落脚点
tPokerThreePart_Data["MapData"] = {}
-- 1层
tPokerThreePart_Data["MapData"][1] = {}
tPokerThreePart_Data["MapData"][1]["MapId"] = 4027
tPokerThreePart_Data["MapData"][1]["PosX"] = 204
tPokerThreePart_Data["MapData"][1]["PosY"] = 154
-- 2层
tPokerThreePart_Data["MapData"][2] = {}
tPokerThreePart_Data["MapData"][2]["MapId"] = 4028
tPokerThreePart_Data["MapData"][2]["PosX"] = 204
tPokerThreePart_Data["MapData"][2]["PosY"] = 154
-- 3层
tPokerThreePart_Data["MapData"][3] = {}
tPokerThreePart_Data["MapData"][3]["MapId"] = 4029
tPokerThreePart_Data["MapData"][3]["PosX"] = 204
tPokerThreePart_Data["MapData"][3]["PosY"] = 154
-- 4层
tPokerThreePart_Data["MapData"][4] = {}
tPokerThreePart_Data["MapData"][4]["MapId"] = 4030
tPokerThreePart_Data["MapData"][4]["PosX"] = 204
tPokerThreePart_Data["MapData"][4]["PosY"] = 154

tPokerThreePart_Data["Global"] = 54018

-- 记录log  记录1[1]表示从Eternity到Lightning   1[2]表示从Lightning到Eternity
tPokerThreePart_Data["ChgMapLog"] = "0,0,0,0,12001791,1[%d],0,0"


-- 打开仓库界面
function PokerThreePart_OpenDilag()

	User_OpenDialog(tPokerThreePart_Cont["DilagId"] )
end


-- 回本服
function PokerThreePart_GoMySever()

	Sys_ExitOS()
end

--去跨服比赛地图
function PokerThreePart_GoCrossMap()
	-- local nGlobalId = tPokerThreePart_Cont["global"]
	-- local nData0 = Get_SysDynaGlobalData0(nGlobalId)

	-- if nData0 == 1 then
	User_RecordPoint(tPokerThreePart_Cont["Record1"]["MapId"],tPokerThreePart_Cont["Record1"]["X"],tPokerThreePart_Cont["Record1"]["Y"])
	-- else
		-- User_RecordPoint(tPokerThreePart_Cont["Record"]["MapId"],tPokerThreePart_Cont["Record"]["X"],tPokerThreePart_Cont["Record"]["Y"])
	-- end
	
	-- local nServerId = tPokerThreePart_Cont["EnterSever"]["SeverId"]
	-- 修改为前往小组国境
	local nServerId = Get_FrontierServerID()
	
	local nType = tPokerThreePart_Cont["EnterSever"]["Type"]
	local nConfigMapFlag = tPokerThreePart_Cont["EnterSever"]["ConfigType"]
	
	local nGlobalId = tPokerThreePart_Data["Global"]
	local nData0 = Get_SysDynaGlobalData0(nGlobalId)
	if nData0 == 1 then
		nConfigMapFlag = tPokerThreePart_Cont["EnterSever"]["ConfigType2"]
	elseif nData0 == 2 then
		nConfigMapFlag = tPokerThreePart_Cont["EnterSever"]["ConfigType3"]
	elseif nData0 == 3 then
		nConfigMapFlag = tPokerThreePart_Cont["EnterSever"]["ConfigType4"]
	end
	
	--判断是否金币服
	if CommonFunc_ChkGoldServer() then
		nServerId = tPokerThreePart_Cont["EnterSever"]["GoldSeverId"]
	end
	
	Sys_EnterServer(nServerId ,nType,0,nConfigMapFlag)
end


-- 小石头去跨服比赛地图
function PokerThreePart_StoneGoCrossMap()
	
	User_RecordPoint(tPokerThreePart_Cont["Record1"]["MapId"],tPokerThreePart_Cont["Record1"]["X"],tPokerThreePart_Cont["Record1"]["Y"])
	
	local nServerId = Get_FrontierServerID()
	local nType = tPokerThreePart_Cont["EnterSever"]["Type"]
	local nConfigMapFlag = tPokerThreePart_Cont["EnterSever"]["ConfigType"]
	
	
	Sys_EnterServer(nServerId ,nType,0,nConfigMapFlag)
end

-- 去下一个地图
function PokerThreePart_EnterTheOtherFloor(nPokerThreePart_Index)
	local nPokerThreePart_MapId = tPokerThreePart_Data["MapData"][nPokerThreePart_Index]["MapId"]
	local nPokerThreePart_PosX = tPokerThreePart_Data["MapData"][nPokerThreePart_Index]["PosX"]
	local nPokerThreePart_PosY = tPokerThreePart_Data["MapData"][nPokerThreePart_Index]["PosY"]
	
	if User_UserRandBoundTrans(nPokerThreePart_MapId, nPokerThreePart_PosX, nPokerThreePart_PosY, 5, 5, 0) then
		local sLog = string.format(tPokerThreePart_Data["ChgMapLog"], nPokerThreePart_Index)
		Sys_SaveActionFestivalLog(sLog)
	end
end

--进入德州地图
function PokerThreePart_EnterPokerRoom(nPokerThreePart_Index)
	--如果是cop，则弹出界面
	if not Sys_ChkUserNormalClient() then
		User_OpenDialog(tPokerThreePart_Cont["Room"]["Dialog"])
		return
	end
	
	if nPokerThreePart_Index == 1 then
		PokerThreePart_GoCrossMap()
		return
	end
	
	local nPokerThreePart_MapId =tPokerThreePart_Cont["Room"][nPokerThreePart_Index]["MapId"]
	local nPokerThreePart_PosX = tPokerThreePart_Cont["Room"][nPokerThreePart_Index]["PosX"]
	local nPokerThreePart_PosY = tPokerThreePart_Cont["Room"][nPokerThreePart_Index]["PosY"]
	
	if User_UserRandBoundTrans(nPokerThreePart_MapId, nPokerThreePart_PosX, nPokerThreePart_PosY, 1, 1, 1) then
		User_TalkChannel2005(tPokerThreePart_Text["Channel2005"][nPokerThreePart_Index])
		
		if nPokerThreePart_Index == 1 then
			TexasActivity_WebPage()
			TexasActivity_NoviceGuide()
		end
	end
end


--npc 模板	22163
-- 宣传NPC
tNpcGossip[22163]  = tNpcGossip[10993] 
-- 分销售卖NPC-SilverSeller
tNpcGossip[22164]  = tNpcGossip[21898] 


-- 头像
tNpcFace[4426] = 46

tNpcGossip[22167] = tNpcGossip[22167] or DefaultNpc:new{}
tNpcGossip[22167]["OptionHidden"] = 1
tNpcGossip[22167]["DialogueText"] = tPokerThreePart_Text[22167]

tNpcGossip[22167]["Text1-1"] = {111}
tNpcGossip[22167]["tOption1-1"] = {1,2}
tNpcGossip[22167]["OptionFunc1"] = "PokerThreePart_GoMySever"

--头像
tNpcFace[4425] = 119

tNpcGossip[22166] = tNpcGossip[22166] or DefaultNpc:new{}
tNpcGossip[22166]["OptionHidden"] = 1
tNpcGossip[22166]["DialogueText"] = tPokerThreePart_Text[22166]

tNpcGossip[22166]["Text1-1"] = {111}
tNpcGossip[22166]["tOption1-1"] = {1,2}
tNpcGossip[22166]["OptionFunc1"] = "PokerThreePart_GoCrossMap"

tNpcGossip[22315] = tNpcGossip[22166]
tNpcGossip[22316] = tNpcGossip[22166]
tNpcGossip[22317] = tNpcGossip[22166]



-- 跨服德州向导
tNpcFace[4099] = 175

tNpcGossip[25762] = tNpcGossip[25762] or DefaultNpc:new{}
tNpcGossip[25762]["OptionHidden"] = 1
tNpcGossip[25762]["DialogueText"] = tPokerThreePart_Text[25762]
tNpcGossip[25762]["Text1-1"] = {111}
tNpcGossip[25762]["tOption1-1"] = {111,114,115,112,113}
tNpcGossip[25762]["OptionFunc111"] = "PokerThreePart_EnterTheOtherFloor</N>2"
tNpcGossip[25762]["OptionFunc114"] = "PokerThreePart_EnterTheOtherFloor</N>3"
tNpcGossip[25762]["OptionFunc115"] = "PokerThreePart_EnterTheOtherFloor</N>4"
tNpcGossip[25762]["OptionFunc112"] = "Sys_ExitOS"

tNpcGossip[25763] = tNpcGossip[25763] or DefaultNpc:new{}
tNpcGossip[25763]["OptionHidden"] = 1
tNpcGossip[25763]["DialogueText"] = tPokerThreePart_Text[25762]
tNpcGossip[25763]["Text1-1"] = {111}
tNpcGossip[25763]["tOption1-1"] = {111,114,115,112,113}
tNpcGossip[25763]["OptionFunc111"] = "PokerThreePart_EnterTheOtherFloor</N>2"
tNpcGossip[25763]["OptionFunc114"] = "PokerThreePart_EnterTheOtherFloor</N>3"
tNpcGossip[25763]["OptionFunc115"] = "PokerThreePart_EnterTheOtherFloor</N>4"
tNpcGossip[25763]["OptionFunc112"] = "Sys_ExitOS"

tNpcGossip[25765] = tNpcGossip[25765] or DefaultNpc:new{}
tNpcGossip[25765]["OptionHidden"] = 1
tNpcGossip[25765]["DialogueText"] = tPokerThreePart_Text[25765]
tNpcGossip[25765]["Text1-1"] = {111}
tNpcGossip[25765]["tOption1-1"] = {111,114,115,112,113}
tNpcGossip[25765]["OptionFunc111"] = "PokerThreePart_EnterTheOtherFloor</N>1"
tNpcGossip[25765]["OptionFunc114"] = "PokerThreePart_EnterTheOtherFloor</N>3"
tNpcGossip[25765]["OptionFunc115"] = "PokerThreePart_EnterTheOtherFloor</N>4"
tNpcGossip[25765]["OptionFunc112"] = "Sys_ExitOS"

tNpcGossip[25766] = tNpcGossip[25766] or DefaultNpc:new{}
tNpcGossip[25766]["OptionHidden"] = 1
tNpcGossip[25766]["DialogueText"] = tPokerThreePart_Text[25765]
tNpcGossip[25766]["Text1-1"] = {111}
tNpcGossip[25766]["tOption1-1"] = {111,114,115,112,113}
tNpcGossip[25766]["OptionFunc111"] = "PokerThreePart_EnterTheOtherFloor</N>1"
tNpcGossip[25766]["OptionFunc114"] = "PokerThreePart_EnterTheOtherFloor</N>3"
tNpcGossip[25766]["OptionFunc115"] = "PokerThreePart_EnterTheOtherFloor</N>4"
tNpcGossip[25766]["OptionFunc112"] = "Sys_ExitOS"

tNpcGossip[25943] = tNpcGossip[25943] or DefaultNpc:new{}
tNpcGossip[25943]["OptionHidden"] = 1
tNpcGossip[25943]["DialogueText"] = tPokerThreePart_Text[25943]
tNpcGossip[25943]["Text1-1"] = {111}
tNpcGossip[25943]["tOption1-1"] = {111,114,115,112,113}
tNpcGossip[25943]["OptionFunc111"] = "PokerThreePart_EnterTheOtherFloor</N>1"
tNpcGossip[25943]["OptionFunc114"] = "PokerThreePart_EnterTheOtherFloor</N>2"
tNpcGossip[25943]["OptionFunc115"] = "PokerThreePart_EnterTheOtherFloor</N>4"
tNpcGossip[25943]["OptionFunc112"] = "Sys_ExitOS"

tNpcGossip[25944] = tNpcGossip[25944] or DefaultNpc:new{}
tNpcGossip[25944]["OptionHidden"] = 1
tNpcGossip[25944]["DialogueText"] = tPokerThreePart_Text[25943]
tNpcGossip[25944]["Text1-1"] = {111}
tNpcGossip[25944]["tOption1-1"] = {111,114,115,112,113}
tNpcGossip[25944]["OptionFunc111"] = "PokerThreePart_EnterTheOtherFloor</N>1"
tNpcGossip[25944]["OptionFunc114"] = "PokerThreePart_EnterTheOtherFloor</N>2"
tNpcGossip[25944]["OptionFunc115"] = "PokerThreePart_EnterTheOtherFloor</N>4"
tNpcGossip[25944]["OptionFunc112"] = "Sys_ExitOS"

tNpcGossip[26967] = tNpcGossip[26967] or DefaultNpc:new{}
tNpcGossip[26967]["OptionHidden"] = 1
tNpcGossip[26967]["DialogueText"] = tPokerThreePart_Text[26967]
tNpcGossip[26967]["Text1-1"] = {111}
tNpcGossip[26967]["tOption1-1"] = {111,114,115,112,113}
tNpcGossip[26967]["OptionFunc111"] = "PokerThreePart_EnterTheOtherFloor</N>1"
tNpcGossip[26967]["OptionFunc114"] = "PokerThreePart_EnterTheOtherFloor</N>2"
tNpcGossip[26967]["OptionFunc115"] = "PokerThreePart_EnterTheOtherFloor</N>3"
tNpcGossip[26967]["OptionFunc112"] = "Sys_ExitOS"

tNpcGossip[26968] = tNpcGossip[26968] or DefaultNpc:new{}
tNpcGossip[26968]["OptionHidden"] = 1
tNpcGossip[26968]["DialogueText"] = tPokerThreePart_Text[26967]
tNpcGossip[26968]["Text1-1"] = {111}
tNpcGossip[26968]["tOption1-1"] = {111,114,115,112,113}
tNpcGossip[26968]["OptionFunc111"] = "PokerThreePart_EnterTheOtherFloor</N>1"
tNpcGossip[26968]["OptionFunc114"] = "PokerThreePart_EnterTheOtherFloor</N>2"
tNpcGossip[26968]["OptionFunc115"] = "PokerThreePart_EnterTheOtherFloor</N>3"
tNpcGossip[26968]["OptionFunc112"] = "Sys_ExitOS"

tNpcFace[679] = 175
tNpcGossip[6297] = tNpcGossip[6297] or DefaultNpc:new{}
tNpcGossip[6297]["OptionHidden"] = 1
tNpcGossip[6297]["DialogueText"] = tPokerThreePart_Text[6297]
tNpcGossip[6297]["Text1-1"] = {111,112}
tNpcGossip[6297]["tOption1-1"] = {111,113,114,115}
tNpcGossip[6297]["OptionFunc111"] = "PokerThreePart_EnterPokerRoom</N>1"
--tNpcGossip[6297]["OptionFunc112"] = "PokerThreePart_EnterPokerRoom</N>2"
tNpcGossip[6297]["OptionFunc113"] = "PokerThreePart_EnterPokerRoom</N>3"
tNpcGossip[6297]["OptionFunc114"] = "PokerThreePart_EnterPokerRoom</N>4"
--tNpcGossip[6297]["OptionChkFunc112"] = function ()
--	return Sys_ChkUserNormalClient()
--end
tNpcGossip[6297]["OptionChkFunc113"] = function ()
	return Sys_ChkUserNormalClient()
end
tNpcGossip[6297]["OptionChkFunc114"] = tNpcGossip[6297]["OptionChkFunc113"]
tNpcGossip[6297]["OptionChkFunc115"] = tNpcGossip[6297]["OptionChkFunc113"]

tNpcGossip[22202] = tNpcGossip[6297]
