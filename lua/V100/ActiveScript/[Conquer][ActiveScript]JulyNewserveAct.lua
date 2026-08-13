------------------------------------------------------------------------------------
--Name:			180627[英文征服][活动脚本]7月新服活动寻宝
--Creator: 		黄啸
--Created:		2018/06/27
------------------------------------------------------------------------------------

--命名：tJulyNewserveAct

--背包掩码
--stc: 178 76
--stc: 179 61
--stc: 179 62

--logid : 12001102
---------------------------------------常量表---------------------------------------
local tJulyNewserveAct = {}
--活动时间
tJulyNewserveAct["BeforeTime"] = tActivityTime["JulyNewserveAct"]["BeforeTime"]
tJulyNewserveAct["ActivityTime"] = tActivityTime["JulyNewserveAct"]["ActiveTime"]

--背包信掩码

tJulyNewserveAct["Stc"] = {}
tJulyNewserveAct["Stc"]["Event"] = 178
tJulyNewserveAct["Stc"]["Data"] = 76

--活动地图
tJulyNewserveAct["Map"] = {}
tJulyNewserveAct["Map"][1] = {}
tJulyNewserveAct["Map"][1]["Id"] = 1002
tJulyNewserveAct["Map"][1]["Postx"] = 339
tJulyNewserveAct["Map"][1]["Posty"] = 442
tJulyNewserveAct["Map"][1]["Npcid"] = 23022
tJulyNewserveAct["Map"][2] = {}
tJulyNewserveAct["Map"][2]["Id"] = 10350
tJulyNewserveAct["Map"][2]["Postx"] = 96
tJulyNewserveAct["Map"][2]["Posty"] = 90
tJulyNewserveAct["Map"][3] = {}
tJulyNewserveAct["Map"][3]["Id"] = 10364
tJulyNewserveAct["Map"][3]["Postx"] = 300
tJulyNewserveAct["Map"][3]["Posty"] = 279

--区分新老服
tJulyNewserveAct["GlobalId"] = 52984
--lasvegas服务器掩码
tJulyNewserveAct["GlobalIdLasvegas"] = 53255 

--跳转下线界面
tJulyNewserveAct["Weburl"] = "https://co.99.com/guide/event/2019/nostalgia/"
--天石回收
tJulyNewserveAct["NewWeburl"] = "https://coevent.99.com/animacpmarket/"
tJulyNewserveAct["NewWeburlLasvegas"] = "https://coevent.99.com/cpmarket/"

--天石收购大亨相关掩码记录

local tJulyNewserveAct_Stc = {}
--暂时记录玩家上交的天石数
tJulyNewserveAct_Stc[1] = {}
tJulyNewserveAct_Stc[1]["Event"] = 179
tJulyNewserveAct_Stc[1]["Type"] = 61
--玩家上传的天石数记录进掩码
tJulyNewserveAct_Stc[2] = {}
tJulyNewserveAct_Stc[2]["Event"] = 179
tJulyNewserveAct_Stc[2]["Type"] = 62

--emoneylog记录
local tJulyNewserveAct_Emoneylog = {}
tJulyNewserveAct_Emoneylog[161] = "350	21560	161	161	1	"
tJulyNewserveAct_Emoneylog[805] = "350	21561	805	805	1	"
tJulyNewserveAct_Emoneylog[1610] = "350	21562	1610	1610	1	"
tJulyNewserveAct_Emoneylog[16100] = "350	21570	16100	16100	1	"


local tJulyNewserveAct_Stonenum = {}
tJulyNewserveAct_Stonenum[1] = 161
tJulyNewserveAct_Stonenum[2] = 805
tJulyNewserveAct_Stonenum[3] = 1610
tJulyNewserveAct_Stonenum[4] = 16100

---------------------------------------逻辑-----------------------------------------
--进入相关活动地图
function JulyNewserveAct_Entermap(nTip)
	--若是进入嘉年华地图要进行活动时间判断

	local nMapid = tJulyNewserveAct["Map"][nTip]["Id"]
	local nPx = tJulyNewserveAct["Map"][nTip]["Postx"]
	local nPy = tJulyNewserveAct["Map"][nTip]["Posty"]
	
	-- 判断是否激情服
	if nTip == 1 and SpecialServer_ChkNoGiftServer() then
		nMapid = tJulyNewserveAct["Map"][3]["Id"]
		nPx = tJulyNewserveAct["Map"][3]["Postx"]
		nPy = tJulyNewserveAct["Map"][3]["Posty"]
	end
	
	User_UserRandBoundTrans(nMapid,nPx,nPy,5,5)
	--User_UserRandBoundTrans(nMapid,nPx,nPy,5,5,1)其中1是检查地图属性（包括是否可传送）
	--User_ChgMap(nMapid,nPx,nPy)
