------------------------------------------------------------------------------------
--Name：            170323[简体征服][任务脚本]店小二功能增加
--Creator:      陈莺
--Created:     2017/03/23
------------------------------------------------------------------------------------
--任务需求：
-- 增加流星卷和龙珠卷的打包功能，10合1，打成的礼包可以叠加10000
------------------------------------------------------------------------------------
-- 命名规范
-- WaiterPacking

----------------------------------表配置部分--------------------------------------------
local tWaiterPacking_Item = {}
	-- tWaiterPacking_Item["effect"] = "angelwing"
	tWaiterPacking_Item[720027] = {}  --流星卷
	tWaiterPacking_Item[720027]["LogId"] = 10000411
	tWaiterPacking_Item[720027]["DeleteItem"] = {}
	tWaiterPacking_Item[720027]["DeleteItem"][1] = {}
	tWaiterPacking_Item[720027]["DeleteItem"][1]["Id"] = 720027
	tWaiterPacking_Item[720027]["DeleteItem"][1]["ItemNum"] = 10
	tWaiterPacking_Item[720027]["DeleteItem"][1]["Monopoly"] = 0
	tWaiterPacking_Item[720027]["RewardItem"] = {}
	tWaiterPacking_Item[720027]["RewardItem"][1] = {}
	tWaiterPacking_Item[720027]["RewardItem"][1]["Id"] = 3302769
	tWaiterPacking_Item[720027]["RewardItem"][1]["Attr"] = "0 1"
	
	tWaiterPacking_Item[720028] = {}  --龙珠卷
	tWaiterPacking_Item[720028]["LogId"] = 10000411
	tWaiterPacking_Item[720028]["DeleteItem"] = {}
	tWaiterPacking_Item[720028]["DeleteItem"][1] = {}
	tWaiterPacking_Item[720028]["DeleteItem"][1]["Id"] = 720028
	tWaiterPacking_Item[720028]["DeleteItem"][1]["ItemNum"] = 10
	tWaiterPacking_Item[720028]["DeleteItem"][1]["Monopoly"] = 0
	tWaiterPacking_Item[720028]["RewardItem"] = {}
	tWaiterPacking_Item[720028]["RewardItem"][1] = {}
	tWaiterPacking_Item[720028]["RewardItem"][1]["Id"] = 3302770
	tWaiterPacking_Item[720028]["RewardItem"][1]["Attr"] = "0 1"
	
	tWaiterPacking_Item[3300376] = {}  --龙珠卷赠
	tWaiterPacking_Item[3300376]["LogId"] = 10000411
	tWaiterPacking_Item[3300376]["DeleteItem"] = {}
	tWaiterPacking_Item[3300376]["DeleteItem"][1] = {}
	tWaiterPacking_Item[3300376]["DeleteItem"][1]["Id"] = 3300376
	tWaiterPacking_Item[3300376]["DeleteItem"][1]["ItemNum"] = 10
	tWaiterPacking_Item[3300376]["RewardItem"] = {}
	tWaiterPacking_Item[3300376]["RewardItem"][1] = {}
	tWaiterPacking_Item[3300376]["RewardItem"][1]["Id"] = 3302896
	tWaiterPacking_Item[3300376]["RewardItem"][1]["Attr"] = "0 1"
	
	tWaiterPacking_Item[3200822] = {}  --龙珠卷赠
	tWaiterPacking_Item[3200822]["LogId"] = 10000411
	tWaiterPacking_Item[3200822]["DeleteItem"] = {}
	tWaiterPacking_Item[3200822]["DeleteItem"][1] = {}
	tWaiterPacking_Item[3200822]["DeleteItem"][1]["Id"] = 3200822
	tWaiterPacking_Item[3200822]["DeleteItem"][1]["ItemNum"] = 10
	tWaiterPacking_Item[3200822]["RewardItem"] = {}
	tWaiterPacking_Item[3200822]["RewardItem"][1] = {}
	tWaiterPacking_Item[3200822]["RewardItem"][1]["Id"] = 3302896
	tWaiterPacking_Item[3200822]["RewardItem"][1]["Attr"] = "0 1"
	
	tWaiterPacking_Item[1] = {}  --龙珠卷赠
	tWaiterPacking_Item[1]["RewardItem"] = {}
	tWaiterPacking_Item[1]["RewardItem"][1] = {}
	tWaiterPacking_Item[1]["RewardItem"][1]["Id"] = 3302896
	tWaiterPacking_Item[1]["RewardItem"][1]["Attr"] = "0 1"
	
	tWaiterPacking_Item[3302769] = {}  --超级流星卷
	tWaiterPacking_Item[3302769]["LogId"] = 10000411
	tWaiterPacking_Item[3302769]["DeleteItem"] = {}
	tWaiterPacking_Item[3302769]["DeleteItem"][1] = {}
	tWaiterPacking_Item[3302769]["DeleteItem"][1]["Id"] = 3302769
	tWaiterPacking_Item[3302769]["RewardItem"] = {}
	tWaiterPacking_Item[3302769]["RewardItem"][1] = {}
	tWaiterPacking_Item[3302769]["RewardItem"][1]["Id"] = 720027
	tWaiterPacking_Item[3302769]["RewardItem"][1]["Attr"] = "0 10"
	tWaiterPacking_Item[3302769]["RewardEffect"] = {}
	tWaiterPacking_Item[3302769]["RewardEffect"]["SzObj"] = "self"
	tWaiterPacking_Item[3302769]["RewardEffect"]["Effect"] = "angelwing"
	
	tWaiterPacking_Item[3302770] = {}  --超级龙珠卷
	tWaiterPacking_Item[3302770]["LogId"] = 10000411
	tWaiterPacking_Item[3302770]["DeleteItem"] = {}
	tWaiterPacking_Item[3302770]["DeleteItem"][1] = {}
	tWaiterPacking_Item[3302770]["DeleteItem"][1]["Id"] = 3302770
	tWaiterPacking_Item[3302770]["RewardItem"] = {}
	tWaiterPacking_Item[3302770]["RewardItem"][1] = {}
	tWaiterPacking_Item[3302770]["RewardItem"][1]["Id"] = 720028
	tWaiterPacking_Item[3302770]["RewardItem"][1]["Attr"] = "0 10"
	tWaiterPacking_Item[3302770]["RewardEffect"] = {}
	tWaiterPacking_Item[3302770]["RewardEffect"]["SzObj"] = "self"
	tWaiterPacking_Item[3302770]["RewardEffect"]["Effect"] = "angelwing"
	
	tWaiterPacking_Item[3302896] = {}  --超级龙珠卷(赠)
	tWaiterPacking_Item[3302896]["LogId"] = 10000411
	tWaiterPacking_Item[3302896]["DeleteItem"] = {}
	tWaiterPacking_Item[3302896]["DeleteItem"][1] = {}
	tWaiterPacking_Item[3302896]["DeleteItem"][1]["Id"] = 3302896
	tWaiterPacking_Item[3302896]["RewardItem"] = {}
	tWaiterPacking_Item[3302896]["RewardItem"][1] = {}
	tWaiterPacking_Item[3302896]["RewardItem"][1]["Id"] = 3200822
	tWaiterPacking_Item[3302896]["RewardItem"][1]["Attr"] = "0 10"
	tWaiterPacking_Item[3302896]["RewardEffect"] = {}
	tWaiterPacking_Item[3302896]["RewardEffect"]["SzObj"] = "self"
	tWaiterPacking_Item[3302896]["RewardEffect"]["Effect"] = "angelwing"
	-- tWaiterPacking_Item[3302896]["Talk"] = tWaiterPacking_Text["MsgBox"]["Get"]
	
	
	-- ===非赠碎片
	-- ===索引:tWaiterPacking_Item[728596][1]
	-- ===
	tWaiterPacking_Item[728596] = {}
	tWaiterPacking_Item[728596][1] = {}
	tWaiterPacking_Item[728596][1]["LogId"] = 10000411
	tWaiterPacking_Item[728596][1]["RewardItem"] = {}
	tWaiterPacking_Item[728596][1]["RewardItem"][1] = {}
	tWaiterPacking_Item[728596][1]["RewardItem"][1]["Id"] = 3326903 -- 九转聚神丹碎片大礼包[3326903][属性:9][叠加:10000][金币:0], 【表格】九转聚神丹碎片大礼包*1
	tWaiterPacking_Item[728596][1]["RewardItem"][1]["Attr"] = "0 1" -- 九转聚神丹碎片大礼包*1
	tWaiterPacking_Item[728596][1]["RewardEffect"] = {}
	tWaiterPacking_Item[728596][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWaiterPacking_Item[728596][1]["RewardEffect"]["Effect"] = "angelwing"


	tWaiterPacking_Item[728596][2] = {}
	-- ===赠品碎片
	-- ===索引:tWaiterPacking_Item[728596][2]
	-- ===
	tWaiterPacking_Item[728596][2]["LogId"] = 10000411
	tWaiterPacking_Item[728596][2]["RewardItem"] = {}
	tWaiterPacking_Item[728596][2]["RewardItem"][1] = {}
	tWaiterPacking_Item[728596][2]["RewardItem"][1]["Id"] = 3326904 -- 九转聚神丹碎片(赠)大礼包[3326904][属性:9][叠加:10000][金币:0], 【表格】九转聚神丹碎片（赠）大礼包*1
	tWaiterPacking_Item[728596][2]["RewardItem"][1]["Attr"] = "0 1" -- 九转聚神丹碎片(赠)大礼包*1
	tWaiterPacking_Item[728596][2]["RewardEffect"] = {}
	tWaiterPacking_Item[728596][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWaiterPacking_Item[728596][2]["RewardEffect"]["Effect"] = "angelwing"


	tWaiterPacking_Item[3326903] = {}
	-- ===九转聚神丹碎片大礼包
	-- ===索引:tWaiterPacking_Item[3326903]
	-- ===删除:3326903,1
	tWaiterPacking_Item[3326903]["LogId"] = 10000411
	tWaiterPacking_Item[3326903]["DeleteItem"] = {}
	tWaiterPacking_Item[3326903]["DeleteItem"][1] = {}
	tWaiterPacking_Item[3326903]["DeleteItem"][1]["Id"] = 3326903 -- 【库】九转聚神丹碎片大礼包[属性:9]
	tWaiterPacking_Item[3326903]["RewardItem"] = {}
	tWaiterPacking_Item[3326903]["RewardItem"][1] = {}
	tWaiterPacking_Item[3326903]["RewardItem"][1]["Id"] = 728596 -- EXPBallFragment[728596][属性:9][叠加:0][金币:0], 【表格】九转聚神丹碎片*10
	tWaiterPacking_Item[3326903]["RewardItem"][1]["Attr"] = "0 10" -- EXPBallFragment*10
	tWaiterPacking_Item[3326903]["RewardEffect"] = {}
	tWaiterPacking_Item[3326903]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWaiterPacking_Item[3326903]["RewardEffect"]["Effect"] = "angelwing"


	tWaiterPacking_Item[3326904] = {}
	-- ===九转聚神丹碎片大礼包
	-- ===索引:tWaiterPacking_Item[3326904]
	-- ===删除:3326904,1
	tWaiterPacking_Item[3326904]["LogId"] = 10000411
	tWaiterPacking_Item[3326904]["DeleteItem"] = {}
	tWaiterPacking_Item[3326904]["DeleteItem"][1] = {}
	tWaiterPacking_Item[3326904]["DeleteItem"][1]["Id"] = 3326904 -- 【库】九转聚神丹碎片(赠)大礼包[属性:9]
	tWaiterPacking_Item[3326904]["RewardItem"] = {}
	tWaiterPacking_Item[3326904]["RewardItem"][1] = {}
	tWaiterPacking_Item[3326904]["RewardItem"][1]["Id"] = 728596 -- EXPBallFragment[728596][属性:9][叠加:0][金币:0], 【表格】九转聚神丹碎片*10（赠）
	tWaiterPacking_Item[3326904]["RewardItem"][1]["Attr"] = "0 10 3" -- EXPBallFragment（赠）*10
	tWaiterPacking_Item[3326904]["RewardEffect"] = {}
	tWaiterPacking_Item[3326904]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWaiterPacking_Item[3326904]["RewardEffect"]["Effect"] = "angelwing"


local tWaiterPacking_MonopolyItem = {}
	tWaiterPacking_MonopolyItem[3302769] = {}  --超级流星卷
	tWaiterPacking_MonopolyItem[3302769]["LogId"] = 10000411
	tWaiterPacking_MonopolyItem[3302769]["DeleteItem"] = {}
	tWaiterPacking_MonopolyItem[3302769]["DeleteItem"][1] = {}
	tWaiterPacking_MonopolyItem[3302769]["DeleteItem"][1]["Id"] = 3302769
	tWaiterPacking_MonopolyItem[3302769]["DeleteItem"][1]["Monopoly"] = 2
	tWaiterPacking_MonopolyItem[3302769]["RewardItem"] = {}
	tWaiterPacking_MonopolyItem[3302769]["RewardItem"][1] = {}
	tWaiterPacking_MonopolyItem[3302769]["RewardItem"][1]["Id"] = 720027
	tWaiterPacking_MonopolyItem[3302769]["RewardItem"][1]["Attr"] = "0 10 3"
	tWaiterPacking_MonopolyItem[3302769]["RewardEffect"] = {}
	tWaiterPacking_MonopolyItem[3302769]["RewardEffect"]["SzObj"] = "self"
	tWaiterPacking_MonopolyItem[3302769]["RewardEffect"]["Effect"] = "angelwing"
	
	tWaiterPacking_MonopolyItem[3302770] = {}  --超级龙珠卷
	tWaiterPacking_MonopolyItem[3302770]["LogId"] = 10000411
	tWaiterPacking_MonopolyItem[3302770]["DeleteItem"] = {}
	tWaiterPacking_MonopolyItem[3302770]["DeleteItem"][1] = {}
	tWaiterPacking_MonopolyItem[3302770]["DeleteItem"][1]["Id"] = 3302770
	tWaiterPacking_MonopolyItem[3302770]["DeleteItem"][1]["Monopoly"] = 2
	tWaiterPacking_MonopolyItem[3302770]["RewardItem"] = {}
	tWaiterPacking_MonopolyItem[3302770]["RewardItem"][1] = {}
	tWaiterPacking_MonopolyItem[3302770]["RewardItem"][1]["Id"] = 3200822
	tWaiterPacking_MonopolyItem[3302770]["RewardItem"][1]["Attr"] = "0 10"
	tWaiterPacking_MonopolyItem[3302770]["RewardEffect"] = {}
	tWaiterPacking_MonopolyItem[3302770]["RewardEffect"]["SzObj"] = "self"
	tWaiterPacking_MonopolyItem[3302770]["RewardEffect"]["Effect"] = "angelwing"

	
local tWaiterPacking_ItemId = {}
	tWaiterPacking_ItemId["Item_1"] = 720028  --非赠龙珠卷
	tWaiterPacking_ItemId["Item_2"] = 3300376 --龙珠卷赠
	tWaiterPacking_ItemId["Item_3"] = 3200822 --龙珠卷赠
	tWaiterPacking_ItemId["Log"] = "0,0,3300376[3200822],%d[%d],10000411,2,3302896,1"
	
local sWaiterPacking_Url = "http://grandwinner.99.com/show/downloadforreward/"

local tWaiterPacking_Data = {}
tWaiterPacking_Data["PackingNum"] = {}
tWaiterPacking_Data["PackingNum"][728596] = 10

local tWaiterPacking_Log = {}
tWaiterPacking_Log["DeleteLog"] = "0,0,%d[%d][%d],%d,0,10000411,2,0,0"    -- 删除物品id，赠品情况，1非赠、2赠品、0全部 ，时效情况 0永久、1时效，删除数量

----------------------------------逻辑部分---------------------------------------------

function WaiterPacking_Bag(nNpcId,nItemId)
	local nItemNum = tWaiterPacking_Item[nItemId]["DeleteItem"][1]["ItemNum"]

	if Item_ChkMulItem(nItemId,nItemId,nItemNum,0,0,0,0) then
		RewardTemplate_UseItem(tWaiterPacking_Item[nItemId])
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	local nItem1 = tWaiterPacking_ItemId["Item_2"]
	local nItem2 = tWaiterPacking_ItemId["Item_3"]
	if nItemId == tWaiterPacking_ItemId["Item_1"] then  --赠的龙珠卷
		if Item_ChkMulItem(nItem1,nItem1,10) then
			RewardTemplate_UseItem(tWaiterPacking_Item[nItem1])
			LinkNpcGossipFunc_New(nNpcId,"4-1")
			return
		end
		if Item_ChkMulItem(nItem2,nItem2,10) then
			RewardTemplate_UseItem(tWaiterPacking_Item[nItem2])
			LinkNpcGossipFunc_New(nNpcId,"4-1")
			return
		end
		--两个物品相加10个
		local nItemNum1 = Get_CountItemType(nItem1,0)
		local nItemNum2 = Get_CountItemType(nItem2,0)
		local nNum = 10-nItemNum1
		if (nItemNum1 + nItemNum2 >= 10) then
			if Item_DelMulItem(nItem1,nItem1,nItemNum1) and Item_DelMulItem(nItem2,nItem2,nNum) then
				RewardTemplate_UseItem(tWaiterPacking_Item[1])
				local sLog = string.format(tWaiterPacking_ItemId["Log"],nItemNum1,nNum)
				Sys_SaveActionFestivalLog(sLog)
				LinkNpcGossipFunc_New(nNpcId,"4-1")
				return
			end
		end
	end
	User_TalkChannel2005(tWaiterPacking_Text["MsgBox"][nItemId])
end

function WaiterPacking_OpenItem(nItemId)
	if Item_ChkItem(nItemId) then
		RewardTemplate_UseItem(tWaiterPacking_Item[nItemId])
	end
end

--大都市宣传npc跳出内嵌网页
function WaiterPacking_NewbigcityOpen()
	local nUserId = Get_UserId()
	User_SendWebDialog(sWaiterPacking_Url,nUserId)
end

function WaiterPacking_Packing(nItemId)
	local nNum = tWaiterPacking_Data["PackingNum"][nItemId] 
	if (not Item_ChkMulItem(nItemId,nItemId,nNum,0,nil,nil,0)) and (not Item_ChkMulItem(nItemId,nItemId,nNum,2,nil,nil,0)) then  -- 判断是否有永久时效非赠物品 和 是否有永久时效赠品物品
		User_TalkChannel2005(tWaiterPacking_Text["MsgBox"]["NoItem"][nItemId] )
		return
	end 
	
	
	local nCalLoop = 0
	while Item_ChkMulItem(nItemId,nItemId,nNum,0,nil,nil,0) do   --判断是否有非赠永久时效物品
		if nCalLoop > G_CalculateLoop then
			Sys_SaveAbnormalLog("函数 WaiterPacking_Packing 1 中 [while]循环超过1000次！")
			break
		end
		nCalLoop = nCalLoop + 1
		local bJudge = TermsOfUse_Main(nItemId,tWaiterPacking_Item[nItemId][1])
		if not bJudge then
			return
		end
		if Item_DelMulItem(nItemId,nItemId,nNum,0,nil,nil,0) then 
			local tTextLog = string.format(tWaiterPacking_Log["DeleteLog"],nItemId,0,0,nNum)
			Sys_SaveActionFestivalLog(tTextLog)
			RewardTemplate_UseItemAndMsg(tWaiterPacking_Item[nItemId][1])
		end 
	end 
	local nCalLoopNew = 0
	while Item_ChkMulItem(nItemId,nItemId,nNum,2,nil,nil,0) do   --判断是否有赠品永久时效物品
		if nCalLoopNew > G_CalculateLoop then
			Sys_SaveAbnormalLog("函数 WaiterPacking_Packing 2 中 [while]循环超过1000次！")
			break
		end
		nCalLoopNew = nCalLoopNew + 1
		local bJudge = TermsOfUse_Main(nItemId,tWaiterPacking_Item[nItemId][2])
		if not bJudge then
			return
		end
		if Item_DelMulItem(nItemId,nItemId,nNum,2,nil,nil,0) then 
			local tTextLog = string.format(tWaiterPacking_Log["DeleteLog"],nItemId,2,0,nNum)
			Sys_SaveActionFestivalLog(tTextLog)
			RewardTemplate_UseItemAndMsg(tWaiterPacking_Item[nItemId][2])
		end 
	end 
end 




----------------------------------NPC部分---------------------------------------------
tNpcFace[502] = 7
tNpcGossip[10063]= tNpcGossip[10063] or DefaultNpc:new{}
tNpcGossip[10063]["OptionHidden"] = 1

tNpcGossip[10063]["Text2-1"] = {211}
tNpcGossip[10063]["Text211"] = tWaiterPacking_Text[10063]["Text211"]
tNpcGossip[10063]["tOption2-1"] = {21,22}
tNpcGossip[10063]["Option21"] = tWaiterPacking_Text[10063]["Option21"]
tNpcGossip[10063]["OptionFunc21"] = "WaiterPacking_Bag</N>10063</N>720027"
tNpcGossip[10063]["Option22"] = tWaiterPacking_Text[10063]["Option22"]

tNpcGossip[10063]["Text3-1"] = {311}
tNpcGossip[10063]["Text311"] = tWaiterPacking_Text[10063]["Text311"]
tNpcGossip[10063]["tOption3-1"] = {31,22}
tNpcGossip[10063]["Option31"] = tWaiterPacking_Text[10063]["Option31"]
tNpcGossip[10063]["OptionFunc31"] = "WaiterPacking_Bag</N>10063</N>720028"

tNpcGossip[10063]["Text4-1"] = {411}
tNpcGossip[10063]["Text411"] = tWaiterPacking_Text[10063]["Text411"]
tNpcGossip[10063]["tOption4-1"] = {41}
tNpcGossip[10063]["Option41"] = tWaiterPacking_Text[10063]["Option41"]

----------------------------------物品部分---------------------------------------------
tItem[3302769] = tItem[3302769] or {}
tItem[3302769]["Function"] = function(nItemId,sItemName)
	-- 加上赠品继承
	local nMonopoly = Get_ItemMonopoly()
	-- 是赠品
	if nMonopoly == 3 then
		RewardTemplate_UseItem(tWaiterPacking_MonopolyItem[nItemId])
	else
		WaiterPacking_OpenItem(nItemId)
	end
end

tItem[3302770] = tItem[3302770] or {}
tItem[3302770]["Function"] = function(nItemId,sItemName)
	-- 加上赠品继承
	local nMonopoly = Get_ItemMonopoly()
	-- 是赠品
	if nMonopoly == 3 then
		RewardTemplate_UseItem(tWaiterPacking_MonopolyItem[nItemId])
	else
		WaiterPacking_OpenItem(nItemId)
	end
end

tItem[3302896] = tItem[3302896] or {}
tItem[3302896]["Function"] = function(nItemId,sItemName)
	WaiterPacking_OpenItem(nItemId)
end

tItem[3326903] = tItem[3326903] or {}
tItem[3326903]["Function"] = function(nItemId,sItemName)
	local bJudge = TermsOfUse_Main(nItemId,tWaiterPacking_Item[nItemId])
	if not bJudge then
		return
	end
	RewardTemplate_UseItemAndMsg(tWaiterPacking_Item[nItemId])
end
tItem[3326904] = tItem[3326903] or {}