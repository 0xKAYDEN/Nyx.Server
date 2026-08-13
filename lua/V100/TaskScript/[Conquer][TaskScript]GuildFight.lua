
------------------------------------------------------------------------------------
--Name:		180516[简体征服][活动脚本]帮战相关修改
--Purpose:	帮战相关修改
--Creator: 	陈琳
--Created:	2018/05/16
------------------------------------------------------------------------------------

-- 前缀	GuildFight_

-- logid	18000178

-- cq_dyna_global_data
-- 30002
-- data0 修复的帮派
-- data1 修复的时间
-- data2 修复的帮派基金总额
-- data3 发奖金额
-- data4 本次修复金额
-- 30003
-- data0 修复的帮派
-- data1 修复的时间

-- stc掩码
-- stc(177,31) 记录玩家参与帮战

-- cq_npc
-- 21501 21502 左右传送npc
-- 21519 21520 左右城门npc
--------------------------------------数据部分-------------------------------------------
local tGuildFight_Data = {}

	-- 动态码
	tGuildFight_Data["GlobalId"] = {}
	tGuildFight_Data["GlobalId"]["Guild"] = 30002
	tGuildFight_Data["Pos"] = {}
	tGuildFight_Data["Pos"]["Money"] = 2
	tGuildFight_Data["Pos"]["EveryMoney"] = 3
	tGuildFight_Data["Pos"]["ThisTiemMoney"] = 4
	
	-- 进入帮派地图的时间
	tGuildFight_Data["RecordTime"] = "0 19:00 0 20:59"
	
	-- stc(177,31) 记录玩家参与帮战
	tGuildFight_Data["Stc"] = {}
	tGuildFight_Data["Stc"]["GetIn"] = {}
	tGuildFight_Data["Stc"]["GetIn"]["EventTpe"] = 177
	tGuildFight_Data["Stc"]["GetIn"]["DataType"] = 31
	
	-- 给奖表
	tGuildFight_Data["Reward"] = {}
	
	-- 邮件发奖
	tGuildFight_Data["ExistDay"] = 3
	
	-- 修复时间间隔
	tGuildFight_Data["RepairTime"] = 60
	
	-- 位置
	tGuildFight_Data["Range"] = 5
	
	-- 帮派地图
	tGuildFight_Data["GuildMapId"] = 1038
	
	-- 传送坐标
	tGuildFight_Data["Position"] = {}
	tGuildFight_Data["Position"][1] = {}
	tGuildFight_Data["Position"][1]["CellX"] = 183
	tGuildFight_Data["Position"][1]["CellY"] = 111
	tGuildFight_Data["Position"][2] = {}
	tGuildFight_Data["Position"][2]["CellX"] = 129
	tGuildFight_Data["Position"][2]["CellY"] = 78
	tGuildFight_Data["Position"][3] = {}
	tGuildFight_Data["Position"][3]["CellX"] = 88
	tGuildFight_Data["Position"][3]["CellY"] = 44
	tGuildFight_Data["Position"][4] = {}
	tGuildFight_Data["Position"][4]["CellX"] = 50
	tGuildFight_Data["Position"][4]["CellY"] = 109
	tGuildFight_Data["Position"][5] = {}
	tGuildFight_Data["Position"][5]["CellX"] = 100
	tGuildFight_Data["Position"][5]["CellY"] = 173
	tGuildFight_Data["Position"][6] = {}
	tGuildFight_Data["Position"][6]["CellX"] = 94
	tGuildFight_Data["Position"][6]["CellY"] = 145
	tGuildFight_Data["Position"][7] = {}
	tGuildFight_Data["Position"][7]["CellX"] = 86
	tGuildFight_Data["Position"][7]["CellY"] = 117
	tGuildFight_Data["Position"][8] = {}
	tGuildFight_Data["Position"][8]["CellX"] = 101
	tGuildFight_Data["Position"][8]["CellY"] = 82
	tGuildFight_Data["Position"][9] = {}
	tGuildFight_Data["Position"][9]["CellX"] = 136
	tGuildFight_Data["Position"][9]["CellY"] = 86
	tGuildFight_Data["Position"][10] = {}
	tGuildFight_Data["Position"][10]["CellX"] = 180
	tGuildFight_Data["Position"][10]["CellY"] = 120
	
	-- 传送log
	tGuildFight_Data["Log"] = {}
	tGuildFight_Data["Log"]["Bound"] = "0,0,0,0,18000178,1[%d][%d][%d],0,0"
	--帮主一般群众掩码记录
	-- tGuildFight_Data["Stc"] = {}
	tGuildFight_Data["Stc"]["Event"] = 178
	tGuildFight_Data["Stc"]["Data"] = 97
	
	--变身数据表
	tGuildFight_Data["TransForm"] = {}
	tGuildFight_Data["TransForm"]["SkillType"] = 16010
	tGuildFight_Data["TransForm"]["SkillLevel"] = 0
	tGuildFight_Data["TransForm"]["MonsterType"] = 5442
	tGuildFight_Data["TransForm"]["Time"] = 30
	--变身CD
	tGuildFight_Data["TransForm"]["EventType"] = 196
	tGuildFight_Data["TransForm"]["DataType"] = 19
	tGuildFight_Data["TransForm"]["TimeType"] = 0
	tGuildFight_Data["TransForm"]["Delay"] = 60
	--可出监狱时间
	tGuildFight_Data["PrisonTime"] = {}
	tGuildFight_Data["PrisonTime"]["Week"] = {}
	tGuildFight_Data["PrisonTime"]["Week"][1] = "6 12:00 6 14:59"
	tGuildFight_Data["PrisonTime"]["Minute"] = {}
	tGuildFight_Data["PrisonTime"]["Minute"][1] = "0 5"
	tGuildFight_Data["PrisonTime"]["Minute"][2] = "30 35"
	--出监狱地点
	tGuildFight_Data["PrisonPlace"] = {}
	tGuildFight_Data["PrisonPlace"]["MapId"] = 1002
	tGuildFight_Data["PrisonPlace"]["PosX"] = 410
	tGuildFight_Data["PrisonPlace"]["PosY"] = 354
	tGuildFight_Data["PrisonPlaceNoGift"] = {}
	tGuildFight_Data["PrisonPlaceNoGift"]["MapId"] = 10364
	tGuildFight_Data["PrisonPlaceNoGift"]["PosX"] = 300
	tGuildFight_Data["PrisonPlaceNoGift"]["PosY"] = 293
	--出监狱天石需求
	tGuildFight_Data["PrisonEMoney"] = {}
	tGuildFight_Data["PrisonEMoney"][1] = {}
	tGuildFight_Data["PrisonEMoney"][1]["Point"] = 99
	tGuildFight_Data["PrisonEMoney"][1]["GetFunc"] = Get_UserEMoney
	tGuildFight_Data["PrisonEMoney"][1]["Func"] = User_AddEMoneyAndLog
	tGuildFight_Data["PrisonEMoney"][1]["EMoneyLog"] = "1000	533"
	tGuildFight_Data["PrisonEMoney"][2] = {}
	tGuildFight_Data["PrisonEMoney"][2]["Point"] = 299
	tGuildFight_Data["PrisonEMoney"][2]["GetFunc"] = Get_UserMonoEMoney
	tGuildFight_Data["PrisonEMoney"][2]["Func"] = User_AddEMoneyMonoAndLog
	tGuildFight_Data["PrisonEMoney"][2]["EMoneyLog"] = "1000	534"
	
