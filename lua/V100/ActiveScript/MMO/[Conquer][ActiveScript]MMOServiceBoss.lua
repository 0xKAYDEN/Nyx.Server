------------------------------------------------------------------------------------
--Name:			161027[简体征服][活动脚本]大型MMO活动制作-趣味积分部分-跨服世界BOSS
--Purpose:		跨服世界BOSS
--Creator: 		严振飞
--Created:		2016/10/27
------------------------------------------------------------------------------------

------------------------------------------------------------------------------------
--LOGid 12000544
------------------------------------------------------------------------------------
--命名规范
--MMOServiceBoss_
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 基础数据
local tMMOServiceBoss_Cont = {}
	-- 活动等级要求
	tMMOServiceBoss_Cont["Metempsychosis"] = 1
	tMMOServiceBoss_Cont["Level"] = 110
	-- 参与奖背包空间
	tMMOServiceBoss_Cont["GetWardSpace"] = 1
	-- 任务TaskId
	tMMOServiceBoss_Cont["TaskId"] = 35035
	-- 排行榜数量
	tMMOServiceBoss_Cont["RankTotal"] = 20
	-- 刷BOSS1的坐标
	tMMOServiceBoss_Cont["ServeMap"] = 3935
	tMMOServiceBoss_Cont["ServePosX"] = 386
	tMMOServiceBoss_Cont["ServePosY"] = 387
	tMMOServiceBoss_Cont["ServeGenId"] = 20351
	-- 跨服精英礼包
	tMMOServiceBoss_Cont["RewardPag"] = 3600034
	tMMOServiceBoss_Cont["RewardAttr"] = {}
	tMMOServiceBoss_Cont["RewardAttr"][1] = "0 1" -- 小BOSS
	tMMOServiceBoss_Cont["RewardAttr"][2] = "0 3" -- 大BOSS
	-- 刷BOSS坐标间隔
	tMMOServiceBoss_Cont["PosSpace"] = 10
	-- 记录刷BOSS第几轮(怪物类型、第几轮、第几只BOSS1)
	tMMOServiceBoss_Cont["OpenRound"] = {0,0,0} -- 初始为0
	-- 宝箱移回去数据
	tMMOServiceBoss_Cont["Type"] = 2
	tMMOServiceBoss_Cont["Sort"] = 128
	tMMOServiceBoss_Cont["Lookface"] = 44186
	tMMOServiceBoss_Cont["Task0"] = 94480101
	tMMOServiceBoss_Cont["Field"] = "name"
	-- 开宝箱光效
	tMMOServiceBoss_Cont["Effect"] = "zf2-e128"
	
	-- 活动NPC所在地图
	tMMOServiceBoss_Cont["NpcMap"] = 1002
	
	tMMOServiceBoss_Cont["Space"] = 1
	
	
	
local tMMOServiceBoss_BoxPos = {}
	-- BOSS1(共四只)
	tMMOServiceBoss_BoxPos[1] = {}
	tMMOServiceBoss_BoxPos[1][1] = {{375,383},{377,388},{379,386}}
	tMMOServiceBoss_BoxPos[1][2] = {{386,375},{386,378},{388,377}}
	tMMOServiceBoss_BoxPos[1][3] = {{396,386},{397,390},{399,388}}
	tMMOServiceBoss_BoxPos[1][4] = {{387,395},{388,399},{390,397}}
	-- BOSS2(共一只)
	tMMOServiceBoss_BoxPos[2] = {}
	tMMOServiceBoss_BoxPos[2][1] = {
		{381,385},{384,383},{387,380},{382,391},{385,387},
		{389,385},{393,382},{387,392},{390,390},{393,387}
	}

	
-- 全服邀请8个坐标
local tMMOServiceBoss_InvitePos = {}
	tMMOServiceBoss_InvitePos[1] = {}
	tMMOServiceBoss_InvitePos[1]["X"] = 356
	tMMOServiceBoss_InvitePos[1]["Y"] = 411
	tMMOServiceBoss_InvitePos[2] = {}
	tMMOServiceBoss_InvitePos[2]["X"] = 356
	tMMOServiceBoss_InvitePos[2]["Y"] = 413
	tMMOServiceBoss_InvitePos[3] = {}
	tMMOServiceBoss_InvitePos[3]["X"] = 355
	tMMOServiceBoss_InvitePos[3]["Y"] = 412
	tMMOServiceBoss_InvitePos[4] = {}
	tMMOServiceBoss_InvitePos[4]["X"] = 357
	tMMOServiceBoss_InvitePos[4]["Y"] = 412
	tMMOServiceBoss_InvitePos[5] = {}
	tMMOServiceBoss_InvitePos[5]["X"] = 355
	tMMOServiceBoss_InvitePos[5]["Y"] = 411
	tMMOServiceBoss_InvitePos[6] = {}
	tMMOServiceBoss_InvitePos[6]["X"] = 355
	tMMOServiceBoss_InvitePos[6]["Y"] = 413
	tMMOServiceBoss_InvitePos[7] = {}
	tMMOServiceBoss_InvitePos[7]["X"] = 357
	tMMOServiceBoss_InvitePos[7]["Y"] = 411
	tMMOServiceBoss_InvitePos[8] = {}
	tMMOServiceBoss_InvitePos[8]["X"] = 357
	tMMOServiceBoss_InvitePos[8]["Y"] = 413

