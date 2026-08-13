------------------------------------------------------------------------------------
--Name：           190417[简体征服][任务脚本]勇士百兵谱支线任务--斧
--Creator:      杨艳
--Created:     2019/04/17
--------------------------------------------------------------------------------------

--	命名规范
--	BaibingSpectrumAxe_
--	logid： 18000206

----------------------------------表配置部分--------------------------------------------
local tBaibingSpectrumAxe_Data = {}

	--副本
	tBaibingSpectrumAxe_Data["ActMapId"] = 10483
	tBaibingSpectrumAxe_Data["InstanceType"] = 258
	tBaibingSpectrumAxe_Data["MapDoc"] = 10269
	
	tBaibingSpectrumAxe_Data["TaskId"] = 7008
	tBaibingSpectrumAxe_Data["BeforeTaskId"] = 1085
	tBaibingSpectrumAxe_Data["BeforeTaskId1"] = 1093
	

	--刷怪初始点
	tBaibingSpectrumAxe_Data["MonsterBorn"] = {}
	tBaibingSpectrumAxe_Data["MonsterBorn"]["MonsterId"] = 5369
	tBaibingSpectrumAxe_Data["MonsterBorn"]["GenId"] = 27126
	tBaibingSpectrumAxe_Data["MonsterBorn"]["PosX"] = 45
	tBaibingSpectrumAxe_Data["MonsterBorn"]["PosY"] = 50
	
	-- 所需金币
	tBaibingSpectrumAxe_Data["NeedMoney"] = -50000
	
	tBaibingSpectrumAxe_Data["TimeLimit"] = 300   --倒计时5分钟

	--传送地图
	tBaibingSpectrumAxe_Data["Trans"] = {}
	--激情服
	tBaibingSpectrumAxe_Data["Trans"][1] = {}
	tBaibingSpectrumAxe_Data["Trans"][1]["MapId"] = 10367
	tBaibingSpectrumAxe_Data["Trans"][1]["PosX"] = 468
	tBaibingSpectrumAxe_Data["Trans"][1]["PosY"] = 672
	--普通服
	tBaibingSpectrumAxe_Data["Trans"][2] = {}
	tBaibingSpectrumAxe_Data["Trans"][2]["MapId"] = 1000
	tBaibingSpectrumAxe_Data["Trans"][2]["PosX"] = 468
	tBaibingSpectrumAxe_Data["Trans"][2]["PosY"] = 672
	
	--激情服
	tBaibingSpectrumAxe_Data["Trans"][3] = {}
	tBaibingSpectrumAxe_Data["Trans"][3]["MapId"] = 10656
	tBaibingSpectrumAxe_Data["Trans"][3]["PosX"] = 82
	tBaibingSpectrumAxe_Data["Trans"][3]["PosY"] = 64
	--普通服
	tBaibingSpectrumAxe_Data["Trans"][4] = {}
	tBaibingSpectrumAxe_Data["Trans"][4]["MapId"] = 10656
	tBaibingSpectrumAxe_Data["Trans"][4]["PosX"] = 82
	tBaibingSpectrumAxe_Data["Trans"][4]["PosY"] = 64
	
	
local tBaibingSpectrumAxe_Stc ={}
	
	--领取奖励  掩码记录奖励
	tBaibingSpectrumAxe_Stc[1] = {}
	tBaibingSpectrumAxe_Stc[1]["EventType"] = 193
	tBaibingSpectrumAxe_Stc[1]["DataType"] = 93
	
	tBaibingSpectrumAxe_Stc[2] = {}
	tBaibingSpectrumAxe_Stc[2]["EventType"] = 197
	tBaibingSpectrumAxe_Stc[2]["DataType"] = 20
	
	
local tBaibingSpectrumAxe_Monster = {}
	tBaibingSpectrumAxe_Monster[5369] = {}
	tBaibingSpectrumAxe_Monster[5369]["NextMonsterId"] = 5370
	tBaibingSpectrumAxe_Monster[5369]["Num"] = 4
	tBaibingSpectrumAxe_Monster[5369]["GenId"] = 27127
	
	tBaibingSpectrumAxe_Monster[5370] = {}
	tBaibingSpectrumAxe_Monster[5370]["NextMonsterId"] = 5393
	tBaibingSpectrumAxe_Monster[5370]["Num"] = 4
	tBaibingSpectrumAxe_Monster[5370]["GenId"] = 27128
	
	tBaibingSpectrumAxe_Monster[5393] = {}
	tBaibingSpectrumAxe_Monster[5393]["NextMonsterId"] = 5394
	tBaibingSpectrumAxe_Monster[5393]["Num"] = 4
	tBaibingSpectrumAxe_Monster[5393]["GenId"] = 27129
	
	tBaibingSpectrumAxe_Monster[5394] = {}
	tBaibingSpectrumAxe_Monster[5394]["NextMonsterId"] = 5395
	tBaibingSpectrumAxe_Monster[5394]["Num"] = 4
	tBaibingSpectrumAxe_Monster[5394]["GenId"] = 27130
	
	-- boss数据
	tBaibingSpectrumAxe_Monster[5396] = {}
	tBaibingSpectrumAxe_Monster[5396]["Id"] = 5396
	tBaibingSpectrumAxe_Monster[5396]["GenId"] = 27131

	