--保存玩家选择的天石类型
local tGuildFight_EMoneyIndex = {}

--几率给相应的奖励
local tGuildFight_Awarditem = {}
tGuildFight_Awarditem[3308987] = {}
tGuildFight_Awarditem[3308987][1]  = {}
tGuildFight_Awarditem[3308987][1]["ItemChanceSum"] = 10000
tGuildFight_Awarditem[3308987][1][1] = {}
tGuildFight_Awarditem[3308987][1][1]["RandomItemChanceType"] = 2
tGuildFight_Awarditem[3308987][1][1]["ItemChance"] = 1000
tGuildFight_Awarditem[3308987][1][1]["Item_1"] = 3308987
tGuildFight_Awarditem[3308987][1][2] = {}
tGuildFight_Awarditem[3308987][1][2]["RandomItemChanceType"] = 2
tGuildFight_Awarditem[3308987][1][2]["ItemChance"] = 9000
tGuildFight_Awarditem[3308987][1][2]["Item_1"] = nil
--周天
local tGuildFight_Param = "0 00:00 0 23:59"
--------------------------------------逻辑部分-------------------------------------------
-- 传送
-- function GuildFight_Fly(nNpcId)
	-- -- 判断地图
	-- local nNpcMapId =  Get_NpcMapID(nNpcId)
	-- local nUserMapId = Get_UserMapId()
	-- local nMapId = tGuildFight_Data["GuildMapId"]
	-- if nNpcMapId ~= nUserMapId then
		-- return
	-- end
	-- if nUserMapId~= nMapId then
		-- return
	-- end
	
	-- -- 判断坐标
	-- local nRange = tGuildFight_Data["Range"]
	-- local NpcPositionX = Get_NpcPositionX(nNpcId)
	-- local NpcPositionY = Get_NpcPositionY(nNpcId)
	-- local nUserCellX = Get_UserPositionX()
	-- local nUserCellY = Get_UserPositionY()
	-- if nUserCellX < NpcPositionX-nRange or nUserCellX > NpcPositionX+nRange then
		-- LinkNpcGossipFunc_New(nNpcId,"1-2")
		-- return
	-- end
	-- if nUserCellY < NpcPositionY-nRange or nUserCellY > NpcPositionY+nRange then
		-- LinkNpcGossipFunc_New(nNpcId,"1-2")
		-- return
	-- end
	
	-- -- 传送
	-- local nIndex = math.random(1,10)
	-- local nCellX = tGuildFight_Data["Position"][nIndex]["CellX"]
	-- local nCellY = tGuildFight_Data["Position"][nIndex]["CellY"]
	-- local sLog = string.format(tGuildFight_Data["Log"]["Bound"],nMapId,nCellX,nCellY)
	-- User_UserRandBoundTrans(nMapId,nCellX,nCellY,5,5,1)
	-- Sys_SaveActionLog(sLog)
