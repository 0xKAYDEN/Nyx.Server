------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]神器BOSS玩法制作
--Creator:		翁清海
--Created:		2019/07/24
------------------------------------------------------------------------------------

--命名前缀
--RelicCrystalBoss_

--logid:12001531

--动态码说明：
--53520
-- Data0 刷新上古祭坛CD
-- Data1 刷新BOSS怪CD
-- Data2 上古祭坛打开次数限制（每天清零）
-- Data3 击杀Boss获得的神器礼包上限（每天清零）

--------------------------------------------数据部分配置--------------------------------------------
local tRelicCrystalBoss_Cont = {}
	-- 花费金币抽神器
	tRelicCrystalBoss_Cont["XuanBaoMoney"] = 10000000
	-- 刷新上古祭坛
	tRelicCrystalBoss_Cont["RefreshNpc"] = {}
	tRelicCrystalBoss_Cont["RefreshNpc"]["NpcId"] = 24640
	tRelicCrystalBoss_Cont["RefreshNpc"]["GlobalId"] = 53520
	tRelicCrystalBoss_Cont["RefreshNpc"]["TimeLimit"] = 300
	tRelicCrystalBoss_Cont["RefreshNpc"]["StartNum"] = 2
	tRelicCrystalBoss_Cont["RefreshNpc"]["EndNum"] = 10000
	tRelicCrystalBoss_Cont["RefreshNpc"]["FocusMapId"] = 5000
	tRelicCrystalBoss_Cont["RefreshNpc"]["FocusPosX"] = 100
	tRelicCrystalBoss_Cont["RefreshNpc"]["FocusPosY"] = 100
	-- 刷新玄宝怪
	tRelicCrystalBoss_Cont["RefreshMonster"] = {}
	tRelicCrystalBoss_Cont["RefreshMonster"]["GlobalId"] = 53520
	tRelicCrystalBoss_Cont["RefreshMonster"]["Pos"] = 1
	tRelicCrystalBoss_Cont["RefreshMonster"]["TimeLimit"] = 300
	tRelicCrystalBoss_Cont["RefreshMonster"]["StartNum"] = 2
	tRelicCrystalBoss_Cont["RefreshMonster"]["EndNum"] = 10000
	tRelicCrystalBoss_Cont["RefreshMonster"]["OtherPos"] = 3
	tRelicCrystalBoss_Cont["RefreshMonster"]["OtherLimit"] = 10
	-- 上古祭坛打开限制
	tRelicCrystalBoss_Cont["XuanBaoNpc"] = {}
	tRelicCrystalBoss_Cont["XuanBaoNpc"]["GlobalId"] = 53520
	tRelicCrystalBoss_Cont["XuanBaoNpc"]["Pos"] = 2
	tRelicCrystalBoss_Cont["XuanBaoNpc"]["Num"] = 1000000
	tRelicCrystalBoss_Cont["XuanBaoNpc"]["MaxNum"] = 10000000
	-- 玄宝怪星级
	tRelicCrystalBoss_Cont["MonsterStar"] = {}
	tRelicCrystalBoss_Cont["MonsterStar"][1] = {5445,5446,5447,5448,5449}
	tRelicCrystalBoss_Cont["MonsterStar"][2] = {5450,5451,5452,5453,5454}
	tRelicCrystalBoss_Cont["MonsterStar"][3] = {5455,5456,5457,5458,5459}
	-- 玄宝怪GenId
	tRelicCrystalBoss_Cont["MonsterGenId"] = {}
	tRelicCrystalBoss_Cont["MonsterGenId"][10137] = 28516
	tRelicCrystalBoss_Cont["MonsterGenId"][10250] = 28517
	tRelicCrystalBoss_Cont["MonsterGenId"][10348] = 28518
	-- 玄宝怪掉落
	tRelicCrystalBoss_Cont["MonsterDrop"] = {}
	tRelicCrystalBoss_Cont["MonsterDrop"][1] = 3322718
	