--坐标
	local tBaibingSpectrumAxe_Pos = {}
	tBaibingSpectrumAxe_Pos["MonsterPos"] = {}
	tBaibingSpectrumAxe_Pos["MonsterPos"][1] = {36,43}
	tBaibingSpectrumAxe_Pos["MonsterPos"][2] = {40,56}
	tBaibingSpectrumAxe_Pos["MonsterPos"][3] = {50,55}
	tBaibingSpectrumAxe_Pos["MonsterPos"][4] = {48,45}
	tBaibingSpectrumAxe_Pos["MonsterPos"][5] = {43,50}
	tBaibingSpectrumAxe_Pos["MonsterPos"][6] = {42,57}
	tBaibingSpectrumAxe_Pos["MonsterPos"][7] = {45,63}
	tBaibingSpectrumAxe_Pos["MonsterPos"][8] = {68,62}
	tBaibingSpectrumAxe_Pos["MonsterPos"][9] = {69,54}
	tBaibingSpectrumAxe_Pos["MonsterPos"][10] = {74,50}
	tBaibingSpectrumAxe_Pos["MonsterPos"][11] = {52,57}
	tBaibingSpectrumAxe_Pos["MonsterPos"][12] = {52,62}
	tBaibingSpectrumAxe_Pos["MonsterPos"][13] = {52,65}
	tBaibingSpectrumAxe_Pos["MonsterPos"][14] = {45,60}
	tBaibingSpectrumAxe_Pos["MonsterPos"][15] = {38,57}
	tBaibingSpectrumAxe_Pos["MonsterPos"][16] = {34,47}
	tBaibingSpectrumAxe_Pos["MonsterPos"][17] = {47,57}
	tBaibingSpectrumAxe_Pos["MonsterPos"][18] = {51,66}
	tBaibingSpectrumAxe_Pos["MonsterPos"][19] = {44,62}
	tBaibingSpectrumAxe_Pos["MonsterPos"][20] = {37,54}
	tBaibingSpectrumAxe_Pos["MonsterPos"][21] = {40,53}
	tBaibingSpectrumAxe_Pos["MonsterPos"][22] = {49,53}
	tBaibingSpectrumAxe_Pos["MonsterPos"][23] = {44,53}
	tBaibingSpectrumAxe_Pos["MonsterPos"][24] = {75,55}
	tBaibingSpectrumAxe_Pos["MonsterPos"][25] = {64,51}
	tBaibingSpectrumAxe_Pos["MonsterPos"][26] = {49,65}
	tBaibingSpectrumAxe_Pos["MonsterPos"][27] = {50,52}
	tBaibingSpectrumAxe_Pos["MonsterPos"][28] = {35,57}
	tBaibingSpectrumAxe_Pos["MonsterPos"][29] = {39,59}
	tBaibingSpectrumAxe_Pos["MonsterPos"][30] = {25,57}
	tBaibingSpectrumAxe_Pos["MonsterPos"][31] = {52,69}
	tBaibingSpectrumAxe_Pos["MonsterPos"][32] = {64,62}
	tBaibingSpectrumAxe_Pos["MonsterPos"][33] = {45,45}
	tBaibingSpectrumAxe_Pos["MonsterPos"][34] = {45,56}
	tBaibingSpectrumAxe_Pos["MonsterPos"][35] = {62,50}
	tBaibingSpectrumAxe_Pos["MonsterPos"][36] = {60,60}
	tBaibingSpectrumAxe_Pos["MonsterPos"][37] = {42,53}
	tBaibingSpectrumAxe_Pos["MonsterPos"][38] = {42,46}
	tBaibingSpectrumAxe_Pos["MonsterPos"][39] = {34,44}
	tBaibingSpectrumAxe_Pos["MonsterPos"][40] = {29,48}
	tBaibingSpectrumAxe_Pos["MonsterPos"][41] = {22,36}
	tBaibingSpectrumAxe_Pos["MonsterPos"][42] = {27,55}
	tBaibingSpectrumAxe_Pos["MonsterPos"][43] = {31,73}
	tBaibingSpectrumAxe_Pos["MonsterPos"][44] = {49,76}
	tBaibingSpectrumAxe_Pos["MonsterPos"][45] = {55,86}
	tBaibingSpectrumAxe_Pos["MonsterPos"][46] = {55,74}
	tBaibingSpectrumAxe_Pos["MonsterPos"][47] = {50,58}
	tBaibingSpectrumAxe_Pos["MonsterPos"][48] = {51,55}
	tBaibingSpectrumAxe_Pos["MonsterPos"][49] = {67,54}
	tBaibingSpectrumAxe_Pos["MonsterPos"][50] = {72,56}
	tBaibingSpectrumAxe_Pos["MonsterPos"][51] = {82,56}
	tBaibingSpectrumAxe_Pos["MonsterPos"][52] = {57,48}
	tBaibingSpectrumAxe_Pos["MonsterPos"][53] = {51,49}
	tBaibingSpectrumAxe_Pos["MonsterPos"][54] = {60,49}	
	

