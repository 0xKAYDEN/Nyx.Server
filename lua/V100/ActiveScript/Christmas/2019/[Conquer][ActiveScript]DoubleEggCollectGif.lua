----------------------------------------------------------------------------
--Name:		[征服][活动脚本]双旦活动之收集礼物.lua
--Purpose:	双旦活动之收集礼物
--Creator: 	洪聪敏
--Created:	2019/11/24
----------------------------------------------------------------------------
--命名前缀：DoubleEggCollectGif_
--luaini:41642
--logid:12001739


----------------------------------------------------------------------------
local tDoubleEggCollectGif_Reward = {}
	-- ===圣诞无光效外套礼包
	-- ===索引: tDoubleEggCollectGif_Reward[3314624]
	-- ===删除: 3314624,1
	tDoubleEggCollectGif_Reward[3314624] = {}
	tDoubleEggCollectGif_Reward[3314624]["LogId"] = 12001739
	tDoubleEggCollectGif_Reward[3314624]["LogStep"] = "6[1]"
	tDoubleEggCollectGif_Reward[3314624]["DeleteItem"] = {}
	tDoubleEggCollectGif_Reward[3314624]["DeleteItem"][1] = {}
	tDoubleEggCollectGif_Reward[3314624]["DeleteItem"][1]["Id"] = 3314624 -- 【库】圣诞无光效外套礼包[属性:137]
	tDoubleEggCollectGif_Reward[3314624]["RewardItem"] = {}
	tDoubleEggCollectGif_Reward[3314624]["RewardItem"][1] = {}
	tDoubleEggCollectGif_Reward[3314624]["RewardItem"][1]["Id"] = 195945 --  195945 【库里没有该物品】, 【表格】圣诞无光效外套
	tDoubleEggCollectGif_Reward[3314624]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑 195945 【库里没有该物品】*1
	tDoubleEggCollectGif_Reward[3314624]["RewardEffect"] = {}
	tDoubleEggCollectGif_Reward[3314624]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDoubleEggCollectGif_Reward[3314624]["RewardEffect"]["Effect"] = "angelwing"

	tDoubleEggCollectGif_Reward[3314882] = {}
	-- ===圣诞帽福袋
	-- ===索引: tDoubleEggCollectGif_Reward[3314882]
	-- ===删除: 3314882,1
	tDoubleEggCollectGif_Reward[3314882]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDoubleEggCollectGif_Reward[3314882]["DeleteItem"] = {}
	tDoubleEggCollectGif_Reward[3314882]["DeleteItem"][1] = {}
	tDoubleEggCollectGif_Reward[3314882]["DeleteItem"][1]["Id"] = 3314882 -- 【库】 3314882 【库里没有该物品】[属性:]
	tDoubleEggCollectGif_Reward[3314882]["LogId"] = 12001739
	-- 【中文】圣诞帽 - 25%
	tDoubleEggCollectGif_Reward[3314882][1] = {}
	tDoubleEggCollectGif_Reward[3314882][1]["RandomItemChanceType"] = 2
	tDoubleEggCollectGif_Reward[3314882][1]["ItemChance"] = 2500
	tDoubleEggCollectGif_Reward[3314882][1]["RewardItem"] = {}
	tDoubleEggCollectGif_Reward[3314882][1]["RewardItem"][1] = {}
	tDoubleEggCollectGif_Reward[3314882][1]["RewardItem"][1]["Id"] = 3600198 -- 【中文】圣诞帽[3600198][属性:137][叠加:1000][金币:0], 【表格】【中文】圣诞帽
	tDoubleEggCollectGif_Reward[3314882][1]["RewardItem"][1]["Attr"] = "0 1" -- 【中文】圣诞帽*1
	-- 【英文】圣诞帽 - 25%
	tDoubleEggCollectGif_Reward[3314882][2] = {}
	tDoubleEggCollectGif_Reward[3314882][2]["RandomItemChanceType"] = 2
	tDoubleEggCollectGif_Reward[3314882][2]["ItemChance"] = 2500
	tDoubleEggCollectGif_Reward[3314882][2]["RewardItem"] = {}
	tDoubleEggCollectGif_Reward[3314882][2]["RewardItem"][1] = {}
	tDoubleEggCollectGif_Reward[3314882][2]["RewardItem"][1]["Id"] = 3600199 -- 【英文】圣诞帽[3600199][属性:137][叠加:1000][金币:0], 【表格】【英文】圣诞帽
	tDoubleEggCollectGif_Reward[3314882][2]["RewardItem"][1]["Attr"] = "0 1" -- 【英文】圣诞帽*1
	-- 【阿语】圣诞帽 - 25%
	tDoubleEggCollectGif_Reward[3314882][3] = {}
	tDoubleEggCollectGif_Reward[3314882][3]["RandomItemChanceType"] = 2
	tDoubleEggCollectGif_Reward[3314882][3]["ItemChance"] = 2500
	tDoubleEggCollectGif_Reward[3314882][3]["RewardItem"] = {}
	tDoubleEggCollectGif_Reward[3314882][3]["RewardItem"][1] = {}
	tDoubleEggCollectGif_Reward[3314882][3]["RewardItem"][1]["Id"] = 3600200 -- 【阿语】圣诞帽[3600200][属性:137][叠加:1000][金币:0], 【表格】【阿语】圣诞帽
	tDoubleEggCollectGif_Reward[3314882][3]["RewardItem"][1]["Attr"] = "0 1" -- 【阿语】圣诞帽*1
	-- 【西语】圣诞帽 - 25%
	tDoubleEggCollectGif_Reward[3314882][4] = {}
	tDoubleEggCollectGif_Reward[3314882][4]["RandomItemChanceType"] = 2
	tDoubleEggCollectGif_Reward[3314882][4]["ItemChance"] = 2500
	tDoubleEggCollectGif_Reward[3314882][4]["RewardItem"] = {}
	tDoubleEggCollectGif_Reward[3314882][4]["RewardItem"][1] = {}
	tDoubleEggCollectGif_Reward[3314882][4]["RewardItem"][1]["Id"] = 3600201 -- 【西语】圣诞帽[3600201][属性:137][叠加:1000][金币:0], 【表格】【西语】圣诞帽
	tDoubleEggCollectGif_Reward[3314882][4]["RewardItem"][1]["Attr"] = "0 1" -- 【西语】圣诞帽*1


	
	
	tDoubleEggCollectGif_Reward["OutTime"] = {}
	-- ===过期处理
	-- ===索引: tDoubleEggCollectGif_Reward["OutTime"]
	-- ===
	-- ===
	tDoubleEggCollectGif_Reward["OutTime"]["LogId"] = 12001739
	tDoubleEggCollectGif_Reward["OutTime"]["LogStep"] = "6[1]"
	tDoubleEggCollectGif_Reward["OutTime"]["RewardItem"] = {}
	tDoubleEggCollectGif_Reward["OutTime"]["RewardItem"][1] = {}
	tDoubleEggCollectGif_Reward["OutTime"]["RewardItem"][1]["Id"] = 3311733  -- FortuneCoin[3301454][属性:9][叠加:10000][金币:0], 100气力值
	tDoubleEggCollectGif_Reward["OutTime"]["RewardItem"][1]["Attr"] = "0 %d" -- FortuneCoin*1
	tDoubleEggCollectGif_Reward["OutTime"]["RewardEffect"] = {}
	tDoubleEggCollectGif_Reward["OutTime"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDoubleEggCollectGif_Reward["OutTime"]["RewardEffect"]["Effect"] = "angelwing"

	
	
	
	--新增家具
	local tDoubleEggCollectGif_Cont = {}
	tDoubleEggCollectGif_Cont["Map"] = 1002
	tDoubleEggCollectGif_Cont["MapGif"] = 1036
	tDoubleEggCollectGif_Cont["Npc"] = 25621
	tDoubleEggCollectGif_Cont["House_Type"] = 1024
	tDoubleEggCollectGif_Cont["FurnitureLimit"] = {}
	tDoubleEggCollectGif_Cont["FurnitureLimit"][2] = 8
	tDoubleEggCollectGif_Cont["FurnitureLimit"][3] = 9
	tDoubleEggCollectGif_Cont["FurnitureLimit"][4] = 10
	tDoubleEggCollectGif_Cont["FurnitureLimit"][5] = 12
	tDoubleEggCollectGif_Cont["FurnitureLimit"][6] = 20
	--npc外形
	tDoubleEggCollectGif_Cont["Lookface"] = {}
	tDoubleEggCollectGif_Cont["Lookface"][3314625] = 22160
	tDoubleEggCollectGif_Cont["Lookface"][3314626] = 22170
	tDoubleEggCollectGif_Cont["Lookface"][3314627] = 22180
	tDoubleEggCollectGif_Cont["Lookface"][3314782] = 22190
	tDoubleEggCollectGif_Cont["Lookface"][3314783] = 22200

	--收起家具的逻辑
	tDoubleEggCollectGif_Cont["LookfaceFail"] = {}
	tDoubleEggCollectGif_Cont["LookfaceFail"][3314625] = 98190114
	tDoubleEggCollectGif_Cont["LookfaceFail"][3314626] = 98190115
	tDoubleEggCollectGif_Cont["LookfaceFail"][3314627] = 98190116
	tDoubleEggCollectGif_Cont["LookfaceFail"][3314782] = 98118648
	tDoubleEggCollectGif_Cont["LookfaceFail"][3314783] = 98118649
	--删除物品打的log
	tDoubleEggCollectGif_Cont["LogId"] = "0,0,%d,1,12001739,6[1],0,0"
	tDoubleEggCollectGif_Cont["DelItem"] = "0,0,%d,%d,12001739,6[1],0,0"
	--给该物品
	tDoubleEggCollectGif_Cont["Gift"] = {}
	tDoubleEggCollectGif_Cont["Gift"]["RewardItem"] = {}
	tDoubleEggCollectGif_Cont["Gift"]["RewardItem"][1] = {}
	tDoubleEggCollectGif_Cont["Gift"]["RewardItem"][1]["Id"] = 3313740
	tDoubleEggCollectGif_Cont["Gift"]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleEggCollectGif_Cont["Gift"]["LogId"] = 12001739
	tDoubleEggCollectGif_Cont["Gift"]["LogStep"] = "6[1]"
	
	tDoubleEggCollectGif_Cont["ActTime"] = tActivityTime["GlobalChristmas"]["ActivityTime"]
	tDoubleEggCollectGif_Cont["FurnitureActTime"] = tActivityTime["DoubleEggCollectGif"]["ActivityTime"]

----------------------------------------------------------------------------
	
--打开兑换商店
function DoubleEggCollectGif_OpenShop(nNpcId)
	if not Sys_ChkFullTime(tDoubleEggCollectGif_Cont["ActTime"]) then
		return
	end
	User_OpenExchangeShop(nNpcId)
end

	
--使用物品
function DoubleEggCollectGif_UseFurniture(nItemId)
	
	--活动过期
	if not Sys_ChkFullTime(tDoubleEggCollectGif_Cont["FurnitureActTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		end
		local sDoubleEggCollectGif_Log = string.format(tDoubleEggCollectGif_Cont["LogId"],nItemId)
		Sys_SaveActionFestivalLog(sDoubleEggCollectGif_Log)
		User_TalkChannel2005(tDoubleEggCollectGif_Text["DropItem"])
		return
	end

	--判断是否在房屋内使用
	local nDoubleEggCollectGif_HouseType = tDoubleEggCollectGif_Cont["House_Type"]
	local nDoubleEggCollectGif_PlayerId = Get_UserId()
	local nDoubleEggCollectGif_UserMapType = Get_MapType()
	local nDoubleEggCollectGif_MapLev = Get_MapResLev(nNowMapId)
	if not Sys_ParseNumbersContain(nDoubleEggCollectGif_HouseType,nDoubleEggCollectGif_UserMapType) then
		User_TalkChannel2005(tDoubleEggCollectGif_Text["NoHome"])
		return
	end
	
	local nDoubleEggCollectGif_MapOwnerId = Get_MapOwnerId()
	if nDoubleEggCollectGif_MapOwnerId ~= nDoubleEggCollectGif_PlayerId then
		User_TalkChannel2005(tChristmas2015_MakeSnowman_Text["Furniture"]["TalkError1"])
		return
	end
	local nDoubleEggCollectGif_FurnitureLimit = 0
	if 2 <= nDoubleEggCollectGif_MapLev and nDoubleEggCollectGif_MapLev <= 6 then
		nDoubleEggCollectGif_FurnitureLimit = tDoubleEggCollectGif_Cont["FurnitureLimit"][nDoubleEggCollectGif_MapLev]
	else
		User_TalkChannel2005(tChristmas2015_MakeSnowman_Text["Furniture"]["Text"])
		return
	end
	--判断玩家房子内的家具数量
	if Get_NpcCount() >= nDoubleEggCollectGif_FurnitureLimit then
		local sDoubleEggCollectGif_ErrorTip = string.format(tChristmas2015_MakeSnowman_Text["Furniture"]["TalkError2"],nDoubleEggCollectGif_MapLev,tDoubleEggCollectGif_Cont["FurnitureLimit"][nDoubleEggCollectGif_MapLev])
		User_TalkChannel2005(sDoubleEggCollectGif_ErrorTip)
		return
	end

	Npc_RequestLayNpcByItem("DoubleEggCollectGif_CreateNpc</N>" .. nItemId,2,tDoubleEggCollectGif_Cont["Lookface"][nItemId],0,nDoubleEggCollectGif_PlayerId)
end

--具体摆放家具
function DoubleEggCollectGif_CreateNpc(nItemId)

	if Npc_CreatLayNpcByItem(tDoubleEggCollectGif_Text["Name"][nItemId],2,32,tDoubleEggCollectGif_Cont["Lookface"][nItemId],0,0,0,0,0,tDoubleEggCollectGif_Cont["LookfaceFail"][nItemId]) then 
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			local sDoubleEggCollectGif_Log = string.format(tDoubleEggCollectGif_Cont["LogId"],nItemId)
			Sys_SaveActionFestivalLog(sDoubleEggCollectGif_Log)
			User_TalkChannel2005(string.format(tDoubleEggCollectGif_Text["SnowmanNpc"],tDoubleEggCollectGif_Text["Name"][nItemId]))
			return
		end
	end
	return
	
end

--删除过期物品
function DoubleEggCollectGif_DelNpcItem(nItemId)
	if not Sys_ChkFullTime(tDoubleEggCollectGif_Cont["FurnitureActTime"]) then
		Npc_DelDynaByID()
		User_TalkChannel2005(tDoubleEggCollectGif_Text["DropItem"])
		return
	end
	
	Sys_DialogText(tDoubleEggCollectGif_Text["Receive"]["Text"])
	Sys_DialogOption(tDoubleEggCollectGif_Text["Receive"]["Option1"],"</F>DoubleEggCollectGif_FoldFurniture</N>"..nItemId)
	Sys_DialogOption(tDoubleEggCollectGif_Text["Receive"]["Option2"],"</F>NULL")
	Sys_DialogEnd()
end

--收起家具
function DoubleEggCollectGif_FoldFurniture(nItemId)
	if not Sys_ChkFullTime(tDoubleEggCollectGif_Cont["FurnitureActTime"]) then
		Npc_DelDynaByID()
		return
	end
	local nDoubleEggCollectGif_PlayerId = Get_UserId()
	local nDoubleEggCollectGif_MapOwnerId = Get_MapOwnerId()
	if nDoubleEggCollectGif_MapOwnerId ~= nDoubleEggCollectGif_PlayerId then
		return
	end
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tChristmas2015_MakeSnowman_Text["MsgBox"]["BagFull"])
		return
	end
	if Npc_DelDynaByID() then
		local tReward = CommonFunc_Copy(tDoubleEggCollectGif_Cont["Gift"])
		tReward["RewardItem"][1]["Id"] = nItemId
		RewardTemplate_UseItemAndMsg(tReward)
	end
end
--圣诞帽使用自动寻路
function DoubleEggCollectGif_UseItem(nItemId)
	local nDoubleEggCollectGif_UserId = Get_UserId()
	local nDoubleEggCollectGif_MapId = Get_UserMapId(nDoubleEggCollectGif_UserId)
	if not Sys_ChkFullTime(tDoubleEggCollectGif_Cont["ActTime"]) then
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId)  then 
		
			local tReward = CommonFunc_Copy(tDoubleEggCollectGif_Reward["OutTime"])
			tReward["RewardItem"][1]["Attr"]=string.format(tDoubleEggCollectGif_Reward["OutTime"]["RewardItem"][1]["Attr"],nNum)
			RewardTemplate_UseItem(tReward)
			Sys_MsgBox(tDoubleEggCollectGif_Text["ChgItem"])
			local sDoubleEggCollectGif_Log=string.format(tDoubleEggCollectGif_Cont["DelItem"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sDoubleEggCollectGif_Log)
		end 
		return
	end 
	
	--判断是否在跨服
	if User_IsCross() or (nDoubleEggCollectGif_MapId ~= tDoubleEggCollectGif_Cont["Map"] and nDoubleEggCollectGif_MapId ~= tDoubleEggCollectGif_Cont["MapGif"]) then
		Sys_MsgBox(tDoubleEggCollectGif_Text["Cross"],nil,nil,nUserId)
		return
	end
	NpcPosition_PathFind(tDoubleEggCollectGif_Cont["Npc"])
end
--切换皮肤界面
function DoubleEggCollectGif_ChgWindow(nItemId,nIndex)
	local nDoubleEggCollectGif_UserId = Get_UserId()
	--过期删除
	if not Sys_ChkFullTime(tDoubleEggCollectGif_Cont["ActTime"]) then
		local nDoubleEggCollectGif_ItemNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tDoubleEggCollectGif_Cont["DelItem"],nItemId,nDoubleEggCollectGif_ItemNum))
			Sys_MsgBox(tDoubleEggCollectGif_Text["OutTime"])
		end
		return
	end
	if Item_ChkItem(nItemId) then
		User_NotifyChgWindow(131,nIndex, nDoubleEggCollectGif_UserId)
		Sys_MsgBox(tDoubleEggCollectGif_Text["ChgWindows"][nIndex],nil,nil,nDoubleEggCollectGif_UserId)
	end