local tRelicCrystalBoss_Log = {}
	--使用神器礼包
	tRelicCrystalBoss_Log["UseXuanBaoItem"] = "0,0,%d,1,12001531,2,%s,1"
	
local tRelicCrystalBoss_XuanBaoGoldAttribute = {}
	--玄宝随机出来的黄金条数
	tRelicCrystalBoss_XuanBaoGoldAttribute[1] = {}
	tRelicCrystalBoss_XuanBaoGoldAttribute[1]["ItemChanceSum"] = 10000
	tRelicCrystalBoss_XuanBaoGoldAttribute[1][1] = {}
	tRelicCrystalBoss_XuanBaoGoldAttribute[1][1]["RandomItemChanceType"] = 2
	tRelicCrystalBoss_XuanBaoGoldAttribute[1][1]["ItemChance"] = 5900
	tRelicCrystalBoss_XuanBaoGoldAttribute[1][1]["Item_1"] = 0
	tRelicCrystalBoss_XuanBaoGoldAttribute[1][2] = {}
	tRelicCrystalBoss_XuanBaoGoldAttribute[1][2]["RandomItemChanceType"] = 2
	tRelicCrystalBoss_XuanBaoGoldAttribute[1][2]["ItemChance"] = 2449
	tRelicCrystalBoss_XuanBaoGoldAttribute[1][2]["Item_1"] = 1
	tRelicCrystalBoss_XuanBaoGoldAttribute[1][3] = {}
	tRelicCrystalBoss_XuanBaoGoldAttribute[1][3]["RandomItemChanceType"] = 2
	tRelicCrystalBoss_XuanBaoGoldAttribute[1][3]["ItemChance"] = 1300
	tRelicCrystalBoss_XuanBaoGoldAttribute[1][3]["Item_1"] = 2
	tRelicCrystalBoss_XuanBaoGoldAttribute[1][4] = {}
	tRelicCrystalBoss_XuanBaoGoldAttribute[1][4]["RandomItemChanceType"] = 2
	tRelicCrystalBoss_XuanBaoGoldAttribute[1][4]["ItemChance"] = 300
	tRelicCrystalBoss_XuanBaoGoldAttribute[1][4]["Item_1"] = 3
	tRelicCrystalBoss_XuanBaoGoldAttribute[1][5] = {}
	tRelicCrystalBoss_XuanBaoGoldAttribute[1][5]["RandomItemChanceType"] = 2
	tRelicCrystalBoss_XuanBaoGoldAttribute[1][5]["ItemChance"] = 50
	tRelicCrystalBoss_XuanBaoGoldAttribute[1][5]["Item_1"] = 4
	tRelicCrystalBoss_XuanBaoGoldAttribute[1][6] = {}
	tRelicCrystalBoss_XuanBaoGoldAttribute[1][6]["RandomItemChanceType"] = 2
	tRelicCrystalBoss_XuanBaoGoldAttribute[1][6]["ItemChance"] = 1
	tRelicCrystalBoss_XuanBaoGoldAttribute[1][6]["Item_1"] = 5

local tRelicCrystalBoss_XuanBaoMonster = {}
	--刷新出来的BOSS星级 
	tRelicCrystalBoss_XuanBaoMonster[1] = {}
	tRelicCrystalBoss_XuanBaoMonster[1]["ItemChanceSum"] = 10000
	tRelicCrystalBoss_XuanBaoMonster[1][1] = {}
	tRelicCrystalBoss_XuanBaoMonster[1][1]["RandomItemChanceType"] = 2
	tRelicCrystalBoss_XuanBaoMonster[1][1]["ItemChance"] = 5000
	tRelicCrystalBoss_XuanBaoMonster[1][1]["Item_1"] = 1
	tRelicCrystalBoss_XuanBaoMonster[1][2] = {}
	tRelicCrystalBoss_XuanBaoMonster[1][2]["RandomItemChanceType"] = 2
	tRelicCrystalBoss_XuanBaoMonster[1][2]["ItemChance"] = 3000
	tRelicCrystalBoss_XuanBaoMonster[1][2]["Item_1"] = 2
	tRelicCrystalBoss_XuanBaoMonster[1][3] = {}
	tRelicCrystalBoss_XuanBaoMonster[1][3]["RandomItemChanceType"] = 2
	tRelicCrystalBoss_XuanBaoMonster[1][3]["ItemChance"] = 2000
	tRelicCrystalBoss_XuanBaoMonster[1][3]["Item_1"] = 3
	