-- 光效
local tBaibingSpectrumAxe_Effect = {}
	tBaibingSpectrumAxe_Effect[1] = {}
	tBaibingSpectrumAxe_Effect[1]["SzObj"] = "self"
	tBaibingSpectrumAxe_Effect[1]["Effect"] = "fire1"	
	
	tBaibingSpectrumAxe_Effect[2] = {}
	tBaibingSpectrumAxe_Effect[2]["SzObj"] = "self"
	tBaibingSpectrumAxe_Effect[2]["Effect"] = "accession"	
	
--临时表记录玩家进入副本
local tBaibingSpectrumAxe_Into = {} 

-- 所有的怪物id
local tBaibingSpectrumAxe_MonsterId = {5369,5370,5393,5394,5395,5396}


----------------------------------逻辑部分---------------------------------------------
--进入副本前判断
function BaibingSpectrumAxe_EnterInstanceBefor(nInstanceId,nNpcId)
	local nUserId = Get_UserId()
	local nTaskId = tBaibingSpectrumAxe_Data["BeforeTaskId"]
	if  SpecialServer_ChkNoGiftServer() then
		nTaskId = tBaibingSpectrumAxe_Data["BeforeTaskId1"]
	end
	if Task_ChkTaskDetail(nTaskId,nUserId) then
		--判断是否完成任务
		if not Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then 
			return
		end 
	end 
	
	if Task_ChkTaskDetail(tBaibingSpectrumAxe_Data["TaskId"],nUserId) then
		--判断是否完成任务
		if Task_ChkTaskDetailValue(tBaibingSpectrumAxe_Data["TaskId"],"CompleteFlag",">=",1) then 
			return
		end 
	else
		Task_AddTaskDetail(tBaibingSpectrumAxe_Data["TaskId"],0,nUserId)
	end
	--组队无法进入副本
	if Get_UserTeamNumbers() > 0 then  
		Sys_MsgBox(tBaibingSpectrumAxe_Text["MsgBox"]["TeamTip"])
		return
	end
	
	--判断是否领奖
	local nEventType = tBaibingSpectrumAxe_Stc[1]["EventType"]
	local nDataType = tBaibingSpectrumAxe_Stc[1]["DataType"]
	
	local nData = Get_UserStatisticValue(nEventType,nDataType,nUserId)
	if nData > 0 then 
		Sys_MsgBox(tBaibingSpectrumAxe_Text["MsgBox"]["HaveReward"])
		return
	end 
	
	local nMapId = Get_UserMapId(nUserId)
	--检查地图属性
	if Get_MapDoc(nMapId) == tBaibingSpectrumAxe_Data["MapDoc"] then
		return
	end
	if not User_CanPutMoney2Bag(tBaibingSpectrumAxe_Data["NeedMoney"]) then
		--银两不足
		Sys_MsgBox(tBaibingSpectrumAxe_Text["MsgBox"]["NoMoney"])
		return	
	end	
	LinkNpcGossipFunc_New(nNpcId, "2-1")
end