end

--npc主对白，主要区分在双龙城npc还有在其他夺宝活动的npc
function JulyNewserveAct_Mainmenu(nNpcId,nTip)

	tNpcGossip[nNpcId]["tOption1-2"] = {}

	local nNpcmapid = nTip

	if nTip ~= 1002 then
		tNpcGossip[nNpcId]["Option2"] = tJulyNewserveAct_Text[23022]["Option3"]
		tNpcGossip[nNpcId]["OptionFunc2"] = "JulyNewserveAct_Entermap</N>1"
		table.insert(tNpcGossip[nNpcId]["tOption1-2"],2)
	else
		tNpcGossip[nNpcId]["Option3"] = tJulyNewserveAct_Text[23022]["Option2"]
		tNpcGossip[nNpcId]["OptionFunc3"] = "JulyNewserveAct_Entermap</N>2"
		table.insert(tNpcGossip[nNpcId]["tOption1-2"],3)
	end
	tNpcGossip[nNpcId]["Option4"] = tJulyNewserveAct_Text[23022]["Option4"]
	table.insert(tNpcGossip[nNpcId]["tOption1-2"],4)
	return true
end


--寻找npc
function JulyNewserveAct_Gonpc(nItemId)
	
	if Item_ChkMulItem(nItemId,nItemId,1) and Item_DelMulItem(nItemId,nItemId,1) then
		
		--30点修行值
		User_AddCultivation(30)
		User_TalkChannel2005(tJulyNewserveAct_Text[nItemId]["Getexperience"])
		
		--寻路
		local nMapId = tJulyNewserveAct["Map"][1]["Id"]
		local nPosX = tJulyNewserveAct["Map"][1]["Postx"]
		local nPosY = tJulyNewserveAct["Map"][1]["Posty"]
		local nNpcId = tJulyNewserveAct["Map"][1]["Npcid"]
		Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
		
	end
end

--跳转下线界面
function JulyNewserveAct_Goweb(nItemId)
	
	if Item_ChkMulItem(nItemId,nItemId,1) and Item_DelMulItem(nItemId,nItemId,1) then
		
		--30点修行值
		User_AddCultivation(30)
		User_TalkChannel2005(tJulyNewserveAct_Text[nItemId]["Getexperience"])
		
		--跳转界面
		local nUserId = Get_UserId()
		local sPszParam = tJulyNewserveAct["Weburl"]
		User_SendWebPage(sPszParam,nUserId)
		
	end
end

--不同新老服，物品的逻辑不同(0是老服，1是新服)
function JulyNewserveAct_BackItem(nItemId)
	tItem[nItemId]["tOption1-1"] = {}

	local nGlobalId = tJulyNewserveAct["GlobalId"]
	local nGlobalNum = Get_SysDynaGlobalData(nGlobalId,0)
	
	if nGlobalNum == 1 then
		tItem[nItemId]["Option1"] = tJulyNewserveAct_Text[nItemId]["Option1"]
		tItem[nItemId]["OptionFunc1"] = "JulyNewserveAct_Gonpc</N>"..nItemId
		table.insert(tItem[nItemId]["tOption1-1"],1)
	else
		tItem[nItemId]["Option2"] = tJulyNewserveAct_Text[nItemId]["Option2"]
		tItem[nItemId]["OptionFunc2"] = "JulyNewserveAct_Goweb</N>"..nItemId
		table.insert(tItem[nItemId]["tOption1-1"],2)
		tItem[nItemId]["Option3"] = tJulyNewserveAct_Text[nItemId]["Option3"]
		table.insert(tItem[nItemId]["tOption1-1"],3)
	end
	
	return true
end