end
----------------------------------------------------------------------------
tNpcFace[2187]=193
tNpcGossip[25571]=tNpcGossip[25571]	or	DefaultNpc:new{}
tNpcGossip[25571]["OptionHidden"]=1
tNpcGossip[25571]["DialogueText"]=tDoubleEggCollectGif_Text[25571]

tNpcGossip[25571]["Text1-1"]={111,112,113,114,115}
tNpcGossip[25571]["tOption1-1"]={111,112}
tNpcGossip[25571]["OptionFunc111"] = "DoubleEggCollectGif_OpenShop</N>25571"

----------------------------------------------------------------------------
tItem[3314624]=tItem[3314624]or{}
tItem[3314624]["Function"]=function(nItemId,sItemName)
	local nDoubleEggCollectGif_UserId = Get_UserId()
	RewardTemplate_UseItemAndMsg(tDoubleEggCollectGif_Reward[nItemId],nDoubleEggCollectGif_UserId)
end

tItemFace[3314625] = 2044
tItemFace[3314626] = 2044
tItemFace[3314627] = 2044
tItemFace[3314782] = 2044
tItemFace[3314783] = 2044
--家具
tItem[3314625] = tItem[3314625] or {}
tItem[3314625]["Function"] = function(nItemId,sItemName)
	DoubleEggCollectGif_UseFurniture(nItemId)
