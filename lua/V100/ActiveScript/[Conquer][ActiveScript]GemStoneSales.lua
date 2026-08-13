----------------------------------------------------------------------------
--Name:180910[英文征服][活动脚本]开洞宝石低价促(9.27-10.9)
--Creator:兰冬梅
--Created:2018/09/10
----------------------------------------------------------------------------
--tGemStoneSales

--logid:12001159
--lua.ini:40989

--------------------------------数据部分配置-----------------------
local tGemStoneSales_Cont={}
	--背包
	tGemStoneSales_Cont["Space"] = 1
	--属性
	tGemStoneSales_Cont["Monopoly"] = 2
	
	tGemStoneSales_Cont["LogId"] = 12001159
	--转盘
	tGemStoneSales_Cont[3310741]={}
	tGemStoneSales_Cont[3310741]["Money"]={}
	tGemStoneSales_Cont[3310741]["Money"][1]=69
	tGemStoneSales_Cont[3310741]["Money"][2]=5.5
	tGemStoneSales_Cont[3310741]["AddMoney"]=5500000
	tGemStoneSales_Cont[3310741]["Option"]="2-1"
	--金刚尖钻碎片
	tGemStoneSales_Cont[3310742]={}
	tGemStoneSales_Cont[3310742]["Money"]={}
	tGemStoneSales_Cont[3310742]["Money"][1]=35
	tGemStoneSales_Cont[3310742]["Money"][2]=2.8
	tGemStoneSales_Cont[3310742]["AddMoney"]=2800000
	tGemStoneSales_Cont[3310742]["Option"]="3-1"
	--金刚尖钻
	tGemStoneSales_Cont[1200005]={}
	tGemStoneSales_Cont[1200005]["EMoney"]=1099
	tGemStoneSales_Cont[1200005]["Option"]="3-2"
	--
	tGemStoneSales_Cont["MoneyType"] ={}
	tGemStoneSales_Cont["MoneyType"][1] ="GemStoneSales_AwardByEMoney</N>%d</N>%d"
	tGemStoneSales_Cont["MoneyType"][2] ="GemStoneSales_AwardByMoney</N>%d</N>%d"
	
local tGemStoneSales_Log={}

	tGemStoneSales_Log[3310741]={}
	--天石买转盘
	tGemStoneSales_Log[3310741][1]="350	21731	69	69	1	"
	--金币买转盘
	tGemStoneSales_Log[3310741][2]="350	21734	0	0	1	"
	
	tGemStoneSales_Log[3310742]={}
	--天石买金钢碎片
	tGemStoneSales_Log[3310742][1]="350	21732	35	35	1	"
	--金币买金钢碎片
	tGemStoneSales_Log[3310742][2]="350	21735	0	0	1	"
	--赠换非赠
	tGemStoneSales_Log["Monopoly"]="350	21733	1099	1099	1	"