-- 刷地板礼包数据
local tMMOServiceBoss_Drop = {}
	tMMOServiceBoss_Drop["ExistTime"] = 60 -- 存在时间（秒）
	-- BOSS1
	tMMOServiceBoss_Drop[1] = {}
	tMMOServiceBoss_Drop[1]["DropNum"] = 3 -- 数量
	tMMOServiceBoss_Drop[1]["DropCell"] = 5 -- 范围
	-- BOSS2
	tMMOServiceBoss_Drop[2] = {}
	tMMOServiceBoss_Drop[2]["DropNum"] = 10
	tMMOServiceBoss_Drop[2]["DropCell"] = 20

-- 怪物数据
local tMMOServiceBoss_Mont = {}
	-- BOSS1数据
	tMMOServiceBoss_Mont[1] = {}
	tMMOServiceBoss_Mont[1][1] = 4248 -- BOSS1猪
	tMMOServiceBoss_Mont[1][2] = 4249 -- BOSS1兔
	tMMOServiceBoss_Mont[1][3] = 4251 -- BOSS1猫
	-- BOSS2数据
	tMMOServiceBoss_Mont[2] = {}
	tMMOServiceBoss_Mont[2][1] = 4252 -- BOSS2猪
	tMMOServiceBoss_Mont[2][2] = 4253 -- BOSS2兔
	tMMOServiceBoss_Mont[2][3] = 4254 -- BOSS2猫

-- 邮件发奖
local tMMOServiceBoss_SendMail = {}
	tMMOServiceBoss_SendMail["ExistDay"] = 30 --持续天数
	tMMOServiceBoss_SendMail[1] = 564671
	tMMOServiceBoss_SendMail[2] = 564672
	tMMOServiceBoss_SendMail[3] = 564673
	tMMOServiceBoss_SendMail[4] = 564674
	tMMOServiceBoss_SendMail[5] = 564675
	tMMOServiceBoss_SendMail[6] = 564676
	tMMOServiceBoss_SendMail[7] = 564677
	tMMOServiceBoss_SendMail[8] = 564678
	tMMOServiceBoss_SendMail[9] = 564679
	tMMOServiceBoss_SendMail[10] = 564680
	tMMOServiceBoss_SendMail[11] = 564681
	tMMOServiceBoss_SendMail[12] = 564682
	tMMOServiceBoss_SendMail[13] = 564683
	tMMOServiceBoss_SendMail[14] = 564684
	tMMOServiceBoss_SendMail[15] = 564685
	tMMOServiceBoss_SendMail[16] = 564686
	tMMOServiceBoss_SendMail[17] = 564687
	tMMOServiceBoss_SendMail[18] = 564688
	tMMOServiceBoss_SendMail[19] = 564689
	tMMOServiceBoss_SendMail[20] = 564690
	-- 参与奖
	tMMOServiceBoss_SendMail["Join"] = 564691
	
	
-- 怪物种类刷出几率
local tMMOServiceBoss_Porb = {}
	tMMOServiceBoss_Porb[1] = {}
	tMMOServiceBoss_Porb[1][1] = {}
	tMMOServiceBoss_Porb[1][1]["ItemChanceSum"] = 9000
	-- 1/3 几率刷出（猪）
	tMMOServiceBoss_Porb[1][1][1] = {}
	tMMOServiceBoss_Porb[1][1][1]["RandomItemChanceType"] = 2
	tMMOServiceBoss_Porb[1][1][1]["ItemChance"] = 3000
	tMMOServiceBoss_Porb[1][1][1]["Item_1"] = 1
	-- 1/3 几率刷出（兔）
	tMMOServiceBoss_Porb[1][1][2] = {}
	tMMOServiceBoss_Porb[1][1][2]["RandomItemChanceType"] = 2
	tMMOServiceBoss_Porb[1][1][2]["ItemChance"] = 3000
	tMMOServiceBoss_Porb[1][1][2]["Item_1"] = 2
	-- 1/3 几率刷出（猫）
	tMMOServiceBoss_Porb[1][1][3] = {}
	tMMOServiceBoss_Porb[1][1][3]["RandomItemChanceType"] = 2
	tMMOServiceBoss_Porb[1][1][3]["ItemChance"] = 3000
	tMMOServiceBoss_Porb[1][1][3]["Item_1"] = 3


