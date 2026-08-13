------------------------------------------------------------------------------------
--Name:		160802[英文征服][任务脚本]小石头NPC转服服务器添加
--Purpose:		小石头NPC转服服务器
--Creator:		许乐
--Created:		2016/08/02
------------------------------------------------------------------------------------
-- #1、小石头那边接个付费移服选项；
-- #2、如果是小石头接的全区全服转服服务器都显示；
-- #3、附件中有全区全服服务器列表；

-- 前缀
-- StoneServerTransfer_
-----------------------------------------常量表配置-----------------------------------------------
local tStoneServerTransfer_Cont = {}
	--时间限制
	tStoneServerTransfer_Cont["Time1"] = "07:00 09:30"
	tStoneServerTransfer_Cont["Time2"] = "15:00 17:30"
	
	tStoneServerTransfer_Cont["Emoney1"] = 3999

--掩码
local tStoneServerTransfer_Stc = {}
	--30天转服1次
	tStoneServerTransfer_Stc[1]={}
	tStoneServerTransfer_Stc[1]["EventType"] = 114
	tStoneServerTransfer_Stc[1]["DataType"] = 53
	tStoneServerTransfer_Stc[1]["Complete"] = 30

--服务器名单
local tStoneServerTransfer_ServerName = {}
	tStoneServerTransfer_ServerName[1] = "Dragon"
	tStoneServerTransfer_ServerName[2] = "Phoenix"
	tStoneServerTransfer_ServerName[3] = "Lion"
	tStoneServerTransfer_ServerName[4] = "Kylin"
	tStoneServerTransfer_ServerName[5] = "Eagle"
	tStoneServerTransfer_ServerName[6] = "Crystal"
	tStoneServerTransfer_ServerName[7] = "Emerald"
	tStoneServerTransfer_ServerName[8] = "Turquoise"
	tStoneServerTransfer_ServerName[9] = "Triumph"
	tStoneServerTransfer_ServerName[10] = "Honor"
	tStoneServerTransfer_ServerName[11] = "Freedom"
	tStoneServerTransfer_ServerName[12] = "Faith"
	tStoneServerTransfer_ServerName[13] = "Eternity"
	tStoneServerTransfer_ServerName[14] = "Volcano"
	tStoneServerTransfer_ServerName[15] = "Thunder"
	tStoneServerTransfer_ServerName[16] = "Lightning"
	tStoneServerTransfer_ServerName[17] = "Sunshine"
	tStoneServerTransfer_ServerName[18] = "Snowfall"
	tStoneServerTransfer_ServerName[19] = "Venus"
	tStoneServerTransfer_ServerName[20] = "Mercury"
	tStoneServerTransfer_ServerName[21] = "Uranus"
	tStoneServerTransfer_ServerName[22] = "Neptune"
	tStoneServerTransfer_ServerName[23] = "HangingGardens"
	tStoneServerTransfer_ServerName[24] = "Mausoleum"
	tStoneServerTransfer_ServerName[25] = "Pyramid"
	tStoneServerTransfer_ServerName[27] = "Hebby"
	tStoneServerTransfer_ServerName[28] = "BabyIcey"
	tStoneServerTransfer_ServerName[29] = "Aquarius"
	tStoneServerTransfer_ServerName[30] = "Cancer"
	tStoneServerTransfer_ServerName[31] = "Virgo"
	tStoneServerTransfer_ServerName[32] = "Libra"
	tStoneServerTransfer_ServerName[33] = "Scorpio"
	tStoneServerTransfer_ServerName[34] = "SnowWhite"
	tStoneServerTransfer_ServerName[35] = "WildSwan"
	tStoneServerTransfer_ServerName[36] = "Gryphon"
	tStoneServerTransfer_ServerName[37] = "Titan"
	tStoneServerTransfer_ServerName[38] = "Basilisk"
	tStoneServerTransfer_ServerName[39] = "Dark"
	tStoneServerTransfer_ServerName[40] = "Light"
	tStoneServerTransfer_ServerName[41] = "Storm"
	tStoneServerTransfer_ServerName[42] = "Fire"
	tStoneServerTransfer_ServerName[43] = "Lucky7"
	tStoneServerTransfer_ServerName[44] = "Legends"
	tStoneServerTransfer_ServerName[45] = "Champions_EU"
	tStoneServerTransfer_ServerName[46] = "SummerWind"
	tStoneServerTransfer_ServerName[47] = "JiangHu_EU"
	tStoneServerTransfer_ServerName[49] = "DragonRoar"
	tStoneServerTransfer_ServerName[51] = "Royalty_EU_O"
	tStoneServerTransfer_ServerName[52] = "Liberty_O"
	tStoneServerTransfer_ServerName[53] = "Columbus"
	tStoneServerTransfer_ServerName[54] = "FastBlade"
	tStoneServerTransfer_ServerName[55] = "ScentSword"
	tStoneServerTransfer_ServerName[56] = "Sirius_EU"
	tStoneServerTransfer_ServerName[57] = "TwilightDance"
	tStoneServerTransfer_ServerName[58] = "Utopia"
	tStoneServerTransfer_ServerName[59] = "StarArrow"
	tStoneServerTransfer_ServerName[60] = "DragonWar_EU"
	tStoneServerTransfer_ServerName[61] = "KingdomWar"
	tStoneServerTransfer_ServerName[62] = "Emperor_EU"
	tStoneServerTransfer_ServerName[63] = "WarLord"
	tStoneServerTransfer_ServerName[64] = "NatureMystery"
	tStoneServerTransfer_ServerName[65] = "AuroraLotus"
	tStoneServerTransfer_ServerName[66] = "FlameLotus_EU"
	tStoneServerTransfer_ServerName[67] = "SecludedDemons"
	tStoneServerTransfer_ServerName[68] = "KingOfKings"
	tStoneServerTransfer_ServerName[69] = "TempestWings_EU"
	tStoneServerTransfer_ServerName[70] = "WrathOfEmperor"
	tStoneServerTransfer_ServerName[71] = "CSTeamPK"
	tStoneServerTransfer_ServerName[72] = "SwiftChaser"
	tStoneServerTransfer_ServerName[73] = "Conquer13_EU"
	tStoneServerTransfer_ServerName[74] = "Perfection"
	tStoneServerTransfer_ServerName[75] = "EpicWarrior"
	tStoneServerTransfer_ServerName[76] = "SkyFlame"
	tStoneServerTransfer_ServerName[77] = "Backfire_EU"
	tStoneServerTransfer_ServerName[78] = "ManiacDance"
	tStoneServerTransfer_ServerName[79] = "ScarOfEarth"
	tStoneServerTransfer_ServerName[80] = "NewWorld"
	tStoneServerTransfer_ServerName[81] = "NewChallenge_EU"