--进入副本
function BaibingSpectrumAxe_EnterInstance(nInstanceId)
	local nUserId = Get_UserId()
	
	local nTaskId = tBaibingSpectrumAxe_Data["BeforeTaskId"]
	if  SpecialServer_ChkNoGiftServer() then
		nTaskId = tBaibingSpectrumAxe_Data["BeforeTaskId1"]
	end
	if Task_ChkTaskDetail(nTaskId,nUserId) then
		--判断是否完成任务
		if not Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then 
			return
		end 
	end 
	
	if Task_ChkTaskDetail(tBaibingSpectrumAxe_Data["TaskId"],nUserId) then
		--判断是否完成任务
		if Task_ChkTaskDetailValue(tBaibingSpectrumAxe_Data["TaskId"],"CompleteFlag",">=",1) then 
			return
		end 
	else
		Task_AddTaskDetail(tBaibingSpectrumAxe_Data["TaskId"],0,nUserId)
	end
	--组队无法进入副本
	if Get_UserTeamNumbers() > 0 then  
		Sys_MsgBox(tBaibingSpectrumAxe_Text["MsgBox"]["TeamTip"])
		return
	end
	
	--判断是否领奖
	local nEventType = tBaibingSpectrumAxe_Stc[1]["EventType"]
	local nDataType = tBaibingSpectrumAxe_Stc[1]["DataType"]
	
	local nData = Get_UserStatisticValue(nEventType,nDataType,nUserId)
	if nData > 0 then 
		Sys_MsgBox(tBaibingSpectrumAxe_Text["MsgBox"]["HaveReward"])
		return
	end 
	
	local nMapId = Get_UserMapId(nUserId)
	--检查地图属性
	if Get_MapDoc(nMapId) == tBaibingSpectrumAxe_Data["MapDoc"] then
		return
	end
	if not User_CanPutMoney2Bag(tBaibingSpectrumAxe_Data["NeedMoney"]) then
		--银两不足
		Sys_MsgBox(tBaibingSpectrumAxe_Text["MsgBox"]["NoMoney"])
		return
	end	

	-- 移动到副本
	if User_AddMoney(tBaibingSpectrumAxe_Data["NeedMoney"],nUserId) then 
		
		if User_EnterInstance(tBaibingSpectrumAxe_Data["InstanceType"]) then
			local nEnterMapId = Get_UserMapId(nUserId)
			local nBaibingSpectrumAxe_IntoNum = 0
			if tBaibingSpectrumAxe_Into[nUserId] ~= nil then 
				
				tBaibingSpectrumAxe_Into[nUserId] = 1 + tBaibingSpectrumAxe_Into[nUserId]
				nBaibingSpectrumAxe_IntoNum = tBaibingSpectrumAxe_Into[nUserId]
	
			else

				tBaibingSpectrumAxe_Into[nUserId] = 0
	
			end 
		
			--删除所有的怪
			BaibingSpectrumAxe_DelMonsterAll(nUserId)
	
			--生成第一只怪
			local nMonsterId = tBaibingSpectrumAxe_Data["MonsterBorn"]["MonsterId"]
			local nGenId = tBaibingSpectrumAxe_Data["MonsterBorn"]["GenId"]
			local nPosX = tBaibingSpectrumAxe_Data["MonsterBorn"]["PosX"]
			local nPosY = tBaibingSpectrumAxe_Data["MonsterBorn"]["PosY"]
			Monster_AddAndCount(nEnterMapId,nPosX,nPosY,nGenId,nMonsterId)
			--加计时器
			User_SetTimer(tBaibingSpectrumAxe_Data["TimeLimit"],"BaibingSpectrumAxe_Leave</N>"..nBaibingSpectrumAxe_IntoNum,1,nUserId)
			Sys_MsgBox(tBaibingSpectrumAxe_Text["MsgBox"]["EnterSuccess"],"BaibingSpectrumAxe_FindMonster</N>"..nUserId)

		end
	end
end

--导航寻找怪物
function BaibingSpectrumAxe_FindMonster(nUserId)
	local nUserId = nUserId or Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	
	if Get_MapDoc(nMapId) ~= tBaibingSpectrumAxe_Data["MapDoc"] then
		return
	end
	
	local nPosX = tBaibingSpectrumAxe_Data["MonsterBorn"]["PosX"]
	local nPosY = tBaibingSpectrumAxe_Data["MonsterBorn"]["PosY"] 
	
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId)
	
end 

--删除所有怪物
function BaibingSpectrumAxe_DelMonsterAll(nUserId)
	local nMapId = Get_UserMapId(nUserId)
	
	for i = 1 , #tBaibingSpectrumAxe_MonsterId do
		Monster_DelMonster(nMapId,tBaibingSpectrumAxe_MonsterId[i])
		Sys_SetTempData(1,nMapId,tBaibingSpectrumAxe_MonsterId[i],0)
	end

end 