local tMMOServiceBoss_Random = {}
	tMMOServiceBoss_Random[3600034] = {} --萌兽大礼包
	tMMOServiceBoss_Random[3600034]["Space"] = 2
	tMMOServiceBoss_Random[3600034]["ItemChanceSum"] = 10000
	-- tMMOServiceBoss_Random[3600034]["LogId"] = 12000544
	-- 18%	3个微光星陨石
	tMMOServiceBoss_Random[3600034][1] = {}
	tMMOServiceBoss_Random[3600034][1]["RandomItemChanceType"] = 2
	tMMOServiceBoss_Random[3600034][1]["ItemChance"] = 1800
	tMMOServiceBoss_Random[3600034][1]["RewardItem"] = {}
	tMMOServiceBoss_Random[3600034][1]["RewardItem"][1] = {}
	tMMOServiceBoss_Random[3600034][1]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石
	tMMOServiceBoss_Random[3600034][1]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tMMOServiceBoss_Random[3600034][1]["Log"] = "0,0,3600034,1,12000544,2,3009000,3"
	-- 10%	1个明亮星陨石
	tMMOServiceBoss_Random[3600034][2] = {}
	tMMOServiceBoss_Random[3600034][2]["RandomItemChanceType"] = 2
	tMMOServiceBoss_Random[3600034][2]["ItemChance"] = 1000
	tMMOServiceBoss_Random[3600034][2]["RewardItem"] = {}
	tMMOServiceBoss_Random[3600034][2]["RewardItem"][1] = {}
	tMMOServiceBoss_Random[3600034][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石
	tMMOServiceBoss_Random[3600034][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tMMOServiceBoss_Random[3600034][1]["Log"] = "0,0,3600034,1,12000544,2,3009001,1"
	-- 18%	10气力值
	tMMOServiceBoss_Random[3600034][3] = {}
	tMMOServiceBoss_Random[3600034][3]["RandomItemChanceType"] = 2
	tMMOServiceBoss_Random[3600034][3]["ItemChance"] = 1800
	tMMOServiceBoss_Random[3600034][3]["RewardStrengthValue"] = {}
	tMMOServiceBoss_Random[3600034][3]["RewardStrengthValue"]["Value"] = 10
	tMMOServiceBoss_Random[3600034][3]["Log"] = "0,0,3600034,1,12000544,2,12,10"
	-- 10%	30气力值
	tMMOServiceBoss_Random[3600034][4] = {}
	tMMOServiceBoss_Random[3600034][4]["RandomItemChanceType"] = 2
	tMMOServiceBoss_Random[3600034][4]["ItemChance"] = 1000
	tMMOServiceBoss_Random[3600034][4]["RewardStrengthValue"] = {}
	tMMOServiceBoss_Random[3600034][4]["RewardStrengthValue"]["Value"] = 30
	tMMOServiceBoss_Random[3600034][4]["Log"] = "0,0,3600034,1,12000544,2,12,30"
	-- 18%	10赠点
	tMMOServiceBoss_Random[3600034][5] = {}
	tMMOServiceBoss_Random[3600034][5]["RandomItemChanceType"] = 2
	tMMOServiceBoss_Random[3600034][5]["ItemChance"] = 1800
	tMMOServiceBoss_Random[3600034][5]["RewardEMoneyMono"] = {}
	tMMOServiceBoss_Random[3600034][5]["RewardEMoneyMono"]["Value"] = 10
	tMMOServiceBoss_Random[3600034][5]["Log"] = "0,0,3600034,1,12000544,2,3,10"
	-- 10%	30赠点
	tMMOServiceBoss_Random[3600034][6] = {}
	tMMOServiceBoss_Random[3600034][6]["RandomItemChanceType"] = 2
	tMMOServiceBoss_Random[3600034][6]["ItemChance"] = 1000
	tMMOServiceBoss_Random[3600034][6]["RewardEMoneyMono"] = {}
	tMMOServiceBoss_Random[3600034][6]["RewardEMoneyMono"]["Value"] = 30
	tMMOServiceBoss_Random[3600034][6]["Log"] = "0,0,3600034,1,12000544,2,3,30"
	-- 8%	豪华外套碎片
	tMMOServiceBoss_Random[3600034][7] = {}
	tMMOServiceBoss_Random[3600034][7]["RandomItemChanceType"] = 2
	tMMOServiceBoss_Random[3600034][7]["ItemChance"] = 800
	tMMOServiceBoss_Random[3600034][7]["RewardItem"] = {}
	tMMOServiceBoss_Random[3600034][7]["RewardItem"][1] = {}
	tMMOServiceBoss_Random[3600034][7]["RewardItem"][1]["Id"] = 3007104 -- 豪华外套碎片
	tMMOServiceBoss_Random[3600034][7]["RewardItem"][1]["Attr"] = "0 1"
	tMMOServiceBoss_Random[3600034][7]["Log"] = "0,0,3600034,1,12000544,2,3007104,1"
	-- 8%	豪华骑宠外套碎片
	tMMOServiceBoss_Random[3600034][8] = {}
	tMMOServiceBoss_Random[3600034][8]["RandomItemChanceType"] = 2
	tMMOServiceBoss_Random[3600034][8]["ItemChance"] = 800
	tMMOServiceBoss_Random[3600034][8]["RewardItem"] = {}
	tMMOServiceBoss_Random[3600034][8]["RewardItem"][1] = {}
	tMMOServiceBoss_Random[3600034][8]["RewardItem"][1]["Id"] = 3007105 -- 豪华骑宠外套碎片
	tMMOServiceBoss_Random[3600034][8]["RewardItem"][1]["Attr"] = "0 1"
	tMMOServiceBoss_Random[3600034][8]["Log"] = "0,0,3600034,1,12000544,2,3007105,1"

local tMMOServiceBoss_Log = {}
	tMMOServiceBoss_Log["Round_1"] = "0,0,0,0,12000544,1[1],0,0" -- 第一轮BOOS1被杀
	tMMOServiceBoss_Log["Round_2"] = "0,0,0,0,12000544,1[2],0,0" -- 第二轮BOOS1被杀
	tMMOServiceBoss_Log["Round_3"] = "0,0,0,0,12000544,1[3],0,0" -- 第二轮BOSS2被杀
	
	tMMOServiceBoss_Log["OpenBox"] = "0,0,0,0,12000544,2,%d,1"
	
	tMMOServiceBoss_Log["Round_1_Award"] = "0,0,%d,%d,12000544,2,3600034,1"
	tMMOServiceBoss_Log["Round_2_Award"] = "0,0,0,0,12000544,2,3600034,3"

---------------------------------------------逻辑部分---------------------------------------------
-- 传送国境服
function MMOServiceBoss_FrontierServer()
	if not User_CheckLeftSpace(tMMOServiceBoss_Cont["Space"]) then
		Sys_MsgBox(tMMOServiceBoss_Text["NoSpace"],"MMOServiceBoss_FrontierServer1")
	else
		MMOServiceBoss_FrontierServer1()
	end
end

--传国境服
function MMOServiceBoss_FrontierServer1()
	-- 入场
	local nUserId = Get_UserId()
	local nFrontierServerID = Get_FrontierServerID()
	if Sys_EnterServer(nFrontierServerID,12,nUserId,1) then
		Sys_MsgBox(tMMOServiceBoss_Text["IntoServer"])
	end
end

---------------------------------------------
-- 宝箱接入
function MMOServiceBoss_BoxMain()
	-- 删除
	if not Npc_DelDynaByID() then
		return
	end
	
	-- 给奖励
	local nItemId = tMMOServiceBoss_Cont["RewardPag"]
	Item_AddNewItem(nItemId,tMMOServiceBoss_Cont["RewardAttr"][1])
	
	-- 光效提示
	local nPosX = Get_NpcPositionX()
	local nPosY = Get_NpcPositionY()
	local sEffectName = tMMOServiceBoss_Cont["Effect"]
	local nMapId = tMMOServiceBoss_Cont["ServeMap"]
	local sLogText = string.format(tMMOServiceBoss_Log["OpenBox"],nItemId)
	User_EffectAdd("self",tMMOServiceBoss_Cont["Effect"])
	User_TalkChannel2005(string.format(tMMOServiceBoss_Text["OpenBox"],Get_ItemtypeName(nItemId)))
	Sys_SaveActionFestivalLog(sLogText)
end

-- BOSS死亡宝箱坐标处理
function MMOServiceBoss_DoBoxPos(nType,nNum)
	local nNum = nNum or 1
	local sName = tMMOServiceBoss_Text["BoxName"]
	local nNpcType = tMMOServiceBoss_Cont["Type"]
	local nSort = tMMOServiceBoss_Cont["Sort"]
	local nLookFace = tMMOServiceBoss_Cont["Lookface"]
	local nMapId = tMMOServiceBoss_Cont["ServeMap"]
	local nTask0 = tMMOServiceBoss_Cont["Task0"]

	for _,v in ipairs(tMMOServiceBoss_BoxPos[nType][nNum]) do
		-- 刷出宝箱
		Npc_CreateDynaNpc(sName,nNpcType,nSort,nLookFace,0,0,nMapId,v[1],v[2],0,0,0,nTask0)
	end
end


---------------------------------------------
-- BOSS1死亡触发
function MMOServiceBoss_Monster1(nMonsterId)
	-- 判断金币服
	if CommonFunc_ChkGoldServer() then
		return
	end
	
	local nMapId = tMMOServiceBoss_Cont["ServeMap"]
	local nGenId = tMMOServiceBoss_Cont["ServeGenId"]
	local nBossType = tMMOServiceBoss_Cont["OpenRound"][1] -- 怪物类型
	local nRound = tMMOServiceBoss_Cont["OpenRound"][2] -- 第几轮
	local nPosX = tMMOServiceBoss_Cont["ServePosX"]
	local nPosY = tMMOServiceBoss_Cont["ServePosY"]
	
	-- 怪物数据被清是默认为1
	if nBossType == 0 then
		nBossType = 1
	end
	
	-- 第一轮掩码
	if nRound == 0 then
		-- 置掩码
		tMMOServiceBoss_Cont["OpenRound"][2] = tMMOServiceBoss_Cont["OpenRound"][2] + 1
		
		-- 删除上次遗留的BOSS
		for _,v in ipairs(tMMOServiceBoss_Mont) do
			for _,nMontId in ipairs(v) do
				local nMonsterNum = Get_SysTempData(1,nMapId,nMontId)
				if nMonsterNum >= 0 then
					Monster_DelMonster(nMapId,nMontId)
					Sys_SetTempData(1,nMapId,nMontId,0)
				end
			end
		end
		
		local nMin_MontId = tMMOServiceBoss_Mont[1][nBossType]
		local nMax_MontId = tMMOServiceBoss_Mont[2][nBossType]
		local nPosSpace = tMMOServiceBoss_Cont["PosSpace"]
		
		-- 刷出第二轮BOSS2
		Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMax_MontId,0,0,0,1)

		-- 刷出第二轮BOSS1
		Monster_AddAndCount(nMapId,nPosX - nPosSpace,nPosY,nGenId,nMin_MontId,0,0,0,4)
		Monster_AddAndCount(nMapId,nPosX + nPosSpace,nPosY,nGenId,nMin_MontId,0,0,0,4)
		Monster_AddAndCount(nMapId,nPosX,nPosY - nPosSpace,nGenId,nMin_MontId,0,0,0,4)
		Monster_AddAndCount(nMapId,nPosX,nPosY + nPosSpace,nGenId,nMin_MontId,0,0,0,4)
		
		Sys_SaveActionFestivalLog(tMMOServiceBoss_Log["Round_1"])
		
		-- 全游服广播
		local sServerName = Get_SysServerName(Get_UserServerId())
		local nUserName = Get_UserName()
		Sys_SystemBroadcastToOS(string.format(tMMOServiceBoss_Text["OpenBoss2"],sServerName,nUserName))
		
	-- 第二轮BOSS1被杀
	else
		tMMOServiceBoss_Cont["OpenRound"][2] = tMMOServiceBoss_Cont["OpenRound"][2] + 1
		tMMOServiceBoss_Cont["OpenRound"][3] = tMMOServiceBoss_Cont["OpenRound"][3] + 1
		-- 刷地板礼包-BOSS1
		Sys_SaveActionFestivalLog(tMMOServiceBoss_Log["Round_2"])
		MMOServiceBoss_DoBoxPos(1,tMMOServiceBoss_Cont["OpenRound"][3])
	end
	
	-- 给必得的（跨服精英礼包）
	local nItemId = tMMOServiceBoss_Cont["RewardPag"]
	local sLogText = string.format(tMMOServiceBoss_Log["Round_1_Award"],nMonsterId,tMMOServiceBoss_Cont["OpenRound"][2])
	Item_AddNewItem(nItemId,tMMOServiceBoss_Cont["RewardAttr"][1])
	Sys_SaveActionFestivalLog(sLogText)
end

-- BOSS2死亡触发
function MMOServiceBoss_Monster2(nMonsterId)
	-- 判断金币服
	if CommonFunc_ChkGoldServer() then
		return
	end
	
	-- 给必得的（跨服精英礼包）
	local nItemId = tMMOServiceBoss_Cont["RewardPag"]
	Item_AddNewItem(nItemId,tMMOServiceBoss_Cont["RewardAttr"][2])
	Sys_SaveActionFestivalLog(tMMOServiceBoss_Log["Round_3"])
	Sys_SaveActionFestivalLog(tMMOServiceBoss_Log["Round_2_Award"])
	local sServerName = Get_SysServerName(Get_UserServerId())
	local nUserName = Get_UserName()
	Sys_SystemBroadcastToOS(string.format(tMMOServiceBoss_Text["KillBoss2"],sServerName,nUserName))
	
	-- 刷地板礼包-BOSS2
	MMOServiceBoss_DoBoxPos(2)
end

-- 定点刷出怪物
function MMOServiceBoss_OpenMonster()
	-- 判断金币服
	if CommonFunc_ChkGoldServer() then
		return
	end
	
	-- 活动时间
	if not Sys_ChkFullTime(tActivityTime["MMOServiceBoss"]["NowTime"]) then
		return
	end

	local nMapId = tMMOServiceBoss_Cont["ServeMap"]
	local nGenId = tMMOServiceBoss_Cont["ServeGenId"]
	-- 删除上次遗留的BOSS
	for _,v in ipairs(tMMOServiceBoss_Mont) do
		for _,nMontId in ipairs(v) do
			local nMonsterNum = Get_SysTempData(1,nMapId,nMontId)
			if nMonsterNum >= 0 then
				Monster_DelMonster(nMapId,nMontId)
				Sys_SetTempData(1,nMapId,nMontId,0)
			end
		end
	end

	-- 删除遗留的宝箱
	local sField = tMMOServiceBoss_Cont["Field"]
	local sData = tMMOServiceBoss_Text["BoxName"]
	Npc_DelDynaNpc(nMapId,sField,sData)
	
	-- 随机刷新BOSS
	local flat,tItem_1 = Probabil_RandomAward(tMMOServiceBoss_Porb[1],1)
	local nBossType = tItem_1[1]["tAward"][1]["Item_1"]
	
	-- 重置轮数记录表(怪物类型、第几轮、第几只BOSS1)
	tMMOServiceBoss_Cont["OpenRound"] = {nBossType,0,0}
	
	local nPosX = tMMOServiceBoss_Cont["ServePosX"]
	local nPosY = tMMOServiceBoss_Cont["ServePosY"]
	local nMontId = tMMOServiceBoss_Mont[1][nBossType]
	Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMontId,0,0,0,1)
	Sys_SystemBroadcastToOS(tMMOServiceBoss_Text["OpenBoss1"])
	
	-- 仅游服可以出
	Sys_TalkBroadcast(tMMOServiceBoss_Text["YFOpenBoss1"])
	
	-- 全服邀请
	if Sys_InviteFilter(6,"metempsychosis >= 1 level >= 110") then
		Sys_InviteTrans(tMMOServiceBoss_Cont["NpcMap"],tMMOServiceBoss_InvitePos,10558,10559,6,30)
	end
