------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]手动组队报名npc制作（2.18-2.27）
--Purpose:	手动组队报名npc制作（2.18-2.27）
--Creator: 	张世超
--Created:	2016/02/03
------------------------------------------------------------------------------------
--报名时间改成2.25-3.5

-- 命名前缀
-- Signup_



-- 常量表
local tSignup_Count = {}
	tSignup_Count["Space"] = 5	--背包
	tSignup_Count["Emoney"] = 1000	--报名费用
	-- tSignup_Count["AwardItem"] = 132019	--报名奖励
	tSignup_Count["AwardItem"] = 192465	--报名奖励
	tSignup_Count["AwardAttr"] = "0 5"	--非绑定永久
	
	--报名时间
	tSignup_Count["BeforeActivityTime"] = "2016-01-01 00:00 2016-02-24 23:59"
	tSignup_Count["ActivityTime"] = "2016-02-25 00:00 2016-03-05 23:59"
	
	-- tSignup_Count["BeforeActivityTime"] = "2016-01-01 00:00 2016-02-02 23:59"
	-- tSignup_Count["ActivityTime"] = "2016-02-03 00:00 2016-02-09 23:59"	
	
	--等级限制
	tSignup_Count["Metempsychosis"] = 2
	tSignup_Count["Level"] = 130

	tSignup_Count["WebSite"] = "http://event.co.99.com/superteam/"
	tSignup_Count["Log"] = "1000,0,0,0,10000881,2,%s,5"
	tSignup_Count["EmoneyLog"] = "350	20938	1000	1000	1	"

-- stc掩码表
local tSignup_Stc = {}
	tSignup_Stc["EventType"] = 141
	tSignup_Stc["DataType"] = 85
	tSignup_Stc["Signup"] = 1


	
--------------------------------------逻辑部分-----------------------------------------
function Signup_Web()
	User_SendWebPage(tSignup_Count["WebSite"])
end

function Signup_Check(nNpcId)
	if not Sys_ChkFullTime(tSignup_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	local nEvent = tSignup_Stc["EventType"] 
	local nType = tSignup_Stc["DataType"]
	--玩家已报名
	if Task_ChkStcValue(nEvent,nType,">=",tSignup_Stc["Signup"]) then
		LinkNpcGossipFunc_New(nNpcId,"10-1")
		return
	end
	--等级限制
	local nLevel = tSignup_Count["Level"]
	local nMetempsychosis = tSignup_Count["Metempsychosis"]
	if not ((Get_UserMetempsychosis()>=nMetempsychosis) and (Get_UserLevel()>=nLevel)) then
		LinkNpcGossipFunc_New(nNpcId,"10-2")
		return
	end
	--天石不足
	if Get_UserEMoney() <  tSignup_Count["Emoney"] then
		LinkNpcGossipFunc_New(nNpcId,"10-3")
		return
	end
	--进行二次确认
	LinkNpcGossipFunc_New(nNpcId,"11-1")
end

function Signup_Comfirm(nNpcId)
	--活动时间检查
	if not Sys_ChkFullTime(tSignup_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	--天石不足
	if Get_UserEMoney() < tSignup_Count["Emoney"] then
		LinkNpcGossipFunc_New(nNpcId,"10-3")
		return
	end
	--背包空间
	if not User_CheckLeftSpace(tSignup_Count["Space"]) then
		LinkNpcGossipFunc_New(nNpcId,"10-4")
		return
	end
	--条件符合，扣天石、打掩码、给奖励
	if not User_AddEMoney(-tSignup_Count["Emoney"]) then
		LinkNpcGossipFunc_New(nNpcId,"10-3")
		return
	end
	local nEvent = tSignup_Stc["EventType"] 
	local nType = tSignup_Stc["DataType"]
	local sLog = tSignup_Count["Log"]
	local sEmoneyLog = tSignup_Count["EmoneyLog"]
	Task_SetStatistic(nEvent,nType,tSignup_Stc["Signup"],1)
	Item_AddNewItem(tSignup_Count["AwardItem"],tSignup_Count["AwardAttr"])
	Sys_SaveActionFestivalLog(string.format(sLog,tSignup_Count["AwardItem"]))
	Sys_SaveEmoneyBuy(sEmoneyLog)
	LinkNpcGossipFunc_New(nNpcId,"11-2")

end



-------------------------------------------------NPC配置------------------------------------------------

tNpcFace[4010] = 53
tNpcGossip[10747] = tNpcGossip[10747] or DefaultNpc:new{}
tNpcGossip[10747]["OptionHidden"] = 1

--活动前
tNpcGossip[10747]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[10747]["tOption1-1"] = {1}
tNpcGossip[10747]["Text111"] = tSignup_Text[10747]["Text111"]
tNpcGossip[10747]["Text112"] = tSignup_Text[10747]["Text112"]
tNpcGossip[10747]["Text113"] = tSignup_Text[10747]["Text113"]
tNpcGossip[10747]["Text114"] = tSignup_Text[10747]["Text114"]
tNpcGossip[10747]["Text115"] = tSignup_Text[10747]["Text115"]
tNpcGossip[10747]["Option1"] = tSignup_Text[10747]["Option1"]
tNpcGossip[10747]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tSignup_Count["BeforeActivityTime"])
end

--活动后
tNpcGossip[10747]["Text1-2"] = {121,122}
tNpcGossip[10747]["tOption1-2"] = {2,3,4}
tNpcGossip[10747]["Text121"] = tSignup_Text[10747]["Text121"]
tNpcGossip[10747]["Text122"] = tSignup_Text[10747]["Text122"]
tNpcGossip[10747]["Option2"] = tSignup_Text[10747]["Option2"]
tNpcGossip[10747]["Option3"] = tSignup_Text[10747]["Option3"]
tNpcGossip[10747]["Option4"] = tSignup_Text[10747]["Option4"]
tNpcGossip[10747]["OptionPoint2"] = "2-1"
tNpcGossip[10747]["OptionFunc3"] = "Signup_Web"
tNpcGossip[10747]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tSignup_Count["ActivityTime"])
end