--倒计时5分钟结束
function BaibingSpectrumAxe_Leave(nBaibingSpectrumAxe_IntoNow,nUserId)
	local nUserId = nUserId or Get_UserId()
	local nUserMapId = Get_UserMapId(nUserId)

	if Get_MapDoc(nUserMapId) == tBaibingSpectrumAxe_Data["MapDoc"] then

		if tBaibingSpectrumAxe_Into[nUserId] ~= nil then 

			if nBaibingSpectrumAxe_IntoNow ~= tBaibingSpectrumAxe_Into[nUserId] then 
				-- User_TalkChannel2005("nShuraBattleGround_IntoNow=="..nShuraBattleGround_IntoNow.."nBaibingSpectrumAxe_Into=="..nBaibingSpectrumAxe_Into[nUserId],nUserId)
				return
			end 
		
		end 

		BaibingSpectrumAxe_DelMonsterAll(nUserId)
		BaibingSpectrumAxe_Out(nUserId)
		-- Sys_MsgBox(tBaibingSpectrumAxe_Text["MsgBox"]["TimeUsed"],"BaibingSpectrumAxe_Out</N>"..nUserId,nil,nUserId)
		Sys_MsgBox(tBaibingSpectrumAxe_Text["MsgBox"]["TimeUsed"],nil,nil,nUserId)
	end

end

--传送出去
function BaibingSpectrumAxe_Out(nUserId)
	local nUserId = nUserId or Get_UserId()

	if  SpecialServer_ChkNoGiftServer() then
		local nMapId = tBaibingSpectrumAxe_Data["Trans"][1]["MapId"]
		local nPosX = tBaibingSpectrumAxe_Data["Trans"][1]["PosX"]
		local nPosY = tBaibingSpectrumAxe_Data["Trans"][1]["PosY"]
		User_UserRandBoundTrans(nMapId,nPosX,nPosY,2,2,1,nUserId)
	else
		local nMapId = tBaibingSpectrumAxe_Data["Trans"][2]["MapId"]
		local nPosX = tBaibingSpectrumAxe_Data["Trans"][2]["PosX"]
		local nPosY = tBaibingSpectrumAxe_Data["Trans"][2]["PosY"]
		User_UserRandBoundTrans(nMapId,nPosX,nPosY,2,2,1,nUserId)
			
	end
end

-- 陷阱传送出去的
function BaibingSpectrumAxe_TrapOut()
	local nUserId = Get_UserId()
	User_SetTimer(1,"NULL",1,nUserId)
	BaibingSpectrumAxe_Out(nUserId)
end

--觉醒后传送到就职大厅
function BaibingSpectrumAxe_Goto(nUserId)
	local nUserId = nUserId or Get_UserId()
	User_SetTimer(1,"NULL",1,nUserId)
	
	if  SpecialServer_ChkNoGiftServer() then
		local nMapId = tBaibingSpectrumAxe_Data["Trans"][3]["MapId"]
		local nPosX = tBaibingSpectrumAxe_Data["Trans"][3]["PosX"]
		local nPosY = tBaibingSpectrumAxe_Data["Trans"][3]["PosY"]
		User_UserRandBoundTrans(nMapId,nPosX,nPosY,2,2,1,nUserId)
	else
		local nMapId = tBaibingSpectrumAxe_Data["Trans"][4]["MapId"]
		local nPosX = tBaibingSpectrumAxe_Data["Trans"][4]["PosX"]
		local nPosY = tBaibingSpectrumAxe_Data["Trans"][4]["PosY"]
		User_UserRandBoundTrans(nMapId,nPosX,nPosY,2,2,1,nUserId)
			
	end
	
	
end


---------------------------------------------------怪物逻辑部分---------------------------------------------
--判断是否还有怪物
function BaibingSpectrumAxe_CheckMonster(nMapId)

	local nFlag = 0
	for i=1,#tBaibingSpectrumAxe_MonsterId - 1 do
		local nMonsterId = tBaibingSpectrumAxe_MonsterId[i]
		-- User_TalkChannel2005("tBaibingSpectrumAxe_MonsterId=="..nMonsterId)
		local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
		-- User_TalkChannel2005("nMonsterNum=="..nMonsterNum)
		if nMonsterNum > 0 then 
			nFlag = nFlag + 1
		end 
	end 

	return nFlag
	
end 

