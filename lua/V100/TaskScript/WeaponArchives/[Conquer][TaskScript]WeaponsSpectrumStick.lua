
------------------------------------------------------------------------------------
--Name：         190417[简体征服][功能脚本]勇士百兵谱支线任务
--Creator:      茅志伟
--Created:     2019/04/17
------------------------------------------------------------------------------------
--命名前缀 tWeaponsSpectrumStick_

--lua.ini = 21125
-- 21125 = V100\TaskScript\[Conquer][TaskScript]WeaponsSpectrumStick.lua
--logid = 18000199

--常量表
local tWeaponsSpectrumStick_Data = {}
tWeaponsSpectrumStick_Data["TaskId"] = {}
tWeaponsSpectrumStick_Data["TaskId"]["FindNPC"] = 6998
tWeaponsSpectrumStick_Data["TaskId"]["FindNPCNoG"] = 6999
--普通服
tWeaponsSpectrumStick_Data["TaskId"][14] = 7000   --沙怪
tWeaponsSpectrumStick_Data["TaskId"][15] = 7001   --锤山怪
tWeaponsSpectrumStick_Data["TaskId"][16] = 7002   --巨石怪
tWeaponsSpectrumStick_Data["TaskId"][17] = 7003   --鬼刃
--激情服
tWeaponsSpectrumStick_Data["TaskId"][4846] = 7004   --沙怪
tWeaponsSpectrumStick_Data["TaskId"][4847] = 7005   --锤山怪
tWeaponsSpectrumStick_Data["TaskId"][4848] = 7006   --巨石怪
tWeaponsSpectrumStick_Data["TaskId"][4849] = 7007   --鬼刃
 --使用藏宝图
tWeaponsSpectrumStick_Data["TaskId"]["CBT"] = 7032  
tWeaponsSpectrumStick_Data["TaskId"]["ALL"] = {6998,6999,7000,7001,7002,7003,7004,7005,7006,7007,7032}
--怪物id
tWeaponsSpectrumStick_Data["MonsterId"] = {14,15,16,17}
tWeaponsSpectrumStick_Data["MonsterIdNoG"] = {4846,4847,4848,4849}
--物品id
--灵花果
tWeaponsSpectrumStick_Data["GuoZi"] = 3321123
tWeaponsSpectrumStick_Data["CBTu"] = 3321124
--藏宝图寻路位置
tWeaponsSpectrumStick_Data["MapId"] = 1000          ---非激情服
tWeaponsSpectrumStick_Data["MapIdNoG"] = 10367          ---激情服
tWeaponsSpectrumStick_Data["MapInfo"] = {{179,238},{327,415},{422,190},{812,712},{655,419}}
-- tWeaponsSpectrumStick_Data["MapInfo"] = {{228,281},{228,281},{228,281}}
--怪收集灵花果寻路
tWeaponsSpectrumStick_Data["MapGZInfo"] = {}
tWeaponsSpectrumStick_Data["MapGZInfo"][7000] = {640,633}   --沙怪
tWeaponsSpectrumStick_Data["MapGZInfo"][7001] = {564,353}   --锤山怪
tWeaponsSpectrumStick_Data["MapGZInfo"][7002] = {361,255}   --巨石怪
tWeaponsSpectrumStick_Data["MapGZInfo"][7003] = {246,310}   --鬼刃
tWeaponsSpectrumStick_Data["MapGZInfo"][7004] = {640,633}   --沙怪
tWeaponsSpectrumStick_Data["MapGZInfo"][7005] = {564,353}   --锤山怪
tWeaponsSpectrumStick_Data["MapGZInfo"][7006] = {361,255}   --巨石怪
tWeaponsSpectrumStick_Data["MapGZInfo"][7007] = {246,310}   --鬼刃

--灵花果赠点价格
tWeaponsSpectrumStick_Data["MoneyMono"] = 54
--孙大圣Id
tWeaponsSpectrumStick_Data["NpcId"] = 24128
--读条相关
tWeaponsSpectrumStick_Data["ExploreTime"] = 3
tWeaponsSpectrumStick_Data["ExploreAction"] = 220
--光效
tWeaponsSpectrumStick_Data["EffectType"] = "self"
tWeaponsSpectrumStick_Data["EffectSucc"] = "accession"   --使用藏宝图成功
tWeaponsSpectrumStick_Data["EffectFail"] = "Disapear1"   --使用藏宝图失败

tWeaponsSpectrumStick_Data["WeaponId"] = 480  --棒Id


local tWeaponsSpectrumStick_Stc = {}
--记录兵魂是否觉醒
tWeaponsSpectrumStick_Stc[1] = {}
tWeaponsSpectrumStick_Stc[1]["EventType"] = 193
tWeaponsSpectrumStick_Stc[1]["DataType"] = 73
--记录藏宝图坐标
tWeaponsSpectrumStick_Stc[2] = {}
tWeaponsSpectrumStick_Stc[2]["EventType"] = 193
tWeaponsSpectrumStick_Stc[2]["DataType"] = 74
--弹框提示
tWeaponsSpectrumStick_Stc[3] = {}
tWeaponsSpectrumStick_Stc[3]["EventType"] = 193
tWeaponsSpectrumStick_Stc[3]["DataType"] = 75
--记录是否已经觉醒兵魂棒
tWeaponsSpectrumStick_Stc[4] = {}
tWeaponsSpectrumStick_Stc[4]["EventType"] = 193
tWeaponsSpectrumStick_Stc[4]["DataType"] = 76
--记录是否已接收集灵花果任务,data5为随机接取的任务id
tWeaponsSpectrumStick_Stc[5] = {}
tWeaponsSpectrumStick_Stc[5]["EventType"] = 193
tWeaponsSpectrumStick_Stc[5]["DataType"] = 77
--主NPC领取任务顺序限制
tWeaponsSpectrumStick_Stc[6] = {}
tWeaponsSpectrumStick_Stc[6]["EventType"] = 197
tWeaponsSpectrumStick_Stc[6]["DataType"] = 20

