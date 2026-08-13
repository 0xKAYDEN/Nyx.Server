------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]增加神兵灵魄的促销
--Creator:		翁清海
--Created:		2019/07/03
------------------------------------------------------------------------------------

--命名前缀
--LegendaryEssence_

--logid:12001496

--------------------------------------------数据部分配置--------------------------------------------
local tLegendaryEssence_DragonSoul = {}
	
local tLegendaryEssence_Cont = {}
	--等级限制
	tLegendaryEssence_Cont["Level"] = 80
	tLegendaryEssence_Cont["Metempsychosis"] = 0
	--龙灵凝练相关
	tLegendaryEssence_Cont["Pearl"] = {}
	tLegendaryEssence_Cont["Pearl"][5] = {}
	tLegendaryEssence_Cont["Pearl"][5]["Id"] = 4200005
	tLegendaryEssence_Cont["Pearl"][5]["MinNum"] = 3
	tLegendaryEssence_Cont["Pearl"][5]["MaxNum"] = 30
	tLegendaryEssence_Cont["Pearl"][5]["EMoney"] = 81
	tLegendaryEssence_Cont["Pearl"][10] = {}
	tLegendaryEssence_Cont["Pearl"][10]["Id"] = 4200010
	tLegendaryEssence_Cont["Pearl"][10]["MinNum"] = 90
	tLegendaryEssence_Cont["Pearl"][10]["MaxNum"] = 1000
	tLegendaryEssence_Cont["Pearl"][10]["EMoney"] = 2561
	
local tLegendaryEssence_Log = {}
	tLegendaryEssence_Log["DelItem"] = "0,0,%d,%d,12001496,2,0,0"
	
local tLegendaryEssence_ELog = {}
	tLegendaryEssence_ELog["Buy"] = {}
	tLegendaryEssence_ELog["Buy"][5] = "350	22408"
	tLegendaryEssence_ELog["Buy"][10] = "350	22409"
	tLegendaryEssence_ELog["Use"] = {}
	tLegendaryEssence_ELog["Use"][5] = "350	22411"
	tLegendaryEssence_ELog["Use"][10] = "350	22412"
	
local tLegendaryEssence_Stc = {}
	--二次确认屏蔽标志
	tLegendaryEssence_Stc[1] = {}
	tLegendaryEssence_Stc[1]["Event"] = 196
	tLegendaryEssence_Stc[1]["Type"] = 27
	
