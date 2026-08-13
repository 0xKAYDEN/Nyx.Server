------------------------------------------------------------------------------------
--Name:		160919[简体征服][任务脚本]跨服精英PKS展示配饰NPC制作
--Creator: 	郑宗胜
--Created:	2016-09-19
------------------------------------------------------------------------------------
--请在双龙城（293,184）（293,180）（293,176）（293,172）放置火凤铜，银，金，圣杯npc 做展示（按顺序）
-- 并且将市场日常任务大使旁边的九天玄鸟移动到市场（217,173）
-- 在市场（190，180）（194,180）（198,180）（202,180）放置火凤铜，银，金，圣杯npc（按顺序）
 
-- NPC对白只做展示配饰属性，需要写出时效 神佑 基础属性 神练属性，试试一条属性写一行
-- NPC名字用火凤铜杯，火凤银杯，火凤金杯，火凤圣杯
-- NPC外形使用
-- SimpleObjID=262
-- StandByMotion=9990100100
-- BlazeMotion=9990100100
-- RestMotion=9990100100
-- Effect=zf2-e182
-- ASB=5
-- ADB=6
-- FixDir=0
-- NPC头像用对应圣杯的图标做头像

local tAccessoryNpcDialog_QiZhi = {}
tAccessoryNpcDialog_QiZhi[1] = {10,200}
tAccessoryNpcDialog_QiZhi[2] = {10,200}
tAccessoryNpcDialog_QiZhi[3] = {10,200}
tAccessoryNpcDialog_QiZhi[4] = {10,200}
tAccessoryNpcDialog_QiZhi[5] = {10,200}
tAccessoryNpcDialog_QiZhi[6] = {1000,3500}
tAccessoryNpcDialog_QiZhi[7] = {500,2000}
tAccessoryNpcDialog_QiZhi[8] = {500,2500}
tAccessoryNpcDialog_QiZhi[9] = {50,250}
tAccessoryNpcDialog_QiZhi[10] = {50,500}
tAccessoryNpcDialog_QiZhi[11] = {50,300}
tAccessoryNpcDialog_QiZhi[12] = {50,500}
tAccessoryNpcDialog_QiZhi[13] = {50,300}


function AccessoryNpcDialog_SureB(nB)
	
	local nAlocation = string.find(nB,"0")
	
	if nAlocation ~= 1 then
		return nB
	end
	
	nB = string.sub(nB,nAlocation+1,-1)	
	nAlocation = string.find(nB,"0")
	if nAlocation ~= 1 then
		return nB
	else
		return string.sub(nB,nAlocation+1,-1)	
	end
	
end

-- 获得玩家该门的分数
function AccessoryNpcDialog_CaculateQi(nA,nB)
	
	local nGrade = 0 
	local nMin = tAccessoryNpcDialog_QiZhi[nA][1]
	local nMax = tAccessoryNpcDialog_QiZhi[nA][2]
	

	nGrade = (nB - nMin)/(nMax - nMin)*100
	
	return(math.floor(nGrade))
	
end

--字符串切割炼气数据
function AccessoryNpcDialog_AllUserQie(nString)
	
	if #nString < 5 then
		return 0
	end
	
	local sA = nil 
	local sB = nil 
	local sAz 
	local nAlocation 
	local nAlocationB
	if #nString == 5 then
		
		sA = string.sub(nString,1,1)
		sAz = string.sub(nString,2,-1)
		sB = AccessoryNpcDialog_SureB(sAz)
		
	elseif #nString == 6 then
		
		sA = string.sub(nString,1,2)
		sAz = string.sub(nString,3,-1)
		sB = AccessoryNpcDialog_SureB(sAz)
		
	end
	
	if sA ~= nil and sB ~= nil then
		return AccessoryNpcDialog_CaculateQi(tonumber(sA),tonumber(sB))
	else
		return 0
	end

end

