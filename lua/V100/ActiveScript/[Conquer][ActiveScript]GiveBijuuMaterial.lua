------------------------------------------------------------------------------------
--Name：	190124[简体征服][活动脚本]尾兽相关调整-材料产出
--Creator:	林旭
--Created:	2019/01/24
------------------------------------------------------------------------------------
--任务需求：
-- 命名前缀:GiveBijuuMaterial_
-- LogId:12001280
-- stc掩码说明：
-- stc(189,78) 正气令获得材料
-- stc(189,79) 显著功勋礼包获得材料
-- stc(189,80) 鸿运当头活跃包获得材料
-- stc(189,81) 每日上线获得材料
------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tGiveBijuuMaterial_LinkWeb = {}
-- 前往官网查看斗士资料
	tGiveBijuuMaterial_LinkWeb[1] = "https://co.99.com/guide/event/2019/fatedheroes/"
-- 前往官网查看灵珠攻略
	tGiveBijuuMaterial_LinkWeb[2] = "https://co.99.com/guide/event/2019/anima/"
-- 前往官网查看灵兽攻略
	tGiveBijuuMaterial_LinkWeb[3] = "https://co.99.com/guide/event/2019/tailedbeast/"
	
	-- 特权月NPCId
local nGiveBijuuMaterial_FindNpcId = 19262
	-- 灵珠导师NPCId
local nGiveBijuuMaterial_FindMasterNpcId = 23746
	
local tGiveBijuuMaterial_Con = {}
	tGiveBijuuMaterial_Con["Level"] = 80
	tGiveBijuuMaterial_Con["Metempsychosis"] = 0
	
local tGiveBijuuMaterial_Time = {}
	tGiveBijuuMaterial_Time["ActivityTime"] = tActivityTime["GiveBijuuMaterial"]["ActivityTime"]