-- end

-- 记录 修复金额
-- function GuildFight_RecordMoney()
	-- -- 判断时间 周日19:00-20:59
	-- if not Sys_ChkWeedTime(tGuildFight_Data["RecordTime"]) then
		-- return
	-- end
	
	-- local nGlobalId = tGuildFight_Data["GlobalId"]["Guild"]
	-- local nMoneyPos = tGuildFight_Data["Pos"]["Money"]
	-- local nThisTiemMoneyPos = tGuildFight_Data["Pos"]["ThisTiemMoney"]
	-- local nTotalMoney = Get_SysDynaGlobalData(nGlobalId,nMoneyPos) + Get_SysDynaGlobalData(nGlobalId,nThisTiemMoneyPos)
	-- Sys_SetSynaGlobalData(nGlobalId,nMoneyPos,nTotalMoney)
-- end

-- 记录 玩家信息
-- function GuildFight_RecordPlayer(nPlayerId)
	-- local nUserId = nPlayerId or Get_UserId()
	-- -- 判断地图
	-- local nUserMapId = Get_UserMapId(nUserId)
	-- local nMapId = tGuildFight_Data["GuildMapId"]
	-- if nUserMapId~= nMapId then
		-- return
	-- end
	
	-- -- 判断时间 周日19:00-20:59
	-- if not Sys_ChkWeedTime(tGuildFight_Data["RecordTime"]) then
		-- return
	-- end
	
	-- -- 判断帮派
	-- local nGuildId = Get_UserGuildId(nUserId)
	-- if nGuildId == 0 or nGuildId == nil then
		-- return
	-- end
	
	-- -- 判断掩码
	-- local nEventType = tGuildFight_Data["Stc"]["GetIn"]["EventTpe"]
	-- local nDataType = tGuildFight_Data["Stc"]["GetIn"]["DataType"]
	-- Task_StcReset(nEventType,nDataType,nUserId)
	-- if Task_ChkStcValue(nEventType,nDataType,">=",1,nUserId) then
		-- return
	-- end
	
	-- --------------------------------------
	-- -- 打掩码
	-- Task_SetStatistic(nEventType,nDataType,1,1,nUserId)
	-- Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
	-- -- 记录
	-- if tGuildFight_Data["Reward"][nUserId] == nil then
		-- tGuildFight_Data["Reward"][nUserId] = {}
		-- tGuildFight_Data["Reward"][nUserId]["UserId"] = nUserId
		-- tGuildFight_Data["Reward"][nUserId]["GuildId"] = nGuildId
	-- end