function BaibingSpectrumAxe_KillMonster(nMonsterId)
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)

	if Get_MapDoc(nMapId) ~= tBaibingSpectrumAxe_Data["MapDoc"] then
		return
	end

	Monster_Death(nMonsterId,nMapId)

	--分裂到256那波的怪物id不再继续分裂
	if nMonsterId ~= tBaibingSpectrumAxe_Monster[5393]["NextMonsterId"] then 
	-- if nMonsterId ~= 5393 then   --测试数据
		for i=1,tBaibingSpectrumAxe_Monster[nMonsterId]["Num"] do
			local nNextMonsterId = tBaibingSpectrumAxe_Monster[nMonsterId]["NextMonsterId"]
	
			-- 随机一个区域
			local tNewRandom = tBaibingSpectrumAxe_Pos["MonsterPos"]
			local nRandomIndex = math.random(1,#tNewRandom)
			local tRandom = tBaibingSpectrumAxe_Pos["MonsterPos"][nRandomIndex]
			local nPosX = tRandom[1]
			local nPosY = tRandom[2]
			local nGenId = tBaibingSpectrumAxe_Monster[nMonsterId]["GenId"]
			Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nNextMonsterId)	
			-- 第一次分裂出105提示
			if nNextMonsterId == tBaibingSpectrumAxe_Monster[5369]["NextMonsterId"] then
				Sys_MsgBox(tBaibingSpectrumAxe_Text["MsgBox"]["BreakUp"])
			end 
			User_TalkChannel2005(tBaibingSpectrumAxe_Text["MsgBox"]["BreakUp"])
			
		end 
	end 
	--是否刷大boss
	--获取怪物数量

	local nMonsterNum =  BaibingSpectrumAxe_CheckMonster(nMapId)
	-- User_TalkChannel2005("nMonsterNum111=="..nMonsterNum)
	if nMonsterNum == 0 then

		local nBossPosX = Get_UserPositionX(nUserId)
		local nBossPosY = Get_UserPositionY(nUserId)
		local nBossGenId = tBaibingSpectrumAxe_Monster[5396]["GenId"]
		local nBossId = tBaibingSpectrumAxe_Monster[5396]["Id"]
		Monster_AddAndCount(nMapId,nBossPosX,nBossPosY,nBossGenId,nBossId)	
		Sys_MsgBox(tBaibingSpectrumAxe_Text["MsgBox"]["BossBorn"])
		--播光效
		local sSzObj = tBaibingSpectrumAxe_Effect[1]["SzObj"]
		local sEffect = tBaibingSpectrumAxe_Effect[1]["Effect"]
		User_EffectAdd(sSzObj,sEffect,nUserId)
		--屏幕抖动
		User_Screffect(1,nUserId)
		-- local sUserName = Get_UserName()
		-- Map_SendBroadcastMsg(tCrossFestivalTask_MonsterNian_Info["MapId"],string.format(tCrossFestivalTask_MonsterNian_Text["KillMaster"],sUserName))
		-- Sys_SaveActionFestivalLog(string.format(tCrossFestivalTask_MonsterNian_Log["FactionKillLog"],1))
		
	end

end 

function BaibingSpectrumAxe_KillBossMonster(nMonsterId)
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	 
	if Get_MapDoc(nMapId) ~= tBaibingSpectrumAxe_Data["MapDoc"] then
		return
	end
	Monster_Death(nMonsterId,nMapId)
	
	local nTaskId = tBaibingSpectrumAxe_Data["BeforeTaskId"]
	if  SpecialServer_ChkNoGiftServer() then
		nTaskId = tBaibingSpectrumAxe_Data["BeforeTaskId1"]
	end
	if Task_ChkTaskDetail(nTaskId,nUserId) then
		--判断是否完成任务
		if not Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then 
			return
		end 
	end 
	
	if not Task_ChkTaskDetail(tBaibingSpectrumAxe_Data["TaskId"],nUserId) then
		if not Task_AddTaskDetail(tBaibingSpectrumAxe_Data["TaskId"],0,nUserId) then 
			return
		end 
	end
	
	if Task_ChkTaskDetailValue(tBaibingSpectrumAxe_Data["TaskId"],"CompleteFlag",">=",1) then 
		return
	else
		Task_SetTaskDetailCompleteFlag(tBaibingSpectrumAxe_Data["TaskId"], 1)
	end 

	local nEventType_2 = tBaibingSpectrumAxe_Stc[2]["EventType"]
	local nDataType_2 = tBaibingSpectrumAxe_Stc[2]["DataType"]
	
	Task_AddStatistic(nEventType_2,nDataType_2,1,1,nUserId)
	Task_SetStcTimestamp(nEventType_2,nDataType_2,0,nUserId)
	
	local nEventType = tBaibingSpectrumAxe_Stc[1]["EventType"]
	local nDataType = tBaibingSpectrumAxe_Stc[1]["DataType"]
	
	Task_SetStatistic(nEventType,nDataType,1,1,nUserId)
	Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
	
	--解锁兵魂
	User_AwardHundredWeapon(450, nUserId)
	
	-- Sys_SaveEmoneyBuy(string.format(tShuraBattleGround_Log["EmoneyMoMoLog"],tShuraBattleGround_Award[nTikets]*nUserBestPoint))
	Sys_MsgBox(tBaibingSpectrumAxe_Text["MsgBox"]["KillBossBorn"],"BaibingSpectrumAxe_Goto</N>"..nUserId)
	-- Sys_MsgBox(tBaibingSpectrumAxe_Text["MsgBox"]["KillBossBorn"],nUserId)
	--播光效
	local sSzObj = tBaibingSpectrumAxe_Effect[2]["SzObj"]
	local sEffect = tBaibingSpectrumAxe_Effect[2]["Effect"]
	User_EffectAdd(sSzObj,sEffect,nUserId)