local tGiveBijuuMaterial_Reward = {}
	tGiveBijuuMaterial_Reward[3312014] = {}
	tGiveBijuuMaterial_Reward[3312014]["ItemChanceSum"] = 10000
	tGiveBijuuMaterial_Reward[3312014]["DeleteItem"] = {}
	tGiveBijuuMaterial_Reward[3312014]["DeleteItem"][1] = {}
	tGiveBijuuMaterial_Reward[3312014]["DeleteItem"][1]["Id"] = 3312014
	tGiveBijuuMaterial_Reward[3312014][1] = {}
	tGiveBijuuMaterial_Reward[3312014][1]["RandomItemChanceType"] = 2
	tGiveBijuuMaterial_Reward[3312014][1]["ItemChance"] = 1000
	tGiveBijuuMaterial_Reward[3312014][1]["RewardItem"] = {}
	tGiveBijuuMaterial_Reward[3312014][1]["RewardItem"][1] = {}
	tGiveBijuuMaterial_Reward[3312014][1]["RewardItem"][1]["Id"] = 3009100
	tGiveBijuuMaterial_Reward[3312014][1]["RewardItem"][1]["Attr"] = "0 1"
	tGiveBijuuMaterial_Reward[3312014][1]["RewardEffect"] = {}
	tGiveBijuuMaterial_Reward[3312014][1]["RewardEffect"]["Effect"] = "angelwing"
	tGiveBijuuMaterial_Reward[3312014][1]["Log"] = "0,0,3312014,1,12001280,2,3009100[3311759],1[1]"
	tGiveBijuuMaterial_Reward[3312014][2] = {}
	tGiveBijuuMaterial_Reward[3312014][2]["RandomItemChanceType"] = 2
	tGiveBijuuMaterial_Reward[3312014][2]["ItemChance"] = 5000
	tGiveBijuuMaterial_Reward[3312014][2]["RewardItem"] = {}
	tGiveBijuuMaterial_Reward[3312014][2]["RewardItem"][1] = {}
	tGiveBijuuMaterial_Reward[3312014][2]["RewardItem"][1]["Id"] = 3009100
	tGiveBijuuMaterial_Reward[3312014][2]["RewardItem"][1]["Attr"] = "0 5"
	tGiveBijuuMaterial_Reward[3312014][2]["RewardEffect"] = {}
	tGiveBijuuMaterial_Reward[3312014][2]["RewardEffect"]["Effect"] = "angelwing"
	tGiveBijuuMaterial_Reward[3312014][2]["Log"] = "0,0,3312014,1,12001280,2,3009100[3311759],1[5]"
	tGiveBijuuMaterial_Reward[3312014][3] = {}
	tGiveBijuuMaterial_Reward[3312014][3]["RandomItemChanceType"] = 2
	tGiveBijuuMaterial_Reward[3312014][3]["ItemChance"] = 2000
	tGiveBijuuMaterial_Reward[3312014][3]["RewardItem"] = {}
	tGiveBijuuMaterial_Reward[3312014][3]["RewardItem"][1] = {}
	tGiveBijuuMaterial_Reward[3312014][3]["RewardItem"][1]["Id"] = 3009101
	tGiveBijuuMaterial_Reward[3312014][3]["RewardItem"][1]["Attr"] = "0 1"
	tGiveBijuuMaterial_Reward[3312014][3]["RewardEffect"] = {}
	tGiveBijuuMaterial_Reward[3312014][3]["RewardEffect"]["Effect"] = "angelwing"
	tGiveBijuuMaterial_Reward[3312014][3]["Log"] = "0,0,3312014,1,12001280,2,3009101[3311759],1[1]"
	tGiveBijuuMaterial_Reward[3312014][4] = {}
	tGiveBijuuMaterial_Reward[3312014][4]["RandomItemChanceType"] = 2
	tGiveBijuuMaterial_Reward[3312014][4]["ItemChance"] = 2000
	tGiveBijuuMaterial_Reward[3312014][4]["RewardItem"] = {}
	tGiveBijuuMaterial_Reward[3312014][4]["RewardItem"][1] = {}
	tGiveBijuuMaterial_Reward[3312014][4]["RewardItem"][1]["Id"] = 3009102
	tGiveBijuuMaterial_Reward[3312014][4]["RewardItem"][1]["Attr"] = "0 1"
	tGiveBijuuMaterial_Reward[3312014][4]["RewardEffect"] = {}
	tGiveBijuuMaterial_Reward[3312014][4]["RewardEffect"]["Effect"] = "angelwing"
	tGiveBijuuMaterial_Reward[3312014][4]["Log"] = "0,0,3312014,1,12001280,2,3009102[3311759],1[1]"
	tGiveBijuuMaterial_Reward[3312014][5] = {}
	tGiveBijuuMaterial_Reward[3312014][5]["RandomItemChanceType"] = 1
	tGiveBijuuMaterial_Reward[3312014][5]["RewardItem"] = {}
	tGiveBijuuMaterial_Reward[3312014][5]["RewardItem"][1] = {}
	tGiveBijuuMaterial_Reward[3312014][5]["RewardItem"][1]["Id"] = 3311759
	tGiveBijuuMaterial_Reward[3312014][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tGiveBijuuMaterial_Reward[3312014][5]["RewardEffect"] = {}
	tGiveBijuuMaterial_Reward[3312014][5]["RewardEffect"]["Effect"] = "angelwing"
	
local tGiveBijuuMaterial_Login = {}
	tGiveBijuuMaterial_Login["EventType"] = 189
	tGiveBijuuMaterial_Login["DataType"] = 81
	tGiveBijuuMaterial_Login["RewardData"] = 1 ----每天限制的次数
	tGiveBijuuMaterial_Login["RewardDelay"] = 1 ---掩码的间隔时间
	tGiveBijuuMaterial_Login["RewardTimeType"] = 4 --掩码的间隔时间类型
	tGiveBijuuMaterial_Login["RewardItem"] = {}
	tGiveBijuuMaterial_Login["RewardItem"][1] = {}
	tGiveBijuuMaterial_Login["RewardItem"][1]["Id"] = 3312014 --尾兽材料包
	tGiveBijuuMaterial_Login["RewardItem"][1]["Attr"] = "0 1"
	tGiveBijuuMaterial_Login["RewardEffect"]={}
	tGiveBijuuMaterial_Login["RewardEffect"]["Effect"]="angelwing"
	tGiveBijuuMaterial_Login["LogId"] = 12001280
	tGiveBijuuMaterial_Login["Talk"] = tGiveBijuuMaterial_Text["LoginReward"]
	
	-- 显著功勋礼包
local tGiveBijuuMaterial_OutstandingExploitPack = {}
	tGiveBijuuMaterial_OutstandingExploitPack["EventType"] = 189
	tGiveBijuuMaterial_OutstandingExploitPack["DataType"] = 79
	tGiveBijuuMaterial_OutstandingExploitPack["RewardData"] = 1 ----每天限制的次数
	tGiveBijuuMaterial_OutstandingExploitPack["RewardDelay"] = 1 ---掩码的间隔时间
	tGiveBijuuMaterial_OutstandingExploitPack["RewardTimeType"] = 4 --掩码的间隔时间类型
	tGiveBijuuMaterial_OutstandingExploitPack["RewardItem"] = {}
	tGiveBijuuMaterial_OutstandingExploitPack["RewardItem"][1] = {}
	tGiveBijuuMaterial_OutstandingExploitPack["RewardItem"][1]["Id"] = 3009100 --梦魂草*2
	tGiveBijuuMaterial_OutstandingExploitPack["RewardItem"][1]["Attr"] = "0 2"
	tGiveBijuuMaterial_OutstandingExploitPack["RewardEffect"]={}
	tGiveBijuuMaterial_OutstandingExploitPack["RewardEffect"]["Effect"]="angelwing"
	tGiveBijuuMaterial_OutstandingExploitPack["LogId"] = 12001280
	
	-- 鸿运当空活跃包
local tGiveBijuuMaterial_GreatFortunePack = {}
	tGiveBijuuMaterial_GreatFortunePack["EventType"] = 189
	tGiveBijuuMaterial_GreatFortunePack["DataType"] = 80
	tGiveBijuuMaterial_GreatFortunePack["RewardData"] = 1 ----每天限制的次数
	tGiveBijuuMaterial_GreatFortunePack["RewardDelay"] = 1 ---掩码的间隔时间
	tGiveBijuuMaterial_GreatFortunePack["RewardTimeType"] = 4 --掩码的间隔时间类型
	tGiveBijuuMaterial_GreatFortunePack["RewardItem"] = {}
	tGiveBijuuMaterial_GreatFortunePack["RewardItem"][1] = {}
	tGiveBijuuMaterial_GreatFortunePack["RewardItem"][1]["Id"] = 3009100 --梦魂草*4
	tGiveBijuuMaterial_GreatFortunePack["RewardItem"][1]["Attr"] = "0 4"
	tGiveBijuuMaterial_GreatFortunePack["RewardEffect"]={}
	tGiveBijuuMaterial_GreatFortunePack["RewardEffect"]["Effect"]="angelwing"
	tGiveBijuuMaterial_GreatFortunePack["LogId"] = 12001280
	
--灵珠天降福禄怪物掉落掩码
local tGiveBijuuMaterial_Stc = {}
	tGiveBijuuMaterial_Stc["EventType"] = 190
	tGiveBijuuMaterial_Stc["DataType"] = 39
	tGiveBijuuMaterial_Stc["Data"] = 20
	
local tGiveBijuuMaterial_MonsterGet = {}
	-- 灵珠天降福禄怪物掉落
	tGiveBijuuMaterial_MonsterGet["LogId"] = 12001044
	tGiveBijuuMaterial_MonsterGet["RewardItem"] = {}
	tGiveBijuuMaterial_MonsterGet["RewardItem"][1] = {}
	tGiveBijuuMaterial_MonsterGet["RewardItem"][1]["Id"] = 3312061  --灵珠幸运星
	tGiveBijuuMaterial_MonsterGet["RewardItem"][1]["Attr"] = "0 1"
	tGiveBijuuMaterial_MonsterGet["RewardEffect"] = {}
	tGiveBijuuMaterial_MonsterGet["RewardEffect"]["SzObj"] = "self"
	tGiveBijuuMaterial_MonsterGet["RewardEffect"]["Effect"] = "angelwing"
	tGiveBijuuMaterial_MonsterGet["Random"] = 200  --概率
----------------------------------逻辑部分---------------------------------------------
-- 上线领取尾兽材料包
function GiveBijuuMaterial_Login()
	if not Sys_ChkFullTime(tGiveBijuuMaterial_Time["ActivityTime"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tGiveBijuuMaterial_Con["Level"],tGiveBijuuMaterial_Con["Metempsychosis"]) then
		return
	end
	-- 隔天
	local nEvent = tGiveBijuuMaterial_Login["EventType"]
	local nType = tGiveBijuuMaterial_Login["DataType"]
	if not Task_StcInterval(nEvent,nType,1,4) then
		return
	end
	
	local nSpace = RewardTemplate_GetRewardSpace(tGiveBijuuMaterial_Login)
	--背包满
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tGiveBijuuMaterial_Text["LoginNoSpace"])
		return
	end
	RewardTemplate_UseItem(tGiveBijuuMaterial_Login)
end

-- 返回鸿运当空活跃包所需背包空间
function GiveBijuuMaterial_AddSpaceGreatFortunePack(nSpace)
	if not Sys_ChkFullTime(tGiveBijuuMaterial_Time["ActivityTime"]) then
		return nSpace
	end
	if not User_JudgeLevelAndMetempsychosis(tGiveBijuuMaterial_Con["Level"],tGiveBijuuMaterial_Con["Metempsychosis"]) then
		return nSpace
	end
	if not Task_StcInterval(tGiveBijuuMaterial_GreatFortunePack["EventType"],tGiveBijuuMaterial_GreatFortunePack["DataType"],1,4) then
		return nSpace
	end
	if SpecialServer_ChkNoGiftServer() then
		nSpace = nSpace + RewardTemplate_GetRewardSpace(tGiveBijuuMaterial_GreatFortunePack)
	end
	return nSpace
end

-- 使用鸿运当空活跃包获得尾兽材料
function GiveBijuuMaterial_UseGreatFortunePack()
--判断是否激情服
	if not SpecialServer_ChkNoGiftServer() then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tGiveBijuuMaterial_Con["Level"],tGiveBijuuMaterial_Con["Metempsychosis"]) then
		return
	end
	if Sys_ChkFullTime(tGiveBijuuMaterial_Time["ActivityTime"]) and Task_StcInterval(tGiveBijuuMaterial_GreatFortunePack["EventType"],tGiveBijuuMaterial_GreatFortunePack["DataType"],1,4) then
		RewardTemplate_UseItemAndMsg(tGiveBijuuMaterial_GreatFortunePack)
	end
