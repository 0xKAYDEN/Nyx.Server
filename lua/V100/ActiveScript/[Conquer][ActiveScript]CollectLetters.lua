------------------------------------------------------------------------------------
--Name:		[英文征服][活动脚本]conquer拼字活动
--Purpose:	conquer拼字活动
--Creator: 	张世超
--Created:	2016/04/19
------------------------------------------------------------------------------------
-- 40505 = V100\活动脚本\[征服][活动脚本]conquer拼字活动.lua
-- 40505 = V100\ActiveScript\[Conquer][ActiveScript]CollectLetters.lua
-- 命名前缀
-- CollectLetters_

local tCollectLetters_Data = {}
	tCollectLetters_Data["BfActivetyTime"] = "2017-01-24 00:00 2017-05-14 23:59"
	tCollectLetters_Data["ActivetyTime"] = "2017-05-15 00:00 2017-05-29 23:59"	
	tCollectLetters_Data["Level"] = 30
	tCollectLetters_Data["Metempsychosis"] = 0
	tCollectLetters_Data["MaxTime"] = 5
	tCollectLetters_Data["DropTime"] = 20
	tCollectLetters_Data["PassTime"] = 60*60*2
	
	-- 全局动态码
	tCollectLetters_Data["Global"] = {}
	tCollectLetters_Data["Global"]["Id"] = 37
	tCollectLetters_Data["Global"]["Open"] = {}	
	tCollectLetters_Data["Global"]["Open"][3303104] = 1
	tCollectLetters_Data["Global"]["Open"][3303105] = 2
	tCollectLetters_Data["Global"]["Open"]["Time"] = 3
	tCollectLetters_Data["Global"]["Open"]["PassTime"] = 5
	
	
	tCollectLetters_Data["Prob"] = {}
	tCollectLetters_Data["Prob"][3303104] = 10
	tCollectLetters_Data["Prob"][3303105] = 10


	tCollectLetters_Data["ExchangeItem"] = {}
	tCollectLetters_Data["ExchangeItem"][1] = {3303124,3303125,3303126,3303127,3303128,3303129,3303130}
	tCollectLetters_Data["ExchangeItem"][2] = {3303124,3303125,3303126,3303127,3303128,3303129,3303130,3303131}
	
	tCollectLetters_Data["Monster"] = {}
	tCollectLetters_Data["Monster"][1] = {}
	tCollectLetters_Data["Monster"][1]["ItemChanceSum"] = 10000
	tCollectLetters_Data["Monster"][1][1] = {}
	tCollectLetters_Data["Monster"][1][1]["RandomItemChanceType"] = 2
	tCollectLetters_Data["Monster"][1][1]["ItemChance"] = 500
	tCollectLetters_Data["Monster"][1][1]["Item_1"] = 1
	tCollectLetters_Data["Monster"][1][1]["DropItem"] = 3303124
	tCollectLetters_Data["Monster"][1][2] = {}
	tCollectLetters_Data["Monster"][1][2]["RandomItemChanceType"] = 2
	tCollectLetters_Data["Monster"][1][2]["ItemChance"] = 500
	tCollectLetters_Data["Monster"][1][2]["Item_1"] = 2
	tCollectLetters_Data["Monster"][1][2]["DropItem"] = 3303125
	tCollectLetters_Data["Monster"][1][3] = {}
	tCollectLetters_Data["Monster"][1][3]["RandomItemChanceType"] = 2
	tCollectLetters_Data["Monster"][1][3]["ItemChance"] = 500
	tCollectLetters_Data["Monster"][1][3]["Item_1"] = 3
	tCollectLetters_Data["Monster"][1][3]["DropItem"] = 3303126
	tCollectLetters_Data["Monster"][1][4] = {}
	tCollectLetters_Data["Monster"][1][4]["RandomItemChanceType"] = 2
	tCollectLetters_Data["Monster"][1][4]["ItemChance"] = 500
	tCollectLetters_Data["Monster"][1][4]["Item_1"] = 4
	tCollectLetters_Data["Monster"][1][4]["DropItem"] = 3303127
	tCollectLetters_Data["Monster"][1][5] = {}
	tCollectLetters_Data["Monster"][1][5]["RandomItemChanceType"] = 2
	tCollectLetters_Data["Monster"][1][5]["ItemChance"] = 300
	tCollectLetters_Data["Monster"][1][5]["Item_1"] = 5
	tCollectLetters_Data["Monster"][1][5]["DropItem"] = 3303128
	tCollectLetters_Data["Monster"][1][6] = {}
	tCollectLetters_Data["Monster"][1][6]["RandomItemChanceType"] = 2
	tCollectLetters_Data["Monster"][1][6]["ItemChance"] = 300
	tCollectLetters_Data["Monster"][1][6]["Item_1"] = 6
	tCollectLetters_Data["Monster"][1][6]["DropItem"] = 3303129
	tCollectLetters_Data["Monster"][1][7] = {}
	tCollectLetters_Data["Monster"][1][7]["RandomItemChanceType"] = 2
	tCollectLetters_Data["Monster"][1][7]["ItemChance"] = 300
	tCollectLetters_Data["Monster"][1][7]["Item_1"] = 7
	tCollectLetters_Data["Monster"][1][7]["DropItem"] = 3303130
	tCollectLetters_Data["Monster"][1][8] = {}
	tCollectLetters_Data["Monster"][1][8]["RandomItemChanceType"] = 2
	tCollectLetters_Data["Monster"][1][8]["ItemChance"] = 50
	tCollectLetters_Data["Monster"][1][8]["Item_1"] = 8
	tCollectLetters_Data["Monster"][1][8]["DropItem"] = 3303131	
	tCollectLetters_Data["Monster"][1][9] = {}
	tCollectLetters_Data["Monster"][1][9]["RandomItemChanceType"] = 2
	tCollectLetters_Data["Monster"][1][9]["ItemChance"] = 7050
	tCollectLetters_Data["Monster"][1][9]["Item_1"] = 9
	tCollectLetters_Data["Monster"][1][9]["DropItem"] = 0		
	
