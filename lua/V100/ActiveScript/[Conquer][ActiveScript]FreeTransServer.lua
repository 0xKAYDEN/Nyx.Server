------------------------------------------------------------------------------------
--Name:		190926[简体征服][活动脚本]老服自由转服NPC制作
--Creator:		吴燕柚
--Created:		2019/10/16
------------------------------------------------------------------------------------

-- 前缀
-- FreeTransServer_
-----------------------------------------常量表配置-----------------------------------------------
local tFreeTransServer_Cont = {}
	--时间限制
	tFreeTransServer_Cont["Time1"] = "07:00 09:30"
	tFreeTransServer_Cont["Time2"] = "15:00 17:30"
	
	tFreeTransServer_Cont["Emoney1"] = 0
	tFreeTransServer_Cont["Emoney2"] = 0
	
	-- 欧服转欧服时间限制为:15:55 -17:10,7:55-9:10
	tFreeTransServer_Cont["EU"] = {}
	tFreeTransServer_Cont["EU"][1] = "07:55 09:10"
	tFreeTransServer_Cont["EU"][2] = "15:55 17:10"

	-- 美服转美服时间限制为:7:55-9:10, 23:55-01:10
	tFreeTransServer_Cont["USA"] = {}
	tFreeTransServer_Cont["USA"][1] = "07:55 09:10"
	tFreeTransServer_Cont["USA"][2] = "23:55 23:59"
	tFreeTransServer_Cont["USA"][3] = "00:00 01:10"

	-- 美服转欧服 欧服转美服 时间限制为:7:55-9:10, 23:55-01:10,15:55 -17:10
	tFreeTransServer_Cont["Other"] = {}
	tFreeTransServer_Cont["Other"][1] = "07:55 09:10"
	tFreeTransServer_Cont["Other"][2] = "15:55 17:10"
	tFreeTransServer_Cont["Other"][3] = "23:55 23:59"
	tFreeTransServer_Cont["Other"][4] = "00:00 01:10"
	
--掩码
local tFreeTransServer_Stc = {}
	--30天转服1次
	tFreeTransServer_Stc[1]={}
	tFreeTransServer_Stc[1]["EventType"] = 114
	tFreeTransServer_Stc[1]["DataType"] = 53
	tFreeTransServer_Stc[1]["Complete"] = 30

local tFreeTransServer_UserAccount = {46850606, 46850660, 46850696}--可以转服的玩家账号列表

--服务器名单
local tFreeTransServer_ServerName = {}
	tFreeTransServer_ServerName[1] = "Dragon"
	tFreeTransServer_ServerName[2] = "Phoenix"
	tFreeTransServer_ServerName[3] = "Lion"
	tFreeTransServer_ServerName[4] = "Kylin"
	tFreeTransServer_ServerName[5] = "Eagle"
	tFreeTransServer_ServerName[6] = "Crystal"
	tFreeTransServer_ServerName[7] = "Emerald"
	tFreeTransServer_ServerName[8] = "Turquoise"
	tFreeTransServer_ServerName[9] = "Triumph"
	tFreeTransServer_ServerName[10] = "Honor"
	tFreeTransServer_ServerName[11] = "Freedom"
	tFreeTransServer_ServerName[12] = "Faith"
	tFreeTransServer_ServerName[13] = "Eternity"
	tFreeTransServer_ServerName[14] = "Volcano"
	tFreeTransServer_ServerName[15] = "Thunder"
	tFreeTransServer_ServerName[16] = "Lightning"
	tFreeTransServer_ServerName[17] = "Sunshine"
	tFreeTransServer_ServerName[18] = "Snowfall"
	tFreeTransServer_ServerName[19] = "Venus"
	tFreeTransServer_ServerName[20] = "Mercury"
	tFreeTransServer_ServerName[21] = "Uranus"
	tFreeTransServer_ServerName[22] = "Neptune"
	tFreeTransServer_ServerName[23] = "HangingGardens"
	tFreeTransServer_ServerName[24] = "Mausoleum"
	tFreeTransServer_ServerName[25] = "Pyramid"
	tFreeTransServer_ServerName[27] = "Hebby"
	tFreeTransServer_ServerName[28] = "BabyIcey"
	tFreeTransServer_ServerName[29] = "Aquarius"
	tFreeTransServer_ServerName[30] = "Cancer"
	tFreeTransServer_ServerName[31] = "Virgo"
	tFreeTransServer_ServerName[32] = "Libra"
	tFreeTransServer_ServerName[33] = "Scorpio"
	tFreeTransServer_ServerName[34] = "SnowWhite"
	tFreeTransServer_ServerName[35] = "WildSwan"
	tFreeTransServer_ServerName[36] = "Gryphon"
	tFreeTransServer_ServerName[37] = "Titan"
	tFreeTransServer_ServerName[38] = "Basilisk"
	tFreeTransServer_ServerName[39] = "Dark"
	tFreeTransServer_ServerName[40] = "Light"
	tFreeTransServer_ServerName[41] = "Storm"
	tFreeTransServer_ServerName[42] = "Fire"
	tFreeTransServer_ServerName[43] = "Lucky7"
	tFreeTransServer_ServerName[44] = "Legends"
	tFreeTransServer_ServerName[45] = "Champions_EU"
	tFreeTransServer_ServerName[46] = "SummerWind"
	tFreeTransServer_ServerName[47] = "JiangHu_EU"
	tFreeTransServer_ServerName[48] = "DragonPunch"
	tFreeTransServer_ServerName[49] = "DragonRoar"
	tFreeTransServer_ServerName[50] = "BreathFocus"
	tFreeTransServer_ServerName[51] = "Royalty_EU_O"
	tFreeTransServer_ServerName[52] = "Liberty_O"
	tFreeTransServer_ServerName[53] = "Columbus"
	tFreeTransServer_ServerName[54] = "FastBlade"
	tFreeTransServer_ServerName[55] = "ScentSword"
	tFreeTransServer_ServerName[56] = "Sirius_EU"
	tFreeTransServer_ServerName[57] = "TwilightDance"
	tFreeTransServer_ServerName[58] = "StarArrow"
	tFreeTransServer_ServerName[59] = "DragonWar_EU"
	tFreeTransServer_ServerName[60] = "DragonRoar"
	tFreeTransServer_ServerName[61] = "KingdomWar"
	tFreeTransServer_ServerName[62] = "Emperor_EU"
	tFreeTransServer_ServerName[63] = "WarLord"
	tFreeTransServer_ServerName[64] = "FlameLotus_EU"
	tFreeTransServer_ServerName[65] = "NatureMystery"
	tFreeTransServer_ServerName[66] = "KingOfKings"
	tFreeTransServer_ServerName[67] = "Conquer13_EU"
	tFreeTransServer_ServerName[68] = "Perfection"
	tFreeTransServer_ServerName[69] = "SkyFlame"
	tFreeTransServer_ServerName[70] = "Backfire_EU"


