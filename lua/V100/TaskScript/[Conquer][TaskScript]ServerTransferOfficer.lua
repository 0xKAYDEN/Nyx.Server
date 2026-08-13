------------------------------------------------------------------------------------
--Name:		151010[英文征服][任务脚本]付费移服判断增加
--Purpose:		付费移服判断增加
--Creator:		许乐
--Created:		2015/10/10
------------------------------------------------------------------------------------
-- #任务需求 
-- #1、付费移服npc申请移服之前；判断玩家是否有联盟，有的话不让转服；
-- #2、听剑鸣说；联盟判断需要用lua写；
-- #3、转服npc后面内容弄成LUA
-- #4、BreathFocus
-- #DragonPunch
-- #DragonRoar
-- #Royalty_EU_o (欧服）
-- #Liberty_o（美服）
-- #以上5个服价格判断改成1999
-- #
-- #5、新接口对应链接
-- #http://forum.nderp.99.com/Forum/TopicList-D8C592E066A21417-1.aspx#2305397
-- #任务来自：http://nderp.99.com/Forum/TopicList-233187.aspx

-- 前缀
-- ServerTransferOfficer_
-----------------------------------------常量表配置-----------------------------------------------
local tServerTransferOfficer_Cont = {}
	--时间限制
	tServerTransferOfficer_Cont["Time1"] = "07:30 09:30"
	tServerTransferOfficer_Cont["Time2"] = "15:30 17:30"
	tServerTransferOfficer_Cont["Time3"] = "23:30 23:59"
	tServerTransferOfficer_Cont["Time4"] = "00:00 01:30"
	
	tServerTransferOfficer_Cont["Emoney1"] = 3999
	tServerTransferOfficer_Cont["Emoney2"] = 1999
	
	-- 欧服转欧服时间限制为:14:55 -17:10,6:55-9:10
	tServerTransferOfficer_Cont["EU"] = {}
	tServerTransferOfficer_Cont["EU"][1] = "06:00 10:30"
	tServerTransferOfficer_Cont["EU"][2] = "14:00 18:30"

	-- 美服转美服时间限制为:6:55-9:10, 22:55-01:10
	tServerTransferOfficer_Cont["USA"] = {}
	tServerTransferOfficer_Cont["USA"][1] = "06:55 09:10"
	tServerTransferOfficer_Cont["USA"][2] = "22:55 23:59"
	tServerTransferOfficer_Cont["USA"][3] = "00:00 01:10"

	-- 美服转欧服 欧服转美服 时间限制为:6:55-9:10, 22:55-01:10,14:55 -17:10
	tServerTransferOfficer_Cont["Other"] = {}
	tServerTransferOfficer_Cont["Other"][1] = "06:55 09:10"
	tServerTransferOfficer_Cont["Other"][2] = "14:55 17:10"
	tServerTransferOfficer_Cont["Other"][3] = "22:55 23:59"
	tServerTransferOfficer_Cont["Other"][4] = "00:00 01:10"
	
--掩码
local tServerTransferOfficer_Stc = {}
	--30天转服1次
	tServerTransferOfficer_Stc[1]={}
	tServerTransferOfficer_Stc[1]["EventType"] = 114
	tServerTransferOfficer_Stc[1]["DataType"] = 53
	tServerTransferOfficer_Stc[1]["Complete"] = 30

--服务器名单
local tServerTransferOfficer_ServerName = {}
	tServerTransferOfficer_ServerName[1] = "Dragon"
	tServerTransferOfficer_ServerName[2] = "Phoenix"
	tServerTransferOfficer_ServerName[3] = "Lion"
	tServerTransferOfficer_ServerName[4] = "Kylin"
	tServerTransferOfficer_ServerName[5] = "Eagle"
	tServerTransferOfficer_ServerName[6] = "Crystal"
	tServerTransferOfficer_ServerName[7] = "Emerald"
	tServerTransferOfficer_ServerName[8] = "Turquoise"
	tServerTransferOfficer_ServerName[9] = "Triumph"
	tServerTransferOfficer_ServerName[10] = "Honor"
	tServerTransferOfficer_ServerName[11] = "Freedom"
	tServerTransferOfficer_ServerName[12] = "Faith"
	tServerTransferOfficer_ServerName[13] = "Eternity"
	tServerTransferOfficer_ServerName[14] = "Volcano"
	tServerTransferOfficer_ServerName[15] = "Thunder"
	tServerTransferOfficer_ServerName[16] = "Lightning"
	tServerTransferOfficer_ServerName[17] = "Sunshine"
	tServerTransferOfficer_ServerName[18] = "Snowfall"
	tServerTransferOfficer_ServerName[19] = "Venus"
	tServerTransferOfficer_ServerName[20] = "Mercury"
	tServerTransferOfficer_ServerName[21] = "Uranus"
	tServerTransferOfficer_ServerName[22] = "Neptune"
	tServerTransferOfficer_ServerName[23] = "HangingGardens"
	tServerTransferOfficer_ServerName[24] = "Mausoleum"
	tServerTransferOfficer_ServerName[25] = "Pyramid"
	tServerTransferOfficer_ServerName[27] = "Hebby"
	tServerTransferOfficer_ServerName[28] = "BabyIcey"
	tServerTransferOfficer_ServerName[29] = "Aquarius"
	tServerTransferOfficer_ServerName[30] = "Cancer"
	tServerTransferOfficer_ServerName[31] = "Virgo"
	tServerTransferOfficer_ServerName[32] = "Libra"
	tServerTransferOfficer_ServerName[33] = "Scorpio"
	tServerTransferOfficer_ServerName[34] = "SnowWhite"
	tServerTransferOfficer_ServerName[35] = "WildSwan"
	tServerTransferOfficer_ServerName[36] = "Gryphon"
	tServerTransferOfficer_ServerName[37] = "Titan"
	tServerTransferOfficer_ServerName[38] = "Basilisk"
	tServerTransferOfficer_ServerName[39] = "Dark"
	tServerTransferOfficer_ServerName[40] = "Light"
	tServerTransferOfficer_ServerName[41] = "Storm"
	tServerTransferOfficer_ServerName[42] = "Fire"
	tServerTransferOfficer_ServerName[43] = "Lucky7"
	tServerTransferOfficer_ServerName[44] = "Legends"
	tServerTransferOfficer_ServerName[45] = "Champions_EU"
	tServerTransferOfficer_ServerName[46] = "SummerWind"
	tServerTransferOfficer_ServerName[47] = "JiangHu_EU"
	tServerTransferOfficer_ServerName[48] = "DragonPunch"
	tServerTransferOfficer_ServerName[49] = "DragonRoar"
	tServerTransferOfficer_ServerName[50] = "BreathFocus"
	tServerTransferOfficer_ServerName[51] = "Royalty_EU_O"
	tServerTransferOfficer_ServerName[52] = "Liberty_O"
	tServerTransferOfficer_ServerName[53] = "Columbus"
	tServerTransferOfficer_ServerName[54] = "FastBlade"
	tServerTransferOfficer_ServerName[55] = "ScentSword"
	tServerTransferOfficer_ServerName[56] = "Sirius_EU"
	tServerTransferOfficer_ServerName[57] = "TwilightDance"
	tServerTransferOfficer_ServerName[58] = "StarArrow"
	tServerTransferOfficer_ServerName[59] = "DragonWar_EU"
	tServerTransferOfficer_ServerName[60] = "DragonRoar"
	tServerTransferOfficer_ServerName[61] = "KingdomWar"
	tServerTransferOfficer_ServerName[62] = "Emperor_EU"
	tServerTransferOfficer_ServerName[63] = "WarLord"
	tServerTransferOfficer_ServerName[64] = "FlameLotus_EU"
	tServerTransferOfficer_ServerName[65] = "NatureMystery"
	tServerTransferOfficer_ServerName[66] = "KingOfKings"
	tServerTransferOfficer_ServerName[67] = "Conquer13_EU"
	tServerTransferOfficer_ServerName[68] = "Perfection"
	tServerTransferOfficer_ServerName[69] = "SkyFlame"
	tServerTransferOfficer_ServerName[70] = "Backfire_EU"
	tServerTransferOfficer_ServerName[71] = "NewChallenge_EU"
	tServerTransferOfficer_ServerName[72] = "NewWorld"
	tServerTransferOfficer_ServerName[73] = "MythicalRunes"
------------------------------------------逻辑部分-------------------------------------------------
function ServerTransferOfficer_JudgeStc(nNpcId)
	local nEvent = tServerTransferOfficer_Stc[1]["EventType"]
	local nType =  tServerTransferOfficer_Stc[1]["DataType"]
	local nComplete = tServerTransferOfficer_Stc[1]["Complete"]
	if not Task_StcInterval(nEvent,nType,nComplete,3) then
		if not Task_ChkStcValue(nEvent,nType,"==",0) then
			Sys_MsgBox(tServerTransferOfficer_Text[105]["30Days"])
			return
		else
			LinkNpcGossipFunc_New(nNpcId,"3-1")
		end
	else
		LinkNpcGossipFunc_New(nNpcId,"3-1")
	end
end

-- 转服提示
-- nType 转服类型 1 表示原来的转服方式 2表示使用物品转服
function ServerTransferOfficer_IsConnectServer(nType, nChoose)
	local str = tServerTransferOfficer_Text[105]["PointOut"]
	Sys_MsgBox(str,"ServerTransferOfficer_ConnectServerPointOut</N>"..nType.."</N>"..nChoose)
end

-- 服务器名称
function ServerTransferOfficer_ConnectServerPointOut(nType, nChoose)
	local sServerName = tServerTransferOfficer_Text["ServerName"][nChoose]
	local str = string.format(tServerTransferOfficer_Text[105]["SureToTrans"],sServerName)
	Sys_MsgBox(str,"ServerTransferOfficer_ConnectJudgement</N>"..nType.."</N>"..nChoose)
end