--总炼气数值
function AccessoryNpcDialog_AllUserQi(nNowUserId)
	
	local nUserId = nNowUserId or Get_UserId()
	local nSum = 0
	for i = 1,4,1 do
		for j = 1,4,1 do
			
			local nNum = Get_AssignTypeAndValue(i, j, nUserId)
			local nGrade = AccessoryNpcDialog_AllUserQie(tostring(nNum))
			
			nSum = nSum + nGrade
			
		end
	end
	return nSum
end

--总属性值
function AccessoryNpcDialog_AllUserShu(nNowUserId)
	
	local nStrength = Get_UserStrength()
	local nSpeed = Get_UserSpeed()
	local nHealth = Get_UserHealth()
	local nSoul = Get_UserSoul()
	local nPoint = Get_UserAddPoint()
	
	return (nStrength + nSpeed + nHealth + nSoul + nPoint)
end


--上线触发给玩家打上金币，天石log
function AccessoryNpcDialog_Loginlog()
	
	local nUserId = nNowUserId or Get_UserId()
	local nAccountId  = Get_UserAccountId(nUserId)
	local sUserName = Get_UserName(nUserId)
	local nMoneyNum = GetUserInt(nUserId,G_PLAYER_Money)
	local nEMoneyNum = Get_UserEMoney(nUserId)
	local nMonoEMoneyNum = Get_UserMonoEMoney(nUserId)
	
	--获取玩家战斗力
	local nBattleLevel = Get_UserBattleLevel()
	
	--获得等级
	local nLevel = Get_UserLevel(nUserId)
	
	--获得转世
	local nMete = Get_UserMetempsychosis(nUserId)
	
	--玩家职业
	local nPro = Get_NewUserProfession(nUserId)
	
	-- 玩家爵位
	local nPeerage = Get_UserPeerage(nUserId)
	
	-- 玩家vip等级
	local nVip = Get_UserVip(nUserId)
	
	-- 炼气总分
	local nUserQi = AccessoryNpcDialog_AllUserQi(nUserId)
	
	-- 仓库金币数量
	-- local nCankuMoney = GetUserInt(nUserId,G_PLAYER_StorageMoney)
	
	--自创武功总值
	local nZiChuangNum = Get_UserGongfuTotalPowerValue(nUserId)
	
	-- 内力值
	local nNeiliNum = Get_InnerStrengthTotalValue(nUserId)
	
	-- 灵兽等级
	local nMonsterLevel = Get_UserBeastsInt(1,nUserId)
	
	-- 总属性
	local nAllShu = AccessoryNpcDialog_AllUserShu(nUserId)
	
	-- 帮派id
	local nGuildId = Get_UserGuildId(nUserId)
	
	-- 帮派名字
	local sGuildName = "nil"
	local sGuildLeaderName = "nil"
	local nGuildRank = 0
	
	if nGuildId ~= 0 then
		sGuildName = Get_UserSynDicateName(nGuildId,nUserId)
		
		-- 帮主名称
		sGuildLeaderName =  Get_UserSynDicateLeaderName(nGuildId,nUserId)
		
		-- 帮派职位
		nGuildRank =  Get_UserGuildRank(nUserId)
	end
	
	-- 家族id
	local nFamilyId = Get_UserFamilyId(nUserId)
	
	local sAccessoryNpcDialog_Client = ""
	
	--判断是PC端还是cop
	if Sys_ChkUserNormalClient(nUserId) then
		sAccessoryNpcDialog_Client = "PC"
	else
		sAccessoryNpcDialog_Client = "COP"
	end
	
	--玩家姓名，玩家id，玩家账号，玩家金币，玩家天石，玩家赠点，玩家战斗力，玩家爵位，玩家等级，玩家转世，玩家职业，玩家vip,玩家练气总分，玩家自创武功总值，玩家内力值，玩家灵兽等级，玩家总属性，玩家帮派id，玩家帮派名字，玩家帮主名字，玩家帮派职位，玩家家族id，玩家登陆的端（COP或者PC）
	local sLogUserData = sUserName..'['.. nUserId ..']['.. nAccountId ..']['.. nMoneyNum ..'][' .. nEMoneyNum .. '][' .. nMonoEMoneyNum .. '][' .. nBattleLevel .. '][' .. nPeerage .. '][' .. nLevel .. '][' .. nMete .. '][' .. nPro .. '][' .. nVip .. '][' .. nUserQi .. '][' .. nZiChuangNum .. '][' .. nNeiliNum .. '][' .. nMonsterLevel .. '][' .. nAllShu .. '][' .. nGuildId .. '][' .. sGuildName .. '][' .. sGuildLeaderName .. '][' .. nGuildRank .. '][' .. nFamilyId .. ']['..sAccessoryNpcDialog_Client..']'

	local sLogFile = "gmlog/action_Goldstone_log"
	local sLogText = string.format("360,%s",sLogUserData)
	return SaveCustomLog(sLogFile,sLogText)
	