------------------------------------------逻辑部分-------------------------------------------------
function FreeTransServer_JudgeStc(nNpcId)
	local nEvent = tFreeTransServer_Stc[1]["EventType"]
	local nType =  tFreeTransServer_Stc[1]["DataType"]
	local nComplete = tFreeTransServer_Stc[1]["Complete"]
	local nUserId = Get_UserId()
	local nUserAccountId = Get_UserAccountId(nUserId)
	for i, v in pairs(tFreeTransServer_UserAccount) do
		if nUserAccountId == v then
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
			break
		end
	end
	
end

-- 转服提示
function FreeTransServer_IsConnectServer(nChoose)
	local str = tServerTransferOfficer_Text[105]["PointOut"]
	Sys_MsgBox(str,"FreeTransServer_ConnectServerPointOut</N>"..nChoose)
end

-- 服务器名称
function FreeTransServer_ConnectServerPointOut(nChoose)
	local sServerName = tFreeTransServer_Text["ServerName"][nChoose]
	local str = string.format(tServerTransferOfficer_Text[105]["SureToTrans"],sServerName)
	Sys_MsgBox(str,"FreeTransServer_ConnectJudgement</N>"..nChoose)
end

--转服判断
function FreeTransServer_ConnectJudgement(nChoose)
	-- 检查玩家当前所在服务器
	local bFlag = false		-- 表示玩家当前在美服
	for i,v in pairs(tServerTransferOfficer_Text["EU"]) do
		if Sys_CheckServerName(v) then
			bFlag = true		-- 表示玩家当前在欧服
		end
	end
	
	local nTag = 1		-- 表示玩家要转到美服
	local sName = tFreeTransServer_Text["ServerName"][nChoose]
	for i,v in pairs(tServerTransferOfficer_Text["EU"]) do
		if tostring(sName) == tostring(v) then
			nTag = 2		-- 表示玩家要转到欧服
		end
	end

	if bFlag and nTag == 2 then		-- 欧服转欧服
		if Sys_ChkDayTime(tFreeTransServer_Cont["EU"][1]) or Sys_ChkDayTime(tFreeTransServer_Cont["EU"][2]) then
			Sys_MsgBox(tServerTransferOfficer_Text[105]["NotRightTimeEU"])
			return
		end
	elseif bFlag == false and nTag == 1 then	-- 美服转美服
		if Sys_ChkDayTime(tFreeTransServer_Cont["USA"][1]) or Sys_ChkDayTime(tFreeTransServer_Cont["USA"][2]) or Sys_ChkDayTime(tFreeTransServer_Cont["USA"][3]) then
			Sys_MsgBox(tServerTransferOfficer_Text[105]["NotRightTimeUSA"])
			return
		end
	-- elseif bFlag == false and nTag == 2 then		-- 美服转欧服
		-- if Sys_ChkDayTime(tFreeTransServer_Cont["Other"][1]) or Sys_ChkDayTime(tFreeTransServer_Cont["Other"][2]) or Sys_ChkDayTime(tFreeTransServer_Cont["Other"][3]) or Sys_ChkDayTime(tFreeTransServer_Cont["Other"][4]) then
			-- Sys_MsgBox(tFreeTransServer_Text[105]["NotRightTime"])
			-- return
		-- end
	-- elseif bFlag and nTag == 1 then		-- 欧服转美服
		-- if Sys_ChkDayTime(tFreeTransServer_Cont["Other"][1]) or Sys_ChkDayTime(tFreeTransServer_Cont["Other"][2]) or Sys_ChkDayTime(tFreeTransServer_Cont["Other"][3]) or Sys_ChkDayTime(tFreeTransServer_Cont["Other"][4]) then
			-- Sys_MsgBox(tFreeTransServer_Text[105]["NotRightTime"])
			-- return
		-- end
	else		--  其他情况，所有时间都限制
		if Sys_ChkDayTime(tFreeTransServer_Cont["Other"][1]) or Sys_ChkDayTime(tFreeTransServer_Cont["Other"][2]) or Sys_ChkDayTime(tFreeTransServer_Cont["Other"][3]) or Sys_ChkDayTime(tFreeTransServer_Cont["Other"][4]) then
			Sys_MsgBox(tServerTransferOfficer_Text[105]["NotRightTime"])
			return
		end
	end
	
	-- if Sys_ChkDayTime(tFreeTransServer_Cont["Time1"]) or Sys_ChkDayTime(tFreeTransServer_Cont["Time2"]) then
		-- Sys_MsgBox(tFreeTransServer_Text[105]["NotRightTime"])
		-- return
	-- end
	
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
	
	local sServerName = tostring(tFreeTransServer_ServerName[nChoose])
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
	local nNeedEM = tFreeTransServer_Cont["Emoney1"]
	-- for _,v in pairs(tFreeTransServer_Text["EMoney"]) do	
		-- if Sys_CheckServerName(v) then
			-- nNeedEM = tFreeTransServer_Cont["Emoney2"]
		-- end
	-- end
	if nEmoney < nNeedEM then
		Sys_MsgBox(string.format(tServerTransferOfficer_Text[105]["NoEnoughEmoney"],nNeedEM))
		return
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
		-- Sys_MsgBox(tFreeTransServer_Text[105]["Auction"])
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
		-- Sys_MsgBox(tFreeTransServer_Text[105]["ClaimEmoney"])
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
	-- 游服发起转服要求 1212
	User_ChangeServer(sServerName,1)