--转服判断
function ServerTransferOfficer_ConnectJudgement(nType, nChoose)
	-- 检查玩家当前所在服务器
	-- local bFlag = false		-- 表示玩家当前在美服
	-- for i,v in pairs(tServerTransferOfficer_Text["EU"]) do
		-- if Sys_CheckServerName(v) then
			-- bFlag = true		-- 表示玩家当前在欧服
		-- end
	-- end
	
	-- local nTag = 1		-- 表示玩家要转到美服
	-- local sName = tServerTransferOfficer_Text["ServerName"][nChoose]
	-- for i,v in pairs(tServerTransferOfficer_Text["EU"]) do
		-- if tostring(sName) == tostring(v) then
			-- nTag = 2		-- 表示玩家要转到欧服
		-- end
	-- end

	-- if bFlag and nTag == 2 then		-- 欧服转欧服
		-- if Sys_ChkDayTime(tServerTransferOfficer_Cont["EU"][1]) or Sys_ChkDayTime(tServerTransferOfficer_Cont["EU"][2]) then
			-- Sys_MsgBox(tServerTransferOfficer_Text[105]["NotRightTimeEU"])
			-- return
		-- end
	-- elseif bFlag == false and nTag == 1 then	-- 美服转美服
		-- if Sys_ChkDayTime(tServerTransferOfficer_Cont["USA"][1]) or Sys_ChkDayTime(tServerTransferOfficer_Cont["USA"][2]) or Sys_ChkDayTime(tServerTransferOfficer_Cont["USA"][3]) then
			-- Sys_MsgBox(tServerTransferOfficer_Text[105]["NotRightTimeUSA"])
			-- return
		-- end
	-- -- elseif bFlag == false and nTag == 2 then		-- 美服转欧服
		-- -- if Sys_ChkDayTime(tServerTransferOfficer_Cont["Other"][1]) or Sys_ChkDayTime(tServerTransferOfficer_Cont["Other"][2]) or Sys_ChkDayTime(tServerTransferOfficer_Cont["Other"][3]) or Sys_ChkDayTime(tServerTransferOfficer_Cont["Other"][4]) then
			-- -- Sys_MsgBox(tServerTransferOfficer_Text[105]["NotRightTime"])
			-- -- return
		-- -- end
	-- -- elseif bFlag and nTag == 1 then		-- 欧服转美服
		-- -- if Sys_ChkDayTime(tServerTransferOfficer_Cont["Other"][1]) or Sys_ChkDayTime(tServerTransferOfficer_Cont["Other"][2]) or Sys_ChkDayTime(tServerTransferOfficer_Cont["Other"][3]) or Sys_ChkDayTime(tServerTransferOfficer_Cont["Other"][4]) then
			-- -- Sys_MsgBox(tServerTransferOfficer_Text[105]["NotRightTime"])
			-- -- return
		-- -- end
	-- else		--  其他情况，所有时间都限制
		-- if Sys_ChkDayTime(tServerTransferOfficer_Cont["Other"][1]) or Sys_ChkDayTime(tServerTransferOfficer_Cont["Other"][2]) or Sys_ChkDayTime(tServerTransferOfficer_Cont["Other"][3]) or Sys_ChkDayTime(tServerTransferOfficer_Cont["Other"][4]) then
			-- Sys_MsgBox(tServerTransferOfficer_Text[105]["NotRightTime"])
			-- return
		-- end
	-- end
	
	if Sys_ChkDayTime(tServerTransferOfficer_Cont["Time1"]) then
		Sys_MsgBox(tServerTransferOfficer_Text[105]["NotRightTime"])
		return
	end
	
	if Sys_ChkDayTime(tServerTransferOfficer_Cont["Time2"]) then
		Sys_MsgBox(tServerTransferOfficer_Text[105]["NotRightTime"])
		return
	end
	
	if Sys_ChkDayTime(tServerTransferOfficer_Cont["Time3"]) then
		Sys_MsgBox(tServerTransferOfficer_Text[105]["NotRightTime"])
		return
	end
	
	if Sys_ChkDayTime(tServerTransferOfficer_Cont["Time4"]) then
		Sys_MsgBox(tServerTransferOfficer_Text[105]["NotRightTime"])
		return
	end

	-- 判断是否打开二级密码 1053
	if not Sys_IsOpenSecondPWD() then
		Sys_MsgBox(tServerTransferOfficer_Text[105]["PasswordTip"])
		return
	end
	
	-- 判断帐号服务器是否正常连接 1215
	if not Sys_IsAccountServerNormal() then
		Sys_MsgBox(tServerTransferOfficer_Text[105]["FailConnect"])
		return
	end
	
	local sServerName = tostring(tServerTransferOfficer_ServerName[nChoose])
	-- 判断当前是否在该服务器 1213
	if Sys_CheckServerName(sServerName) then
		Sys_MsgBox(tServerTransferOfficer_Text[105]["InSameServer"])
		return
	end
	
	-- 判断转服服务器是否连接上 1205
	if not Sys_IsChangeServerEnable() then
		Sys_MsgBox(tServerTransferOfficer_Text[105]["FailServer"])
		return
	end
	
	-- 判断转服服务器是否空闲 1214
	if not Sys_IsChangeServerIdle() then
		Sys_MsgBox(tServerTransferOfficer_Text[105]["BusyServer"])
		return
	end

	--天石数量判断
	local nEmoney = Get_UserEMoney()
	local nNeedEM = tServerTransferOfficer_Cont["Emoney1"]
	-- for _,v in pairs(tServerTransferOfficer_Text["EMoney"]) do	
		-- if Sys_CheckServerName(v) then
			-- nNeedEM = tServerTransferOfficer_Cont["Emoney2"]
		-- end
	-- end
	
	-- 转服卡ID
	local nTransferServerToken_ItemId = 3314623
	
	if nType == 1 then
		if nEmoney < nNeedEM then
			Sys_MsgBox(string.format(tServerTransferOfficer_Text[105]["NoEnoughEmoney"],nNeedEM))
			return
		end
	elseif nType == 2 then
		-- 没有转服密令
		if not Item_ChkMulItem(nTransferServerToken_ItemId, nTransferServerToken_ItemId, 1) then
			Sys_MsgBox(tTransferServerToken_Text["Sys"]["NoToken"])
			return
		end
	end

	--取玩家伴侣名字
	local nMateId = Get_UserMateId()
	if nMateId ~= 0 then
		Sys_MsgBox(tServerTransferOfficer_Text[105]["Marriage"])
		return
	end
	
	--取玩家帮派ID
	local nGuildId = Get_UserGuildId()
	if nGuildId ~= 0 then
		Sys_MsgBox(tServerTransferOfficer_Text[105]["Guild"])
		return
	end
	
	--取玩家家族ID
	local nFamilyId = Get_UserFamilyId()
	if nFamilyId ~= 0 then
		Sys_MsgBox(tServerTransferOfficer_Text[105]["Family"])
		return
	end
	
	-- 判断是否有联盟
	if User_IsInLeague() then
		Sys_MsgBox(tServerTransferOfficer_Text[105]["League"])
		return
	end
	
	--检测玩家是否存在师徒关系 1206
	if User_CheckGuide() then
		Sys_MsgBox(tServerTransferOfficer_Text[105]["Mentor"])
		return
	end
	
	-- 检测玩家是否存在商业伙伴关系 1207
	if User_CheckTradeBuddy() then
		Sys_MsgBox(tServerTransferOfficer_Text[105]["TradePartner"])
		return
	end
	
	-- -- 检测玩家是否存在拍卖行物品  1210
	-- if User_HasAuctionItem() then
		-- Sys_MsgBox(tServerTransferOfficer_Text[105]["Auction"])
		-- return
	-- end
	
	-- 检测玩家是否存在邮件 1211
	if User_HasMail() then
		Sys_MsgBox(tServerTransferOfficer_Text[105]["Email"])
		return
	end
	
	-- 对cq_pk_item表的检查 2205
	if User_CheckPkItem(0) then
		Sys_MsgBox(tServerTransferOfficer_Text[105]["TargetPKItem"])
		return
	elseif User_CheckPkItem(1) then
		Sys_MsgBox(tServerTransferOfficer_Text[105]["HunterPKItem"])
		return
	end
	
	-- 检测玩家是否存在未领天石卡，一定要同步查表，放在最后面 1209
	-- if User_CheckCard() then
		-- Sys_MsgBox(tServerTransferOfficer_Text[105]["ClaimEmoney"])
		-- return
	-- end
	
	-- 转服前检查玩家是否有房屋 且房屋内是否摆放家具
	if Get_UserHouseId() > 0 then
		local nHouseId = Get_UserHouseId()
		if Get_MapNpcCount(nHouseId,25) > 0 or Get_MapNpcCount(nHouseId,2) > 0 then
			Sys_MsgBox(tServerTransferOfficer_Text[105]["PackFurniture"])
			-- return
		end
	end

	-- 外接物品转服
	if nType == 2 then
		TransferServerToken_ChangeServerTime(sServerName)
	elseif nType == 1 then
		-- 游服发起转服要求 1212
		User_ChangeServer(sServerName)
	end
	Sys_SaveAbnormalLog(string.format("Transform server User Id:[%s], to Server's name:[%s], Local time:[%s]",tostring(Get_UserId()),sServerName,tostring(os.date())))
end

function ServerTransferOfficer_ChkServerName()
	if (not Sys_CheckServerName(tServerTransferOfficer_Text["ServerName"][51])) or (not Sys_CheckServerName(tServerTransferOfficer_Text["ServerName"][52])) then
		return false
	else
		return true
	end
end

--从PC传到赌城的npc
function ServerTransferOfficer_TransServer(nNpcId)
	local nUserId = Get_UserId()
	--德州金币厅
	local nTypeId = 1
	User_EnterKOKServer(nTypeId,nUserId)
	User_TalkChannel2005(tServerTransferOfficer_Text[nNpcId]["Talk"],nUserId)
end

function ServerTransferOfficer_LoginNewTask()
	local nUserId = Get_UserId()
	if Sys_ChkUserNormalClient(nUserId) then
		Sys_MsgBox(tServerTransferOfficer_Text["Msg105"],"ServerTransferOfficer_FindNpc")
	else	
		return false
	end
end

function ServerTransferOfficer_FindNpc()
	local nUserId = Get_UserId()
	local nPosX = 432
	local nPosY = 397
	local nMapId = 1002
	local nNpcId = 5673
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId,nUserId)
end