local tWeaponsSpectrumStick_Pack = {}
	-- ===灵花果
	-- ===索引: tWeaponsSpectrumStick_Pack[3321123]
	-- ===
	tWeaponsSpectrumStick_Pack[3321123] = {}
	tWeaponsSpectrumStick_Pack[3321123]["LogId"] = 18000199
	tWeaponsSpectrumStick_Pack[3321123]["RewardItem"] = {}
	tWeaponsSpectrumStick_Pack[3321123]["RewardItem"][1] = {}
	tWeaponsSpectrumStick_Pack[3321123]["RewardItem"][1]["Id"] = 3321123 -- 【库】 3321123 【库里没有该物品】[属性:], 【表格】灵花果
	tWeaponsSpectrumStick_Pack[3321123]["RewardItem"][1]["Attr"] = "0 1" --  3321123 【库里没有该物品】*1
	tWeaponsSpectrumStick_Pack[3321123]["RewardEffect"] = {}
	tWeaponsSpectrumStick_Pack[3321123]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponsSpectrumStick_Pack[3321123]["RewardEffect"]["Effect"] = "angelwing"

	

	-- ===“誓约”藏宝图
	-- ===索引:tWeaponsSpectrumStick_Pack[3321124]
	-- ===删除: 3321123,1
	-- ===
	tWeaponsSpectrumStick_Pack[3321124] = {}
	tWeaponsSpectrumStick_Pack[3321124]["LogId"] = 18000199
	tWeaponsSpectrumStick_Pack[3321124]["DeleteItem"] = {}
	tWeaponsSpectrumStick_Pack[3321124]["DeleteItem"][1] = {}
	tWeaponsSpectrumStick_Pack[3321124]["DeleteItem"][1]["Id"] = 3321123 -- 【库】 3321123 【库里没有该物品】[属性:]
	tWeaponsSpectrumStick_Pack[3321124]["RewardItem"] = {}
	tWeaponsSpectrumStick_Pack[3321124]["RewardItem"][1] = {}
	tWeaponsSpectrumStick_Pack[3321124]["RewardItem"][1]["Id"] = 3321124 -- 【库】 3321124 【库里没有该物品】[属性:], 【表格】“誓约”藏宝图
	tWeaponsSpectrumStick_Pack[3321124]["RewardItem"][1]["Attr"] = "0 1" --  3321124 【库里没有该物品】*1
	tWeaponsSpectrumStick_Pack[3321124]["RewardEffect"] = {}
	tWeaponsSpectrumStick_Pack[3321124]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponsSpectrumStick_Pack[3321124]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===灵花果
	-- ===索引: tWeaponsSpectrumStick_Pack[3321123]
	-- ===
	tWeaponsSpectrumStick_Pack["BuyGZ"] = {}
	tWeaponsSpectrumStick_Pack["BuyGZ"]["LogId"] = 18000199
	tWeaponsSpectrumStick_Pack["BuyGZ"]["RewardItem"] = {}
	tWeaponsSpectrumStick_Pack["BuyGZ"]["RewardItem"][1] = {}
	tWeaponsSpectrumStick_Pack["BuyGZ"]["RewardItem"][1]["Id"] = 3321124 -- 【库】 3321123 【库里没有该物品】[属性:], 【表格】灵花果
	tWeaponsSpectrumStick_Pack["BuyGZ"]["RewardItem"][1]["Attr"] = "0 1" --  3321123 【库里没有该物品】*1
	tWeaponsSpectrumStick_Pack["BuyGZ"]["RewardEffect"] = {}
	tWeaponsSpectrumStick_Pack["BuyGZ"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponsSpectrumStick_Pack["BuyGZ"]["RewardEffect"]["Effect"] = "angelwing"

	-- ===千年古尸
	-- ===索引: tWeaponsSpectrumStick_Pack["MonsterDrop"][1]
	tWeaponsSpectrumStick_Pack["MonsterDrop"] = {}
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1] = {}
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1]["ItemChanceSum"] = 10000
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1]["LogId"] = 18000199
	-- 流星（赠） - 50.00%
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][1] = {}
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][1]["RandomItemChanceType"] = 2
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][1]["ItemChance"] = 5000
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][1]["RewardItem"] = {}
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][1]["RewardItem"][1] = {}
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][1]["RewardItem"][1]["Id"] = 1088001 -- 【库】流星[属性:0], 【表格】流星（赠）
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 流星（赠）*1
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][1]["RewardEffect"] = {}
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 100气力值 - 30.00%
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][2] = {}
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][2]["RandomItemChanceType"] = 2
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][2]["ItemChance"] = 3000
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][2]["RewardItem"] = {}
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][2]["RewardItem"][1] = {}
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][2]["RewardItem"][1]["Id"] = 3304324 -- 【库】100气力值极运包[属性:9], 【表格】100气力值
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 100气力值极运包*1
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][2]["RewardEffect"] = {}
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+1（赠） - 20.00%
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][3] = {}
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][3]["RandomItemChanceType"] = 2
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][3]["ItemChance"] = 2000
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][3]["RewardItem"] = {}
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][3]["RewardItem"][1] = {}
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][3]["RewardItem"][1]["Id"] = 730001 -- 【库】+1赤炼石[属性:0], 【表格】赤炼石+1（赠）
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][3]["RewardItem"][1]["Attr"] = "0 1 3" -- +1赤炼石（赠）*1
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][3]["RewardEffect"] = {}
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponsSpectrumStick_Pack["MonsterDrop"][1][3]["RewardEffect"]["Effect"] = "angelwing"