end
function BaibingSpectrumAxe_LinkDialog(nNpcId)
	local nTaskId = tBaibingSpectrumAxe_Data["BeforeTaskId"]
	if  SpecialServer_ChkNoGiftServer() then
		nTaskId = tBaibingSpectrumAxe_Data["BeforeTaskId1"]
	end
	
	if not Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) and not Task_ChkTaskDetail(tBaibingSpectrumAxe_Data["TaskId"],nUserId) then 
		LinkNpcGossipFunc_New(nNpcId, "1-3")
		return
	end 
	if not Task_ChkTaskDetail(tBaibingSpectrumAxe_Data["TaskId"],nUserId) then
		if not Task_AddTaskDetail(tBaibingSpectrumAxe_Data["TaskId"],0,nUserId) then 
			LinkNpcGossipFunc_New(nNpcId, "1-3")
			return
		end 
	end 
	LinkNpcGossipFunc_New(nNpcId, "1-2")
end 



------------------------------------------------陷阱逻辑部分------------------------------
--陷阱触发离开
function BaibingSpectrumAxe_TrapLeave(nTrapType) 
	
	Sys_MsgBox(tBaibingSpectrumAxe_Text["MsgBox"]["LeaveOut"],"BaibingSpectrumAxe_TrapOut")
end



----------------------------------NPC部分---------------------------------------------
-- 24122,'程咬金',0002,
tNpcFace[5973] = 86
tNpcGossip[24122]= tNpcGossip[24122] or DefaultNpc:new{}
tNpcGossip[24122]["OptionHidden"] = 1

tNpcGossip[24122]["Text1-1"] = {111,112}
tNpcGossip[24122]["Text111"] = tBaibingSpectrumAxe_Text[24122]["Text111"]
tNpcGossip[24122]["Text112"] = tBaibingSpectrumAxe_Text[24122]["Text112"]

tNpcGossip[24122]["ChkFunc1-1"]= function()
	local nTaskId = tBaibingSpectrumAxe_Data["BeforeTaskId"]
	if  SpecialServer_ChkNoGiftServer() then
		nTaskId = tBaibingSpectrumAxe_Data["BeforeTaskId1"]
	end
	
	local nUserId = Get_UserId()
	-- 完成任务
	if not Task_ChkTaskDetail(nTaskId,nUserId)  then 
		return true
	end 
	if Task_ChkTaskDetail(tBaibingSpectrumAxe_Data["TaskId"],nUserId) then
		if  Task_ChkTaskDetailValue(tBaibingSpectrumAxe_Data["TaskId"],"CompleteFlag",">=",1) then
			return true 
		end 
	end 
end

tNpcGossip[24122]["tOption1-1"] = {111}
tNpcGossip[24122]["Option111"] = tBaibingSpectrumAxe_Text[24122]["Option111"]

tNpcGossip[24122]["Text1-2"] = {121,122}
tNpcGossip[24122]["Text121"] = tBaibingSpectrumAxe_Text[24122]["Text121"]
tNpcGossip[24122]["Text122"] = tBaibingSpectrumAxe_Text[24122]["Text122"]

tNpcGossip[24122]["ChkFunc1-2"]= function()
	local nUserId = Get_UserId()
	if  Task_ChkTaskDetail(tBaibingSpectrumAxe_Data["TaskId"],nUserId) then
		return true
	end 

end

tNpcGossip[24122]["tOption1-2"] = {121}
tNpcGossip[24122]["Option121"] = tBaibingSpectrumAxe_Text[24122]["Option121"]
tNpcGossip[24122]["OptionFunc121"] = "BaibingSpectrumAxe_EnterInstanceBefor</N>258</N>24122"


-- 【领取任务时首对白】：
tNpcGossip[24122]["Text1-3"] = {131,132,133}
tNpcGossip[24122]["Text131"] = tBaibingSpectrumAxe_Text[24122]["Text131"]
tNpcGossip[24122]["Text132"] = tBaibingSpectrumAxe_Text[24122]["Text132"]
tNpcGossip[24122]["Text133"] = tBaibingSpectrumAxe_Text[24122]["Text133"]