------------------------------------------逻辑部分-------------------------------------------------
function StoneServerTransfer_ShowStoneDialog(nNpcId)
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

function StoneServerTransfer_JudgeStc(nNpcId)
	local nEvent = tStoneServerTransfer_Stc[1]["EventType"]
	local nType =  tStoneServerTransfer_Stc[1]["DataType"]
	local nComplete = tStoneServerTransfer_Stc[1]["Complete"]
	if not Task_StcInterval(nEvent,nType,nComplete,3) then
		if not Task_ChkStcValue(nEvent,nType,"==",0) then
			Sys_MsgBox(tStoneServerTransfer_Text[105]["30Days"])
			return
		else
			LinkNpcGossipFunc_New(nNpcId,"3-1")
		end
	else
		LinkNpcGossipFunc_New(nNpcId,"3-1")
	end
end

--服务器名称
function StoneServerTransfer_IsConnectServer(nChoose)
	local sServerName = tStoneServerTransfer_Text["ServerName"][nChoose]
	local str = string.format(tStoneServerTransfer_Text[105]["SureToTrans"],sServerName)
	Sys_MsgBox(str,"StoneServerTransfer_ConnectJudgement</N>"..nChoose)
end

--转服判断
function StoneServerTransfer_ConnectJudgement(nChoose)
	if Sys_ChkDayTime(tStoneServerTransfer_Cont["Time1"]) or Sys_ChkDayTime(tStoneServerTransfer_Cont["Time2"]) then
		Sys_MsgBox(tStoneServerTransfer_Text[105]["NotRightTime"])
		return
	end
	
	-- 判断是否打开二级密码 1053
	if not Sys_IsOpenSecondPWD() then
		Sys_MsgBox(tStoneServerTransfer_Text[105]["PasswordTip"])
		return
	end
	
	-- 判断帐号服务器是否正常连接 1215
	if not Sys_IsAccountServerNormal() then
		Sys_MsgBox(tStoneServerTransfer_Text[105]["FailConnect"])
		return
	end
	
	local sServerName = tostring(tStoneServerTransfer_ServerName[nChoose])
	-- 判断当前是否在该服务器 1213
	if Sys_CheckServerName(sServerName) then
		Sys_MsgBox(tStoneServerTransfer_Text[105]["InSameServer"])
		return
	end
	
	-- 判断转服服务器是否连接上 1205
	if not Sys_IsChangeServerEnable() then
		Sys_MsgBox(tStoneServerTransfer_Text[105]["FailServer"])
		return
	end
	
	-- 判断转服服务器是否空闲 1214
	if not Sys_IsChangeServerIdle() then
		Sys_MsgBox(tStoneServerTransfer_Text[105]["BusyServer"])
		return
	end

	--天石数量判断
	local nEmoney = Get_UserEMoney()
	local nNeedEM = tStoneServerTransfer_Cont["Emoney1"]

	if nEmoney < nNeedEM then
		Sys_MsgBox(string.format(tStoneServerTransfer_Text[105]["NoEnoughEmoney"],nNeedEM))
		return
	end

	--取玩家伴侣名字
	local nMateId = Get_UserMateId()
	if nMateId ~= 0 then
		Sys_MsgBox(tStoneServerTransfer_Text[105]["Marriage"])
		return
	end
	
	--取玩家帮派ID
	local nGuildId = Get_UserGuildId()
	if nGuildId ~= 0 then
		Sys_MsgBox(tStoneServerTransfer_Text[105]["Guild"])
		return
	end
	
	--取玩家家族ID
	local nFamilyId = Get_UserFamilyId()
	if nFamilyId ~= 0 then
		Sys_MsgBox(tStoneServerTransfer_Text[105]["Family"])
		return
	end
	
	-- 判断是否有联盟
	if User_IsInLeague() then
		Sys_MsgBox(tStoneServerTransfer_Text[105]["League"])
		return
	end
	
	--检测玩家是否存在师徒关系 1206
	if User_CheckGuide() then
		Sys_MsgBox(tStoneServerTransfer_Text[105]["Mentor"])
		return
	end
	
	-- 检测玩家是否存在商业伙伴关系 1207
	if User_CheckTradeBuddy() then
		Sys_MsgBox(tStoneServerTransfer_Text[105]["TradePartner"])
		return
	end
	
	-- -- 检测玩家是否存在拍卖行物品  1210
	-- if User_HasAuctionItem() then
		-- Sys_MsgBox(tStoneServerTransfer_Text[105]["Auction"])
		-- return
	-- end
	
	-- 检测玩家是否存在邮件 1211
	if User_HasMail() then
		Sys_MsgBox(tStoneServerTransfer_Text[105]["Email"])
		return
	end
	
	-- 对cq_pk_item表的检查 2205
	if User_CheckPkItem(0) then
		Sys_MsgBox(tStoneServerTransfer_Text[105]["TargetPKItem"])
		return
	elseif User_CheckPkItem(1) then
		Sys_MsgBox(tStoneServerTransfer_Text[105]["HunterPKItem"])
		return
	end
	
	-- -- 检测玩家是否存在未领天石卡，一定要同步查表，放在最后面 1209
	-- if User_CheckCard() then
		-- Sys_MsgBox(tStoneServerTransfer_Text[105]["ClaimEmoney"])
		-- return
	-- end
	
	-- 游服发起转服要求 1212
	User_ChangeServer(sServerName)