local tWeaponsSpectrumStick_Random = {}
--怪物掉落概率
tWeaponsSpectrumStick_Random["MonsterDrop"] = {}
tWeaponsSpectrumStick_Random["MonsterDrop"][1] = {}
tWeaponsSpectrumStick_Random["MonsterDrop"][1]["ItemChanceSum"] = 10000
--掉落
tWeaponsSpectrumStick_Random["MonsterDrop"][1][1] = {}
tWeaponsSpectrumStick_Random["MonsterDrop"][1][1]["RandomItemChanceType"] = 2
tWeaponsSpectrumStick_Random["MonsterDrop"][1][1]["ItemChance"] = 9700
tWeaponsSpectrumStick_Random["MonsterDrop"][1][1]["Item_1"] = 1
--不掉落
tWeaponsSpectrumStick_Random["MonsterDrop"][1][2] = {}
tWeaponsSpectrumStick_Random["MonsterDrop"][1][2]["RandomItemChanceType"] = 2
tWeaponsSpectrumStick_Random["MonsterDrop"][1][2]["ItemChance"] = 300
tWeaponsSpectrumStick_Random["MonsterDrop"][1][2]["Item_1"] = 2

--使用藏宝图
tWeaponsSpectrumStick_Random["TreasureMap"] = {}
tWeaponsSpectrumStick_Random["TreasureMap"][1] = {}
tWeaponsSpectrumStick_Random["TreasureMap"][1]["ItemChanceSum"] = 10000
--掉落
tWeaponsSpectrumStick_Random["TreasureMap"][1][1] = {}
tWeaponsSpectrumStick_Random["TreasureMap"][1][1]["RandomItemChanceType"] = 2
tWeaponsSpectrumStick_Random["TreasureMap"][1][1]["ItemChance"] = 8000
tWeaponsSpectrumStick_Random["TreasureMap"][1][1]["Item_1"] = 1
--不掉落
tWeaponsSpectrumStick_Random["TreasureMap"][1][2] = {}
tWeaponsSpectrumStick_Random["TreasureMap"][1][2]["RandomItemChanceType"] = 2
tWeaponsSpectrumStick_Random["TreasureMap"][1][2]["ItemChance"] = 2000
tWeaponsSpectrumStick_Random["TreasureMap"][1][2]["Item_1"] = 2

--使用藏宝图失败情况
tWeaponsSpectrumStick_Random["UseMapFail"] = {}
tWeaponsSpectrumStick_Random["UseMapFail"][1] = {}
tWeaponsSpectrumStick_Random["UseMapFail"][1]["ItemChanceSum"] = 10000
--破罐子
tWeaponsSpectrumStick_Random["UseMapFail"][1][1] = {}
tWeaponsSpectrumStick_Random["UseMapFail"][1][1]["RandomItemChanceType"] = 2
tWeaponsSpectrumStick_Random["UseMapFail"][1][1]["ItemChance"] = 2500
tWeaponsSpectrumStick_Random["UseMapFail"][1][1]["Item_1"] = 1
--狗大便
tWeaponsSpectrumStick_Random["UseMapFail"][1][2] = {}
tWeaponsSpectrumStick_Random["UseMapFail"][1][2]["RandomItemChanceType"] = 2
tWeaponsSpectrumStick_Random["UseMapFail"][1][2]["ItemChance"] = 2500
tWeaponsSpectrumStick_Random["UseMapFail"][1][2]["Item_1"] = 2
--千年古尸
tWeaponsSpectrumStick_Random["UseMapFail"][1][3] = {}
tWeaponsSpectrumStick_Random["UseMapFail"][1][3]["RandomItemChanceType"] = 2
tWeaponsSpectrumStick_Random["UseMapFail"][1][3]["ItemChance"] = 2500
tWeaponsSpectrumStick_Random["UseMapFail"][1][3]["Item_1"] = 3
--蝎子
tWeaponsSpectrumStick_Random["UseMapFail"][1][4] = {}
tWeaponsSpectrumStick_Random["UseMapFail"][1][4]["RandomItemChanceType"] = 2
tWeaponsSpectrumStick_Random["UseMapFail"][1][4]["ItemChance"] = 2500
tWeaponsSpectrumStick_Random["UseMapFail"][1][4]["Item_1"] = 4