-- end
--------------------------------------时间自检-------------------------------------------
-- 重置
-- function GuildFight_Reset()
	-- -- 重置修复的帮派基金总额
	-- local nGlobalId = tGuildFight_Data["GlobalId"]["Guild"]
	-- local nMoneyPos = tGuildFight_Data["Pos"]["Money"]
	-- local nEveryMoneyPos = tGuildFight_Data["Pos"]["EveryMoney"]
	-- Sys_SetSynaGlobalData(nGlobalId,nMoneyPos,0)
	-- Sys_SetSynaGlobalData(nGlobalId,nEveryMoneyPos,0)
	-- -- 重置发奖表
	-- tGuildFight_Data["Reward"] = {}
-- end

-- 邮件发奖
-- function GuildFight_SendMail()
	-- -- 删除获胜帮派玩家数据
	-- local nMapId = tGuildFight_Data["GuildMapId"]
	-- local nOwnerId = Get_MapOwnerId(nMapId)
	-- for i,v in pairs(tGuildFight_Data["Reward"]) do
		-- if nOwnerId == tGuildFight_Data["Reward"][i]["GuildId"] then
			-- tGuildFight_Data["Reward"][i] = nil
		-- end
	-- end
	
	-- -- 获得玩家数
	-- local nCount = 0
	-- for i,v in pairs(tGuildFight_Data["Reward"]) do
		-- if tGuildFight_Data["Reward"][i] ~= nil then
			-- nCount = nCount + 1
		-- end
	-- end
	-- if nCount <= 0 then
		-- return
	-- end
	
	-- -- 保存发奖玩家数据
	-- local nGlobalId = tGuildFight_Data["GlobalId"]["Guild"]
	-- local nMoneyPos = tGuildFight_Data["Pos"]["Money"]
	-- local nTotalMoney = Get_SysDynaGlobalData(nGlobalId,nMoneyPos)
	-- if nTotalMoney <= 0 then
		-- return
	-- end
	-- local nEveryMoney = math.floor(nTotalMoney*0.6/nCount)
	-- local nEveryMoneyPos = tGuildFight_Data["Pos"]["EveryMoney"]
	-- Sys_SetSynaGlobalData(nGlobalId,nEveryMoneyPos,nEveryMoney)
	
	-- -- 邮件发奖
	-- for k,v in pairs(tGuildFight_Data["Reward"]) do
		-- local sSender = tGuildFight_Text["Msg"]["Sender"]
		-- local sTitle = tGuildFight_Text["Msg"]["Title"]
		-- local sContent = tGuildFight_Text["Msg"]["Content"]
		-- local nExistDay = tGuildFight_Data["ExistDay"]
		-- if tGuildFight_Data["Reward"][k] ~= nil then
			-- local nUserId = tGuildFight_Data["Reward"][k]["UserId"]
			-- Sys_SendMail(nUserId,nEveryMoney,0,0,0,nExistDay,sSender,sTitle,sContent)
			-- tGuildFight_Data["Reward"][k] = nil
		-- end
	-- end
-- end
--给sql提供接口（给帮众相关魔龙精魄奖励）
-- function GuildFight_Normalgetaward()
	-- local nEvent = tGuildFight_Data["Stc"]["Event"]
	-- local nData = tGuildFight_Data["Stc"]["Data"]
	-- --周天清理掩码
	-- local sParam = tGuildFight_Param
	-- if Sys_ChkWeedTime(sParam) then
		-- Task_SetStatistic(nEvent,nData,0,1)
		-- Task_SetStcTimestamp(nEvent,nData,0)
	-- end
	-- if Task_ChkStcValue(nEvent,nData,"==",0) then
		-- --几率给奖励
		-- Task_SetStatistic(nEvent,nData,1,1)
		-- Task_SetStcTimestamp(nEvent,nData,0)
		-- local flat,tNum = Probabil_RandomAward(tGuildFight_Awarditem[3308987],1)
		-- local nReward = tNum[1]["tAward"][1]["Item_1"]
		-- if nReward ~= nil then
			-- local tGuildFight_Giftaward = {}
			-- tGuildFight_Giftaward[3308987] = {}
			-- tGuildFight_Giftaward[3308987]["RewardItem"] = {}
			-- tGuildFight_Giftaward[3308987]["RewardItem"][1] = {} 
			-- tGuildFight_Giftaward[3308987]["RewardItem"][1]["Id"] = 3308987
			-- tGuildFight_Giftaward[3308987]["RewardItem"][1]["Attr"] = "0 15"
			-- tGuildFight_Giftaward[3308987]["LogId"] = 18000178
			-- RewardTemplate_Reward(tGuildFight_Giftaward[3308987])
		-- else
			-- User_TalkChannel2005(tGuildFight_Text["Noitem"])
		-- end
	-- else
		-- User_TalkChannel2005(tGuildFight_Text["Haveed"])
	-- end