end

-- 删除已有的怪
function MMOServiceBoss_DelMonster()
	-- 判断金币服
	if CommonFunc_ChkGoldServer() then
		return
	end
	
	-- 活动时间(活动后多一天)
	if not Sys_ChkFullTime(tActivityTime["MMOServiceBoss"]["DelMont"]) then
		return
	end
	
	local nMapId = tMMOServiceBoss_Cont["ServeMap"]
	-- 删除上次遗留的BOSS
	for _,v in ipairs(tMMOServiceBoss_Mont) do
		for _,nMontId in ipairs(v) do
			local nMonsterNum = Get_SysTempData(1,nMapId,nMontId)
			if nMonsterNum >= 0 then
				Monster_DelMonster(nMapId,nMontId)
				Sys_SetTempData(1,nMapId,nMontId,0)
			end
		end
	end
	
	-- 删除遗留的宝箱
	local sField = tMMOServiceBoss_Cont["Field"]
	local sData = tMMOServiceBoss_Text["BoxName"]
	Npc_DelDynaNpc(nMapId,sField,sData)
	
	-- 重置轮数记录表(怪物类型、第几轮、第几只BOSS1)
	tMMOServiceBoss_Cont["OpenRound"] = {0,0,0}
end


---------------------------------------------
-- 打到BOSS触发（记录参与奖掩码）
function MMOServiceBoss_RewardEnd(nServerId,nUserId,nRank,nDmg,nMonsterId)
	-- 判断金币服
	if CommonFunc_ChkGoldServer() then
		return
	end
	
	local nActionId = tMMOServiceBoss_SendMail["Join"]
	local nExistDay = tMMOServiceBoss_SendMail["ExistDay"]
	local sSender = tMMOServiceBoss_Text["Join"]["Sender"]
	local sTitle = tMMOServiceBoss_Text["Join"]["Title"]
	local sContent = tMMOServiceBoss_Text["Join"]["Content"]
	Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent,nServerId)