local tGemStoneSales_Reward={}
	--转盘
	tGemStoneSales_Reward[3310741]={}
	tGemStoneSales_Reward[3310741]["RewardItem"] = {}
	tGemStoneSales_Reward[3310741]["RewardItem"][1] = {}
	tGemStoneSales_Reward[3310741]["RewardItem"][1]["Id"] = 3310741
	tGemStoneSales_Reward[3310741]["RewardItem"][1]["Attr"] = "0 1"
	tGemStoneSales_Reward[3310741]["LogId"]=12001159
	
	--金钢碎片
	tGemStoneSales_Reward[3310742]={}
	tGemStoneSales_Reward[3310742]["RewardItem"] = {}
	tGemStoneSales_Reward[3310742]["RewardItem"][1] = {}
	tGemStoneSales_Reward[3310742]["RewardItem"][1]["Id"] = 3310742
	tGemStoneSales_Reward[3310742]["RewardItem"][1]["Attr"] = "0 1"
	tGemStoneSales_Reward[3310742]["LogId"]=12001159

	--赠品换成非赠
	tGemStoneSales_Reward[1200005]={}
	tGemStoneSales_Reward[1200005]["RewardItem"] = {}
	tGemStoneSales_Reward[1200005]["RewardItem"][1] = {}
	tGemStoneSales_Reward[1200005]["RewardItem"][1]["Id"] = 1200005
	tGemStoneSales_Reward[1200005]["RewardItem"][1]["Attr"] = "0 1"
	tGemStoneSales_Reward[1200005]["LogId"]=12001159
	
	--2块金钢坚钻碎片（赠）包
	tGemStoneSales_Reward[3310743]={}
	tGemStoneSales_Reward[3310743]["DeleteItem"] = {}
	tGemStoneSales_Reward[3310743]["DeleteItem"][1] = {}
	tGemStoneSales_Reward[3310743]["DeleteItem"][1]["Id"] = 3310743
	tGemStoneSales_Reward[3310743]["RewardItem"] = {}
	tGemStoneSales_Reward[3310743]["RewardItem"][1] = {}
	tGemStoneSales_Reward[3310743]["RewardItem"][1]["Id"] = 3310742
	tGemStoneSales_Reward[3310743]["RewardItem"][1]["Attr"] = "0 2"
	tGemStoneSales_Reward[3310743]["LogId"]=12001159
	--3块金钢坚钻碎片（赠）包
	tGemStoneSales_Reward[3310744]={}
	tGemStoneSales_Reward[3310744]["DeleteItem"] = {}
	tGemStoneSales_Reward[3310744]["DeleteItem"][1] = {}
	tGemStoneSales_Reward[3310744]["DeleteItem"][1]["Id"] = 3310744
	tGemStoneSales_Reward[3310744]["RewardItem"] = {}
	tGemStoneSales_Reward[3310744]["RewardItem"][1] = {}
	tGemStoneSales_Reward[3310744]["RewardItem"][1]["Id"] = 3310742
	tGemStoneSales_Reward[3310744]["RewardItem"][1]["Attr"] = "0 3"
	tGemStoneSales_Reward[3310744]["LogId"]=12001159
	--4块金钢坚钻碎片（赠）包
	tGemStoneSales_Reward[3310745]={}
	tGemStoneSales_Reward[3310745]["DeleteItem"] = {}
	tGemStoneSales_Reward[3310745]["DeleteItem"][1] = {}
	tGemStoneSales_Reward[3310745]["DeleteItem"][1]["Id"] = 3310745
	tGemStoneSales_Reward[3310745]["RewardItem"] = {}
	tGemStoneSales_Reward[3310745]["RewardItem"][1] = {}
	tGemStoneSales_Reward[3310745]["RewardItem"][1]["Id"] = 3310742
	tGemStoneSales_Reward[3310745]["RewardItem"][1]["Attr"] = "0 4"
	tGemStoneSales_Reward[3310745]["LogId"]=12001159
	--5块金钢坚钻碎片（赠）包
	tGemStoneSales_Reward[3310746]={}
	tGemStoneSales_Reward[3310746]["DeleteItem"] = {}
	tGemStoneSales_Reward[3310746]["DeleteItem"][1] = {}
	tGemStoneSales_Reward[3310746]["DeleteItem"][1]["Id"] = 3310746
	tGemStoneSales_Reward[3310746]["RewardItem"] = {}
	tGemStoneSales_Reward[3310746]["RewardItem"][1] = {}
	tGemStoneSales_Reward[3310746]["RewardItem"][1]["Id"] = 3310742
	tGemStoneSales_Reward[3310746]["RewardItem"][1]["Attr"] = "0 5"
	tGemStoneSales_Reward[3310746]["LogId"]=12001159
	--6块金钢坚钻碎片（赠）包
	tGemStoneSales_Reward[3310747]={}
	tGemStoneSales_Reward[3310747]["DeleteItem"] = {}
	tGemStoneSales_Reward[3310747]["DeleteItem"][1] = {}
	tGemStoneSales_Reward[3310747]["DeleteItem"][1]["Id"] = 3310747
	tGemStoneSales_Reward[3310747]["RewardItem"] = {}
	tGemStoneSales_Reward[3310747]["RewardItem"][1] = {}
	tGemStoneSales_Reward[3310747]["RewardItem"][1]["Id"] = 3310742
	tGemStoneSales_Reward[3310747]["RewardItem"][1]["Attr"] = "0 6"
	tGemStoneSales_Reward[3310747]["LogId"]=12001159
	--7块金钢坚钻碎片（赠）包
	tGemStoneSales_Reward[3310748]={}
	tGemStoneSales_Reward[3310748]["DeleteItem"] = {}
	tGemStoneSales_Reward[3310748]["DeleteItem"][1] = {}
	tGemStoneSales_Reward[3310748]["DeleteItem"][1]["Id"] = 3310748
	tGemStoneSales_Reward[3310748]["RewardItem"] = {}
	tGemStoneSales_Reward[3310748]["RewardItem"][1] = {}
	tGemStoneSales_Reward[3310748]["RewardItem"][1]["Id"] = 3310742
	tGemStoneSales_Reward[3310748]["RewardItem"][1]["Attr"] = "0 7"
	tGemStoneSales_Reward[3310748]["LogId"]=12001159
	--金刚尖钻碎片
	tGemStoneSales_Reward["Fragment"]={}
	tGemStoneSales_Reward["Fragment"]["DeleteItem"] = {}
	tGemStoneSales_Reward["Fragment"]["DeleteItem"][1] = {}
	tGemStoneSales_Reward["Fragment"]["DeleteItem"][1]["Id"] = 3310742
	tGemStoneSales_Reward["Fragment"]["DeleteItem"][1]["ItemNum"] = 10
	tGemStoneSales_Reward["Fragment"]["DeleteItem"][1]["NoItem"] =tGemStoneSales_Text[3310742]["NoItem"]
	tGemStoneSales_Reward["Fragment"]["RewardItem"] = {}
	tGemStoneSales_Reward["Fragment"]["RewardItem"][1] = {}
	tGemStoneSales_Reward["Fragment"]["RewardItem"][1]["Id"] = 1200005
	tGemStoneSales_Reward["Fragment"]["RewardItem"][1]["Attr"] = "0 1 3"
	tGemStoneSales_Reward["Fragment"]["LogId"]=12001159
	tGemStoneSales_Reward["Fragment"]["EmoneyLog"]="350	21736	0	0	1	"
	tGemStoneSales_Reward["Fragment"]["NoSpace"]=tGemStoneSales_Text[3310742]["NoSpace"]