local tRelicCrystalBoss_RewardItem = {}
	--上古祭坛打开奖励
	tRelicCrystalBoss_RewardItem["XuanBaoNpc"] = {}
	tRelicCrystalBoss_RewardItem["XuanBaoNpc"]["RewardItem"] = {}
	tRelicCrystalBoss_RewardItem["XuanBaoNpc"]["RewardItem"][1] = {}
	tRelicCrystalBoss_RewardItem["XuanBaoNpc"]["RewardItem"][1]["Id"] = 3322718
	tRelicCrystalBoss_RewardItem["XuanBaoNpc"]["RewardItem"][1]["Attr"] = "0 1"
	tRelicCrystalBoss_RewardItem["XuanBaoNpc"]["LogId"] = 18000160
	--刷BOSS的时候在CD时间触发时给的奖励
	tRelicCrystalBoss_RewardItem["Refresh"] = {}
	tRelicCrystalBoss_RewardItem["Refresh"]["RewardItem"] = {}
	tRelicCrystalBoss_RewardItem["Refresh"]["RewardItem"][1] = {}
	tRelicCrystalBoss_RewardItem["Refresh"]["RewardItem"][1]["Id"] = 3322717
	tRelicCrystalBoss_RewardItem["Refresh"]["RewardItem"][1]["Attr"] = "0 1"
	tRelicCrystalBoss_RewardItem["Refresh"]["LogId"] = 18000160
	
--------------------------------------------逻辑部分配置--------------------------------------------
--玄宝物品打开
function RelicCrystalBoss_OpenXuanBaoItem(nItemId, nFlag)
	local nUserId = Get_UserId()
	
	--背包空间判断
	if not User_CheckLeftSpace(1,nUserId) then
		Sys_MsgBox(string.format(tRewardTemplate_Text["NoSpace"] ,1),nil,nil,nUserId)
		return
	end
	
	local nMoney = tRelicCrystalBoss_Cont["XuanBaoMoney"]
	
	if nFlag ~= nil then
		--银两判断
		if not User_CanPutMoney2Bag(-nMoney,nUserId) then
			Sys_MsgBox(tRelicCrystalBoss_Text["MsgBox"]["XuanBaoNoMoney"],nil,nil,nUserId)
			return
		end
	end
	
	if Item_ChkItem(nItemId,nil,nil,nUserId) and Item_DelItem(nItemId,nil,nil,nUserId) then
		--扣除银两
		if nFlag ~= nil then
			if not User_AddMoneyNew(-nMoney,18000160,nUserId) then
				Sys_MsgBox(tRelicCrystalBoss_Text["MsgBox"]["XuanBaoNoMoney"],nil,nil,nUserId)
				return
			end
		end
		
		--随机黄金条数
		local nFlag,tXuanBaoGold = Probabil_RandomAward(tRelicCrystalBoss_XuanBaoGoldAttribute,1)
		local nGoldAttrNum = tXuanBaoGold[1]["tAward"][1]["Item_1"]
		
		--默认5条属性
		local nAttributeNum = 5
		
		--随机到0，则给4条属性，1条黄金
		if nGoldAttrNum == 0 then
			nAttributeNum = 4
			nGoldAttrNum = 1
		end
		
		--给玄宝
		local nXuanBaoId,nItem = Xuanbao_Reward(0,0,10,0,0,nAttributeNum,0,0,nGoldAttrNum,0)
		local sItemName = Get_ItemtypeName(nXuanBaoId)
		
		local sText = tRelicCrystalBoss_Text["MsgBox"]["XuanBaoSucc"]
		
		--给提示
		Sys_MsgBox(string.format(sText,sItemName),nil,nil,nUserId)
		User_TalkChannel2005(string.format(sText,sItemName),nUserId)
		
		--打log
		local sStr1 = Get_ItemData1(nItem)
		local sStr2 = Get_ItemData2(nItem)
		local sStr3 = Get_ItemData3(nItem)
		local sStr4 = Get_ItemData4(nItem)
		local sStr5 = Get_ItemData5(nItem)
		local sAttr = nXuanBaoId .. "{" .. sStr1 .. "&" .. sStr2 .. "&" .. sStr3 .. "&" .. sStr4 .. "&" .. sStr5 .. "}"
		
		Sys_SaveActionFestivalLog(string.format(tRelicCrystalBoss_Log["UseXuanBaoItem"],nItemId,sAttr))
	end
