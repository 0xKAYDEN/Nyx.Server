------------------------------------------------------------------------------------
--Name：      190514[简体征服][活动脚本]勇士觉醒特权月线上任务（5.28）-特权福利、装备促销 
--Creator:    陈莺
--Created:    2019/05/16
------------------------------------------------------------------------------------
local tWarriorPrivilege_Data = {}
	tWarriorPrivilege_Data["Level"] = 80
	tWarriorPrivilege_Data["Metempsychosis"] = 0

local tWarriorPrivilege_Stc = {}
	tWarriorPrivilege_Stc[1] = {}
	tWarriorPrivilege_Stc[1]["EventType"] = 197
	tWarriorPrivilege_Stc[1]["DataType"] = 07
	tWarriorPrivilege_Stc[1]["Data"] = 3
	tWarriorPrivilege_Stc[1]["JiqingData"] = 8


local tWarriorPrivilege_Reward = {}
	tWarriorPrivilege_Reward[1] = {} --显著功勋礼包
	tWarriorPrivilege_Reward[1]["EventType"] = 197
	tWarriorPrivilege_Reward[1]["DataType"] = 02
	tWarriorPrivilege_Reward[1]["RewardDelay"] = 1
	tWarriorPrivilege_Reward[1]["RewardTimeType"] = 4
	tWarriorPrivilege_Reward[1]["RewardData"] = 1
	tWarriorPrivilege_Reward[1]["LogId"] = 12001428
	tWarriorPrivilege_Reward[1]["RewardItem"] = {}
	tWarriorPrivilege_Reward[1]["RewardItem"][1] = {}
	tWarriorPrivilege_Reward[1]["RewardItem"][1]["Id"] = 3315463 -- 忍者之石 -- 3312723  --勇者之石
	tWarriorPrivilege_Reward[1]["RewardItem"][1]["Attr"] = "0 2"
	tWarriorPrivilege_Reward[1]["RewardEffect"] = {}
	tWarriorPrivilege_Reward[1]["RewardEffect"]["SzObj"] = "self"
	tWarriorPrivilege_Reward[1]["RewardEffect"]["Effect"] = "angelwing"

	tWarriorPrivilege_Reward[2] = {} --每日签到礼包
	tWarriorPrivilege_Reward[2]["EventType"] = 197
	tWarriorPrivilege_Reward[2]["DataType"] = 03
	tWarriorPrivilege_Reward[2]["RewardDelay"] = 1
	tWarriorPrivilege_Reward[2]["RewardTimeType"] = 4
	tWarriorPrivilege_Reward[2]["RewardData"] = 1
	tWarriorPrivilege_Reward[2]["LogId"] = 12001428
	tWarriorPrivilege_Reward[2]["RewardItem"] = {}
	tWarriorPrivilege_Reward[2]["RewardItem"][1] = {}
	tWarriorPrivilege_Reward[2]["RewardItem"][1]["Id"] = 3315463 -- 忍者之石 -- 3312723  --勇者之石
	tWarriorPrivilege_Reward[2]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorPrivilege_Reward[2]["RewardEffect"] = {}
	tWarriorPrivilege_Reward[2]["RewardEffect"]["SzObj"] = "self"
	tWarriorPrivilege_Reward[2]["RewardEffect"]["Effect"] = "angelwing"
	
	tWarriorPrivilege_Reward[3] = {} --杀怪
	tWarriorPrivilege_Reward[3]["LogId"] = 12001428
	tWarriorPrivilege_Reward[3]["RewardItem"] = {}
	tWarriorPrivilege_Reward[3]["RewardItem"][1] = {}
	tWarriorPrivilege_Reward[3]["RewardItem"][1]["Id"] = 3315463 -- 忍者之石 -- 3312723  --勇者之石
	tWarriorPrivilege_Reward[3]["RewardItem"][1]["Attr"] = "0 1"
	tWarriorPrivilege_Reward[3]["RewardEffect"] = {}
	tWarriorPrivilege_Reward[3]["RewardEffect"]["SzObj"] = "self"
	tWarriorPrivilege_Reward[3]["RewardEffect"]["Effect"] = "angelwing"
	tWarriorPrivilege_Reward[3]["Random"] = 100  --概率
	
	-- tWarriorPrivilege_Reward[4] = {} --激情服杀怪获得令牌
	-- tWarriorPrivilege_Reward[4]["EventType"] = 197
	-- tWarriorPrivilege_Reward[4]["DataType"] = 63
	-- tWarriorPrivilege_Reward[4]["RewardDelay"] = 1
	-- tWarriorPrivilege_Reward[4]["RewardTimeType"] = 4
	-- tWarriorPrivilege_Reward[4]["RewardData"] = 1
	-- tWarriorPrivilege_Reward[4]["LogId"] = 12001428
	-- tWarriorPrivilege_Reward[4]["RewardItem"] = {}
	-- tWarriorPrivilege_Reward[4]["RewardItem"][1] = {}
	-- tWarriorPrivilege_Reward[4]["RewardItem"][1]["Id"] = 3312754
	-- tWarriorPrivilege_Reward[4]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	-- tWarriorPrivilege_Reward[4]["RewardEffect"] = {}
	-- tWarriorPrivilege_Reward[4]["RewardEffect"]["SzObj"] = "self"
	-- tWarriorPrivilege_Reward[4]["RewardEffect"]["Effect"] = "angelwing"

