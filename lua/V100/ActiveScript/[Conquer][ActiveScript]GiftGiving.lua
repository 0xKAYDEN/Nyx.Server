---Name:161201[英文征服][活动脚本]PC玩家玩移动新服送好礼
--Creator: 		杨晓晓
--Created:		2016-12-01
------------------------------------------------------------------------------------------
--命名前缀
--tGiftGiving_
---------------------------------------------

--logid : 12000590
--掩码说明;
--stc(153,69) 领取新服礼包

--常量表配置
local tGiftGiving_Cont = {}
	--玩家等级要求
	tGiftGiving_Cont["Metempsychosis"] = 0
	tGiftGiving_Cont["Level"] = 101
	--背包空间
	tGiftGiving_Cont["RewardBagSpace"] = 3
	tGiftGiving_Cont["BagSpace"] = 1
	tGiftGiving_Cont["BagSpace1"] = 4
	--输入字符长度
	tGiftGiving_Cont["Length"] = 16
	--礼包ID
	tGiftGiving_Cont["LiBaoID"] = 3301651
	--激活码
	tGiftGiving_Cont["Code"] = "ILOVECO"
	--活动时间
	tGiftGiving_Cont["ActivityTime"] = tActivityTime["GiftGiving"]["ActivityTime"]
	
--掩码标记
local tGiftGiving_Stc = {}
	tGiftGiving_Stc["EventType"] = 153
	tGiftGiving_Stc["DataType"] = 69
	
--奖励模板
local tGiftGiving_Reward = {}
--提示礼包
	tGiftGiving_Reward[3301652] = {}
	tGiftGiving_Reward[3301652]["RewardItem"] = {}
	tGiftGiving_Reward[3301652]["RewardItem"][1] = {}
	tGiftGiving_Reward[3301652]["RewardItem"][1]["Id"] = 730004   ---+4赤练石
	tGiftGiving_Reward[3301652]["RewardItem"][1]["Attr"] = "0 1 3" 
	tGiftGiving_Reward[3301652]["RewardItem"][2] = {}
	tGiftGiving_Reward[3301652]["RewardItem"][2]["Id"] = 3301665 ---15000气力值
	tGiftGiving_Reward[3301652]["RewardItem"][2]["Attr"] = "0 1" 
	tGiftGiving_Reward[3301652]["RewardItem"][3] = {}
	tGiftGiving_Reward[3301652]["RewardItem"][3]["Id"] = 188495  ----外套（烈火柔情）
	tGiftGiving_Reward[3301652]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 1" 
	tGiftGiving_Reward[3301652]["RewardItem"][4] = {}
	tGiftGiving_Reward[3301652]["RewardItem"][4]["Id"] = 200517 ---天蝎外套
	tGiftGiving_Reward[3301652]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 1" 
	-- tGiftGiving_Reward[3301652]["RewardItem"][5] = {}
	-- tGiftGiving_Reward[3301652]["RewardItem"][5]["Id"] = 3301653  ---史诗武器机会券
	-- tGiftGiving_Reward[3301652]["RewardItem"][5]["Attr"] = "0 1" 
	tGiftGiving_Reward[3301652]["RewardEMoneyMono"] = {}
	tGiftGiving_Reward[3301652]["RewardEMoneyMono"]["Value"] = 1500   ---1500赠品天石 
	tGiftGiving_Reward[3301652]["LogId"] = 12000590
	tGiftGiving_Reward[3301652]["DeleteItem"] = {}
	tGiftGiving_Reward[3301652]["DeleteItem"][1] = {}
	tGiftGiving_Reward[3301652]["DeleteItem"][1]["Id"] = 3301652
--史诗武器机会券礼包 
--1%开出史诗武器兑换券
	tGiftGiving_Reward[3301653] = {}
	tGiftGiving_Reward[3301653]["ItemChanceSum"] = 10000
	tGiftGiving_Reward[3301653][1] = {}
	tGiftGiving_Reward[3301653][1]["RandomItemChanceType"] = 2
	tGiftGiving_Reward[3301653][1]["ItemChance"] = 100
	tGiftGiving_Reward[3301653][1]["RewardItem"] = {}
	tGiftGiving_Reward[3301653][1]["RewardItem"][1] = {}
	tGiftGiving_Reward[3301653][1]["RewardItem"][1]["Id"] = 3301654
	tGiftGiving_Reward[3301653][1]["RewardItem"][1]["Attr"] = "" 
	tGiftGiving_Reward[3301653][1]["LogId"] = 12000590