-------------------------------------------NPC模块--------------------------------------------------
--15702 ServerTransferOfficer
tNpcFace[2415] = 186 
tNpcGossip[15702] = tNpcGossip[15702] or DefaultNpc:new{}
tNpcGossip[15702]["OptionHidden"] = 1

tNpcGossip[15702]["Text1-1"] = {111,112}
tNpcGossip[15702]["Text111"] = tServerTransferOfficer_Text[15702]["Text111"]
tNpcGossip[15702]["Text112"] = tServerTransferOfficer_Text[15702]["Text112"]
-- tNpcGossip[15702]["Text113"] = tServerTransferOfficer_Text[15702]["Text113"]
-- tNpcGossip[15702]["Text114"] = tServerTransferOfficer_Text[15702]["Text114"]
-- tNpcGossip[15702]["Text115"] = tServerTransferOfficer_Text[15702]["Text115"]
tNpcGossip[15702]["tOption1-1"] = {1,2,112,3}
tNpcGossip[15702]["Option1"] = tServerTransferOfficer_Text[15702]["Option1"]
tNpcGossip[15702]["OptionPoint1"]="2-1"
tNpcGossip[15702]["Option2"] = tServerTransferOfficer_Text[15702]["Option2"]
tNpcGossip[15702]["OptionFunc2"]="ServerTransferOfficer_JudgeStc</N>15702"
tNpcGossip[15702]["Option3"] = tServerTransferOfficer_Text[15702]["Option3"]
tNpcGossip[15702]["Option112"] = tServerTransferOfficer_Text[15702]["Option112"]
tNpcGossip[15702]["OptionPoint112"]="113-1"
tNpcGossip[15702]["OptionChkFunc112"] = function ()
	if not Item_ChkMulItem(3314623, 3314623, 1) then
		return false
	end

	return true
	-- return Sys_ChkFullTime(tActivityTime["TransferServerToken"]["ActivityTime"])
end

tNpcGossip[15702]["Text2-1"] = {211,212,213,214,215,216}
tNpcGossip[15702]["Text211"] = tServerTransferOfficer_Text[15702]["Text211"]
tNpcGossip[15702]["Text212"] = tServerTransferOfficer_Text[15702]["Text212"]
tNpcGossip[15702]["Text213"] = tServerTransferOfficer_Text[15702]["Text213"]
tNpcGossip[15702]["Text214"] = tServerTransferOfficer_Text[15702]["Text214"]
tNpcGossip[15702]["Text215"] = tServerTransferOfficer_Text[15702]["Text215"]
tNpcGossip[15702]["Text216"] = tServerTransferOfficer_Text[15702]["Text216"]
tNpcGossip[15702]["tOption2-1"] = {4}
tNpcGossip[15702]["Option4"] = tServerTransferOfficer_Text[15702]["Option4"]

tNpcGossip[15702]["Text3-1"] = {311}
tNpcGossip[15702]["Text311"] = tServerTransferOfficer_Text[15702]["Text311"]
tNpcGossip[15702]["tOption3-1"] = {5,6,7,8,9,10,11,3}
tNpcGossip[15702]["Option5"] = tServerTransferOfficer_Text[15702]["Option5"]
tNpcGossip[15702]["OptionPoint5"]="5-1"
tNpcGossip[15702]["Option6"] = tServerTransferOfficer_Text[15702]["Option6"]
tNpcGossip[15702]["OptionPoint6"]="6-1"
tNpcGossip[15702]["Option7"] = tServerTransferOfficer_Text[15702]["Option7"]
tNpcGossip[15702]["OptionPoint7"]="7-1"
tNpcGossip[15702]["Option8"] = tServerTransferOfficer_Text[15702]["Option8"]
tNpcGossip[15702]["OptionPoint8"]="8-1"
tNpcGossip[15702]["Option9"] = tServerTransferOfficer_Text[15702]["Option9"]
tNpcGossip[15702]["OptionPoint9"]="9-1"
tNpcGossip[15702]["Option10"] = tServerTransferOfficer_Text[15702]["Option10"]
tNpcGossip[15702]["OptionPoint10"]="10-1"
tNpcGossip[15702]["Option11"] = tServerTransferOfficer_Text[15702]["Option11"]
tNpcGossip[15702]["OptionPoint11"]="3-2"

tNpcGossip[15702]["Text3-2"] = {321}
tNpcGossip[15702]["Text321"] = tServerTransferOfficer_Text[15702]["Text321"]
tNpcGossip[15702]["tOption3-2"] = {12,13,14,15,16,17,21,3}
tNpcGossip[15702]["Option12"] = tServerTransferOfficer_Text[15702]["Option12"]
tNpcGossip[15702]["OptionPoint12"]="12-1"
tNpcGossip[15702]["Option13"] = tServerTransferOfficer_Text[15702]["Option13"]
tNpcGossip[15702]["OptionPoint13"]="13-1"
tNpcGossip[15702]["Option14"] = tServerTransferOfficer_Text[15702]["Option14"]
tNpcGossip[15702]["OptionPoint14"]="14-1"
tNpcGossip[15702]["Option15"] = tServerTransferOfficer_Text[15702]["Option15"]
tNpcGossip[15702]["OptionPoint15"]="15-1"
tNpcGossip[15702]["Option16"] = tServerTransferOfficer_Text[15702]["Option16"]
tNpcGossip[15702]["OptionPoint16"]="16-1"
tNpcGossip[15702]["Option17"] = tServerTransferOfficer_Text[15702]["Option17"]
tNpcGossip[15702]["OptionPoint17"]="17-1"
tNpcGossip[15702]["Option21"] = tServerTransferOfficer_Text[15702]["Option21"]
tNpcGossip[15702]["OptionPoint21"]="3-3"

tNpcGossip[15702]["Text3-3"] = {331}
tNpcGossip[15702]["Text331"] = tServerTransferOfficer_Text[15702]["Text331"]
tNpcGossip[15702]["tOption3-3"] = {18,19,20,22,35,26,27,3}
tNpcGossip[15702]["Option18"] = tServerTransferOfficer_Text[15702]["Option18"]
tNpcGossip[15702]["OptionPoint18"]="18-1"
tNpcGossip[15702]["Option19"] = tServerTransferOfficer_Text[15702]["Option19"]
tNpcGossip[15702]["OptionPoint19"]="19-1"
tNpcGossip[15702]["Option20"] = tServerTransferOfficer_Text[15702]["Option20"]
tNpcGossip[15702]["OptionPoint20"]="20-1"
tNpcGossip[15702]["Option22"] = tServerTransferOfficer_Text[15702]["Option22"]
tNpcGossip[15702]["OptionPoint22"]="22-1"
-- 法语并入英文服务器
tNpcGossip[15702]["Option25"] = tServerTransferOfficer_Text[15702]["Option25"]
tNpcGossip[15702]["OptionFunc25"]="ServerTransferOfficer_IsConnectServer</N>1</N>56"
tNpcGossip[15702]["Option35"] = tServerTransferOfficer_Text[15702]["Option35"]
tNpcGossip[15702]["OptionFunc35"]="ServerTransferOfficer_IsConnectServer</N>1</N>65"
tNpcGossip[15702]["Option26"] = tServerTransferOfficer_Text[15702]["Option26"]
tNpcGossip[15702]["OptionFunc26"]="ServerTransferOfficer_IsConnectServer</N>1</N>57"
tNpcGossip[15702]["Option27"] = tServerTransferOfficer_Text[15702]["Option27"]
tNpcGossip[15702]["OptionPoint27"]="3-4"

tNpcGossip[15702]["Text3-4"] = {341}
tNpcGossip[15702]["Text341"] = tServerTransferOfficer_Text[15702]["Text341"]
tNpcGossip[15702]["tOption3-4"] = {28,30,31,32,33,36,3}
tNpcGossip[15702]["Option28"] = tServerTransferOfficer_Text[15702]["Option28"]
tNpcGossip[15702]["OptionFunc28"]="ServerTransferOfficer_IsConnectServer</N>1</N>58"
tNpcGossip[15702]["Option29"] = tServerTransferOfficer_Text[15702]["Option29"]
tNpcGossip[15702]["OptionFunc29"]="ServerTransferOfficer_IsConnectServer</N>1</N>59"
tNpcGossip[15702]["Option30"] = tServerTransferOfficer_Text[15702]["Option30"]
tNpcGossip[15702]["OptionFunc30"]="ServerTransferOfficer_IsConnectServer</N>1</N>60"
tNpcGossip[15702]["Option31"] = tServerTransferOfficer_Text[15702]["Option31"]
tNpcGossip[15702]["OptionFunc31"]="ServerTransferOfficer_IsConnectServer</N>1</N>61"
tNpcGossip[15702]["Option32"] = tServerTransferOfficer_Text[15702]["Option32"]
tNpcGossip[15702]["OptionFunc32"]="ServerTransferOfficer_IsConnectServer</N>1</N>62"
tNpcGossip[15702]["Option33"] = tServerTransferOfficer_Text[15702]["Option33"]
tNpcGossip[15702]["OptionFunc33"]="ServerTransferOfficer_IsConnectServer</N>1</N>63"
tNpcGossip[15702]["Option36"] = tServerTransferOfficer_Text[15702]["Option36"]
tNpcGossip[15702]["OptionPoint36"]="3-5"

tNpcGossip[15702]["Text3-5"] = {351}
tNpcGossip[15702]["Text351"] = tServerTransferOfficer_Text[15702]["Text351"]
tNpcGossip[15702]["tOption3-5"] = {34,25,37,38,39,40,42,3}
tNpcGossip[15702]["Option34"] = tServerTransferOfficer_Text[15702]["Option34"]
tNpcGossip[15702]["OptionFunc34"]="ServerTransferOfficer_IsConnectServer</N>1</N>64"
tNpcGossip[15702]["Option37"] = tServerTransferOfficer_Text[15702]["Option37"]
tNpcGossip[15702]["OptionFunc37"]="ServerTransferOfficer_IsConnectServer</N>1</N>66"
tNpcGossip[15702]["Option38"] = tServerTransferOfficer_Text[15702]["Option38"]
tNpcGossip[15702]["OptionFunc38"]="ServerTransferOfficer_IsConnectServer</N>1</N>67"
tNpcGossip[15702]["Option39"] = tServerTransferOfficer_Text[15702]["Option39"]
tNpcGossip[15702]["OptionFunc39"]="ServerTransferOfficer_IsConnectServer</N>1</N>68"
tNpcGossip[15702]["Option40"] = tServerTransferOfficer_Text[15702]["Option40"]
tNpcGossip[15702]["OptionFunc40"]="ServerTransferOfficer_IsConnectServer</N>1</N>69"
-- tNpcGossip[15702]["Option35"] = tServerTransferOfficer_Text[15702]["Option35"]
-- tNpcGossip[15702]["OptionFunc35"]="ServerTransferOfficer_IsConnectServer</N>1</N>65"
tNpcGossip[15702]["Option42"] = tServerTransferOfficer_Text[15702]["Option42"]
tNpcGossip[15702]["OptionPoint42"]="3-6"