-- 忍者特权月
local tWarriorPrivilege_Pro = {}
	tWarriorPrivilege_Pro["Min"] = G_PRO_Ninja0_New
	tWarriorPrivilege_Pro["Max"] = G_PRO_Ninja49_New

--使用显著功勋礼包
function WarriorPrivilege_Get(nNum)
	--激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	local nUserId = Get_UserId()
	--判断获得时间
	if not Sys_ChkFullTime(tActivityTime["NanjaPrivilege"]["ActivityTime"]) then
		return
	end
	--判断是否勇士
	local nProfession = Get_NewUserProfession(nUserId)
	--职业不符合返回
	if nProfession < tWarriorPrivilege_Pro["Min"] or nProfession > tWarriorPrivilege_Pro["Max"] then
		return 
	end
	-- 等级判断
	if not User_JudgeLevelAndMetempsychosis(tWarriorPrivilege_Data["Level"],tWarriorPrivilege_Data["Metempsychosis"],nUserId) then
		return
	end
	-- 背包空间判断
	if not RewardTemplate_CheckSpace(tWarriorPrivilege_Reward[nNum],nUserId) then
		return
	end
	RewardTemplate_OuterPckage(tWarriorPrivilege_Reward[nNum],nUserId)
end


---杀怪
function WarriorPrivilege_KillReward()

	--判断获得时间
	if not Sys_ChkFullTime(tActivityTime["NanjaPrivilege"]["ActivityTime"]) then
		return
	end
	local nUserId = Get_UserId()
	local nProfession = Get_NewUserProfession(nUserId)
	--职业不符合返回
	if nProfession < tWarriorPrivilege_Pro["Min"] or nProfession > tWarriorPrivilege_Pro["Max"] then
		return 
	end
	-- 等级判断
	if not User_JudgeLevelAndMetempsychosis(tWarriorPrivilege_Data["Level"],tWarriorPrivilege_Data["Metempsychosis"],nUserId) then
		return
	end
	-- 背包空间判断
	local nSpace = RewardTemplate_GetRewardSpace(tWarriorPrivilege_Reward[3])
	-- local nSpace = RewardTemplate_GetRewardSpace(tWarriorPrivilege_Reward[3]) + RewardTemplate_GetRewardSpace(tWarriorPrivilege_Reward[4])
	if not User_CheckLeftSpace(nSpace) then
		return
	end
	--判断今日是否获得
	local nEvent = tWarriorPrivilege_Stc[1]["EventType"]
	local nType = tWarriorPrivilege_Stc[1]["DataType"]
	--隔天清零
	if Task_StcInterval(nEvent,nType,1,4) then 
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	local nMax = tWarriorPrivilege_Stc[1]["Data"]
	--激情服
	if SpecialServer_ChkNoGiftServer() then
		nMax = tWarriorPrivilege_Stc[1]["JiqingData"]
	end
	if Task_ChkStcValue(nEvent,nType,">=",nMax,nUserId) then
		return
	end
	if Sys_Random(tWarriorPrivilege_Reward[3]["Random"],10000)then
		Task_AddStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		--给物品
		RewardTemplate_UseItemAndMsg(tWarriorPrivilege_Reward[3],nUserId)
		-- if Task_ChkStcValue(nEvent,nType,"==",nMax,nUserId) then
			-- local sStr = string.format(tFlowerChiefItem_Text["Monster"],nMax)
			-- Sys_MsgBox(sStr)
		-- end
		-- if SpecialServer_ChkNoGiftServer() then
			-- RewardTemplate_UseItemAndMsg(tWarriorPrivilege_Reward[4],nUserId)
		-- end
	end