end

function FreeTransServer_ChkServerName()
	if (not Sys_CheckServerName(tServerTransferOfficer_Text["ServerName"][51])) or (not Sys_CheckServerName(tServerTransferOfficer_Text["ServerName"][52])) then
		return false
	else
		return true
	end
end

-------------------------------------------NPC模块--------------------------------------------------
--25175 ServerTransferOfficer
tNpcFace[2117] = 186 
tNpcGossip[25175] = tNpcGossip[25175] or DefaultNpc:new{}
tNpcGossip[25175]["OptionHidden"] = 1
tNpcGossip[25175]["DialogueText"] = tFreeTransServer_Text[25175]
--主对白 1-1
tNpcGossip[25175]["Text1-1"] = {111,112,113,114}
tNpcGossip[25175]["tOption1-1"] = {1,2,3}
tNpcGossip[25175]["OptionPoint1"]="2-1"
tNpcGossip[25175]["OptionFunc2"]="FreeTransServer_JudgeStc</N>25175"
--查看规则 2-1
tNpcGossip[25175]["Text2-1"] = {211,212,213,214,215,216}
tNpcGossip[25175]["tOption2-1"] = {4}
--查看服务器列表 3-1
tNpcGossip[25175]["Text3-1"] = {311}
tNpcGossip[25175]["Text311"] = tFreeTransServer_Text[25175]["Text311"]
tNpcGossip[25175]["tOption3-1"] = {5,6,7,8,9,10,11,3}
tNpcGossip[25175]["Option5"] = tFreeTransServer_Text[25175]["Option5"]
tNpcGossip[25175]["OptionPoint5"]="5-1"
tNpcGossip[25175]["Option6"] = tFreeTransServer_Text[25175]["Option6"]
tNpcGossip[25175]["OptionPoint6"]="6-1"
tNpcGossip[25175]["Option7"] = tFreeTransServer_Text[25175]["Option7"]
tNpcGossip[25175]["OptionPoint7"]="7-1"
tNpcGossip[25175]["Option8"] = tFreeTransServer_Text[25175]["Option8"]
tNpcGossip[25175]["OptionPoint8"]="8-1"
tNpcGossip[25175]["Option9"] = tFreeTransServer_Text[25175]["Option9"]
tNpcGossip[25175]["OptionPoint9"]="9-1"
tNpcGossip[25175]["Option10"] = tFreeTransServer_Text[25175]["Option10"]
tNpcGossip[25175]["OptionPoint10"]="10-1"
tNpcGossip[25175]["Option11"] = tFreeTransServer_Text[25175]["Option11"]
tNpcGossip[25175]["OptionPoint11"]="3-2"