tNpcGossip[15702]["Text3-6"] = {361}
tNpcGossip[15702]["Text361"] = tServerTransferOfficer_Text[15702]["Text361"]
tNpcGossip[15702]["tOption3-6"] = {41,45,3}
tNpcGossip[15702]["Option41"] = tServerTransferOfficer_Text[15702]["Option41"]
tNpcGossip[15702]["OptionFunc41"]="ServerTransferOfficer_IsConnectServer</N>1</N>70"
tNpcGossip[15702]["Option43"] = tServerTransferOfficer_Text[15702]["Option43"]
tNpcGossip[15702]["OptionFunc43"]="ServerTransferOfficer_IsConnectServer</N>1</N>71"
tNpcGossip[15702]["Option44"] = tServerTransferOfficer_Text[15702]["Option44"]
tNpcGossip[15702]["OptionFunc44"]="ServerTransferOfficer_IsConnectServer</N>1</N>72"
tNpcGossip[15702]["Option45"] = tServerTransferOfficer_Text[15702]["Option45"]
tNpcGossip[15702]["OptionFunc45"]="ServerTransferOfficer_IsConnectServer</N>1</N>73"


tNpcGossip[15702]["Text5-1"] = {511}
tNpcGossip[15702]["Text511"] = tServerTransferOfficer_Text[15702]["Text511"]
tNpcGossip[15702]["tOption5-1"] = {511,512,513,514,515,3}
tNpcGossip[15702]["Option511"] = tServerTransferOfficer_Text[15702]["Option511"]
tNpcGossip[15702]["OptionFunc511"]="ServerTransferOfficer_IsConnectServer</N>1</N>1"
tNpcGossip[15702]["Option512"] = tServerTransferOfficer_Text[15702]["Option512"]
tNpcGossip[15702]["OptionFunc512"]="ServerTransferOfficer_IsConnectServer</N>1</N>2"
tNpcGossip[15702]["Option513"] = tServerTransferOfficer_Text[15702]["Option513"]
tNpcGossip[15702]["OptionFunc513"]="ServerTransferOfficer_IsConnectServer</N>1</N>3"
tNpcGossip[15702]["Option514"] = tServerTransferOfficer_Text[15702]["Option514"]
tNpcGossip[15702]["OptionFunc514"]="ServerTransferOfficer_IsConnectServer</N>1</N>4"
tNpcGossip[15702]["Option515"] = tServerTransferOfficer_Text[15702]["Option515"]
tNpcGossip[15702]["OptionFunc515"]="ServerTransferOfficer_IsConnectServer</N>1</N>5"

tNpcGossip[15702]["Text6-1"] = {611}
tNpcGossip[15702]["Text611"] = tServerTransferOfficer_Text[15702]["Text511"]
tNpcGossip[15702]["tOption6-1"] = {611,612,613,3}
tNpcGossip[15702]["Option611"] = tServerTransferOfficer_Text[15702]["Option611"]
tNpcGossip[15702]["OptionFunc611"]="ServerTransferOfficer_IsConnectServer</N>1</N>6"
tNpcGossip[15702]["Option612"] = tServerTransferOfficer_Text[15702]["Option612"]
tNpcGossip[15702]["OptionFunc612"]="ServerTransferOfficer_IsConnectServer</N>1</N>7"
tNpcGossip[15702]["Option613"] = tServerTransferOfficer_Text[15702]["Option613"]
tNpcGossip[15702]["OptionFunc613"]="ServerTransferOfficer_IsConnectServer</N>1</N>8"

tNpcGossip[15702]["Text7-1"] = {711}
tNpcGossip[15702]["Text711"] = tServerTransferOfficer_Text[15702]["Text511"]
tNpcGossip[15702]["tOption7-1"] = {711,712,713,714,715,3}
tNpcGossip[15702]["Option711"] = tServerTransferOfficer_Text[15702]["Option711"]
tNpcGossip[15702]["OptionFunc711"]="ServerTransferOfficer_IsConnectServer</N>1</N>9"
tNpcGossip[15702]["Option712"] = tServerTransferOfficer_Text[15702]["Option712"]
tNpcGossip[15702]["OptionFunc712"]="ServerTransferOfficer_IsConnectServer</N>1</N>10"
tNpcGossip[15702]["Option713"] = tServerTransferOfficer_Text[15702]["Option713"]
tNpcGossip[15702]["OptionFunc713"]="ServerTransferOfficer_IsConnectServer</N>1</N>11"
tNpcGossip[15702]["Option714"] = tServerTransferOfficer_Text[15702]["Option714"]
tNpcGossip[15702]["OptionFunc714"]="ServerTransferOfficer_IsConnectServer</N>1</N>12"
tNpcGossip[15702]["Option715"] = tServerTransferOfficer_Text[15702]["Option715"]
tNpcGossip[15702]["OptionFunc715"]="ServerTransferOfficer_IsConnectServer</N>1</N>13"

tNpcGossip[15702]["Text8-1"] = {811}
tNpcGossip[15702]["Text811"] = tServerTransferOfficer_Text[15702]["Text511"]
tNpcGossip[15702]["tOption8-1"] = {811,812,813,814,815,3}
tNpcGossip[15702]["Option811"] = tServerTransferOfficer_Text[15702]["Option811"]
tNpcGossip[15702]["OptionFunc811"]="ServerTransferOfficer_IsConnectServer</N>1</N>14"
tNpcGossip[15702]["Option812"] = tServerTransferOfficer_Text[15702]["Option812"]
tNpcGossip[15702]["OptionFunc812"]="ServerTransferOfficer_IsConnectServer</N>1</N>15"
tNpcGossip[15702]["Option813"] = tServerTransferOfficer_Text[15702]["Option813"]
tNpcGossip[15702]["OptionFunc813"]="ServerTransferOfficer_IsConnectServer</N>1</N>16"
tNpcGossip[15702]["Option814"] = tServerTransferOfficer_Text[15702]["Option814"]
tNpcGossip[15702]["OptionFunc814"]="ServerTransferOfficer_IsConnectServer</N>1</N>17"
tNpcGossip[15702]["Option815"] = tServerTransferOfficer_Text[15702]["Option815"]
tNpcGossip[15702]["OptionFunc815"]="ServerTransferOfficer_IsConnectServer</N>1</N>18"

tNpcGossip[15702]["Text9-1"] = {611}
tNpcGossip[15702]["Text911"] = tServerTransferOfficer_Text[15702]["Text511"]
tNpcGossip[15702]["tOption9-1"] = {911,912,913,914,3}
tNpcGossip[15702]["Option911"] = tServerTransferOfficer_Text[15702]["Option911"]
tNpcGossip[15702]["OptionFunc911"]="ServerTransferOfficer_IsConnectServer</N>1</N>19"
tNpcGossip[15702]["Option912"] = tServerTransferOfficer_Text[15702]["Option912"]
tNpcGossip[15702]["OptionFunc912"]="ServerTransferOfficer_IsConnectServer</N>1</N>20"
tNpcGossip[15702]["Option913"] = tServerTransferOfficer_Text[15702]["Option913"]
tNpcGossip[15702]["OptionFunc913"]="ServerTransferOfficer_IsConnectServer</N>1</N>21"
tNpcGossip[15702]["Option914"] = tServerTransferOfficer_Text[15702]["Option914"]
tNpcGossip[15702]["OptionFunc914"]="ServerTransferOfficer_IsConnectServer</N>1</N>22"

tNpcGossip[15702]["Text10-1"] = {1011}
tNpcGossip[15702]["Text1011"] = tServerTransferOfficer_Text[15702]["Text511"]
tNpcGossip[15702]["tOption10-1"] = {1011,1012,1013,3}
tNpcGossip[15702]["Option1011"] = tServerTransferOfficer_Text[15702]["Option1011"]
tNpcGossip[15702]["OptionFunc1011"]="ServerTransferOfficer_IsConnectServer</N>1</N>23"
tNpcGossip[15702]["Option1012"] = tServerTransferOfficer_Text[15702]["Option1012"]
tNpcGossip[15702]["OptionFunc1012"]="ServerTransferOfficer_IsConnectServer</N>1</N>24"
tNpcGossip[15702]["Option1013"] = tServerTransferOfficer_Text[15702]["Option1013"]
tNpcGossip[15702]["OptionFunc1013"]="ServerTransferOfficer_IsConnectServer</N>1</N>25"
-- tNpcGossip[15702]["Option1014"] = tServerTransferOfficer_Text[15702]["Option1014"]
-- tNpcGossip[15702]["OptionFunc1014"]="ServerTransferOfficer_IsConnectServer</N>1</N>26"

tNpcGossip[15702]["Text12-1"] = {1211}
tNpcGossip[15702]["Text1211"] = tServerTransferOfficer_Text[15702]["Text511"]
tNpcGossip[15702]["tOption12-1"] = {1211,1212,3}
tNpcGossip[15702]["Option1211"] = tServerTransferOfficer_Text[15702]["Option1211"]
tNpcGossip[15702]["OptionFunc1211"]="ServerTransferOfficer_IsConnectServer</N>1</N>27"
tNpcGossip[15702]["Option1212"] = tServerTransferOfficer_Text[15702]["Option1212"]
tNpcGossip[15702]["OptionFunc1212"]="ServerTransferOfficer_IsConnectServer</N>1</N>28"