end

-- 伤害排行榜
function MMOServiceBoss_Rank(nServerId,nUserId,nRank,nDmg,nMonsterId)
	-- 判断金币服
	if CommonFunc_ChkGoldServer() then
		return
	end
	
	local nRankTotal = tMMOServiceBoss_Cont["RankTotal"]
	
	for nNum = 1, nRankTotal do
		if nNum == nRank then
			local nActionId = tMMOServiceBoss_SendMail[nRank]
			local nExistDay = tMMOServiceBoss_SendMail["ExistDay"]
			local sSender = tMMOServiceBoss_Text["Hurt"]["Sender"]
			local sTitle = tMMOServiceBoss_Text["Hurt"]["Title"]
			local sContent = string.format(tMMOServiceBoss_Text["Hurt"]["Content"],nRank,nDmg)
			Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent,nServerId)
		end
	end
end

---------------------------------------------物品配置---------------------------------------------
tItem[3600034] = tItem[3600034] or {}
tItem[3600034]["Function"] = function(nItemId,sItemName)
	-- 背包空间
	local nSpace = tMMOServiceBoss_Random[nItemId]["Space"]
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(tMMOServiceBoss_Text["ItemNoSpace"])
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tMMOServiceBoss_Random,nItemId)
	end
end



---------------------------------------------怪物模板---------------------------------------------
--------- 保底奖励（即有打就会触发）
-- BOSS1(猪)
-- tBossRewardEnd[4248] = tBossRewardEnd[4248] or {}
-- tBossRewardEnd[4248]["tFunction"] = tBossRewardEnd[4248]["tFunction"] or {}
-- table.insert(tBossRewardEnd[4248]["tFunction"],MMOServiceBoss_RewardEnd)
-- BOSS1(兔)
-- tBossRewardEnd[4249] = tBossRewardEnd[4249] or {}
-- tBossRewardEnd[4249]["tFunction"] = tBossRewardEnd[4249]["tFunction"] or {}
-- table.insert(tBossRewardEnd[4249]["tFunction"],MMOServiceBoss_RewardEnd)
-- BOSS1(猫)
-- tBossRewardEnd[4251] = tBossRewardEnd[4251] or {}
-- tBossRewardEnd[4251]["tFunction"] = tBossRewardEnd[4251]["tFunction"] or {}
-- table.insert(tBossRewardEnd[4251]["tFunction"],MMOServiceBoss_RewardEnd)