--千年古尸掉落
tWeaponsSpectrumStick_Random["MonsterDrop"] = {}
tWeaponsSpectrumStick_Random["MonsterDrop"][1] = {}
tWeaponsSpectrumStick_Random["MonsterDrop"][1]["ItemChanceSum"] = 10000
--流星（赠）
tWeaponsSpectrumStick_Random["MonsterDrop"][1][1] = {}
tWeaponsSpectrumStick_Random["MonsterDrop"][1][1]["RandomItemChanceType"] = 2
tWeaponsSpectrumStick_Random["MonsterDrop"][1][1]["ItemChance"] = 5000
tWeaponsSpectrumStick_Random["MonsterDrop"][1][1]["Item_1"] = 1
tWeaponsSpectrumStick_Random["MonsterDrop"][1][1]["Item_2"] = "0 1 3"
--100气力值
tWeaponsSpectrumStick_Random["MonsterDrop"][1][2] = {}
tWeaponsSpectrumStick_Random["MonsterDrop"][1][2]["RandomItemChanceType"] = 2
tWeaponsSpectrumStick_Random["MonsterDrop"][1][2]["ItemChance"] = 3000
tWeaponsSpectrumStick_Random["MonsterDrop"][1][2]["Item_1"] = 2
tWeaponsSpectrumStick_Random["MonsterDrop"][1][2]["Item_2"] = "0 1"
--赤炼石+1（赠）
tWeaponsSpectrumStick_Random["MonsterDrop"][1][3] = {}
tWeaponsSpectrumStick_Random["MonsterDrop"][1][3]["RandomItemChanceType"] = 2
tWeaponsSpectrumStick_Random["MonsterDrop"][1][3]["ItemChance"] = 2000
tWeaponsSpectrumStick_Random["MonsterDrop"][1][3]["Item_1"] = 3
tWeaponsSpectrumStick_Random["MonsterDrop"][1][3]["Item_2"] = "0 1 3"
	
	
local tWeaponsSpectrumStick_Log = {}
tWeaponsSpectrumStick_Log["DeleteLog"] = "0,0,%d,%d,0,12001289,2,0,0"
tWeaponsSpectrumStick_Log["EMonyeLog"] = "10000	0355	0	0	54	"


----------------------------------------------------逻辑部分
--接兵魂棒任务
-- function WeaponsSpectrumStick_GetTask()
	-- local nTaskId 
	-- if SpecialServer_ChkNoGiftServer() then
		-- nTaskId = tWeaponsSpectrumStick_Data["TaskId"]["FindNPCNoG"]
		-- if not Task_ChkTaskDetail(nTaskId) then 
			-- Task_AddTaskDetail(nTaskId)
			-- Sys_MsgBox(tWeaponsSpectrumStick_Text["Sys_MsgBox"][7],"NpcPosition_PathFind</N>24128")
		-- end 
	-- else
		-- nTaskId = tWeaponsSpectrumStick_Data["TaskId"]["FindNPC"]
		-- if not Task_ChkTaskDetail(nTaskId) then 
			-- Task_AddTaskDetail(nTaskId)
			-- Sys_MsgBox(tWeaponsSpectrumStick_Text["Sys_MsgBox"][7],"NpcPosition_PathFind</N>24128")
		-- end 
	-- end 
	
-- end 

--判断是否有百兵谱棒任务
function WeaponsSpectrumStick_ChkTaskFirst()
	local nEventType1 = tWeaponsSpectrumStick_Stc[1]["EventType"]
	local nDataType1 = tWeaponsSpectrumStick_Stc[1]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	local nEventType5 = tWeaponsSpectrumStick_Stc[5]["EventType"]
	local nDataType5 = tWeaponsSpectrumStick_Stc[5]["DataType"]
	local nData5 = Get_UserStatisticValue(nEventType5,nDataType5)
	if nData1 > 0 then  --已经觉醒兵魂棒 显示闲聊对白
		return true
	end 
	local nTaskIdFind
	local nRandom = math.random(1,4)
	local nMonsterId
	if SpecialServer_ChkNoGiftServer() then
		nTaskIdFind = tWeaponsSpectrumStick_Data["TaskId"]["FindNPCNoG"]
		nMonsterId = tWeaponsSpectrumStick_Data["MonsterIdNoG"][nRandom]
	else
		nTaskIdFind = tWeaponsSpectrumStick_Data["TaskId"]["FindNPC"]
		nMonsterId = tWeaponsSpectrumStick_Data["MonsterId"][nRandom]
	end 
	local nMonsterTaskId = tWeaponsSpectrumStick_Data["TaskId"][nMonsterId]
	if Task_ChkTaskDetail(nTaskIdFind)then   --判断是否有兵魂任务
		if Task_ChkTaskDetailValue(nTaskIdFind,"CompleteFlag","==",0) then 
			Task_SetTaskDetailCompleteFlag(nTaskIdFind,1)   --提交兵魂任务
			Task_AddTaskDetail(nMonsterTaskId)
			Task_SetStatistic(nEventType5,nDataType5,nMonsterTaskId,1)
			return true
		else 
			return false
		end 
	else
		return false
	end 
end 

function WeaponsSpectrumStick_ChkTask()
	local nEventType1 = tWeaponsSpectrumStick_Stc[1]["EventType"]
	local nDataType1 = tWeaponsSpectrumStick_Stc[1]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	if nData1 > 0 then  --已经觉醒兵魂棒 显示闲聊对白
		return true
	end 
	local nTaskIdFind
	if SpecialServer_ChkNoGiftServer() then
		nTaskIdFind = tWeaponsSpectrumStick_Data["TaskId"]["FindNPCNoG"]
	else
		nTaskIdFind = tWeaponsSpectrumStick_Data["TaskId"]["FindNPC"]
	end 
	if Task_ChkTaskDetail(nTaskIdFind)then   --判断是否有兵魂任务
		return false
	else
		return true
	end 
end