end

-- 返回显著功勋礼包所需背包空间
function GiveBijuuMaterial_AddSpaceOutstandingExploitPack(nSpace)
	if not Sys_ChkFullTime(tGiveBijuuMaterial_Time["ActivityTime"]) then
		return nSpace
	end
	if not User_JudgeLevelAndMetempsychosis(tGiveBijuuMaterial_Con["Level"],tGiveBijuuMaterial_Con["Metempsychosis"]) then
		return nSpace
	end
	if not Task_StcInterval(tGiveBijuuMaterial_OutstandingExploitPack["EventType"],tGiveBijuuMaterial_OutstandingExploitPack["DataType"],1,4) then
		return nSpace
	end
	if not SpecialServer_ChkNoGiftServer() then
		nSpace = nSpace + RewardTemplate_GetRewardSpace(tGiveBijuuMaterial_OutstandingExploitPack)
	end
	return nSpace
end


-- 使用显著功勋礼包获得尾兽材料
function GiveBijuuMaterial_UseOutstandingExploitPack()
--判断是否激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tGiveBijuuMaterial_Con["Level"],tGiveBijuuMaterial_Con["Metempsychosis"]) then
		return
	end
	if Sys_ChkFullTime(tGiveBijuuMaterial_Time["ActivityTime"]) and Task_StcInterval(tGiveBijuuMaterial_OutstandingExploitPack["EventType"],tGiveBijuuMaterial_OutstandingExploitPack["DataType"],1,4) then
		RewardTemplate_UseItemAndMsg(tGiveBijuuMaterial_OutstandingExploitPack)
	end
