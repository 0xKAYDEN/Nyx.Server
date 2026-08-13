--------------------------------------------------------------------------------
--190404[简体征服][活动脚本]幸运抽奖活动(4.11-4.25)
-- 幸运抽奖活动
--Creator: 	傅伟龙
--Created:	2019-03-22
--------------------------------------------------------------------------------
--前缀 LuckyDrawAct_
-- logid 10002450

------------------------------------------常量表配置--------------------------------------
local tLuckyDrawAct_Cont = {}
	tLuckyDrawAct_Cont["BefTime"] = tActivityTime["LuckyDrawAct"]["BefTime"]
	tLuckyDrawAct_Cont["ActTime"] = tActivityTime["LuckyDrawAct"]["ActTime"]
	
	--兰花兑换券所需数量
	tLuckyDrawAct_Cont["ItemNum"] = {}
	tLuckyDrawAct_Cont["ItemNum"][1] = 3
	tLuckyDrawAct_Cont["ItemNum"][2] = 9
	tLuckyDrawAct_Cont["ItemNum"][3] = 99
	tLuckyDrawAct_Cont["ItemNum"][4] = 999
	tLuckyDrawAct_Cont["ItemNum"][6] = 1
	
	--邮件
	tLuckyDrawAct_Cont["Mail"] = {}
	tLuckyDrawAct_Cont["Mail"]["ActionId"] = 571820
	tLuckyDrawAct_Cont["Mail"]["ExistDay"] = 30
	-- ===精致百合花礼盒
	-- ===索引: 3320919
	-- ===删除:3320919
	-- ===
	
	--临时表