--99%开出龙珠（赠）*3
	tGiftGiving_Reward[3301653][2] = {}
	tGiftGiving_Reward[3301653][2]["RandomItemChanceType"] = 2
	tGiftGiving_Reward[3301653][2]["ItemChance"] = 9900
	tGiftGiving_Reward[3301653][2]["RewardItem"] = {}
	tGiftGiving_Reward[3301653][2]["RewardItem"][1] = {}
	tGiftGiving_Reward[3301653][2]["RewardItem"][1]["Id"] = 1088000
	tGiftGiving_Reward[3301653][2]["RewardItem"][1]["Attr"] = "0 3 3" 
	tGiftGiving_Reward[3301653][2]["LogId"] = 12000590
--15000气力值礼包
	tGiftGiving_Reward[3301665] = {}
	tGiftGiving_Reward[3301665]["RewardStrengthValue"] = {}
	tGiftGiving_Reward[3301665]["RewardStrengthValue"]["Value"] = 15000
	tGiftGiving_Reward[3301665]["LogId"] = 12000590
	tGiftGiving_Reward[3301665]["DeleteItem"] = {}
	tGiftGiving_Reward[3301665]["DeleteItem"][1] = {}
	tGiftGiving_Reward[3301665]["DeleteItem"][1]["Id"] = 3301665
--获得激活码
	tGiftGiving_Reward["ItemType"] = {}
	tGiftGiving_Reward["ItemType"]["RewardItem"] = {}
	tGiftGiving_Reward["ItemType"]["RewardItem"][1] = {}
	tGiftGiving_Reward["ItemType"]["RewardItem"][1]["Id"] = 3301651
	tGiftGiving_Reward["ItemType"]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" 
--获得奖励礼包
	tGiftGiving_Reward["ItemType1"] = {}
	tGiftGiving_Reward["ItemType1"]["RewardItem"] = {}
	tGiftGiving_Reward["ItemType1"]["RewardItem"][1] = {}
	tGiftGiving_Reward["ItemType1"]["RewardItem"][1]["Id"] = 3301652
	tGiftGiving_Reward["ItemType1"]["RewardItem"][1]["Attr"] = "0 1" 
------------------------------------------逻辑部分---------------------------------------------------
--打开随机礼包
function GiftGiving_Open(nItemId)
	local nUserId = Get_UserId()
	local nSpace = tGiftGiving_Cont["RewardBagSpace"]
	--判断背包空间
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(tGiftGiving_Text["NoSpace"])
		return
	end
	-- 随机几等奖
	 if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_Random(tGiftGiving_Reward,nItemId)
	end
end

