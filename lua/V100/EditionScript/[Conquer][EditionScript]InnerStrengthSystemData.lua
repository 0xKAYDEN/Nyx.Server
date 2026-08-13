----------------------------------------------------------------------------
--Name:		[征服][功能脚本]内功系统数据.lua
--Purpose:	内功功能
--Creator: 	郑鋆
--Created:	2014/11/21
----------------------------------------------------------------------------
---------------------------------命名规范----------------------------------

-- 内功测试数据命名前缀词： InternalSystem_

-- 常量表
local tInternalSystem_Count = {}
	tInternalSystem_Count["MaxCultureValue"] = 999999999

-- 秘籍对应要求表
local tInternalSystem_Item = {}
	-- 混元功·上篇
	tInternalSystem_Item[3005365] = {}
	tInternalSystem_Item[3005365]["InnerStrengthType"] = 1
	tInternalSystem_Item[3005365]["Metempsychosis"] = 2
	tInternalSystem_Item[3005365]["Level"] = 15
	tInternalSystem_Item[3005365]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3005365]["RequireType"] = 0
	tInternalSystem_Item[3005365]["RequireLevel"] = 0
	
	-- 混元功·下篇
	tInternalSystem_Item[3005366] = {}
	tInternalSystem_Item[3005366]["InnerStrengthType"] = 2
	tInternalSystem_Item[3005366]["Metempsychosis"] = 2
	tInternalSystem_Item[3005366]["Level"] = 15
	tInternalSystem_Item[3005366]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3005366]["RequireType"] = 1
	tInternalSystem_Item[3005366]["RequireLevel"] = 5
	
	-- 天罡气决·上篇
	tInternalSystem_Item[3005395] = {}
	tInternalSystem_Item[3005395]["InnerStrengthType"] = 3
	tInternalSystem_Item[3005395]["Metempsychosis"] = 2
	tInternalSystem_Item[3005395]["Level"] = 15
	tInternalSystem_Item[3005395]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3005395]["RequireType"] = 2
	tInternalSystem_Item[3005395]["RequireLevel"] = 5
	
	-- 天罡气决·下篇
	tInternalSystem_Item[3005396] = {}
	tInternalSystem_Item[3005396]["InnerStrengthType"] = 4
	tInternalSystem_Item[3005396]["Metempsychosis"] = 2
	tInternalSystem_Item[3005396]["Level"] = 15
	tInternalSystem_Item[3005396]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3005396]["RequireType"] = 3
	tInternalSystem_Item[3005396]["RequireLevel"] = 5
	
	-- 罗刹诀·上篇
	tInternalSystem_Item[3007113] = {}
	tInternalSystem_Item[3007113]["InnerStrengthType"] = 5
	tInternalSystem_Item[3007113]["Metempsychosis"] = 2
	tInternalSystem_Item[3007113]["Level"] = 15
	tInternalSystem_Item[3007113]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3007113]["RequireType"] = 4
	tInternalSystem_Item[3007113]["RequireLevel"] = 5
	
	-- 罗刹诀·下篇
	tInternalSystem_Item[3007114] = {}
	tInternalSystem_Item[3007114]["InnerStrengthType"] = 6
	tInternalSystem_Item[3007114]["Metempsychosis"] = 2
	tInternalSystem_Item[3007114]["Level"] = 15
	tInternalSystem_Item[3007114]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3007114]["RequireType"] = 5
	tInternalSystem_Item[3007114]["RequireLevel"] = 7
	
	-- 龙象般若功·上篇
	tInternalSystem_Item[3005397] = {}
	tInternalSystem_Item[3005397]["InnerStrengthType"] = 7
	tInternalSystem_Item[3005397]["Metempsychosis"] = 2
	tInternalSystem_Item[3005397]["Level"] = 15
	tInternalSystem_Item[3005397]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3005397]["RequireType"] = 6
	tInternalSystem_Item[3005397]["RequireLevel"] = 7
	
	-- 龙象般若功·下篇
	tInternalSystem_Item[3005398] = {}
	tInternalSystem_Item[3005398]["InnerStrengthType"] = 8
	tInternalSystem_Item[3005398]["Metempsychosis"] = 2
	tInternalSystem_Item[3005398]["Level"] = 15
	tInternalSystem_Item[3005398]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3005398]["RequireType"] = 7
	tInternalSystem_Item[3005398]["RequireLevel"] = 7

	-- 无量心经·上篇
	tInternalSystem_Item[3007115] = {}
	tInternalSystem_Item[3007115]["InnerStrengthType"] = 9
	tInternalSystem_Item[3007115]["Metempsychosis"] = 2
	tInternalSystem_Item[3007115]["Level"] = 15
	tInternalSystem_Item[3007115]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3007115]["RequireType"] = 6
	tInternalSystem_Item[3007115]["RequireLevel"] = 7
	
	-- 无量心经·中篇
	tInternalSystem_Item[3007116] = {}
	tInternalSystem_Item[3007116]["InnerStrengthType"] = 10
	tInternalSystem_Item[3007116]["Metempsychosis"] = 2
	tInternalSystem_Item[3007116]["Level"] = 15
	tInternalSystem_Item[3007116]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3007116]["RequireType"] = 9
	tInternalSystem_Item[3007116]["RequireLevel"] = 7
	
	-- 无量心经·下篇
	tInternalSystem_Item[3007117] = {}
	tInternalSystem_Item[3007117]["InnerStrengthType"] = 11
	tInternalSystem_Item[3007117]["Metempsychosis"] = 2
	tInternalSystem_Item[3007117]["Level"] = 15
	tInternalSystem_Item[3007117]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3007117]["RequireType"] = 10
	tInternalSystem_Item[3007117]["RequireLevel"] = 7

	-- 太乙神功·上篇
	tInternalSystem_Item[3005399] = {}
	tInternalSystem_Item[3005399]["InnerStrengthType"] = 12
	tInternalSystem_Item[3005399]["Metempsychosis"] = 2
	tInternalSystem_Item[3005399]["Level"] = 15
	tInternalSystem_Item[3005399]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3005399]["RequireType"] = 6
	tInternalSystem_Item[3005399]["RequireLevel"] = 7
	
	-- 太乙神功·中篇
	tInternalSystem_Item[3005400] = {}
	tInternalSystem_Item[3005400]["InnerStrengthType"] = 13
	tInternalSystem_Item[3005400]["Metempsychosis"] = 2
	tInternalSystem_Item[3005400]["Level"] = 15
	tInternalSystem_Item[3005400]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3005400]["RequireType"] = 12
	tInternalSystem_Item[3005400]["RequireLevel"] = 7
	
	-- 太乙神功·下篇
	tInternalSystem_Item[3005401] = {}
	tInternalSystem_Item[3005401]["InnerStrengthType"] = 14
	tInternalSystem_Item[3005401]["Metempsychosis"] = 2
	tInternalSystem_Item[3005401]["Level"] = 15
	tInternalSystem_Item[3005401]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3005401]["RequireType"] = 13
	tInternalSystem_Item[3005401]["RequireLevel"] = 7

	-- 枯荣禅功·上篇
	tInternalSystem_Item[3007230] = {}
	tInternalSystem_Item[3007230]["InnerStrengthType"] = 15
	tInternalSystem_Item[3007230]["Metempsychosis"] = 2
	tInternalSystem_Item[3007230]["Level"] = 15
	tInternalSystem_Item[3007230]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3007230]["RequireType"] = 6
	tInternalSystem_Item[3007230]["RequireLevel"] = 7
	
	-- 枯荣禅功·中篇
	tInternalSystem_Item[3007231] = {}
	tInternalSystem_Item[3007231]["InnerStrengthType"] = 16
	tInternalSystem_Item[3007231]["Metempsychosis"] = 2
	tInternalSystem_Item[3007231]["Level"] = 15
	tInternalSystem_Item[3007231]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3007231]["RequireType"] = 15
	tInternalSystem_Item[3007231]["RequireLevel"] = 7
	
	-- 枯荣禅功·下篇
	tInternalSystem_Item[3007232] = {}
	tInternalSystem_Item[3007232]["InnerStrengthType"] = 17
	tInternalSystem_Item[3007232]["Metempsychosis"] = 2
	tInternalSystem_Item[3007232]["Level"] = 15
	tInternalSystem_Item[3007232]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3007232]["RequireType"] = 16
	tInternalSystem_Item[3007232]["RequireLevel"] = 7
	-- 纯阳无极功·上篇
	tInternalSystem_Item[3316129] = {}
	tInternalSystem_Item[3316129]["InnerStrengthType"] = 18
	tInternalSystem_Item[3316129]["Metempsychosis"] = 2
	tInternalSystem_Item[3316129]["Level"] = 15
	tInternalSystem_Item[3316129]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3316129]["RequireType"] = 6
	tInternalSystem_Item[3316129]["RequireLevel"] = 7

	-- 纯阳无极功·中篇
	tInternalSystem_Item[3316130] = {}
	tInternalSystem_Item[3316130]["InnerStrengthType"] = 19
	tInternalSystem_Item[3316130]["Metempsychosis"] = 2
	tInternalSystem_Item[3316130]["Level"] = 15
	tInternalSystem_Item[3316130]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3316130]["RequireType"] = 18
	tInternalSystem_Item[3316130]["RequireLevel"] = 7
	-- 纯阳无极功·下篇
	tInternalSystem_Item[3316131] = {}
	tInternalSystem_Item[3316131]["InnerStrengthType"] = 20
	tInternalSystem_Item[3316131]["Metempsychosis"] = 2
	tInternalSystem_Item[3316131]["Level"] = 15
	tInternalSystem_Item[3316131]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3316131]["RequireType"] = 19
	tInternalSystem_Item[3316131]["RequireLevel"] = 7

	-- 化功大法·上篇
	tInternalSystem_Item[3315430] = {}
	tInternalSystem_Item[3315430]["InnerStrengthType"] = 21
	tInternalSystem_Item[3315430]["Metempsychosis"] = 2
	tInternalSystem_Item[3315430]["Level"] = 15
	tInternalSystem_Item[3315430]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3315430]["RequireType"] = 6
	tInternalSystem_Item[3315430]["RequireLevel"] = 7
	
	-- 化功大法·中篇
	tInternalSystem_Item[3315431] = {}
	tInternalSystem_Item[3315431]["InnerStrengthType"] = 22
	tInternalSystem_Item[3315431]["Metempsychosis"] = 2
	tInternalSystem_Item[3315431]["Level"] = 15
	tInternalSystem_Item[3315431]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3315431]["RequireType"] = 21
	tInternalSystem_Item[3315431]["RequireLevel"] = 7
	-- 化功大法·下篇
	tInternalSystem_Item[3315432] = {}
	tInternalSystem_Item[3315432]["InnerStrengthType"] = 23
	tInternalSystem_Item[3315432]["Metempsychosis"] = 2
	tInternalSystem_Item[3315432]["Level"] = 15
	tInternalSystem_Item[3315432]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3315432]["RequireType"] = 22
	tInternalSystem_Item[3315432]["RequireLevel"] = 7

	-- 紫霞神功·上篇
	tInternalSystem_Item[3315424] = {}
	tInternalSystem_Item[3315424]["InnerStrengthType"] = 24
	tInternalSystem_Item[3315424]["Metempsychosis"] = 2
	tInternalSystem_Item[3315424]["Level"] = 15
	tInternalSystem_Item[3315424]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3315424]["RequireType"] = 6
	tInternalSystem_Item[3315424]["RequireLevel"] = 7

	-- 紫霞神功·中篇
	tInternalSystem_Item[3315425] = {}
	tInternalSystem_Item[3315425]["InnerStrengthType"] = 25
	tInternalSystem_Item[3315425]["Metempsychosis"] = 2
	tInternalSystem_Item[3315425]["Level"] = 15
	tInternalSystem_Item[3315425]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3315425]["RequireType"] = 24
	tInternalSystem_Item[3315425]["RequireLevel"] = 7
	
	-- 紫霞神功·下篇
	tInternalSystem_Item[3315426] = {}
	tInternalSystem_Item[3315426]["InnerStrengthType"] = 26
	tInternalSystem_Item[3315426]["Metempsychosis"] = 2
	tInternalSystem_Item[3315426]["Level"] = 15
	tInternalSystem_Item[3315426]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3315426]["RequireType"] = 25
	tInternalSystem_Item[3315426]["RequireLevel"] = 7
	
	-- 北冥神功·上篇
	tInternalSystem_Item[3315421] = {}
	tInternalSystem_Item[3315421]["InnerStrengthType"] = 27
	tInternalSystem_Item[3315421]["Metempsychosis"] = 2
	tInternalSystem_Item[3315421]["Level"] = 15
	tInternalSystem_Item[3315421]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3315421]["RequireType"] = 6
	tInternalSystem_Item[3315421]["RequireLevel"] = 7

	-- 北冥神功·中篇
	tInternalSystem_Item[3315422] = {}
	tInternalSystem_Item[3315422]["InnerStrengthType"] = 28
	tInternalSystem_Item[3315422]["Metempsychosis"] = 2
	tInternalSystem_Item[3315422]["Level"] = 15
	tInternalSystem_Item[3315422]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3315422]["RequireType"] = 27
	tInternalSystem_Item[3315422]["RequireLevel"] = 7
	
	-- 北冥神功·下篇
	tInternalSystem_Item[3315423] = {}
	tInternalSystem_Item[3315423]["InnerStrengthType"] = 29
	tInternalSystem_Item[3315423]["Metempsychosis"] = 2
	tInternalSystem_Item[3315423]["Level"] = 15
	tInternalSystem_Item[3315423]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3315423]["RequireType"] = 28
	tInternalSystem_Item[3315423]["RequireLevel"] = 7
	
	-- 九阴真经·上篇
	tInternalSystem_Item[3315427] = {}
	tInternalSystem_Item[3315427]["InnerStrengthType"] = 30
	tInternalSystem_Item[3315427]["Metempsychosis"] = 2
	tInternalSystem_Item[3315427]["Level"] = 15
	tInternalSystem_Item[3315427]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3315427]["RequireType"] = 6
	tInternalSystem_Item[3315427]["RequireLevel"] = 7

	-- 九阴真经·中篇
	tInternalSystem_Item[3315428] = {}
	tInternalSystem_Item[3315428]["InnerStrengthType"] = 31
	tInternalSystem_Item[3315428]["Metempsychosis"] = 2
	tInternalSystem_Item[3315428]["Level"] = 15
	tInternalSystem_Item[3315428]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3315428]["RequireType"] = 30
	tInternalSystem_Item[3315428]["RequireLevel"] = 7
	
	-- 九阴真经·下篇
	tInternalSystem_Item[3315429] = {}
	tInternalSystem_Item[3315429]["InnerStrengthType"] = 32
	tInternalSystem_Item[3315429]["Metempsychosis"] = 2
	tInternalSystem_Item[3315429]["Level"] = 15
	tInternalSystem_Item[3315429]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3315429]["RequireType"] = 31
	tInternalSystem_Item[3315429]["RequireLevel"] = 7

	-- 九阳神功·上篇
	tInternalSystem_Item[3315418] = {}
	tInternalSystem_Item[3315418]["InnerStrengthType"] = 33
	tInternalSystem_Item[3315418]["Metempsychosis"] = 2
	tInternalSystem_Item[3315418]["Level"] = 15
	tInternalSystem_Item[3315418]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3315418]["RequireType"] = 6
	tInternalSystem_Item[3315418]["RequireLevel"] = 7

	-- 九阳神功·中篇
	tInternalSystem_Item[3315419] = {}
	tInternalSystem_Item[3315419]["InnerStrengthType"] = 34
	tInternalSystem_Item[3315419]["Metempsychosis"] = 2
	tInternalSystem_Item[3315419]["Level"] = 15
	tInternalSystem_Item[3315419]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3315419]["RequireType"] = 33
	tInternalSystem_Item[3315419]["RequireLevel"] = 7
	
	-- 九阳神功·下篇
	tInternalSystem_Item[3315420] = {}
	tInternalSystem_Item[3315420]["InnerStrengthType"] = 35
	tInternalSystem_Item[3315420]["Metempsychosis"] = 2
	tInternalSystem_Item[3315420]["Level"] = 15
	tInternalSystem_Item[3315420]["InnerStrengthVlue"] = 0
	tInternalSystem_Item[3315420]["RequireType"] = 34
	tInternalSystem_Item[3315420]["RequireLevel"] = 7



