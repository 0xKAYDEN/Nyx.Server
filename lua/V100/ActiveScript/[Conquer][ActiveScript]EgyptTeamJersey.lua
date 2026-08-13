------------------------------------------------------------------------------------------------------------------
--Name:171011[英文征服][活动脚本]埃及队球衣礼包
--Creator: 	兰冬梅
--Created:	2017/10/11
-------------------------------------------------------------------------------------------------------------------
--EgyptTeamJersey
--logId:12000902
--lua.ini:40708

local tEgyptTeamJersey_Reward = {}
--埃及队球衣礼包
	tEgyptTeamJersey_Reward[3305658] = {}
	tEgyptTeamJersey_Reward[3305658]["RewardEffect"] = {}
	tEgyptTeamJersey_Reward[3305658]["RewardEffect"]["SzObj"] = "self"
	tEgyptTeamJersey_Reward[3305658]["RewardEffect"]["Effect"] = "zf2-e128"
	tEgyptTeamJersey_Reward[3305658]["RewardItem"] = {}
	tEgyptTeamJersey_Reward[3305658]["RewardItem"][1] = {}
	tEgyptTeamJersey_Reward[3305658]["RewardItem"][1] ["Id"] =194965
	tEgyptTeamJersey_Reward[3305658]["RewardItem"][1] ["Attr"] = "0 1 0 0 0 0 0 1"
	tEgyptTeamJersey_Reward[3305658]["DeleteItem"] = {}
	tEgyptTeamJersey_Reward[3305658]["DeleteItem"][1] = {}
	tEgyptTeamJersey_Reward[3305658]["DeleteItem"][1]["Id"] =3305658
	tEgyptTeamJersey_Reward[3305658]["LogId"] =12000902
	
	--埃及队球衣礼包（1天时效）
	tEgyptTeamJersey_Reward[3306212] = {}
	tEgyptTeamJersey_Reward[3306212]["RewardItem"] = {}
	tEgyptTeamJersey_Reward[3306212]["RewardItem"][1] = {}
	tEgyptTeamJersey_Reward[3306212]["RewardItem"][1] ["Id"] =194965
	tEgyptTeamJersey_Reward[3306212]["RewardItem"][1] ["Attr"] = "0 1 3 1440 1"
	tEgyptTeamJersey_Reward[3306212]["DeleteItem"] = {}
	tEgyptTeamJersey_Reward[3306212]["DeleteItem"][1] = {}
	tEgyptTeamJersey_Reward[3306212]["DeleteItem"][1]["Id"] =3306212
	tEgyptTeamJersey_Reward[3306212]["LogId"] =12000902

	tEgyptTeamJersey_Reward[1] = {}
	tEgyptTeamJersey_Reward[1]["Money"] =69990000
	tEgyptTeamJersey_Reward[1]["Space"] =1
	tEgyptTeamJersey_Reward[1]["RewardEffect"] = {}
	tEgyptTeamJersey_Reward[1]["RewardEffect"]["SzObj"] = "self"
	tEgyptTeamJersey_Reward[1]["RewardEffect"]["Effect"] = "zf2-e128"
	tEgyptTeamJersey_Reward[1]["RewardItem"] = {}
	tEgyptTeamJersey_Reward[1]["RewardItem"][1] = {}
	tEgyptTeamJersey_Reward[1]["RewardItem"][1] ["Id"] =3305658
	tEgyptTeamJersey_Reward[1]["RewardItem"][1] ["Attr"] = "0 1"
	tEgyptTeamJersey_Reward[1]["LogId"] =12000902
	tEgyptTeamJersey_Reward[1]["EMoneyLog"] ="350	20772	0	0	1	"
	
	tEgyptTeamJersey_Reward[2] = {}
	tEgyptTeamJersey_Reward[2]["Money"] =1890000
	tEgyptTeamJersey_Reward[2]["Space"] =1
	tEgyptTeamJersey_Reward[2]["RewardEffect"] = {}
	tEgyptTeamJersey_Reward[2]["RewardEffect"]["SzObj"] = "self"
	tEgyptTeamJersey_Reward[2]["RewardEffect"]["Effect"] = "zf2-e128"
	tEgyptTeamJersey_Reward[2]["RewardItem"] = {}
	tEgyptTeamJersey_Reward[2]["RewardItem"][1] = {}
	tEgyptTeamJersey_Reward[2]["RewardItem"][1] ["Id"] =3305660
	tEgyptTeamJersey_Reward[2]["RewardItem"][1] ["Attr"] = "0 1"
	tEgyptTeamJersey_Reward[2]["LogId"] =12000902
	tEgyptTeamJersey_Reward[2]["EMoneyLog"] ="350	20773	0	0	1	"