end

---------------------灵珠天降福禄怪物掉落------------------------------------------
function GiveBijuuMaterial_KillReward()
	local nUserId = Get_UserId()
	
	--判断获得时间
	if not Sys_ChkFullTime(tActivityTime["FortuneHeaven"]["DragonAtivityTime"]) then
		return
	end

	-- 背包空间判断
	if not RewardTemplate_CheckSpace(tGiveBijuuMaterial_MonsterGet,nUserId) then
		return
	end
	--判断今日是否获得
	local nEvent = tGiveBijuuMaterial_Stc["EventType"]
	local nType = tGiveBijuuMaterial_Stc["DataType"]
	--隔天清零
	if Task_StcInterval(nEvent,nType,1,4) then 
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	local nMax = tGiveBijuuMaterial_Stc["Data"]

	if Task_ChkStcValue(nEvent,nType,">=",nMax,nUserId) then
		return
	end
	if Sys_Random(tGiveBijuuMaterial_MonsterGet["Random"],10000)then
		Task_AddStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		--给物品
		RewardTemplate_UseItemAndMsg(tGiveBijuuMaterial_MonsterGet,nUserId)
		if Task_ChkStcValue(nEvent,nType,"==",nMax,nUserId) then
			Sys_MsgBox(tGiveBijuuMaterial_Text["Monser"])
		end
	end