tNpcGossip[25175]["Text3-2"] = {321}
tNpcGossip[25175]["Text321"] = tFreeTransServer_Text[25175]["Text321"]
tNpcGossip[25175]["tOption3-2"] = {12,13,14,15,16,17,21,3}
tNpcGossip[25175]["Option12"] = tFreeTransServer_Text[25175]["Option12"]
tNpcGossip[25175]["OptionPoint12"]="12-1"
tNpcGossip[25175]["Option13"] = tFreeTransServer_Text[25175]["Option13"]
tNpcGossip[25175]["OptionPoint13"]="13-1"
tNpcGossip[25175]["Option14"] = tFreeTransServer_Text[25175]["Option14"]
tNpcGossip[25175]["OptionPoint14"]="14-1"
tNpcGossip[25175]["Option15"] = tFreeTransServer_Text[25175]["Option15"]
tNpcGossip[25175]["OptionPoint15"]="15-1"
tNpcGossip[25175]["Option16"] = tFreeTransServer_Text[25175]["Option16"]
tNpcGossip[25175]["OptionPoint16"]="16-1"
tNpcGossip[25175]["Option17"] = tFreeTransServer_Text[25175]["Option17"]
tNpcGossip[25175]["OptionPoint17"]="17-1"
tNpcGossip[25175]["Option21"] = tFreeTransServer_Text[25175]["Option21"]
tNpcGossip[25175]["OptionPoint21"]="3-3"

tNpcGossip[25175]["Text3-3"] = {331}
tNpcGossip[25175]["Text331"] = tFreeTransServer_Text[25175]["Text331"]
tNpcGossip[25175]["tOption3-3"] = {18,19,20,22,35,26,27,3}
tNpcGossip[25175]["Option18"] = tFreeTransServer_Text[25175]["Option18"]
tNpcGossip[25175]["OptionPoint18"]="18-1"
tNpcGossip[25175]["Option19"] = tFreeTransServer_Text[25175]["Option19"]
tNpcGossip[25175]["OptionPoint19"]="19-1"
tNpcGossip[25175]["Option20"] = tFreeTransServer_Text[25175]["Option20"]
tNpcGossip[25175]["OptionPoint20"]="20-1"
tNpcGossip[25175]["Option22"] = tFreeTransServer_Text[25175]["Option22"]
tNpcGossip[25175]["OptionPoint22"]="22-1"
-- 法语并入英文服务器
tNpcGossip[25175]["Option25"] = tFreeTransServer_Text[25175]["Option25"]
tNpcGossip[25175]["OptionFunc25"]="FreeTransServer_IsConnectServer</N>56"
tNpcGossip[25175]["Option35"] = tFreeTransServer_Text[25175]["Option35"]
tNpcGossip[25175]["OptionFunc35"]="FreeTransServer_IsConnectServer</N>65"
tNpcGossip[25175]["Option26"] = tFreeTransServer_Text[25175]["Option26"]
tNpcGossip[25175]["OptionFunc26"]="FreeTransServer_IsConnectServer</N>57"
tNpcGossip[25175]["Option27"] = tFreeTransServer_Text[25175]["Option27"]
tNpcGossip[25175]["OptionPoint27"]="3-4"

