------------------------------------------------------------------------------------
--Name:			160112[简体征服][活动脚本]2016情人节花魁赛活动--报名部分
--Purpose:		2016情人节花魁赛活动--报名部分
--Creator:		严振飞
--Created:		2016/01/12
------------------------------------------------------------------------------------

------------------------------------------------------------------------------------
-- 需求：
-- 报名需求为：
-- 在游戏市场内放置一个报名NPC，玩家报名成功后增加掩码，
-- 报名需要上交郁金香、天石等，扣除物品需要添加掩码，用于线下读取，
-- 线上报名后，通过线下投票，决出最终入围女神赛名单后，线上再开启送花比拼环节。
-- ========
-- 付费报名：299天石，3000W银两报名。
-- 报名成功，打一个掩码给线下程序去读就好。
------------------------------------------------------------------------------------

------------------------------------------------------------------------------------
-- 说明部分：

-- 1.掩码说明：
-- stc(139,96) 记录玩家是否已经报名了， == 1 表示已经报名。
-- stc(139,97) 记录玩家花钱拉粉丝的票数。

-- npctype:	3787
-- LOGID:	12000056


------------------------------------------------------------------------------------
-- 命名规则
-- TheGoddess2016_SignUp_
------------------------------------------------------------------------------------


----------------------------------------------------------------------------------
-- stc掩码表
local tTheGoddess2016_SignUp_Stc = {}
	-- 是否报名
	tTheGoddess2016_SignUp_Stc[1] = {}
	tTheGoddess2016_SignUp_Stc[1]["EventData"] = 139
	tTheGoddess2016_SignUp_Stc[1]["TypeData"] = 96
	
	-- 拉粉丝票数
	tTheGoddess2016_SignUp_Stc[2] = {}
	tTheGoddess2016_SignUp_Stc[2]["EventData"] = 139
	tTheGoddess2016_SignUp_Stc[2]["TypeData"] = 97
	
	
----------------------------------------------------------------------------------
-- 常量表

local tTheGoddess2016_SignUp_Cont = {}
	-- 活动时间
	tTheGoddess2016_SignUp_Cont["BeforeActivityTime"] = "2016-01-01 00:00 2016-02-04 23:59"
	tTheGoddess2016_SignUp_Cont["ActivityTime"] = "2016-02-05 00:00 2016-02-14 23:59"
	-- tTheGoddess2016_SignUp_Cont["BeforeActivityTime"] = "2016-01-01 00:00 2016-01-17 23:59"
	-- tTheGoddess2016_SignUp_Cont["ActivityTime"] = "2016-01-18 00:00 2016-02-19 23:59"

	-- 玩家等级
	tTheGoddess2016_SignUp_Cont["Level"] = G_User_MaxLev
	
	-- 性别编号
	tTheGoddess2016_SignUp_Cont[19083] = 1
	tTheGoddess2016_SignUp_Cont[19084] = 2
	
	-- 100W金币购买粉丝量
	tTheGoddess2016_SignUp_Cont["FansNum"] = 20
	
	-- 网页
	tTheGoddess2016_SignUp_Cont["The_Web"] = "http://event.co.99.com/mrmsco?stage=1"

	--可以传送的地图id
	tTheGoddess2016_SignUp_Cont["CityMap"] = {}
	tTheGoddess2016_SignUp_Cont["CityMap"][1] = 1002
	tTheGoddess2016_SignUp_Cont["CityMap"][2] = 1000
	tTheGoddess2016_SignUp_Cont["CityMap"][3] = 1036
	tTheGoddess2016_SignUp_Cont["CityMap"][4] = 1011
	tTheGoddess2016_SignUp_Cont["CityMap"][5] = 1015
	tTheGoddess2016_SignUp_Cont["CityMap"][6] = 1020
	-- 活动公告传送坐标
	tTheGoddess2016_SignUp_Cont["TP"] = {}
	tTheGoddess2016_SignUp_Cont["TP"]["MapId"] = 1002
	tTheGoddess2016_SignUp_Cont["TP"]["PosX"] = 309
	tTheGoddess2016_SignUp_Cont["TP"]["PosY"] = 247
	tTheGoddess2016_SignUp_Cont["TP"]["Range"] = 3