-- end

--变身卡使用
function GuildFight_ItemUse()
	local nUserId = Get_UserId()
	
	--判断地图
	if Get_UserMapId(nUserId) ~= tGuildFight_Data["GuildMapId"] then
		Sys_MsgBox(tGuildFight_Text["MsgBox"]["MapErr"],nil,nil,nUserId)
		return
	end
	
	--判断是否是变身状态
	if Get_UserTransformId(nUserId) > 0 then
		Sys_MsgBox(tGuildFight_Text["MsgBox"]["Already"],nil,nil,nUserId)
		return
	end
	
	local nEvent = tGuildFight_Data["TransForm"]["EventType"]
	local nType = tGuildFight_Data["TransForm"]["DataType"]
	local nTimeType = tGuildFight_Data["TransForm"]["TimeType"]
	local nDelay = tGuildFight_Data["TransForm"]["Delay"]
	
	-- 清变身cd
	Task_StcReset(nEvent,nType,nUserId,nTimeType,nDelay)
	
	if Get_UserStatisticValue(nEvent,nType,nUserId) > 0 then
		--当前时间戳
		local nTimestamp = Get_UserStcTimestampValue(nEvent,nType,nUserId)
		--还需要的时间
		local nSec = nDelay - (os.time() - nTimestamp)
		Sys_MsgBox(string.format(tGuildFight_Text["MsgBox"]["NoUse"], nSec),nil,nil,nUserId)
		return
	end
	
	local nSkillType = tGuildFight_Data["TransForm"]["SkillType"]
	local nSkillLevel = tGuildFight_Data["TransForm"]["SkillLevel"]
	local nMonsterType = tGuildFight_Data["TransForm"]["MonsterType"]
	local nTime = tGuildFight_Data["TransForm"]["Time"]
	
	--记cd掩码
	Task_SetStatistic(nEvent,nType,1,1,nUserId)
	
	--变身
	User_TransForm(nSkillType,nSkillLevel,nMonsterType,nTime,nUserId)
	
	User_TalkChannel2005(tGuildFight_Text["MsgBox"]["Succ"],nUserId)
end

--出监狱对白
function GuildFight_PrisonLink()
	local nNpcId = Get_NpcId()
	
	local bWeek = false
	
	--检查周时间
	for k,v in pairs(tGuildFight_Data["PrisonTime"]["Week"]) do
		if Sys_ChkWeedTime(v) then
			bWeek = true
			break
		end
	end
	
	if not bWeek then
		LinkNpcGossipFunc_New(nNpcId, "2-1")
		return
	end
	
	local bMinute = false
	
	--检查小时时间
	for k,v in pairs(tGuildFight_Data["PrisonTime"]["Minute"]) do
		if Sys_ChkMinute(v) then
			bMinute = true
			break
		end
	end
	
	if not bMinute then
		LinkNpcGossipFunc_New(nNpcId, "2-2")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId, "2-1")
end

--天石判断
function GuildFight_PrisonHandEMoney(nIndex)
	local nNpcId = Get_NpcId()
	local nUserId = Get_UserId()
	
	local nPoint = tGuildFight_Data["PrisonEMoney"][nIndex]["Point"]
	local fGetFunc = tGuildFight_Data["PrisonEMoney"][nIndex]["GetFunc"]
	
	--需求的天石不足
	if fGetFunc(nUserId) < nPoint then
		tNpcGossip[nNpcId]["Text321"] = string.format(tGuildFight_Text[nNpcId]["Text321"], tGuildFight_Text["EmoneyText"][nIndex])
		LinkNpcGossipFunc_New(nNpcId, "3-2")
		return
	end
	
	tGuildFight_EMoneyIndex[nUserId] = nIndex
	
	--链接至确认对白
	tNpcGossip[nNpcId]["Text311"] = string.format(tGuildFight_Text[nNpcId]["Text311"], tGuildFight_Text["EmoneyText"][nIndex])
	LinkNpcGossipFunc_New(nNpcId, "3-1")
end