tNpcGossip[15702]["Text13-1"] = {1311}
tNpcGossip[15702]["Text1311"] = tServerTransferOfficer_Text[15702]["Text511"]
tNpcGossip[15702]["tOption13-1"] = {1311,1312,1313,1314,1315,3}
tNpcGossip[15702]["Option1311"] = tServerTransferOfficer_Text[15702]["Option1311"]
tNpcGossip[15702]["OptionFunc1311"]="ServerTransferOfficer_IsConnectServer</N>1</N>29"
tNpcGossip[15702]["Option1312"] = tServerTransferOfficer_Text[15702]["Option1312"]
tNpcGossip[15702]["OptionFunc1312"]="ServerTransferOfficer_IsConnectServer</N>1</N>30"
tNpcGossip[15702]["Option1313"] = tServerTransferOfficer_Text[15702]["Option1313"]
tNpcGossip[15702]["OptionFunc1313"]="ServerTransferOfficer_IsConnectServer</N>1</N>31"
tNpcGossip[15702]["Option1314"] = tServerTransferOfficer_Text[15702]["Option1314"]
tNpcGossip[15702]["OptionFunc1314"]="ServerTransferOfficer_IsConnectServer</N>1</N>32"
tNpcGossip[15702]["Option1315"] = tServerTransferOfficer_Text[15702]["Option1315"]
tNpcGossip[15702]["OptionFunc1315"]="ServerTransferOfficer_IsConnectServer</N>1</N>33"

tNpcGossip[15702]["Text14-1"] = {1411}
tNpcGossip[15702]["Text1411"] = tServerTransferOfficer_Text[15702]["Text511"]
tNpcGossip[15702]["tOption14-1"] = {1411,1412,3}
tNpcGossip[15702]["Option1411"] = tServerTransferOfficer_Text[15702]["Option1411"]
tNpcGossip[15702]["OptionFunc1411"]="ServerTransferOfficer_IsConnectServer</N>1</N>34"
tNpcGossip[15702]["Option1412"] = tServerTransferOfficer_Text[15702]["Option1412"]
tNpcGossip[15702]["OptionFunc1412"]="ServerTransferOfficer_IsConnectServer</N>1</N>35"

tNpcGossip[15702]["Text15-1"] = {1511}
tNpcGossip[15702]["Text1511"] = tServerTransferOfficer_Text[15702]["Text511"]
tNpcGossip[15702]["tOption15-1"] = {1511,1512,1513,3}
tNpcGossip[15702]["Option1511"] = tServerTransferOfficer_Text[15702]["Option1511"]
tNpcGossip[15702]["OptionFunc1511"]="ServerTransferOfficer_IsConnectServer</N>1</N>36"
tNpcGossip[15702]["Option1512"] = tServerTransferOfficer_Text[15702]["Option1512"]
tNpcGossip[15702]["OptionFunc1512"]="ServerTransferOfficer_IsConnectServer</N>1</N>37"
tNpcGossip[15702]["Option1513"] = tServerTransferOfficer_Text[15702]["Option1513"]
tNpcGossip[15702]["OptionFunc1513"]="ServerTransferOfficer_IsConnectServer</N>1</N>38"

tNpcGossip[15702]["Text16-1"] = {1611}
tNpcGossip[15702]["Text1611"] = tServerTransferOfficer_Text[15702]["Text511"]
tNpcGossip[15702]["tOption16-1"] = {1611,1612,1613,1614,3}
tNpcGossip[15702]["Option1611"] = tServerTransferOfficer_Text[15702]["Option1611"]
tNpcGossip[15702]["OptionFunc1611"]="ServerTransferOfficer_IsConnectServer</N>1</N>39"
tNpcGossip[15702]["Option1612"] = tServerTransferOfficer_Text[15702]["Option1612"]
tNpcGossip[15702]["OptionFunc1612"]="ServerTransferOfficer_IsConnectServer</N>1</N>40"
tNpcGossip[15702]["Option1613"] = tServerTransferOfficer_Text[15702]["Option1613"]
tNpcGossip[15702]["OptionFunc1613"]="ServerTransferOfficer_IsConnectServer</N>1</N>41"
tNpcGossip[15702]["Option1614"] = tServerTransferOfficer_Text[15702]["Option1614"]
tNpcGossip[15702]["OptionFunc1614"]="ServerTransferOfficer_IsConnectServer</N>1</N>42"

tNpcGossip[15702]["Text17-1"] = {1711}
tNpcGossip[15702]["Text1711"] = tServerTransferOfficer_Text[15702]["Text511"]
tNpcGossip[15702]["tOption17-1"] = {1711,1712,3}
tNpcGossip[15702]["Option1711"] = tServerTransferOfficer_Text[15702]["Option1711"]
tNpcGossip[15702]["OptionFunc1711"]="ServerTransferOfficer_IsConnectServer</N>1</N>43"
tNpcGossip[15702]["Option1712"] = tServerTransferOfficer_Text[15702]["Option1712"]
tNpcGossip[15702]["OptionFunc1712"]="ServerTransferOfficer_IsConnectServer</N>1</N>44"

tNpcGossip[15702]["Text18-1"] = {1811}
tNpcGossip[15702]["Text1811"] = tServerTransferOfficer_Text[15702]["Text511"]
tNpcGossip[15702]["tOption18-1"] = {1811,1812,1813,29,3}
tNpcGossip[15702]["Option1811"] = tServerTransferOfficer_Text[15702]["Option1811"]
tNpcGossip[15702]["OptionFunc1811"]="ServerTransferOfficer_IsConnectServer</N>1</N>45"
tNpcGossip[15702]["Option1812"] = tServerTransferOfficer_Text[15702]["Option1812"]
tNpcGossip[15702]["OptionFunc1812"]="ServerTransferOfficer_IsConnectServer</N>1</N>46"
tNpcGossip[15702]["Option1813"] = tServerTransferOfficer_Text[15702]["Option1813"]
tNpcGossip[15702]["OptionFunc1813"]="ServerTransferOfficer_IsConnectServer</N>1</N>47"
-- tNpcGossip[15702]["Option1814"] = tServerTransferOfficer_Text[15702]["Option1814"]
-- tNpcGossip[15702]["OptionFunc1814"]="ServerTransferOfficer_IsConnectServer</N>1</N>48"
tNpcGossip[15702]["Option1815"] = tServerTransferOfficer_Text[15702]["Option1815"]
tNpcGossip[15702]["OptionFunc1815"]="ServerTransferOfficer_IsConnectServer</N>1</N>49"

tNpcGossip[15702]["Text19-1"] = {1911}
tNpcGossip[15702]["Text1911"] = tServerTransferOfficer_Text[15702]["Text511"]
tNpcGossip[15702]["tOption19-1"] = {1912,1913,3}
-- tNpcGossip[15702]["Option1911"] = tServerTransferOfficer_Text[15702]["Option1911"]
-- tNpcGossip[15702]["OptionFunc1911"]="ServerTransferOfficer_IsConnectServer</N>1</N>50"
tNpcGossip[15702]["Option1912"] = tServerTransferOfficer_Text[15702]["Option1912"]
tNpcGossip[15702]["OptionFunc1912"]="ServerTransferOfficer_IsConnectServer</N>1</N>54"
tNpcGossip[15702]["Option1913"] = tServerTransferOfficer_Text[15702]["Option1913"]
tNpcGossip[15702]["OptionFunc1913"]="ServerTransferOfficer_IsConnectServer</N>1</N>55"

tNpcGossip[15702]["Text20-1"] = {2011}
tNpcGossip[15702]["Text2011"] = tServerTransferOfficer_Text[15702]["Text511"]
tNpcGossip[15702]["tOption20-1"] = {2011,2012,3}
tNpcGossip[15702]["Option2011"] = tServerTransferOfficer_Text[15702]["Option2011"]
tNpcGossip[15702]["OptionFunc2011"]="ServerTransferOfficer_IsConnectServer</N>1</N>51"
tNpcGossip[15702]["OptionChkFunc2011"] = function ()
	return ServerTransferOfficer_ChkServerName()
end
tNpcGossip[15702]["Option2012"] = tServerTransferOfficer_Text[15702]["Option2012"]
tNpcGossip[15702]["OptionFunc2012"]="ServerTransferOfficer_IsConnectServer</N>1</N>52"
tNpcGossip[15702]["OptionChkFunc2012"] = function ()
	return ServerTransferOfficer_ChkServerName()
end

tNpcGossip[15702]["Text22-1"] = {2211,2212}
tNpcGossip[15702]["Text2211"] = tServerTransferOfficer_Text[15702]["Text2211"]
tNpcGossip[15702]["Text2212"] = tServerTransferOfficer_Text[15702]["Text2212"]
tNpcGossip[15702]["tOption22-1"] = {23,24}
tNpcGossip[15702]["Option23"] = tServerTransferOfficer_Text[15702]["Option23"]
tNpcGossip[15702]["OptionFunc23"]="ServerTransferOfficer_IsConnectServer</N>1</N>53"
tNpcGossip[15702]["Option24"] = tServerTransferOfficer_Text[15702]["Option24"]

tNpcGossip[15702]["Text23-1"] = {2311}
tNpcGossip[15702]["Text2311"] = tServerTransferOfficer_Text[15702]["Text2311"]
tNpcGossip[15702]["tOption23-1"] = {2311}
tNpcGossip[15702]["Option2311"] = tServerTransferOfficer_Text[15702]["Option2311"]
tNpcGossip[15702]["OptionFunc2311"]="ServerTransferOfficer_IsConnectServer</N>1</N>71"


tNpcGossip[15702]["Text24-1"] = {2411}
tNpcGossip[15702]["Text2411"] = tServerTransferOfficer_Text[15702]["Text2411"]
tNpcGossip[15702]["tOption24-1"] = {2411}
tNpcGossip[15702]["Option2411"] = tServerTransferOfficer_Text[15702]["Option2411"]
tNpcGossip[15702]["OptionFunc2411"]="ServerTransferOfficer_IsConnectServer</N>1</N>72"