local tTheGoddess2016_SignUp_Item = {}
	-- 上交物品 或 天石配置
	tTheGoddess2016_SignUp_Item[1] = 299   --299	天石
	tTheGoddess2016_SignUp_Item[2] = 30000000   --3000W	银两
	-- 买粉丝
	tTheGoddess2016_SignUp_Item[3] = 10000000   --1000W	银两

local tTheGoddess2016_SignUp_Log = {}
	tTheGoddess2016_SignUp_Log["Sign_Money"] = "0,0,1,%d,12000056,1[1],0,0"	-- 金币报名
	tTheGoddess2016_SignUp_Log["Sign_EMoney"] = "0,0,2,%d,12000056,1[1],0,0"	-- 天石报名
	tTheGoddess2016_SignUp_Log["BuyFans"] = "0,0,1,%d,12000056,1[2],0,0"		-- 金币买粉丝
	
local tTheGoddess2016_SignUp_EmoneyLog = {}
	tTheGoddess2016_SignUp_EmoneyLog["EmoneySgin"] = "250	4079	299	299	1	" -- 天石报名
	tTheGoddess2016_SignUp_EmoneyLog["MoneySgin"] = "350	20098	30000000	30000000	1	" -- 金币报名
	tTheGoddess2016_SignUp_EmoneyLog["MoneyVote"] = "350	20093	10000000	10000000	1	" -- 金币拉票
----------------------------------------------------------------------------------
-- Npc选项函数表
local tTheGoddess2016_SignUp_NpcFunc = {}
	tTheGoddess2016_SignUp_NpcFunc["OptionFunc121"] = "TheGoddess2016_SignUp_WebDialog</N>%d"
	tTheGoddess2016_SignUp_NpcFunc["OptionFunc131"] = "TheGoddess2016_SignUp_HandIn</N>%d"
	tTheGoddess2016_SignUp_NpcFunc["OptionFunc132"] = "TheGoddess2016_SignUp_Dialog</N>%d</S>2-4"
	tTheGoddess2016_SignUp_NpcFunc["OptionFunc133"] = "TheGoddess2016_SignUp_WebDialog</N>%d"
	tTheGoddess2016_SignUp_NpcFunc["OptionFunc134"] = "TheGoddess2016_SignUp_Dialog</N>%d</S>2-5"
	tTheGoddess2016_SignUp_NpcFunc["OptionFunc231"] = "TheGoddess2016_SignUp_IsSign</N>%d</N>1"
	tTheGoddess2016_SignUp_NpcFunc["OptionFunc232"] = "TheGoddess2016_SignUp_IsSign</N>%d</N>2"
	tTheGoddess2016_SignUp_NpcFunc["OptionFunc241"] = "TheGoddess2016_SignUp_IsBuyFans</N>%d</N>3"
	tTheGoddess2016_SignUp_NpcFunc["OptionFunc311"] = "TheGoddess2016_SignUp_DoSign</N>%d</N>1"
	tTheGoddess2016_SignUp_NpcFunc["OptionFunc321"] = "TheGoddess2016_SignUp_DoSign</N>%d</N>2"
	tTheGoddess2016_SignUp_NpcFunc["OptionFunc331"] = "TheGoddess2016_SignUp_DoBuyFans</N>%d</N>3"
	tTheGoddess2016_SignUp_NpcFunc["OptionFunc511"] = "TheGoddess2016_SignUp_WebDialog</N>%d"
	tTheGoddess2016_SignUp_NpcFunc["OptionFunc521"] = "TheGoddess2016_SignUp_IsBuyFans</N>%d</N>3"
	tTheGoddess2016_SignUp_NpcFunc["OptionFunc522"] = "TheGoddess2016_SignUp_WebDialog</N>%d"


-------------------------------------逻辑部分-----------------------------------------
-- 网页跳转
function TheGoddess2016_SignUp_WebDialog(nNpcId)
	User_SendWebDialog(tTheGoddess2016_SignUp_Cont["The_Web"])
end