-- -- BOSS2(猪)
-- tBossRewardEnd[4252] = tBossRewardEnd[4252] or {}
-- tBossRewardEnd[4252]["tFunction"] = tBossRewardEnd[4252]["tFunction"] or {}
-- table.insert(tBossRewardEnd[4252]["tFunction"],MMOServiceBoss_RewardEnd)
-- -- BOSS2(兔)
-- tBossRewardEnd[4253] = tBossRewardEnd[4253] or {}
-- tBossRewardEnd[4253]["tFunction"] = tBossRewardEnd[4253]["tFunction"] or {}
-- table.insert(tBossRewardEnd[4253]["tFunction"],MMOServiceBoss_RewardEnd)
-- -- BOSS2(猫)
-- tBossRewardEnd[4254] = tBossRewardEnd[4254] or {}
-- tBossRewardEnd[4254]["tFunction"] = tBossRewardEnd[4254]["tFunction"] or {}
-- table.insert(tBossRewardEnd[4254]["tFunction"],MMOServiceBoss_RewardEnd)


-- --------- 伤害排行榜
-- -- BOSS2(猪)
-- tBossDamageBonus[4252] = tBossDamageBonus[4252] or {}
-- tBossDamageBonus[4252]["tFunction"] = tBossDamageBonus[4252]["tFunction"] or {}
-- table.insert(tBossDamageBonus[4252]["tFunction"],MMOServiceBoss_Rank)
-- -- BOSS2(兔)
-- tBossDamageBonus[4253] = tBossDamageBonus[4253] or {}
-- tBossDamageBonus[4253]["tFunction"] = tBossDamageBonus[4253]["tFunction"] or {}
-- table.insert(tBossDamageBonus[4253]["tFunction"],MMOServiceBoss_Rank)
-- -- BOSS2(猫)
-- tBossDamageBonus[4254] = tBossDamageBonus[4254] or {}
-- tBossDamageBonus[4254]["tFunction"] = tBossDamageBonus[4254]["tFunction"] or {}
-- table.insert(tBossDamageBonus[4254]["tFunction"],MMOServiceBoss_Rank)