end

function StoneServerTransfer_ChkServerName()
	if (not Sys_CheckServerName(tStoneServerTransfer_Text["ServerName"][51])) or (not Sys_CheckServerName(tStoneServerTransfer_Text["ServerName"][52])) then
		return false
	else
		return true
	end
end

-------------------------------------------NPC模块--------------------------------------------------
--8715 ServerTransferOfficer
-- tNpcFace[2415] = 6 
tNpcGossip[8715] = tNpcGossip[8715] or DefaultNpc:new{}
tNpcGossip[8715]["OptionHidden"] = 1

tNpcGossip[8715]["Text1-1"] = {111,112}
tNpcGossip[8715]["Text111"] = tStoneServerTransfer_Text[8715]["Text111"]
tNpcGossip[8715]["Text112"] = tStoneServerTransfer_Text[8715]["Text112"]
tNpcGossip[8715]["tOption1-1"] = {1,2,3}
tNpcGossip[8715]["Option1"] = tStoneServerTransfer_Text[8715]["Option1"]
tNpcGossip[8715]["OptionPoint1"]="2-1"
tNpcGossip[8715]["Option2"] = tStoneServerTransfer_Text[8715]["Option2"]
tNpcGossip[8715]["OptionFunc2"]="StoneServerTransfer_JudgeStc</N>8715"
tNpcGossip[8715]["Option3"] = tStoneServerTransfer_Text[8715]["Option3"]

tNpcGossip[8715]["Text2-1"] = {211,212,213,214,215,216}
tNpcGossip[8715]["Text211"] = tStoneServerTransfer_Text[8715]["Text211"]
tNpcGossip[8715]["Text212"] = tStoneServerTransfer_Text[8715]["Text212"]
tNpcGossip[8715]["Text213"] = tStoneServerTransfer_Text[8715]["Text213"]
tNpcGossip[8715]["Text214"] = tStoneServerTransfer_Text[8715]["Text214"]
tNpcGossip[8715]["Text215"] = tStoneServerTransfer_Text[8715]["Text215"]
tNpcGossip[8715]["Text216"] = tStoneServerTransfer_Text[8715]["Text216"]
tNpcGossip[8715]["tOption2-1"] = {4}
tNpcGossip[8715]["Option4"] = tStoneServerTransfer_Text[8715]["Option4"]

tNpcGossip[8715]["Text3-1"] = {311}
tNpcGossip[8715]["Text311"] = tStoneServerTransfer_Text[8715]["Text311"]
tNpcGossip[8715]["tOption3-1"] = {5,6,7,8,9,10,11,311}
tNpcGossip[8715]["Option5"] = tStoneServerTransfer_Text[8715]["Option5"]
tNpcGossip[8715]["OptionPoint5"]="5-1"
tNpcGossip[8715]["Option6"] = tStoneServerTransfer_Text[8715]["Option6"]
tNpcGossip[8715]["OptionPoint6"]="6-1"
tNpcGossip[8715]["Option7"] = tStoneServerTransfer_Text[8715]["Option7"]
tNpcGossip[8715]["OptionPoint7"]="7-1"
tNpcGossip[8715]["Option8"] = tStoneServerTransfer_Text[8715]["Option8"]
tNpcGossip[8715]["OptionPoint8"]="8-1"
tNpcGossip[8715]["Option9"] = tStoneServerTransfer_Text[8715]["Option9"]
tNpcGossip[8715]["OptionPoint9"]="9-1"
tNpcGossip[8715]["Option10"] = tStoneServerTransfer_Text[8715]["Option10"]
tNpcGossip[8715]["OptionPoint10"]="10-1"
tNpcGossip[8715]["Option11"] = tStoneServerTransfer_Text[8715]["Option11"]
tNpcGossip[8715]["OptionPoint11"]="3-2"
tNpcGossip[8715]["Option311"] = tStoneServerTransfer_Text[8715]["Option311"]
tNpcGossip[8715]["OptionPoint311"]="1-1"

