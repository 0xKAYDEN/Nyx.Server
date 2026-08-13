------------------------------------------------------------------------------------
--Name:		180720[英文征服][活动脚本]7月新服活动制作 --货币商人
--Purpose:	7月新服活动制作
--Creator: 	傅伟龙
--Created:	2018/06/20
------------------------------------------------------------------------------------
--前缀Currencytraders

------------------------------------------------------------------------------------
--基础数据
local tCurrencytraders_Cont = {}

--活动时间
tCurrencytraders_Cont["BefTime"] = tActivityTime["Currencytraders"]["BefTime"]
tCurrencytraders_Cont["ActTime"] = tActivityTime["Currencytraders"]["ActTime"]

tCurrencytraders_Cont["WebLink"] = {}

tCurrencytraders_Cont["WebLink"][1] = "https://www.facebook.com/pg/MinoAboGhaly/posts/?ref=page_internal"
tCurrencytraders_Cont["WebLink"][2] = "https://coevent.99.com/newserver201807/"
tCurrencytraders_Cont["WebLink"][3] = "https://coevent.99.com/animacpmarket/ "
tCurrencytraders_Cont["WebLink"][4] = "https://co.99.com/guide/event/2019/serveranima/ "  --未定
tCurrencytraders_Cont["WebLink"][5] = "https://coevent.99.com/nostalgiacreditrebate/"
tCurrencytraders_Cont["WebLink"][6] = "https://coevent.99.com/nostalgiacreditrebate/client/"

tCurrencytraders_Cont["Map"]={}
tCurrencytraders_Cont["Map"][1] = {}
tCurrencytraders_Cont["Map"][1]["MapId"] = 1002
tCurrencytraders_Cont["Map"][1]["PositionX"] = 340
tCurrencytraders_Cont["Map"][1]["PositionY"] = 442
tCurrencytraders_Cont["Map"][1]["Range"] = 4

tCurrencytraders_Cont["Map"][2] = {}
tCurrencytraders_Cont["Map"][2]["MapId"] = 1002
tCurrencytraders_Cont["Map"][2]["PositionX"] = 344
tCurrencytraders_Cont["Map"][2]["PositionY"] = 442
tCurrencytraders_Cont["Map"][2]["Range"] = 4


------------------------npc逻辑-----------------------------------
function Currencytraders_WebLink(nIndex)
	local sWebAddress = tCurrencytraders_Cont["WebLink"][nIndex]
	User_SendWebPage(sWebAddress)
end

--传送
function  Currencytraders_ChgMap(nIndex,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nMapId = tCurrencytraders_Cont["Map"][nIndex]["MapId"]
	local nPositionX = tCurrencytraders_Cont["Map"][nIndex]["PositionX"]
	local nPositionY = tCurrencytraders_Cont["Map"][nIndex]["PositionY"]
	local nRange = tCurrencytraders_Cont["Map"][nIndex]["Range"]
	User_UserRandBoundTrans(nMapId,nPositionX,nPositionY,nRange,nRange,1,nUserId)
end

function Currencytraders_WebEmbedLink(nIndex)
	local sWebPage = tCurrencytraders_Cont["WebLink"][nIndex]
	User_SendWebDialog(sWebPage)
end
---------------------------------------NPC配置---------------------------------------------
tNpcFace[6151] = 12
tNpcGossip[23095] = tNpcGossip[23095] or DefaultNpc:new{}
tNpcGossip[23095]["OptionHidden"] = 1
tNpcGossip[23095]["DialogueText"] = tCurrencytraders_Text[23095]
-- 活动前
tNpcGossip[23095]["Text1-1"] = {111,112,113}
tNpcGossip[23095]["tOption1-1"] = {111}
tNpcGossip[23095]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tCurrencytraders_Cont["BefTime"])
end

--活动中
tNpcGossip[23095]["Text1-2"] = {121,122,123,124}
tNpcGossip[23095]["tOption1-2"] = {121}
tNpcGossip[23095]["OptionFunc121"] = "Currencytraders_WebLink</N>1"
tNpcGossip[23095]["OptionFunc122"] = "Currencytraders_WebLink</N>2"

tNpcGossip[23128] = tNpcGossip[23095]


tNpcFace[1278] = 241
tNpcGossip[23118] = tNpcGossip[23118] or DefaultNpc:new{}
tNpcGossip[23118]["OptionHidden"] = 1
tNpcGossip[23118]["DialogueText"] = tCurrencytraders_Text[23118]
-- 活动前
tNpcGossip[23118]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[23118]["tOption1-1"] = {111}
tNpcGossip[23118]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tCurrencytraders_Cont["BefTime"])
end

--活动中
tNpcGossip[23118]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[23118]["tOption1-2"] = {121,122}
tNpcGossip[23118]["OptionFunc121"] = "Currencytraders_WebLink</N>3"
tNpcGossip[23118]["OptionFunc122"] = "Currencytraders_WebLink</N>4"

tNpcFace[1279] = 238
tNpcGossip[23129] = tNpcGossip[23129] or DefaultNpc:new{}
tNpcGossip[23129]["OptionHidden"] = 1
tNpcGossip[23129]["DialogueText"] = tCurrencytraders_Text[23129]

--活动中
tNpcGossip[23129]["Text1-1"] = {111,112,113,114}
tNpcGossip[23129]["tOption1-1"] = {111,113,114}
tNpcGossip[23129]["OptionFunc111"] = "Currencytraders_ChgMap</N>1"
tNpcGossip[23129]["OptionFunc112"] = "Currencytraders_WebLink</N>2"
tNpcGossip[23129]["OptionFunc113"] = "Currencytraders_WebLink</N>5"

tNpcGossip[23130] = tNpcGossip[23129]
tNpcGossip[23131] = tNpcGossip[23129]
tNpcGossip[23142] = tNpcGossip[23129]
tNpcGossip[23143] = tNpcGossip[23129]
tNpcGossip[23144] = tNpcGossip[23129]


--活动中
tNpcFace[1279] = 238
tNpcGossip[23145] = tNpcGossip[23145] or DefaultNpc:new{}
tNpcGossip[23145]["OptionHidden"] = 1
tNpcGossip[23145]["DialogueText"] = tCurrencytraders_Text[23145]

tNpcGossip[23145]["Text1-1"] = {111}
tNpcGossip[23145]["tOption1-1"] = {111}
tNpcGossip[23145]["OptionFunc111"] = "Currencytraders_WebEmbedLink</N>6"