local tCollectLetters_Stc = {}
	tCollectLetters_Stc["EventData"] = 100
	tCollectLetters_Stc["TypeData"] = {}
	tCollectLetters_Stc["TypeData"]["Time"] = 22	--	限制一天兑换5次

local tCollectLetters_Item = {}

	tCollectLetters_Item["GiftPack"] = {}
	tCollectLetters_Item["GiftPack"][3303104] = {}
	tCollectLetters_Item["GiftPack"][3303104]["Space"] = 3
	tCollectLetters_Item["GiftPack"][3303104]["EMoneyMono"] = 3000

	tCollectLetters_Item["GiftPack"][3303104]["SelectItem"] = {}
	tCollectLetters_Item["GiftPack"][3303104]["SelectItem"][1] = 3001407
	tCollectLetters_Item["GiftPack"][3303104]["SelectItem"][2] = 729242
	
	tCollectLetters_Item["GiftPack"][3303104]["SelectAttr"] = {}
	tCollectLetters_Item["GiftPack"][3303104]["SelectAttr"][1] = "0 1 3 1440 1"
	tCollectLetters_Item["GiftPack"][3303104]["SelectAttr"][2] = "0 1 3"
	
	
	
 tCollectLetters_Item["GiftPack"][3303104]["LogId"] = 10000170
	tCollectLetters_Item["GiftPack"][3303104]["RewardEffect"] = {}
	tCollectLetters_Item["GiftPack"][3303104]["RewardEffect"]["SzObj"] = "self"
	tCollectLetters_Item["GiftPack"][3303104]["RewardEffect"]["Effect"] = "zf2-e280"
	tCollectLetters_Item["GiftPack"][3303104]["RewardCultivation"] = {}
	tCollectLetters_Item["GiftPack"][3303104]["RewardCultivation"]["Value"] = 300
	tCollectLetters_Item["GiftPack"][3303104]["RewardStrengthValue"] = {}
	tCollectLetters_Item["GiftPack"][3303104]["RewardStrengthValue"]["Value"] = 500
	-- tCollectLetters_Item["GiftPack"][3303104]["RewardEMoneyMono"] = {}
	-- tCollectLetters_Item["GiftPack"][3303104]["RewardEMoneyMono"]["Value"] = 3000
	tCollectLetters_Item["GiftPack"][3303104]["RewardItem"] = {}
	tCollectLetters_Item["GiftPack"][3303104]["RewardItem"][1] = {}
	tCollectLetters_Item["GiftPack"][3303104]["RewardItem"][1]["Id"] = 3003126
	tCollectLetters_Item["GiftPack"][3303104]["RewardItem"][1]["Attr"] = "0 5 3"
	tCollectLetters_Item["GiftPack"][3303104]["RewardItem"][2] = {}
	tCollectLetters_Item["GiftPack"][3303104]["RewardItem"][2]["Id"] = 3003124
	tCollectLetters_Item["GiftPack"][3303104]["RewardItem"][2]["Attr"] = "0 5 3"
	tCollectLetters_Item["GiftPack"][3303104]["RewardItem"][3] = {}
	tCollectLetters_Item["GiftPack"][3303104]["RewardItem"][3]["Id"] = 3001407
	tCollectLetters_Item["GiftPack"][3303104]["RewardItem"][3]["Attr"] = "0 1 3 1440 1"
	tCollectLetters_Item["GiftPack"][3303104]["RewardItem"][4] = {}
	tCollectLetters_Item["GiftPack"][3303104]["RewardItem"][4]["Id"] = 3009001
	tCollectLetters_Item["GiftPack"][3303104]["RewardItem"][4]["Attr"] = "0 1 0 2880 1"
	tCollectLetters_Item["GiftPack"][3303104]["DeleteItem"] = {}
	tCollectLetters_Item["GiftPack"][3303104]["DeleteItem"][1] = {}
	tCollectLetters_Item["GiftPack"][3303104]["DeleteItem"][1]["Id"] = 3303104
	
	tCollectLetters_Item["GiftPack"][3303105] = {}
	tCollectLetters_Item["GiftPack"][3303105]["Space"] = 8
	tCollectLetters_Item["GiftPack"][3303105]["EMoney"] = 20000
	tCollectLetters_Item["GiftPack"][3303105]["LogId"] = 10000170
	tCollectLetters_Item["GiftPack"][3303105]["RewardEffect"] = {}
	tCollectLetters_Item["GiftPack"][3303105]["RewardEffect"]["SzObj"] = "self"
	tCollectLetters_Item["GiftPack"][3303105]["RewardEffect"]["Effect"] = "zf2-e280"
	tCollectLetters_Item["GiftPack"][3303105]["RewardStrengthValue"] = {}
	tCollectLetters_Item["GiftPack"][3303105]["RewardStrengthValue"]["Value"] = 3000
	-- tCollectLetters_Item["GiftPack"][3303105]["RewardEMoney"] = {}
	-- tCollectLetters_Item["GiftPack"][3303105]["RewardEMoney"]["Value"] = 20000
	tCollectLetters_Item["GiftPack"][3303105]["RewardItem"] = {}
	tCollectLetters_Item["GiftPack"][3303105]["RewardItem"][1] = {}
	tCollectLetters_Item["GiftPack"][3303105]["RewardItem"][1]["Id"] = 3003126
	tCollectLetters_Item["GiftPack"][3303105]["RewardItem"][1]["Attr"] = "0 20 3"
	tCollectLetters_Item["GiftPack"][3303105]["RewardItem"][2] = {}
	tCollectLetters_Item["GiftPack"][3303105]["RewardItem"][2]["Id"] = 3003124
	tCollectLetters_Item["GiftPack"][3303105]["RewardItem"][2]["Attr"] = "0 20 3"
	tCollectLetters_Item["GiftPack"][3303105]["RewardItem"][3] = {}
	tCollectLetters_Item["GiftPack"][3303105]["RewardItem"][3]["Id"] = 730004
	tCollectLetters_Item["GiftPack"][3303105]["RewardItem"][3]["Attr"] = "0 1 3"
	tCollectLetters_Item["GiftPack"][3303105]["RewardItem"][4] = {}
	tCollectLetters_Item["GiftPack"][3303105]["RewardItem"][4]["Id"] = 3005360
	tCollectLetters_Item["GiftPack"][3303105]["RewardItem"][4]["Attr"] = "0 1"
	tCollectLetters_Item["GiftPack"][3303105]["RewardItem"][5] = {}
	tCollectLetters_Item["GiftPack"][3303105]["RewardItem"][5]["Id"] = 3009001
	tCollectLetters_Item["GiftPack"][3303105]["RewardItem"][5]["Attr"] = "0 5 0 2880 1"
	tCollectLetters_Item["GiftPack"][3303105]["DeleteItem"] = {}
	tCollectLetters_Item["GiftPack"][3303105]["DeleteItem"][1] = {}
	tCollectLetters_Item["GiftPack"][3303105]["DeleteItem"][1]["Id"] = 3303105	
	
	tCollectLetters_Item["Exchange"] = {}
	--兑换Conquer礼包（7个字符）
	tCollectLetters_Item["Exchange"][1] = {}
	--兑换Conquer14礼包（8个字符）
	tCollectLetters_Item["Exchange"][2] = {}
	
	tCollectLetters_Item["Exchange"][1]["LogId"] = 10000170
	tCollectLetters_Item["Exchange"][1]["EmoneyLog"] = "350	20568	0	0	1	"
	tCollectLetters_Item["Exchange"][1]["RewardEffect"] = {}
	tCollectLetters_Item["Exchange"][1]["RewardEffect"]["SzObj"] = "self"
	tCollectLetters_Item["Exchange"][1]["RewardEffect"]["Effect"] = "zf2-e280"
	tCollectLetters_Item["Exchange"][1]["RewardItem"] = {}
	tCollectLetters_Item["Exchange"][1]["RewardItem"][1] = {}
	tCollectLetters_Item["Exchange"][1]["RewardItem"][1]["Id"] = 3303104
	tCollectLetters_Item["Exchange"][1]["RewardItem"][1]["Attr"] = "0 1"
	tCollectLetters_Item["Exchange"][1]["DeleteItem"] = {}
	tCollectLetters_Item["Exchange"][1]["DeleteItem"][1] = {}
	tCollectLetters_Item["Exchange"][1]["DeleteItem"][1]["Id"] = 3303124
	tCollectLetters_Item["Exchange"][1]["DeleteItem"][2] = {}
	tCollectLetters_Item["Exchange"][1]["DeleteItem"][2]["Id"] = 3303125
	tCollectLetters_Item["Exchange"][1]["DeleteItem"][3] = {}
	tCollectLetters_Item["Exchange"][1]["DeleteItem"][3]["Id"] = 3303126
	tCollectLetters_Item["Exchange"][1]["DeleteItem"][4] = {}
	tCollectLetters_Item["Exchange"][1]["DeleteItem"][4]["Id"] = 3303127
	tCollectLetters_Item["Exchange"][1]["DeleteItem"][5] = {}
	tCollectLetters_Item["Exchange"][1]["DeleteItem"][5]["Id"] = 3303128
	tCollectLetters_Item["Exchange"][1]["DeleteItem"][6] = {}
	tCollectLetters_Item["Exchange"][1]["DeleteItem"][6]["Id"] = 3303129
	tCollectLetters_Item["Exchange"][1]["DeleteItem"][7] = {}
	tCollectLetters_Item["Exchange"][1]["DeleteItem"][7]["Id"] = 3303130

	tCollectLetters_Item["Exchange"][2]["LogId"] = 10000170
	tCollectLetters_Item["Exchange"][2]["EmoneyLog"] = "350	20569	0	0	1	"	
	tCollectLetters_Item["Exchange"][2]["RewardEffect"] = {}
	tCollectLetters_Item["Exchange"][2]["RewardEffect"]["SzObj"] = "self"
	tCollectLetters_Item["Exchange"][2]["RewardEffect"]["Effect"] = "zf2-e280"
	tCollectLetters_Item["Exchange"][2]["RewardItem"] = {}
	tCollectLetters_Item["Exchange"][2]["RewardItem"][1] = {}
	tCollectLetters_Item["Exchange"][2]["RewardItem"][1]["Id"] = 3303105
	tCollectLetters_Item["Exchange"][2]["RewardItem"][1]["Attr"] = "0 1"
	tCollectLetters_Item["Exchange"][2]["DeleteItem"] = {}
	tCollectLetters_Item["Exchange"][2]["DeleteItem"][1] = {}
	tCollectLetters_Item["Exchange"][2]["DeleteItem"][1]["Id"] = 3303124
	tCollectLetters_Item["Exchange"][2]["DeleteItem"][2] = {}
	tCollectLetters_Item["Exchange"][2]["DeleteItem"][2]["Id"] = 3303125
	tCollectLetters_Item["Exchange"][2]["DeleteItem"][3] = {}
	tCollectLetters_Item["Exchange"][2]["DeleteItem"][3]["Id"] = 3303126
	tCollectLetters_Item["Exchange"][2]["DeleteItem"][4] = {}
	tCollectLetters_Item["Exchange"][2]["DeleteItem"][4]["Id"] = 3303127
	tCollectLetters_Item["Exchange"][2]["DeleteItem"][5] = {}
	tCollectLetters_Item["Exchange"][2]["DeleteItem"][5]["Id"] = 3303128
	tCollectLetters_Item["Exchange"][2]["DeleteItem"][6] = {}
	tCollectLetters_Item["Exchange"][2]["DeleteItem"][6]["Id"] = 3303129
	tCollectLetters_Item["Exchange"][2]["DeleteItem"][7] = {}
	tCollectLetters_Item["Exchange"][2]["DeleteItem"][7]["Id"] = 3303130
	tCollectLetters_Item["Exchange"][2]["DeleteItem"][8] = {}
	tCollectLetters_Item["Exchange"][2]["DeleteItem"][8]["Id"] = 3303131


	
	
	
	

	
	