--奖励配置
local tLegendaryEssence_Reward = {}
	-- ===5阶龙灵凝练
	-- ===索引: tLegendaryEssence_Reward[5]
	tLegendaryEssence_Reward[5] = {}
	tLegendaryEssence_Reward[5]["ItemChanceSum"] = 10000
	tLegendaryEssence_Reward[5]["LogId"] = 12001496
	-- 神兵灵魄*3 - 35.00%
	tLegendaryEssence_Reward[5][1] = {}
	tLegendaryEssence_Reward[5][1]["RandomItemChanceType"] = 2
	tLegendaryEssence_Reward[5][1]["ItemChance"] = 3500
	tLegendaryEssence_Reward[5][1]["RewardItem"] = {}
	tLegendaryEssence_Reward[5][1]["RewardItem"][1] = {}
	tLegendaryEssence_Reward[5][1]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄*3
	tLegendaryEssence_Reward[5][1]["RewardItem"][1]["Attr"] = "0 3" -- 神兵灵魄*3
	tLegendaryEssence_Reward[5][1]["RewardEffect"] = {}
	tLegendaryEssence_Reward[5][1]["RewardEffect"]["SzObj"] = "self"
	tLegendaryEssence_Reward[5][1]["RewardEffect"]["Effect"] = "KM_xiaojiang"
	tLegendaryEssence_Reward[5][1]["EmoneyLog"] = "350	22410	0	0	3	"
	-- 神兵灵魄*9 - 34.00%
	tLegendaryEssence_Reward[5][2] = {}
	tLegendaryEssence_Reward[5][2]["RandomItemChanceType"] = 2
	tLegendaryEssence_Reward[5][2]["ItemChance"] = 3400
	tLegendaryEssence_Reward[5][2]["RewardItem"] = {}
	tLegendaryEssence_Reward[5][2]["RewardItem"][1] = {}
	tLegendaryEssence_Reward[5][2]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄*9
	tLegendaryEssence_Reward[5][2]["RewardItem"][1]["Attr"] = "0 9" -- 神兵灵魄*9
	tLegendaryEssence_Reward[5][2]["RewardEffect"] = {}
	tLegendaryEssence_Reward[5][2]["RewardEffect"]["SzObj"] = "self"
	tLegendaryEssence_Reward[5][2]["RewardEffect"]["Effect"] = "KM_xiaojiang"
	tLegendaryEssence_Reward[5][2]["EmoneyLog"] = "350	22410	0	0	9	"
	-- 神兵灵魄*15 - 29.00%
	tLegendaryEssence_Reward[5][3] = {}
	tLegendaryEssence_Reward[5][3]["RandomItemChanceType"] = 2
	tLegendaryEssence_Reward[5][3]["ItemChance"] = 2900
	tLegendaryEssence_Reward[5][3]["RewardItem"] = {}
	tLegendaryEssence_Reward[5][3]["RewardItem"][1] = {}
	tLegendaryEssence_Reward[5][3]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄*15
	tLegendaryEssence_Reward[5][3]["RewardItem"][1]["Attr"] = "0 15" -- 神兵灵魄*15
	tLegendaryEssence_Reward[5][3]["RewardEffect"] = {}
	tLegendaryEssence_Reward[5][3]["RewardEffect"]["SzObj"] = "self"
	tLegendaryEssence_Reward[5][3]["RewardEffect"]["Effect"] = "KM_dajiang"
	tLegendaryEssence_Reward[5][3]["EmoneyLog"] = "350	22410	0	0	15	"
	-- 神兵灵魄*30 - 2.00%
	tLegendaryEssence_Reward[5][4] = {}
	tLegendaryEssence_Reward[5][4]["RandomItemChanceType"] = 2
	tLegendaryEssence_Reward[5][4]["ItemChance"] = 200
	tLegendaryEssence_Reward[5][4]["RewardItem"] = {}
	tLegendaryEssence_Reward[5][4]["RewardItem"][1] = {}
	tLegendaryEssence_Reward[5][4]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄*30
	tLegendaryEssence_Reward[5][4]["RewardItem"][1]["Attr"] = "0 30" -- 神兵灵魄*30
	tLegendaryEssence_Reward[5][4]["RewardEffect"] = {}
	tLegendaryEssence_Reward[5][4]["RewardEffect"]["SzObj"] = "self"
	tLegendaryEssence_Reward[5][4]["RewardEffect"]["Effect"] = "KM_dajiangJQ"
	tLegendaryEssence_Reward[5][4]["EmoneyLog"] = "350	22410	0	0	30	"


	tLegendaryEssence_Reward[10] = {}
	-- ===10阶龙灵凝练
	-- ===索引: tLegendaryEssence_Reward[10]
	tLegendaryEssence_Reward[10]["ItemChanceSum"] = 10000
	tLegendaryEssence_Reward[10]["LogId"] = 12001496
	-- 神兵灵魄*90 - 34.00%
	tLegendaryEssence_Reward[10][1] = {}
	tLegendaryEssence_Reward[10][1]["RandomItemChanceType"] = 2
	tLegendaryEssence_Reward[10][1]["ItemChance"] = 3400
	tLegendaryEssence_Reward[10][1]["RewardItem"] = {}
	tLegendaryEssence_Reward[10][1]["RewardItem"][1] = {}
	tLegendaryEssence_Reward[10][1]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄*90
	tLegendaryEssence_Reward[10][1]["RewardItem"][1]["Attr"] = "0 90" -- 神兵灵魄*90
	tLegendaryEssence_Reward[10][1]["RewardEffect"] = {}
	tLegendaryEssence_Reward[10][1]["RewardEffect"]["SzObj"] = "self"
	tLegendaryEssence_Reward[10][1]["RewardEffect"]["Effect"] = "KM_xiaojiang"
	tLegendaryEssence_Reward[10][1]["EmoneyLog"] = "350	22410	0	0	90	"
	-- 神兵灵魄*270 - 35.00%
	tLegendaryEssence_Reward[10][2] = {}
	tLegendaryEssence_Reward[10][2]["RandomItemChanceType"] = 2
	tLegendaryEssence_Reward[10][2]["ItemChance"] = 3500
	tLegendaryEssence_Reward[10][2]["RewardItem"] = {}
	tLegendaryEssence_Reward[10][2]["RewardItem"][1] = {}
	tLegendaryEssence_Reward[10][2]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄*270
	tLegendaryEssence_Reward[10][2]["RewardItem"][1]["Attr"] = "0 270" -- 神兵灵魄*270
	tLegendaryEssence_Reward[10][2]["RewardEffect"] = {}
	tLegendaryEssence_Reward[10][2]["RewardEffect"]["SzObj"] = "self"
	tLegendaryEssence_Reward[10][2]["RewardEffect"]["Effect"] = "KM_xiaojiang"
	tLegendaryEssence_Reward[10][2]["EmoneyLog"] = "350	22410	0	0	270	"
	-- 神兵灵魄*500 - 30.00%
	tLegendaryEssence_Reward[10][3] = {}
	tLegendaryEssence_Reward[10][3]["RandomItemChanceType"] = 2
	tLegendaryEssence_Reward[10][3]["ItemChance"] = 3000
	tLegendaryEssence_Reward[10][3]["RewardItem"] = {}
	tLegendaryEssence_Reward[10][3]["RewardItem"][1] = {}
	tLegendaryEssence_Reward[10][3]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄*500
	tLegendaryEssence_Reward[10][3]["RewardItem"][1]["Attr"] = "0 500" -- 神兵灵魄*500
	tLegendaryEssence_Reward[10][3]["RewardEffect"] = {}
	tLegendaryEssence_Reward[10][3]["RewardEffect"]["SzObj"] = "self"
	tLegendaryEssence_Reward[10][3]["RewardEffect"]["Effect"] = "KM_dajiang"
	tLegendaryEssence_Reward[10][3]["EmoneyLog"] = "350	22410	0	0	500	"
	-- 神兵灵魄*1000 - 1.00%
	tLegendaryEssence_Reward[10][4] = {}
	tLegendaryEssence_Reward[10][4]["RandomItemChanceType"] = 2
	tLegendaryEssence_Reward[10][4]["ItemChance"] = 100
	tLegendaryEssence_Reward[10][4]["RewardItem"] = {}
	tLegendaryEssence_Reward[10][4]["RewardItem"][1] = {}
	tLegendaryEssence_Reward[10][4]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄*1000
	tLegendaryEssence_Reward[10][4]["RewardItem"][1]["Attr"] = "0 1000" -- 神兵灵魄*1000
	tLegendaryEssence_Reward[10][4]["RewardEffect"] = {}
	tLegendaryEssence_Reward[10][4]["RewardEffect"]["SzObj"] = "self"
	tLegendaryEssence_Reward[10][4]["RewardEffect"]["Effect"] = "KM_dajiangJQ"
	tLegendaryEssence_Reward[10][4]["EmoneyLog"] = "350	22410	0	0	1000	"