-- 使用物品的转服NPC 选项
tNpcGossip[15702]["Text113-1"] = {11311}
tNpcGossip[15702]["Text11311"] = tServerTransferOfficer_Text[15702]["Text11311"]
tNpcGossip[15702]["tOption113-1"] = {115,116,117,118,119,1110,1111,3}
tNpcGossip[15702]["Option115"] = tServerTransferOfficer_Text[15702]["Option115"]
tNpcGossip[15702]["OptionPoint115"]="115-1"
tNpcGossip[15702]["Option116"] = tServerTransferOfficer_Text[15702]["Option116"]
tNpcGossip[15702]["OptionPoint116"]="116-1"
tNpcGossip[15702]["Option117"] = tServerTransferOfficer_Text[15702]["Option117"]
tNpcGossip[15702]["OptionPoint117"]="117-1"
tNpcGossip[15702]["Option118"] = tServerTransferOfficer_Text[15702]["Option118"]
tNpcGossip[15702]["OptionPoint118"]="118-1"
tNpcGossip[15702]["Option119"] = tServerTransferOfficer_Text[15702]["Option119"]
tNpcGossip[15702]["OptionPoint119"]="119-1"
tNpcGossip[15702]["Option1110"] = tServerTransferOfficer_Text[15702]["Option1110"]
tNpcGossip[15702]["OptionPoint1110"]="1110-1"
tNpcGossip[15702]["Option1111"] = tServerTransferOfficer_Text[15702]["Option1111"]
tNpcGossip[15702]["OptionPoint1111"]="113-2"

tNpcGossip[15702]["Text113-2"] = {11321}
tNpcGossip[15702]["Text11321"] = tServerTransferOfficer_Text[15702]["Text11321"]
tNpcGossip[15702]["tOption113-2"] = {1112,1113,1114,1115,1116,1117,1121,3}
tNpcGossip[15702]["Option1112"] = tServerTransferOfficer_Text[15702]["Option1112"]
tNpcGossip[15702]["OptionPoint1112"]="1112-1"
tNpcGossip[15702]["Option1113"] = tServerTransferOfficer_Text[15702]["Option1113"]
tNpcGossip[15702]["OptionPoint1113"]="1113-1"
tNpcGossip[15702]["Option1114"] = tServerTransferOfficer_Text[15702]["Option1114"]
tNpcGossip[15702]["OptionPoint1114"]="1114-1"
tNpcGossip[15702]["Option1115"] = tServerTransferOfficer_Text[15702]["Option1115"]
tNpcGossip[15702]["OptionPoint1115"]="1115-1"
tNpcGossip[15702]["Option1116"] = tServerTransferOfficer_Text[15702]["Option1116"]
tNpcGossip[15702]["OptionPoint1116"]="1116-1"
tNpcGossip[15702]["Option1117"] = tServerTransferOfficer_Text[15702]["Option1117"]
tNpcGossip[15702]["OptionPoint1117"]="1117-1"
tNpcGossip[15702]["Option1121"] = tServerTransferOfficer_Text[15702]["Option1121"]
tNpcGossip[15702]["OptionPoint1121"]="113-3"

tNpcGossip[15702]["Text113-3"] = {11331}
tNpcGossip[15702]["Text11331"] = tServerTransferOfficer_Text[15702]["Text11331"]
tNpcGossip[15702]["tOption113-3"] = {1118,1119,1120,1122,1135,1126,1127,3}
tNpcGossip[15702]["Option1118"] = tServerTransferOfficer_Text[15702]["Option1118"]
tNpcGossip[15702]["OptionPoint1118"]="1118-1"
tNpcGossip[15702]["Option1119"] = tServerTransferOfficer_Text[15702]["Option1119"]
tNpcGossip[15702]["OptionPoint1119"]="1119-1"
tNpcGossip[15702]["Option1120"] = tServerTransferOfficer_Text[15702]["Option1120"]
tNpcGossip[15702]["OptionPoint1120"]="1120-1"
tNpcGossip[15702]["Option1122"] = tServerTransferOfficer_Text[15702]["Option1122"]
tNpcGossip[15702]["OptionPoint1122"]="1122-1"
-- 法语并入英文服务器
tNpcGossip[15702]["Option1125"] = tServerTransferOfficer_Text[15702]["Option1125"]
tNpcGossip[15702]["OptionFunc1125"]="ServerTransferOfficer_IsConnectServer</N>2</N>56"
tNpcGossip[15702]["Option1135"] = tServerTransferOfficer_Text[15702]["Option1135"]
tNpcGossip[15702]["OptionFunc1135"]="ServerTransferOfficer_IsConnectServer</N>2</N>65"
tNpcGossip[15702]["Option1126"] = tServerTransferOfficer_Text[15702]["Option1126"]
tNpcGossip[15702]["OptionFunc1126"]="ServerTransferOfficer_IsConnectServer</N>2</N>57"
tNpcGossip[15702]["Option1127"] = tServerTransferOfficer_Text[15702]["Option1127"]
tNpcGossip[15702]["OptionPoint1127"]="113-4"

tNpcGossip[15702]["Text113-4"] = {11341}
tNpcGossip[15702]["Text11341"] = tServerTransferOfficer_Text[15702]["Text11341"]
tNpcGossip[15702]["tOption113-4"] = {1128,1129,1130,1131,1132,1133,1136,3}
tNpcGossip[15702]["Option1128"] = tServerTransferOfficer_Text[15702]["Option1128"]
tNpcGossip[15702]["OptionFunc1128"]="ServerTransferOfficer_IsConnectServer</N>2</N>58"
tNpcGossip[15702]["Option1129"] = tServerTransferOfficer_Text[15702]["Option1129"]
tNpcGossip[15702]["OptionFunc1129"]="ServerTransferOfficer_IsConnectServer</N>2</N>59"
tNpcGossip[15702]["Option1130"] = tServerTransferOfficer_Text[15702]["Option1130"]
tNpcGossip[15702]["OptionFunc1130"]="ServerTransferOfficer_IsConnectServer</N>2</N>60"
tNpcGossip[15702]["Option1131"] = tServerTransferOfficer_Text[15702]["Option1131"]
tNpcGossip[15702]["OptionFunc1131"]="ServerTransferOfficer_IsConnectServer</N>2</N>61"
tNpcGossip[15702]["Option1132"] = tServerTransferOfficer_Text[15702]["Option1132"]
tNpcGossip[15702]["OptionFunc1132"]="ServerTransferOfficer_IsConnectServer</N>2</N>62"
tNpcGossip[15702]["Option1133"] = tServerTransferOfficer_Text[15702]["Option1133"]
tNpcGossip[15702]["OptionFunc1133"]="ServerTransferOfficer_IsConnectServer</N>2</N>63"
tNpcGossip[15702]["Option1136"] = tServerTransferOfficer_Text[15702]["Option1136"]
tNpcGossip[15702]["OptionPoint1136"]="113-5"

tNpcGossip[15702]["Text113-5"] = {11351}
tNpcGossip[15702]["Text11351"] = tServerTransferOfficer_Text[15702]["Text11351"]
tNpcGossip[15702]["tOption113-5"] = {1134,1125,1137,1138,1139,1140,1142,3}
tNpcGossip[15702]["Option1134"] = tServerTransferOfficer_Text[15702]["Option1134"]
tNpcGossip[15702]["OptionFunc1134"]="ServerTransferOfficer_IsConnectServer</N>2</N>64"
tNpcGossip[15702]["Option1137"] = tServerTransferOfficer_Text[15702]["Option1137"]
tNpcGossip[15702]["OptionFunc1137"]="ServerTransferOfficer_IsConnectServer</N>2</N>66"
tNpcGossip[15702]["Option1138"] = tServerTransferOfficer_Text[15702]["Option1138"]
tNpcGossip[15702]["OptionFunc1138"]="ServerTransferOfficer_IsConnectServer</N>2</N>67"
tNpcGossip[15702]["Option1139"] = tServerTransferOfficer_Text[15702]["Option1139"]
tNpcGossip[15702]["OptionFunc1139"]="ServerTransferOfficer_IsConnectServer</N>2</N>68"
tNpcGossip[15702]["Option1140"] = tServerTransferOfficer_Text[15702]["Option1140"]
tNpcGossip[15702]["OptionFunc1140"]="ServerTransferOfficer_IsConnectServer</N>2</N>69"
-- tNpcGossip[15702]["Option1141"] = tServerTransferOfficer_Text[15702]["Option1141"]
-- tNpcGossip[15702]["OptionFunc1141"]="ServerTransferOfficer_IsConnectServer</N>2</N>70"
-- tNpcGossip[15702]["Option1135"] = tServerTransferOfficer_Text[15702]["Option1135"]
-- tNpcGossip[15702]["OptionFunc1135"]="ServerTransferOfficer_IsConnectServer</N>2</N>65"
tNpcGossip[15702]["Option1142"] = tServerTransferOfficer_Text[15702]["Option1142"]
tNpcGossip[15702]["OptionPoint1142"]="113-6"

tNpcGossip[15702]["Text113-6"] = {11361}
tNpcGossip[15702]["Text11361"] = tServerTransferOfficer_Text[15702]["Text11361"]
tNpcGossip[15702]["tOption113-6"] = {1141,1145,3}
tNpcGossip[15702]["Option1141"] = tServerTransferOfficer_Text[15702]["Option1141"]
tNpcGossip[15702]["OptionFunc1141"]="ServerTransferOfficer_IsConnectServer</N>2</N>70"
tNpcGossip[15702]["Option1143"] = tServerTransferOfficer_Text[15702]["Option1143"]
tNpcGossip[15702]["OptionFunc1143"]="ServerTransferOfficer_IsConnectServer</N>2</N>71"
tNpcGossip[15702]["Option1144"] = tServerTransferOfficer_Text[15702]["Option1144"]
tNpcGossip[15702]["OptionFunc1144"]="ServerTransferOfficer_IsConnectServer</N>2</N>72"
tNpcGossip[15702]["Option1145"] = tServerTransferOfficer_Text[15702]["Option1145"]
tNpcGossip[15702]["OptionFunc1145"]="ServerTransferOfficer_IsConnectServer</N>2</N>73"