-- --------- 怪物死亡触发
-- tMonster[4248] = tMonster[4248] or {}  -- 小BOSS
-- tMonster[4248]["tFunction"] = tMonster[4248]["tFunction"] or {}
-- table.insert(tMonster[4248]["tFunction"],MMOServiceBoss_Monster1)

-- tMonster[4249] = tMonster[4249] or {}  -- 小BOSS
-- tMonster[4249]["tFunction"] = tMonster[4249]["tFunction"] or {}
-- table.insert(tMonster[4249]["tFunction"],MMOServiceBoss_Monster1)

-- tMonster[4251] = tMonster[4251] or {}  -- 小BOSS
-- tMonster[4251]["tFunction"] = tMonster[4251]["tFunction"] or {}
-- table.insert(tMonster[4251]["tFunction"],MMOServiceBoss_Monster1)
-- ---------
-- tMonster[4252] = tMonster[4252] or {}  -- 大BOSS
-- tMonster[4252]["tFunction"] = tMonster[4252]["tFunction"] or {}
-- table.insert(tMonster[4252]["tFunction"],MMOServiceBoss_Monster2)

-- tMonster[4253] = tMonster[4253] or {}  -- 大BOSS
-- tMonster[4253]["tFunction"] = tMonster[4253]["tFunction"] or {}
-- table.insert(tMonster[4253]["tFunction"],MMOServiceBoss_Monster2)