--------------------------------逻辑部分配置-----------------------
--判断出选项
function GemStoneSales_ChkDialog(nItemId)
	local nNpcId = Get_NpcId()
	local sOption = tGemStoneSales_Cont[nItemId]["Option"]
	--活动时间内
	if Sys_ChkFullTime(tActivityTime["GemStoneSales"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,sOption)
	else
		LinkNpcGossipFunc_New(nNpcId,"1-3")
	end
end

--二次确认
function GemStoneSales_ChkSecDialog(nItemId,nType)
	local nNpcId = Get_NpcId()
	local sItemName = Get_ItemtypeName(nItemId)
	local nMoney= tGemStoneSales_Cont[nItemId]["Money"][nType]
	--条件满足
	if GemStoneSales_ChkCondition(nItemId,nType) then
		local sText = tGemStoneSales_Text[nNpcId]["Text221"]
		local sMoney = string.format(tGemStoneSales_Text[nNpcId]["MoneyType"][nType],nMoney)
		
		local sOptionFunc = string.format(tGemStoneSales_Cont["MoneyType"][nType],nItemId,nType)
		
		tNpcGossip[nNpcId]["Text221"] =string.format(sText,sMoney,sItemName)
		tNpcGossip[nNpcId]["OptionFunc221"] =sOptionFunc
		LinkNpcGossipFunc_New(nNpcId,"2-2")
	end
end

--条件判断
function GemStoneSales_ChkCondition(nItemId,nType)
	local nNpcId = Get_NpcId()
	--活动时间外
	if not Sys_ChkFullTime(tActivityTime["GemStoneSales"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	local nSpace = tGemStoneSales_Cont["Space"]
	--背包不足
	if not User_CheckLeftSpace(nSpace) then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	--天石判断
	if nType == 1 then
		local nEMoney = tGemStoneSales_Cont[nItemId]["Money"][nType]
		if Get_UserEMoney() < nEMoney then
			LinkNpcGossipFunc_New(nNpcId,"2-3")
			return
		end
	else
		--金币判断
		local nMoney = tGemStoneSales_Cont[nItemId]["AddMoney"]
		if not User_CanPutMoney2Bag(-nMoney) then
			LinkNpcGossipFunc_New(nNpcId,"2-4")
			return
		end
	end
	return true
end

--天石购买
function GemStoneSales_AwardByEMoney(nItemId,nType)
	local nEMoney = tGemStoneSales_Cont[nItemId]["Money"][nType]
	--条件满足
	if GemStoneSales_ChkCondition(nItemId,nType) then
		if User_AddEMoneyNew(-nEMoney,tGemStoneSales_Cont["LogId"],nUserId) then
			RewardTemplate_UseItemAndMsg(tGemStoneSales_Reward[nItemId])
			Sys_SaveEmoneyBuy(tGemStoneSales_Log[nItemId][1])
		end
	end
end

--金币购买
function GemStoneSales_AwardByMoney(nItemId,nType)
	local nMoney = tGemStoneSales_Cont[nItemId]["AddMoney"]
	if GemStoneSales_ChkCondition(nItemId,nType) then
		--扣除金币
		if User_AddMoneyNew(-nMoney,tGemStoneSales_Cont["LogId"]) then
			RewardTemplate_UseItemAndMsg(tGemStoneSales_Reward[nItemId])
			Sys_SaveEmoneyBuy(tGemStoneSales_Log[nItemId][2])
		end
	end
end

--转换条件判断
function GemStoneSales_ChkMonopoly(nItemId)
	local nNpcId = Get_NpcId()
	--活动时间外
	if not Sys_ChkFullTime(tActivityTime["GemStoneSales"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	--天石不足
	local nEmoney = tGemStoneSales_Cont[nItemId]["EMoney"]
	if Get_UserEMoney() < nEmoney then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	--不存在物品（赠品且没时效）
	local nMonopoly = tGemStoneSales_Cont["Monopoly"]
	if not Item_ChkMulItem(nItemId,nItemId,1,nMonopoly,0,nUserId,0) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	return true
end

--二次确认
function GemStoneSales_ChkSecMonopoly(nItemId)
	local nNpcId = Get_NpcId()
	if GemStoneSales_ChkMonopoly(nItemId) then
		LinkNpcGossipFunc_New(nNpcId,"3-4")
	end
end

--转换
function GemStoneSales_SwitchMonopoly(nItemId)
	local nEmoney = tGemStoneSales_Cont[nItemId]["EMoney"]
	--满足条件
	if GemStoneSales_ChkMonopoly(nItemId) then
		local nMonopoly = tGemStoneSales_Cont["Monopoly"]
		--删物品,扣天石
		if Item_DelMulItem(nItemId,nItemId,1,nMonopoly,0,nUserId,0) and User_AddEMoneyNew(-nEmoney,tGemStoneSales_Cont["LogId"]) then
			RewardTemplate_UseItemAndMsg(tGemStoneSales_Reward[nItemId])
			Sys_SaveEmoneyBuy(tGemStoneSales_Log["Monopoly"])
		end
	end
end
--------------------------------模块部分配置-----------------------

tNpcFace[1376]=108
tNpcGossip[23241]= tNpcGossip[23241] or DefaultNpc:new{}
tNpcGossip[23241]["OptionHidden"] = 1
tNpcGossip[23241]["DialogueText"] = tGemStoneSales_Text[23241]

--活动前
tNpcGossip[23241]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[23241]["tOption1-1"] = {111}
tNpcGossip[23241]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tActivityTime["GemStoneSales"]["BeforeTime"])
end

--活动中
tNpcGossip[23241]["Text1-2"] = {121,112,113,114,115}
tNpcGossip[23241]["tOption1-2"] = {121,122,123,124}
tNpcGossip[23241]["ChkFunc1-2"] = function()
	return Sys_ChkFullTime(tActivityTime["GemStoneSales"]["ActivityTime"])
end

tNpcGossip[23241]["OptionFunc121"]="GemStoneSales_ChkDialog</N>3310741"
tNpcGossip[23241]["OptionFunc122"]="GemStoneSales_ChkDialog</N>3310742"
tNpcGossip[23241]["OptionFunc123"]="GemStoneSales_ChkDialog</N>1200005"

--活动后
tNpcGossip[23241]["Text1-3"] = {131}
tNpcGossip[23241]["tOption1-3"] = {131}

--购买开洞惊喜转盘
tNpcGossip[23241]["Text2-1"] = {211,212}
tNpcGossip[23241]["tOption2-1"] = {211,212}
tNpcGossip[23241]["OptionFunc211"]="GemStoneSales_ChkSecDialog</N>3310741</N>1"
tNpcGossip[23241]["OptionFunc212"]="GemStoneSales_ChkSecDialog</N>3310741</N>2"

--购买金刚坚钻碎片（赠）
tNpcGossip[23241]["Text3-1"] = {311,312}
tNpcGossip[23241]["tOption3-1"] = {311,312}
tNpcGossip[23241]["OptionFunc311"]="GemStoneSales_ChkSecDialog</N>3310742</N>1"
tNpcGossip[23241]["OptionFunc312"]="GemStoneSales_ChkSecDialog</N>3310742</N>2"

--二次确认
tNpcGossip[23241]["Text2-2"] = {221}
tNpcGossip[23241]["tOption2-2"] = {221,222}
--天石不足
tNpcGossip[23241]["Text2-3"] = {231}
tNpcGossip[23241]["tOption2-3"] = {231}
--银两不足
tNpcGossip[23241]["Text2-4"] = {241}
tNpcGossip[23241]["tOption2-4"] = {241}
--银两不足
tNpcGossip[23241]["Text2-5"] = {251}
tNpcGossip[23241]["tOption2-5"] = {251}

--金钢坚钻转换确认
tNpcGossip[23241]["Text3-2"] = {321}
tNpcGossip[23241]["tOption3-2"] = {321,322}
tNpcGossip[23241]["OptionFunc321"]="GemStoneSales_ChkSecMonopoly</N>1200005"

--道具不足
tNpcGossip[23241]["Text3-3"] = {331}
tNpcGossip[23241]["tOption3-3"] = {331}
--二次确认
tNpcGossip[23241]["Text3-4"] = {341}
tNpcGossip[23241]["tOption3-4"] = {341}
tNpcGossip[23241]["OptionFunc341"]="GemStoneSales_SwitchMonopoly</N>1200005"

----物品配置

--背包信头像
tItemFace[3310740]=1779

--开洞惊喜转盘
tItem[3310741] = tItem[3310741] or {}
tItem[3310741]["Function"] = function (nItemId,sItemName)
	RouletteMould_Main(6892)
end

--金刚尖钻碎片
tItem[3310742]=tItem[3310742]or{}
tItem[3310742]["Function"]=function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tGemStoneSales_Reward["Fragment"])
end

--碎片包
tItem[3310743]=tItem[3310743]or{}
tItem[3310743]["Function"]=function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tGemStoneSales_Reward[nItemId])
end

tItem[3310744]=tItem[3310743]
tItem[3310745]=tItem[3310743]
tItem[3310746]=tItem[3310743]
tItem[3310747]=tItem[3310743]
tItem[3310748]=tItem[3310743]