-- 内功类型对应物品表
local tInternalSystem_InnerType = {}
	tInternalSystem_InnerType[1] = 3005365
	tInternalSystem_InnerType[2] = 3005366
	tInternalSystem_InnerType[3] = 3005395
	tInternalSystem_InnerType[4] = 3005396
	tInternalSystem_InnerType[5] = 3007113
	tInternalSystem_InnerType[6] = 3007114
	tInternalSystem_InnerType[7] = 3005397
	tInternalSystem_InnerType[8] = 3005398
	tInternalSystem_InnerType[9] = 3007115
	tInternalSystem_InnerType[10] = 3007116
	tInternalSystem_InnerType[11] = 3007117
	tInternalSystem_InnerType[12] = 3005399
	tInternalSystem_InnerType[13] = 3005400
	tInternalSystem_InnerType[14] = 3005401
	tInternalSystem_InnerType[15] = 3007230
	tInternalSystem_InnerType[16] = 3007231
	tInternalSystem_InnerType[17] = 3007232
	tInternalSystem_InnerType[18] = 3316129
	tInternalSystem_InnerType[19] = 3316130
	tInternalSystem_InnerType[20] = 3316131

	tInternalSystem_InnerType[21] = 3315430
	tInternalSystem_InnerType[22] = 3315431
	tInternalSystem_InnerType[23] = 3315432
	
	tInternalSystem_InnerType[24] = 3315424
	tInternalSystem_InnerType[25] = 3315425
	tInternalSystem_InnerType[26] = 3315426
	
	tInternalSystem_InnerType[27] = 3315421
	tInternalSystem_InnerType[28] = 3315422
	tInternalSystem_InnerType[29] = 3315423
	
	tInternalSystem_InnerType[30] = 3315427
	tInternalSystem_InnerType[31] = 3315428
	tInternalSystem_InnerType[32] = 3315429
	
	tInternalSystem_InnerType[33] = 3315418
	tInternalSystem_InnerType[34] = 3315419
	tInternalSystem_InnerType[35] = 3315420