end


-------------------------------------NPC模板-----------------------------------------------
--火凤铜杯
tNpcFace[4349] = 315

tNpcGossip[19504] = tNpcGossip[19504] or DefaultNpc:new{}
tNpcGossip[19504]["OptionHidden"] = 1

tNpcGossip[19504]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
tNpcGossip[19504]["Text111"] = tAccessoryNpcDialog_Text[19504]["Text111"]
tNpcGossip[19504]["Text112"] = tAccessoryNpcDialog_Text[19504]["Text112"]
tNpcGossip[19504]["Text113"] = tAccessoryNpcDialog_Text[19504]["Text113"]
tNpcGossip[19504]["Text114"] = tAccessoryNpcDialog_Text[19504]["Text114"]
tNpcGossip[19504]["Text115"] = tAccessoryNpcDialog_Text[19504]["Text115"]
tNpcGossip[19504]["Text116"] = tAccessoryNpcDialog_Text[19504]["Text116"]
tNpcGossip[19504]["Text117"] = tAccessoryNpcDialog_Text[19504]["Text117"]

tNpcGossip[19504]["Text118"] = tAccessoryNpcDialog_Text[19504]["Text118"]
tNpcGossip[19504]["Text119"] = tAccessoryNpcDialog_Text[19504]["Text119"]


tNpcGossip[19504]["tOption1-1"] = {1}
tNpcGossip[19504]["Option1"] = tAccessoryNpcDialog_Text[19504]["Option1"] 

tNpcGossip[19508] = tNpcGossip[19504] or DefaultNpc:new{}


--火凤银杯
tNpcFace[4350] = 316

tNpcGossip[19505] = tNpcGossip[19505] or DefaultNpc:new{}
tNpcGossip[19505]["OptionHidden"] = 1

tNpcGossip[19505]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111}
tNpcGossip[19505]["Text111"] = tAccessoryNpcDialog_Text[19505]["Text111"]
tNpcGossip[19505]["Text112"] = tAccessoryNpcDialog_Text[19505]["Text112"]
tNpcGossip[19505]["Text113"] = tAccessoryNpcDialog_Text[19505]["Text113"]
tNpcGossip[19505]["Text114"] = tAccessoryNpcDialog_Text[19505]["Text114"]
tNpcGossip[19505]["Text115"] = tAccessoryNpcDialog_Text[19505]["Text115"]
tNpcGossip[19505]["Text116"] = tAccessoryNpcDialog_Text[19505]["Text116"]
tNpcGossip[19505]["Text117"] = tAccessoryNpcDialog_Text[19505]["Text117"]

tNpcGossip[19505]["Text118"] = tAccessoryNpcDialog_Text[19505]["Text118"]
tNpcGossip[19505]["Text119"] = tAccessoryNpcDialog_Text[19505]["Text119"]
tNpcGossip[19505]["Text1110"] = tAccessoryNpcDialog_Text[19505]["Text1110"]
tNpcGossip[19505]["Text1111"] = tAccessoryNpcDialog_Text[19505]["Text1111"]

tNpcGossip[19505]["tOption1-1"] = {1}
tNpcGossip[19505]["Option1"] = tAccessoryNpcDialog_Text[19505]["Option1"] 