--击杀妖匪收集灵花果子
function WeaponsSpectrumStick_KillMonster(nMonsterId)
	local nTaskId = tWeaponsSpectrumStick_Data["TaskId"][nMonsterId]
	if not Task_ChkTaskDetail(nTaskId) then 
		return
	end 
	local nItemId = tWeaponsSpectrumStick_Data["GuoZi"]
	if Item_ChkMulItem(nItemId,nItemId,1) then 
		return
	end 
	local nEventType1 = tWeaponsSpectrumStick_Stc[1]["EventType"]
	local nDataType1 = tWeaponsSpectrumStick_Stc[1]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	if nData1 > 0 then  --已经觉醒兵魂棒 
		return
	end 
	-- local nEventType5 = tWeaponsSpectrumStick_Stc[5]["EventType"]
	-- local nDataType5 = tWeaponsSpectrumStick_Stc[5]["DataType"]
	-- local nData5 = Get_UserStatisticValue(nEventType5,nDataType5)
	local flat,tNum = Probabil_RandomAward(tWeaponsSpectrumStick_Random["MonsterDrop"],1)
	local nNum = tNum[1]["tAward"][1]["Item_1"]
	local nMapId
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tWeaponsSpectrumStick_Data["MapIdNoG"]
	else
		nMapId = tWeaponsSpectrumStick_Data["MapId"]
	end 
	if nNum == 1 then 
		return
	elseif nNum == 2 then 
		-- Task_DelTaskDetail(nTaskId)
		-- Task_SetStatistic(nEventType5,nDataType5,0,1)
		if not User_CheckLeftSpace(1) then
			-- Sys_MsgBox(tWeaponsSpectrumStick_Text["Sys_MsgBox"][3])
			return
		end 
		RewardTemplate_UseItemAndMsg(tWeaponsSpectrumStick_Pack[nItemId])
		-- Sys_MsgBox(tWeaponsSpectrumStick_Text["Sys_MsgBox"][6],"NpcPosition_PathFind</N>24128")
		Sys_MsgBox(tWeaponsSpectrumStick_Text["Sys_MsgBox"][6],"User_UserRandBoundTrans</N>" ..nMapId.. "</N>524</N>607</N>1</N>1</N>1")
	end
end 

--上交果子获得藏宝图
function WeaponsSpectrumStick_HandInFruit(nNpcId)
	local nItemId = tWeaponsSpectrumStick_Data["GuoZi"]
	local nItemId2 = tWeaponsSpectrumStick_Data["CBTu"]
	local nEventType5 = tWeaponsSpectrumStick_Stc[5]["EventType"]
	local nDataType5 = tWeaponsSpectrumStick_Stc[5]["DataType"]
	local nData5 = Get_UserStatisticValue(nEventType5,nDataType5)
	if not Item_ChkMulItem(nItemId,nItemId,1) then 
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	else
		local nRandom = math.random(1,4)
		local nMonsterId
		if SpecialServer_ChkNoGiftServer() then
			nMonsterId = tWeaponsSpectrumStick_Data["MonsterIdNoG"][nRandom]
		else
			nMonsterId = tWeaponsSpectrumStick_Data["MonsterId"][nRandom]
		end 
		local nMonsterTaskId = tWeaponsSpectrumStick_Data["TaskId"][nMonsterId]
		local nTaskId = tWeaponsSpectrumStick_Data["TaskId"]["CBT"]
		if nData5 > 0 then   --判断是否有收集灵花果子任务
			-- Task_SetTaskDetailCompleteFlag(nData5,1)  --提交收集灵花果子任务 (已完成任务无法删除)
			Task_DelTaskDetail(nData5)
			Task_SetStatistic(nEventType5,nDataType5,0,1)
			-- User_TalkChannel2005("a")
		end
		Task_AddTaskDetail(nMonsterTaskId)    ---接新的灵花果任务
		Task_SetStatistic(nEventType5,nDataType5,nMonsterTaskId,1)  --记录任务掩码
		RewardTemplate_UseItemAndMsg(tWeaponsSpectrumStick_Pack[nItemId2])
		if not Task_ChkTaskDetail(nTaskId) then
			Task_AddTaskDetail(nTaskId)
		end 
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		Sys_MsgBox(tWeaponsSpectrumStick_Text["Sys_MsgBox"][13],"WeaponsSpectrumStick_TreasureMapFind</N>3321124")
	end 
end 

--购灵花果赠点不足
function WeaponsSpectrumStick_BuyFruitFirst(nNpcId)
	local EMoneyMono = tWeaponsSpectrumStick_Data["MoneyMono"]
	local nUserMonoEMoney = Get_UserMonoEMoney()
	if EMoneyMono > nUserMonoEMoney then    --赠点天石不足
		Sys_MsgBox(tWeaponsSpectrumStick_Text["Sys_MsgBox"][8])
		return
	end 
	LinkNpcGossipFunc_New(nNpcId,"4-1")
end 

--花费赠点买灵花果
function WeaponsSpectrumStick_BuyFruit(nNpcId)
	local nItemId = tWeaponsSpectrumStick_Data["CBTu"]
	local EMoneyMono = tWeaponsSpectrumStick_Data["MoneyMono"]
	local tTextLog = tWeaponsSpectrumStick_Log["EMonyeLog"]
	local nUserMonoEMoney = Get_UserMonoEMoney()
	local nTaskId = tWeaponsSpectrumStick_Data["TaskId"]["CBT"]
	if EMoneyMono > nUserMonoEMoney then    --赠点天石不足
		Sys_MsgBox(tWeaponsSpectrumStick_Text["Sys_MsgBox"][8])
		return
	end 
	if User_AddEMoneyMono(-EMoneyMono) then 
		RewardTemplate_UseItemAndMsg(tWeaponsSpectrumStick_Pack["BuyGZ"])
		Sys_SaveEmoneyBuy(tTextLog)
		Sys_MsgBox(tWeaponsSpectrumStick_Text["Sys_MsgBox"][13],"WeaponsSpectrumStick_TreasureMapFind</N>3321124")
		if not Task_ChkTaskDetail(nTaskId) then 
			Task_AddTaskDetail(nTaskId)  --藏宝图任务
		end 
	end 