--活动中
tNpcGossip[10747]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[10747]["tOption1-3"] = {10,11,12,13}
tNpcGossip[10747]["Text131"] = tSignup_Text[10747]["Text131"]
tNpcGossip[10747]["Text132"] = tSignup_Text[10747]["Text132"]
tNpcGossip[10747]["Text133"] = tSignup_Text[10747]["Text133"]
tNpcGossip[10747]["Text134"] = tSignup_Text[10747]["Text134"]
tNpcGossip[10747]["Text135"] = tSignup_Text[10747]["Text135"]
tNpcGossip[10747]["Option10"] = tSignup_Text[10747]["Option10"]
tNpcGossip[10747]["Option11"] = tSignup_Text[10747]["Option11"]
tNpcGossip[10747]["Option12"] = tSignup_Text[10747]["Option12"]
tNpcGossip[10747]["Option13"] = tSignup_Text[10747]["Option13"]
tNpcGossip[10747]["OptionFunc10"] = "Signup_Check</N>10747"
tNpcGossip[10747]["OptionPoint11"] = "2-1"
tNpcGossip[10747]["OptionFunc12"] = "Signup_Web"

--了解详情
tNpcGossip[10747]["Text2-1"] = {211,212}
tNpcGossip[10747]["tOption2-1"] = {20,21,22}
tNpcGossip[10747]["Text211"] = tSignup_Text[10747]["Text211"]
tNpcGossip[10747]["Text212"] = tSignup_Text[10747]["Text212"]
tNpcGossip[10747]["Option20"] = tSignup_Text[10747]["Option20"]
tNpcGossip[10747]["Option21"] = tSignup_Text[10747]["Option21"]
tNpcGossip[10747]["Option22"] = tSignup_Text[10747]["Option22"]
tNpcGossip[10747]["OptionPoint20"] = "2-2"
tNpcGossip[10747]["OptionPoint21"] = "2-3"

