----------------------------------------------------------------------------
--Name:		[征服][工具]工具导出的文件.lua
--Purpose:	工具导出的文件
--Creator: 	郑鋆
--Created:	2019/10/16
----------------------------------------------------------------------------

local tRebateShop_Item = {}
local tExchangeShop_Item = {}
local tWelfarePage_Item = {}

-- 固定奖励礼包
local tFaJiang_Item = {}
-- tItem[3312966] = tItem[3312966] or {}
-- tItem[3312966]["Function"] = function(nItemId,sItemName)
	-- RewardTemplate_UseItemAndMsg(tFaJiang_Item[nItemId])
-- end

-- 随机奖励礼包
-- tItem[3312966] = tItem[3312966] or {}
-- tItem[3312966]["Function"] = function(nItemId,sItemName)
	-- RewardTemplate_RandomReward(tFaJiang_Item,nItemId)
-- end

local tExchangeNpc_Config = {}
-- 示范的例子
-- tExchangeNpc_Config[22004] = {}
-- tExchangeNpc_Config[22004]["ActivityTime"] = "2019-11-01 00:00 2019-11-31 23:59"
-- 普通服坐标
-- tExchangeNpc_Config[22004]["Pos"] = {}
-- tExchangeNpc_Config[22004]["Pos"]["Ordinary"] = {}
-- tExchangeNpc_Config[22004]["Pos"]["Ordinary"]["MapId"] = 1002
-- tExchangeNpc_Config[22004]["Pos"]["Ordinary"]["PosX"] = 336
-- tExchangeNpc_Config[22004]["Pos"]["Ordinary"]["PosY"] = 492
-- 激情服坐标
-- tExchangeNpc_Config[22004]["Pos"]["NoGift"] = {}
-- tExchangeNpc_Config[22004]["Pos"]["NoGift"]["MapId"] = 1036
-- tExchangeNpc_Config[22004]["Pos"]["NoGift"]["PosX"] = 252
-- tExchangeNpc_Config[22004]["Pos"]["NoGift"]["PosY"] = 246

-------------------------------------------逻辑部分-------------------
function ExchangeNpc_Main()
	local nNpcId = Get_NpcId()
	local tInfo = tExchangeNpc_Config[nNpcId]

	if tInfo == nil then
		return
	end

	-- 判断时间
	local sActivityTime = tInfo["ActivityTime"]
	-- 活动前判断
	if sActivityTime ~= nil and CommonFunc_GetBeforeActivityTime(sActivityTime) then
		ExchangeNpc_Npc(nNpcId,"1-1")
		return
	end

	-- 活动后判断
	if sActivityTime ~= nil and CommonFunc_GetAfterActivityTime(sActivityTime) then
		ExchangeNpc_Npc(nNpcId,"1-2")
		return
	end

	-- 需求等级
	if tInfo["NeedLevel"] ~= nil and tInfo["NeedMetempsychosis"] ~= nil then
		if not User_JudgeLevelAndMetempsychosis(tInfo["NeedLevel"],tInfo["NeedMetempsychosis"]) then
			ExchangeNpc_Npc(nNpcId,"1-3")
			return
		end
	end

	-- 打开兑换商店
	User_OpenExchangeShop(nNpcId)
end

function ExchangeNpc_Npc(nNpcId,sIndex)
	if tNpcGossip[nNpcId] == nil then
		return
	end

	if tNpcGossip[nNpcId]["Text" .. sIndex] == nil then
		return
	end

	LinkNpcGossipFunc_New(nNpcId,sIndex)
end

-- 服务器启动加载时处理
function ExchangeNpc_StartServer()
	for nNpcId,v in pairs(tExchangeNpc_Config) do
		MoveNpc_SetNpcInfo(nNpcId,v)
	end
end

tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],ExchangeNpc_StartServer)