--天石扣除确认
function GuildFight_PrisonHandEMoneyConfirm()
	local nNpcId = Get_NpcId()
	local nUserId = Get_UserId()
	
	if tGuildFight_EMoneyIndex[nUserId] == nil then
		return
	end
	
	--获取玩家选择的天石类型
	local nIndex = tGuildFight_EMoneyIndex[nUserId]
	local nPoint = tGuildFight_Data["PrisonEMoney"][nIndex]["Point"]
	local fGetFunc = tGuildFight_Data["PrisonEMoney"][nIndex]["GetFunc"]
	local fFunc = tGuildFight_Data["PrisonEMoney"][nIndex]["Func"]
	
	--需求的天石不足
	if fGetFunc(nUserId) < nPoint then
		tNpcGossip[nNpcId]["Text321"] = string.format(tGuildFight_Text[nNpcId]["Text321"], tGuildFight_Text["EmoneyText"][nIndex])
		LinkNpcGossipFunc_New(nNpcId, "3-2")
		return
	end
	
	local sEmoneyBuyLog = tGuildFight_Data["PrisonEMoney"][nIndex]["EMoneyLog"]
	
	--执行扣除逻辑
	if not fFunc(-nPoint,sEmoneyBuyLog,nUserId) then
		return
	end
	
	GuildFight_PrisonOut()
end

--免费出去
function GuildFight_PrisonFree()
	local nNpcId = Get_NpcId()
	local bWeek = false
	
	--检查周时间
	for k,v in pairs(tGuildFight_Data["PrisonTime"]["Week"]) do
		if Sys_ChkWeedTime(v) then
			bWeek = true
			break
		end
	end
	
	local bMinute = false
	
	--检查小时时间
	for k,v in pairs(tGuildFight_Data["PrisonTime"]["Minute"]) do
		if Sys_ChkMinute(v) then
			bMinute = true
			break
		end
	end
	
	--免费时间判断
	if bWeek and not bMinute then
		LinkNpcGossipFunc_New(nNpcId, "2-2")
		return
	end
	
	GuildFight_PrisonOut()
end

--出监狱
function GuildFight_PrisonOut()
	local nMapId = tGuildFight_Data["PrisonPlace"]["MapId"]
	local nCellx = tGuildFight_Data["PrisonPlace"]["PosX"]
	local nCelly = tGuildFight_Data["PrisonPlace"]["PosY"]
	
	--判断是否激情服
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tGuildFight_Data["PrisonPlaceNoGift"]["MapId"]
		nCellx = tGuildFight_Data["PrisonPlaceNoGift"]["PosX"]
		nCelly = tGuildFight_Data["PrisonPlaceNoGift"]["PosY"]
	end
	
	User_ChgMap(nMapId,nCellx,nCelly,1)
	
	User_TalkChannel2005(tGuildFight_Text["MsgBox"]["Out"])
end

--------------------------------------npc模块--------------------------------------------
-- 21501 21502 左右传送npc
-- 头像
-- tNpcFace[6074] = 50
-- for i = 21501,21502 do
-- tNpcGossip[i] = tNpcGossip[i] or DefaultNpc:new{}
-- tNpcGossip[i]["OptionHidden"] = 1
-- tNpcGossip[i]["DialogueText"] = tGuildFight_Text[i]
-- -- 主对白
-- tNpcGossip[i]["Text1-1"] = {111,112,113}
-- tNpcGossip[i]["tOption1-1"] = {1,2}
-- tNpcGossip[i]["ChkFunc1-1"] = function()
	-- -- 判断坐标
	-- local nRange = tGuildFight_Data["Range"]
	-- local NpcPositionX = Get_NpcPositionX(nNpcId)
	-- local NpcPositionY = Get_NpcPositionY(nNpcId)
	-- local nUserCellX = Get_UserPositionX()
	-- local nUserCellY = Get_UserPositionY()
	-- if nUserCellX < NpcPositionX-nRange or nUserCellX > NpcPositionX+nRange then
		-- return false
	-- end
	-- if nUserCellY < NpcPositionY-nRange or nUserCellY > NpcPositionY+nRange then
		-- return false
	-- end
	
	-- return true