end

---------------------------------物品部分---------------------------------------------
--3312723,'勇者之石'
tItem[3312723] = tItem[3312723] or {}
tItem[3312723]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	local nUserId = Get_UserId()
	local nProfession = Get_NewUserProfession(nUserId)
	--职业不符合返回
	if nProfession < G_PRO_Trojan0_New or nProfession > 1099 then
		return 
	end
	Melter_Link()
end

--3315463,'忍者之石'
tItem[3315463] = tItem[3315463] or {}
tItem[3315463]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	local nUserId = Get_UserId()
	local nProfession = Get_NewUserProfession(nUserId)
	--职业不符合返回
	if nProfession < G_PRO_Ninja0_New or nProfession > G_PRO_Ninja49_New then
		return 
	end
	Melter_Link()
end

---------------------------------怪物部分---------------------------------------------
	local tWarriorPrivilege_KillReward = {}
	tWarriorPrivilege_KillReward["ActivityTime"] = tActivityTime["NanjaPrivilege"]["ActivityTime"]
	tWarriorPrivilege_KillReward["Function"]= WarriorPrivilege_KillReward
	table.insert(tMonsterDrop_AreaLoad,tWarriorPrivilege_KillReward)

-------激情服
	--小怪
local tWarriorPrivilege_KillReward_NoGift = {}
	tWarriorPrivilege_KillReward_NoGift[1] = {}
	tWarriorPrivilege_KillReward_NoGift[1]["ActivityTime"] = tActivityTime["NanjaPrivilege"]["ActivityTime"]
	tWarriorPrivilege_KillReward_NoGift[1]["Function"] = WarriorPrivilege_KillReward
	tWarriorPrivilege_KillReward_NoGift[1]["MonsterId"]={4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,
	4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
	table.insert(tMonsterDrop_AreaLoad_NoGift,tWarriorPrivilege_KillReward_NoGift[1])
	
	--精英怪
	tWarriorPrivilege_KillReward_NoGift[2] = {}
	tWarriorPrivilege_KillReward_NoGift[2]["ActivityTime"] = tActivityTime["NanjaPrivilege"]["ActivityTime"]
	tWarriorPrivilege_KillReward_NoGift[2]["Function"] = WarriorPrivilege_KillReward
	tWarriorPrivilege_KillReward_NoGift[2]["MonsterId"] = {4880,4881,4883,4884,4885,4886,4887,4888,4889,4890,4891,4892,4893,4894,4895,4896,4897}
	table.insert(tMonsterDrop_AreaLoad_NoGift,tWarriorPrivilege_KillReward_NoGift[2])
	
	--boss
	tWarriorPrivilege_KillReward_NoGift[3] = {}
	tWarriorPrivilege_KillReward_NoGift[3]["ActivityTime"] = tActivityTime["NanjaPrivilege"]["ActivityTime"]
	tWarriorPrivilege_KillReward_NoGift[3]["Function"] = WarriorPrivilege_KillReward
	tWarriorPrivilege_KillReward_NoGift[3]["MonsterId"] = {4898,4899,4900,4901,4902,4903,4904,4905,4906,4907,4908,4909,4910}
	table.insert(tMonsterDrop_AreaLoad_NoGift,tWarriorPrivilege_KillReward_NoGift[3])
	
	--马贼
	tWarriorPrivilege_KillReward_NoGift[4] = {}
	tWarriorPrivilege_KillReward_NoGift[4]["ActivityTime"] = tActivityTime["NanjaPrivilege"]["ActivityTime"]
	tWarriorPrivilege_KillReward_NoGift[4]["Function"] = WarriorPrivilege_KillReward
	tWarriorPrivilege_KillReward_NoGift[4]["MonsterId"] = {4882}
	table.insert(tMonsterDrop_AreaLoad_NoGift,tWarriorPrivilege_KillReward_NoGift[4])
	
	--梦灵兽、青龙幻影、青龙神兽
	tWarriorPrivilege_KillReward_NoGift[5] = {}
	tWarriorPrivilege_KillReward_NoGift[5]["ActivityTime"] = tActivityTime["NanjaPrivilege"]["ActivityTime"]
	tWarriorPrivilege_KillReward_NoGift[5]["Function"] = WarriorPrivilege_KillReward
	tWarriorPrivilege_KillReward_NoGift[5]["MonsterId"] = {3504,3505,3506}
	table.insert(tMonsterDrop_AreaLoad_NoGift,tWarriorPrivilege_KillReward_NoGift[5])