tNpcGossip[15702]["Text115-1"] = {11511}
tNpcGossip[15702]["Text11511"] = tServerTransferOfficer_Text[15702]["Text11511"]
tNpcGossip[15702]["tOption115-1"] = {11511,11512,11513,11514,11515,3}
tNpcGossip[15702]["Option11511"] = tServerTransferOfficer_Text[15702]["Option11511"]
tNpcGossip[15702]["OptionFunc11511"]="ServerTransferOfficer_IsConnectServer</N>2</N>1"
tNpcGossip[15702]["Option11512"] = tServerTransferOfficer_Text[15702]["Option11512"]
tNpcGossip[15702]["OptionFunc11512"]="ServerTransferOfficer_IsConnectServer</N>2</N>2"
tNpcGossip[15702]["Option11513"] = tServerTransferOfficer_Text[15702]["Option11513"]
tNpcGossip[15702]["OptionFunc11513"]="ServerTransferOfficer_IsConnectServer</N>2</N>3"
tNpcGossip[15702]["Option11514"] = tServerTransferOfficer_Text[15702]["Option11514"]
tNpcGossip[15702]["OptionFunc11514"]="ServerTransferOfficer_IsConnectServer</N>2</N>4"
tNpcGossip[15702]["Option11515"] = tServerTransferOfficer_Text[15702]["Option11515"]
tNpcGossip[15702]["OptionFunc11515"]="ServerTransferOfficer_IsConnectServer</N>2</N>5"

tNpcGossip[15702]["Text116-1"] = {11611}
tNpcGossip[15702]["Text11611"] = tServerTransferOfficer_Text[15702]["Text11511"]
tNpcGossip[15702]["tOption116-1"] = {11611,11612,11613,3}
tNpcGossip[15702]["Option11611"] = tServerTransferOfficer_Text[15702]["Option11611"]
tNpcGossip[15702]["OptionFunc11611"]="ServerTransferOfficer_IsConnectServer</N>2</N>6"
tNpcGossip[15702]["Option11612"] = tServerTransferOfficer_Text[15702]["Option11612"]
tNpcGossip[15702]["OptionFunc11612"]="ServerTransferOfficer_IsConnectServer</N>2</N>7"
tNpcGossip[15702]["Option11613"] = tServerTransferOfficer_Text[15702]["Option11613"]
tNpcGossip[15702]["OptionFunc11613"]="ServerTransferOfficer_IsConnectServer</N>2</N>8"

tNpcGossip[15702]["Text117-1"] = {11711}
tNpcGossip[15702]["Text11711"] = tServerTransferOfficer_Text[15702]["Text11511"]
tNpcGossip[15702]["tOption117-1"] = {11711,11712,11713,11714,11715,3}
tNpcGossip[15702]["Option11711"] = tServerTransferOfficer_Text[15702]["Option11711"]
tNpcGossip[15702]["OptionFunc11711"]="ServerTransferOfficer_IsConnectServer</N>2</N>9"
tNpcGossip[15702]["Option11712"] = tServerTransferOfficer_Text[15702]["Option11712"]
tNpcGossip[15702]["OptionFunc11712"]="ServerTransferOfficer_IsConnectServer</N>2</N>10"
tNpcGossip[15702]["Option11713"] = tServerTransferOfficer_Text[15702]["Option11713"]
tNpcGossip[15702]["OptionFunc11713"]="ServerTransferOfficer_IsConnectServer</N>2</N>11"
tNpcGossip[15702]["Option11714"] = tServerTransferOfficer_Text[15702]["Option11714"]
tNpcGossip[15702]["OptionFunc11714"]="ServerTransferOfficer_IsConnectServer</N>2</N>12"
tNpcGossip[15702]["Option11715"] = tServerTransferOfficer_Text[15702]["Option11715"]
tNpcGossip[15702]["OptionFunc11715"]="ServerTransferOfficer_IsConnectServer</N>2</N>13"

tNpcGossip[15702]["Text118-1"] = {11811}
tNpcGossip[15702]["Text11811"] = tServerTransferOfficer_Text[15702]["Text11511"]
tNpcGossip[15702]["tOption118-1"] = {11811,11812,11813,11814,11815,3}
tNpcGossip[15702]["Option11811"] = tServerTransferOfficer_Text[15702]["Option11811"]
tNpcGossip[15702]["OptionFunc11811"]="ServerTransferOfficer_IsConnectServer</N>2</N>14"
tNpcGossip[15702]["Option11812"] = tServerTransferOfficer_Text[15702]["Option11812"]
tNpcGossip[15702]["OptionFunc11812"]="ServerTransferOfficer_IsConnectServer</N>2</N>15"
tNpcGossip[15702]["Option11813"] = tServerTransferOfficer_Text[15702]["Option11813"]
tNpcGossip[15702]["OptionFunc11813"]="ServerTransferOfficer_IsConnectServer</N>2</N>16"
tNpcGossip[15702]["Option11814"] = tServerTransferOfficer_Text[15702]["Option11814"]
tNpcGossip[15702]["OptionFunc11814"]="ServerTransferOfficer_IsConnectServer</N>2</N>17"
tNpcGossip[15702]["Option11815"] = tServerTransferOfficer_Text[15702]["Option11815"]
tNpcGossip[15702]["OptionFunc11815"]="ServerTransferOfficer_IsConnectServer</N>2</N>18"

tNpcGossip[15702]["Text119-1"] = {11611}
tNpcGossip[15702]["Text11911"] = tServerTransferOfficer_Text[15702]["Text11511"]
tNpcGossip[15702]["tOption119-1"] = {11911,11912,11913,11914,3}
tNpcGossip[15702]["Option11911"] = tServerTransferOfficer_Text[15702]["Option11911"]
tNpcGossip[15702]["OptionFunc11911"]="ServerTransferOfficer_IsConnectServer</N>2</N>19"
tNpcGossip[15702]["Option11912"] = tServerTransferOfficer_Text[15702]["Option11912"]
tNpcGossip[15702]["OptionFunc11912"]="ServerTransferOfficer_IsConnectServer</N>2</N>20"
tNpcGossip[15702]["Option11913"] = tServerTransferOfficer_Text[15702]["Option11913"]
tNpcGossip[15702]["OptionFunc11913"]="ServerTransferOfficer_IsConnectServer</N>2</N>21"
tNpcGossip[15702]["Option11914"] = tServerTransferOfficer_Text[15702]["Option11914"]
tNpcGossip[15702]["OptionFunc11914"]="ServerTransferOfficer_IsConnectServer</N>2</N>22"

tNpcGossip[15702]["Text1110-1"] = {111011}
tNpcGossip[15702]["Text111011"] = tServerTransferOfficer_Text[15702]["Text11511"]
tNpcGossip[15702]["tOption1110-1"] = {111011,111012,111013,3}
tNpcGossip[15702]["Option111011"] = tServerTransferOfficer_Text[15702]["Option111011"]
tNpcGossip[15702]["OptionFunc111011"]="ServerTransferOfficer_IsConnectServer</N>2</N>23"
tNpcGossip[15702]["Option111012"] = tServerTransferOfficer_Text[15702]["Option111012"]
tNpcGossip[15702]["OptionFunc111012"]="ServerTransferOfficer_IsConnectServer</N>2</N>24"
tNpcGossip[15702]["Option111013"] = tServerTransferOfficer_Text[15702]["Option111013"]
tNpcGossip[15702]["OptionFunc111013"]="ServerTransferOfficer_IsConnectServer</N>2</N>25"
-- tNpcGossip[15702]["Option111014"] = tServerTransferOfficer_Text[15702]["Option111014"]
-- tNpcGossip[15702]["OptionFunc111014"]="ServerTransferOfficer_IsConnectServer</N>2</N>26"

tNpcGossip[15702]["Text1112-1"] = {111211}
tNpcGossip[15702]["Text111211"] = tServerTransferOfficer_Text[15702]["Text11511"]
tNpcGossip[15702]["tOption1112-1"] = {111211,111212,3}
tNpcGossip[15702]["Option111211"] = tServerTransferOfficer_Text[15702]["Option111211"]
tNpcGossip[15702]["OptionFunc111211"]="ServerTransferOfficer_IsConnectServer</N>2</N>27"
tNpcGossip[15702]["Option111212"] = tServerTransferOfficer_Text[15702]["Option111212"]
tNpcGossip[15702]["OptionFunc111212"]="ServerTransferOfficer_IsConnectServer</N>2</N>28"

tNpcGossip[15702]["Text1113-1"] = {111311}
tNpcGossip[15702]["Text111311"] = tServerTransferOfficer_Text[15702]["Text11511"]
tNpcGossip[15702]["tOption1113-1"] = {111311,111312,111313,111314,111315,3}
tNpcGossip[15702]["Option111311"] = tServerTransferOfficer_Text[15702]["Option111311"]
tNpcGossip[15702]["OptionFunc111311"]="ServerTransferOfficer_IsConnectServer</N>2</N>29"
tNpcGossip[15702]["Option111312"] = tServerTransferOfficer_Text[15702]["Option111312"]
tNpcGossip[15702]["OptionFunc111312"]="ServerTransferOfficer_IsConnectServer</N>2</N>30"
tNpcGossip[15702]["Option111313"] = tServerTransferOfficer_Text[15702]["Option111313"]
tNpcGossip[15702]["OptionFunc111313"]="ServerTransferOfficer_IsConnectServer</N>2</N>31"
tNpcGossip[15702]["Option111314"] = tServerTransferOfficer_Text[15702]["Option111314"]
tNpcGossip[15702]["OptionFunc111314"]="ServerTransferOfficer_IsConnectServer</N>2</N>32"
tNpcGossip[15702]["Option111315"] = tServerTransferOfficer_Text[15702]["Option111315"]
tNpcGossip[15702]["OptionFunc111315"]="ServerTransferOfficer_IsConnectServer</N>2</N>33"

tNpcGossip[15702]["Text1114-1"] = {111411}
tNpcGossip[15702]["Text111411"] = tServerTransferOfficer_Text[15702]["Text11511"]
tNpcGossip[15702]["tOption1114-1"] = {111411,111412,3}
tNpcGossip[15702]["Option111411"] = tServerTransferOfficer_Text[15702]["Option111411"]
tNpcGossip[15702]["OptionFunc111411"]="ServerTransferOfficer_IsConnectServer</N>2</N>34"
tNpcGossip[15702]["Option111412"] = tServerTransferOfficer_Text[15702]["Option111412"]
tNpcGossip[15702]["OptionFunc111412"]="ServerTransferOfficer_IsConnectServer</N>2</N>35"

