------------------------------------------------------------------------------------
--Name:		170117[简体征服][活动脚本]夺宝奇兵版本红包活动制作
--Creator:		陈磊
--Created:		2017/01/17
------------------------------------------------------------------------------------

--命名前缀
--tSpringRedPackets_


------------------------------------------------------------------------------------
-- local tSpringRedPackets_Cont = {}
	-- tSpringRedPackets_Cont["ActivityTime"] = "2017-01-19 00:00 2017-02-22 23:59"
	-- tSpringRedPackets_Cont["EmoneyLog"] = {}
	-- tSpringRedPackets_Cont["EmoneyLog"][3302156] = "250	4043	0	0	270	"
	-- tSpringRedPackets_Cont["EmoneyLog"][3302157] = "250	4043	0	0	2700	"
	
	-- 口令输入长度
	-- tSpringRedPackets_Cont["AcceptLen"] = 20
	
-- local tSpringRedPackets_RedPackets = {}
	-- tSpringRedPackets_RedPackets[3302156] = {}
	-- tSpringRedPackets_RedPackets[3302156]["RedType"] = 4 
	-- tSpringRedPackets_RedPackets[3302156]["nType"] = 0
	-- tSpringRedPackets_RedPackets[3302156]["nMoneyType"] = 3
	-- tSpringRedPackets_RedPackets[3302156]["nMoneyNum"] = 270
	-- tSpringRedPackets_RedPackets[3302156]["nManyNum"] = 10
	
	-- tSpringRedPackets_RedPackets[3302157] = {}
	-- tSpringRedPackets_RedPackets[3302157]["RedType"] = 4 
	-- tSpringRedPackets_RedPackets[3302157]["nType"] = 0
	-- tSpringRedPackets_RedPackets[3302157]["nMoneyType"] = 3
	-- tSpringRedPackets_RedPackets[3302157]["nMoneyNum"] = 2700
	-- tSpringRedPackets_RedPackets[3302157]["nManyNum"] = 30
-- 发送红包
-- function SpringRedPackets(nItemId)
	-- if not Sys_ChkFullTime(tSpringRedPackets_Cont["ActivityTime"]) then
		-- if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
			-- User_TalkChannel2005(tSpringRedPackets_RedPackets_Text["OutTime"])
			-- return 
		-- end
	-- end
	-- local  sUserName = Get_UserName()
	-- local nRedType = tSpringRedPackets_RedPackets[nItemId]["RedType"]
	-- local nType = tSpringRedPackets_RedPackets[nItemId]["nType"]
	-- local nMoneyType = tSpringRedPackets_RedPackets[nItemId]["nMoneyType"]
	-- local nMoneyNum = tSpringRedPackets_RedPackets[nItemId]["nMoneyNum"]
	-- local nManyNum = tSpringRedPackets_RedPackets[nItemId]["nManyNum"]
	-- local sWord = Get_SysAcceptStr()
	-- if sWord == nil then 
		-- local nIndex  =math.random(1,8)
		-- sWord = tSpringRedPackets_RedPackets_Text["Pwd"][nIndex]
	-- end 
	-- if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
		-- Sys_SendRedEnvelops(nRedType,nType,nMoneyType,nMoneyNum,nManyNum,sUserName,sWord,sWord)
		-- Sys_SaveEmoneyBuy(tSpringRedPackets_Cont["EmoneyLog"][nItemId])
		-- local sUserName = Get_UserName()
		-- Sys_SystemBroadcast(string.format(tSpringRedPackets_RedPackets_Text["World"][nItemId],sUserName))
	-- end 
-- end 

-- 输入口令红包
-- function EnterPwd(nItemId)
	-- if not Sys_ChkFullTime(tSpringRedPackets_Cont["ActivityTime"]) then
		-- if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
			-- User_TalkChannel2005(tSpringRedPackets_RedPackets_Text["OutTime"]) 
		-- end
		-- return
	-- end
	-- 输入密码
	-- Sys_DialogText(tSpringRedPackets_RedPackets_Text["EnterPwd"] )
	-- Sys_DialogOptEdit("",tSpringRedPackets_Cont["AcceptLen"],"SpringRedPackets</N>"..nItemId)
	-- Sys_DialogEnd()
-- end 

-- function JudgeTime(nItemId) 
	-- if not Sys_ChkFullTime(tSpringRedPackets_Cont["ActivityTime"]) then
		-- if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
			-- User_TalkChannel2005(tSpringRedPackets_RedPackets_Text["OutTime"])
		-- end
		-- return 
	-- end
	-- LinkItemGossipFunc_New(nItemId,"2-1")
-- end 


-- -打开天石商店
-- function SpringRedPackets_OpenShop()
	-- if Sys_ChkFullTime(tSpringRedPackets_Cont["ActivityTime"]) then
		-- User_OpenDialog()
	-- end