end

--片区小怪逻辑
function RelicCrystalBoss_MonsterRefresh(nMonsterId)
	local nUserId = Get_UserId()
	
	local nStartNum = tRelicCrystalBoss_Cont["RefreshMonster"]["StartNum"]
	local nEndNum = tRelicCrystalBoss_Cont["RefreshMonster"]["EndNum"]
	local nGlobalId = tRelicCrystalBoss_Cont["RefreshMonster"]["GlobalId"]
	local nPos = tRelicCrystalBoss_Cont["RefreshMonster"]["Pos"]
	
	local nNowTime = os.time()
	local nGlobalTime = Get_SysDynaGlobalData(nGlobalId, nPos)
	local nMinTime = tRelicCrystalBoss_Cont["RefreshMonster"]["TimeLimit"]
	
	local nPosX = Get_MonsterPosX()
	local nPosY = Get_MonsterPosY()
	
	--概率触发
	if Sys_Random(nStartNum,nEndNum) then
		--触发CD判断
		if nNowTime - nGlobalTime > nMinTime then
			--刷新玄宝怪
			RelicCrystalBoss_RefreshXuanBaoMonster(nPosX, nPosY, nUserId)
			
			--记录CD
			Sys_SetSynaGlobalData(nGlobalId,nPos, nNowTime)
		else
			local nOtherPos = tRelicCrystalBoss_Cont["RefreshMonster"]["OtherPos"]
			local nOtherLimit = tRelicCrystalBoss_Cont["RefreshMonster"]["OtherLimit"]
			local nOtherData = Get_SysDynaGlobalData(nGlobalId, nOtherPos)
			
			--CD时间内给玩家神器道具，达到上限不给
			if nOtherData < nOtherLimit then
				Sys_SetSynaGlobalData(nGlobalId,nOtherPos, nOtherData + 1)
				
				RewardTemplate_UseItemAndMsg(tRelicCrystalBoss_RewardItem["Refresh"],nUserId)
			end
			
			--刷新上古祭坛
			RelicCrystalBoss_RefreshXuanBaoNpc(nPosX, nPosY)
		end
	else
		--刷新上古祭坛
		RelicCrystalBoss_RefreshXuanBaoNpc(nPosX, nPosY)
	end
end

