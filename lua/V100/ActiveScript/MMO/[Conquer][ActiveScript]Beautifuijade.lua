-----------------------------------------------------------------------------------------------------
--Name:		161109[简体征服][活动脚本]趣味积分活动总NPC
--Creator: 	翁增锐
--Created:		2016/11/09
------------------------------------------------------------------------------------------------------
-- 命名前缀
--BeautifulJade_
--背包信掩码：152 60
--lua.ini:40383

--------------------------------------数据配置--------------------------------------
local tBeautifulJade_Data = {}
	tBeautifulJade_Data["ActivetyTime"] = tActivityTime["LinLang"]["ActivityTime"]
	tBeautifulJade_Data["BeforeTime"] = tActivityTime["LinLang"]["BeforeTime"]
	tBeautifulJade_Data["ExchangeTime"] = tActivityTime["LinLang"]["ExchangeTime"]
	tBeautifulJade_Data["Needlev"] = 80

-------------------------------------逻辑部分------------------------------------
--打开兑换商店
function BeautifulJade_OpenShop(nNpcId)
	User_OpenExchangeShop(nNpcId)
end
	
--自动寻路，找对应的活动NPC
function BeautifulJade_ToActivityNPC(nNpcId)
	NpcPosition_PathFind(nNpcId)
	--User_UserRandBoundTrans(nMapId,nPosX,nPosY,nRange,nRange,1)
end

--活动后，兑换时间已过
function BeautifulJade_TimeOut()
	if not Sys_ChkFullTime(tBeautifulJade_Data["ExchangeTime"]) then
		return false
	else
		return true
	end
end
----------------------------------NPC部分---------------------------------------------
--【琳琅阁主】白宝山
tNpcFace[4440] = 247
tNpcGossip[19980] = tNpcGossip[19980] or DefaultNpc:new{}
tNpcGossip[19980]["OptionHidden"] = 1
tNpcGossip[19980]["DialogueText"] = tBeautifulJade_Text[19980]

--活动前
tNpcGossip[19980]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[19980]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tBeautifulJade_Data["BeforeTime"])
end
tNpcGossip[19980]["tOption1-1"] = {111}


--活动后
tNpcGossip[19980]["Text1-2"] = {121,122,123}
tNpcGossip[19980]["ChkFunc1-2"]= function()
	return not Sys_ChkFullTime(tBeautifulJade_Data["ActivetyTime"])
end
tNpcGossip[19980]["tOption1-2"] = {121,122}
tNpcGossip[19980]["OptionFunc121"]="BeautifulJade_OpenShop</N>19980"
tNpcGossip[19980]["OptionChkFunc121"] = BeautifulJade_TimeOut

--活动中(等级不满足条件)
tNpcGossip[19980]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[19980]["ChkFunc1-3"]= function()
	local nLevel = tBeautifulJade_Data["Needlev"]
	return Sys_ChkFullTime(tBeautifulJade_Data["ActivetyTime"]) and not User_JudgeLevelAndMetempsychosis(nLevel,0)
end
tNpcGossip[19980]["tOption1-3"] = {131}

--活动中，满足条件
tNpcGossip[19980]["Text1-4"] = {141,142,143,144,145}
tNpcGossip[19980]["ChkFunc1-4"]= function()
	local nLevel = tBeautifulJade_Data["Needlev"]
	return Sys_ChkFullTime(tBeautifulJade_Data["ActivetyTime"]) and User_JudgeLevelAndMetempsychosis(nLevel,0)
end
--tNpcGossip[19980]["tOption1-4"] = {141,142,143,144,145,146,147,148}
tNpcGossip[19980]["tOption1-4"] = {141,142,143,145,146,148}
tNpcGossip[19980]["OptionFunc141"]="BeautifulJade_OpenShop</N>19980"
tNpcGossip[19980]["OptionPoint142"]="1-5"
tNpcGossip[19980]["OptionPoint143"]="1-6"
--tNpcGossip[19980]["OptionPoint144"]="1-7"
tNpcGossip[19980]["OptionPoint145"]="1-8"
tNpcGossip[19980]["OptionPoint146"]="1-9"
--tNpcGossip[19980]["OptionPoint147"]="2-1"
tNpcGossip[19980]["OptionPoint148"]="2-2"


--接2、最美家园
tNpcGossip[19980]["Text1-5"] = {151,152,153,154}
tNpcGossip[19980]["tOption1-5"] = {151,152,153}
tNpcGossip[19980]["OptionFunc151"]="BeautifulJade_ToActivityNPC</N>19795"
tNpcGossip[19980]["OptionPoint152"]="1-4"

--接3、跨服骑马大赛
tNpcGossip[19980]["Text1-6"] = {161,162,163,164,165}
tNpcGossip[19980]["tOption1-6"] = {161,162,163}
tNpcGossip[19980]["OptionFunc161"]="BeautifulJade_ToActivityNPC</N>19990"
tNpcGossip[19980]["OptionPoint162"]="1-4"

--接4、智力竞赛
--tNpcGossip[19980]["Text1-7"] = {171,172,173,174}
--tNpcGossip[19980]["tOption1-7"] = {171,172,173}
--tNpcGossip[19980]["OptionFunc171"]="BeautifulJade_ToActivityNPC</N>19803"
--tNpcGossip[19980]["OptionPoint172"]="1-4"

--接5、神奇的画影石
tNpcGossip[19980]["Text1-8"] = {181,182,183,184}
tNpcGossip[19980]["tOption1-8"] = {181,182,183}
tNpcGossip[19980]["OptionFunc181"]="BeautifulJade_ToActivityNPC</N>19809"
tNpcGossip[19980]["OptionPoint182"]="1-4"

--接6、进击的萌兽
tNpcGossip[19980]["Text1-9"] = {191,192,193,194,195}
tNpcGossip[19980]["tOption1-9"] = {191,192,193}
tNpcGossip[19980]["OptionFunc191"]="BeautifulJade_ToActivityNPC</N>19808"
tNpcGossip[19980]["OptionPoint192"]="1-4"

--接7、大富翁旅行记
tNpcGossip[19980]["Text2-1"] = {211,212,213,214}
tNpcGossip[19980]["tOption2-1"] = {211,212,213}
--tNpcGossip[19980]["OptionFunc211"]="BeautifulJade_ToActivityNPC</N>19804"
tNpcGossip[19980]["OptionPoint212"]="1-4"

--接8、我想要更多积分券
tNpcGossip[19980]["Text2-2"] = {221,222,223,224}
tNpcGossip[19980]["tOption2-2"] = {221}


