end 


--藏宝图寻路逻辑
function WeaponsSpectrumStick_TreasureMapFind(nItemId,nUserId)
	local nUserId = nUserId or Get_UserId()
	local nEventType1 = tWeaponsSpectrumStick_Stc[1]["EventType"]
	local nDataType1 = tWeaponsSpectrumStick_Stc[1]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	local nEventType2 = tWeaponsSpectrumStick_Stc[2]["EventType"]
	local nDataType2 = tWeaponsSpectrumStick_Stc[2]["DataType"]
	local nData2 = Get_UserStatisticValue(nEventType2,nDataType2)
	
	if nData1 > 0 then  --已经觉醒兵魂棒 
		local nItemCount = Get_CountItemType(nItemId,0,nil,nil,nUserId)
		local nLogText = string.format(tWeaponsSpectrumStick_Log["DeleteLog"],nItemId,nItemCount)
		Item_DelMulItem(nItemId,nItemId,nItemCount,nil,nil,nUserId)
		Sys_SaveActionFestivalLog(nLogText,nUserId)
		Sys_MsgBox(tWeaponsSpectrumStick_Text["Sys_MsgBox"][14],nil,nil,nUserId)
		return 
	end 
	if nData2 == 0 then 
		nData2 = math.random(1,5)
		Task_SetStatistic(nEventType2,nDataType2,nData2,1,nUserId)
	end 
	-- User_TalkChannel2005("nData2 = " ..nData2)
	local nMapId
	local nMapX = tWeaponsSpectrumStick_Data["MapInfo"][nData2][1]
	local nMapY = tWeaponsSpectrumStick_Data["MapInfo"][nData2][2]
	local nUserMapId = Get_UserMapId(nUserId)
	local nUserPosX = Get_UserPositionX(nUserId)
	local nUserPosY = Get_UserPositionY(nUserId)
	local nRang = 3 
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tWeaponsSpectrumStick_Data["MapIdNoG"]
	else
		nMapId = tWeaponsSpectrumStick_Data["MapId"]
	end 
	if nMapId == nUserMapId then 
		if (nMapX - nRang < nUserPosX) and (nUserPosX < nMapX + nRang) and (nMapY - nRang < nUserPosY) and (nUserPosY < nMapY + nRang) then 
			Sys_MsgBox(tWeaponsSpectrumStick_Text["Sys_MsgBox"][4],"WeaponsSpectrumStick_TreasureMapUse</N>" ..nItemId.. "</N>" ..nMapId.. "</N>" ..nMapX.. "</N>" ..nMapY,nil,nUserId)
		end 
	end 
	Sys_GotoSomeWhere(nMapX,nMapY,nMapId,nil,nUserId)
end 

--藏宝图使用
function WeaponsSpectrumStick_TreasureMapUse(nItemId,nMapId,nMapX,nMapY)
	local nEventType4 = tWeaponsSpectrumStick_Stc[4]["EventType"]
	local nDataType4 = tWeaponsSpectrumStick_Stc[4]["DataType"]
	local nData4 = Get_UserStatisticValue(nEventType4,nDataType4)
	local nUserMapId = Get_UserMapId()
	local nUserPosX = Get_UserPositionX()
	local nUserPosY = Get_UserPositionY()
	local nRang = 3
	local nEventType1 = tWeaponsSpectrumStick_Stc[1]["EventType"]
	local nDataType1 = tWeaponsSpectrumStick_Stc[1]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	if nData1 > 0 then  --已经觉醒兵魂棒 
		return
	end 
	if nMapId == nUserMapId then 
		if (nMapX - nRang < nUserPosX) and (nUserPosX < nMapX + nRang) and (nMapY - nRang < nUserPosY) and (nUserPosY < nMapY + nRang) then 
			local nExploreTime = tWeaponsSpectrumStick_Data["ExploreTime"]
			local nExploreAction = tWeaponsSpectrumStick_Data["ExploreAction"]
			User_SetExplore(nExploreTime,tWeaponsSpectrumStick_Text[nItemId]["DuTiao"],nExploreAction,"WeaponsSpectrumStick_CBTDuTiao</N>" ..nItemId)
			return
		end 
	end 
	Sys_MsgBox(tWeaponsSpectrumStick_Text["Sys_MsgBox"][5])
end 