tNpcGossip[8715]["Text3-2"] = {321}
tNpcGossip[8715]["Text321"] = tStoneServerTransfer_Text[8715]["Text321"]
tNpcGossip[8715]["tOption3-2"] = {12,13,14,15,16,17,21,321}
tNpcGossip[8715]["Option12"] = tStoneServerTransfer_Text[8715]["Option12"]
tNpcGossip[8715]["OptionPoint12"]="12-1"
tNpcGossip[8715]["Option13"] = tStoneServerTransfer_Text[8715]["Option13"]
tNpcGossip[8715]["OptionPoint13"]="13-1"
tNpcGossip[8715]["Option14"] = tStoneServerTransfer_Text[8715]["Option14"]
tNpcGossip[8715]["OptionPoint14"]="14-1"
tNpcGossip[8715]["Option15"] = tStoneServerTransfer_Text[8715]["Option15"]
tNpcGossip[8715]["OptionPoint15"]="15-1"
tNpcGossip[8715]["Option16"] = tStoneServerTransfer_Text[8715]["Option16"]
tNpcGossip[8715]["OptionPoint16"]="16-1"
tNpcGossip[8715]["Option17"] = tStoneServerTransfer_Text[8715]["Option17"]
tNpcGossip[8715]["OptionPoint17"]="17-1"
tNpcGossip[8715]["Option21"] = tStoneServerTransfer_Text[8715]["Option21"]
tNpcGossip[8715]["OptionPoint21"]="3-3"
tNpcGossip[8715]["Option321"] = tStoneServerTransfer_Text[8715]["Option321"]
tNpcGossip[8715]["OptionPoint321"]="3-1"

tNpcGossip[8715]["Text3-3"] = {331}
tNpcGossip[8715]["Text331"] = tStoneServerTransfer_Text[8715]["Text331"]
tNpcGossip[8715]["tOption3-3"] = {18,19,20,22,25,26,27,331}
tNpcGossip[8715]["Option18"] = tStoneServerTransfer_Text[8715]["Option18"]
tNpcGossip[8715]["OptionPoint18"]="18-1"
tNpcGossip[8715]["Option19"] = tStoneServerTransfer_Text[8715]["Option19"]
tNpcGossip[8715]["OptionPoint19"]="19-1"
tNpcGossip[8715]["Option20"] = tStoneServerTransfer_Text[8715]["Option20"]
tNpcGossip[8715]["OptionPoint20"]="20-1"
tNpcGossip[8715]["Option22"] = tStoneServerTransfer_Text[8715]["Option22"]
tNpcGossip[8715]["OptionPoint22"]="22-1"
tNpcGossip[8715]["Option25"] = tStoneServerTransfer_Text[8715]["Option25"]
tNpcGossip[8715]["OptionFunc25"]="StoneServerTransfer_IsConnectServer</N>56"
tNpcGossip[8715]["Option26"] = tStoneServerTransfer_Text[8715]["Option26"]
tNpcGossip[8715]["OptionFunc26"]="StoneServerTransfer_IsConnectServer</N>57"
tNpcGossip[8715]["Option27"] = tStoneServerTransfer_Text[8715]["Option27"]
tNpcGossip[8715]["OptionPoint27"]="3-4"
tNpcGossip[8715]["Option331"] = tStoneServerTransfer_Text[8715]["Option331"]
tNpcGossip[8715]["OptionPoint331"]="3-2"

tNpcGossip[8715]["Text3-4"] = {341}
tNpcGossip[8715]["Text341"] = tStoneServerTransfer_Text[8715]["Text341"]
tNpcGossip[8715]["tOption3-4"] = {28,29,30,31,32,33,34,341}
tNpcGossip[8715]["Option28"] = tStoneServerTransfer_Text[8715]["Option28"]
tNpcGossip[8715]["OptionFunc28"]="StoneServerTransfer_IsConnectServer</N>58"
tNpcGossip[8715]["Option29"] = tStoneServerTransfer_Text[8715]["Option29"]
tNpcGossip[8715]["OptionFunc29"]="StoneServerTransfer_IsConnectServer</N>59"
tNpcGossip[8715]["Option30"] = tStoneServerTransfer_Text[8715]["Option30"]
tNpcGossip[8715]["OptionFunc30"]="StoneServerTransfer_IsConnectServer</N>60"
tNpcGossip[8715]["Option31"] = tStoneServerTransfer_Text[8715]["Option31"]
tNpcGossip[8715]["OptionFunc31"]="StoneServerTransfer_IsConnectServer</N>61"
tNpcGossip[8715]["Option32"] = tStoneServerTransfer_Text[8715]["Option32"]
tNpcGossip[8715]["OptionFunc32"]="StoneServerTransfer_IsConnectServer</N>62"
tNpcGossip[8715]["Option33"] = tStoneServerTransfer_Text[8715]["Option33"]
tNpcGossip[8715]["OptionFunc33"]="StoneServerTransfer_IsConnectServer</N>63"
tNpcGossip[8715]["Option34"] = tStoneServerTransfer_Text[8715]["Option34"]
tNpcGossip[8715]["OptionPoint34"]="3-5"
tNpcGossip[8715]["Option341"] = tStoneServerTransfer_Text[8715]["Option341"]
tNpcGossip[8715]["OptionPoint341"]="3-3"