--领取新服福利激活码
function GiftGiving_ReceieveJiHuoMa(nItemId,nNpcId)
	local nUserId = Get_UserId()
	local nSpace = tGiftGiving_Cont["BagSpace"]
	--检查是否有激活码
	 if Item_ChkItem(nItemId) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return 
	 end 
	 --判断背包空间
	 if not User_CheckLeftSpace(tGiftGiving_Cont["BagSpace"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	RewardTemplate_UseItem(tGiftGiving_Reward["ItemType"])
	LinkNpcGossipFunc_New(nNpcId,"2-1")
	User_TalkChannel2005(tGiftGiving_Text["GetJiHuoMa"])
end

--新服福利大使对白
function GiftGiving_Talk(nNpcId) 
	--输入激活码
	Sys_DialogText(tGiftGiving_Text[nNpcId]["Text111"])
	Sys_DialogText(tGiftGiving_Text[nNpcId]["Text112"])
	Sys_DialogOptEdit(tGiftGiving_Text[nNpcId]["InPut"],tGiftGiving_Cont["Length"],"GiftGiving_ReceieveGift</N>"..nNpcId.."</N>"..3301652)
	Sys_DialogOption(tGiftGiving_Text[nNpcId]["Option2"],"</F>GiftGiving_Link</N>20018")
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

--接对话
function GiftGiving_Link(nNpcId)
	--判断玩家等级
	if  User_JudgeLevelAndMetempsychosis(tGiftGiving_Cont["Level"],tGiftGiving_Cont["Metempsychosis"]) then
		Sys_MsgBox(tGiftGiving_Text["NoLevel"])
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"6-1")
end

--激活码领取礼包
function GiftGiving_ReceieveGift(nNpcId,nItemId) 
	local sWord = Get_SysAcceptStr()
	local nUserId = Get_UserId()
	--判断玩家等级
	if  User_JudgeLevelAndMetempsychosis(tGiftGiving_Cont["Level"],tGiftGiving_Cont["Metempsychosis"]) then
		Sys_MsgBox(tGiftGiving_Text["NoLevel"])
		return
	end
	--判断激活码是否正确
	if sWord ~= tGiftGiving_Cont["Code"] then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end 
	--检查是否领取过礼包
	 if Task_ChkStcValue(tGiftGiving_Stc["EventType"],tGiftGiving_Stc["DataType"],"==",1) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return 
	 end 
	--判断背包空间
	 if not User_CheckLeftSpace(tGiftGiving_Cont["BagSpace"]) then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end
	Task_SetStatistic(tGiftGiving_Stc["EventType"],tGiftGiving_Stc["DataType"],1,1)
	Task_SetStcTimestamp(tGiftGiving_Stc["EventType"],tGiftGiving_Stc["DataType"],0)
	if Item_ChkItem(tGiftGiving_Cont["LiBaoID"]) and Item_DelItem(tGiftGiving_Cont["LiBaoID"]) then 
	 end 
	 RewardTemplate_UseItem(tGiftGiving_Reward["ItemType1"])
	 LinkNpcGossipFunc_New(nNpcId,"2-1")
end

--网址
function GiftGiving_LinkWeb(nIndex)
	if nIndex == 1 then
		User_SendWebPage(tGiftGiving_Text[20017]["AndroidWeb"])
		return
	end 
	User_SendWebPage(tGiftGiving_Text[20017]["IosWeb"])
end
--------------------------------------NPC部分-------------------------------------------
--新服上线通报专员（PC端）
tNpcFace[4526] = 119
tNpcGossip[20017] = tNpcGossip[20017] or DefaultNpc:new{}
tNpcGossip[20017]["OptionHidden"] = 1
tNpcGossip[20017]["DialogueText"] = tGiftGiving_Text[20017] 
tNpcGossip[20017]["Text1-1"] = {111,112}
tNpcGossip[20017]["tOption1-1"] = {1,2,3}
tNpcGossip[20017]["Text2-1"] = {211,212}
tNpcGossip[20017]["tOption2-1"] = {4}
tNpcGossip[20017]["Text3-1"] = {311}
tNpcGossip[20017]["tOption3-1"] = {5}
tNpcGossip[20017]["Text4-1"] = {411}
tNpcGossip[20017]["tOption4-1"] = {6}
tNpcGossip[20017]["OptionFunc1"] = "GiftGiving_ReceieveJiHuoMa</N>3301651</N>20017"
tNpcGossip[20017]["OptionFunc2"] = "GiftGiving_LinkWeb</N>1"
tNpcGossip[20017]["OptionFunc3"] = "GiftGiving_LinkWeb</N>2"

--NPC
tNpcFace[4527] = 1
tNpcGossip[20018] = tNpcGossip[20018] or DefaultNpc:new{}
tNpcGossip[20018]["OptionHidden"] = 1
tNpcGossip[20018]["DialogueText"] = tGiftGiving_Text[20018] 
tNpcGossip[20018]["Text2-1"] = {211}
tNpcGossip[20018]["tOption2-1"] = {3}
tNpcGossip[20018]["Text3-1"] = {311}
tNpcGossip[20018]["tOption3-1"] = {4}
tNpcGossip[20018]["Text4-1"] = {411}
tNpcGossip[20018]["tOption4-1"] = {6}
tNpcGossip[20018]["Text5-1"] = {511}
tNpcGossip[20018]["tOption5-1"] = {5}
tNpcGossip[20018]["Text6-1"] = {611,612}
tNpcGossip[20018]["tOption6-1"] = {7,8}
tNpcGossip[20018]["Text7-1"] = {711}
tNpcGossip[20018]["tOption7-1"] = {3}
tNpcGossip[20018]["Text8-1"] = {811}
tNpcGossip[20018]["tOption8-1"] = {9}
tNpcGossip[20018]["OptionPoint7"] = "7-1"
tNpcGossip[20018]["OptionPoint8"] = "8-1"
tNpcGossip[20018]["OptionPoint9"] = "6-1"

------------------------------------------物品部分---------------------------------------------------
--史诗武器机会券礼包 
tItem[3301653] = tItem[3301653] or {}
tItem[3301653]["Function"] = function(nItemId,sItemName)
	GiftGiving_Open(nItemId)
end

--提示礼包
tItem[3301652] = tItem[3301652] or {}
tItem[3301652]["Function"] = function(nItemId,sItemName)
	--判断背包空间
	 if not User_CheckLeftSpace(tGiftGiving_Cont["BagSpace1"]) then
		Sys_MsgBox(tGiftGiving_Text["NoSpace1"])
		return
	end
	RewardTemplate_UseItem(tGiftGiving_Reward[nItemId])
end

--15000气力值礼包
tItem[3301665] = tItem[3301665] or {}
tItem[3301665]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tGiftGiving_Reward[nItemId])
end

--新服福利激活码
tItemFace[3301651] = 767
tItemFace[3301701] = 768
tItem[3301651] = tItem[3301651] or {}
tItem[3301651]["DialogueText"] =tGiftGiving_Text[3301651]
tItem[3301651]["Text1-1"] = {111,112}
tItem[3301651]["tOption1-1"] = {1}