tNpcGossip[15702]["Text1115-1"] = {111511}
tNpcGossip[15702]["Text111511"] = tServerTransferOfficer_Text[15702]["Text11511"]
tNpcGossip[15702]["tOption1115-1"] = {111511,111512,111513,3}
tNpcGossip[15702]["Option111511"] = tServerTransferOfficer_Text[15702]["Option111511"]
tNpcGossip[15702]["OptionFunc111511"]="ServerTransferOfficer_IsConnectServer</N>2</N>36"
tNpcGossip[15702]["Option111512"] = tServerTransferOfficer_Text[15702]["Option111512"]
tNpcGossip[15702]["OptionFunc111512"]="ServerTransferOfficer_IsConnectServer</N>2</N>37"
tNpcGossip[15702]["Option111513"] = tServerTransferOfficer_Text[15702]["Option111513"]
tNpcGossip[15702]["OptionFunc111513"]="ServerTransferOfficer_IsConnectServer</N>2</N>38"

tNpcGossip[15702]["Text1116-1"] = {111611}
tNpcGossip[15702]["Text111611"] = tServerTransferOfficer_Text[15702]["Text11511"]
tNpcGossip[15702]["tOption1116-1"] = {111611,111612,111613,111614,3}
tNpcGossip[15702]["Option111611"] = tServerTransferOfficer_Text[15702]["Option111611"]
tNpcGossip[15702]["OptionFunc111611"]="ServerTransferOfficer_IsConnectServer</N>2</N>39"
tNpcGossip[15702]["Option111612"] = tServerTransferOfficer_Text[15702]["Option111612"]
tNpcGossip[15702]["OptionFunc111612"]="ServerTransferOfficer_IsConnectServer</N>2</N>40"
tNpcGossip[15702]["Option111613"] = tServerTransferOfficer_Text[15702]["Option111613"]
tNpcGossip[15702]["OptionFunc111613"]="ServerTransferOfficer_IsConnectServer</N>2</N>41"
tNpcGossip[15702]["Option111614"] = tServerTransferOfficer_Text[15702]["Option111614"]
tNpcGossip[15702]["OptionFunc111614"]="ServerTransferOfficer_IsConnectServer</N>2</N>42"

tNpcGossip[15702]["Text1117-1"] = {111711}
tNpcGossip[15702]["Text111711"] = tServerTransferOfficer_Text[15702]["Text11511"]
tNpcGossip[15702]["tOption1117-1"] = {111711,111712,3}
tNpcGossip[15702]["Option111711"] = tServerTransferOfficer_Text[15702]["Option111711"]
tNpcGossip[15702]["OptionFunc111711"]="ServerTransferOfficer_IsConnectServer</N>2</N>43"
tNpcGossip[15702]["Option111712"] = tServerTransferOfficer_Text[15702]["Option111712"]
tNpcGossip[15702]["OptionFunc111712"]="ServerTransferOfficer_IsConnectServer</N>2</N>44"

tNpcGossip[15702]["Text1118-1"] = {111811}
tNpcGossip[15702]["Text111811"] = tServerTransferOfficer_Text[15702]["Text11511"]
tNpcGossip[15702]["tOption1118-1"] = {111811,111812,111813,3}
tNpcGossip[15702]["Option111811"] = tServerTransferOfficer_Text[15702]["Option111811"]
tNpcGossip[15702]["OptionFunc111811"]="ServerTransferOfficer_IsConnectServer</N>2</N>45"
tNpcGossip[15702]["Option111812"] = tServerTransferOfficer_Text[15702]["Option111812"]
tNpcGossip[15702]["OptionFunc111812"]="ServerTransferOfficer_IsConnectServer</N>2</N>46"
tNpcGossip[15702]["Option111813"] = tServerTransferOfficer_Text[15702]["Option111813"]
tNpcGossip[15702]["OptionFunc111813"]="ServerTransferOfficer_IsConnectServer</N>2</N>47"
-- tNpcGossip[15702]["Option111814"] = tServerTransferOfficer_Text[15702]["Option111814"]
-- tNpcGossip[15702]["OptionFunc111814"]="ServerTransferOfficer_IsConnectServer</N>2</N>48"
tNpcGossip[15702]["Option111815"] = tServerTransferOfficer_Text[15702]["Option111815"]
tNpcGossip[15702]["OptionFunc111815"]="ServerTransferOfficer_IsConnectServer</N>2</N>49"

tNpcGossip[15702]["Text1119-1"] = {111911}
tNpcGossip[15702]["Text111911"] = tServerTransferOfficer_Text[15702]["Text11511"]
tNpcGossip[15702]["tOption1119-1"] = {111912,111913,3}
-- tNpcGossip[15702]["Option111911"] = tServerTransferOfficer_Text[15702]["Option111911"]
-- tNpcGossip[15702]["OptionFunc111911"]="ServerTransferOfficer_IsConnectServer</N>2</N>50"
tNpcGossip[15702]["Option111912"] = tServerTransferOfficer_Text[15702]["Option111912"]
tNpcGossip[15702]["OptionFunc111912"]="ServerTransferOfficer_IsConnectServer</N>2</N>54"
tNpcGossip[15702]["Option111913"] = tServerTransferOfficer_Text[15702]["Option111913"]
tNpcGossip[15702]["OptionFunc111913"]="ServerTransferOfficer_IsConnectServer</N>2</N>55"

tNpcGossip[15702]["Text1120-1"] = {112011}
tNpcGossip[15702]["Text112011"] = tServerTransferOfficer_Text[15702]["Text11511"]
tNpcGossip[15702]["tOption1120-1"] = {112011,112012,3}
tNpcGossip[15702]["Option112011"] = tServerTransferOfficer_Text[15702]["Option112011"]
tNpcGossip[15702]["OptionFunc112011"]="ServerTransferOfficer_IsConnectServer</N>2</N>51"
tNpcGossip[15702]["OptionChkFunc112011"] = function ()
	return ServerTransferOfficer_ChkServerName()
end
tNpcGossip[15702]["Option112012"] = tServerTransferOfficer_Text[15702]["Option112012"]
tNpcGossip[15702]["OptionFunc112012"]="ServerTransferOfficer_IsConnectServer</N>2</N>52"
tNpcGossip[15702]["OptionChkFunc112012"] = function ()
	return ServerTransferOfficer_ChkServerName()
end

tNpcGossip[15702]["Text1122-1"] = {112211,112212}
tNpcGossip[15702]["Text112211"] = tServerTransferOfficer_Text[15702]["Text112211"]
tNpcGossip[15702]["Text112212"] = tServerTransferOfficer_Text[15702]["Text112212"]
tNpcGossip[15702]["tOption1122-1"] = {1123,1124}
tNpcGossip[15702]["Option1123"] = tServerTransferOfficer_Text[15702]["Option1123"]
tNpcGossip[15702]["OptionFunc1123"]="ServerTransferOfficer_IsConnectServer</N>2</N>53"
tNpcGossip[15702]["Option1124"] = tServerTransferOfficer_Text[15702]["Option1124"]


tNpcGossip[15702]["Text1122-2"] = {112221}
tNpcGossip[15702]["Text112221"] = tServerTransferOfficer_Text[15702]["Text112221"]
tNpcGossip[15702]["tOption1122-2"] = {112221}
tNpcGossip[15702]["Option112221"] = tServerTransferOfficer_Text[15702]["Option112221"]
tNpcGossip[15702]["OptionFunc112221"]="ServerTransferOfficer_IsConnectServer</N>2</N>71"

tNpcGossip[15702]["Text1122-3"] = {112231}
tNpcGossip[15702]["Text112231"] = tServerTransferOfficer_Text[15702]["Text112231"]
tNpcGossip[15702]["tOption1122-3"] = {112231}
tNpcGossip[15702]["Option112231"] = tServerTransferOfficer_Text[15702]["Option112231"]
tNpcGossip[15702]["OptionFunc112231"]="ServerTransferOfficer_IsConnectServer</N>2</N>72"





--18873 ServerTransferOfficer  1002,284,289
tNpcGossip[18873] = tNpcGossip[18873] or DefaultNpc:new{}
tNpcGossip[18873]["OptionHidden"] = 1

tNpcGossip[18873]["Text1-1"] = {111}
tNpcGossip[18873]["Text111"] = tServerTransferOfficer_Text[18873]["Text111"]
tNpcGossip[18873]["tOption1-1"] = {1}
tNpcGossip[18873]["Option1"] = tServerTransferOfficer_Text[18873]["Option1"]



-- PC转入赌城服测试npc
tNpcFace[3525] = 186
tNpcGossip[23076] = tNpcGossip[23076] or DefaultNpc:new{}
tNpcGossip[23076]["OptionHidden"] = 1
tNpcGossip[23076]["DialogueText"] = tServerTransferOfficer_Text[23076]
tNpcGossip[23076]["Text1-1"] = {111}
tNpcGossip[23076]["tOption1-1"] = {1,2}
tNpcGossip[23076]["OptionFunc1"] = "ServerTransferOfficer_TransServer</N>23076"

tNpcGossip[23134] = tNpcGossip[23134] or DefaultNpc:new{}
tNpcGossip[23134]["OptionHidden"] = 1
tNpcGossip[23134]["DialogueText"] = tServerTransferOfficer_Text[23134]
tNpcGossip[23134]["Text1-1"] = {111}
tNpcGossip[23134]["tOption1-1"] = {1,2}
tNpcGossip[23134]["OptionFunc1"] = "ServerTransferOfficer_TransServer</N>23134"

tNpcGossip[23135] = tNpcGossip[23135] or DefaultNpc:new{}
tNpcGossip[23135]["OptionHidden"] = 1
tNpcGossip[23135]["DialogueText"] = tServerTransferOfficer_Text[23135]
tNpcGossip[23135]["Text1-1"] = {111}
tNpcGossip[23135]["tOption1-1"] = {1,2}
tNpcGossip[23135]["OptionFunc1"] = "ServerTransferOfficer_TransServer</N>23135"