tNpcGossip[8715]["Text3-5"] = {351}
tNpcGossip[8715]["Text351"] = tStoneServerTransfer_Text[8715]["Text351"]
tNpcGossip[8715]["tOption3-5"] = {35,36,37,38,39,40,41,351}
tNpcGossip[8715]["Option35"] = tStoneServerTransfer_Text[8715]["Option35"]
tNpcGossip[8715]["OptionFunc35"]="StoneServerTransfer_IsConnectServer</N>64"
tNpcGossip[8715]["Option36"] = tStoneServerTransfer_Text[8715]["Option36"]
tNpcGossip[8715]["OptionFunc36"]="StoneServerTransfer_IsConnectServer</N>65"
tNpcGossip[8715]["Option37"] = tStoneServerTransfer_Text[8715]["Option37"]
tNpcGossip[8715]["OptionFunc37"]="StoneServerTransfer_IsConnectServer</N>66"
tNpcGossip[8715]["Option38"] = tStoneServerTransfer_Text[8715]["Option38"]
tNpcGossip[8715]["OptionFunc38"]="StoneServerTransfer_IsConnectServer</N>67"
tNpcGossip[8715]["Option39"] = tStoneServerTransfer_Text[8715]["Option39"]
tNpcGossip[8715]["OptionFunc39"]="StoneServerTransfer_IsConnectServer</N>68"
tNpcGossip[8715]["Option40"] = tStoneServerTransfer_Text[8715]["Option40"]
tNpcGossip[8715]["OptionFunc40"]="StoneServerTransfer_IsConnectServer</N>69"
tNpcGossip[8715]["Option41"] = tStoneServerTransfer_Text[8715]["Option41"]
tNpcGossip[8715]["OptionPoint41"]="3-6"
tNpcGossip[8715]["Option351"] = tStoneServerTransfer_Text[8715]["Option351"]
tNpcGossip[8715]["OptionPoint351"]="3-4"

tNpcGossip[8715]["Text3-6"] = {361}
tNpcGossip[8715]["Text361"] = tStoneServerTransfer_Text[8715]["Text361"]
tNpcGossip[8715]["tOption3-6"] = {42,43,44,45,46,47,48,361}
tNpcGossip[8715]["Option42"] = tStoneServerTransfer_Text[8715]["Option42"]
tNpcGossip[8715]["OptionFunc42"]="StoneServerTransfer_IsConnectServer</N>70"
tNpcGossip[8715]["Option43"] = tStoneServerTransfer_Text[8715]["Option43"]
tNpcGossip[8715]["OptionFunc43"]="StoneServerTransfer_IsConnectServer</N>71"
tNpcGossip[8715]["Option44"] = tStoneServerTransfer_Text[8715]["Option44"]
tNpcGossip[8715]["OptionFunc44"]="StoneServerTransfer_IsConnectServer</N>72"
tNpcGossip[8715]["Option45"] = tStoneServerTransfer_Text[8715]["Option45"]
tNpcGossip[8715]["OptionFunc45"]="StoneServerTransfer_IsConnectServer</N>73"
tNpcGossip[8715]["Option46"] = tStoneServerTransfer_Text[8715]["Option46"]
tNpcGossip[8715]["OptionFunc46"]="StoneServerTransfer_IsConnectServer</N>74"
tNpcGossip[8715]["Option47"] = tStoneServerTransfer_Text[8715]["Option47"]
tNpcGossip[8715]["OptionFunc47"]="StoneServerTransfer_IsConnectServer</N>75"
tNpcGossip[8715]["Option48"] = tStoneServerTransfer_Text[8715]["Option48"]
tNpcGossip[8715]["OptionPoint48"]="3-7"
tNpcGossip[8715]["Option361"] = tStoneServerTransfer_Text[8715]["Option361"]
tNpcGossip[8715]["OptionPoint361"]="3-5"

tNpcGossip[8715]["Text3-7"] = {371}
tNpcGossip[8715]["Text371"] = tStoneServerTransfer_Text[8715]["Text371"]
tNpcGossip[8715]["tOption3-7"] = {49,50,51,52,53,371}
tNpcGossip[8715]["Option49"] = tStoneServerTransfer_Text[8715]["Option49"]
tNpcGossip[8715]["OptionFunc49"]="StoneServerTransfer_IsConnectServer</N>76"
tNpcGossip[8715]["Option50"] = tStoneServerTransfer_Text[8715]["Option50"]
tNpcGossip[8715]["OptionFunc50"]="StoneServerTransfer_IsConnectServer</N>77"
tNpcGossip[8715]["Option51"] = tStoneServerTransfer_Text[8715]["Option51"]
tNpcGossip[8715]["OptionFunc51"]="StoneServerTransfer_IsConnectServer</N>78"
tNpcGossip[8715]["Option52"] = tStoneServerTransfer_Text[8715]["Option52"]
tNpcGossip[8715]["OptionFunc52"]="StoneServerTransfer_IsConnectServer</N>79"
tNpcGossip[8715]["Option371"] = tStoneServerTransfer_Text[8715]["Option371"]
tNpcGossip[8715]["Option53"] = tStoneServerTransfer_Text[8715]["Option53"]
tNpcGossip[8715]["OptionFunc53"]="StoneServerTransfer_IsConnectServer</N>81"
tNpcGossip[8715]["OptionPoint371"]="3-6"