-- tMonster[4254] = tMonster[4254] or {}  -- 大BOSS
-- tMonster[4254]["tFunction"] = tMonster[4254]["tFunction"] or {}
-- table.insert(tMonster[4254]["tFunction"],MMOServiceBoss_Monster2)

---------------------------------------------
-- 新版时间自检
-- 12:25删除已有的怪
-- local tMMOServiceBoss_DelMonster = {}
	-- tMMOServiceBoss_DelMonster[1] = {}
	-- tMMOServiceBoss_DelMonster[1]["TimeType"] = 4
	-- tMMOServiceBoss_DelMonster[1]["Time"] = "12:25 12:25"
	-- tMMOServiceBoss_DelMonster[1]["Func"] = MMOServiceBoss_DelMonster
-- table.insert(tSystemTime_InitialData,tMMOServiceBoss_DelMonster[1])

-- -- 19:25删除已有的怪
	-- tMMOServiceBoss_DelMonster[2] = {}
	-- tMMOServiceBoss_DelMonster[2]["TimeType"] = 4
	-- tMMOServiceBoss_DelMonster[2]["Time"] = "19:25 19:25"
	-- tMMOServiceBoss_DelMonster[2]["Func"] = MMOServiceBoss_DelMonster
-- table.insert(tSystemTime_InitialData,tMMOServiceBoss_DelMonster[2])

-- -- 12:00刷怪
-- local tMMOServiceBoss_OpenMonster = {}
	-- tMMOServiceBoss_OpenMonster[1] = {}
	-- tMMOServiceBoss_OpenMonster[1]["TimeType"] = 4
	-- tMMOServiceBoss_OpenMonster[1]["Time"] = "12:30 12:30"
	-- tMMOServiceBoss_OpenMonster[1]["Func"] = MMOServiceBoss_OpenMonster
-- table.insert(tSystemTime_InitialData,tMMOServiceBoss_OpenMonster[1])

-- -- 19:00刷怪
	-- tMMOServiceBoss_OpenMonster[2] = {}
	-- tMMOServiceBoss_OpenMonster[2]["TimeType"] = 4
	-- tMMOServiceBoss_OpenMonster[2]["Time"] = "19:30 19:30"
	-- tMMOServiceBoss_OpenMonster[2]["Func"] = MMOServiceBoss_OpenMonster
-- table.insert(tSystemTime_InitialData,tMMOServiceBoss_OpenMonster[2])

-- 旧版时间自检
-- 12:25删除已有的怪
-- tOntimerMin_HM[1225] = tOntimerMin_HM[1225] or {}
-- table.insert(tOntimerMin_HM[1225],MMOServiceBoss_DelMonster)

-- 19:25删除已有的怪
-- tOntimerMin_HM[1925] = tOntimerMin_HM[1925] or {}
-- table.insert(tOntimerMin_HM[1925],MMOServiceBoss_DelMonster)

-- 12:00刷怪
-- tOntimerMin_HM[1230] = tOntimerMin_HM[1230] or {}
-- table.insert(tOntimerMin_HM[1230],MMOServiceBoss_OpenMonster)

-- 19:00刷怪
-- tOntimerMin_HM[1930] = tOntimerMin_HM[1930] or {}
-- table.insert(tOntimerMin_HM[1930],MMOServiceBoss_OpenMonster)