-- end
-- tNpcGossip[i]["OptionFunc1"] = "GuildFight_Fly</N>"..i
-- -- 距离远
-- tNpcGossip[i]["Text1-2"] = {111,121}
-- tNpcGossip[i]["tOption1-2"] = {3}
-- tNpcGossip[i]["ChkFunc1-2"] = function()
	-- -- 判断坐标
	-- local nRange = tGuildFight_Data["Range"]
	-- local NpcPositionX = Get_NpcPositionX(nNpcId)
	-- local NpcPositionY = Get_NpcPositionY(nNpcId)
	-- local nUserCellX = Get_UserPositionX()
	-- local nUserCellY = Get_UserPositionY()
	-- if nUserCellX < NpcPositionX-nRange or nUserCellX > NpcPositionX+nRange then
		-- return true
	-- end
	-- if nUserCellY < NpcPositionY-nRange or nUserCellY > NpcPositionY+nRange then
		-- return true
	-- end
	
	-- return false
-- end
-- end

tNpcFace[116] = 9
tNpcGossip[140] = tNpcGossip[i] or DefaultNpc:new{}
tNpcGossip[140]["OptionHidden"] = 1
tNpcGossip[140]["DialogueText"] = tGuildFight_Text[140]
-- 主对白
tNpcGossip[140]["Text1-1"] = {111,112}
tNpcGossip[140]["tOption1-1"] = {111,112}
tNpcGossip[140]["ChkFunc1-1"] = function()
	return true
end
tNpcGossip[140]["OptionFunc111"] = "GuildFight_PrisonLink"

tNpcGossip[140]["Text2-1"] = {211}
tNpcGossip[140]["tOption2-1"] = {211,212}
tNpcGossip[140]["OptionFunc211"] = "GuildFight_PrisonFree"

tNpcGossip[140]["Text2-2"] = {221}
tNpcGossip[140]["tOption2-2"] = {221,222,223}
tNpcGossip[140]["OptionFunc221"] = "GuildFight_PrisonHandEMoney</N>1"
tNpcGossip[140]["OptionFunc222"] = "GuildFight_PrisonHandEMoney</N>2"

tNpcGossip[140]["Text3-1"] = {311}
tNpcGossip[140]["tOption3-1"] = {311,312}
tNpcGossip[140]["OptionFunc311"] = "GuildFight_PrisonHandEMoneyConfirm"

tNpcGossip[140]["Text3-2"] = {321}
tNpcGossip[140]["tOption3-2"] = {321}

--------------------------------------物品模块--------------------------------------------
-- tItemFace[3322150] = 2362
-- tItem[3322150] = tItem[3322150] or {}
-- tItem[3322150]["Function"] = function(nItemId,sItemName)
	-- LinkItemGossipFunc_New(nItemId,"1-1")
-- end
-- tItem[3322150]["DialogueText"] = tGuildFight_Text[3322150]
-- tItem[3322150]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115}
-- tItem[3322150]["tOption1-1"] = {111,112,113,114,115,116}
-- tItem[3322150]["OptionFunc111"] = "GuildFight_ItemUse"

-------------------------------------------------------------------------------------------
-- 玩家杀人触发
-- tUserKilled["tFunction"] = tUserKilled["tFunction"] or {}
-- table.insert(tUserKilled["tFunction"],GuildFight_RecordPlayer)

-- 玩家使用复活触发
-- tUserSave["tFunction"] = tUserSave["tFunction"] or {}
-- table.insert(tUserSave["tFunction"],GuildFight_RecordPlayer)

-- 玩家使用锁人触发
-- tKeepGhost["tFunction"] = tKeepGhost["tFunction"] or {}
-- table.insert(tKeepGhost["tFunction"],GuildFight_RecordPlayer)
--------------------------------------时间自检---------------------------------------------
-- local tGuildFight_Time = {}
-- 重置临时表
-- tGuildFight_Time[1] = {}
-- tGuildFight_Time[1]["Type"] = 2
-- tGuildFight_Time[1]["TimeType"] = 3 -- 周时间
-- tGuildFight_Time[1]["Multiple"] = {}
-- tGuildFight_Time[1]["Multiple"][1]  = "6 13:55 6 13:55"
-- tGuildFight_Time[1]["Func"] = GuildFight_Reset
-- table.insert(tSystemTime_InitialData,tGuildFight_Time[1])

-- 邮件发奖
-- tGuildFight_Time[2] = {}
-- tGuildFight_Time[2]["Type"] = 2
-- tGuildFight_Time[2]["TimeType"] = 3
-- tGuildFight_Time[2]["Multiple"] = {}
-- tGuildFight_Time[2]["Multiple"][1]  = "0 21:05 0 21:05"
-- tGuildFight_Time[2]["Func"] = GuildFight_SendMail
-- table.insert(tSystemTime_InitialData,tGuildFight_Time[2])