--传送到活动地点
function TheGoddess2016_SignUp_TP2Npc()
	
	if Get_UserLife() < 1 then
		return
	end
	
	local nUserMapId = Get_UserMapId()
	local bInCity = false
	--在主城和市场
	for _,v in ipairs(tTheGoddess2016_SignUp_Cont["CityMap"]) do
		if nUserMapId == v then
			bInCity = true
			break
		end
	end
	
	local nMapId = tTheGoddess2016_SignUp_Cont["TP"]["MapId"]
	local nPosX = tTheGoddess2016_SignUp_Cont["TP"]["PosX"]
	local nPosY = tTheGoddess2016_SignUp_Cont["TP"]["PosY"]
	local nRange = tTheGoddess2016_SignUp_Cont["TP"]["Range"]
	
	--在各大主城，则传送
	if bInCity == true then
		--不在市场，则记录位置
		if tTheGoddess2016_SignUp_Cont["CityMap"][3] ~= nUserMapId then
			local nUserPosX = Get_UserPositionX()
			local nUserPosY = Get_UserPositionY()
			User_RecordPoint(nUserMapId,nUserPosX,nUserPosY)
		end
		User_UserRandBoundTrans(nMapId,nPosX,nPosY,nRange,nRange,1)
	else
		Sys_GotoSomeWhere(nPosX,nPosY,nMapId)
	end
end

-- 报名条件判断
function TheGoddess2016_SignUp_IsCanSign(nNpcId)
	-- 活动时间
	if not Sys_ChkFullTime(tTheGoddess2016_SignUp_Cont["ActivityTime"]) then
		TheGoddess2016_SignUp_Dialog(nNpcId,"1-2")
		return false
	end

	-- 性别是否吻合
	if Get_UserSex() ~= tTheGoddess2016_SignUp_Cont[nNpcId] then
		TheGoddess2016_SignUp_Dialog(nNpcId,"2-2")
		return false
	end
	
	local nEvent = tTheGoddess2016_SignUp_Stc[1]["EventData"]
	local nType = tTheGoddess2016_SignUp_Stc[1]["TypeData"]
	
	-- 是否已报名
	if Task_ChkStcValue(nEvent,nType,">",0) then
		TheGoddess2016_SignUp_Dialog(nNpcId,"2-1")
		return false
	end
	
	-- 满足
	return true
end



-- 报名对白接入
function TheGoddess2016_SignUp_HandIn(nNpcId)
	-- 满足报名条件
	if TheGoddess2016_SignUp_IsCanSign(nNpcId) then
		TheGoddess2016_SignUp_Dialog(nNpcId,"2-3")
	end
end



-- 报名二次确认
function TheGoddess2016_SignUp_IsSign(nNpcId,nPayType)
	-- 不满足报名条件
	if not TheGoddess2016_SignUp_IsCanSign(nNpcId) then
		return
	end
	
	TheGoddess2016_SignUp_Dialog(nNpcId,"3-".. nPayType)
end



-- 执行报名
function TheGoddess2016_SignUp_DoSign(nNpcId,nPayType)
	-- 不满足报名条件
	if not TheGoddess2016_SignUp_IsCanSign(nNpcId) then
		return
	end
	
	local nEvent = tTheGoddess2016_SignUp_Stc[1]["EventData"]
	local nType = tTheGoddess2016_SignUp_Stc[1]["TypeData"]

	-- 减天石
	if nPayType == 1 then
		if User_AddEMoney(-tTheGoddess2016_SignUp_Item[nPayType]) then
			Task_SetStatistic(nEvent,nType,1,1)
			Sys_SaveEmoneyBuy(tTheGoddess2016_SignUp_EmoneyLog["EmoneySgin"])
			Sys_SaveActionFestivalLog(string.format(tTheGoddess2016_SignUp_Log["Sign_EMoney"],tTheGoddess2016_SignUp_Item[nPayType]))
			TheGoddess2016_SignUp_Dialog(nNpcId,"5-1")
		else
			TheGoddess2016_SignUp_Dialog(nNpcId,"4-1")
		end
	
	-- 减金币
	elseif nPayType == 2 then
		if User_AddMoney(-tTheGoddess2016_SignUp_Item[nPayType]) then
			Task_SetStatistic(nEvent,nType,1,1)
			Sys_SaveEmoneyBuy(tTheGoddess2016_SignUp_EmoneyLog["MoneySgin"])
			Sys_SaveActionFestivalLog(string.format(tTheGoddess2016_SignUp_Log["Sign_Money"],tTheGoddess2016_SignUp_Item[nPayType]))
			TheGoddess2016_SignUp_Dialog(nNpcId,"5-1")
		else
			TheGoddess2016_SignUp_Dialog(nNpcId,"4-2")
		end
	end