tNpcGossip[25175]["Text3-4"] = {341}
tNpcGossip[25175]["Text341"] = tFreeTransServer_Text[25175]["Text341"]
tNpcGossip[25175]["tOption3-4"] = {28,29,30,31,32,33,36,3}
tNpcGossip[25175]["Option28"] = tFreeTransServer_Text[25175]["Option28"]
tNpcGossip[25175]["OptionFunc28"]="FreeTransServer_IsConnectServer</N>58"
tNpcGossip[25175]["Option29"] = tFreeTransServer_Text[25175]["Option29"]
tNpcGossip[25175]["OptionFunc29"]="FreeTransServer_IsConnectServer</N>59"
tNpcGossip[25175]["Option30"] = tFreeTransServer_Text[25175]["Option30"]
tNpcGossip[25175]["OptionFunc30"]="FreeTransServer_IsConnectServer</N>60"
tNpcGossip[25175]["Option31"] = tFreeTransServer_Text[25175]["Option31"]
tNpcGossip[25175]["OptionFunc31"]="FreeTransServer_IsConnectServer</N>61"
tNpcGossip[25175]["Option32"] = tFreeTransServer_Text[25175]["Option32"]
tNpcGossip[25175]["OptionFunc32"]="FreeTransServer_IsConnectServer</N>62"
tNpcGossip[25175]["Option33"] = tFreeTransServer_Text[25175]["Option33"]
tNpcGossip[25175]["OptionFunc33"]="FreeTransServer_IsConnectServer</N>63"
tNpcGossip[25175]["Option36"] = tFreeTransServer_Text[25175]["Option36"]
tNpcGossip[25175]["OptionPoint36"]="3-5"

tNpcGossip[25175]["Text3-5"] = {351}
tNpcGossip[25175]["Text351"] = tFreeTransServer_Text[25175]["Text351"]
tNpcGossip[25175]["tOption3-5"] = {34,25,37,38,39,40,41,3}
tNpcGossip[25175]["Option34"] = tFreeTransServer_Text[25175]["Option34"]
tNpcGossip[25175]["OptionFunc34"]="FreeTransServer_IsConnectServer</N>64"
tNpcGossip[25175]["Option37"] = tFreeTransServer_Text[25175]["Option37"]
tNpcGossip[25175]["OptionFunc37"]="FreeTransServer_IsConnectServer</N>66"
tNpcGossip[25175]["Option38"] = tFreeTransServer_Text[25175]["Option38"]
tNpcGossip[25175]["OptionFunc38"]="FreeTransServer_IsConnectServer</N>67"
tNpcGossip[25175]["Option39"] = tFreeTransServer_Text[25175]["Option39"]
tNpcGossip[25175]["OptionFunc39"]="FreeTransServer_IsConnectServer</N>68"
tNpcGossip[25175]["Option40"] = tFreeTransServer_Text[25175]["Option40"]
tNpcGossip[25175]["OptionFunc40"]="FreeTransServer_IsConnectServer</N>69"
tNpcGossip[25175]["Option41"] = tFreeTransServer_Text[25175]["Option41"]
tNpcGossip[25175]["OptionFunc41"]="FreeTransServer_IsConnectServer</N>70"
-- tNpcGossip[25175]["Option35"] = tFreeTransServer_Text[25175]["Option35"]
-- tNpcGossip[25175]["OptionFunc35"]="FreeTransServer_IsConnectServer</N>65"




tNpcGossip[25175]["Text5-1"] = {511}
tNpcGossip[25175]["Text511"] = tFreeTransServer_Text[25175]["Text511"]
tNpcGossip[25175]["tOption5-1"] = {511,512,513,514,515,3}
tNpcGossip[25175]["Option511"] = tFreeTransServer_Text[25175]["Option511"]
tNpcGossip[25175]["OptionFunc511"]="FreeTransServer_IsConnectServer</N>1"
tNpcGossip[25175]["Option512"] = tFreeTransServer_Text[25175]["Option512"]
tNpcGossip[25175]["OptionFunc512"]="FreeTransServer_IsConnectServer</N>2"
tNpcGossip[25175]["Option513"] = tFreeTransServer_Text[25175]["Option513"]
tNpcGossip[25175]["OptionFunc513"]="FreeTransServer_IsConnectServer</N>3"
tNpcGossip[25175]["Option514"] = tFreeTransServer_Text[25175]["Option514"]
tNpcGossip[25175]["OptionFunc514"]="FreeTransServer_IsConnectServer</N>4"
tNpcGossip[25175]["Option515"] = tFreeTransServer_Text[25175]["Option515"]
tNpcGossip[25175]["OptionFunc515"]="FreeTransServer_IsConnectServer</N>5"

tNpcGossip[25175]["Text6-1"] = {611}
tNpcGossip[25175]["Text611"] = tFreeTransServer_Text[25175]["Text511"]
tNpcGossip[25175]["tOption6-1"] = {611,612,613,3}
tNpcGossip[25175]["Option611"] = tFreeTransServer_Text[25175]["Option611"]
tNpcGossip[25175]["OptionFunc611"]="FreeTransServer_IsConnectServer</N>6"
tNpcGossip[25175]["Option612"] = tFreeTransServer_Text[25175]["Option612"]
tNpcGossip[25175]["OptionFunc612"]="FreeTransServer_IsConnectServer</N>7"
tNpcGossip[25175]["Option613"] = tFreeTransServer_Text[25175]["Option613"]
tNpcGossip[25175]["OptionFunc613"]="FreeTransServer_IsConnectServer</N>8"