tNpcGossip[8715]["Text5-1"] = {511}
tNpcGossip[8715]["Text511"] = tStoneServerTransfer_Text[8715]["Text511"]
tNpcGossip[8715]["tOption5-1"] = {511,512,513,514,515,3}
tNpcGossip[8715]["Option511"] = tStoneServerTransfer_Text[8715]["Option511"]
tNpcGossip[8715]["OptionFunc511"]="StoneServerTransfer_IsConnectServer</N>1"
tNpcGossip[8715]["Option512"] = tStoneServerTransfer_Text[8715]["Option512"]
tNpcGossip[8715]["OptionFunc512"]="StoneServerTransfer_IsConnectServer</N>2"
tNpcGossip[8715]["Option513"] = tStoneServerTransfer_Text[8715]["Option513"]
tNpcGossip[8715]["OptionFunc513"]="StoneServerTransfer_IsConnectServer</N>3"
tNpcGossip[8715]["Option514"] = tStoneServerTransfer_Text[8715]["Option514"]
tNpcGossip[8715]["OptionFunc514"]="StoneServerTransfer_IsConnectServer</N>4"
tNpcGossip[8715]["Option515"] = tStoneServerTransfer_Text[8715]["Option515"]
tNpcGossip[8715]["OptionFunc515"]="StoneServerTransfer_IsConnectServer</N>5"

tNpcGossip[8715]["Text6-1"] = {611}
tNpcGossip[8715]["Text611"] = tStoneServerTransfer_Text[8715]["Text511"]
tNpcGossip[8715]["tOption6-1"] = {611,612,613,614,3}
tNpcGossip[8715]["Option611"] = tStoneServerTransfer_Text[8715]["Option611"]
tNpcGossip[8715]["OptionFunc611"]="StoneServerTransfer_IsConnectServer</N>6"
tNpcGossip[8715]["Option612"] = tStoneServerTransfer_Text[8715]["Option612"]
tNpcGossip[8715]["OptionFunc612"]="StoneServerTransfer_IsConnectServer</N>7"
tNpcGossip[8715]["Option613"] = tStoneServerTransfer_Text[8715]["Option613"]
tNpcGossip[8715]["OptionFunc613"]="StoneServerTransfer_IsConnectServer</N>8"

tNpcGossip[8715]["Option614"] = tStoneServerTransfer_Text[8715]["Option614"]
tNpcGossip[8715]["OptionFunc614"]="StoneServerTransfer_IsConnectServer</N>80"

tNpcGossip[8715]["Text7-1"] = {711}
tNpcGossip[8715]["Text711"] = tStoneServerTransfer_Text[8715]["Text511"]
tNpcGossip[8715]["tOption7-1"] = {711,712,713,714,715,3}
tNpcGossip[8715]["Option711"] = tStoneServerTransfer_Text[8715]["Option711"]
tNpcGossip[8715]["OptionFunc711"]="StoneServerTransfer_IsConnectServer</N>9"
tNpcGossip[8715]["Option712"] = tStoneServerTransfer_Text[8715]["Option712"]
tNpcGossip[8715]["OptionFunc712"]="StoneServerTransfer_IsConnectServer</N>10"
tNpcGossip[8715]["Option713"] = tStoneServerTransfer_Text[8715]["Option713"]
tNpcGossip[8715]["OptionFunc713"]="StoneServerTransfer_IsConnectServer</N>11"
tNpcGossip[8715]["Option714"] = tStoneServerTransfer_Text[8715]["Option714"]
tNpcGossip[8715]["OptionFunc714"]="StoneServerTransfer_IsConnectServer</N>12"
tNpcGossip[8715]["Option715"] = tStoneServerTransfer_Text[8715]["Option715"]
tNpcGossip[8715]["OptionFunc715"]="StoneServerTransfer_IsConnectServer</N>13"

tNpcGossip[8715]["Text8-1"] = {811}
tNpcGossip[8715]["Text811"] = tStoneServerTransfer_Text[8715]["Text511"]
tNpcGossip[8715]["tOption8-1"] = {811,812,813,814,815,3}
tNpcGossip[8715]["Option811"] = tStoneServerTransfer_Text[8715]["Option811"]
tNpcGossip[8715]["OptionFunc811"]="StoneServerTransfer_IsConnectServer</N>14"
tNpcGossip[8715]["Option812"] = tStoneServerTransfer_Text[8715]["Option812"]
tNpcGossip[8715]["OptionFunc812"]="StoneServerTransfer_IsConnectServer</N>15"
tNpcGossip[8715]["Option813"] = tStoneServerTransfer_Text[8715]["Option813"]
tNpcGossip[8715]["OptionFunc813"]="StoneServerTransfer_IsConnectServer</N>16"
tNpcGossip[8715]["Option814"] = tStoneServerTransfer_Text[8715]["Option814"]
tNpcGossip[8715]["OptionFunc814"]="StoneServerTransfer_IsConnectServer</N>17"
tNpcGossip[8715]["Option815"] = tStoneServerTransfer_Text[8715]["Option815"]
tNpcGossip[8715]["OptionFunc815"]="StoneServerTransfer_IsConnectServer</N>18"