end



-- 执行拉粉丝投票
function TheGoddess2016_SignUp_DoBuyFans(nNpcId,nPayType)
	local nEvent = tTheGoddess2016_SignUp_Stc[2]["EventData"]
	local nType = tTheGoddess2016_SignUp_Stc[2]["TypeData"]

	-- 成功啦粉丝
	if User_AddMoney(-tTheGoddess2016_SignUp_Item[nPayType]) then
		Task_AddStatistic(nEvent,nType,tTheGoddess2016_SignUp_Cont["FansNum"],1)
		Sys_SaveEmoneyBuy(tTheGoddess2016_SignUp_EmoneyLog["MoneyVote"])
		Sys_SaveActionFestivalLog(string.format(tTheGoddess2016_SignUp_Log["BuyFans"],tTheGoddess2016_SignUp_Item[nPayType]))
		TheGoddess2016_SignUp_Dialog(nNpcId,"5-2")
	else
		TheGoddess2016_SignUp_Dialog(nNpcId,"4-3")
	end
end


-- 拉粉丝投票--二次确认
function TheGoddess2016_SignUp_IsBuyFans(nNpcId,nPayType)
	-- 活动时间
	if not Sys_ChkFullTime(tTheGoddess2016_SignUp_Cont["ActivityTime"]) then
		TheGoddess2016_SignUp_Dialog(nNpcId,"1-2")
		return
	end
	
	TheGoddess2016_SignUp_Dialog(nNpcId,"3-3")
end



---------------------------------------------------------------------------------------------------------------
-- 对白组合
function TheGoddess2016_SignUp_Dialog(nNpcId,sDialog)
	-- 对白部分
	for _,v in pairs(tNpcGossip[19083]["Text".. sDialog]) do
		tNpcGossip[19083]["Text".. v] = tTheGoddess2016_SignUp_Text[nNpcId]["Text".. v]
	end
	
	-- 选项部分
	for _,v in pairs(tNpcGossip[19083]["tOption".. sDialog]) do
		tNpcGossip[19083]["Option".. v] = tTheGoddess2016_SignUp_Text[nNpcId]["Option".. v]
		if tNpcGossip[19083]["OptionFunc".. v] ~= nil then
			tNpcGossip[19083]["OptionFunc".. v] = string.format(tTheGoddess2016_SignUp_NpcFunc["OptionFunc".. v],nNpcId)
		end
	end
	
	-- 出对白
	LinkNpcGossipFunc_New(nNpcId,sDialog)
end


-- NPC接入函数
function TheGoddess2016_SignUp_NpcInfo()
	local nNpcId = Get_NpcId()
	-- 活动前
	if Sys_ChkFullTime(tTheGoddess2016_SignUp_Cont["BeforeActivityTime"]) then
		TheGoddess2016_SignUp_Dialog(nNpcId,"1-1")
		return
	end
	
	-- 活动后
	if not Sys_ChkFullTime(tTheGoddess2016_SignUp_Cont["ActivityTime"]) then
		TheGoddess2016_SignUp_Dialog(nNpcId,"1-2")
		return
	end

	-- 活动中
	TheGoddess2016_SignUp_Dialog(nNpcId,"1-3")
end


	
-------------------------------------NPC模块配置------------------------------------------