tNpcGossip[19509] = tNpcGossip[19505] or DefaultNpc:new{}

--火凤银杯
tNpcFace[4351] = 317

tNpcGossip[19506] = tNpcGossip[19506] or DefaultNpc:new{}
tNpcGossip[19506]["OptionHidden"] = 1

tNpcGossip[19506]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112}
tNpcGossip[19506]["Text111"] = tAccessoryNpcDialog_Text[19506]["Text111"]
tNpcGossip[19506]["Text112"] = tAccessoryNpcDialog_Text[19506]["Text112"]
tNpcGossip[19506]["Text113"] = tAccessoryNpcDialog_Text[19506]["Text113"]
tNpcGossip[19506]["Text114"] = tAccessoryNpcDialog_Text[19506]["Text114"]
tNpcGossip[19506]["Text115"] = tAccessoryNpcDialog_Text[19506]["Text115"]
tNpcGossip[19506]["Text116"] = tAccessoryNpcDialog_Text[19506]["Text116"]
tNpcGossip[19506]["Text117"] = tAccessoryNpcDialog_Text[19506]["Text117"]

tNpcGossip[19506]["Text118"] = tAccessoryNpcDialog_Text[19506]["Text118"]
tNpcGossip[19506]["Text119"] = tAccessoryNpcDialog_Text[19506]["Text119"]
tNpcGossip[19506]["Text1110"] = tAccessoryNpcDialog_Text[19506]["Text1110"]
tNpcGossip[19506]["Text1111"] = tAccessoryNpcDialog_Text[19506]["Text1111"]
tNpcGossip[19506]["Text1112"] = tAccessoryNpcDialog_Text[19506]["Text1112"]

tNpcGossip[19506]["tOption1-1"] = {1}
tNpcGossip[19506]["Option1"] = tAccessoryNpcDialog_Text[19506]["Option1"] 

tNpcGossip[19510] = tNpcGossip[19506] or DefaultNpc:new{}


--火凤圣杯
tNpcFace[4352] = 318

tNpcGossip[19507] = tNpcGossip[19507] or DefaultNpc:new{}
tNpcGossip[19507]["OptionHidden"] = 1

tNpcGossip[19507]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112}
tNpcGossip[19507]["Text111"] = tAccessoryNpcDialog_Text[19507]["Text111"]
tNpcGossip[19507]["Text112"] = tAccessoryNpcDialog_Text[19507]["Text112"]
tNpcGossip[19507]["Text113"] = tAccessoryNpcDialog_Text[19507]["Text113"]
tNpcGossip[19507]["Text114"] = tAccessoryNpcDialog_Text[19507]["Text114"]
tNpcGossip[19507]["Text115"] = tAccessoryNpcDialog_Text[19507]["Text115"]
tNpcGossip[19507]["Text116"] = tAccessoryNpcDialog_Text[19507]["Text116"]
tNpcGossip[19507]["Text117"] = tAccessoryNpcDialog_Text[19507]["Text117"]

tNpcGossip[19507]["Text118"] = tAccessoryNpcDialog_Text[19507]["Text118"]
tNpcGossip[19507]["Text119"] = tAccessoryNpcDialog_Text[19507]["Text119"]
tNpcGossip[19507]["Text1110"] = tAccessoryNpcDialog_Text[19507]["Text1110"]
tNpcGossip[19507]["Text1111"] = tAccessoryNpcDialog_Text[19507]["Text1111"]
tNpcGossip[19507]["Text1112"] = tAccessoryNpcDialog_Text[19507]["Text1112"]

tNpcGossip[19507]["tOption1-1"] = {1}
tNpcGossip[19507]["Option1"] = tAccessoryNpcDialog_Text[19507]["Option1"] 

tNpcGossip[19511] = tNpcGossip[19507] or DefaultNpc:new{}

--上线触发给玩家打上金币，天石log
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,AccessoryNpcDialog_Loginlog)