tNpcGossip[25175]["Text7-1"] = {711}
tNpcGossip[25175]["Text711"] = tFreeTransServer_Text[25175]["Text511"]
tNpcGossip[25175]["tOption7-1"] = {711,712,713,714,715,3}
tNpcGossip[25175]["Option711"] = tFreeTransServer_Text[25175]["Option711"]
tNpcGossip[25175]["OptionFunc711"]="FreeTransServer_IsConnectServer</N>9"
tNpcGossip[25175]["Option712"] = tFreeTransServer_Text[25175]["Option712"]
tNpcGossip[25175]["OptionFunc712"]="FreeTransServer_IsConnectServer</N>10"
tNpcGossip[25175]["Option713"] = tFreeTransServer_Text[25175]["Option713"]
tNpcGossip[25175]["OptionFunc713"]="FreeTransServer_IsConnectServer</N>11"
tNpcGossip[25175]["Option714"] = tFreeTransServer_Text[25175]["Option714"]
tNpcGossip[25175]["OptionFunc714"]="FreeTransServer_IsConnectServer</N>12"
tNpcGossip[25175]["Option715"] = tFreeTransServer_Text[25175]["Option715"]
tNpcGossip[25175]["OptionFunc715"]="FreeTransServer_IsConnectServer</N>13"

tNpcGossip[25175]["Text8-1"] = {811}
tNpcGossip[25175]["Text811"] = tFreeTransServer_Text[25175]["Text511"]
tNpcGossip[25175]["tOption8-1"] = {811,812,813,814,815,3}
tNpcGossip[25175]["Option811"] = tFreeTransServer_Text[25175]["Option811"]
tNpcGossip[25175]["OptionFunc811"]="FreeTransServer_IsConnectServer</N>14"
tNpcGossip[25175]["Option812"] = tFreeTransServer_Text[25175]["Option812"]
tNpcGossip[25175]["OptionFunc812"]="FreeTransServer_IsConnectServer</N>15"
tNpcGossip[25175]["Option813"] = tFreeTransServer_Text[25175]["Option813"]
tNpcGossip[25175]["OptionFunc813"]="FreeTransServer_IsConnectServer</N>16"
tNpcGossip[25175]["Option814"] = tFreeTransServer_Text[25175]["Option814"]
tNpcGossip[25175]["OptionFunc814"]="FreeTransServer_IsConnectServer</N>17"
tNpcGossip[25175]["Option815"] = tFreeTransServer_Text[25175]["Option815"]
tNpcGossip[25175]["OptionFunc815"]="FreeTransServer_IsConnectServer</N>18"

tNpcGossip[25175]["Text9-1"] = {611}
tNpcGossip[25175]["Text911"] = tFreeTransServer_Text[25175]["Text511"]
tNpcGossip[25175]["tOption9-1"] = {911,912,913,914,3}
tNpcGossip[25175]["Option911"] = tFreeTransServer_Text[25175]["Option911"]
tNpcGossip[25175]["OptionFunc911"]="FreeTransServer_IsConnectServer</N>19"
tNpcGossip[25175]["Option912"] = tFreeTransServer_Text[25175]["Option912"]
tNpcGossip[25175]["OptionFunc912"]="FreeTransServer_IsConnectServer</N>20"
tNpcGossip[25175]["Option913"] = tFreeTransServer_Text[25175]["Option913"]
tNpcGossip[25175]["OptionFunc913"]="FreeTransServer_IsConnectServer</N>21"
tNpcGossip[25175]["Option914"] = tFreeTransServer_Text[25175]["Option914"]
tNpcGossip[25175]["OptionFunc914"]="FreeTransServer_IsConnectServer</N>22"

tNpcGossip[25175]["Text10-1"] = {1011}
tNpcGossip[25175]["Text1011"] = tFreeTransServer_Text[25175]["Text511"]
tNpcGossip[25175]["tOption10-1"] = {1011,1012,1013,3}
tNpcGossip[25175]["Option1011"] = tFreeTransServer_Text[25175]["Option1011"]
tNpcGossip[25175]["OptionFunc1011"]="FreeTransServer_IsConnectServer</N>23"
tNpcGossip[25175]["Option1012"] = tFreeTransServer_Text[25175]["Option1012"]
tNpcGossip[25175]["OptionFunc1012"]="FreeTransServer_IsConnectServer</N>24"
tNpcGossip[25175]["Option1013"] = tFreeTransServer_Text[25175]["Option1013"]
tNpcGossip[25175]["OptionFunc1013"]="FreeTransServer_IsConnectServer</N>25"
-- tNpcGossip[25175]["Option1014"] = tFreeTransServer_Text[25175]["Option1014"]
-- tNpcGossip[25175]["OptionFunc1014"]="FreeTransServer_IsConnectServer</N>26"