--读条
function WeaponsSpectrumStick_CBTDuTiao(nItemId,nUserId)
	local nEventType1 = tWeaponsSpectrumStick_Stc[1]["EventType"]
	local nDataType1 = tWeaponsSpectrumStick_Stc[1]["DataType"]
	local nEventType2 = tWeaponsSpectrumStick_Stc[2]["EventType"]
	local nDataType2 = tWeaponsSpectrumStick_Stc[2]["DataType"]
	local nEventType5 = tWeaponsSpectrumStick_Stc[5]["EventType"]
	local nDataType5 = tWeaponsSpectrumStick_Stc[5]["DataType"]
	local nEventType6 = tWeaponsSpectrumStick_Stc[6]["EventType"]
	local nDataType6 = tWeaponsSpectrumStick_Stc[6]["DataType"]
	local nData5 = Get_UserStatisticValue(nEventType5,nDataType5,nUserId)
	local flat,tNum = Probabil_RandomAward(tWeaponsSpectrumStick_Random["TreasureMap"],1)
	local nNum = tNum[1]["tAward"][1]["Item_1"]
	local nLogText = string.format(tWeaponsSpectrumStick_Log["DeleteLog"],nItemId,1)
	local nTaskId = tWeaponsSpectrumStick_Data["TaskId"]["CBT"]
	local nWeaponId = tWeaponsSpectrumStick_Data["WeaponId"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1,nUserId)
	if nData1 > 0 then  --已经觉醒兵魂棒
		return
	end 
	if Item_DelItem(nItemId,nil,nil,nUserId) then 
		Sys_SaveActionFestivalLog(nLogText,nUserId)
		if nNum == 1 then 
			-- Sys_MsgBox(tWeaponsSpectrumStick_Text["Sys_MsgBox"][2],nil,nil,nUserId)
			Task_SetStatistic(nEventType2,nDataType2,0,1,nUserId)   --使用藏宝图后删除寻路位置记录
			WeaponsSpectrumStick_UseMapFail(nUserId)
			User_EffectAdd(tWeaponsSpectrumStick_Data["EffectType"],tWeaponsSpectrumStick_Data["EffectFail"],nUserId)
			return
		elseif nNum == 2 then 
			Task_SetStatistic(nEventType2,nDataType2,0,1,nUserId)   --使用藏宝图后删除寻路位置记录
			Task_SetStatistic(nEventType1,nDataType1,1,1,nUserId)   --已觉醒兵魂
			Task_AddStatistic(nEventType6,nDataType6,1,1,nUserId)   --已觉醒兵魂（主NPC领取任务顺序限制）
			
			Task_DelTaskDetail(nData5,nUserId)
			User_EffectAdd(tWeaponsSpectrumStick_Data["EffectType"],tWeaponsSpectrumStick_Data["EffectSucc"],nUserId)
			if Task_ChkTaskDetail(nTaskId,nUserId) then
				Task_SetTaskDetailCompleteFlag(nTaskId,1,nUserId)  --藏宝图任务
			end 
			
			--觉醒兵魂接口
			User_AwardHundredWeapon(nWeaponId,nUserId)
			
			Sys_MsgBox(tWeaponsSpectrumStick_Text["Sys_MsgBox"][1],"HundredsOfSoldiersSword_BoundTrans",nil,nUserId)
			-- for k ,v in pairs (tWeaponsSpectrumStick_Data["TaskId"]["ALL"]) do
				-- if not Task_ChkTaskDetail(v,nUserId) then
					-- Task_AddTaskDetail(v,nil,nUserId)
				-- end 
				-- Task_SetTaskDetailCompleteFlag(v,1,nUserId)
			-- end 
			return
		end
	else
		return
	end 
end 



--灵花果寻路
function WeaponsSpectrumStick_GZFind(nItemId)
	local nNpcId = tWeaponsSpectrumStick_Data["NpcId"]
	NpcPosition_PathFind(nNpcId)
end 

--收集灵花果寻路（和任务面板寻路一致）
function WeaponsSpectrumStick_CollectGZ(nUserId)
	local nUserId = nUserId or Get_UserId()
	local nEventType5 = tWeaponsSpectrumStick_Stc[5]["EventType"]
	local nDataType5 = tWeaponsSpectrumStick_Stc[5]["DataType"]
	local nData5 = Get_UserStatisticValue(nEventType5,nDataType5,nUserId)
	local nMapX = tWeaponsSpectrumStick_Data["MapGZInfo"][nData5][1]
	local nMapY = tWeaponsSpectrumStick_Data["MapGZInfo"][nData5][2]
	local nMapId 
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tWeaponsSpectrumStick_Data["MapIdNoG"]
	else
		nMapId = tWeaponsSpectrumStick_Data["MapId"]
	end 
	Sys_GotoSomeWhere(nMapX,nMapY,nMapId,nil,nUserId)  --寻路
end 


--使用藏宝图失败情况
function WeaponsSpectrumStick_UseMapFail(nUserId)
	local nUserMapId = Get_UserMapId(nUserId)
	local nUserPosX = Get_UserPositionX(nUserId)
	local nUserPosY = Get_UserPositionY(nUserId)
	local nGenId
	local nMonsterId = 2990
	local flat,tNum = Probabil_RandomAward(tWeaponsSpectrumStick_Random["UseMapFail"],1)
	local nNum = tNum[1]["tAward"][1]["Item_1"]
	-- User_AddRoleStatus(55,0,3,0,0,0,0,0,0,nUserId)
	if SpecialServer_ChkNoGiftServer() then
		nGenId = 27148
	else
		nGenId = 27147
	end 
	if nNum == 1 then  --破罐子
		Sys_MsgBox(tWeaponsSpectrumStick_Text["Sys_MsgBox"][9],"WeaponsSpectrumStick_UseMapFailAgain</N>" ..nUserId,nil,nUserId)
	elseif nNum == 2 then  --狗大便
		Sys_MsgBox(tWeaponsSpectrumStick_Text["Sys_MsgBox"][10],"WeaponsSpectrumStick_UseMapFailAgain</N>" ..nUserId,nil,nUserId)
	elseif nNum == 3 then  --千年古尸
		Monster_AddMonster(nUserMapId,nUserPosX,nUserPosY,nGenId,nMonsterId)
		Sys_MsgBox(tWeaponsSpectrumStick_Text["Sys_MsgBox"][11],nil,nil,nUserId)
	elseif nNum == 4 then  --蝎子
		Sys_MsgBox(tWeaponsSpectrumStick_Text["Sys_MsgBox"][12],"WeaponsSpectrumStick_UseMapFailAgain</N>" ..nUserId,nil,nUserId)
		User_AddRoleStatus(55,0,3,0,0,0,0,0,0,nUserId)
	end 