--查看比赛时间。
tNpcGossip[10747]["Text2-2"] = {221,222,223,224,225,226}
tNpcGossip[10747]["tOption2-2"] = {25,26}
tNpcGossip[10747]["Text221"] = tSignup_Text[10747]["Text221"]
tNpcGossip[10747]["Text222"] = tSignup_Text[10747]["Text222"]
tNpcGossip[10747]["Text223"] = tSignup_Text[10747]["Text223"]
tNpcGossip[10747]["Text224"] = tSignup_Text[10747]["Text224"]
tNpcGossip[10747]["Text225"] = tSignup_Text[10747]["Text225"]
tNpcGossip[10747]["Text226"] = tSignup_Text[10747]["Text226"]
tNpcGossip[10747]["Option25"] = tSignup_Text[10747]["Option25"]
tNpcGossip[10747]["Option26"] = tSignup_Text[10747]["Option26"]
tNpcGossip[10747]["OptionPoint25"] = "2-1"

--都有哪些奖励？
tNpcGossip[10747]["Text2-3"] = {231,232,233,234,235}
tNpcGossip[10747]["tOption2-3"] = {27,28}
tNpcGossip[10747]["Text231"] = tSignup_Text[10747]["Text231"]
tNpcGossip[10747]["Text232"] = tSignup_Text[10747]["Text232"]
tNpcGossip[10747]["Text233"] = tSignup_Text[10747]["Text233"]
tNpcGossip[10747]["Text234"] = tSignup_Text[10747]["Text234"]
tNpcGossip[10747]["Text235"] = tSignup_Text[10747]["Text235"]
tNpcGossip[10747]["Option27"] = tSignup_Text[10747]["Option27"]
tNpcGossip[10747]["Option28"] = tSignup_Text[10747]["Option28"]
tNpcGossip[10747]["OptionPoint27"] = "2-1"

--玩家已报名
tNpcGossip[10747]["Text10-1"] = {1011}
tNpcGossip[10747]["tOption10-1"] = {100}
tNpcGossip[10747]["Text1011"] = tSignup_Text[10747]["Text1011"]
tNpcGossip[10747]["Option100"] = tSignup_Text[10747]["Option100"]

--等级限制
tNpcGossip[10747]["Text10-2"] = {1021}
tNpcGossip[10747]["tOption10-2"] = {101}
tNpcGossip[10747]["Text1021"] = tSignup_Text[10747]["Text1021"]
tNpcGossip[10747]["Option101"] = tSignup_Text[10747]["Option101"]

--天石不足
tNpcGossip[10747]["Text10-3"] = {1031}
tNpcGossip[10747]["tOption10-3"] = {103}
tNpcGossip[10747]["Text1031"] = tSignup_Text[10747]["Text1031"]
tNpcGossip[10747]["Option103"] = tSignup_Text[10747]["Option103"]

--背包不足
tNpcGossip[10747]["Text10-4"] = {1041}
tNpcGossip[10747]["tOption10-4"] = {104}
tNpcGossip[10747]["Text1041"] = tSignup_Text[10747]["Text1041"]
tNpcGossip[10747]["Option104"] = tSignup_Text[10747]["Option104"]

--二次确认
tNpcGossip[10747]["Text11-1"] = {1111,1112}
tNpcGossip[10747]["tOption11-1"] = {111,112}
tNpcGossip[10747]["Text1111"] = tSignup_Text[10747]["Text1111"]
tNpcGossip[10747]["Text1112"] = tSignup_Text[10747]["Text1112"]
tNpcGossip[10747]["Option111"] = tSignup_Text[10747]["Option111"]
tNpcGossip[10747]["Option112"] = tSignup_Text[10747]["Option112"]
tNpcGossip[10747]["OptionFunc111"] = "Signup_Comfirm</N>10747"

--报名成功
tNpcGossip[10747]["Text11-2"] = {1121,1122}
tNpcGossip[10747]["tOption11-2"] = {113}
tNpcGossip[10747]["Text1121"] = tSignup_Text[10747]["Text1121"]
tNpcGossip[10747]["Text1122"] = tSignup_Text[10747]["Text1122"]
tNpcGossip[10747]["Option113"] = tSignup_Text[10747]["Option113"]