local tEgyptTeamJersey_Random= {}
--埃及队球衣碎片
	tEgyptTeamJersey_Random[3305659] = {}
	
		--单个碎片使用
	tEgyptTeamJersey_Random[3305659][1] = {}
	tEgyptTeamJersey_Random[3305659][1]["ItemChanceSum"] = 10000
	
	tEgyptTeamJersey_Random[3305659][1][1] = {}
	tEgyptTeamJersey_Random[3305659][1][1]["RandomItemChanceType"] =2
	tEgyptTeamJersey_Random[3305659][1][1]["ItemChance"] = 4800
	tEgyptTeamJersey_Random[3305659][1][1]["RewardItem"] = {}
	tEgyptTeamJersey_Random[3305659][1][1]["RewardItem"][1] = {}
	tEgyptTeamJersey_Random[3305659][1][1]["RewardItem"][1] ["Id"] =3305659
	tEgyptTeamJersey_Random[3305659][1][1]["RewardItem"][1] ["Attr"] = "0 2"

	tEgyptTeamJersey_Random[3305659][1][1]["Tell"] =1
	tEgyptTeamJersey_Random[3305659][1][1]["LogId"] =12000902
	
	tEgyptTeamJersey_Random[3305659][1][2] = {}
	tEgyptTeamJersey_Random[3305659][1][2]["RandomItemChanceType"] =2
	tEgyptTeamJersey_Random[3305659][1][2]["ItemChance"] = 5200
	tEgyptTeamJersey_Random[3305659][1][2]["RewardItem"] = {}
	tEgyptTeamJersey_Random[3305659][1][2]["Talk"] =tEgyptTeamJersey_Text[3305659]["NoSuccess"]
	tEgyptTeamJersey_Random[3305659][1][2]["LogId"] =12000902
	
	--20个碎片合成
	tEgyptTeamJersey_Random[3305659][2] = {}
	tEgyptTeamJersey_Random[3305659][2]["Compose"] =20
	tEgyptTeamJersey_Random[3305659][2]["ItemChanceSum"] = 10000
	
	tEgyptTeamJersey_Random[3305659][2][1] = {}
	tEgyptTeamJersey_Random[3305659][2][1]["RandomItemChanceType"] =2
	tEgyptTeamJersey_Random[3305659][2][1]["ItemChance"] = 10000
	tEgyptTeamJersey_Random[3305659][2][1]["RewardItem"] = {}
	tEgyptTeamJersey_Random[3305659][2][1]["RewardItem"][1] = {}
	tEgyptTeamJersey_Random[3305659][2][1]["RewardItem"][1] ["Id"] =194965
	tEgyptTeamJersey_Random[3305659][2][1]["RewardItem"][1] ["Attr"] = "0 1 3 0 0 0 0 1"
	tEgyptTeamJersey_Random[3305659][2][1]["Talk"] =tEgyptTeamJersey_Text[3305659]["Succeed"]
	tEgyptTeamJersey_Random[3305659][2][1]["LogId"] =12000902

--埃及队球衣抽奖包
	tEgyptTeamJersey_Random[3305660] = {}
	tEgyptTeamJersey_Random[3305660][1] = {}
	tEgyptTeamJersey_Random[3305660][1]["ItemChanceSum"] = 10000
	