--刷新上古祭坛
function RelicCrystalBoss_RefreshXuanBaoNpc(nPosX, nPosY)
	local nUserId = Get_UserId()
	local nNpcId = tRelicCrystalBoss_Cont["RefreshNpc"]["NpcId"]
	local nFocusMapId = tRelicCrystalBoss_Cont["RefreshNpc"]["FocusMapId"]
	
	--不在集中营
	if Get_NpcMapID(nNpcId) ~= nFocusMapId then
		return
	end
	
	--概率触发
	local nStartNum = tRelicCrystalBoss_Cont["RefreshNpc"]["StartNum"]
	local nEndNum = tRelicCrystalBoss_Cont["RefreshNpc"]["EndNum"]
	
	if not Sys_Random(nStartNum,nEndNum) then
		return
	end
	
	local nGlobalId = tRelicCrystalBoss_Cont["RefreshNpc"]["GlobalId"]
	
	local nNowTime = os.time()
	local nGlobalTime = Get_SysDynaGlobalData0(nGlobalId)
	local nMinTime = tRelicCrystalBoss_Cont["RefreshNpc"]["TimeLimit"]
	
	--触发CD判断
	if nNowTime - nGlobalTime <= nMinTime then
		return
	end
	
	local nMapId = Get_UserMapId(nUserId)
	local sMapName = Get_MapName(nMapId)
	
	--移动NPC
	Npc_MoveNpcPos(nNpcId,nMapId,nPosX,nPosY)
	
	--记录CD
	Sys_SetSynaGlobalData0(nGlobalId,nNowTime)
	
	--提示
	Sys_SystemBroadcast(string.format(tRelicCrystalBoss_Text["Broadcast"]["RefreshNpc"], sMapName, nPosX, nPosY))
end

--上古祭坛打开
function RelicCrystalBoss_XuanBaoNpc(nNpcId)
	local nUserId = Get_UserId()
	local nGlobalId = tRelicCrystalBoss_Cont["XuanBaoNpc"]["GlobalId"]
	local nPos = tRelicCrystalBoss_Cont["XuanBaoNpc"]["Pos"]
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	
	local nFocusMapId = tRelicCrystalBoss_Cont["RefreshNpc"]["FocusMapId"]
	
	--祭坛已经被移入集中营
	if Get_NpcMapID(nNpcId) == nFocusMapId then
		Sys_MsgBox(tRelicCrystalBoss_Text["MsgBox"]["RefreshNoInMap"],nil,nil,nUserId)
		return
	end
	
	--背包空间判断
	local nSpace = RewardTemplate_GetRewardSpace(tRelicCrystalBoss_RewardItem["XuanBaoNpc"],nUserId)
	
	if nSpace > 0 and not User_CheckLeftSpace(nSpace,nUserId) then
		Sys_MsgBox(string.format(tRewardTemplate_Text["NoSpace"] ,nSpace),nil,nil,nUserId)
		return
	end
	
	--所需要的金币数
	local nMoney = 0
	
	--需要消耗金币数量计算
	if nData > 0 then
		nMoney = tRelicCrystalBoss_Cont["XuanBaoNpc"]["Num"] * nData
		
		if nMoney > tRelicCrystalBoss_Cont["XuanBaoNpc"]["MaxNum"] then
			nMoney = tRelicCrystalBoss_Cont["XuanBaoNpc"]["MaxNum"]
		end
	end
	
	--金币判断
	if nMoney > 0 and not User_CanPutMoney2Bag(-nMoney,nUserId) then
		Sys_MsgBox(tRelicCrystalBoss_Text["MsgBox"]["RefreshNoMoney"],nil,nil,nUserId)
		return
	end
	
	--扣除银两
	if nMoney > 0 and not User_AddMoneyNew(-nMoney,18000160,nUserId) then
		Sys_MsgBox(tRelicCrystalBoss_Text["MsgBox"]["RefreshNoMoney"],nil,nil,nUserId)
		return
	end
	
	--设置当前的刷新次数
	Sys_SetSynaGlobalData(nGlobalId,nPos,nData + 1)
	
	local nPosX = tRelicCrystalBoss_Cont["RefreshNpc"]["FocusPosX"]
	local nPosY = tRelicCrystalBoss_Cont["RefreshNpc"]["FocusPosY"]
	
	local nNpcPosX = Get_NpcPositionX(nNpcId)
	local nNpcPosY = Get_NpcPositionY(nNpcId)
	
	--把祭坛移入集中营
	Npc_MoveNpcPos(nNpcId,nFocusMapId,nPosX,nPosY)
	
	--解封祭坛奖励
	RewardTemplate_UseItemAndMsg(tRelicCrystalBoss_RewardItem["XuanBaoNpc"],nUserId)
	
	--刷新怪
	RelicCrystalBoss_RefreshXuanBaoMonster(nNpcPosX, nNpcPosY, nUserId)