tNpcGossip[24122]["ChkFunc1-3"]= function()
	local nUserId = Get_UserId()
	local nTaskId = tBaibingSpectrumAxe_Data["BeforeTaskId"]
	if  SpecialServer_ChkNoGiftServer() then
		nTaskId = tBaibingSpectrumAxe_Data["BeforeTaskId1"]
	end
	
	if Task_ChkTaskDetail(nTaskId,nUserId) and not Task_ChkTaskDetail(tBaibingSpectrumAxe_Data["TaskId"],nUserId) then
		Task_SetTaskDetailCompleteFlag(nTaskId, 1)
		Task_AddTaskDetail(tBaibingSpectrumAxe_Data["TaskId"],0,nUserId)
		return true
	end 
	

end

tNpcGossip[24122]["tOption1-3"] = {131}
tNpcGossip[24122]["Option131"] = tBaibingSpectrumAxe_Text[24122]["Option131"]
tNpcGossip[24122]["OptionFunc131"] = "BaibingSpectrumAxe_LinkDialog</N>24122"

--银两充足
tNpcGossip[24122]["Text2-1"] = {211,212}
tNpcGossip[24122]["Text211"] = tBaibingSpectrumAxe_Text[24122]["Text211"]
tNpcGossip[24122]["Text212"] = tBaibingSpectrumAxe_Text[24122]["Text212"]

tNpcGossip[24122]["tOption2-1"] = {211}
tNpcGossip[24122]["Option211"] = tBaibingSpectrumAxe_Text[24122]["Option211"]
tNpcGossip[24122]["OptionFunc211"] = "BaibingSpectrumAxe_EnterInstance</N>258"


---------------------------------怪物部分---------------------------------------------
local tBaibingSpectrumAxe_KillMonster = {}
	
	tBaibingSpectrumAxe_KillMonster[1] = {}
	tBaibingSpectrumAxe_KillMonster[1]["Function"] = BaibingSpectrumAxe_KillMonster
	tBaibingSpectrumAxe_KillMonster[1]["MonsterId"] = {5369}
	table.insert(tMonsterDrop_AreaLoad,tBaibingSpectrumAxe_KillMonster[1])

	tBaibingSpectrumAxe_KillMonster[2] = {}
	tBaibingSpectrumAxe_KillMonster[2]["Function"] = BaibingSpectrumAxe_KillMonster
	tBaibingSpectrumAxe_KillMonster[2]["MonsterId"] = {5370}
	table.insert(tMonsterDrop_AreaLoad,tBaibingSpectrumAxe_KillMonster[2])

	tBaibingSpectrumAxe_KillMonster[3] = {}
	tBaibingSpectrumAxe_KillMonster[3]["Function"] = BaibingSpectrumAxe_KillMonster
	tBaibingSpectrumAxe_KillMonster[3]["MonsterId"] = {5393}
	table.insert(tMonsterDrop_AreaLoad,tBaibingSpectrumAxe_KillMonster[3])
	
	tBaibingSpectrumAxe_KillMonster[4] = {}
	tBaibingSpectrumAxe_KillMonster[4]["Function"] = BaibingSpectrumAxe_KillMonster
	tBaibingSpectrumAxe_KillMonster[4]["MonsterId"] = {5394}
	table.insert(tMonsterDrop_AreaLoad,tBaibingSpectrumAxe_KillMonster[4])
	
	-- tBaibingSpectrumAxe_KillMonster[5] = {}
	-- tBaibingSpectrumAxe_KillMonster[5]["Function"] = BaibingSpectrumAxe_KillMonster
	-- tBaibingSpectrumAxe_KillMonster[5]["MonsterId"] = {5395}
	-- table.insert(tMonsterDrop_AreaLoad,tBaibingSpectrumAxe_KillMonster[5])
	
	tBaibingSpectrumAxe_KillMonster[6] = {}
	tBaibingSpectrumAxe_KillMonster[6]["Function"] = BaibingSpectrumAxe_KillBossMonster
	tBaibingSpectrumAxe_KillMonster[6]["MonsterId"] = {5396}
	table.insert(tMonsterDrop_AreaLoad,tBaibingSpectrumAxe_KillMonster[6])
	
	
---------------------------------陷阱部分---------------------------------------------

tTrap[2330] = tTrap[2330] or {}
tTrap[2330]["Function"] = function(nTrapId,nTrapType)
	BaibingSpectrumAxe_TrapLeave(nTrapType)
end