end


---------------------------------物品部分---------------------------------------------
tItem[3312014] = tItem[3312014] or {}
tItem[3312014]["Function"] = function(nItemId,sItemName)
	local nSpace = RewardTemplate_GetRandomSpace(tGiveBijuuMaterial_Reward,nItemId)
	--背包满
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tGiveBijuuMaterial_Text["UseNoSpace"],nSpace))
		return
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tGiveBijuuMaterial_Reward,nItemId)
	end
end

tItemFace[3320223] = 2112
tItem[3320223] = tItem[3320223] or {}
tItem[3320223]["DialogueText"] = tGiveBijuuMaterial_Text[3320223]
tItem[3320223]["Text1-1"] = {111,112,113}
tItem[3320223]["ChkFunc1-1"] = function() return true end
tItem[3320223]["tOption1-1"] = {111}
tItem[3320223]["OptionFunc111"] = "User_OpenDialog</N>924"

----------------------------------NPC部分---------------------------------------------
tNpcFace[6271] = 35
-- 引导大使
tNpcGossip[23792]= tNpcGossip[23792] or DefaultNpc:new{}
tNpcGossip[23792]["OptionHidden"] = 1
tNpcGossip[23792]["DialogueText"] = tGiveBijuuMaterial_Text[23792]
tNpcGossip[23792]["Text1-1"] = {111,112,113,114,115,116,117,118,119,113,120,121,122,123,124,125}
tNpcGossip[23792]["ChkFunc1-1"]= function()
	if SpecialServer_ChkNoGiftServer() then
		tNpcGossip[23792]["Text123"] = tGiveBijuuMaterial_Text[23792]["Text127"]
	else
		tNpcGossip[23792]["Text123"] = tGiveBijuuMaterial_Text[23792]["Text123"]
	end
	if not User_JudgeLevelAndMetempsychosis(tGiveBijuuMaterial_Con["Level"],tGiveBijuuMaterial_Con["Metempsychosis"]) then
		return false
	end
	return true
end
tNpcGossip[23792]["tOption1-1"] = {115,111,112,113,114}
tNpcGossip[23792]["OptionFunc111"] = "User_SendWebPage</S>"..tGiveBijuuMaterial_LinkWeb[1]
tNpcGossip[23792]["OptionFunc112"] = "User_SendWebPage</S>"..tGiveBijuuMaterial_LinkWeb[2]
tNpcGossip[23792]["OptionFunc113"] = "User_SendWebPage</S>"..tGiveBijuuMaterial_LinkWeb[3]
tNpcGossip[23792]["OptionFunc114"] = "NpcPosition_PathFind</N>"..nGiveBijuuMaterial_FindNpcId
tNpcGossip[23792]["OptionFunc115"] = "NpcPosition_PathFind</N>"..nGiveBijuuMaterial_FindMasterNpcId
tNpcGossip[23792]["Text1-2"] = {111,112,113,114,115,116,117,118,119,113,120,121,122,123,124,125,126}
tNpcGossip[23792]["tOption1-2"] = {121}
----------------------上线触发--------------------------------------------------------
-- 上线触发
table.insert(tSystem_PlayLogin_Func,GiveBijuuMaterial_Login)

------------------------------------------灵珠天降福禄怪物掉落------------------------------------------

	-- local tGiveBijuuMaterial_KillReward = {}
	-- tGiveBijuuMaterial_KillReward["ActivityTime"] = tActivityTime["FortuneHeaven"]["DragonAtivityTime"]
	-- tGiveBijuuMaterial_KillReward["Function"]= GiveBijuuMaterial_KillReward
	-- table.insert(tMonsterDrop_AreaLoad,tGiveBijuuMaterial_KillReward)
	
	