end

--刷新玄宝怪
function RelicCrystalBoss_RefreshXuanBaoMonster(nPosX, nPosY, nUserId)
	local nMapId = Get_UserMapId(nUserId)
	
	--随机BOSS星级
	local nFlag,tAward = Probabil_RandomAward(tRelicCrystalBoss_XuanBaoMonster,1)
	local nStar = tAward[1]["tAward"][1]["Item_1"]
	
	local tMonster = tRelicCrystalBoss_Cont["MonsterStar"][nStar]
	
	--随机怪id
	local nMonsterId = tMonster[math.random(1, #tMonster)]
	
	local nGenId = tRelicCrystalBoss_Cont["MonsterGenId"][nMapId] or tRelicCrystalBoss_Cont["MonsterGenId"][10137]
	
	--开始刷新
	Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)
	
	local sMapName = Get_MapName(nMapId)
	local sMonsterName = tRelicCrystalBoss_Text["MonsterName"][nMonsterId]
	
	--公告
	if nStar == 1 then
		Map_SendBroadcastMsg(nMapId, string.format(tRelicCrystalBoss_Text["Broadcast"]["RefreshMonster"][nStar], sMapName, nPosX, nPosY, sMonsterName))
	else
		Sys_SystemBroadcast(string.format(tRelicCrystalBoss_Text["Broadcast"]["RefreshMonster"][nStar], sMonsterName, sMapName, nPosX, nPosY))
	end
end

--玄宝怪死亡
function RelicCrystalBoss_KillXuanBaoBoss(nMonsterId)
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	
	Monster_Death(nMonsterId,nMapId)
	
	for k,v in pairs(tRelicCrystalBoss_Cont["MonsterDrop"]) do
		Monster_SysDropItem(v)
	end
end

--清玄宝NPC刷新怪次数
function RelicCrystalBoss_ClearXuanBaoData()
	local nGlobalId = tRelicCrystalBoss_Cont["XuanBaoNpc"]["GlobalId"]
	local nPos = tRelicCrystalBoss_Cont["XuanBaoNpc"]["Pos"]
	local nOtherPos = tRelicCrystalBoss_Cont["RefreshMonster"]["OtherPos"]
	
	Sys_SetSynaGlobalData(nGlobalId,nPos,0)
	Sys_SetSynaGlobalData(nGlobalId,nOtherPos,0)
end

--------------------------------------------模块部分配置--------------------------------------------

---------------------------------------------NPC模块---------------------------------------------
-- 24640,'上古祭坛'
tNpcFace[2251] = 407
tNpcGossip[24640] = tNpcGossip[24640] or DefaultNpc:new{}
tNpcGossip[24640]["OptionHidden"] = 1
tNpcGossip[24640]["DialogueText"] = tRelicCrystalBoss_Text[24640]

tNpcGossip[24640]["Text1-1"] = {111,112,113}
tNpcGossip[24640]["tOption1-1"] = {111}
tNpcGossip[24640]["ChkFunc1-1"] = function ()
	local nGlobalId = tRelicCrystalBoss_Cont["XuanBaoNpc"]["GlobalId"]
	local nPos = tRelicCrystalBoss_Cont["XuanBaoNpc"]["Pos"]
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	
	--金币判断
	if nData > 0 then
		local nMoney = tRelicCrystalBoss_Cont["XuanBaoNpc"]["Num"] * nData
		
		if nMoney > tRelicCrystalBoss_Cont["XuanBaoNpc"]["MaxNum"] then
			nMoney = tRelicCrystalBoss_Cont["XuanBaoNpc"]["MaxNum"]
		end
		
		tNpcGossip[24640]["Option111"] = tRelicCrystalBoss_Text[24640]["Option111"]..string.format(tRelicCrystalBoss_Text["NeedMoney"], nMoney)
	else
		tNpcGossip[24640]["Option111"] = tRelicCrystalBoss_Text[24640]["Option111"]
	end
	
	return true
end
tNpcGossip[24640]["OptionFunc111"] = "RelicCrystalBoss_XuanBaoNpc</N>24640"


---------------------------------------------物品模块---------------------------------------------
-- 3322718,'勇者神器礼包'
tItem[3322718] = tItem[3322718] or {}
tItem[3322718]["Function"] = function (nItemId,sItemName)
	RelicCrystalBoss_OpenXuanBaoItem(nItemId)
end

-- 3322717,'神器灵晶'
tItemFace[3322717] = 2432
tItem[3322717] = tItem[3322717] or {}
tItem[3322717]["DialogueText"] = tRelicCrystalBoss_Text[3322717]
tItem[3322717]["Text1-1"] = {111,112}
tItem[3322717]["tOption1-1"] = {111,112}
tItem[3322717]["OptionFunc111"]="RelicCrystalBoss_OpenXuanBaoItem</N>3322717</N>1"

---------------------------------------------怪物模块---------------------------------------------
local tRelicCrystalBoss_XuanBaoBoss = {}
	--玄宝BOSS逻辑
	tRelicCrystalBoss_XuanBaoBoss[1] = {}
	tRelicCrystalBoss_XuanBaoBoss[1]["Function"] = RelicCrystalBoss_KillXuanBaoBoss
	tRelicCrystalBoss_XuanBaoBoss[1]["MonsterId"] = {5445,5446,5447,5448,5449,5450,5451,5452,5453,5454,5455,5456,5457,5458,5459}
table.insert(tMonsterDrop_AreaLoad,tRelicCrystalBoss_XuanBaoBoss[1])
	--片区怪物刷新玄宝NPC
	--神龙岛
	tRelicCrystalBoss_XuanBaoBoss[2] = {}
	tRelicCrystalBoss_XuanBaoBoss[2]["Function"] = RelicCrystalBoss_MonsterRefresh
	tRelicCrystalBoss_XuanBaoBoss[2]["Area"] = {11}
table.insert(tMonsterDrop_AreaLoad,tRelicCrystalBoss_XuanBaoBoss[2])
	--打宝区
	tRelicCrystalBoss_XuanBaoBoss[3] = {}
	tRelicCrystalBoss_XuanBaoBoss[3]["Function"] = RelicCrystalBoss_MonsterRefresh
	tRelicCrystalBoss_XuanBaoBoss[3]["MonsterId"] = {3973,3974,3975,4709,4710,4711,4712,4713,4720}
table.insert(tMonsterDrop_AreaLoad,tRelicCrystalBoss_XuanBaoBoss[3])
	--矿山
	tRelicCrystalBoss_XuanBaoBoss[4] = {}
	tRelicCrystalBoss_XuanBaoBoss[4]["Function"] = RelicCrystalBoss_MonsterRefresh
	tRelicCrystalBoss_XuanBaoBoss[4]["MonsterId"] = {4806,4807,4817,4824}
table.insert(tMonsterDrop_AreaLoad,tRelicCrystalBoss_XuanBaoBoss[4])


---------------------------------------------时间自检---------------------------------------------
-- 清玄宝NPC刷新怪次数
local tRelicCrystalBoss_XuanBaoOnTime = {}
	tRelicCrystalBoss_XuanBaoOnTime["Type"] = 2
	tRelicCrystalBoss_XuanBaoOnTime["TimeType"] = 4
	tRelicCrystalBoss_XuanBaoOnTime["Multiple"] = {}
	tRelicCrystalBoss_XuanBaoOnTime["Multiple"][1]  = "00:00 00:00"
	tRelicCrystalBoss_XuanBaoOnTime["Func"] = RelicCrystalBoss_ClearXuanBaoData
table.insert(tSystemTime_InitialData,tRelicCrystalBoss_XuanBaoOnTime)