-- end



------------------------------物品部分--------------------------------------------
-- tItem[3302156] = tItem[3302156] or {}
-- tItem[3302156]["Function"] = function (nItemId)
	-- SpringRedPackets(nItemId)
-- end

-- tItem[3302157] = tItem[3302157] or {}
-- tItem[3302157]["Function"] = function (nItemId)
	-- EnterPwd(nItemId)
-- end
-- tItem[3302157]["DialogueText"] =tSpringRedPackets_RedPackets_Text[3302157]
-- tItem[3302157]["Text2-1"] = {211}
-- tItem[3302157]["tOption2-1"] = {1,2}
-- tItem[3302157]["OptionFunc1"] = "EnterPwd</N>3302157"
-- tItem[3302157]["Function"] = function (nItemId)
	-- EnterPwd(nItemId)
-- end

------------------------------NPC部分--------------------------------------------
-- 财运童子
-- tNpcFace[4656] = 36
-- tNpcGossip[20329] = tNpcGossip[20329] or DefaultNpc:new{}
-- tNpcGossip[20329]["OptionHidden"] = 1
-- tNpcGossip[20329]["DialogueText"] = tSpringRedPackets_RedPackets_Text[20329]

-- tNpcGossip[20329]["Text1-1"] = {111,112,113,114,115}
-- tNpcGossip[20329]["tOption1-1"] = {1}
-- tNpcGossip[20329]["ChkFunc1-1"] = function ()
	-- return CommonFunc_GetBeforeActivityTime(tSpringRedPackets_Cont["ActivityTime"])
-- end

-- tNpcGossip[20329]["Text1-2"] = {121,122,123,124,125}
-- tNpcGossip[20329]["tOption1-2"] = {2,3,4,5,6}
-- tNpcGossip[20329]["OptionPoint2"] = "2-1"
-- tNpcGossip[20329]["OptionPoint3"] = "3-1"
-- tNpcGossip[20329]["OptionPoint4"] = "4-1"
-- tNpcGossip[20329]["OptionPoint5"] = "5-1"
-- tNpcGossip[20329]["ChkFunc1-2"] = function ()
	-- return Sys_ChkFullTime(tSpringRedPackets_Cont["ActivityTime"])
-- end

-- tNpcGossip[20329]["Text1-3"] = {131,132,133}
-- tNpcGossip[20329]["tOption1-3"] = {12}

-- tNpcGossip[20329]["Text2-1"] = {211,212,213,214,215,216,217}
-- tNpcGossip[20329]["tOption2-1"] = {7}
-- tNpcGossip[20329]["OptionFunc7"] = "Sys_GotoSomeWhere</N>286</N>369</N>1002"

-- tNpcGossip[20329]["Text3-1"] = {311,312,313,314,315,316,317}
-- tNpcGossip[20329]["tOption3-1"] = {8}

-- tNpcGossip[20329]["Text4-1"] = {411,412,413,414,415,416,417}
-- tNpcGossip[20329]["tOption4-1"] = {9,10}
-- tNpcGossip[20329]["OptionFunc9"] = "NpcPosition_PathFind</N>10770"
-- tNpcGossip[20329]["OptionFunc10"] = "NpcPosition_PathFind</N>19974"

-- tNpcGossip[20329]["Text5-1"] = {511,512,513,514,515,516,517,518}
-- tNpcGossip[20329]["tOption5-1"] = {11}
-- tNpcGossip[20329]["OptionFunc11"] = "NpcPosition_PathFind</N>9686"
-- tNpcGossip[20330] = tNpcGossip[20329]

-- 聚福宝案玩法讲解员
tNpcFace[5189] = 175
tNpcGossip[20331] = tNpcGossip[20331] or DefaultNpc:new{}
tNpcGossip[20331]["OptionHidden"] = 1
tNpcGossip[20331]["DialogueText"] = tSpringRedPackets_RedPackets_Text[20331]

tNpcGossip[20331]["Text1-1"] = {111,112}
tNpcGossip[20331]["tOption1-1"] = {1}
tNpcGossip[20331]["OptionFunc1"] = "Sys_GotoSomeWhere</N>201</N>173</N>3053"
tNpcGossip[20331]["OptionFunc2"] = "SpringRedPackets_OpenShop"

-- 奖池升级中
-- tNpcGossip[20332] = tNpcGossip[20332] or DefaultNpc:new{}
-- tNpcGossip[20332]["OptionHidden"] = 1
-- tNpcGossip[20332]["DialogueText"] = tSpringRedPackets_RedPackets_Text[20332]

-- tNpcGossip[20332]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
-- tNpcGossip[20332]["tOption1-1"] = {1}