----------------------------------------------------------------------------------
-- 男神争冠赛大使
tNpcFace[3976] = 137 -- 男神
tNpcFace[3977] = 112 -- 女神
tNpcGossip[19083] = tNpcGossip[19083] or DefaultNpc:new{}
tNpcGossip[19084] = tNpcGossip[19083] or DefaultNpc:new{}
tNpcGossip[19083]["OptionHidden"] = 1
-- 活动前
tNpcGossip[19083]["Text1-1"] = {111,112,113,114}
tNpcGossip[19083]["Text111"] = tTheGoddess2016_SignUp_Text[19083]["Text111"]
tNpcGossip[19083]["Text112"] = tTheGoddess2016_SignUp_Text[19083]["Text112"]
tNpcGossip[19083]["Text113"] = tTheGoddess2016_SignUp_Text[19083]["Text113"]
tNpcGossip[19083]["Text114"] = tTheGoddess2016_SignUp_Text[19083]["Text114"]
tNpcGossip[19083]["tOption1-1"] = {111}
tNpcGossip[19083]["Option111"] = tTheGoddess2016_SignUp_Text[19083]["Option111"]
-- 活动后
tNpcGossip[19083]["Text1-2"] = {121,122,123}
tNpcGossip[19083]["Text121"] = tTheGoddess2016_SignUp_Text[19083]["Text121"]
tNpcGossip[19083]["Text122"] = tTheGoddess2016_SignUp_Text[19083]["Text122"]
tNpcGossip[19083]["Text123"] = tTheGoddess2016_SignUp_Text[19083]["Text123"]
tNpcGossip[19083]["tOption1-2"] = {121,123}
tNpcGossip[19083]["Option121"] = tTheGoddess2016_SignUp_Text[19083]["Option121"]
tNpcGossip[19083]["Option123"] = tTheGoddess2016_SignUp_Text[19083]["Option123"]
tNpcGossip[19083]["OptionFunc121"] = tTheGoddess2016_SignUp_NpcFunc["OptionFunc121"]
-- 活动中
tNpcGossip[19083]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[19083]["Text131"] = tTheGoddess2016_SignUp_Text[19083]["Text131"]
tNpcGossip[19083]["Text132"] = tTheGoddess2016_SignUp_Text[19083]["Text132"]
tNpcGossip[19083]["Text133"] = tTheGoddess2016_SignUp_Text[19083]["Text133"]
tNpcGossip[19083]["Text134"] = tTheGoddess2016_SignUp_Text[19083]["Text134"]
tNpcGossip[19083]["Text135"] = tTheGoddess2016_SignUp_Text[19083]["Text135"]
tNpcGossip[19083]["tOption1-3"] = {131,132,133,134,135}
tNpcGossip[19083]["Option131"] = tTheGoddess2016_SignUp_Text[19083]["Option131"]
tNpcGossip[19083]["Option132"] = tTheGoddess2016_SignUp_Text[19083]["Option132"]
tNpcGossip[19083]["Option133"] = tTheGoddess2016_SignUp_Text[19083]["Option133"]
tNpcGossip[19083]["Option134"] = tTheGoddess2016_SignUp_Text[19083]["Option134"]
tNpcGossip[19083]["Option135"] = tTheGoddess2016_SignUp_Text[19083]["Option135"]
tNpcGossip[19083]["OptionFunc131"] = tTheGoddess2016_SignUp_NpcFunc["OptionFunc131"]
tNpcGossip[19083]["OptionFunc132"] = tTheGoddess2016_SignUp_NpcFunc["OptionFunc132"]
tNpcGossip[19083]["OptionFunc133"] = tTheGoddess2016_SignUp_NpcFunc["OptionFunc133"]
tNpcGossip[19083]["OptionFunc134"] = tTheGoddess2016_SignUp_NpcFunc["OptionFunc134"]
tNpcGossip[19083]["OptionChkFunc131"] = function()
	-- 角色性别不对不显示选项
	if Get_UserSex() ~= tTheGoddess2016_SignUp_Cont[Get_NpcId()] then
		return false
	end
	
	-- 已报名不显示选项
	if Task_ChkStcValue(tTheGoddess2016_SignUp_Stc[1]["EventData"],tTheGoddess2016_SignUp_Stc[1]["TypeData"],">",0) then
		return false
	end
	
	return true
end
tNpcGossip[19083]["OptionChkFunc132"] = function() -- 已报名显示选项
	local nEvent = tTheGoddess2016_SignUp_Stc[1]["EventData"]
	local nType = tTheGoddess2016_SignUp_Stc[1]["TypeData"]
	return Task_ChkStcValue(nEvent,nType,">",0) and Get_UserSex() == tTheGoddess2016_SignUp_Cont[Get_NpcId()]
end