tNpcGossip[8715]["Text9-1"] = {611}
tNpcGossip[8715]["Text911"] = tStoneServerTransfer_Text[8715]["Text511"]
tNpcGossip[8715]["tOption9-1"] = {911,912,913,914,3}
tNpcGossip[8715]["Option911"] = tStoneServerTransfer_Text[8715]["Option911"]
tNpcGossip[8715]["OptionFunc911"]="StoneServerTransfer_IsConnectServer</N>19"
tNpcGossip[8715]["Option912"] = tStoneServerTransfer_Text[8715]["Option912"]
tNpcGossip[8715]["OptionFunc912"]="StoneServerTransfer_IsConnectServer</N>20"
tNpcGossip[8715]["Option913"] = tStoneServerTransfer_Text[8715]["Option913"]
tNpcGossip[8715]["OptionFunc913"]="StoneServerTransfer_IsConnectServer</N>21"
tNpcGossip[8715]["Option914"] = tStoneServerTransfer_Text[8715]["Option914"]
tNpcGossip[8715]["OptionFunc914"]="StoneServerTransfer_IsConnectServer</N>22"

tNpcGossip[8715]["Text10-1"] = {1011}
tNpcGossip[8715]["Text1011"] = tStoneServerTransfer_Text[8715]["Text511"]
tNpcGossip[8715]["tOption10-1"] = {1011,1012,1013,3}
tNpcGossip[8715]["Option1011"] = tStoneServerTransfer_Text[8715]["Option1011"]
tNpcGossip[8715]["OptionFunc1011"]="StoneServerTransfer_IsConnectServer</N>23"
tNpcGossip[8715]["Option1012"] = tStoneServerTransfer_Text[8715]["Option1012"]
tNpcGossip[8715]["OptionFunc1012"]="StoneServerTransfer_IsConnectServer</N>24"
tNpcGossip[8715]["Option1013"] = tStoneServerTransfer_Text[8715]["Option1013"]
tNpcGossip[8715]["OptionFunc1013"]="StoneServerTransfer_IsConnectServer</N>25"

tNpcGossip[8715]["Text12-1"] = {1211}
tNpcGossip[8715]["Text1211"] = tStoneServerTransfer_Text[8715]["Text511"]
tNpcGossip[8715]["tOption12-1"] = {1211,1212,3}
tNpcGossip[8715]["Option1211"] = tStoneServerTransfer_Text[8715]["Option1211"]
tNpcGossip[8715]["OptionFunc1211"]="StoneServerTransfer_IsConnectServer</N>27"
tNpcGossip[8715]["Option1212"] = tStoneServerTransfer_Text[8715]["Option1212"]
tNpcGossip[8715]["OptionFunc1212"]="StoneServerTransfer_IsConnectServer</N>28"

tNpcGossip[8715]["Text13-1"] = {1311}
tNpcGossip[8715]["Text1311"] = tStoneServerTransfer_Text[8715]["Text511"]
tNpcGossip[8715]["tOption13-1"] = {1311,1312,1313,1314,1315,3}
tNpcGossip[8715]["Option1311"] = tStoneServerTransfer_Text[8715]["Option1311"]
tNpcGossip[8715]["OptionFunc1311"]="StoneServerTransfer_IsConnectServer</N>29"
tNpcGossip[8715]["Option1312"] = tStoneServerTransfer_Text[8715]["Option1312"]
tNpcGossip[8715]["OptionFunc1312"]="StoneServerTransfer_IsConnectServer</N>30"
tNpcGossip[8715]["Option1313"] = tStoneServerTransfer_Text[8715]["Option1313"]
tNpcGossip[8715]["OptionFunc1313"]="StoneServerTransfer_IsConnectServer</N>31"
tNpcGossip[8715]["Option1314"] = tStoneServerTransfer_Text[8715]["Option1314"]
tNpcGossip[8715]["OptionFunc1314"]="StoneServerTransfer_IsConnectServer</N>32"
tNpcGossip[8715]["Option1315"] = tStoneServerTransfer_Text[8715]["Option1315"]
tNpcGossip[8715]["OptionFunc1315"]="StoneServerTransfer_IsConnectServer</N>33"

tNpcGossip[8715]["Text14-1"] = {1411}
tNpcGossip[8715]["Text1411"] = tStoneServerTransfer_Text[8715]["Text511"]
tNpcGossip[8715]["tOption14-1"] = {1411,1412,3}
tNpcGossip[8715]["Option1411"] = tStoneServerTransfer_Text[8715]["Option1411"]
tNpcGossip[8715]["OptionFunc1411"]="StoneServerTransfer_IsConnectServer</N>34"
tNpcGossip[8715]["Option1412"] = tStoneServerTransfer_Text[8715]["Option1412"]
tNpcGossip[8715]["OptionFunc1412"]="StoneServerTransfer_IsConnectServer</N>35"

tNpcGossip[8715]["Text15-1"] = {1511}
tNpcGossip[8715]["Text1511"] = tStoneServerTransfer_Text[8715]["Text511"]
tNpcGossip[8715]["tOption15-1"] = {1511,1512,1513,3}
tNpcGossip[8715]["Option1511"] = tStoneServerTransfer_Text[8715]["Option1511"]
tNpcGossip[8715]["OptionFunc1511"]="StoneServerTransfer_IsConnectServer</N>36"
tNpcGossip[8715]["Option1512"] = tStoneServerTransfer_Text[8715]["Option1512"]
tNpcGossip[8715]["OptionFunc1512"]="StoneServerTransfer_IsConnectServer</N>37"
tNpcGossip[8715]["Option1513"] = tStoneServerTransfer_Text[8715]["Option1513"]
tNpcGossip[8715]["OptionFunc1513"]="StoneServerTransfer_IsConnectServer</N>38"