local LuckyDrawAct_clrGlobal = {}
	
	local tLuckyDrawAct_RewardItem = {}
	tLuckyDrawAct_RewardItem[3320919] = {}
	tLuckyDrawAct_RewardItem[3320919]["LogId"] = 12001355
	tLuckyDrawAct_RewardItem[3320919]["DeleteItem"] = {}
	tLuckyDrawAct_RewardItem[3320919]["DeleteItem"][1] = {}
	tLuckyDrawAct_RewardItem[3320919]["DeleteItem"][1]["Id"] = 3320919 -- 【库】精致百合花礼盒[属性:8]
	tLuckyDrawAct_RewardItem[3320919]["RewardItem"] = {}
	tLuckyDrawAct_RewardItem[3320919]["RewardItem"][1] = {}
	tLuckyDrawAct_RewardItem[3320919]["RewardItem"][1]["Id"] = 3321057 -- 【库】兰花兑换券[属性:9]【表格】1张兰花兑换券
	tLuckyDrawAct_RewardItem[3320919]["RewardItem"][1]["Attr"] = "0 1" -- 兰花兑换券*1
	tLuckyDrawAct_RewardItem[3320919]["RewardItem"][2] = {}
	tLuckyDrawAct_RewardItem[3320919]["RewardItem"][2]["Id"] = 3320922 -- 【库】16周年幸运礼券[属性:8]【表格】16周年幸运礼券
	tLuckyDrawAct_RewardItem[3320919]["RewardItem"][2]["Attr"] = "0 1" -- 16周年幸运礼券*1
	tLuckyDrawAct_RewardItem[3320919]["RewardEffect"] = {}
	tLuckyDrawAct_RewardItem[3320919]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDrawAct_RewardItem[3320919]["RewardEffect"]["Effect"] = "angelwing"


	-- ===豪华百合花礼盒
	-- ===索引: 3320920
	-- ===删除:3320920
	-- ===
	tLuckyDrawAct_RewardItem[3320920] = {}
	tLuckyDrawAct_RewardItem[3320920]["LogId"] = 12001355
	tLuckyDrawAct_RewardItem[3320920]["DeleteItem"] = {}
	tLuckyDrawAct_RewardItem[3320920]["DeleteItem"][1] = {}
	tLuckyDrawAct_RewardItem[3320920]["DeleteItem"][1]["Id"] = 3320920 -- 【库】豪华百合花礼盒[属性:8]
	tLuckyDrawAct_RewardItem[3320920]["RewardItem"] = {}
	tLuckyDrawAct_RewardItem[3320920]["RewardItem"][1] = {}
	tLuckyDrawAct_RewardItem[3320920]["RewardItem"][1]["Id"] = 3321057 -- 【库】兰花兑换券[属性:9]【表格】9张兰花兑换券
	tLuckyDrawAct_RewardItem[3320920]["RewardItem"][1]["Attr"] = "0 9" -- 兰花兑换券*9
	tLuckyDrawAct_RewardItem[3320920]["RewardItem"][2] = {}
	tLuckyDrawAct_RewardItem[3320920]["RewardItem"][2]["Id"] = 3320923 -- 【库】16周年好运礼券[属性:8]【表格】16周年好运礼券
	tLuckyDrawAct_RewardItem[3320920]["RewardItem"][2]["Attr"] = "0 1" -- 16周年好运礼券*1
	tLuckyDrawAct_RewardItem[3320920]["RewardEffect"] = {}
	tLuckyDrawAct_RewardItem[3320920]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDrawAct_RewardItem[3320920]["RewardEffect"]["Effect"] = "angelwing"


	-- ===至尊百合花礼盒
	-- ===索引: 3320921
	-- ===删除:3320921
	-- ===
	tLuckyDrawAct_RewardItem[3320921] = {}
	tLuckyDrawAct_RewardItem[3320921]["LogId"] = 12001355
	tLuckyDrawAct_RewardItem[3320921]["DeleteItem"] = {}
	tLuckyDrawAct_RewardItem[3320921]["DeleteItem"][1] = {}
	tLuckyDrawAct_RewardItem[3320921]["DeleteItem"][1]["Id"] = 3320921 -- 【库】至尊百合花礼盒[属性:8]
	tLuckyDrawAct_RewardItem[3320921]["RewardItem"] = {}
	tLuckyDrawAct_RewardItem[3320921]["RewardItem"][1] = {}
	tLuckyDrawAct_RewardItem[3320921]["RewardItem"][1]["Id"] = 3321057 -- 【库】兰花兑换券[属性:9]【表格】99张兰花兑换券
	tLuckyDrawAct_RewardItem[3320921]["RewardItem"][1]["Attr"] = "0 99" -- 兰花兑换券*99
	tLuckyDrawAct_RewardItem[3320921]["RewardItem"][2] = {}
	tLuckyDrawAct_RewardItem[3320921]["RewardItem"][2]["Id"] = 3320924 -- 【库】16周年鸿运礼券[属性:8]【表格】16周年鸿运礼券
	tLuckyDrawAct_RewardItem[3320921]["RewardItem"][2]["Attr"] = "0 1" -- 16周年鸿运礼券*1
	tLuckyDrawAct_RewardItem[3320921]["RewardEffect"] = {}
	tLuckyDrawAct_RewardItem[3320921]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDrawAct_RewardItem[3320921]["RewardEffect"]["Effect"] = "angelwing"
	-- ===400万银两包
	-- ===索引:3320925
	-- ===删除:3320925
	tLuckyDrawAct_RewardItem[3320925] = {}
	tLuckyDrawAct_RewardItem[3320925]["LogId"] = 12001355
	tLuckyDrawAct_RewardItem[3320925]["DeleteItem"] = {}
	tLuckyDrawAct_RewardItem[3320925]["DeleteItem"][1] = {}
	tLuckyDrawAct_RewardItem[3320925]["DeleteItem"][1]["Id"] = 3320925 -- 【库】400万银两包[属性:8]
	tLuckyDrawAct_RewardItem[3320925]["RewardMoney"] = {}
	tLuckyDrawAct_RewardItem[3320925]["RewardMoney"]["Value"] = 4000000 -- 金币
	tLuckyDrawAct_RewardItem[3320925]["RewardEffect"] = {}
	tLuckyDrawAct_RewardItem[3320925]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDrawAct_RewardItem[3320925]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3200万银两包
	-- ===索引: 3320926
	-- ===删除:3320926
	tLuckyDrawAct_RewardItem[3320926] = {}
	tLuckyDrawAct_RewardItem[3320926]["LogId"] = 12001355
	tLuckyDrawAct_RewardItem[3320926]["DeleteItem"] = {}
	tLuckyDrawAct_RewardItem[3320926]["DeleteItem"][1] = {}
	tLuckyDrawAct_RewardItem[3320926]["DeleteItem"][1]["Id"] = 3320926 -- 【库】3200万银两包[属性:8]
	tLuckyDrawAct_RewardItem[3320926]["RewardMoney"] = {}
	tLuckyDrawAct_RewardItem[3320926]["RewardMoney"]["Value"] = 32000000 -- 金币
	tLuckyDrawAct_RewardItem[3320926]["RewardEffect"] = {}
	tLuckyDrawAct_RewardItem[3320926]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDrawAct_RewardItem[3320926]["RewardEffect"]["Effect"] = "angelwing"


	-- ===6400气力值包
	-- ===索引: 3320927
	-- ===删除:3320927
	tLuckyDrawAct_RewardItem[3320927] = {}
	tLuckyDrawAct_RewardItem[3320927]["LogId"] = 12001355
	tLuckyDrawAct_RewardItem[3320927]["DeleteItem"] = {}
	tLuckyDrawAct_RewardItem[3320927]["DeleteItem"][1] = {}
	tLuckyDrawAct_RewardItem[3320927]["DeleteItem"][1]["Id"] = 3320927 -- 【库】6400气力值包[属性:9]
	tLuckyDrawAct_RewardItem[3320927]["RewardStrengthValue"] = {}
	tLuckyDrawAct_RewardItem[3320927]["RewardStrengthValue"]["Value"] = 6400 -- 气力值
	tLuckyDrawAct_RewardItem[3320927]["RewardEffect"] = {}
	tLuckyDrawAct_RewardItem[3320927]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDrawAct_RewardItem[3320927]["RewardEffect"]["Effect"] = "angelwing"

	
	tLuckyDrawAct_RewardItem[3321057] = {}
	tLuckyDrawAct_RewardItem[3321057][1] = {}
	tLuckyDrawAct_RewardItem[3321057][1]["LogId"] = 12000400
	tLuckyDrawAct_RewardItem[3321057][1]["DeleteItem"] = {}
	tLuckyDrawAct_RewardItem[3321057][1]["DeleteItem"][1] = {}
	tLuckyDrawAct_RewardItem[3321057][1]["DeleteItem"][1]["Id"] = 3321057 -- 【库】兰花兑换券[属性:9]
	tLuckyDrawAct_RewardItem[3321057][1]["DeleteItem"][1]["ItemNum"] = 3
	tLuckyDrawAct_RewardItem[3321057][1]["RewardItem"] = {}
	tLuckyDrawAct_RewardItem[3321057][1]["RewardItem"][1] = {}
	tLuckyDrawAct_RewardItem[3321057][1]["RewardItem"][1]["Id"] = 752003 -- 【库】3朵百合花[属性:8]【表格】3朵百合花
	tLuckyDrawAct_RewardItem[3321057][1]["RewardItem"][1]["Attr"] = "0 1" -- 3朵百合花*1
	tLuckyDrawAct_RewardItem[3321057][1]["RewardEffect"] = {}
	tLuckyDrawAct_RewardItem[3321057][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDrawAct_RewardItem[3321057][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===至尊百合花礼盒
	-- ===索引: 3321057,2
	-- ===删除:3321057,9
	-- ===
	tLuckyDrawAct_RewardItem[3321057][2] = {}
	tLuckyDrawAct_RewardItem[3321057][2]["LogId"] = 12000400
	tLuckyDrawAct_RewardItem[3321057][2]["DeleteItem"] = {}
	tLuckyDrawAct_RewardItem[3321057][2]["DeleteItem"][1] = {}
	tLuckyDrawAct_RewardItem[3321057][2]["DeleteItem"][1]["Id"] = 3321057 -- 【库】兰花兑换券[属性:9]
	tLuckyDrawAct_RewardItem[3321057][2]["DeleteItem"][1]["ItemNum"] = 9
	tLuckyDrawAct_RewardItem[3321057][2]["RewardItem"] = {}
	tLuckyDrawAct_RewardItem[3321057][2]["RewardItem"][1] = {}
	tLuckyDrawAct_RewardItem[3321057][2]["RewardItem"][1]["Id"] = 752009 -- 【库】9朵百合花[属性:8]【表格】9朵百合花
	tLuckyDrawAct_RewardItem[3321057][2]["RewardItem"][1]["Attr"] = "0 1" -- 9朵百合花*1
	tLuckyDrawAct_RewardItem[3321057][2]["RewardEffect"] = {}
	tLuckyDrawAct_RewardItem[3321057][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDrawAct_RewardItem[3321057][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===至尊百合花礼盒
	-- ===索引: 3321057,3
	-- ===删除:3321057,99
	-- ===
	tLuckyDrawAct_RewardItem[3321057][3] = {}
	tLuckyDrawAct_RewardItem[3321057][3]["LogId"] = 12000400
	tLuckyDrawAct_RewardItem[3321057][3]["DeleteItem"] = {}
	tLuckyDrawAct_RewardItem[3321057][3]["DeleteItem"][1] = {}
	tLuckyDrawAct_RewardItem[3321057][3]["DeleteItem"][1]["Id"] = 3321057 -- 【库】兰花兑换券[属性:9]
	tLuckyDrawAct_RewardItem[3321057][3]["DeleteItem"][1]["ItemNum"] = 99
	tLuckyDrawAct_RewardItem[3321057][3]["RewardItem"] = {}
	tLuckyDrawAct_RewardItem[3321057][3]["RewardItem"][1] = {}
	tLuckyDrawAct_RewardItem[3321057][3]["RewardItem"][1]["Id"] = 752099 -- 【库】99朵百合花[属性:8]【表格】99朵百合花
	tLuckyDrawAct_RewardItem[3321057][3]["RewardItem"][1]["Attr"] = "0 1" -- 99朵百合花*1
	tLuckyDrawAct_RewardItem[3321057][3]["RewardEffect"] = {}
	tLuckyDrawAct_RewardItem[3321057][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDrawAct_RewardItem[3321057][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===至尊百合花礼盒
	-- ===索引: 3321057,4
	-- ===删除:3321057,999
	-- ===
	tLuckyDrawAct_RewardItem[3321057][4] = {}
	tLuckyDrawAct_RewardItem[3321057][4]["LogId"] = 12000400
	tLuckyDrawAct_RewardItem[3321057][4]["DeleteItem"] = {}
	tLuckyDrawAct_RewardItem[3321057][4]["DeleteItem"][1] = {}
	tLuckyDrawAct_RewardItem[3321057][4]["DeleteItem"][1]["Id"] = 3321057 -- 【库】兰花兑换券[属性:9]
	tLuckyDrawAct_RewardItem[3321057][4]["DeleteItem"][1]["ItemNum"] = 999
	tLuckyDrawAct_RewardItem[3321057][4]["RewardItem"] = {}
	tLuckyDrawAct_RewardItem[3321057][4]["RewardItem"][1] = {}
	tLuckyDrawAct_RewardItem[3321057][4]["RewardItem"][1]["Id"] = 752999 -- 【库】999朵百合花[属性:8]【表格】999朵百合花
	tLuckyDrawAct_RewardItem[3321057][4]["RewardItem"][1]["Attr"] = "0 1" -- 999朵百合花*1
	tLuckyDrawAct_RewardItem[3321057][4]["RewardEffect"] = {}
	tLuckyDrawAct_RewardItem[3321057][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDrawAct_RewardItem[3321057][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===至尊百合花礼盒
	-- ===索引: 3321057,5
	-- ===删除:3321057,1
	-- ===
	tLuckyDrawAct_RewardItem[3321057][5] = {}
	tLuckyDrawAct_RewardItem[3321057][5]["LogId"] = 12000400
	tLuckyDrawAct_RewardItem[3321057][5]["DeleteItem"] = {}
	tLuckyDrawAct_RewardItem[3321057][5]["DeleteItem"][1] = {}
	tLuckyDrawAct_RewardItem[3321057][5]["DeleteItem"][1]["Id"] = 3321057 -- 【库】兰花兑换券[属性:9]
	tLuckyDrawAct_RewardItem[3321057][5]["DeleteItem"][1]["ItemNum"] = 1
	tLuckyDrawAct_RewardItem[3321057][5]["RewardStrengthValue"] = {}
	tLuckyDrawAct_RewardItem[3321057][5]["RewardStrengthValue"]["Value"] = 5 -- 气力值
	tLuckyDrawAct_RewardItem[3321057][5]["RewardEffect"] = {}
	tLuckyDrawAct_RewardItem[3321057][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDrawAct_RewardItem[3321057][5]["RewardEffect"]["Effect"] = "angelwing"
	
	
	-- ===索引: 3321057,6
	-- ===删除:3321057,1
	-- ===
	tLuckyDrawAct_RewardItem[3321057][6] = {}
	tLuckyDrawAct_RewardItem[3321057][6]["LogId"] = 12000400
	tLuckyDrawAct_RewardItem[3321057][6]["DeleteItem"] = {}
	tLuckyDrawAct_RewardItem[3321057][6]["DeleteItem"][1] = {}
	tLuckyDrawAct_RewardItem[3321057][6]["DeleteItem"][1]["Id"] = 3321057 -- 【库】兰花兑换券[属性:9]
	tLuckyDrawAct_RewardItem[3321057][6]["DeleteItem"][1]["ItemNum"] = 1
	tLuckyDrawAct_RewardItem[3321057][6]["RewardItem"] = {}
	tLuckyDrawAct_RewardItem[3321057][6]["RewardItem"][1] = {}
	tLuckyDrawAct_RewardItem[3321057][6]["RewardItem"][1]["Id"] = 752001 -- 【库】1朵百合花[属性:8]【表格】1朵百合花
	tLuckyDrawAct_RewardItem[3321057][6]["RewardItem"][1]["Attr"] = "0 1" -- 1朵百合花*1
	tLuckyDrawAct_RewardItem[3321057][6]["RewardEffect"] = {}
	tLuckyDrawAct_RewardItem[3321057][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tLuckyDrawAct_RewardItem[3321057][6]["RewardEffect"]["Effect"] = "angelwing"

	local tLuckyDrawAct_RandomPro = {}
	--奖池2概率
	tLuckyDrawAct_RandomPro[3320922] = {}
	tLuckyDrawAct_RandomPro[3320922][1] = {}
	tLuckyDrawAct_RandomPro[3320922][1]["ItemChanceSum"] = 10000
	-- 
	tLuckyDrawAct_RandomPro[3320922][1][1] = {}
	tLuckyDrawAct_RandomPro[3320922][1][1]["RandomItemChanceType"] = 2
	tLuckyDrawAct_RandomPro[3320922][1][1]["ItemChance"] = 10
	tLuckyDrawAct_RandomPro[3320922][1][1]["Item_1"] = 1
	-- 
	tLuckyDrawAct_RandomPro[3320922][1][2] = {}
	tLuckyDrawAct_RandomPro[3320922][1][2]["RandomItemChanceType"] = 2
	tLuckyDrawAct_RandomPro[3320922][1][2]["ItemChance"] = 9990
	tLuckyDrawAct_RandomPro[3320922][1][2]["Item_1"] = 0
	
	local tLuckyDrawAct_RandomItem = {}
	-- 全服cq_dyna_global_data存储表
	tLuckyDrawAct_RandomItem["GlobalId"] = 53339 -- 需手动配：[cq_dyna_global_data]表id
	tLuckyDrawAct_RandomItem["OtherPos"] = 0 -- 全服单日限量data位
	tLuckyDrawAct_RandomItem["OtherMaxData"] = 10 -- 全服单日限量总数

	local tLuckyDrawAct_Log = {}
	tLuckyDrawAct_Log["TimeOut"] = "0,0,%d,1,12001343,0,0,0"
	
--------------------------------npc逻辑--------------------------------------
function LuckyDrawAct_ShoplRoulette(nNpcId)
	
	if not Sys_ChkFullTime(tLuckyDrawAct_Cont["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	User_OpenDialog()
end

function LuckyDrawAct_RewardRoulette()


	local flat,tNum = Probabil_RandomAward(tLuckyDrawAct_RandomPro[3320922],1)
	local nUserId = Get_UserId()
	if tNum[1]["tAward"][1]["Item_1"] == 1 then
		local nGlobalId = tLuckyDrawAct_RandomItem["GlobalId"]
		local nDayPos = tLuckyDrawAct_RandomItem["OtherPos"]
		local nData = Get_SysDynaGlobalData(nGlobalId,nDayPos)
		
		if nData >= tLuckyDrawAct_RandomItem["OtherMaxData"] then
			return
		end
		
		Sys_SetSynaGlobalData(nGlobalId,nDayPos,nData + 1)
		
		--发邮件
		
		local nActionId = tLuckyDrawAct_Cont["Mail"]["ActionId"]
		local nExistDay = tLuckyDrawAct_Cont["Mail"]["ExistDay"]
		local sSender = tLuckyDrawAct_Text["Mail"]["Sender"]
		local sTitle = tLuckyDrawAct_Text["Mail"]["Title"]
		local sContent = tLuckyDrawAct_Text["Mail"]["Content"]
		
		Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
		
	end
end

function LuckyDrawAct_ClrGlobal()
	local nGlobalId = tLuckyDrawAct_RandomItem["GlobalId"]
	local nDayPos = tLuckyDrawAct_RandomItem["OtherPos"]
	
	if not (LuckyDrawAct_clrGlobal[1] == 1) then
		LuckyDrawAct_clrGlobal[1] = 1
		Sys_SetSynaGlobalData(nGlobalId,nDayPos,0)
	end
end

function LuckyDrawAct_ClrData()
	LuckyDrawAct_clrGlobal = {}
end

--------------------------------物品逻辑-------------------------------------
function LuckyDrawAct_OpenBag(nItemId,nIndex)

	local nItemNum = tLuckyDrawAct_Cont["ItemNum"][nIndex]
	local tReward = tLuckyDrawAct_RewardItem[nItemId][nIndex]
	if nIndex == 5 then
		nItemNum = Get_CountItemType(nItemId,0)
		tReward = CommonFunc_Copy(tLuckyDrawAct_RewardItem[nItemId][nIndex])
		local nStrength = tonumber(nItemNum * 5)
		tReward["DeleteItem"][1]["ItemNum"] = nItemNum
		tReward["RewardStrengthValue"]["Value"] = nStrength
		
	end
	
	if Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		RewardTemplate_UseItemAndMsg(tReward)
	else
		User_TalkChannel2005(tLuckyDrawAct_Text["NoItem"])
	end
	
end

--------------------------------npc模板--------------------------------------
tNpcFace[6537] = 187
tNpcGossip[24094] = tNpcGossip[24094] or DefaultNpc:new{}
tNpcGossip[24094]["OptionHidden"] = 1
tNpcGossip[24094]["DialogueText"] = tLuckyDrawAct_Text[24094]

-- 活动前
tNpcGossip[24094]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[24094]["tOption1-1"] = {111}
tNpcGossip[24094]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tLuckyDrawAct_Cont["BefTime"])
end

--活动后
tNpcGossip[24094]["Text1-2"] = {121,122,123}
tNpcGossip[24094]["tOption1-2"] = {121}
tNpcGossip[24094]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tLuckyDrawAct_Cont["ActTime"])
end



--活动中
tNpcGossip[24094]["Text1-3"] = {131,132,133,134,135,136,137,138,139,1310,1311,1312,1313,1314,1315}
tNpcGossip[24094]["tOption1-3"] = {131,132}
tNpcGossip[24094]["OptionFunc131"] = "LuckyDrawAct_ShoplRoulette</N>24094"
tNpcGossip[24094]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tLuckyDrawAct_Cont["ActTime"])
end


--------------------------------物品模板--------------------------------------
tItemFace[3320928] = 2186

tItem[3320919] = tItem[3320919] or {}
tItem[3320919]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tLuckyDrawAct_RewardItem[nItemId])
end

tItem[3320920] = tItem[3320919] or {}
tItem[3320921] = tItem[3320919] or {}
tItem[3320925] = tItem[3320919] or {}
tItem[3320926] = tItem[3320919] or {}
tItem[3320927] = tItem[3320919] or {}

tItemFace[3321057] = 781
tItem[3321057] = tItem[3321057] or {}
tItem[3321057]["DialogueText"] = tLuckyDrawAct_Text[3321057]
tItem[3321057]["Text1-1"] = {111}
tItem[3321057]["tOption1-1"] = {116,111,112,113,114,115}
tItem[3321057]["OptionFunc116"] = "LuckyDrawAct_OpenBag</N>3321057</N>6"
tItem[3321057]["OptionFunc111"] = "LuckyDrawAct_OpenBag</N>3321057</N>1"
tItem[3321057]["OptionChkFunc111"] = function ()
	local nLuckyDrawAct_ItemNum = tLuckyDrawAct_Cont["ItemNum"][1]
	if Item_ChkMulItem(3321057,3321057,nLuckyDrawAct_ItemNum) then
		return true
	end
	return false
end
tItem[3321057]["OptionFunc112"] = "LuckyDrawAct_OpenBag</N>3321057</N>2"
tItem[3321057]["OptionChkFunc112"] = function ()
	local nLuckyDrawAct_ItemNum = tLuckyDrawAct_Cont["ItemNum"][2]
	if Item_ChkMulItem(3321057,3321057,nLuckyDrawAct_ItemNum) then
		return true
	end
	return false
end
tItem[3321057]["OptionFunc113"] = "LuckyDrawAct_OpenBag</N>3321057</N>3"
tItem[3321057]["OptionChkFunc113"] = function ()
	local nLuckyDrawAct_ItemNum = tLuckyDrawAct_Cont["ItemNum"][3]
	if Item_ChkMulItem(3321057,3321057,nLuckyDrawAct_ItemNum) then
		return true
	end
	return false
end
tItem[3321057]["OptionFunc114"] = "LuckyDrawAct_OpenBag</N>3321057</N>4"
tItem[3321057]["OptionChkFunc114"] = function ()
	local nLuckyDrawAct_ItemNum = tLuckyDrawAct_Cont["ItemNum"][4]
	if Item_ChkMulItem(3321057,3321057,nLuckyDrawAct_ItemNum) then
		return true
	end
	return false
end
tItem[3321057]["OptionFunc115"] = "LuckyDrawAct_OpenBag</N>3321057</N>5"

--------------------------------时间自检逻辑------------------------------------
local tLuckyDrawAct_ClrGlobal = {}
tLuckyDrawAct_ClrGlobal["Type"] = 6  -- 其他
tLuckyDrawAct_ClrGlobal["TimeType"] = 4  -- 日时间
tLuckyDrawAct_ClrGlobal["Time"] = "00:00 00:02"
tLuckyDrawAct_ClrGlobal["Func"] = LuckyDrawAct_ClrGlobal
table.insert(tSystemTime_InitialData,tLuckyDrawAct_ClrGlobal)

local tLuckyDrawAct_ClrData = {}
tLuckyDrawAct_ClrData["Type"] = 6  -- 其他
tLuckyDrawAct_ClrData["TimeType"] = 4  -- 日时间
tLuckyDrawAct_ClrData["Time"] = "00:03 00:05"
tLuckyDrawAct_ClrData["Func"] = LuckyDrawAct_ClrData
table.insert(tSystemTime_InitialData,tLuckyDrawAct_ClrData)