local tCollectLetters_Log = {}
	--过期删除任务物品
	tCollectLetters_Log["OverTime"] = "0,0,%s,0,10000170,3,0,0"
	tCollectLetters_Log["DropItem"] = "0,0,0,0,10000170,2[1],%s,1"
	
local tCollectLetters_Effect = "zf2-e280"

----------------------------------------------------------------------------------------------------------------------	
function CollectLetters_Confirm(nItemId,nSelect)
	local sOptionText = tCollectLetters_Text[nItemId]["Select"][nSelect]
	--重设对白文字

	tItem[nItemId]["Text211"] = string.format(tCollectLetters_Text[nItemId]["Text211"],sOptionText)
	--重设选项函数
	tItem[nItemId]["OptionFunc211"] = "CollectLetters_GiftPack</N>"..nItemId.."</N>"..nSelect
	
	LinkItemGossipFunc_New(nItemId,"2-1")
end

function CollectLetters_GiftPack(nItemId,nSelect)
	local nEMoney = tCollectLetters_Item["GiftPack"][nItemId]["EMoney"] or 0
	local nEMoneyMono = tCollectLetters_Item["GiftPack"][nItemId]["EMoneyMono"] or 0
	local nSpace = tCollectLetters_Item["GiftPack"][nItemId]["Space"]
	
	if (Get_UserEMoney()+nEMoney >= G_User_MaxEmoney) then
		Sys_MsgBox(tCollectLetters_Text["Msg"]["CPLimit"])
		return
	end	
	
	if (Get_UserMonoEMoney()+nEMoneyMono >= G_User_MaxEmoney) then
		Sys_MsgBox(tCollectLetters_Text["Msg"]["CPMonoLimit"])
		return
	end	
	
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tCollectLetters_Text["Msg"]["nSpace"],nSpace))
		return	
	end
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if Sys_Random(tCollectLetters_Data["Prob"][nItemId],10000) then
		if Get_SysDynaGlobalData(tCollectLetters_Data["Global"]["Id"],tCollectLetters_Data["Global"]["Open"][nItemId]) == 0 then
			if nItemId == 3303104 then
				tCollectLetters_Item["GiftPack"][nItemId]["RewardEMoneyMono"] = {}
				tCollectLetters_Item["GiftPack"][nItemId]["RewardEMoneyMono"]["Value"] = 3000		
				tCollectLetters_Item["GiftPack"][nItemId]["EmoneyLog"] = "350	20570	0	0	3000	"					
			-- elseif nItemId == 3303105 then
				-- tCollectLetters_Item["GiftPack"][nItemId]["RewardEMoney"] = {}
				-- tCollectLetters_Item["GiftPack"][nItemId]["RewardEMoney"]["Value"] = 20000				
			end
		
			Sys_SetSynaGlobalData(tCollectLetters_Data["Global"]["Id"],tCollectLetters_Data["Global"]["Open"][nItemId],1)
		else
			tCollectLetters_Item["GiftPack"][nItemId]["RewardEMoneyMono"] = nil
			tCollectLetters_Item["GiftPack"][nItemId]["RewardEMoney"] = nil
			tCollectLetters_Item["GiftPack"][nItemId]["EmoneyLog"] = nil
	
		end
	else
		tCollectLetters_Item["GiftPack"][nItemId]["RewardEMoneyMono"] = nil
		tCollectLetters_Item["GiftPack"][nItemId]["RewardEMoney"] = nil
		tCollectLetters_Item["GiftPack"][nItemId]["EmoneyLog"] = nil
	end
	if nItemId == 3303104 then
		tCollectLetters_Item["GiftPack"][nItemId]["RewardItem"][3] = {}
		tCollectLetters_Item["GiftPack"][nItemId]["RewardItem"][3]["Id"] = tCollectLetters_Item["GiftPack"][nItemId]["SelectItem"][nSelect]
		tCollectLetters_Item["GiftPack"][nItemId]["RewardItem"][3]["Attr"] = tCollectLetters_Item["GiftPack"][nItemId]["SelectAttr"][nSelect]
	end
	
	RewardTemplate_UseItemAndMsg(tCollectLetters_Item["GiftPack"][nItemId])
