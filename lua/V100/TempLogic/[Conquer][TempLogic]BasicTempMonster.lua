----------------------------------------------------------------------------
--Name:		[征服][模板逻辑]基础模板之怪物模块.lua
--Purpose:	基础模板之怪物模块
--Creator: 	郑江文
--Created:	2014/12/10
----------------------------------------------------------------------------

local tKillMonsterLog = {}
local tKillMonsterNum = {}

--任务怪物触发Action接口函数(action.id=94416550)，实时触发。（适合用来做怪物掉落）
function LinkMonsterMain()
	local nMonsterTypeId = Get_MonsterType()
	
	-- 判断是否有取到怪物ID
	if nMonsterTypeId == 0 or nMonsterTypeId == nil then
		Sys_SaveAbnormalLog("nMonsterTypeId的值没有取到或者为0")
		return
	end
	
	-- 每杀1000只怪物，打个log
	-- LinkMonsterLog(nMonsterTypeId)
	
	Task_KillMonster(nMonsterTypeId)
	NewTaskTemplate_MonsterMain(nMonsterTypeId)
	
	--怪物表是否有值
	if tMonster[nMonsterTypeId] == nil then
		return
	end
	--功能怪
	if type(tMonster[nMonsterTypeId]["tFunction"]) == "table" then
		for _,func in ipairs(tMonster[nMonsterTypeId]["tFunction"]) do
			if func ~= nil and type(func) == "function" then
				func(nMonsterTypeId)
			end
		end
	end	
end

function LinkMonsterLog(nMonsterTypeId)
	local nUserId = Get_UserId()
	
	if tKillMonsterLog[nUserId] == nil then
		tKillMonsterLog[nUserId] = 0
	end
	
	if tKillMonsterNum[nMonsterTypeId] == nil then
		tKillMonsterNum[nMonsterTypeId] = 0
	end
	
	tKillMonsterLog[nUserId] = tKillMonsterLog[nUserId] + 1
	tKillMonsterNum[nMonsterTypeId] = tKillMonsterNum[nMonsterTypeId] + 1
	
	if tKillMonsterLog[nUserId]%1000 == 0 then
		Sys_SaveActionParamLog("mostercount","0,0,0,0,18000159,2,0,0",nUserId)
	end
	
	-- 统计玩家杀的最多是那种怪
	if tKillMonsterNum[nMonsterTypeId]%500 == 0 then
		local sText = string.format("0,0,0,0,18000159,2,%d,%d",nMonsterTypeId,tKillMonsterNum[nMonsterTypeId])
		Sys_SaveActionParamLog("mostercount",sText,nUserId)
	end
end

-- 杀怪福利
-- GetUserDropSpiritType 玩家幸运值器灵掉落 参数1：玩家ID，返回值 非0就是ItemType
function LinkMonsterWelfare()
	local nUserId = Get_UserId()
	
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["MonsterWelfare"]["ActivityTime"]) then
		return
	end
	
	local nItemType = GetUserDropSpiritType(nUserId)
	if nItemType ~= 0 then
		Monster_SysDropItem(nItemType)
	end
end

--例：
--tMonster[5830] = tMonster[5830] or {}
--tMonster[5830]["tFunction"] = tMonster[5830]["tFunction"] or {}
--table.insert(tMonster[5830]["tFunction"],RandMission_55136_Monster_Killed)
local tMonsterWelfare = {}
tMonsterWelfare[1] = {}
tMonsterWelfare[1]["ActivityTime"] = tActivityTime["MonsterWelfare"]["ActivityTime"]
tMonsterWelfare[1]["Function"] = LinkMonsterWelfare
tMonsterWelfare[1]["Area"] = {1,2,3,4,5,6,7,10,11}
tMonsterWelfare[2] = {}
tMonsterWelfare[2]["ActivityTime"] = tActivityTime["MonsterWelfare"]["ActivityTime"]
tMonsterWelfare[2]["Function"]= LinkMonsterWelfare
tMonsterWelfare[2]["MonsterId"]= {4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,
	4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
table.insert(tMonsterDrop_AreaLoad,tMonsterWelfare[1])
table.insert(tMonsterDrop_AreaLoad_NoGift,tMonsterWelfare[2])