-- 【报名，我想当男神！】报名失败，已报名
tNpcGossip[19083]["Text2-1"] = {211}
tNpcGossip[19083]["Text211"] = tTheGoddess2016_SignUp_Text[19083]["Text211"]
tNpcGossip[19083]["tOption2-1"] = {211}
tNpcGossip[19083]["Option211"] = tTheGoddess2016_SignUp_Text[19083]["Option211"]
-- 【报名，我想当男神！】报名失败，性别不对
tNpcGossip[19083]["Text2-2"] = {221,222}
tNpcGossip[19083]["Text221"] = tTheGoddess2016_SignUp_Text[19083]["Text221"]
tNpcGossip[19083]["Text222"] = tTheGoddess2016_SignUp_Text[19083]["Text222"]
tNpcGossip[19083]["tOption2-2"] = {221}
tNpcGossip[19083]["Option221"] = tTheGoddess2016_SignUp_Text[19083]["Option221"]
-- 【报名，我想当男神！】报名满足条件对白
tNpcGossip[19083]["Text2-3"] = {231,232,233}
tNpcGossip[19083]["Text231"] = tTheGoddess2016_SignUp_Text[19083]["Text231"]
tNpcGossip[19083]["Text232"] = tTheGoddess2016_SignUp_Text[19083]["Text232"]
tNpcGossip[19083]["Text233"] = tTheGoddess2016_SignUp_Text[19083]["Text233"]
tNpcGossip[19083]["tOption2-3"] = {231,232,233}
tNpcGossip[19083]["Option231"] = tTheGoddess2016_SignUp_Text[19083]["Option231"]
tNpcGossip[19083]["Option232"] = tTheGoddess2016_SignUp_Text[19083]["Option232"]
tNpcGossip[19083]["Option233"] = tTheGoddess2016_SignUp_Text[19083]["Option233"]
tNpcGossip[19083]["OptionFunc231"] = tTheGoddess2016_SignUp_NpcFunc["OptionFunc231"]
tNpcGossip[19083]["OptionFunc232"] = tTheGoddess2016_SignUp_NpcFunc["OptionFunc232"]
-- 【拉粉丝团投票。】
tNpcGossip[19083]["Text2-4"] = {241,242,243}
tNpcGossip[19083]["Text241"] = tTheGoddess2016_SignUp_Text[19083]["Text241"]
tNpcGossip[19083]["Text242"] = tTheGoddess2016_SignUp_Text[19083]["Text242"]
tNpcGossip[19083]["Text243"] = tTheGoddess2016_SignUp_Text[19083]["Text243"]
tNpcGossip[19083]["tOption2-4"] = {241,242}
tNpcGossip[19083]["Option241"] = tTheGoddess2016_SignUp_Text[19083]["Option241"]
tNpcGossip[19083]["Option242"] = tTheGoddess2016_SignUp_Text[19083]["Option242"]
tNpcGossip[19083]["OptionFunc241"] = tTheGoddess2016_SignUp_NpcFunc["OptionFunc241"]
-- 【了解报名规则。】
tNpcGossip[19083]["Text2-5"] = {251,252,253}
tNpcGossip[19083]["Text251"] = tTheGoddess2016_SignUp_Text[19083]["Text251"]
tNpcGossip[19083]["Text252"] = tTheGoddess2016_SignUp_Text[19083]["Text252"]
tNpcGossip[19083]["Text253"] = tTheGoddess2016_SignUp_Text[19083]["Text253"]
tNpcGossip[19083]["tOption2-5"] = {251}
tNpcGossip[19083]["Option251"] = tTheGoddess2016_SignUp_Text[19083]["Option251"]
-- 【上交299点天石】-- 二次确认
tNpcGossip[19083]["Text3-1"] = {311}
tNpcGossip[19083]["Text311"] = tTheGoddess2016_SignUp_Text[19083]["Text311"]
tNpcGossip[19083]["tOption3-1"] = {311,312}
tNpcGossip[19083]["Option311"] = tTheGoddess2016_SignUp_Text[19083]["Option311"]
tNpcGossip[19083]["Option312"] = tTheGoddess2016_SignUp_Text[19083]["Option312"]
tNpcGossip[19083]["OptionFunc311"] = tTheGoddess2016_SignUp_NpcFunc["OptionFunc311"]
-- 【上交3000万银两】-- 二次确认
tNpcGossip[19083]["Text3-2"] = {321}
tNpcGossip[19083]["Text321"] = tTheGoddess2016_SignUp_Text[19083]["Text321"]
tNpcGossip[19083]["tOption3-2"] = {321,322}
tNpcGossip[19083]["Option321"] = tTheGoddess2016_SignUp_Text[19083]["Option321"]
tNpcGossip[19083]["Option322"] = tTheGoddess2016_SignUp_Text[19083]["Option322"]
tNpcGossip[19083]["OptionFunc321"] = tTheGoddess2016_SignUp_NpcFunc["OptionFunc321"]
-- 【拉粉丝团投票】-- 二次确认
tNpcGossip[19083]["Text3-3"] = {331}
tNpcGossip[19083]["Text331"] = tTheGoddess2016_SignUp_Text[19083]["Text331"]
tNpcGossip[19083]["tOption3-3"] = {331,332}
tNpcGossip[19083]["Option331"] = tTheGoddess2016_SignUp_Text[19083]["Option331"]
tNpcGossip[19083]["Option332"] = tTheGoddess2016_SignUp_Text[19083]["Option332"]
tNpcGossip[19083]["OptionFunc331"] = tTheGoddess2016_SignUp_NpcFunc["OptionFunc331"]
-- 【上交299点天石】--失败、天石不足
tNpcGossip[19083]["Text4-1"] = {411,412}
tNpcGossip[19083]["Text411"] = tTheGoddess2016_SignUp_Text[19083]["Text411"]
tNpcGossip[19083]["Text412"] = tTheGoddess2016_SignUp_Text[19083]["Text412"]
tNpcGossip[19083]["tOption4-1"] = {411}
tNpcGossip[19083]["Option411"] = tTheGoddess2016_SignUp_Text[19083]["Option411"]
-- 【上交3000万银两】--失败、银两不足
tNpcGossip[19083]["Text4-2"] = {421,422}
tNpcGossip[19083]["Text421"] = tTheGoddess2016_SignUp_Text[19083]["Text421"]
tNpcGossip[19083]["Text422"] = tTheGoddess2016_SignUp_Text[19083]["Text422"]
tNpcGossip[19083]["tOption4-2"] = {421}
tNpcGossip[19083]["Option421"] = tTheGoddess2016_SignUp_Text[19083]["Option421"]
-- 【拉粉丝团投票】--失败、银两不足
tNpcGossip[19083]["Text4-3"] = {431}
tNpcGossip[19083]["Text431"] = tTheGoddess2016_SignUp_Text[19083]["Text431"]
tNpcGossip[19083]["tOption4-3"] = {431}
tNpcGossip[19083]["Option431"] = tTheGoddess2016_SignUp_Text[19083]["Option431"]
-- 【报名】--成功
tNpcGossip[19083]["Text5-1"] = {511,512}
tNpcGossip[19083]["Text511"] = tTheGoddess2016_SignUp_Text[19083]["Text511"]
tNpcGossip[19083]["Text512"] = tTheGoddess2016_SignUp_Text[19083]["Text512"]
tNpcGossip[19083]["tOption5-1"] = {511,512}
tNpcGossip[19083]["Option511"] = tTheGoddess2016_SignUp_Text[19083]["Option511"]
tNpcGossip[19083]["Option512"] = tTheGoddess2016_SignUp_Text[19083]["Option512"]
tNpcGossip[19083]["OptionFunc511"] = tTheGoddess2016_SignUp_NpcFunc["OptionFunc511"]
-- 【拉粉丝团投票】--成功
tNpcGossip[19083]["Text5-2"] = {521,522}
tNpcGossip[19083]["Text521"] = tTheGoddess2016_SignUp_Text[19083]["Text521"]
tNpcGossip[19083]["Text522"] = tTheGoddess2016_SignUp_Text[19083]["Text522"]
tNpcGossip[19083]["tOption5-2"] = {521,522,523}
tNpcGossip[19083]["Option521"] = tTheGoddess2016_SignUp_Text[19083]["Option521"]
tNpcGossip[19083]["Option522"] = tTheGoddess2016_SignUp_Text[19083]["Option522"]
tNpcGossip[19083]["Option523"] = tTheGoddess2016_SignUp_Text[19083]["Option523"]
tNpcGossip[19083]["OptionFunc521"] = tTheGoddess2016_SignUp_NpcFunc["OptionFunc521"]
tNpcGossip[19083]["OptionFunc522"] = tTheGoddess2016_SignUp_NpcFunc["OptionFunc522"]