function JulyNewserveAct_EmoneyNum(nNpcId)
	local nEvent = tJulyNewserveAct_Stc[1]["Event"]
	local nType = tJulyNewserveAct_Stc[1]["Type"]
	local nMoney = Get_UserStatisticValue(nEvent,nType)
	tNpcGossip[nNpcId]["Text117"] = string.format(tJulyNewserveAct_Text[nNpcId]["Text117"],nMoney)
	return true
end

--最终确定上交相应天石
function JulyNewserveAct_SendMoneysure(nNpcId)
	local nEvent = tJulyNewserveAct_Stc[1]["Event"]
	local nType = tJulyNewserveAct_Stc[1]["Type"]
	local nMoney = Get_UserStatisticValue(nEvent,nType)

	--判断玩家天石数量是否充足
	local nEmoneyNum = Get_UserEMoney()
	if nEmoneyNum < nMoney then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	--扣除天石
	User_AddEMoney(-nMoney)
	
	--记录玩家上交的天石数量
	local nEventsumMoney = tJulyNewserveAct_Stc[2]["Event"]
	local nTypesumMoney = tJulyNewserveAct_Stc[2]["Type"]
	Task_AddStatistic(nEventsumMoney,nTypesumMoney,nMoney,1)
	

	if tJulyNewserveAct_Emoneylog[nMoney] == nil then
		return
	end
	
	--记录emoneylog
	Sys_SaveEmoneyBuy(tJulyNewserveAct_Emoneylog[nMoney])
	--105提示
	Sys_MsgBox(string.format(tJulyNewserveAct_Text[23082]["Text118"],nMoney))
end

--跳转活动界面
function JulyNewserveAct_Stoneget()
	local nUserId = Get_UserId()
	local nWeb = tJulyNewserveAct["NewWeburl"]
	--判断是否是lasvegas
	local nGlobalId = tJulyNewserveAct["GlobalIdLasvegas"]
	local nGlobalNum = Get_SysDynaGlobalData(nGlobalId,0)
	if nGlobalNum == 1 then
		nWeb = tJulyNewserveAct["NewWeburlLasvegas"]	
	end
	User_SendWebPage(nWeb,nUserId)
end

--天石回收上交天石
function JulyNewserveAct_Sendstone(nNpcId,nTip)
	local nEmoneylog = tJulyNewserveAct_Stonenum[nTip]
	
	--判断玩家天石数量是否充足
	local nEmoneyNum = Get_UserEMoney()
	if nEmoneyNum < nEmoneylog then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	--存贮金额进入掩码
	local nEventmoney = tJulyNewserveAct_Stc[1]["Event"]
	local nTypemoney = tJulyNewserveAct_Stc[1]["Type"]
	Task_SetStatistic(nEventmoney,nTypemoney,nEmoneylog,1)
	Task_SetStcTimestamp(nEventmoney,nTypemoney,0)
	
	--跳转三级界面
	LinkNpcGossipFunc_New(nNpcId,"4-1")
	
end
--------------------------------------npc模板---------------------------------------

--【夺宝嘉年华】夺宝大使（传送到地图内）
tNpcFace[6127] = 52
tNpcGossip[23022] = tNpcGossip[23022] or DefaultNpc:new{}
tNpcGossip[23022]["OptionHidden"] = 1
tNpcGossip[23022]["DialogueText"] = tJulyNewserveAct_Text[23022]
--活动前
tNpcGossip[23022]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[23022]["tOption1-1"] = {1}
tNpcGossip[23022]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tJulyNewserveAct["BeforeTime"])
end

--活动中
--新活动地图中
tNpcGossip[23022]["Text1-2"] = {111,112,113,114,115,116,117}
tNpcGossip[23022]["tOption1-2"] = {2}
tNpcGossip[23022]["ChkFunc1-2"] = function ()
	return JulyNewserveAct_Mainmenu(23022,1002)
end
tNpcGossip[23141] = tNpcGossip[23022]

--其他npc在活动地图外
tNpcGossip[23023] = tNpcGossip[23023] or DefaultNpc:new{}
tNpcGossip[23023]["OptionHidden"] = 1
tNpcGossip[23023]["DialogueText"] = tJulyNewserveAct_Text[23023]
--活动前
tNpcGossip[23023]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[23023]["tOption1-1"] = {1}
tNpcGossip[23023]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tJulyNewserveAct["BeforeTime"])
end
tNpcGossip[23023]["Text1-2"] = {111,112,113,114,115,116,117}
tNpcGossip[23023]["tOption1-2"] = {2}
tNpcGossip[23023]["ChkFunc1-2"] = function ()
	return JulyNewserveAct_Mainmenu(23023,10350)