end 

function WeaponsSpectrumStick_UseMapFailAgain(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nItemId = tWeaponsSpectrumStick_Data["CBTu"]
	local nItemId2 = tWeaponsSpectrumStick_Data["GuoZi"]
	if Item_ChkMulItem(nItemId,nItemId,1,nil,nil,nUserId) then 
		WeaponsSpectrumStick_TreasureMapFind(nItemId,nUserId)
		return
	else
		if Item_ChkMulItem(nItemId2,nItemId2,1,nil,nil,nUserId) then 
			NpcPosition_PathFind(24128)
		else
			Sys_MsgBox(tWeaponsSpectrumStick_Text["Sys_MsgBox"][15],"WeaponsSpectrumStick_CollectGZ</N>" ..nUserId,nil,nUserId)
		end 
	end 
end 

function WeaponsSpectrumStick_MonsterDrop(nMonsterId)
	
	local flat,tNum = Probabil_RandomAward(tWeaponsSpectrumStick_Random["MonsterDrop"],1)
	local nNum = tNum[1]["tAward"][1]["Item_1"]
	local nAttr = tNum[1]["tAward"][1]["Item_2"]
	local nSpace = 1 
	if User_CheckLeftSpace(nSpace) then 
		RewardTemplate_NewRandom(tWeaponsSpectrumStick_Pack["MonsterDrop"],1)
	end 
	
	Sys_MsgBox(tWeaponsSpectrumStick_Text["Sys_MsgBox"][16],"WeaponsSpectrumStick_UseMapFailAgain")
end 




--------------------------------------------NPC对白
tNpcFace[6485] = 72
tNpcGossip[24128] = tNpcGossip[24128] or DefaultNpc:new{}
tNpcGossip[24128]["OptionHidden"] = 1
tNpcGossip[24128]["DialogueText"] = tWeaponsSpectrumStick_Text[24128]
--闲聊
tNpcGossip[24128]["Text1-1"] = {111,112,113}
tNpcGossip[24128]["tOption1-1"] = {111}
tNpcGossip[24128]["ChkFunc1-1"] = function ()
	return WeaponsSpectrumStick_ChkTask()
end
--任务首次对白
tNpcGossip[24128]["Text1-2"] = {121,122,123,124,125,126,127,128,129}
tNpcGossip[24128]["tOption1-2"] = {121}
tNpcGossip[24128]["ChkFunc1-2"] = function ()
	return WeaponsSpectrumStick_ChkTaskFirst()
end
tNpcGossip[24128]["OptionPoint121"] = "5-1"
--任务首次对白2
tNpcGossip[24128]["Text5-1"] = {511,512,513,514,515}
tNpcGossip[24128]["tOption5-1"] = {511}
tNpcGossip[24128]["OptionFunc511"] = "WeaponsSpectrumStick_CollectGZ"

--任务对白
tNpcGossip[24128]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[24128]["tOption1-3"] = {131}
tNpcGossip[24128]["ChkFunc1-3"] = function ()
	return not WeaponsSpectrumStick_ChkTaskFirst()
end
tNpcGossip[24128]["OptionFunc131"] = "WeaponsSpectrumStick_HandInFruit</N>24128"
--有灵花果上交
tNpcGossip[24128]["Text2-1"] = {211,212,213}
tNpcGossip[24128]["tOption2-1"] = {211}
-- tNpcGossip[24128]["OptionFunc211"] = "WeaponsSpectrumStick_TreasureMapFind</N>3321124"

--没有灵花果上交
tNpcGossip[24128]["Text3-1"] = {311,312,313}
tNpcGossip[24128]["tOption3-1"] = {311,312}
-- tNpcGossip[24128]["OptionPoint311"] = "4-1"
tNpcGossip[24128]["OptionFunc311"] = "WeaponsSpectrumStick_CollectGZ"
tNpcGossip[24128]["OptionFunc312"] = "WeaponsSpectrumStick_BuyFruitFirst</N>24128"

--二次确认
tNpcGossip[24128]["Text4-1"] = {411,412,413}
tNpcGossip[24128]["tOption4-1"] = {411}
tNpcGossip[24128]["OptionFunc411"] = "WeaponsSpectrumStick_BuyFruit"


-----------------------------------------------------物品模板
--宝藏图
tItem[3321124] = tItem[3321124] or {}
tItem[3321124]["Function"] = function(nItemId,sItemName)
	WeaponsSpectrumStick_TreasureMapFind(nItemId)
end
--灵花果
tItem[3321123] = tItem[3321123] or {}
tItem[3321123]["Function"] = function(nItemId,sItemName)
	WeaponsSpectrumStick_GZFind(nItemId)
end

-----------------------------------------------怪物模板

local tWeaponsSpectrumStick_KillMonster = {}
tWeaponsSpectrumStick_KillMonster[1] = {}
tWeaponsSpectrumStick_KillMonster[1]["Function"]= WeaponsSpectrumStick_KillMonster
tWeaponsSpectrumStick_KillMonster[1]["MonsterId"] = {14,15,16,17,4846,4847,4848,4849}
table.insert(tMonsterDrop_AreaLoad,tWeaponsSpectrumStick_KillMonster[1])

tWeaponsSpectrumStick_KillMonster[2] = {}
tWeaponsSpectrumStick_KillMonster[2]["Function"]= WeaponsSpectrumStick_MonsterDrop
tWeaponsSpectrumStick_KillMonster[2]["MonsterId"] = {2990}
table.insert(tMonsterDrop_AreaLoad,tWeaponsSpectrumStick_KillMonster[2])