end
tItem[3314626] = tItem[3314625] or {}
tItem[3314627] = tItem[3314625] or {}
tItem[3314782] = tItem[3314625] or {}
tItem[3314783] = tItem[3314625] or {}

--圣诞帽使用自动寻路
--家具
tItem[3600198] = tItem[3600198] or {}
tItem[3600198]["Function"] = function(nItemId,sItemName)
	DoubleEggCollectGif_UseItem(nItemId)
end
tItem[3600199] = tItem[3600198] or {}
tItem[3600200] = tItem[3600198] or {}
tItem[3600201] = tItem[3600198] or {}


--圣诞帽福袋
tItem[3314882] = tItem[3314882] or {}
tItem[3314882]["Function"] = function(nItemId,sItemName)
	local bDoubleEggCollectGif_Judge = TermsOfUse_Main(nItemId,tDoubleEggCollectGif_Reward[nItemId])
	local nDoubleEggCollectGif_UserId = Get_UserId()
	if not Sys_ChkFullTime(tDoubleEggCollectGif_Cont["ActTime"]) then
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId)  then 
		
			local tReward = CommonFunc_Copy(tDoubleEggCollectGif_Reward["OutTime"])
			tReward["RewardItem"][1]["Attr"]=string.format(tDoubleEggCollectGif_Reward["OutTime"]["RewardItem"][1]["Attr"],nNum)
			RewardTemplate_UseItem(tReward)
			Sys_MsgBox(tDoubleEggCollectGif_Text["ChgItem"])
			local sDoubleEggCollectGif_Log=string.format(tDoubleEggCollectGif_Cont["DelItem"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sDoubleEggCollectGif_Log)
		end 
		return
	end 
	
	if not bDoubleEggCollectGif_Judge then
		return
	end
	
	RewardTemplate_RandomReward(tDoubleEggCollectGif_Reward,nItemId,nDoubleEggCollectGif_UserId)
end




tItemFace[3314883]=2709
tItem[3314883] = tItem[3314883] or {}
tItem[3314883]["DialogueText"]=tDoubleEggCollectGif_Text[3314883]
tItem[3314883]["Text1-1"]={111}
tItem[3314883]["tOption1-1"]={111,112}
tItem[3314883]["OptionFunc111"] = "DoubleEggCollectGif_ChgWindow</N>3314883</N>1"
tItem[3314883]["OptionFunc112"] = "DoubleEggCollectGif_ChgWindow</N>3314883</N>0"