tNpcGossip[8715]["Text16-1"] = {1611}
tNpcGossip[8715]["Text1611"] = tStoneServerTransfer_Text[8715]["Text511"]
tNpcGossip[8715]["tOption16-1"] = {1611,1612,1613,1614,3}
tNpcGossip[8715]["Option1611"] = tStoneServerTransfer_Text[8715]["Option1611"]
tNpcGossip[8715]["OptionFunc1611"]="StoneServerTransfer_IsConnectServer</N>39"
tNpcGossip[8715]["Option1612"] = tStoneServerTransfer_Text[8715]["Option1612"]
tNpcGossip[8715]["OptionFunc1612"]="StoneServerTransfer_IsConnectServer</N>40"
tNpcGossip[8715]["Option1613"] = tStoneServerTransfer_Text[8715]["Option1613"]
tNpcGossip[8715]["OptionFunc1613"]="StoneServerTransfer_IsConnectServer</N>41"
tNpcGossip[8715]["Option1614"] = tStoneServerTransfer_Text[8715]["Option1614"]
tNpcGossip[8715]["OptionFunc1614"]="StoneServerTransfer_IsConnectServer</N>42"

tNpcGossip[8715]["Text17-1"] = {1711}
tNpcGossip[8715]["Text1711"] = tStoneServerTransfer_Text[8715]["Text511"]
tNpcGossip[8715]["tOption17-1"] = {1711,1712,3}
tNpcGossip[8715]["Option1711"] = tStoneServerTransfer_Text[8715]["Option1711"]
tNpcGossip[8715]["OptionFunc1711"]="StoneServerTransfer_IsConnectServer</N>43"
tNpcGossip[8715]["Option1712"] = tStoneServerTransfer_Text[8715]["Option1712"]
tNpcGossip[8715]["OptionFunc1712"]="StoneServerTransfer_IsConnectServer</N>44"

tNpcGossip[8715]["Text18-1"] = {1811}
tNpcGossip[8715]["Text1811"] = tStoneServerTransfer_Text[8715]["Text511"]
tNpcGossip[8715]["tOption18-1"] = {1811,1812,1813,3}
tNpcGossip[8715]["Option1811"] = tStoneServerTransfer_Text[8715]["Option1811"]
tNpcGossip[8715]["OptionFunc1811"]="StoneServerTransfer_IsConnectServer</N>45"
tNpcGossip[8715]["Option1812"] = tStoneServerTransfer_Text[8715]["Option1812"]
tNpcGossip[8715]["OptionFunc1812"]="StoneServerTransfer_IsConnectServer</N>46"
tNpcGossip[8715]["Option1813"] = tStoneServerTransfer_Text[8715]["Option1813"]
tNpcGossip[8715]["OptionFunc1813"]="StoneServerTransfer_IsConnectServer</N>47"
tNpcGossip[8715]["Option1815"] = tStoneServerTransfer_Text[8715]["Option1815"]
tNpcGossip[8715]["OptionFunc1815"]="StoneServerTransfer_IsConnectServer</N>49"

tNpcGossip[8715]["Text19-1"] = {1911}
tNpcGossip[8715]["Text1911"] = tStoneServerTransfer_Text[8715]["Text511"]
tNpcGossip[8715]["tOption19-1"] = {1912,1913,3}
tNpcGossip[8715]["Option1912"] = tStoneServerTransfer_Text[8715]["Option1912"]
tNpcGossip[8715]["OptionFunc1912"]="StoneServerTransfer_IsConnectServer</N>54"
tNpcGossip[8715]["Option1913"] = tStoneServerTransfer_Text[8715]["Option1913"]
tNpcGossip[8715]["OptionFunc1913"]="StoneServerTransfer_IsConnectServer</N>55"

tNpcGossip[8715]["Text20-1"] = {2011}
tNpcGossip[8715]["Text2011"] = tStoneServerTransfer_Text[8715]["Text511"]
tNpcGossip[8715]["tOption20-1"] = {2011,2012,3}
tNpcGossip[8715]["Option2011"] = tStoneServerTransfer_Text[8715]["Option2011"]
tNpcGossip[8715]["OptionFunc2011"]="StoneServerTransfer_IsConnectServer</N>51"
-- tNpcGossip[8715]["OptionChkFunc2011"] = function ()
	-- return StoneServerTransfer_ChkServerName()
-- end
tNpcGossip[8715]["Option2012"] = tStoneServerTransfer_Text[8715]["Option2012"]
tNpcGossip[8715]["OptionFunc2012"]="StoneServerTransfer_IsConnectServer</N>52"
-- tNpcGossip[8715]["OptionChkFunc2012"] = function ()
	-- return StoneServerTransfer_ChkServerName()
-- end

tNpcGossip[8715]["Text22-1"] = {2211,2212}
tNpcGossip[8715]["Text2211"] = tStoneServerTransfer_Text[8715]["Text2211"]
tNpcGossip[8715]["Text2212"] = tStoneServerTransfer_Text[8715]["Text2212"]
tNpcGossip[8715]["tOption22-1"] = {23,24}
tNpcGossip[8715]["Option23"] = tStoneServerTransfer_Text[8715]["Option23"]
tNpcGossip[8715]["OptionFunc23"]="StoneServerTransfer_IsConnectServer</N>53"
tNpcGossip[8715]["Option24"] = tStoneServerTransfer_Text[8715]["Option24"]