end




function CollectLetters_Letters(nItemId)

	if not Sys_ChkFullTime(tCollectLetters_Data["ActivetyTime"]) then
		Item_DelAllItemByType(nItemId)
		local sLog = string.format(tCollectLetters_Log["OverTime"],nItemId)
		Sys_SaveActionFestivalLog(sLog)
	return
	end

	NpcPosition_PathFind(7953)
end

function CollectLetters_Condition(nNpcId)
	if not Sys_ChkFullTime(tCollectLetters_Data["ActivetyTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end	
	if not User_JudgeLevelAndMetempsychosis(tCollectLetters_Data["Level"],tCollectLetters_Data["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	local nEvent = tCollectLetters_Stc["EventData"]
	local nType = tCollectLetters_Stc["TypeData"]["Time"]
	Task_StcReset(nEvent,nType)
	if Task_ChkStcValue(nEvent,nType,">=",tCollectLetters_Data["MaxTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end		
	
	LinkNpcGossipFunc_New(nNpcId,"2-1")

end

function CollectLetters_Check(nNpcId,nTypeEx)
	if not CollectLetters_ItemCheck(nNpcId,nTypeEx) then
		tNpcGossip[7953]["Text221"] = string.format(tCollectLetters_Text[7953]["Text221"],tCollectLetters_Text["Msg"]["ChkItem"][nTypeEx])
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	tNpcGossip[7953]["OptionFunc231"] = "CollectLetters_Exchange</N>7953</N>"..nTypeEx
	LinkNpcGossipFunc_New(nNpcId,"2-3")
end

function CollectLetters_ItemCheck(nNpcId,nTypeEx)
	for i,v in pairs(tCollectLetters_Data["ExchangeItem"][nTypeEx]) do
		if not Item_ChkItem(v) then
			return false
		end
	end
	return true
end 

function CollectLetters_Exchange(nNpcId,nTypeEx)
	if not Sys_ChkFullTime(tCollectLetters_Data["ActivetyTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(string.format(tCollectLetters_Text["Msg"]["nSpace"],1))
		return	
	end	
	
	if not CollectLetters_ItemCheck(nNpcId,nTypeEx) then
		tNpcGossip[7953]["Text221"] = string.format(tCollectLetters_Text[7953]["Text221"],tCollectLetters_Text["Msg"]["ChkItem"][nTypeEx])
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end	
	
	local nEvent = tCollectLetters_Stc["EventData"]
	local nType = tCollectLetters_Stc["TypeData"]["Time"]
	Task_StcReset(nEvent,nType)
	if Task_ChkStcValue(nEvent,nType,">=",tCollectLetters_Data["MaxTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end	
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	RewardTemplate_UseItemAndMsg(tCollectLetters_Item["Exchange"][nTypeEx])
end


function CollectLetters_Monster(nMonsterId)
	if not Sys_ChkFullTime(tCollectLetters_Data["ActivetyTime"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tCollectLetters_Data["Level"],tCollectLetters_Data["Metempsychosis"]) then
		return
	end
	local nEvent = tCollectLetters_Stc["EventData"]
	local nType = tCollectLetters_Stc["TypeData"]["Time"]
	Task_StcReset(nEvent,nType)
	if Task_ChkStcValue(nEvent,nType,">=",tCollectLetters_Data["MaxTime"]) then
		return
	end
	
	local flat,tTable = Probabil_RandomAward(tCollectLetters_Data["Monster"],1)
	local nDropItem = tTable[1]["tAward"][1]["DropItem"] or 0
	if nDropItem == 0 then
		return
	end
	--Letter14 限量20个
	if nDropItem == 3303131 then
		local nTime = Get_SysDynaGlobalData(tCollectLetters_Data["Global"]["Id"],tCollectLetters_Data["Global"]["Open"]["Time"])
		local nPassTime = os.time()-Get_SysDynaGlobalData(tCollectLetters_Data["Global"]["Id"],tCollectLetters_Data["Global"]["Open"]["PassTime"])
		if (nTime >= tCollectLetters_Data["DropTime"]) or (nPassTime < tCollectLetters_Data["PassTime"]) then
			return
		else
			Sys_SetSynaGlobalData(tCollectLetters_Data["Global"]["Id"],tCollectLetters_Data["Global"]["Open"]["Time"],1+nTime)
			Sys_SetSynaGlobalData(tCollectLetters_Data["Global"]["Id"],tCollectLetters_Data["Global"]["Open"]["PassTime"],os.time())
		end	
	end

	local sLog = string.format(tCollectLetters_Log["DropItem"],nDropItem)
	Sys_SaveActionFestivalLog(sLog)
	Monster_SysDropItem(nDropItem)
	User_TalkChannel2005(tCollectLetters_Text["Msg"]["DropItem"])
end

function CollectLetters_GlobIdReset()
	if not Sys_ChkFullTime(tCollectLetters_Data["ActivetyTime"]) then
		return
	end

	if Get_SysDynaGlobalData4(tCollectLetters_Data["Global"]["Id"]) == 0 then
		Sys_SetSynaGlobalData(tCollectLetters_Data["Global"]["Id"],tCollectLetters_Data["Global"]["Open"]["Time"],0)
		Sys_SetSynaGlobalData(tCollectLetters_Data["Global"]["Id"],tCollectLetters_Data["Global"]["Open"][3303104],0)
		
		Sys_SetSynaGlobalData4(tCollectLetters_Data["Global"]["Id"],1)
	end	
end

function CollectLetters_GlobIdResetFlag()
	if not Sys_ChkFullTime(tCollectLetters_Data["ActivetyTime"]) then
		return
	end
	
	if Get_SysDynaGlobalData4(tCollectLetters_Data["Global"]["Id"]) >= 1 then
		Sys_SetSynaGlobalData4(tCollectLetters_Data["Global"]["Id"],0)
	end	
end
	
--------------------------------------npc配置-------------------------------------------


tNpcFace[788] = 112
tItemFace[3303104] = 636
tItemFace[3303105] = 637

tNpcGossip[7953] = tNpcGossip[7953] or DefaultNpc:new{}
tNpcGossip[7953]["OptionHidden"] = 1

--活动前
tNpcGossip[7953]["Text1-1"] = {111}
tNpcGossip[7953]["tOption1-1"] = {111}
tNpcGossip[7953]["Text111"] = tCollectLetters_Text[7953]["Text111"]
tNpcGossip[7953]["Option111"] = tCollectLetters_Text[7953]["Option111"]
tNpcGossip[7953]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tCollectLetters_Data["BfActivetyTime"])
end
--活动后
tNpcGossip[7953]["Text1-2"] = {121}
tNpcGossip[7953]["tOption1-2"] = {121}
tNpcGossip[7953]["Text121"] = tCollectLetters_Text[7953]["Text121"]
tNpcGossip[7953]["Option121"] = tCollectLetters_Text[7953]["Option121"]
tNpcGossip[7953]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tCollectLetters_Data["ActivetyTime"])
end

--活动时间
tNpcGossip[7953]["Text1-3"] = {131,132,133}
tNpcGossip[7953]["tOption1-3"] = {131,132}
tNpcGossip[7953]["Text131"] = tCollectLetters_Text[7953]["Text131"]
tNpcGossip[7953]["Text132"] = tCollectLetters_Text[7953]["Text132"]
tNpcGossip[7953]["Text133"] = tCollectLetters_Text[7953]["Text133"]
tNpcGossip[7953]["Option131"] = tCollectLetters_Text[7953]["Option131"]
tNpcGossip[7953]["Option132"] = tCollectLetters_Text[7953]["Option132"]
tNpcGossip[7953]["OptionFunc131"] = "CollectLetters_Condition</N>7953"
tNpcGossip[7953]["ChkFunc1-3"] = function ()

	local nEvent = tCollectLetters_Stc["EventData"]
	local nType = tCollectLetters_Stc["TypeData"]["Time"]
	Task_StcReset(nEvent,nType)
	return true
end

--等级不足
tNpcGossip[7953]["Text1-4"] = {141}
tNpcGossip[7953]["tOption1-4"] = {141}
tNpcGossip[7953]["Text141"] = tCollectLetters_Text[7953]["Text141"]
tNpcGossip[7953]["Option141"] = tCollectLetters_Text[7953]["Option141"]


tNpcGossip[7953]["Text2-1"] = {211,212,213}
tNpcGossip[7953]["tOption2-1"] = {211,212,213}
tNpcGossip[7953]["Text211"] = tCollectLetters_Text[7953]["Text211"]
tNpcGossip[7953]["Text212"] = tCollectLetters_Text[7953]["Text212"]
tNpcGossip[7953]["Text213"] = tCollectLetters_Text[7953]["Text213"]
tNpcGossip[7953]["Option211"] = tCollectLetters_Text[7953]["Option211"]
tNpcGossip[7953]["Option212"] = tCollectLetters_Text[7953]["Option212"]
tNpcGossip[7953]["Option213"] = tCollectLetters_Text[7953]["Option213"]
tNpcGossip[7953]["OptionFunc211"] = "CollectLetters_Check</N>7953</N>1"
tNpcGossip[7953]["OptionFunc212"] = "CollectLetters_Check</N>7953</N>2"

--道具不全
tNpcGossip[7953]["Text2-2"] = {221}
tNpcGossip[7953]["tOption2-2"] = {221}
tNpcGossip[7953]["Text221"] = tCollectLetters_Text[7953]["Text221"]
tNpcGossip[7953]["Option221"] = tCollectLetters_Text[7953]["Option221"]


tNpcGossip[7953]["Text2-3"] = {231}
tNpcGossip[7953]["tOption2-3"] = {231,232}
tNpcGossip[7953]["Text231"] = tCollectLetters_Text[7953]["Text231"]
tNpcGossip[7953]["Option231"] = tCollectLetters_Text[7953]["Option231"]
tNpcGossip[7953]["Option232"] = tCollectLetters_Text[7953]["Option232"]
tNpcGossip[7953]["OptionFunc231"] = "CollectLetters_Exchange</N>7953"

--限制一天兑换5次
tNpcGossip[7953]["Text2-4"] = {241}
tNpcGossip[7953]["tOption2-4"] = {241}
tNpcGossip[7953]["Text241"] = tCollectLetters_Text[7953]["Text241"]
tNpcGossip[7953]["Option241"] = tCollectLetters_Text[7953]["Option241"]

--------------------------------------物品配置-------------------------------------------
--兑换礼包
-- tItem[3303104] = tItem[3303104] or {}
-- tItem[3303104]["Function"] = function(nItemId,sItemName)
	-- CollectLetters_GiftPack(nItemId)
-- end

tItem[3303104] = tItem[3303104] or {}
tItem[3303104]["DialogueText"] =tCollectLetters_Text[3303104]
tItem[3303104]["Text1-1"] = {111}
tItem[3303104]["tOption1-1"] = {1,2,3}
tItem[3303104]["OptionFunc1"] = "CollectLetters_Confirm</N>3303104</N>1"
tItem[3303104]["OptionFunc2"] = "CollectLetters_Confirm</N>3303104</N>2"
tItem[3303104]["Text2-1"] = {211}
tItem[3303104]["Text211"] = tCollectLetters_Text[3303104]["Text211"]
tItem[3303104]["tOption2-1"] = {211,212}








tItem[3303105] = tItem[3303105] or {}
tItem[3303105]["Function"] = function(nItemId,sItemName)
	CollectLetters_GiftPack(nItemId)
end


tItem[3303124] = tItem[3303124] or {}
tItem[3303124]["Function"] = function(nItemId,sItemName)
	CollectLetters_Letters(nItemId)
end
tItem[3303125] = tItem[3303125] or {}
tItem[3303125]["Function"] = function(nItemId,sItemName)
	CollectLetters_Letters(nItemId)
end
tItem[3303126] = tItem[3303126] or {}
tItem[3303126]["Function"] = function(nItemId,sItemName)
	CollectLetters_Letters(nItemId)
end
tItem[3303127] = tItem[3303127] or {}
tItem[3303127]["Function"] = function(nItemId,sItemName)
	CollectLetters_Letters(nItemId)
end
tItem[3303128] = tItem[3303128] or {}
tItem[3303128]["Function"] = function(nItemId,sItemName)
	CollectLetters_Letters(nItemId)
end
tItem[3303129] = tItem[3303129] or {}
tItem[3303129]["Function"] = function(nItemId,sItemName)
	CollectLetters_Letters(nItemId)
end
tItem[3303130] = tItem[3303130] or {}
tItem[3303130]["Function"] = function(nItemId,sItemName)
	CollectLetters_Letters(nItemId)
end
tItem[3303131] = tItem[3303131] or {}
tItem[3303131]["Function"] = function(nItemId,sItemName)
	CollectLetters_Letters(nItemId)
end


--时间函数触发
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],CollectLetters_GlobIdReset)
-- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
-- table.insert(tOntimerMin_HM[0001],CollectLetters_GlobIdReset)
-- tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
-- table.insert(tOntimerMin_HM[0002],CollectLetters_GlobIdResetFlag)
-- tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
-- table.insert(tOntimerMin_HM[0003],CollectLetters_GlobIdResetFlag)


-- local tCollectLetters_Drop = {}
	-- -- 小怪的掉落
	-- tCollectLetters_Drop[1] = {}
	-- tCollectLetters_Drop[1]["ActivityTime"] = tCollectLetters_Data["ActivetyTime"]
	-- tCollectLetters_Drop[1]["Function"] = CollectLetters_Monster
	-- tCollectLetters_Drop[1]["Area"] = {1,2,3,4,5,6}
-- table.insert(tMonsterDrop_AreaLoad,tCollectLetters_Drop[1])