local tInternalSystem_Log = {}
	tInternalSystem_Log["OperType"] = "340"
	tInternalSystem_Log["Text"] = "0,0,%d,1,10002380,2,18,%d"

-- 服务端调用的接口函数
function InternalSystem_InnerType(nInnerType,nUserId)
	if type(nInnerType) ~= "number" then
		return
	end

	local nItemId = tInternalSystem_InnerType[nInnerType]
	InternalSystem_Item(nItemId,nUserId)
end
	
-- 使用秘籍
function InternalSystem_UseItem()
	local nItemId = Get_ItemType()
	local nUserId = Get_UserId()
	InternalSystem_Item(nItemId,nUserId)
end

function InternalSystem_Item(nItemId,nUserId)
	if nItemId == nil then
		User_TalkChannel2005(tInternalSystem_Msg["NoItems"],nUserId)
		return
	end

	-- 判断物品是否存在
	if not Item_ChkItem(nItemId,1,0,nUserId) then
		User_TalkChannel2005(tInternalSystem_Msg["NoItems"],nUserId)
		return
	end

	local nInnerStrengthType = tInternalSystem_Item[nItemId]["InnerStrengthType"]
	-- 判断是否学过该内功
	if User_IsLearnInnerStrengthType(nInnerStrengthType,nUserId) then
		User_TalkChannel2005(tInternalSystem_Msg["Learn"],nUserId)
		return
	end

	local nMetempsychosis = Get_UserMetempsychosis(nUserId)
	local nLevel = Get_UserLevel(nUserId)
	-- 判断转世等级是否满足
	if nMetempsychosis < tInternalSystem_Item[nItemId]["Metempsychosis"] then
		User_TalkChannel2005(tInternalSystem_Msg["Condition"],nUserId)
		return
	end

	if nMetempsychosis == tInternalSystem_Item[nItemId]["Metempsychosis"] and 
		nLevel < tInternalSystem_Item[nItemId]["Level"] then
		
		User_TalkChannel2005(tInternalSystem_Msg["Condition"],nUserId)
		return
	end

	-- 判断前置内功是否满足
	if tInternalSystem_Item[nItemId]["RequireType"] > 0 then
		local nRequirements = tInternalSystem_Item[nItemId]["RequireType"]

		if not User_IsLearnInnerStrengthType(nRequirements,nUserId) then
			User_TalkChannel2005(tInternalSystem_Msg["NotLearn"],nUserId)
			return
		end

		local nRequireLevel = Get_InnerStrengthLevByType(nRequirements,nUserId)

		if nRequireLevel < tInternalSystem_Item[nItemId]["RequireLevel"] then
			User_TalkChannel2005(tInternalSystem_Msg["NotLearn"],nUserId)
			return
		end
	end

	local nTotalValue = Get_InnerStrengthTotalValue(nUserId)
	
	-- 判断内力要求是否满足
	if nTotalValue < tInternalSystem_Item[nItemId]["InnerStrengthVlue"] then
		User_TalkChannel2005(tInternalSystem_Msg["NotVlue"],nUserId)
		return
	end

	if Item_ChkItem(nItemId,1,0,nUserId) and Item_DelItem(nItemId,1,0,nUserId) then
		-- 学习内功
		User_LearningInnerStrength(nInnerStrengthType,nUserId)
		
		local sText = string.format(tInternalSystem_Log["Text"],nItemId,nInnerStrengthType)
		Sys_SaveActionFuncLog(sText,nUserId)
		
		local sInnerName = tInternalSystem_InnerName[nInnerStrengthType]
		local str = string.format(tInternalSystem_Msg["Study"],sInnerName)
		User_TalkChannel2005(str,nUserId)
	end
end