--时效埃及队球衣 1天时效 1%神佑
	tEgyptTeamJersey_Random[3305660][1][1] = {}
	tEgyptTeamJersey_Random[3305660][1][1]["RandomItemChanceType"] =2
	tEgyptTeamJersey_Random[3305660][1][1]["ItemChance"] = 2000
	tEgyptTeamJersey_Random[3305660][1][1]["RewardEffect"] = {}
	tEgyptTeamJersey_Random[3305660][1][1]["RewardEffect"]["SzObj"] = "self"
	tEgyptTeamJersey_Random[3305660][1][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tEgyptTeamJersey_Random[3305660][1][1]["RewardItem"] = {}
	tEgyptTeamJersey_Random[3305660][1][1]["RewardItem"][1] = {}
	tEgyptTeamJersey_Random[3305660][1][1]["RewardItem"][1] ["Id"] =194965
	tEgyptTeamJersey_Random[3305660][1][1]["RewardItem"][1] ["Attr"] = "0 1 3 1440 1 0 0 1"
	tEgyptTeamJersey_Random[3305660][1][1]["LogId"] =12000902
--时效埃及队球衣 3天时效 1%神佑
	tEgyptTeamJersey_Random[3305660][1][2] = {}
	tEgyptTeamJersey_Random[3305660][1][2]["RandomItemChanceType"] =2
	tEgyptTeamJersey_Random[3305660][1][2]["ItemChance"] = 1500
	tEgyptTeamJersey_Random[3305660][1][2]["RewardEffect"] = {}
	tEgyptTeamJersey_Random[3305660][1][2]["RewardEffect"]["SzObj"] = "self"
	tEgyptTeamJersey_Random[3305660][1][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tEgyptTeamJersey_Random[3305660][1][2]["RewardItem"] = {}
	tEgyptTeamJersey_Random[3305660][1][2]["RewardItem"][1] = {}
	tEgyptTeamJersey_Random[3305660][1][2]["RewardItem"][1] ["Id"] =194965
	tEgyptTeamJersey_Random[3305660][1][2]["RewardItem"][1] ["Attr"] = "0 1 3 4320 1 0 0 1"
	tEgyptTeamJersey_Random[3305660][1][2]["LogId"] =12000902
--时效埃及队球衣 7天时效 1%神佑
	tEgyptTeamJersey_Random[3305660][1][3] = {}
	tEgyptTeamJersey_Random[3305660][1][3]["RandomItemChanceType"] =2
	tEgyptTeamJersey_Random[3305660][1][3]["ItemChance"] = 1000
	tEgyptTeamJersey_Random[3305660][1][3]["RewardEffect"] = {}
	tEgyptTeamJersey_Random[3305660][1][3]["RewardEffect"]["SzObj"] = "self"
	tEgyptTeamJersey_Random[3305660][1][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tEgyptTeamJersey_Random[3305660][1][3]["RewardItem"] = {}
	tEgyptTeamJersey_Random[3305660][1][3]["RewardItem"][1] = {}
	tEgyptTeamJersey_Random[3305660][1][3]["RewardItem"][1] ["Id"] =194965
	tEgyptTeamJersey_Random[3305660][1][3]["RewardItem"][1] ["Attr"] = "0 1 3 10080 1 0 0 1"
	tEgyptTeamJersey_Random[3305660][1][3]["LogId"] =12000902
--埃及队球衣碎片
	tEgyptTeamJersey_Random[3305660][1][4] = {}
	tEgyptTeamJersey_Random[3305660][1][4]["RandomItemChanceType"] =2
	tEgyptTeamJersey_Random[3305660][1][4]["ItemChance"] = 2500
	tEgyptTeamJersey_Random[3305660][1][4]["RewardEffect"] = {}
	tEgyptTeamJersey_Random[3305660][1][4]["RewardEffect"]["SzObj"] = "self"
	tEgyptTeamJersey_Random[3305660][1][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tEgyptTeamJersey_Random[3305660][1][4]["RewardItem"] = {}
	tEgyptTeamJersey_Random[3305660][1][4]["RewardItem"][1] = {}
	tEgyptTeamJersey_Random[3305660][1][4]["RewardItem"][1] ["Id"] =3305659
	tEgyptTeamJersey_Random[3305660][1][4]["RewardItem"][1] ["Attr"] = "0 1"
	tEgyptTeamJersey_Random[3305660][1][4]["LogId"] =12000902
--时效埃及队球衣(1天时效 1%神佑)+埃及队球衣碎片
	tEgyptTeamJersey_Random[3305660][1][5] = {}
	tEgyptTeamJersey_Random[3305660][1][5]["RandomItemChanceType"] =2
	tEgyptTeamJersey_Random[3305660][1][5]["ItemChance"] = 2000
	tEgyptTeamJersey_Random[3305660][1][5]["RewardEffect"] = {}
	tEgyptTeamJersey_Random[3305660][1][5]["RewardEffect"]["SzObj"] = "self"
	tEgyptTeamJersey_Random[3305660][1][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tEgyptTeamJersey_Random[3305660][1][5]["RewardItem"] = {}
	tEgyptTeamJersey_Random[3305660][1][5]["RewardItem"][1] = {}
	tEgyptTeamJersey_Random[3305660][1][5]["RewardItem"][1] ["Id"] =194965
	tEgyptTeamJersey_Random[3305660][1][5]["RewardItem"][1] ["Attr"] = "0 1 3 1440 1 0 0 1"
	tEgyptTeamJersey_Random[3305660][1][5]["RewardItem"][2] = {}
	tEgyptTeamJersey_Random[3305660][1][5]["RewardItem"][2] ["Id"] =3305659
	tEgyptTeamJersey_Random[3305660][1][5]["RewardItem"][2] ["Attr"] = "0 1"
	tEgyptTeamJersey_Random[3305660][1][5]["LogId"] =12000902
--时效埃及队球衣(3天时效 1%神佑)+埃及队球衣碎片
	tEgyptTeamJersey_Random[3305660][1][6] = {}
	tEgyptTeamJersey_Random[3305660][1][6]["RandomItemChanceType"] =2
	tEgyptTeamJersey_Random[3305660][1][6]["ItemChance"] = 990
	tEgyptTeamJersey_Random[3305660][1][6]["RewardEffect"] = {}
	tEgyptTeamJersey_Random[3305660][1][6]["RewardEffect"]["SzObj"] = "self"
	tEgyptTeamJersey_Random[3305660][1][6]["RewardEffect"]["Effect"] = "zf2-e128"
	tEgyptTeamJersey_Random[3305660][1][6]["RewardItem"] = {}
	tEgyptTeamJersey_Random[3305660][1][6]["RewardItem"][1] = {}
	tEgyptTeamJersey_Random[3305660][1][6]["RewardItem"][1] ["Id"] =194965
	tEgyptTeamJersey_Random[3305660][1][6]["RewardItem"][1] ["Attr"] = "0 1 3 4320 1 0 0 1"
	tEgyptTeamJersey_Random[3305660][1][6]["RewardItem"][2] = {}
	tEgyptTeamJersey_Random[3305660][1][6]["RewardItem"][2] ["Id"] =3305659
	tEgyptTeamJersey_Random[3305660][1][6]["RewardItem"][2] ["Attr"] = "0 1"
	tEgyptTeamJersey_Random[3305660][1][6]["LogId"] =12000902
--永久埃及队球衣 1%神佑 全服公告
	tEgyptTeamJersey_Random[3305660][1][7] = {}
	tEgyptTeamJersey_Random[3305660][1][7]["RandomItemChanceType"] =2
	tEgyptTeamJersey_Random[3305660][1][7]["ItemChance"] = 10
	tEgyptTeamJersey_Random[3305660][1][7]["RewardEffect"] = {}
	tEgyptTeamJersey_Random[3305660][1][7]["RewardEffect"]["SzObj"] = "self"
	tEgyptTeamJersey_Random[3305660][1][7]["RewardEffect"]["Effect"] = "zf2-e128"
	tEgyptTeamJersey_Random[3305660][1][7]["RewardItem"] = {}
	tEgyptTeamJersey_Random[3305660][1][7]["RewardItem"][1] = {}
	tEgyptTeamJersey_Random[3305660][1][7]["RewardItem"][1] ["Id"] =194965
	tEgyptTeamJersey_Random[3305660][1][7]["RewardItem"][1] ["Attr"] = "0 1 0 0 0 0 0 1"
	tEgyptTeamJersey_Random[3305660][1][7]["LogId"] =12000902
	tEgyptTeamJersey_Random[3305660][1][7]["ShowBroad"] =tEgyptTeamJersey_Text[3305660]["ShowBroad"]


--------------------------------------------逻辑模块---------------------------------------
function EgyptTeamJersey_UseItem(nItemId)
--背包空间
	local nNum =RewardTemplate_GetRandomSpace(tEgyptTeamJersey_Random[nItemId],1)
	if not User_CheckLeftSpace(nNum) then
		User_TalkChannel2005(tEgyptTeamJersey_Text["SpaceFull"])
		return
	end

	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local tReward = RewardTemplate_NewRandomNoTip(tEgyptTeamJersey_Random[nItemId],1)
		--全服公告
		if tReward[1]["tAward"][1]["ShowBroad"] ~= nil then
			local sUserName = Get_UserName()
			local sBroadText = string.format(tReward[1]["tAward"][1]["ShowBroad"],sUserName)
			Sys_TalkBroadcast(sBroadText)
		end
		--翻倍成功
		if tReward[1]["tAward"][1]["Tell"] ~= nil then
			LinkItemGossipFunc_New(nItemId,"1-2")
		end
	end
end
--碎片合成
function EgyptTeamJersey_Compose(nItemId,nType)
	--判断个数
	if tEgyptTeamJersey_Random[nItemId][nType]["Compose"] ~= nil then
		if not Item_ChkMulItem(nItemId,nItemId,tEgyptTeamJersey_Random[nItemId][nType]["Compose"]) then
			User_TalkChannel2005(tEgyptTeamJersey_Text["NotEnough"])
			return
		end
	end

	--背包空间
	local nNum =RewardTemplate_GetRandomSpace(tEgyptTeamJersey_Random[nItemId],nType)
	if not User_CheckLeftSpace(nNum) then
		User_TalkChannel2005(tEgyptTeamJersey_Text["NoSpace"])
		return
	end

	-- 给奖励
	if Item_DelMulItem(nItemId,nItemId,tEgyptTeamJersey_Random[nItemId][nType]["Compose"]) then
		RewardTemplate_NewRandomNoTip(tEgyptTeamJersey_Random[nItemId],nType)
	end

end

function EgyptTeamJersey_ConditionSure(NpcId,nType)
--判断金币
	if not User_CanPutMoney2Bag(-tEgyptTeamJersey_Reward[nType]["Money"]) then
		User_TalkChannel2005(tEgyptTeamJersey_Text["NoMoney"])
		return
	end
	
	--判断背包
	if not User_CheckLeftSpace(tEgyptTeamJersey_Reward[nType]["Space"]) then
		User_TalkChannel2005(tEgyptTeamJersey_Text["SpaceFull"])
		return
	end
	if nType ==1 then
		LinkNpcGossipFunc_New(NpcId,"1-2")
	else
		LinkNpcGossipFunc_New(NpcId,"1-3")
	end
end

function EgyptTeamJersey_GetItem(nType)
--金币不够
	if not User_CanPutMoney2Bag(-tEgyptTeamJersey_Reward[nType]["Money"]) then
		User_TalkChannel2005(tEgyptTeamJersey_Text["NoMoney"])
		return
	end
	
	--背包空间
	if not User_CheckLeftSpace(tEgyptTeamJersey_Reward[nType]["Space"]) then
		User_TalkChannel2005(tEgyptTeamJersey_Text["SpaceFull"])
		return
	end
	
	--给奖品
	  if User_AddMoneyNew(-tEgyptTeamJersey_Reward[nType]["Money"],tEgyptTeamJersey_Reward[nType]["LogId"]) then
		RewardTemplate_UseItem(tEgyptTeamJersey_Reward[nType])
		Sys_SaveEmoneyBuy(tEgyptTeamJersey_Reward[nType]["EMoneyLog"])
	end

end
--------------------------------------------物品配置---------------------------------------
--埃及队球衣礼包
tItem[3305658] = tItem[3305658] or {}
tItem[3305658]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tEgyptTeamJersey_Reward[nItemId])
end

tItem[3306212] = tItem[3305658]
--埃及队球衣碎片
tItem[3305659] = tItem[3305659] or {}
tItem[3305659]["DialogueText"] = tEgyptTeamJersey_Text[3305659]

tItem[3305659]["Text1-1"] = {111,112}
tItem[3305659]["tOption1-1"] ={111,112}
tItem[3305659]["OptionFunc111"] ="EgyptTeamJersey_UseItem</N>3305659"
tItem[3305659]["OptionFunc112"] ="EgyptTeamJersey_Compose</N>3305659</N>2"

tItem[3305659]["Text1-2"] = {121}
tItem[3305659]["tOption1-2"] ={121}
tItem[3305659]["OptionPoint121"] ="1-1"

--埃及队球衣抽奖包
tItem[3305660] = tItem[3305660] or {}
tItem[3305660]["Function"] = function(nItemId,sItemName)
	EgyptTeamJersey_UseItem(nItemId)
end

------------------------------------------NPC配置-------------------------------------------
tNpcGossip[22229] = tNpcGossip[22229] or DefaultNpc:new{}
tNpcGossip[22229]["DialogueText"] = tEgyptTeamJersey_Text[22229]
tNpcGossip[22229]["OptionHidden"] = 1

tNpcGossip[22229]["Text1-1"] = {111,112}
tNpcGossip[22229]["tOption1-1"] = {111,112}
tNpcGossip[22229]["OptionFunc111"] ="EgyptTeamJersey_ConditionSure</N>22229</N>1"
tNpcGossip[22229]["OptionFunc112"] ="EgyptTeamJersey_ConditionSure</N>22229</N>2"


tNpcGossip[22229]["Text1-2"] = {121}
tNpcGossip[22229]["tOption1-2"] = {121,122}
tNpcGossip[22229]["OptionFunc121"] ="EgyptTeamJersey_GetItem</N>1"


tNpcGossip[22229]["Text1-3"] = {131}
tNpcGossip[22229]["tOption1-3"] = {131,132}
tNpcGossip[22229]["OptionFunc131"] ="EgyptTeamJersey_GetItem</N>2"
