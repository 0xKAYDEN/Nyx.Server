------------------------------------------------------------------------------------
--Name:		[英文征服][活动脚本]周年庆充值返点（5.24-5.31）
--Purpose:	周年庆充值返点（5.24-5.31）
--Creator: 	张世超
--Created:	2016/04/19
------------------------------------------------------------------------------------
-- 40230 = V100\活动脚本\[征服][活动脚本]周年庆充值返点（5.24-5.31）.lua
-- 40230 = V100\ActiveScript\[Conquer][ActiveScript]AnniversaryCPRebate.lua
-- 命名前缀
-- AnniversaryCPRebate_

local tAnniversaryCPRebate_Item = {}
	tAnniversaryCPRebate_Item[3200006] = {}
	tAnniversaryCPRebate_Item[3200007] = {}
	tAnniversaryCPRebate_Item[3200008] = {}
	tAnniversaryCPRebate_Item[3200009] = {}
	tAnniversaryCPRebate_Item[3200010] = {}
	tAnniversaryCPRebate_Item[3200011] = {}
	tAnniversaryCPRebate_Item[3200012] = {}

	tAnniversaryCPRebate_Item[3200006]["CP"] = 250
	tAnniversaryCPRebate_Item[3200007]["CP"] = 600
	tAnniversaryCPRebate_Item[3200008]["CP"] = 1050
	tAnniversaryCPRebate_Item[3200009]["CP"] = 2750
	tAnniversaryCPRebate_Item[3200010]["CP"] = 5500
	tAnniversaryCPRebate_Item[3200011]["CP"] = 8000
	tAnniversaryCPRebate_Item[3200012]["CP"] = 13000
	
	-- 新增礼包 by yxy 2017.8.11
	tAnniversaryCPRebate_Item[3304644] = {}
	tAnniversaryCPRebate_Item[3304645] = {}
	tAnniversaryCPRebate_Item[3304646] = {}
	tAnniversaryCPRebate_Item[3304647] = {}
	tAnniversaryCPRebate_Item[3304648] = {}
	tAnniversaryCPRebate_Item[3304649] = {}
	tAnniversaryCPRebate_Item[3304650] = {}
	
	tAnniversaryCPRebate_Item[3304644]["CP"] = 300
	tAnniversaryCPRebate_Item[3304645]["CP"] = 800
	tAnniversaryCPRebate_Item[3304646]["CP"] = 1500
	tAnniversaryCPRebate_Item[3304647]["CP"] = 3500
	tAnniversaryCPRebate_Item[3304648]["CP"] = 4500
	tAnniversaryCPRebate_Item[3304649]["CP"] = 6500
	tAnniversaryCPRebate_Item[3304650]["CP"] = 11000



local tAnniversaryCPRebate_Log = {}
	tAnniversaryCPRebate_Log["ActionLog"] = "0,0,%s,1,12000364,2,2,%s"
	tAnniversaryCPRebate_Log["EmoneyLog"] = "999	8154	%d	%d	1	"
	
local tAnniversaryCPRebate_Effect = "zf2-e280"
	
function AnniversaryCPRebate_CPRebate_Item(nItemId)
	--CP超上限
	local nCP = tAnniversaryCPRebate_Item[nItemId]["CP"]
	
	if (Get_UserEMoney()+nCP >= G_User_MaxEmoney) then
		Sys_MsgBox(tAnniversaryCPRebate_Text["Msg"]["CPLimit"])
		return
	end	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local sALog = string.format(tAnniversaryCPRebate_Log["ActionLog"],nItemId,nCP)
		local sELog = string.format(tAnniversaryCPRebate_Log["EmoneyLog"],-nCP,-nCP)
		local sText =  string.format(tAnniversaryCPRebate_Text["Msg"]["GetCP"],nCP)
		User_AddEMoney(nCP)
		Sys_SaveActionFestivalLog(sALog)
		Sys_SaveEmoneyBuy(sELog)
		Sys_MsgBox(sText)
		User_EffectAdd("self",tAnniversaryCPRebate_Effect)
	end
end

--------------------------------------物品配置-------------------------------------------

tItem[3200006] = tItem[3200006] or {}
tItem[3200006]["Function"] = function(nItemId,sItemName)
	AnniversaryCPRebate_CPRebate_Item(nItemId)
end
tItem[3200007] = tItem[3200007] or {}
tItem[3200007]["Function"] = function(nItemId,sItemName)
	AnniversaryCPRebate_CPRebate_Item(nItemId)
end
tItem[3200008] = tItem[3200008] or {}
tItem[3200008]["Function"] = function(nItemId,sItemName)
	AnniversaryCPRebate_CPRebate_Item(nItemId)
end
tItem[3200009] = tItem[3200009] or {}
tItem[3200009]["Function"] = function(nItemId,sItemName)
	AnniversaryCPRebate_CPRebate_Item(nItemId)
end
tItem[3200010] = tItem[3200010] or {}
tItem[3200010]["Function"] = function(nItemId,sItemName)
	AnniversaryCPRebate_CPRebate_Item(nItemId)
end
tItem[3200011] = tItem[3200011] or {}
tItem[3200011]["Function"] = function(nItemId,sItemName)
	AnniversaryCPRebate_CPRebate_Item(nItemId)
end
tItem[3200012] = tItem[3200012] or {}
tItem[3200012]["Function"] = function(nItemId,sItemName)
	AnniversaryCPRebate_CPRebate_Item(nItemId)
end
tItem[3304644] = tItem[3304644] or {}
tItem[3304644]["Function"] = function(nItemId,sItemName)
	AnniversaryCPRebate_CPRebate_Item(nItemId)
end
tItem[3304645] = tItem[3304645] or {}
tItem[3304645]["Function"] = function(nItemId,sItemName)
	AnniversaryCPRebate_CPRebate_Item(nItemId)
end
tItem[3304646] = tItem[3304646] or {}
tItem[3304646]["Function"] = function(nItemId,sItemName)
	AnniversaryCPRebate_CPRebate_Item(nItemId)
end
tItem[3304647] = tItem[3304647] or {}
tItem[3304647]["Function"] = function(nItemId,sItemName)
	AnniversaryCPRebate_CPRebate_Item(nItemId)
end
tItem[3304648] = tItem[3304648] or {}
tItem[3304648]["Function"] = function(nItemId,sItemName)
	AnniversaryCPRebate_CPRebate_Item(nItemId)
end
tItem[3304649] = tItem[3304649] or {}
tItem[3304649]["Function"] = function(nItemId,sItemName)
	AnniversaryCPRebate_CPRebate_Item(nItemId)
end
tItem[3304650] = tItem[3304650] or {}
tItem[3304650]["Function"] = function(nItemId,sItemName)
	AnniversaryCPRebate_CPRebate_Item(nItemId)
end