tNpcGossip[25175]["Text12-1"] = {1211}
tNpcGossip[25175]["Text1211"] = tFreeTransServer_Text[25175]["Text511"]
tNpcGossip[25175]["tOption12-1"] = {1211,1212,3}
tNpcGossip[25175]["Option1211"] = tFreeTransServer_Text[25175]["Option1211"]
tNpcGossip[25175]["OptionFunc1211"]="FreeTransServer_IsConnectServer</N>27"
tNpcGossip[25175]["Option1212"] = tFreeTransServer_Text[25175]["Option1212"]
tNpcGossip[25175]["OptionFunc1212"]="FreeTransServer_IsConnectServer</N>28"

tNpcGossip[25175]["Text13-1"] = {1311}
tNpcGossip[25175]["Text1311"] = tFreeTransServer_Text[25175]["Text511"]
tNpcGossip[25175]["tOption13-1"] = {1311,1312,1313,1314,1315,3}
tNpcGossip[25175]["Option1311"] = tFreeTransServer_Text[25175]["Option1311"]
tNpcGossip[25175]["OptionFunc1311"]="FreeTransServer_IsConnectServer</N>29"
tNpcGossip[25175]["Option1312"] = tFreeTransServer_Text[25175]["Option1312"]
tNpcGossip[25175]["OptionFunc1312"]="FreeTransServer_IsConnectServer</N>30"
tNpcGossip[25175]["Option1313"] = tFreeTransServer_Text[25175]["Option1313"]
tNpcGossip[25175]["OptionFunc1313"]="FreeTransServer_IsConnectServer</N>31"
tNpcGossip[25175]["Option1314"] = tFreeTransServer_Text[25175]["Option1314"]
tNpcGossip[25175]["OptionFunc1314"]="FreeTransServer_IsConnectServer</N>32"
tNpcGossip[25175]["Option1315"] = tFreeTransServer_Text[25175]["Option1315"]
tNpcGossip[25175]["OptionFunc1315"]="FreeTransServer_IsConnectServer</N>33"

tNpcGossip[25175]["Text14-1"] = {1411}
tNpcGossip[25175]["Text1411"] = tFreeTransServer_Text[25175]["Text511"]
tNpcGossip[25175]["tOption14-1"] = {1411,1412,3}
tNpcGossip[25175]["Option1411"] = tFreeTransServer_Text[25175]["Option1411"]
tNpcGossip[25175]["OptionFunc1411"]="FreeTransServer_IsConnectServer</N>34"
tNpcGossip[25175]["Option1412"] = tFreeTransServer_Text[25175]["Option1412"]
tNpcGossip[25175]["OptionFunc1412"]="FreeTransServer_IsConnectServer</N>35"

tNpcGossip[25175]["Text15-1"] = {1511}
tNpcGossip[25175]["Text1511"] = tFreeTransServer_Text[25175]["Text511"]
tNpcGossip[25175]["tOption15-1"] = {1511,1512,1513,3}
tNpcGossip[25175]["Option1511"] = tFreeTransServer_Text[25175]["Option1511"]
tNpcGossip[25175]["OptionFunc1511"]="FreeTransServer_IsConnectServer</N>36"
tNpcGossip[25175]["Option1512"] = tFreeTransServer_Text[25175]["Option1512"]
tNpcGossip[25175]["OptionFunc1512"]="FreeTransServer_IsConnectServer</N>37"
tNpcGossip[25175]["Option1513"] = tFreeTransServer_Text[25175]["Option1513"]
tNpcGossip[25175]["OptionFunc1513"]="FreeTransServer_IsConnectServer</N>38"

tNpcGossip[25175]["Text16-1"] = {1611}
tNpcGossip[25175]["Text1611"] = tFreeTransServer_Text[25175]["Text511"]
tNpcGossip[25175]["tOption16-1"] = {1611,1612,1613,1614,3}
tNpcGossip[25175]["Option1611"] = tFreeTransServer_Text[25175]["Option1611"]
tNpcGossip[25175]["OptionFunc1611"]="FreeTransServer_IsConnectServer</N>39"
tNpcGossip[25175]["Option1612"] = tFreeTransServer_Text[25175]["Option1612"]
tNpcGossip[25175]["OptionFunc1612"]="FreeTransServer_IsConnectServer</N>40"
tNpcGossip[25175]["Option1613"] = tFreeTransServer_Text[25175]["Option1613"]
tNpcGossip[25175]["OptionFunc1613"]="FreeTransServer_IsConnectServer</N>41"
tNpcGossip[25175]["Option1614"] = tFreeTransServer_Text[25175]["Option1614"]
tNpcGossip[25175]["OptionFunc1614"]="FreeTransServer_IsConnectServer</N>42"