end

tNpcGossip[23024] = tNpcGossip[23023]
tNpcGossip[23025] = tNpcGossip[23023]


--轮盘Npc
tNpcFace[3521] = 217
tNpcGossip[10796] = tNpcGossip[10796] or DefaultNpc:new{}
tNpcGossip[10796]["OptionHidden"] = 1
tNpcGossip[10796]["DialogueText"] = tJulyNewserveAct_Text[10796]
--活动前
tNpcGossip[10796]["Text1-1"] = {111}
tNpcGossip[10796]["tOption1-1"] = {1}
tNpcGossip[10796]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tActivityTime["OctoberNewServer"]["BeforeActivityTime"])
end
--活动后
tNpcGossip[10796]["Text1-2"] = {112}
tNpcGossip[10796]["tOption1-2"] = {1}
tNpcGossip[10796]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tActivityTime["OctoberNewServer"]["ActivityTime"])
end
--活动中
tNpcGossip[10796]["Text1-3"] = {113}
tNpcGossip[10796]["tOption1-3"] = {2,3,4,5,6}
--转动轮盘
tNpcGossip[10796]["OptionFunc2"] = "RouletteMould_Main</N>3908"
tNpcGossip[10796]["OptionFunc3"] = "RouletteMould_Main</N>3909"
tNpcGossip[10796]["OptionFunc4"] = "RouletteMould_Main</N>3910"
tNpcGossip[10796]["OptionFunc5"] = "RouletteMould_Main</N>3911"
tNpcGossip[10796]["OptionFunc6"] = "RouletteMould_Main</N>3912"

tNpcGossip[23146] = tNpcGossip[10796]


--天石收购大亨
tNpcFace[3523] = 84
tNpcGossip[23082] = tNpcGossip[23082] or DefaultNpc:new{}
tNpcGossip[23082]["OptionHidden"] = 1
tNpcGossip[23082]["DialogueText"] = tJulyNewserveAct_Text[23082]
--活动中
tNpcGossip[23082]["Text1-1"] = {111,112,113,114}
tNpcGossip[23082]["tOption1-1"] = {1,2}
tNpcGossip[23082]["OptionPoint1"] = "2-1"
tNpcGossip[23082]["OptionFunc2"] = "JulyNewserveAct_Stoneget"

--确认购买天石
tNpcGossip[23082]["Text2-1"] = {115}
tNpcGossip[23082]["tOption2-1"] = {3,4,5,51}
tNpcGossip[23082]["OptionFunc3"] = "JulyNewserveAct_Sendstone</N>23082</N>1"
tNpcGossip[23082]["OptionFunc4"] = "JulyNewserveAct_Sendstone</N>23082</N>2"
tNpcGossip[23082]["OptionFunc5"] = "JulyNewserveAct_Sendstone</N>23082</N>3"
tNpcGossip[23082]["OptionFunc51"] = "JulyNewserveAct_Sendstone</N>23082</N>4"

--玩家天石不足
tNpcGossip[23082]["Text3-1"] = {116}
tNpcGossip[23082]["tOption3-1"] = {6}



--三级界面
tNpcGossip[23082]["Text4-1"] = {117}
tNpcGossip[23082]["tOption4-1"] = {7,8}
tNpcGossip[23082]["OptionFunc7"] = "JulyNewserveAct_SendMoneysure</N>23082"
tNpcGossip[23082]["OptionPoint8"] = 1
tNpcGossip[23082]["ChkFunc4-1"] = function ()
	return JulyNewserveAct_EmoneyNum(23082)
end

--新增天石回收商人在双龙城内
tNpcGossip[23126] = tNpcGossip[23082]


--盛夏狂欢召集令
tItemFace[3309967] = 1623
tItem[3309967] = tItem[3309967] or {}
tItem[3309967]["DialogueText"] = tJulyNewserveAct_Text[3309967]
tItem[3309967]["Text1-1"] = {111,112}
tItem[3309967]["tOption1-1"] = {1}
tItem[3309967]["ChkFunc1-1"] = function ()
	return JulyNewserveAct_BackItem(3309967)
end