--------------------------------------------逻辑部分配置--------------------------------------------
--判断是否勇士
function LegendaryEssence_ChkPro(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nPro = Get_NewUserProfession(nUserId)
	
	if nPro >= G_PRO_Trojan0_New and nPro <= G_PRO_Trojan49_New then
		return true
	else
		return false
	end
end

--注入龙灵
function LegendaryEssence_UseDragonSoul(nIndex)
	local nNpcId = Get_NpcId()
	local nUserId = Get_UserId()
	
	if nNpcId == 24476 then
		--时间判断
		if not Sys_ChkFullTime(tActivityTime["LegendaryEssence"]["ActivityTime"]) then
			Sys_MsgBox(tLegendaryEssence_Text["MsgBox"]["OverTime"],nil,nil,nUserId)
			return
		end
	end
	
	--判断是否勇士
	if not LegendaryEssence_ChkPro(nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	--龙灵物品
	local nItemId = tLegendaryEssence_Cont["Pearl"][nIndex]["Id"]
	--最少可以凝练的神兵灵魄数量
	local nMinNum = tLegendaryEssence_Cont["Pearl"][nIndex]["MinNum"]
	--最多可以凝练的神兵灵魄数量
	local nMaxNum = tLegendaryEssence_Cont["Pearl"][nIndex]["MaxNum"]
	--没有龙灵可用天石替代的天石数
	local nNeedEMoney = tLegendaryEssence_Cont["Pearl"][nIndex]["EMoney"]
	
	--记录选择的龙灵
	tLegendaryEssence_DragonSoul[nUserId] = nIndex
	
	--检查有没有对应龙灵
	if Item_ChkMulItem(nItemId,nItemId,1,nil,nil,nUserId) then
		tNpcGossip[nNpcId]["Text221"] = string.format(tLegendaryEssence_Text[nNpcId]["Text221"], nIndex)
		tNpcGossip[nNpcId]["Text222"] = string.format(tLegendaryEssence_Text[nNpcId]["Text222"], nMinNum, nMaxNum)
		tNpcGossip[nNpcId]["Option221"] = string.format(tLegendaryEssence_Text[nNpcId]["Option221"], nIndex)
		
		LinkNpcGossipFunc_New(nNpcId,"2-2")
	else
		tNpcGossip[nNpcId]["Text211"] = string.format(tLegendaryEssence_Text[nNpcId]["Text211"], nIndex, nIndex)
		tNpcGossip[nNpcId]["Text212"] = string.format(tLegendaryEssence_Text[nNpcId]["Text212"], nMinNum, nMaxNum)
		tNpcGossip[nNpcId]["Option211"] = string.format(tLegendaryEssence_Text[nNpcId]["Option211"], nNeedEMoney, nIndex)
		
		LinkNpcGossipFunc_New(nNpcId,"2-1")
	end
end

--使用天石注入
function LegendaryEssence_UseEMoney()
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	
	--判断是否勇士
	if not LegendaryEssence_ChkPro(nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	--是否已经屏蔽了二次确认
	local nEvent = tLegendaryEssence_Stc[1]["Event"]
	local nType = tLegendaryEssence_Stc[1]["Type"]
	
	if Get_UserStatisticValue(nEvent,nType,nUserId) > 0 then
		LegendaryEssence_Confirm(2)
		return
	end
	
	--判断选择的龙灵是否还存在
	if tLegendaryEssence_DragonSoul[nUserId] == nil then
		return
	end
	
	--选择的龙灵
	local nIndex = tLegendaryEssence_DragonSoul[nUserId]
	--没有龙灵可用天石替代的天石数
	local nNeedEMoney = tLegendaryEssence_Cont["Pearl"][nIndex]["EMoney"]
	--最少可以凝练的神兵灵魄数量
	local nMinNum = tLegendaryEssence_Cont["Pearl"][nIndex]["MinNum"]
	--最多可以凝练的神兵灵魄数量
	local nMaxNum = tLegendaryEssence_Cont["Pearl"][nIndex]["MaxNum"]
	
	tNpcGossip[nNpcId]["Text311"] = string.format(tLegendaryEssence_Text[nNpcId]["Text311"], nNeedEMoney, nIndex)
	tNpcGossip[nNpcId]["Text312"] = string.format(tLegendaryEssence_Text[nNpcId]["Text312"], nMinNum, nMaxNum)
	tNpcGossip[nNpcId]["Option311"] = string.format(tLegendaryEssence_Text[nNpcId]["Option311"], nNeedEMoney, nIndex)
	
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end

--屏蔽二次确认
function LegendaryEssence_NotAgain()
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	
	--判断选择的龙灵是否还存在
	if tLegendaryEssence_DragonSoul[nUserId] == nil then
		return
	end
	
	--掩码设置
	local nEvent = tLegendaryEssence_Stc[1]["Event"]
	local nType = tLegendaryEssence_Stc[1]["Type"]
	
	Task_SetStatistic(nEvent,nType,1,1,nUserId)
	
	--选择的龙灵
	local nIndex = tLegendaryEssence_DragonSoul[nUserId]
	--没有龙灵可用天石替代的天石数
	local nNeedEMoney = tLegendaryEssence_Cont["Pearl"][nIndex]["EMoney"]
	--最少可以凝练的神兵灵魄数量
	local nMinNum = tLegendaryEssence_Cont["Pearl"][nIndex]["MinNum"]
	--最多可以凝练的神兵灵魄数量
	local nMaxNum = tLegendaryEssence_Cont["Pearl"][nIndex]["MaxNum"]
	
	tNpcGossip[nNpcId]["Text211"] = string.format(tLegendaryEssence_Text[nNpcId]["Text211"], nIndex, nIndex)
	tNpcGossip[nNpcId]["Text212"] = string.format(tLegendaryEssence_Text[nNpcId]["Text212"], nMinNum, nMaxNum)
	tNpcGossip[nNpcId]["Option211"] = string.format(tLegendaryEssence_Text[nNpcId]["Option211"], nNeedEMoney, nIndex)
	
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

--确定注入
function LegendaryEssence_Confirm(nFlag)
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	
	--判断是否勇士
	if not LegendaryEssence_ChkPro(nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	--判断选择的龙灵是否还存在
	if tLegendaryEssence_DragonSoul[nUserId] == nil then
		return
	end
	
	--选择的龙灵
	local nIndex = tLegendaryEssence_DragonSoul[nUserId]
	
	--判断背包空间
	if not RewardTemplate_ChkRandomSpace(tLegendaryEssence_Reward,nIndex,nUserId) then
		Sys_MsgBox(tLegendaryEssence_Text["MsgBox"]["BagFull"],nil,nil,nUserId)
		return
	end
	
	--龙灵物品
	local nItemId = tLegendaryEssence_Cont["Pearl"][nIndex]["Id"]
	--没有龙灵可用天石替代的天石数
	local nNeedEMoney = tLegendaryEssence_Cont["Pearl"][nIndex]["EMoney"]
	
	--消耗龙灵
	if nFlag == 1 then
		--检查有没有对应龙灵
		if Item_ChkMulItem(nItemId,nItemId,1,nil,nil,nUserId) then
			--扣除龙灵
			if not Item_DelItem(nItemId,nil,nil,nUserId) then
				return
			end
			
			--龙灵log
			Sys_DecNosuchStatisticCount(366,nItemId,1)
			
			--普通log
			Sys_SaveDragonSoulLog(string.format(tLegendaryEssence_Log["DelItem"], nItemId, 1) , nUserId)
			
			--英文需要的额外EMoneyLog
			Sys_GetEMoneyBuyLog("EMoney",0,tLegendaryEssence_ELog["Use"][nIndex],nUserId)
		else
			--最少可以凝练的神兵灵魄数量
			local nMinNum = tLegendaryEssence_Cont["Pearl"][nIndex]["MinNum"]
			--最多可以凝练的神兵灵魄数量
			local nMaxNum = tLegendaryEssence_Cont["Pearl"][nIndex]["MaxNum"]
			
			tNpcGossip[nNpcId]["Text211"] = string.format(tLegendaryEssence_Text[nNpcId]["Text211"], nIndex, nIndex)
			tNpcGossip[nNpcId]["Text212"] = string.format(tLegendaryEssence_Text[nNpcId]["Text212"], nMinNum, nMaxNum)
			tNpcGossip[nNpcId]["Option211"] = string.format(tLegendaryEssence_Text[nNpcId]["Option211"], nNeedEMoney, nIndex)
			
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return
		end
	--消耗天石
	elseif nFlag == 2 then
		--检查天石数
		if Get_UserEMoney(nUserId) < nNeedEMoney then
			Sys_MsgBox(tLegendaryEssence_Text["MsgBox"]["NoEMoney"],nil,nil,nUserId)
			return
		end
		
		local sEmoneyBuyLog = tLegendaryEssence_ELog["Buy"][nIndex]
		
		--扣除天石
		if not User_AddEMoneyAndLog(-nNeedEMoney,sEmoneyBuyLog,nUserId) then
			Sys_MsgBox(tLegendaryEssence_Text["MsgBox"]["NoEMoney"],nil,nil,nUserId)
			return
		end
	end
	
	--给奖励
	local tNewReward,sRewardStr = RewardTemplate_NewRandom(tLegendaryEssence_Reward,nIndex,nUserId)
	
	local sFunc = "LinkNpcGossipFunc_New</N>"..nNpcId.."</S>2-4"
	
	--提示
	Sys_MsgBox(string.format(tLegendaryEssence_Text["MsgBox"]["Succ"], nIndex, sRewardStr),sFunc,nil,nUserId)
end

--上线触发
function LegendaryEssence_Login()
	local nUserId = Get_UserId()
	local nEvent = tLegendaryEssence_Stc[1]["Event"]
	local nType = tLegendaryEssence_Stc[1]["Type"]
	
	--上线二次确认掩码置零
	if Get_UserStatisticValue(nEvent,nType,nUserId) > 0 then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
	end
end

--------------------------------------------模块部分配置--------------------------------------------

---------------------------------------------NPC模块---------------------------------------------
--神兵收藏家杜尘
tNpcFace[2249] = 85
tNpcGossip[24469] = tNpcGossip[24469] or DefaultNpc:new{}
tNpcGossip[24469]["DialogueText"] = tLegendaryEssence_Text[24469]
tNpcGossip[24469]["OptionHidden"] = 1

--活动主对白
tNpcGossip[24469]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[24469]["tOption1-1"] = {111,112,113}
tNpcGossip[24469]["ChkFunc1-1"] = function()
	local nUserId = Get_UserId()
	local nLevel = tLegendaryEssence_Cont["Level"]
	local nMetempsychosis = tLegendaryEssence_Cont["Metempsychosis"]
	
	if User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
		tNpcGossip[24469]["tOption1-1"] = {111}
	else
		tNpcGossip[24469]["tOption1-1"] = {112}
	end
	return true
end
tNpcGossip[24469]["OptionPoint111"] = "2-4"

--没有对应龙灵
tNpcGossip[24469]["Text2-1"] = {211,212}
tNpcGossip[24469]["tOption2-1"] = {211,212}
tNpcGossip[24469]["OptionFunc211"] = "LegendaryEssence_UseEMoney"

--有对应龙灵
tNpcGossip[24469]["Text2-2"] = {221,222}
tNpcGossip[24469]["tOption2-2"] = {221,222}
tNpcGossip[24469]["OptionFunc221"] = "LegendaryEssence_Confirm</N>1"

--非勇士
tNpcGossip[24469]["Text2-3"] = {231}
tNpcGossip[24469]["tOption2-3"] = {231}

tNpcGossip[24469]["Text2-4"] = {241,242,243,244,245}
tNpcGossip[24469]["tOption2-4"] = {241,242}
tNpcGossip[24469]["OptionFunc241"] = "LegendaryEssence_UseDragonSoul</N>5"
tNpcGossip[24469]["OptionFunc242"] = "LegendaryEssence_UseDragonSoul</N>10"

--天石购买二次确认
tNpcGossip[24469]["Text3-1"] = {311,312}
tNpcGossip[24469]["tOption3-1"] = {311,312}
tNpcGossip[24469]["OptionFunc311"] = "LegendaryEssence_Confirm</N>2"
tNpcGossip[24469]["OptionFunc312"] = "LegendaryEssence_NotAgain"

--神兵收藏家杜尘
tNpcGossip[24476] = CommonFunc_Copy(tNpcGossip[24469])
--活动主对白
tNpcGossip[24476]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[24476]["tOption1-1"] = {111,112,113}
tNpcGossip[24476]["ChkFunc1-1"] = function()
	local nUserId = Get_UserId()
	local nLevel = tLegendaryEssence_Cont["Level"]
	local nMetempsychosis = tLegendaryEssence_Cont["Metempsychosis"]
	
	if User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
		tNpcGossip[24476]["tOption1-1"] = {111}
	else
		tNpcGossip[24476]["tOption1-1"] = {112}
	end
	return true
end

---------------------------------------------上线触发---------------------------------------------
table.insert(tSystem_PlayLogin_Func,LegendaryEssence_Login)