tNpcGossip[25175]["Text17-1"] = {1711}
tNpcGossip[25175]["Text1711"] = tFreeTransServer_Text[25175]["Text511"]
tNpcGossip[25175]["tOption17-1"] = {1711,1712,3}
tNpcGossip[25175]["Option1711"] = tFreeTransServer_Text[25175]["Option1711"]
tNpcGossip[25175]["OptionFunc1711"]="FreeTransServer_IsConnectServer</N>43"
tNpcGossip[25175]["Option1712"] = tFreeTransServer_Text[25175]["Option1712"]
tNpcGossip[25175]["OptionFunc1712"]="FreeTransServer_IsConnectServer</N>44"

tNpcGossip[25175]["Text18-1"] = {1811}
tNpcGossip[25175]["Text1811"] = tFreeTransServer_Text[25175]["Text511"]
tNpcGossip[25175]["tOption18-1"] = {1811,1812,1813,3}
tNpcGossip[25175]["Option1811"] = tFreeTransServer_Text[25175]["Option1811"]
tNpcGossip[25175]["OptionFunc1811"]="FreeTransServer_IsConnectServer</N>45"
tNpcGossip[25175]["Option1812"] = tFreeTransServer_Text[25175]["Option1812"]
tNpcGossip[25175]["OptionFunc1812"]="FreeTransServer_IsConnectServer</N>46"
tNpcGossip[25175]["Option1813"] = tFreeTransServer_Text[25175]["Option1813"]
tNpcGossip[25175]["OptionFunc1813"]="FreeTransServer_IsConnectServer</N>47"
-- tNpcGossip[25175]["Option1814"] = tFreeTransServer_Text[25175]["Option1814"]
-- tNpcGossip[25175]["OptionFunc1814"]="FreeTransServer_IsConnectServer</N>48"
tNpcGossip[25175]["Option1815"] = tFreeTransServer_Text[25175]["Option1815"]
tNpcGossip[25175]["OptionFunc1815"]="FreeTransServer_IsConnectServer</N>49"

tNpcGossip[25175]["Text19-1"] = {1911}
tNpcGossip[25175]["Text1911"] = tFreeTransServer_Text[25175]["Text511"]
tNpcGossip[25175]["tOption19-1"] = {1912,1913,3}
-- tNpcGossip[25175]["Option1911"] = tFreeTransServer_Text[25175]["Option1911"]
-- tNpcGossip[25175]["OptionFunc1911"]="FreeTransServer_IsConnectServer</N>50"
tNpcGossip[25175]["Option1912"] = tFreeTransServer_Text[25175]["Option1912"]
tNpcGossip[25175]["OptionFunc1912"]="FreeTransServer_IsConnectServer</N>54"
tNpcGossip[25175]["Option1913"] = tFreeTransServer_Text[25175]["Option1913"]
tNpcGossip[25175]["OptionFunc1913"]="FreeTransServer_IsConnectServer</N>55"

tNpcGossip[25175]["Text20-1"] = {2011}
tNpcGossip[25175]["Text2011"] = tFreeTransServer_Text[25175]["Text511"]
tNpcGossip[25175]["tOption20-1"] = {2011,2012,3}
tNpcGossip[25175]["Option2011"] = tFreeTransServer_Text[25175]["Option2011"]
tNpcGossip[25175]["OptionFunc2011"]="FreeTransServer_IsConnectServer</N>51"
tNpcGossip[25175]["OptionChkFunc2011"] = function ()
	return ServerTransferOfficer_ChkServerName()
end
tNpcGossip[25175]["Option2012"] = tFreeTransServer_Text[25175]["Option2012"]
tNpcGossip[25175]["OptionFunc2012"]="FreeTransServer_IsConnectServer</N>52"
tNpcGossip[25175]["OptionChkFunc2012"] = function ()
	return ServerTransferOfficer_ChkServerName()
end

tNpcGossip[25175]["Text22-1"] = {2211,2212}
tNpcGossip[25175]["Text2211"] = tFreeTransServer_Text[25175]["Text2211"]
tNpcGossip[25175]["Text2212"] = tFreeTransServer_Text[25175]["Text2212"]
tNpcGossip[25175]["tOption22-1"] = {23,24}
tNpcGossip[25175]["Option23"] = tFreeTransServer_Text[25175]["Option23"]
tNpcGossip[25175]["OptionFunc23"]="FreeTransServer_IsConnectServer</N>53"
tNpcGossip[25175]["Option24"] = tFreeTransServer_Text[25175]["Option24"]


